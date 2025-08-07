local farmIndex = 0
local inFarm = false
local lastFarmTime = 0
local COOLDOWN_TIME = 60 -- tempo de cooldown em segundos

local function startCounter()
    SetNuiFocus(false, false)
    SendNUIMessage({action = 'close'})
    FreezeEntityPosition(PlayerPedId(), true)
    SetEntityInvincible(PlayerPedId(), true)
    TriggerEvent("emotes", "mexer")
    TriggerEvent("progress", FARM_DELAY)
    
    Citizen.CreateThread(function()
        while inFarm and farmIndex > 0 do
            Citizen.Wait(FARM_DELAY * 1000)
            Remote.payFarm(farmIndex)
            TriggerEvent("progress", FARM_DELAY)
        end

        FreezeEntityPosition(PlayerPedId(), false)
        SetEntityInvincible(PlayerPedId(), false)
    end)
end

Citizen.CreateThread(function()
    while true do
        local timeDistance = 3000
        local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)

        if not inFarm then
            for k, v in pairs(Config.Farms) do
                local distance = #(coords - vector3(v[1], v[2], v[3]))
                if distance < 5 then
                    DrawText3D(v[1], v[2], v[3], "~g~[E]~w~ Começar o Farm")
                    timeDistance = 3
                    if IsControlJustPressed(0, 38) and Remote.getPermission(v[4]) then
                        local currentTime = GetGameTimer()
                        if (currentTime - lastFarmTime) > COOLDOWN_TIME * 1000 then -- COOLDOWN_TIME em segundos
                            farmIndex = k
                            lastFarmTime = currentTime
                            SetNuiFocus(true, true)
                            SendNUIMessage({action = 'open'})
                        else
                            TriggerEvent('Notify', 'negado', 'Aguarde um pouco antes de começar outro farm.')
                        end
                    end
                end
            end
        end

        if inFarm then
            timeDistance = 3
            local distance = #(coords - vector3(Config.Farms[farmIndex][1], Config.Farms[farmIndex][2], Config.Farms[farmIndex][3]))

            if distance > 5 then
                -- Cancelar o farm se o jogador sair da área
                inFarm = false
                farmIndex = 0
                FreezeEntityPosition(ped, false)
                SetEntityInvincible(ped, false)
                ClearPedTasks(ped)
                TriggerEvent("progress", 1)
                TriggerEvent('Notify', 'negado', 'Seu farm foi cancelado porque você se distanciou.')
            else
                ClearPlayerWantedLevel(PlayerId())
                drawTxt("PRESSIONE ~r~F6 ~w~PARA SAIR DO FARM", 4, 0.5, 0.93, 0.50, 255, 255, 255, 200)
            end

            if IsControlJustPressed(0, 167) then
                -- Cancelar o farm manualmente
                inFarm = false
                farmIndex = 0
                FreezeEntityPosition(ped, false)
                SetEntityInvincible(ped, false)
                ClearPedTasks(ped)
                TriggerEvent("progress", 1)
                TriggerEvent('Notify', 'negado', 'Você saiu do farm.')
            end
        end

        Citizen.Wait(timeDistance)
    end
end)

RegisterNUICallback('selectOption', function(data, cb)
    local _option = data.option
    if inFarm then
        TriggerClientEvent('Notify', 'negado', 'Você já está em um farm.')
        return
    end
    inFarm = true
    startCounter()
    SetTimeout(tonumber(Config.Hours[_option]) * 1000, function()
        inFarm = false
        farmIndex = 0
        FreezeEntityPosition(PlayerPedId(), false)
        SetEntityInvincible(PlayerPedId(), false)
        ClearPedTasks(PlayerPedId())
        TriggerEvent('Notify', 'sucesso', 'O farm foi finalizado após '.._option..'.')
    end)
end)
