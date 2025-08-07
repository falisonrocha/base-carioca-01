local Proxy = module('vrp', 'lib/Proxy')
local Tunnel = module('vrp', 'lib/Tunnel')
vRP = Proxy.getInterface('vRP')

local clientAPI = {}
Tunnel.bindInterface('lotus_barricada', clientAPI)
serverAPI = Tunnel.getInterface('lotus_barricada')

local function playAnimation(animDict, animName, duration)
    RequestAnimDict(animDict)
    while not HasAnimDictLoaded(animDict) do
        Wait(1)
    end
    TaskPlayAnim(PlayerPedId(), animDict, animName, 8.0, -8.0, duration, 1, 0, false, false, false)
    Wait(duration)
    ClearPedTasks(PlayerPedId())
end

local function DrawHelthBar(x, y, z, width, height, health)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local dist = #(GetGameplayCamCoord() - vector3(x, y, z))
    local scale = (1 / dist) * 2 * ((1 / GetGameplayCamFov()) * 100)
    if onScreen then
        DrawRect(_x, _y, width * scale, height * scale, 0, 0, 0, 255)
        DrawRect(_x - ((1 - (health / 100)) * (width * scale) / 2), _y, (width * scale) * (health / 100), height * scale, 0, 255, 0, 255)
    end
end

local function DrawText3D(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local dist = #(GetGameplayCamCoord() - vector3(x, y, z))
    local scale = (1 / dist) * 2 * ((1 / GetGameplayCamFov()) * 100)
    if onScreen then
        SetTextScale(0.0, 0.35 * scale)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 215)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry('STRING')
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x, _y)
    end
end

local function createBarricade(coords)
    playAnimation('amb@prop_human_bum_bin@idle_b', 'idle_d', 5000)
    local barricade = GetClosestObjectOfType(coords.x, coords.y, coords.z, 0.5, GetHashKey(config.object), false, false, false)
    if barricade and barricade ~= 0 and barricade ~= -1 then 
        return
    end

    if not serverAPI.removeItems() then 
        return
    end

    RequestModel(GetHashKey(config.object))
    while not HasModelLoaded(GetHashKey(config.object)) do
        Wait(1)
    end

    local object = CreateObject(GetHashKey(config.object), coords.x, coords.y, coords.z, true, true, true)
    local netId = ObjToNet(object)
    SetModelAsNoLongerNeeded(GetHashKey(config.object))
    NetworkRegisterEntityAsNetworked(object)
    SetNetworkIdExistsOnAllMachines(netId, true)
    SetNetworkIdCanMigrate(netId, true)
    SetEntityHeading(object, 0.0)
    SetEntityAsMissionEntity(object, true, true)
    FreezeEntityPosition(object, true)
    PlaceObjectOnGroundProperly(object)
    serverAPI.setBarricadeHealth(netId, 100)
    Wait(250)
end

CreateThread(function()
    while true do 
        local timeDistance = 1000
        local ped = PlayerPedId()
        local pedCoords = GetEntityCoords(ped)
        local closestBarricade = nil
        local minDistance = 5.0
        local interactionDistance = 2.0
        local barricades = {}
        local closestCoordsIndex = nil

        for k, v in pairs(config.coords) do 
            local barricade = GetClosestObjectOfType(v[1].x, v[1].y, v[1].z, 0.5, GetHashKey(config.object), false, false, false)
            if barricade and barricade ~= 0 and barricade ~= -1 then
                table.insert(barricades, barricade)
            end
        end

        for index, barricade in ipairs(barricades) do
            local barricadeCoords = GetEntityCoords(barricade)
            local distance = #(pedCoords - barricadeCoords)

            if distance < minDistance then
                timeDistance = 0
                DrawText3D(barricadeCoords.x, barricadeCoords.y, barricadeCoords.z, 'Pressione ~r~E~w~ para remover a barricada')
                local health = Entity(barricade).state.health
                if not health then
                    serverAPI.setBarricadeHealth(ObjToNet(barricade), 100)
                    health = 100
                end
                if health < 100 then
                    DrawText3D(barricadeCoords.x, barricadeCoords.y, barricadeCoords.z - 0.1, 'Pressione ~g~G~w~ para arrumar a barricada')
                end
                DrawHelthBar(barricadeCoords.x, barricadeCoords.y, barricadeCoords.z + 0.1, 0.2, 0.02, health)

                if not closestBarricade or distance < #(pedCoords - GetEntityCoords(closestBarricade)) then
                    closestBarricade = barricade
                    closestCoordsIndex = index
                end
            end
        end

        if closestBarricade and closestCoordsIndex then
            local closestDistance = #(pedCoords - GetEntityCoords(closestBarricade))
            local permission = config.coords[closestCoordsIndex][2]
            if IsControlJustPressed(0, 38) and closestDistance <= interactionDistance then
                if serverAPI.checkPermission(permission) then
                    playAnimation('amb@prop_human_bum_bin@idle_b', 'idle_d', 5000)
                    serverAPI.deleteBarricade(ObjToNet(closestBarricade))
                    serverAPI.giveItems(closestCoordsIndex)
                end
            elseif IsControlJustPressed(0, 47) and closestDistance <= interactionDistance then
                if serverAPI.checkPermission(permission) then
                    playAnimation('amb@prop_human_bum_bin@idle_b', 'idle_d', 5000)
                    serverAPI.setBarricadeHealth(ObjToNet(closestBarricade), 100)
                end
            end
        end

        for k, v in pairs(config.coords) do
            local distance = #(pedCoords - v[1])
            local existingBarricade = GetClosestObjectOfType(v[1].x, v[1].y, v[1].z, 0.5, GetHashKey(config.object), false, false, false)
            if distance <= minDistance and (not existingBarricade or existingBarricade == 0 or existingBarricade == -1) then
                timeDistance = 0
                DrawText3D(v[1].x, v[1].y, v[1].z, 'Pressione ~g~E~w~ para colocar a barricada')
                if IsControlJustPressed(0, 38) and distance <= interactionDistance then
                    if serverAPI.checkItem() and serverAPI.checkPermission(v[2]) then
                        createBarricade(v[1])
                    end
                end
            end
        end

        Wait(timeDistance)
    end
end)


AddEventHandler('entityDamaged', function(victim, culprit, weapon, baseDamage)
    if GetEntityModel(victim) == GetHashKey(config.object) then
        local health = Entity(victim).state.health
        if health then
            health = health - 10
            if health <= 0 then
                serverAPI.deleteBarricade(ObjToNet(victim))
            else
                local netId = ObjToNet(victim)
                serverAPI.setBarricadeHealth(netId, health)
            end
        end
    end
end)