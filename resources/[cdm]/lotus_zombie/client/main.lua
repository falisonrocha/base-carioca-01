local Tunnel = module('vrp', 'lib/Tunnel')
local Proxy = module('vrp', 'lib/Proxy')
vRP = Proxy.getInterface('vRP')

Client = {}
Tunnel.bindInterface(GetCurrentResourceName(), Client)
Server = Tunnel.getInterface(GetCurrentResourceName())

Zombies = {
    Spawneds = {},
    SpecialZombies = {},
}

Ply = {
    inZone = false,
    inSafeZone = false,
    Running = false,
    PlayersInZone = {},
}

local showzombies = false

local function getZombies()
    local zombies = {}
    for k,v in ipairs(GetGamePool("CPed")) do
        if not IsPedAPlayer(v) then
            local tempTable = Entity(v).state.tempTable
            if tempTable then
                zombies[PedToNet(v)] = tempTable
            end
        end
    end
    return zombies
end

RegisterCommand("showzombies", function()
    if Server.checkPermission() then
        showzombies = not showzombies
    end
end)


CreateThread(function()
    while true do
        local THREAD_DELAY = 1000

        if GlobalState.zombieEvent then
            for _, coordBlip in pairs(Config.PresetsCloths.locales) do
                local distance = #(GetEntityCoords(PlayerPedId()) - coordBlip)

                if distance <= 5.0 then
                    THREAD_DELAY = 2
                    DrawText3D(coordBlip, "~g~[E]~w~ Uniforme de proteção contra infectados.")
                    if distance <= 2.5 then
                        if IsControlJustPressed(0, 38) then
                            setUniform()
                        end
                    end
                end
            end
        end

        ::ignore::
        Wait(THREAD_DELAY)
    end
end)

local targetZombies = {}
local MAX_DISTANCE = 50.0
local invalidZombiesCount = {}
local zombieNoTargetTime = {}


function Client.ThreadsStart()
    if not GlobalState.zombieEvent then return end
    if not Ply.inZone then return end
    
    Ply.Running = true

    -- print('THREADS STARTED')

    CreateThread(function()
        -- print('THREADS STARTED - 1')]
        local REFRESH_ZOMBIE_INTERVAL = 0
        while Ply.Running do
            local THREAD_DELAY = 1000
            if GetGameTimer() - REFRESH_ZOMBIE_INTERVAL > 5000 then
                print("[warning] refresh Zombies.Spawneds")
                Zombies.Spawneds = getZombies()
                REFRESH_ZOMBIE_INTERVAL = GetGameTimer()
            end
            if showzombies then
                THREAD_DELAY = 3

                for k, zombie in pairs(Zombies.Spawneds) do
                    if NetworkDoesNetworkIdExist(zombie.netId) then
                        local zombieEntity = NetworkGetEntityFromNetworkId(zombie.netId)
                        if DoesEntityExist(zombieEntity) then
                            local coordsZombie = GetEntityCoords(zombieEntity)
                            local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), coordsZombie, true)

                            local height = GetEntityHeightAboveGround(zombieEntity)
                            local onScreen, x, y = GetScreenCoordFromWorldCoord(coordsZombie["x"], coordsZombie["y"],
                                coordsZombie["z"] + height)
                            DrawTexture("commonmenutu", "deathmatch", x, y, 0.02, 0.025, 0.0, 255, 0, 0, 200, false);
                        end
                    end
                end

                for _, player in pairs(Ply.PlayersInZone) do
                    local playerPed = GetPlayerPed(GetPlayerFromServerId(player))
                    if playerPed ~= PlayerPedId() then
                        local playerCoords = GetEntityCoords(playerPed)
                        local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), playerCoords, true)

                        local height = GetEntityHeightAboveGround(playerPed)
                        local onScreen, x, y = GetScreenCoordFromWorldCoord(playerCoords["x"], playerCoords["y"],
                            playerCoords["z"] + height)
                        DrawTexture("mpleaderboard", "leaderboard_players_icon", x, y, 0.02, 0.025, 0.0, 0, 255, 0, 200,
                            false);
                    end
                end

                DrawMarker(1, Config.CenterZone.x, Config.CenterZone.y, Config.CenterZone.z - 1.0, 0.0, 0.0, 0.0, 0.0,
                    0.0, 0.0, Config.DistZone * 2, Config.DistZone * 2, 10.0, 255, 0, 0, 100, false, true, 2, nil, nil,
                    false)
                DrawMarker(1, Config.SafeZone.x, Config.SafeZone.y, Config.SafeZone.z - 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
                    Config.DistSafe * 2, Config.DistSafe * 2, 10.0, 0, 255, 0, 100, false, true, 2, nil, nil, false)
            end
            Wait(THREAD_DELAY)
        end
        -- print('THREADS STOPPED - 1')
    end)


    -- THREAD PARA SEGUIR TARGET

    Citizen.CreateThread(function()
        -- print('THREADS STARTED - 2')
        local function foundTargetEntityGo(zombieEntity)
            if not DoesEntityExist(zombieEntity) then return end

            if targetZombies[zombieEntity] then
                local targetPed = targetZombies[zombieEntity]
                local playerIsAlive = GetEntityHealth(targetPed) > 101
                local zombiePos = GetEntityCoords(zombieEntity)
                local playerPos = GetEntityCoords(targetPed)
                local distance = #(playerPos - zombiePos)

                if playerIsAlive and distance <= MAX_DISTANCE and (IsEntityVisible(targetPed) == 1) then
                    return targetPed
                else
                    targetZombies[zombieEntity] = nil
                end
            end

            local closestPlayer, closestDistance = nil, math.huge
            local zombiePos = GetEntityCoords(zombieEntity)

            if not Ply.PlayersInZone or not next(Ply.PlayersInZone) then
                return nil
            end

            for _, playerId in pairs(Ply.PlayersInZone) do
                local playerPed = GetPlayerPed(GetPlayerFromServerId(playerId))

                if DoesEntityExist(playerPed) and GetEntityHealth(playerPed) > 101 and (IsEntityVisible(playerPed) == 1) then
                    local playerPos = GetEntityCoords(playerPed)
                    local distance = #(playerPos - zombiePos)

                    if distance < closestDistance then
                        closestPlayer = playerPed
                        closestDistance = distance
                    end
                end
            end

            if closestPlayer then
                targetZombies[zombieEntity] = closestPlayer
                return closestPlayer
            else
                return nil
            end
        end

        while Ply.Running do
            local THREAD_DELAY = 1000

            for zombieNetId, zombie in pairs(Zombies.Spawneds) do
                if zombie and zombie.netId and zombie.netId ~= 0 and NetworkDoesNetworkIdExist(zombie.netId) then
                    local zombieEntity = NetworkGetEntityFromNetworkId(zombie.netId)
                    if NetworkHasControlOfEntity(zombieEntity) then
                        if zombieEntity then
                            if DoesEntityExist(zombieEntity) then
                                THREAD_DELAY = 250

                                local ZombieParameters = Config.Zombies.TypeZombies[zombie.categoryZombie]
                                [zombie.typeZombie]

                                if not DecorExistOn(zombieEntity, 'RegisterZombie') then
                                    Zombies:updateTexture(zombieEntity)
                                end

                                local entityZombieGo = foundTargetEntityGo(zombieEntity)
                                if entityZombieGo then
                                    TaskGoToEntity(zombieEntity, entityZombieGo, -1, 0.0,
                                        ZombieParameters.Speed * 3.6 or 2.0, 1073741824, 0)
                                else
                                    print('[ERRO] - ZOMBIE SEM TARGET - TENTATIVA DE DELETAR :' .. zombie.netId)
                                    if not zombieNoTargetTime[zombie.netId] then
                                        zombieNoTargetTime[zombie.netId] = 1
                                    else
                                        zombieNoTargetTime[zombie.netId] += 1
                                    end

                                    if zombieNoTargetTime[zombie.netId] > 3 then
                                        Zombies.Spawneds[zombieNetId] = nil
                                        DeleteEntity(zombieEntity)
                                        zombieNoTargetTime[zombie.netId] = nil
                                    end
                                end

                                invalidZombiesCount[zombie.netId] = nil
                            end
                        else
                            if not invalidZombiesCount[zombie.netId] then
                                invalidZombiesCount[zombie.netId] = 1
                            else
                                invalidZombiesCount[zombie.netId] += 1
                            end

                            if invalidZombiesCount[zombie.netId] > 5 then
                                Zombies.Spawneds[zombieNetId] = nil
                                -- Server._invalidZombieEntity(zombie.netId)
                                DeleteEntity(zombieEntity)
                                invalidZombiesCount[zombie.netId] = nil
                            end
                        end
                    end
                else
                    if Zombies.Spawneds[zombieNetId] then
                        Zombies.Spawneds[zombieNetId] = nil
                    end

                    if zombie and zombie.netId and invalidZombiesCount[zombie.netId] then
                        invalidZombiesCount[zombie.netId] = nil
                    end
                end
            end

            Citizen.Wait(THREAD_DELAY)
        end
        -- print('THREADS STOPPED - 2')
    end)


    Citizen.CreateThread(function()
        -- print('THREADS STARTED - 3')
        while Ply.Running do
            Citizen.Wait(5)
            if Zombies.SpecialZombies and next(Zombies.SpecialZombies) then
                for netId, zombie in pairs(Zombies.SpecialZombies) do
                    if zombie.categoryZombie and zombie.typeZombie then
                        local ZombieParameters = Config.Zombies.TypeZombies[zombie.categoryZombie][zombie.typeZombie]

                        if ZombieParameters and ZombieParameters.Habilitys and table.contains(ZombieParameters.Habilitys, 'healer') then
                            if NetworkDoesNetworkIdExist(zombie.netId) then
                                local zombieEntity = NetworkGetEntityFromNetworkId(zombie.netId)
                                if zombieEntity and DoesEntityExist(zombieEntity) then
                                    if not IsEntityDead(zombieEntity) then
                                        local coordsZombie = GetEntityCoords(zombieEntity)
                                        local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),
                                            coordsZombie, true)

                                        if distance <= 10.0 then
                                            local height = GetEntityHeightAboveGround(zombieEntity)
                                            local onScreen, x, y = GetScreenCoordFromWorldCoord(coordsZombie["x"],
                                                coordsZombie["y"], coordsZombie["z"] + height)
                                            DrawTexture("commonmenu", "shop_health_icon_b", x, y, 0.02, 0.025, 0.0, 124,
                                                252, 0, 200, false);
                                        end
                                    else
                                        Zombies.SpecialZombies[netId] = nil
                                    end
                                else
                                    Zombies.SpecialZombies[netId] = nil
                                end
                            end
                        end
                    end
                end
            end
        end
        -- print('THREADS STOPPED - 3')
    end)

    Citizen.CreateThread(function()
        -- print('THREADS STARTED - 4')
        while Ply.Running do
            local THREAD_DELAY = 1000

            if Zombies.SpecialZombies and next(Zombies.SpecialZombies) then
                for netId, zombie in pairs(Zombies.SpecialZombies) do
                    local zombieEntity = NetworkGetEntityFromNetworkId(zombie.netId)

                    if DoesEntityExist(zombieEntity) then
                        if zombieEntity and NetworkDoesEntityExistWithNetworkId(zombie.netId) and DoesEntityExist(zombieEntity) and GetEntityHealth(zombieEntity) > 101 then
                            local coordsZombie = GetEntityCoords(zombieEntity)
                            local ZombieParameters = Config.Zombies.TypeZombies[zombie.categoryZombie]
                            [zombie.typeZombie]

                            if not DecorExistOn(zombieEntity, 'RegisterZombie') then
                                Zombies:updateTexture(zombieEntity)
                            end

                            if ZombieParameters.Habilitys and next(ZombieParameters.Habilitys) then
                                for _, hability in pairs(ZombieParameters.Habilitys) do
                                    local functionHabilitys = {
                                        ['healer'] = function()
                                            for _, zombieSpawned in pairs(Zombies.Spawneds) do
                                                local zombieSpawnedEntity = NetworkGetEntityFromNetworkId(zombieSpawned
                                                .netId)
                                                if DoesEntityExist(zombieSpawnedEntity) then
                                                    local distanceToSpawned = #(coordsZombie - GetEntityCoords(zombieSpawnedEntity))
                                                    if distanceToSpawned <= 8.0 then
                                                        local currentHealth = GetEntityHealth(zombieSpawnedEntity)
                                                        local maxHealth = GetEntityMaxHealth(zombieSpawnedEntity)
                                                        if currentHealth < maxHealth then
                                                            SetEntityHealth(zombieSpawnedEntity,
                                                                math.min(currentHealth + 90, maxHealth))
                                                        end
                                                    end
                                                end
                                            end
                                        end,

                                        ['smoker'] = function()
                                            if #(GetEntityCoords(PlayerPedId()) - coordsZombie) < 50.0 then
                                                ShowLoopParticle("core", "veh_respray_smoke", zombieEntity, 1.0, 1000)
                                            end
                                        end,

                                        ['firer'] = function()
                                            if #(GetEntityCoords(PlayerPedId()) - coordsZombie) < 50.0 then
                                                ShowLoopParticle("core", "ent_sht_petrol_fire", zombieEntity, 1.0, 1000)
                                            end
                                        end,
                                    }

                                    if functionHabilitys[hability] then
                                        functionHabilitys[hability]()
                                    end
                                end
                            end
                        else
                            Zombies.SpecialZombies[netId] = nil
                        end
                    end
                end
            end

            Wait(THREAD_DELAY)
        end
        -- print('THREADS STOPPED - 4')
    end)

    Citizen.CreateThread(function()
        -- print('THREADS STARTED - 5')
        local function preloadAnimations()
            RequestAnimDict("misscarsteal4@actor")
            while not HasAnimDictLoaded("misscarsteal4@actor") do
                Citizen.Wait(1)
            end

            RequestAnimDict("misscarsteal4@actor")
            while not HasAnimDictLoaded("misscarsteal4@actor") do
                Citizen.Wait(1)
            end
        end

        preloadAnimations()

        while Ply.Running do
            if not Zombies.Spawneds or not next(Zombies.Spawneds) then
                goto ignore
            end
            for i, zombie in pairs(Zombies.Spawneds) do
                if NetworkDoesNetworkIdExist(zombie.netId) then
                    local zombieEntity = NetworkGetEntityFromNetworkId(zombie.netId)

                    local ZombieParameters = Config.Zombies.TypeZombies[zombie.categoryZombie][zombie.typeZombie]

                    if DoesEntityExist(zombieEntity) then
                        if GetEntityHealth(zombieEntity) <= 101 then
                            print('Zombie ' .. i .. ' removido da tabela de spawns.')

                            if Zombies and Zombies.Spawneds[i] then
                                Zombies.Spawneds[i] = nil
                                break
                            end
                        end

                        local playerPed = PlayerPedId()
                        if IsPedAPlayer(playerPed) and IsEntityVisible(playerPed) == 1 then
                            local distance = GetDistanceBetweenCoords(GetEntityCoords(playerPed),
                                GetEntityCoords(zombieEntity), true)
                            local isInVehicle = IsPedInAnyVehicle(playerPed, false)

                            local isDead = IsEntityDead(playerPed) or GetEntityHealth(playerPed) <= 101

                            if not isInVehicle then
                                if distance <= 1.8 and not isDead then
                                    TaskPlayAnim(zombieEntity, "misscarsteal4@actor", "stumble", 8.0, -8.0, 500, 9, 1.0,
                                        false, false, false)
                                    TaskPlayAnim(playerPed, "misscarsteal4@actor", "stumble", 8.0, -8.0, 500, 9, 1.0,
                                        false, false, false)

                                    local playerHealth = GetEntityHealth(playerPed)
                                    if playerHealth > 0 then
                                        SetTimecycleModifier('damage')

                                        SetEntityHealth(playerPed, playerHealth - (ZombieParameters.DamageInPlayer or 20))
                                        SetTimeout(250, function()
                                            if (GetTimecycleModifierIndex() ~= 1) then
                                                ClearTimecycleModifier()
                                            end
                                        end)
                                    end

                                    TaskGoToEntity(zombieEntity, playerPed, -1, 0.0, 1.0, 1073741824, 0)
                                end
                            else
                                if distance <= 2.2 and not isDead then
                                    TaskPlayAnim(zombieEntity, "misscarsteal4@actor", "stumble", 1.0, 1.0, 500, 9, 1.0,
                                        false, false, false)
                                    TaskGoToEntity(zombieEntity, playerPed, -1, 0.0, 1.0, 1073741824, 0)
                                end
                            end
                        end
                    end
                end
            end
            ::ignore::
            Wait(1000)
        end
        -- print('THREADS STOPPED - 5')
    end)

    if Config.Zombies.PlayCustomSpeakingSounds then
        Citizen.CreateThread(function()
            -- print('THREADS STARTED - 6')
            while Ply.Running do
                Citizen.Wait(3000)
                for i, zombie in pairs(Zombies.Spawneds) do
                    local zombieEntity = NetworkGetEntityFromNetworkId(zombie.netId)
                    if not zombieEntity then
                        print('zombieEntity not found at L413')
                    end
                    local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(zombieEntity),
                        true)
                    local entityCoords = GetEntityCoords(zombieEntity)
    
                    if distance <= 30.1 and GetEntityCoords(zombieEntity) ~= nil and GetEntityHealth(zombieEntity) > 1 then
                        if math.random(1, 99) >= 80 then
                            local lCoords        = entityCoords
                            local eCoords        = GetEntityCoords(PlayerPedId())
                            local distIs         = Vdist(lCoords.x, lCoords.y, lCoords.z, eCoords.x, eCoords.y, eCoords.z)
    
                            local number, sounds = 0, {}
    
                            if (distIs > 10.0 and distIs <= 30.01) then
                                number = distIs / 30.0
                                sounds = Config.Zombies.SpeakingSounds.DistanceSounds.far
                            elseif (distIs <= 10.0) then
                                number = distIs / 10.0
                                sounds = Config.Zombies.SpeakingSounds.DistanceSounds.close
                            end
                            local volume = Round(1 - number, 2)
    
                            if sounds ~= nil and next(sounds) ~= nil then
                                local _sound = sounds[math.random(#sounds)]
                                SendNUIMessage({
                                    action = "playSound",
                                    sound = _sound,
                                    soundVolume = volume / 2
                                })
                            end
                        end
                    end
                end
            end
            -- print('THREADS STOPPED - 6')
        end)
    end
end

function Zombies:updateTexture(zombieEntity)
    ClearPedTasks(zombieEntity)
    ClearPedSecondaryTask(zombieEntity)
    ClearPedTasksImmediately(zombieEntity)
    TaskWanderStandard(zombieEntity, 10.0, 10)
    SetPedRelationshipGroupHash(zombieEntity, 'zombies')

    ApplyPedDamagePack(zombieEntity, "BigHitByVehicle", 1.0, 9.0)
    ApplyPedDamagePack(zombieEntity, "SCR_Dumpster", 1.0, 9.0)
    ApplyPedDamagePack(zombieEntity, "SCR_Torture", 1.0, 9.0)
    ApplyPedDamagePack(zombieEntity, "Splashback_Face_0", 1.0, 9.0)
    ApplyPedDamagePack(zombieEntity, "SCR_Cougar", 1.0, 9.0)
    ApplyPedDamagePack(zombieEntity, "SCR_Shark", 1.0, 9.0)

    RequestAnimSet('move_m@drunk@verydrunk')
    while not HasAnimSetLoaded('move_m@drunk@verydrunk') do
        Citizen.Wait(0)
    end
    SetPedMovementClipset(zombieEntity, 'move_m@drunk@verydrunk', 1.0)
    SetPedConfigFlag(zombieEntity, 100, false)

    RequestAnimDict("move_m@drunk@verydrunk")
    while not HasAnimDictLoaded("move_m@drunk@verydrunk") do
        Citizen.Wait(0)
    end
    TaskPlayAnim(zombieEntity, "move_m@drunk@verydrunk", "walk", 8.0, -8.0, -1, 51, 0, false, false, false)

    DecorSetBool(zombieEntity, 'RegisterZombie', true)
end

function Zombies:resetTable()
    self.Spawneds = {}
    self.SpecialZombies = {}
end

function Zombies:registerHabilitiesZombie(zombie)
    if not self.SpecialZombies[zombie.netId] then
        self.SpecialZombies[zombie.netId] = zombie
    end
end

CreateThread(function()
    DecorRegister('RegisterZombie', 2)
    AddRelationshipGroup("zombies")
    SetRelationshipBetweenGroups(5, GetHashKey("zombies"), GetHashKey("PLAYER"))
    SetRelationshipBetweenGroups(5, GetHashKey("PLAYER"), GetHashKey("zombies"))

    while true do
        local THREAD_DELAY = 1000

        if GlobalState.zombieEvent then
            local inZone = PlayerInZone()

            Ply.inSafeZone = PlayerInSafeZone()

            if inZone and not Ply.inZone then
                Ply:JoinInZone()
                DisableFlagSoundsPolice()
            elseif not inZone and Ply.inZone then
                Ply:LeaveZone()
            end
        end

        Wait(THREAD_DELAY)
    end
end)

function Client.setFriendlyFireInPlayers(friendlyFire)
    if not GlobalState.zombieEvent then return end
    if not Ply.inZone then return end


    if friendlyFire then
        local retval, groupHash = AddRelationshipGroup('amigues')

        SetPedRelationshipGroupHash(PlayerPedId(), groupHash)
        SetEntityCanBeDamagedByRelationshipGroup(PlayerPedId(), 0, groupHash)

        if Ply.PlayersInZone and next(Ply.PlayersInZone) then
            for _, player in pairs(Ply.PlayersInZone) do
                local playerPed = GetPlayerPed(GetPlayerFromServerId(player))
                if playerPed ~= PlayerPedId() then
                    SetPedRelationshipGroupHash(playerPed, groupHash)
                    SetEntityCanBeDamagedByRelationshipGroup(playerPed, 0, groupHash)
                end
            end
        end
    else
        RemoveRelationshipGroup('amigues')
    end
end

--
function Client.requestSpawnZombiesInProximity(amountSpawn)
    if not GlobalState.zombieEvent then return end
    if not Ply.inZone or Ply.inSafeZone then return end

    if IsEntityVisible(PlayerPedId()) ~= 1 then
        return
    end

    if GetEntityHealth(PlayerPedId()) > 101 then
        if type(amountSpawn) ~= "number" or amountSpawn <= 0 then
            return
        end

        local tableSpawnCoords = {}
        local maxAttempts = 10

        for i = 1, amountSpawn do
            local x, y, z = table.unpack(GetEntityCoords(PlayerPedId()))

            local posX, posY, posZ = x, y, z + 999.0
            local canSpawn = false
            local attempts = 0

            repeat
                Wait(1)
                attempts = attempts + 1

                posX = x + math.random(-Config.Zombies.MaxSpawnDistance, Config.Zombies.MaxSpawnDistance)
                posY = y + math.random(-Config.Zombies.MaxSpawnDistance, Config.Zombies.MaxSpawnDistance)

                local foundGround, groundZ = GetGroundZFor_3dCoord(posX, posY, z + 500.0, true)
                posZ = foundGround and groundZ or z

                local waterHeight = 0.0

                local isInWater = GetWaterHeight(posX, posY, posZ, waterHeight)
                if isInWater then
                    canSpawn = false
                else
                    canSpawn = true

                    local distance = #(vector3(posX, posY, posZ) - vector3(x, y, z))
                    if distance > Config.Zombies.MaxSpawnDistance or distance < Config.Zombies.MinSpawnDistance then
                        canSpawn = false
                    else
                        for _, player in pairs(Ply.PlayersInZone) do
                            Wait(10)
                            local playerPed = GetPlayerPed(GetPlayerFromServerId(player))
                            local playerPos = GetEntityCoords(playerPed)
                            local playerX, playerY = playerPos.x, playerPos.y
                            if posX > playerX - Config.Zombies.MinSpawnDistance and posX < playerX + Config.Zombies.MinSpawnDistance and
                                posY > playerY - Config.Zombies.MinSpawnDistance and posY < playerY + Config.Zombies.MinSpawnDistance then
                                canSpawn = false
                                break
                            end
                        end
                    end
                end
            until canSpawn or attempts >= maxAttempts

            if canSpawn then
                table.insert(tableSpawnCoords, vector3(posX, posY, posZ))
            end
        end

        if tableSpawnCoords and next(tableSpawnCoords) then
            Server._prepareSpawnZombie(tableSpawnCoords)
        end
    end
end

function Client.preLoadModels()
    -- print('Pré-carregando modelos de zombies')
    if not GlobalState.zombieEvent then return end
    if not Ply.inZone then return end

    for category, zombies in pairs(Config.Zombies.TypeZombies) do
        for zombieType, zombie in pairs(zombies) do
            for _, model in pairs(zombie.Models) do
                local startTime = GetGameTimer()
                local trys = 0
                RequestModel(GetHashKey(model))

                while not HasModelLoaded(GetHashKey(model)) and trys < 300 do
                    trys = trys + 1
                    RequestModel(GetHashKey(model))
                    Wait(10)
                end
            end
        end
    end
end

local modelsInvalid = {}
function Client.batchZombiesParameters(batch)
    for k,v in ipairs(batch) do
        if v then
            Client.spawnerUpdateParametersZombie(v)
        end
    end
end

function Client.spawnerUpdateParametersZombie(zombie)
    if type(zombie) ~= 'table' then return end

    local function setClipset(entity, clipset)
        RequestAnimSet(clipset)
        while not HasAnimSetLoaded(clipset) do
            Citizen.Wait(0)
        end
        SetPedMovementClipset(entity, clipset, 1.0)
    end


    local zombieEntity = NetworkGetEntityFromNetworkId(zombie.netId)

    if not DecorExistOn(zombieEntity, 'RegisterZombie') then
        Zombies:updateTexture(zombieEntity)
    end

    local ZombieParameters = Config.Zombies.TypeZombies[zombie.categoryZombie][zombie.typeZombie]

    SetPedArmour(zombieEntity, ZombieParameters.Armor)

    SetEntityMaxHealth(zombieEntity, ZombieParameters.Health)
    SetEntityHealth(zombieEntity, ZombieParameters.Health)

    -- PROTECTION FIRE IN BODY
    SetEntityProofs(zombieEntity, false, true, false, false, false, false, false, false)

    SetEntityMaxSpeed(zombieEntity, ZombieParameters.Speed * 3.6)

    SetPedRagdollBlockingFlags(zombieEntity, 1)
    SetPedCanRagdollFromPlayerImpact(zombieEntity, false)
    SetPedSuffersCriticalHits(zombieEntity, true)
    SetPedEnableWeaponBlocking(zombieEntity, true)
    DisablePedPainAudio(zombieEntity, true)
    StopPedSpeaking(zombieEntity, true)
    SetPedDiesWhenInjured(zombieEntity, false)
    StopPedRingtone(zombieEntity)
    SetPedMute(zombieEntity)
    SetPedIsDrunk(zombieEntity, true)
    SetPedConfigFlag(zombieEntity, 166, false)
    SetPedConfigFlag(zombieEntity, 170, false)
    SetBlockingOfNonTemporaryEvents(zombieEntity, true)
    SetPedCanEvasiveDive(zombieEntity, false)
    RemoveAllPedWeapons(zombieEntity, true)

    local clipset = ZombieParameters.Speed > 50.0 and 'move_characters@michael@fire' or 'move_m@drunk@verydrunk'

    if ZombieParameters.Speed > 50.0 then
        SetPedMoveRateOverride(zombieEntity, 10.0)
    end

    setClipset(zombieEntity, clipset)


    if ZombieParameters.Habilitys and next(ZombieParameters.Habilitys) then
        Zombies:registerHabilitiesZombie(zombie)
    end

    CreateThread(function()
        local inLoop = true
        while inLoop do
            if not DoesEntityExist(zombieEntity) then
                break
            end
            if IsEntityInWater(zombieEntity) then
                Server._invalidZombieEntity(zombie.netId)
            end
            Wait(250)
        end

        SetTimeout(8000, function()
            inLoop = false
        end)
    end)
end

function Client.startingDomination()
    if not GlobalState.zombieEvent then return end
    if not Ply.inZone then return end

    Client.playSound("siren.mp3", 0.09)
    Client.setFriendlyFireInPlayers(-1, true)
    Client.ThreadsStart(-1)
    local runNotify = true

    CreateThread(function()
        while runNotify do
            local text = "~r~[ALERTA]~s~ Invasão de infectados chegando."
            DrawText2D({ ['x'] = 0.50, ['y'] = 0.45 }, text, 1.0, 4)
            Wait(0)
        end
    end)

    SetTimeout(5000, function()
        runNotify = false
    end)
end

function Client.showTextInScreen(textShow, timeAmount)
    if not GlobalState.zombieEvent then return end
    if not Ply.inZone then return end

    local runNotify = true

    CreateThread(function()
        while runNotify do
            local text = textShow
            DrawText2D({ ['x'] = 0.50, ['y'] = 0.45 }, text, 1.0)

            Wait(0)
        end
    end)

    if type(timeAmount) ~= "number" then
        timeAmount = 5000
    end

    SetTimeout(timeAmount or 5000, function()
        runNotify = false
    end)
end

function Client.playSound(soundIndex, soundVolume)
    if not GlobalState.zombieEvent then return end
    if not Ply.inZone then return end
    SoundManager(soundIndex, soundVolume)
end

function Client.updateZombiesInZone(zombies)
    if not GlobalState.zombieEvent then return end
    if not Ply.inZone then return end
    Zombies.Spawneds = zombies
end

function Client.updatePlayersInZone(players)
    if not GlobalState.zombieEvent then return end
    if not Ply.inZone then return end

    Ply.PlayersInZone = players
end

function Ply:JoinInZone()
    if not GlobalState.zombieEvent then return end

    self.inZone = true
    Client.preLoadModels()
    Server._JoinInZone()
end

function Ply:LeaveZone()
    if not GlobalState.zombieEvent then return end

    self.inZone = false

    if self.Running then
        self.Running = false
        Server._LeaveZone()
    end
end

function Ply:resetTable()
    self.Running = false
    self.inZone = false
    self.inSafeZone = false
    self.PlayersInZone = {}
end

function Client.finishEvent(textShow)
    if not GlobalState.zombieEvent then return end
    if not Ply.inZone then return end

    Client.showTextInScreen(textShow, 5000)
    Client.rejectDomination()
end

function Client.rejectDomination()
    Ply:resetTable()
    Zombies:resetTable()
    SetEntityCoords(PlayerPedId(), Config.Players.CoordsTeleportReject)
end

function PlayerInZone()
    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)

    local distanceZone = #(playerCoords - Config.CenterZone)
    local distanceSafe = #(playerCoords - Config.SafeZone)

    if distanceZone < Config.DistZone or distanceSafe < Config.DistSafe then
        return true
    end

    return false
end

function PlayerInSafeZone()
    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)

    local distanceSafe = #(playerCoords - Config.SafeZone)

    if distanceSafe < Config.DistSafe then
        return true
    end

    return false
end

local counterZombiesDeadForUser = {}
AddEventHandler("gameEventTriggered", function(eventName, args)
    if eventName == "CEventNetworkEntityDamage" and Ply.inZone then
        if IsPedAPlayer(args[1]) then return end

        local zombieLife = GetEntityHealth(args[1])
        if zombieLife <= 101 and args[2] == PlayerPedId() then
            if targetZombies[args[1]] then
                targetZombies[args[1]] = nil
            end
            local userSource = GetPlayerServerId(NetworkGetPlayerIndexFromPed(args[2]))
            if not counterZombiesDeadForUser[userSource] then counterZombiesDeadForUser[userSource] = {} end
            if not counterZombiesDeadForUser[userSource][args[1]] then counterZombiesDeadForUser[userSource][args[1]] = true end
            local totalZombiesDead = 0
            for _, _ in pairs(counterZombiesDeadForUser[userSource]) do
                totalZombiesDead = totalZombiesDead + 1
            end
            local netIdZombie = NetworkGetNetworkIdFromEntity(args[1])
            Server._killZombie(netIdZombie)
        end
    end
end)