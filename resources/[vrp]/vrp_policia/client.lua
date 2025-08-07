local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPserver = Tunnel.getInterface("vRP","vrp_policia")

src = {}
Tunnel.bindInterface("vrp_policia",src)
vSERVER = Tunnel.getInterface("vrp_policia")


local segundos = 0

----------------------------------------------------------------------------------------------------------------------------------------
-- PEDIR RG
----------------------------------------------------------------------------------------------------------------------------------------
local css = [[ #simplehud { bottom: 13%; right: 0%; background: rgba(0, 0, 0, 0.4); -webkit-box-shadow: 0 6px 15px 0 rgba(0,0,0,.6); box-shadow: 10px rgba(0,0,0,.4); -webkit-box-sizing: border-box; width: 15%; padding: 0 15px 12px 15px; border-radius: 15px 0 0 15px; position: fixed; } @keyframes animateright { from { right: -300px; opacity: 0 } to { right: 3%; opacity: 1 } } .label_carteira { font-family: 'Lobster', cursive; font-size: 25px; font-weight: bold; letter-spacing: 1px; color: #fff; letter-spacing: 0.25rem; text-align: center; } .label_carteira p { background: linear-gradient(270deg, rgba(74, 255, 213,1), rgba(74, 255, 213,0.3)); background-size: 400% 400%; margin: 10px; padding: 0; -webkit-background-clip: text; -webkit-text-fill-color: transparent; animation: changebackground 5s ease infinite; } @keyframes changebackground { 0%{background-position:0% 50%} 50%{background-position:100% 50%} 100%{background-position:0% 50%} } .info_carteira { font-family: 'Blinker', sans-serif; font-size: 15px; color: #333; } .info_carteira .info_section{ background: transparent; padding: 8px; /*border-radius: 8px; margin: 10px 0;*/ text-align: left; letter-spacing: 1px; border-bottom:1px solid transparent; color: white; } .info_carteira .info_section:first-child{ border-top-left-radius: 8px; border-top-right-radius: 8px; } .info_carteira .info_section:last-child{ border-bottom-left-radius: 8px; border-bottom-right-radius: 8px; box-shadow: 0 2px 1px transparent; border: 0; } .info_carteira .info_section .icon { width: 30px; height: 30px; background-repeat: no-repeat; background-size: 20px; background-position: center; float: left; position: relative; top: -5px; left: -2px; } .info_carteira .info_section .info { float: right; color: rgb(255, 255, 255); padding-right: 5px; } @keyframes animateright { from { right: -300px; opacity: 0 } to { right: 2.2%; opacity: 1 } } ]]

function src.enviarIdentidade(status, id, nome,sobrenome,idade,registro,telefone,carteira,trabalho)
    if status then
        local html = string.format("<div id='simplehud'> <div class='label_carteira'><img src='https://media.discordapp.net/attachments/871769750710149140/1001895906515361843/01_9.png?width=1370&height=683' style='width: 120px;'></div> <div class='info_carteira'> <div class='info_section'> PASSAPORTE: <span class='info'>"..id.."</span> </div> </div> <div class='info_carteira'> <div class='info_section'> NOME: <span class='info'> "..nome.. " "..sobrenome.. " ("..idade..")</span> </div> </div> <div class='info_carteira'> <div class='info_section'> RG: <span class='info'> "..registro.. "</span> </div> </div> <div class='info_carteira'> <div class='info_section'> Telefone: <span class='info'> "..telefone.. "</span> </div> </div> <div class='info_carteira'> <div class='info_section'> Trabalho: <span class='info'> "..trabalho.. "</span> </div> </div> <div class='info_carteira'> <div class='info_section'> Carteira: <span class='info'> "..carteira.. "</span> </div> </div> </div>")
        vRP._setDiv("registro", css, html)
    else
        vRP._removeDiv("registro")
    end
    return true
end

----------------------------------------------------------------------------------------------------------------------------------------
-- SISTEMA DE PRISAO
----------------------------------------------------------------------------------------------------------------------------------------
local nveh = nil
local pveh01 = nil
local pveh02 = nil
local Transporte = false
local chegou = false
local prisioneiro = false

function src.checkPrisonArea()
    local x,y,z = table.unpack(GetEntityCoords(PlayerPedId()))
    local _,i = GetGroundZFor_3dCoord(-1091.29,-821.44,5.48)
    local distance = Vdist(x,y,z,-1091.29,-821.44,5.48,i)
    if distance <= 20.0 then
        return true
    end
end

function src.levarPrisioneiro(prisionTime)
    local ped = PlayerPedId()

	local vhash = GetHashKey("riot")
	while not HasModelLoaded(vhash) do
		RequestModel(vhash)
		Citizen.Wait(10)
	end

	local phash = GetHashKey("mp_m_securoguard_01")
	while not HasModelLoaded(phash) do
		RequestModel(phash)
		Citizen.Wait(10)
    end

	if HasModelLoaded(vhash) then
		nveh = CreateVehicle(vhash, -1058.18,-882.74,4.52,250.12,true,false)
		SetVehicleNumberPlateText(nveh,vRP.getRegistrationNumber())
        pveh01 = CreatePedInsideVehicle(nveh,27,GetHashKey("mp_m_securoguard_01"),-1,true,false)
        pveh02 = CreatePedInsideVehicle(nveh,27,GetHashKey("mp_m_securoguard_01"),1,true,false)


        TaskWarpPedIntoVehicle(PlayerPedId(),nveh,2)
        SetVehicleSiren(nveh, true)


		SetEntityAsMissionEntity(nveh,  true, false)
        SetEntityAsMissionEntity(pveh01,  true, false)
        SetEntityAsMissionEntity(pveh02,  true, false)

        SetVehicleOnGroundProperly(nveh)
		TaskVehicleDriveToCoordLongrange(pveh01,nveh, 1685.38,2607.15,45.1, 18.0 ,2883621, 1.0)
        SetModelAsNoLongerNeeded(vhash)
        Transporte = true
        local contador = 0

        async(function()
            while Transporte do
                Citizen.Wait(1000)

                local x,y,z = table.unpack(GetEntityCoords(ped))
                local street = GetStreetNameFromHashKey(GetStreetNameAtCoord(x,y,z))
                if street == "Route 68" then
                    SetEntityMaxSpeed(nveh,0.32*80-0.45)
                end

                local distancia = GetDistanceBetweenCoords(GetEntityCoords(nveh),1685.38,2607.15,45.1,true)
                local vehspeed = GetEntitySpeed(nveh)*3.6

                if not IsPedSittingInAnyVehicle(pveh01) or not IsPedSittingInAnyVehicle(ped) and not chegou then
                    SetEntityAsNoLongerNeeded(pveh01)
                    SetEntityAsNoLongerNeeded(pveh02)

                    vSERVER.colocarPrisao(prisionTime)
                    Transporte = false
                    chegou = false
                    clearPeds()
                end

                if math.ceil(vehspeed) <= 5 then 
                    contador = contador + 1
                    
                    if contador >= 10 then
                        SetEntityAsNoLongerNeeded(pveh01)
                        SetEntityAsNoLongerNeeded(pveh02)

                        vSERVER.colocarPrisao(prisionTime)
                        Transporte = false
                        chegou = false
                        clearPeds()
                        contador = 0
                    end
                end

                if distancia < 30.0 and math.ceil(vehspeed) <= 2 then
                    if IsPedSittingInAnyVehicle(ped) then
                        local veh = GetVehiclePedIsIn(ped, false)
                        TaskLeaveVehicle(ped,veh, 4160)

                        SetTimeout(3000, function()
                            TaskGoToCoordAnyMeans(ped, 1678.29,2593.77,45.57 , 0.4, 0, 0, 786603, 0xbf800000)

                            TaskLeaveVehicle(pveh02,veh, 4160)
                            TaskGoToCoordAnyMeans(pveh02,  1678.29,2593.77,45.57, 0.4, 0, 0, 786603, 0xbf800000)

                            SetEntityAsNoLongerNeeded(pveh01)
                            SetEntityAsNoLongerNeeded(pveh02)
                        end)

                        chegou = true
                    end
                end

                local distanciaPrison = GetDistanceBetweenCoords(GetEntityCoords(ped),1678.29,2593.77,45.57,true)
                if distanciaPrison < 3.0 then
                    vSERVER.colocarPrisao(prisionTime)
                    Transporte = false
                    chegou = false
                end
            end
        end)
    end
end

function src.prisioneiro(status)
    prisioneiro = status
    DoScreenFadeOut(1000)

    Wait(1000)
    local ped = PlayerPedId()
	if prisioneiro then
		SetEntityInvincible(ped,false) --mqcu
		FreezeEntityPosition(ped,true)
		SetEntityVisible(ped,false,false)
		SetTimeout(3000,function()
			SetEntityInvincible(ped,false)
			FreezeEntityPosition(ped,false)
			SetEntityVisible(ped,true,false)
        end)
        clearPeds()
    end
    vRP.teleport(1679.1,2514.55,45.55)

	Wait(3500)
    DoScreenFadeIn(1000)
end

-- function src.setarRoupasPrisional()
--     if GetEntityModel(PlayerPedId()) == GetHashKey("mp_m_freemode_01") then
--         SetPedComponentVariation(PlayerPedId(),1,120,0,2)
--         SetPedComponentVariation(PlayerPedId(),3,0,0,2)
--         SetPedComponentVariation(PlayerPedId(),4,27,2,2)
--         SetPedComponentVariation(PlayerPedId(),6,5,2,2)
--         SetPedComponentVariation(PlayerPedId(),8,15,0,2)
--         SetPedComponentVariation(PlayerPedId(),9,0,1,2)
--         SetPedComponentVariation(PlayerPedId(),11,1,11,2)
--         SetPedPropIndex(PlayerPedId(),0,-1,0,0)
--         SetPedPropIndex(PlayerPedId(),6,-1,0,0)
--     elseif GetEntityModel(PlayerPedId()) == GetHashKey("mp_f_freemode_01") then
--         SetPedComponentVariation(PlayerPedId(),1,0,0,2)
--         SetPedComponentVariation(PlayerPedId(),3,14,0,2)
--         SetPedComponentVariation(PlayerPedId(),4,3,15,2)
--         SetPedComponentVariation(PlayerPedId(),6,5,0,2)
--         SetPedComponentVariation(PlayerPedId(),8,9,0,2)
--         SetPedComponentVariation(PlayerPedId(),9,0,1,2)
--         SetPedComponentVariation(PlayerPedId(),11,141,2,2)
--         SetPedPropIndex(PlayerPedId(),0,-1,0,0)
--         SetPedPropIndex(PlayerPedId(),6,-1,0,0)
--     end
-- end

function clearPeds()
    TriggerServerEvent("bm_module:deleteVehicles",VehToNet(nveh))
    TriggerServerEvent("trydeleteped",PedToNet(pveh01))
    TriggerServerEvent("trydeleteped",PedToNet(pveh02))
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(5000)
		if prisioneiro then
			local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),1678.6,2513.39,45.57,true)
			if distance >= 150 then
                SetEntityCoords(PlayerPedId(),1678.6,2513.39,45.57)
                TriggerEvent("Notify","negado","O agente penitenciário encontrou você tentando escapar.", 5)
			end
		end
	end
end)

----------------------------------------------------------------------------------------------------------------------------------------
-- SISTEMA DE FICHA CRIMINAL
----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("fc",function(source,args)
	if vSERVER.checkPermission() then
		SetNuiFocus(true,true)
		SendNUIMessage({ action = "showMenu" })
	end
end)

RegisterNUICallback("fichaClose",function(data,cb)
	SetNuiFocus(false,false)
	SendNUIMessage({ action = "hideMenu" })
end)

RegisterNUICallback("infoUser",function(data,cb)
	local tickets,name,lastname,identity,age,arrests,warnings = vSERVER.infoUser(data.user)
	cb({ tickets = tickets, name = name, lastname = lastname, identity = identity, age = age, arrests = arrests, warnings = warnings })
end)

RegisterNUICallback("arrestsUser",function(data,cb)
	local arrests = vSERVER.arrestsUser(data.user)
	if arrests then
		cb({ arrests = arrests })
	end
end)

RegisterNUICallback("ticketsUser",function(data,cb)
	local tickets = vSERVER.ticketsUser(data.user)
	if tickets then
		cb({ tickets = tickets })
	end
end)

RegisterNUICallback("warningsUser",function(data,cb)
	local warnings = vSERVER.warningsUser(data.user)
	if warnings then
		cb({ warnings = warnings })
	end
end)


----------------------------------------------------------------------------------------------------------------------------------------
-- SISTEMA DE ALGEMAR
----------------------------------------------------------------------------------------------------------------------------------------
local other = nil
local drag = false
local carregado = false

function src.arrastar(p1)
    other = p1
    drag = not drag
end

Citizen.CreateThread(function()
    while true do
        local time = 1000
		if drag and other then
            time = 5
			local ped = GetPlayerPed(GetPlayerFromServerId(other))
			Citizen.InvokeNative(0x6B9BBD38AB0796DF,PlayerPedId(),ped,4103,11816,0.48,0.0,0.0,0.0,0.0,0.0,false,false,false,false,2,true)
			carregado = true
        else
        	if carregado then
				DetachEntity(PlayerPedId(),true,false)
				carregado = false
			end
        end

        Citizen.Wait(time)
	end
end)


Citizen.CreateThread(function()
	while true do
		Citizen.Wait(5000)
		if prisioneiro then
			local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),1678.6,2513.39,45.57,true)
			if distance >= 150 then
                SetEntityCoords(PlayerPedId(),1678.6,2513.39,45.57)
                TriggerEvent("Notify","negado","O agente penitenciário encontrou você tentando escapar.", 5)
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- ALGEMAR / DESALGEMAR 
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("keybindcuff",function(source,args)
    if not IsPedInAnyVehicle(PlayerPedId()) then
	    vSERVER._algemar()
    end
end)
RegisterKeyMapping("keybindcuff","Algemar o Cidadao","keyboard","g")

RegisterCommand("keybindcarry",function(source,args)
    if not IsPedInAnyVehicle(PlayerPedId()) then
	    vSERVER._arrastar() 
    end
end)
RegisterKeyMapping("keybindcarry","Carregar o Cidadao","keyboard","h")

function src.checkAnim()
    if IsEntityPlayingAnim(GetPlayerPed(-1),"random@arrests@busted","idle_a",3) then
        return true
    end
end
--COMENTEI LINHA DE ARRASTAR NO H--

----------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTIONS
----------------------------------------------------------------------------------------------------------------------------------------
function src.checkSexo()
    if GetEntityModel(PlayerPedId()) == GetHashKey("mp_m_freemode_01") then
        return "H" 
    elseif GetEntityModel(PlayerPedId()) == GetHashKey("mp_f_freemode_01") then
        return "M"
    end
end




function src.retirarMascara()
    SetPedComponentVariation(PlayerPedId(), 1, 0,0,2)
end


local in_arena = false

function src.updateWeapons()
	if not in_arena then
 		vRPserver.updateWeapons(vRP.getWeapons())
	end
end

RegisterNetEvent("mirtin_survival:updateArena")
AddEventHandler("mirtin_survival:updateArena", function(boolean)
    in_arena = boolean
end)

function DrawText3Ds(x,y,z,text)
	local onScreen,_x,_y = World3dToScreen2d(x,y,z)
	SetTextFont(4)
	SetTextScale(0.35,0.35)
	SetTextColour(255,255,255,150)
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(_x,_y)
	local factor = (string.len(text))/370
	DrawRect(_x,_y+0.0125,0.01+factor,0.03,0,0,0,80)
end

--------------------------------------------------------------------------------------------------------------------------------------------------
-- NOTIFICAO DE DISPARO
--------------------------------------------------------------------------------------------------------------------------------------------------
local in_arena = false

local blacklistedWeapons = {
	"WEAPON_DAGGER",
	"WEAPON_BAT",
	"WEAPON_BALL",
	"WEAPON_SNOWBALL",
	"WEAPON_BOTTLE",
	"WEAPON_CROWBAR",
	"WEAPON_FLASHLIGHT",
	"WEAPON_GOLFCLUB",
	"WEAPON_HAMMER",
	"WEAPON_HATCHET",
	"WEAPON_KNUCKLE",
	"WEAPON_KNIFE",
    "WEAPON_FLARE",
    "WEAPON_BATTLEAXE",
    "WEAPON_DAGGER",
	"WEAPON_MACHETE",
	"WEAPON_SWITCHBLADE",
	"WEAPON_NIGHTSTICK",
	"WEAPON_WRENCH",
	"WEAPON_POOLCUE",
	"WEAPON_STUNGUN",
	"WEAPON_STONE_HATCHET"
}

local blacklistedLocations = {
    [1] = { coords = vec3(1571.94,-1685.43,88.22), dist = 100.0 },
    [2] = { coords = vec3(-91.33,-2642.74,6.04), dist = 100.0 },
}

Citizen.CreateThread(function()
	while true do
		local time = 100
		local ped = PlayerPedId()
		local vehicle = GetVehiclePedIsUsing(ped)
		local blacklistweapon = false
		local x,y,z = table.unpack(GetEntityCoords(ped))
      
		for k,v in ipairs(blacklistedWeapons) do
			if GetSelectedPedWeapon(ped) == GetHashKey(v) or not vehicle then
				blacklistweapon = true
			end
		end

        for k,v in pairs(blacklistedLocations) do
            local distance = #(GetEntityCoords(ped) - v.coords)
			if distance <= v.dist then
                blacklistweapon = true
            end
        end

		if IsPedShooting(ped) and not blacklistweapon and not IsPedCurrentWeaponSilenced(PlayerPedId()) and not in_arena then
            vSERVER._sendLocationFire(x,y,z)
            Wait(60000)
		end

		blacklistweapon = false

        Citizen.Wait(time)
	end
end)

RegisterNetEvent("mirtin_survival:updateArena")
AddEventHandler("mirtin_survival:updateArena", function(boolean)
    in_arena = boolean
end)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SISTEMA DE REDUCAO DE PENA
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local agindo = false
local reducaopenal = false
local delayServico = {}

Citizen.CreateThread(function()
    while true do
        local time = 1000
		local ped = PlayerPedId()
		local pedCoords = GetEntityCoords(ped)
        if prisioneiro then
            if not agindo then
                for k,v in pairs(cfg.locations) do
                    local distance = #(pedCoords - v.coords)
                    if distance <= 15.0 then
                        time = 5
                        DrawMarker(21,v.coords[1],v.coords[2],v.coords[3]-v.minBlip,0,0,0,0,0,130.0,0.5,1.0,0.5, 0,210,0,180 ,1,0,0,1)
                        if distance <= 3.0 then
                            if IsControlJustReleased(1, 51) and segundos <= 0 then
                                segundos = 5
                                if delayServico[k] == nil or not delayServico[k] then
                                    if vSERVER.checkTempoPrisao() > cfg.geral.tempoMin then
                                        iniciarServico(k, v.type, v.coords, v.heading)
                                    else
                                        TriggerEvent("Notify","negado","Não precisamos mais de seus serviços.", 5)
                                    end
                                else
                                    TriggerEvent("Notify","negado","Você já passou por esse local aguarde <b>"..delayServico[k].." segundo(s)</b>.", 5)
                                end
                            end
                        end
                    end
                end
            end  
        end
        
        Citizen.Wait(time)
    end
end)


function iniciarServico(id, servico, coords, heading)
    local ped = PlayerPedId()
    if ped then
        if servico == "Consertar" then
            agindo = true
            SetEntityCoords(ped, coords[1],coords[2],coords[3]-0.8)
            SetEntityHeading(ped , heading)
            vRP._playAnim(false,{task=cfg.types[servico].anim},false)

            local finished = vRP.taskBar(15000, math.random(10,15))
            if finished then
                local finished = vRP.taskBar(15000, math.random(10,15))
                if finished then
                    local finished = vRP.taskBar(15000, math.random(10,15))
                    if finished then
                        delayServico[id] = 90

                        vRP._DeletarObjeto()
                        ClearPedTasks(GetPlayerPed(-1))
                        reduzirTempo(cfg.types[servico].reduzir)
                    end
                end
            end
            agindo = false
        end
    end
end

function reduzirTempo(tempo)
    vSERVER.reduzirPrisao(tempo)
end

Citizen.CreateThread(function()
	while true do
		local time = 1000
		if prisioneiro then
            time = 5
			local distance01 = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),1691.59,2566.05,45.56,true)
			local distance02 = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),1669.51,2487.71,45.82,true)

			if GetEntityHealth(PlayerPedId()) <= 101 then
				reducaopenal = false
				vRP._DeletarObjeto()
			end

			if distance01 <= 100 and not reducaopenal then
				DrawMarker(21,1691.59,2566.05,45.56,0,0,0,0,180.0,130.0,1.0,1.0,0.5,255,255,255,100,1,0,0,1)
				if distance01 <= 1.2 then
					drawTxt("PRESSIONE  ~b~E~w~  PARA COLETAR",4,0.5,0.93,0.50,255,255,255,180)
					if IsControlJustPressed(0,38) then
						reducaopenal = true
						ResetPedMovementClipset(PlayerPedId(),0)
						SetRunSprintMultiplierForPlayer(PlayerId(),1.0)
						vRP._CarregarObjeto("anim@heists@box_carry@","idle","hei_prop_heist_box",50,28422)
					end
				end
			end

			if distance02 <= 100 and reducaopenal then
				DrawMarker(21,1669.51,2487.71,45.82,0,0,0,0,180.0,130.0,1.0,1.0,0.5,255,255,255,100,1,0,0,1)
				if distance02 <= 1.2 then
					drawTxt("PRESSIONE  ~b~E~w~  PARA CONCLUIR",4,0.5,0.93,0.50,255,255,255,180)
					if IsControlJustPressed(0,38) then
						reducaopenal = false
						reduzirTempo(2)
						vRP._DeletarObjeto()
					end
				end
			end
		end

        Citizen.Wait(time)
	end
end)

Citizen.CreateThread(function()
	while true do
		local time = 1000
		if reducaopenal then
            time = 5
			BlockWeaponWheelThisFrame()
			DisableControlAction(0,21,true)
			DisableControlAction(0,24,true)
			DisableControlAction(0,25,true)
			DisableControlAction(0,58,true)
			DisableControlAction(0,263,true)
			DisableControlAction(0,264,true)
			DisableControlAction(0,257,true)
			DisableControlAction(0,140,true)
			DisableControlAction(0,141,true)
			DisableControlAction(0,142,true)
			DisableControlAction(0,143,true)
			DisableControlAction(0,75,true)
			DisableControlAction(0,22,true)
			DisableControlAction(0,32,true)
			DisableControlAction(0,268,true)
			DisableControlAction(0,33,true)
			DisableControlAction(0,269,true)
			DisableControlAction(0,34,true)
			DisableControlAction(0,270,true)
			DisableControlAction(0,35,true)
			DisableControlAction(0,271,true)
			DisableControlAction(0,288,true)
			DisableControlAction(0,289,true)
			DisableControlAction(0,170,true)
			DisableControlAction(0,166,true)
			DisableControlAction(0,73,true)
			DisableControlAction(0,167,true)
			DisableControlAction(0,177,true)
			DisableControlAction(0,311,true)
			DisableControlAction(0,344,true)
			DisableControlAction(0,29,true)
			DisableControlAction(0,182,true)
			DisableControlAction(0,245,true)
			DisableControlAction(0,246,true)
			DisableControlAction(0,303,true)
			DisableControlAction(0,187,true)
			DisableControlAction(0,189,true)
			DisableControlAction(0,190,true)
			DisableControlAction(0,188,true)
		end

        Citizen.Wait(time)
	end
end)

--------------------------------------------------------------------------------------------------------------------------------------------------
-- SISTEMA DE RADAR
--------------------------------------------------------------------------------------------------------------------------------------------------
local radar = {
	shown = false,
	freeze = false,
	info = "INICIANDO O SISTEMA DO RADAR",
	info2 = "INICIANDO O SISTEMA DO RADAR"
}

Citizen.CreateThread(function()
	while true do
		local time = 1000
        if IsPedInAnyVehicle(PlayerPedId()) then
            time = 5
            if IsControlJustPressed(1,306) and IsPedInAnyPoliceVehicle(PlayerPedId()) then
                if radar.shown then
                    radar.shown = false
                else
                    radar.shown = true
                end
            end

            if IsControlJustPressed(1,301) and IsPedInAnyPoliceVehicle(PlayerPedId()) then
                if radar.freeze then
                    radar.freeze = false
                else
                    radar.freeze = true
                end
            end

            if radar.shown then
                if radar.freeze == false then
                    local veh = GetVehiclePedIsIn(PlayerPedId(),false)
                    local coordA = GetOffsetFromEntityInWorldCoords(veh,0.0,1.0,1.0)
                    local coordB = GetOffsetFromEntityInWorldCoords(veh,0.0,105.0,0.0)
                    local frontcar = StartShapeTestCapsule(coordA,coordB,3.0,10,veh,7)
                    local a,b,c,d,e = GetShapeTestResult(frontcar)

                    if IsEntityAVehicle(e) then
                        local fmodel = GetDisplayNameFromVehicleModel(GetEntityModel(e))
                        local fvspeed = GetEntitySpeed(e)*2.236936
                        local fplate = GetVehicleNumberPlateText(e)
                        radar.info = string.format("~y~PLACA: ~w~%s   ~y~MODELO: ~w~%s   ~y~VELOCIDADE: ~w~%s MPH",fplate,fmodel,math.ceil(fvspeed))
                    end

                    local bcoordB = GetOffsetFromEntityInWorldCoords(veh,0.0,-105.0,0.0)
                    local rearcar = StartShapeTestCapsule(coordA,bcoordB,3.0,10,veh,7)
                    local f,g,h,i,j = GetShapeTestResult(rearcar)

                    if IsEntityAVehicle(j) then
                        local bmodel = GetDisplayNameFromVehicleModel(GetEntityModel(j))
                        local bvspeed = GetEntitySpeed(j)*2.236936
                        local bplate = GetVehicleNumberPlateText(j)
                        radar.info2 = string.format("~y~PLACA: ~w~%s   ~y~MODELO: ~w~%s   ~y~VELOCIDADE: ~w~%s MPH",bplate,bmodel,math.ceil(bvspeed))
                    end
                end
                drawTxt(radar.info,4,0.5,0.905,0.50,255,255,255,180)
                drawTxt(radar.info2,4,0.5,0.93,0.50,255,255,255,180)
            end

            if not IsPedInAnyVehicle(PlayerPedId()) and radar.shown then
                radar.shown = false
            end
        end
        Citizen.Wait(time)
	end
end)

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- OUTROS
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	SetNuiFocus(false,false)
end)

Citizen.CreateThread(function()
    while true do
        local time = 1000
        for k,v in pairs(delayServico) do
            if v >= 0 then
                delayServico[k] = v - 1

                if v <= 0 then
                    delayServico[k] = nil
                end
            end
        end

        Citizen.Wait(time)
    end
end)

Citizen.CreateThread(function()
    while true do
        local time = 1000

        if segundos > 0 then
            segundos = segundos - 1
        end

        Citizen.Wait(time)
    end
end)

function drawTxt(text,font,x,y,scale,r,g,b,a)
	SetTextFont(font)
	SetTextScale(scale,scale)
	SetTextColour(r,g,b,a)
	SetTextOutline()
	SetTextCentre(1)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x,y)
end