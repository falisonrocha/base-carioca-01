local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
serverAPI = Tunnel.getInterface("lotus_login")
-----------------------------------------------------------------------------------------------------------------------------------------
--  SPAWN COORDS
-----------------------------------------------------------------------------------------------------------------------------------------
local spawnLocations = {
	["Paleto"] = vec3(-769.37,5592.07,33.48),
	["Hospital"] = vec3(-885.2,-2186.1,8.59),
	["Vermelho"] = vec3(-348.88,-874.74,31.31),
	["Praça"] = vec3(203.11,-936.22,29.69),
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- ON CLOSE INTERFACE
-----------------------------------------------------------------------------------------------------------------------------------------
local spawnSalvo = nil
local activeCam = nil
local interfaceActive = false
function onCloseInterface()
	if DoesCamExist(activeCam) then
		RenderScriptCams(false,false,0,false,false)
		SetCamActive(activeCam,false)
		DestroyCam(activeCam,false)
		activeCam = nil
	end

	interfaceActive = false
	SetNuiFocus(false)
	TriggerEvent("ToogleBackCharacter")
	SendNUIMessage({ action = 'close' })
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- ACTIVE SPAWNS	
-----------------------------------------------------------------------------------------------------------------------------------------
function ToggleActionMenu()
	interfaceActive = not interfaceActive
	if interfaceActive then
		SetEntityVisible(PlayerPedId(), false)
		TriggerEvent("shortcuts:hide")
		TriggerEvent("flaviin:toggleHud",false)


		SetNuiFocus(true,true)
		SendNUIMessage({
			action = 'open',
			inFaction = serverAPI.inFaction(),
			identity = {
				id = serverAPI.getUserId(),
				bank = serverAPI.getMoney(),
				name = serverAPI.getPrimaryName(),
			}
		})

		activeCam = CreateCam("DEFAULT_SCRIPTED_CAMERA",true)
		SetCamCoord(activeCam,-1082.17,-59.63,101.49)
		RenderScriptCams(true,true,0,true,true)
		SetCamRot(activeCam,0.0,0.0,30.0,2)
		SetCamActive(activeCam,true)
	else
		SetNuiFocus(false)
		SendNUIMessage({ action = 'close' })
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- BUTTON
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("ButtonClick",function(data,cb)
	StartFade()
	if data.callback == "faction" then 
		if serverAPI.spawnFaction() then
			onCloseInterface()
		else
			SetNuiFocus(true,true)
			SendNUIMessage({ action = 'open', name = serverAPI.getPrimaryName(), inFaction = serverAPI.inFaction() })
		end 
	else
		if spawnLocations[data.callback] then 
			vRP._teleport(spawnLocations[data.callback].x,spawnLocations[data.callback].y,spawnLocations[data.callback].z)
		end

		onCloseInterface()
	end 

	Citizen.Wait(1000)

	EndFade()

	SetTimeout(10*1000,function()
		local ped = PlayerPedId()
		SetEntityHealth(ped,300)
	end)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TOOGLE CAM ACTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNuiCallback("SetCam", function(data, cb)
	local nameSpawn = data.spawn and data.spawn.name
	if spawnLocations[nameSpawn] then 
		local ped = PlayerPedId()

		SetEntityCoords(ped,spawnLocations[nameSpawn]["x"],spawnLocations[nameSpawn]["y"],spawnLocations[nameSpawn]["z"] - 1)
		SetCamCoord(activeCam,spawnLocations[nameSpawn]["x"],spawnLocations[nameSpawn]["y"],spawnLocations[nameSpawn]["z"] + 1)
		SetCamRot(activeCam,0.0,0.0,0.0,2)
	end

	cb(true)
end) 
-----------------------------------------------------------------------------------------------------------------------------------------
-- TOOGLE LOGIN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('vrp:ToogleLoginMenu')
AddEventHandler('vrp:ToogleLoginMenu',function()
	ToggleActionMenu()
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- START FADE
-----------------------------------------------------------------------------------------------------------------------------------------
function StartFade()
	DoScreenFadeOut(500)
	while IsScreenFadingOut() do
		Citizen.Wait(1)
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- END FADE
-----------------------------------------------------------------------------------------------------------------------------------------
function EndFade()
	SetEntityVisible(PlayerPedId(), true)
	DoScreenFadeIn(500)
	while IsScreenFadingIn() do
		Citizen.Wait(1)
	end

	TriggerEvent("flaviin:toggleHud",true)
end