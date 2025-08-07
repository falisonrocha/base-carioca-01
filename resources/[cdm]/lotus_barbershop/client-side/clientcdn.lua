-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
cRP = {}
Tunnel.bindInterface("vrp_barbearia",cRP)
vSERVER = Tunnel.getInterface("vrp_barbearia")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local cam = -1
local custom = { fathersID = 0, mothersID = 0, skinColor = 0, shapeMix = 0.0, eyesColor = 0, eyebrowsHeight = 0, eyebrowsWidth = 0, noseWidth = 0, noseHeight = 0, noseLength = 0, noseBridge = 0, noseTip = 0, noseShift = 0, cheekboneHeight = 0, cheekboneWidth = 0, cheeksWidth = 0, lips = 0, jawWidth = 0, jawHeight = 0, chinLength = 0, chinPosition = 0, chinWidth = 0, chinShape = 0, neckWidth = 0, hairModel = 4, firstHairColor = 0, secondHairColor = 0, eyebrowsModel = 0, eyebrowsColor = 0, beardModel = -1, beardColor = 0, chestModel = -1, chestColor = 0, blushModel = -1, blushColor = 0, lipstickModel = -1, lipstickColor = 0, blemishesModel = -1, ageingModel = -1, complexionModel = -1, sundamageModel = -1, frecklesModel = -1, makeupModel = -1 }
local currentMode = nil

-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTION
-----------------------------------------------------------------------------------------------------------------------------------------
function f(n)
	n = n + 0.00000
	return n
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- SETCHAR
-----------------------------------------------------------------------------------------------------------------------------------------
local loaded = false
function cRP.setCharacter(data)
	if data then 
		custom = data
		canStartThread = true
		canUpdate = true
	end
end

RegisterNetEvent("barbershop:setCustom")
AddEventHandler("barbershop:setCustom",function()
	setBarbershop(PlayerPedId(),custom)
end)

RegisterNUICallback("setupCam",function(data)
	local value = data["value"]
	if value == 1 then
	local coords = GetOffsetFromEntityInWorldCoords(PlayerPedId(),0,0.35,-0.10)
			SetCamCoord(cam,coords["x"],coords["y"] ,coords["z"] + 0.8)
	PointCamAtCoord(cam,pos["x"],pos["y"],pos["z"] + 0.65)
	elseif value == 2 then
			local coords = GetOffsetFromEntityInWorldCoords(PlayerPedId(),0,0.62,0)
	SetCamCoord(cam,coords["x"],coords["y"],coords["z"] - 0.6)
	PointCamAtCoord(cam,pos["x"],pos["y"],pos["z"] - 0.55)
	elseif value == 3 then
	local coords = GetOffsetFromEntityInWorldCoords(PlayerPedId(),0,0.55,0)
			SetCamCoord(cam,coords["x"],coords["y"],coords["z"] + 0.3)
	PointCamAtCoord(cam,pos["x"],pos["y"],pos["z"] + 0.15)
	else
			SetCamCoord(cam,camPos["x"],camPos["y"],camPos["z"] + 0.75)
	PointCamAtCoord(cam,pos["x"],pos["y"],pos["z"] + 0.15)
	end
end)

RegisterNUICallback("setViewCam",function(data)
	local value = data["value"]

	if value == 1 then
		local coords = GetOffsetFromEntityInWorldCoords(PlayerPedId(),0,0.35,-0.10)
		SetCamCoord(cam,coords["x"],coords["y"] ,coords["z"] + 0.8)
		PointCamAtCoord(cam,pos["x"],pos["y"],pos["z"] + 0.65)
	elseif value == 2 then
		local coords = GetOffsetFromEntityInWorldCoords(PlayerPedId(),0,0.55,0)
		SetCamCoord(cam,coords["x"],coords["y"],coords["z"] + 0.3)
		PointCamAtCoord(cam,pos["x"],pos["y"],pos["z"] + 0.15)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UPDATESKIN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("updateSkin",function(data, cb)
	if data then 
		custom.lipstickModel = tonumber(data.lipstickModel)
		custom.lipstickColor = tonumber(data.lipstickColor)
		custom.hairModel = tonumber(data.hairModel)
		custom.firstHairColor = tonumber(data.firstHairColor)
		custom.secondHairColor = tonumber(data.secondHairColor)
		custom.blushModel = tonumber(data.blushModel)
		custom.blushColor = tonumber(data.blushColor)
		custom.makeupModel = tonumber(data.makeupModel)
		custom.makeupcolor = tonumber(data.makeupcolor)
		custom.eyebrowsModel = tonumber(data.eyebrowsModel)
		custom.eyebrowsColor = tonumber(data.eyebrowsColor)
		custom.beardModel = tonumber(data.beardModel)
		custom.beardColor = tonumber(data.beardColor)
		custom.chestModel = tonumber(data.chestModel)
		custom.eyesColor = tonumber(data.eyesColor)

		if data.close then
			SetNuiFocus(false)
			displayBarbershop(false)
			TriggerEvent('chat:close', false)
			vSERVER.updateSkin(custom)
			TriggerEvent("Character:UpdateClothes",old_custom)
			SendNUIMessage({ openBarbershop = false })
		end
		
		setBarbershop(PlayerPedId(), custom)
	end
	cb(true)

end)

RegisterNuiCallback('cancel', function(data, cb)
	SetNuiFocus(false)
	displayBarbershop(false)
	--vSERVER.setInstance(false)
	TriggerEvent('chat:close', false)
	-- SendNUIMessage({ openBarbershop = false })
	custom = currentMode
	setBarbershop(PlayerPedId(),currentMode)
	TriggerEvent("Character:UpdateClothes",old_custom)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ROTATE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("rotateRight",function()
	local ped = PlayerPedId()
	local heading = GetEntityHeading(ped)
	SetEntityHeading(ped,heading + 30)
end)
RegisterNUICallback("rotateLeft",function()
	local ped = PlayerPedId()
	local heading = GetEntityHeading(ped)
	SetEntityHeading(ped,heading - 30)
end)
RegisterNUICallback('rotate', function(data, cb)
	SetEntityHeading(PlayerPedId(), tonumber(data.heading) + 0.0)
	cb(true)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DISPLAYBARBERSHOP
-----------------------------------------------------------------------------------------------------------------------------------------
function displayBarbershop(enable)
	local ped = PlayerPedId()
	if enable then
		currentMode = json.encode(custom)
		currentMode = json.decode(currentMode)
		TriggerEvent('chat:close', true)
		TriggerEvent('flaviin:toggleHud', false)
		SetNuiFocus(true,true)
		SendNUIMessage({ openBarbershop = true, maxHairModel = GetNumberOfPedDrawableVariations(PlayerPedId(), 2), hairModel = tonumber(custom.hairModel), firstHairColor =  tonumber(custom.firstHairColor), secondHairColor =  tonumber(custom.secondHairColor), makeupModel =  tonumber(custom.makeupModel), makeupintensity = 10, makeupcolor = tonumber(custom.makeupcolor), lipstickModel =  tonumber(custom.lipstickModel), lipstickintensity = 10, lipstickColor =  tonumber(custom.lipstickColor), eyebrowsModel =  tonumber(custom.eyebrowsModel), eyebrowintensity = 10, eyebrowsColor =  tonumber(custom.eyebrowsColor), beardModel =  tonumber(custom.beardModel), beardintentisy = 10, beardColor =  tonumber(custom.beardColor), chestModel =  tonumber(custom.chestModel), blushModel =  tonumber(custom.blushModel), blushintentisy = 10, blushColor = tonumber(custom.blushColor), eyesColor = tonumber(custom.eyesColor)})
		FreezeEntityPosition(ped,true)
		SetPlayerInvincible(ped,false) -- mqcu
		if not DoesCamExist(cam) then
			cam = CreateCam("DEFAULT_SCRIPTED_CAMERA",true)
			SetCamCoord(cam,GetEntityCoords(ped))
			SetCamRot(cam,0.0,0.0,0.0)
			SetCamActive(cam,true)
			RenderScriptCams(true,false,0,true,true)
			SetCamCoord(cam,GetEntityCoords(ped))
		end
		local x,y,z = table.unpack(GetEntityCoords(ped))
		SetCamCoord(cam,x+0.5,y+0.5,z+0.7)
		SetCamRot(cam,0.0,0.0,150.0)

		ClearAllPedProps(ped)
		if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then	
			SetPedComponentVariation(ped,1,-1,0,2)
			SetPedComponentVariation(ped,3,15,0,2)
			SetPedComponentVariation(ped,4,14,1,2)
			SetPedComponentVariation(ped,5,-1,0,2)
			SetPedComponentVariation(ped,6,5,0,2)
			SetPedComponentVariation(ped,7,-1,0,2)
			SetPedComponentVariation(ped,8,15,0,2)
			SetPedComponentVariation(ped,9,-1,0,2)
			SetPedComponentVariation(ped,10,-1,0,2)
			SetPedComponentVariation(ped,11,15,0,2)
		elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
	
			SetPedComponentVariation(ped,1,-1,0,2)
			SetPedComponentVariation(ped,3,15,0,2)
			SetPedComponentVariation(ped,4,14,0,2)
			SetPedComponentVariation(ped,5,-1,0,2)
			SetPedComponentVariation(ped,6,5,0,2)
			SetPedComponentVariation(ped,7,44,0,2)
			SetPedComponentVariation(ped,8,15,0,2)
			SetPedComponentVariation(ped,9,-1,0,2)
			SetPedComponentVariation(ped,10,-1,0,2)
			SetPedComponentVariation(ped,11,15,0,2)
		end
	
	else
		FreezeEntityPosition(ped,false)
		SetPlayerInvincible(ped,false)
		RenderScriptCams(false,false,0,1,0)
		DestroyCam(cam,false)
		TriggerEvent('flaviin:toggleHud', true)
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLOSENUI
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("closeNui",function(data)
	setBarbershop(PlayerPedId(),currentMode)
	SetNuiFocus(false)
	displayBarbershop(false)
	--vSERVER.setInstance(false)
	TriggerEvent('chat:close', false)
	-- SendNUIMessage({ openBarbershop = false })
	-- custom = currentMode
	TriggerEvent("Character:UpdateClothes",old_custom)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- LOCATIONS
-----------------------------------------------------------------------------------------------------------------------------------------
local locations = {
	{138.12,-1706.45,29.28,true,true },
	{-815.1,-184.02,37.56,true,true },
	{-33.45,-154.14,57.07,true,true },
	{-1281.5,-1117.23,6.99,true,true },
	{1213.96,-473.05,66.2,true,true },
	{-276.79,6226.96,31.69,true,true },
	{1930.75,3731.62,32.84,true,true },

	{1222.32,-210.63,77.37,false,true },
	{-577.84,-2337.7,13.85,false,true },
    {-575.15,-2334.5,13.85,false,true },
    {-569.44,-2342.26,13.85,false,true },
    {885.93,334.82,109.1,false,true },
    {-952.02,-760.9,15.06,false,true },
    {222.73,-916.1,29.69,false,true },
    {226.69,-917.26,29.69,false,true },
    {223.93,-924.75,29.69,false,true },
    {220.2,-923.57,29.69,false,true },
    {-870.59,-1839.77,26.79,false,true },
    {-1629.57,-204.48,55.1,false,true },
    {1237.02,-1490.79,34.69,false,true },
    {-2050.58,-469.92,12.27,false,true },
    {2633.94,5296.53,47.52,false,true },
    {-2107.33,3138.26,32.81,false,true },
    {765.45,-297.91,61.32,false,true },
    {-780.13,-1211.16,10.38,false,true },
	{-444.76,1102.53,327.68,false,true }, -- CIVIL
	{1349.4,-769.59,67.18,false,true }, -- CV
	--{-3024.35,63.26,11.95,false,true }, -- Magnatas
	{-851.65,-2174.65,8.95, false,true },
	{-1265.72,341.77,69.69, false,true },
	{3441.39,4942.73,36.02, false, true},
	{1252.21,-875.2,75.12, false, true},
	{-1681.52,-227.97,57.41, false, true},
	-- {600.11,890.26,233.82, false, true}, -- Croacia
	{976.25,-98.38,78.08, false, true},
	{-349.68,-1330.25,36.29, false, true},
	{-1718.94,-134.67,85.7, false, true},
	{76.13,-377.92,41.62, false, true},

}
-----------------------------------------------------------------------------------------------------------------------------------------
-- BARBEARIA
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	local innerTable = {}
	for k,v in pairs(locations) do
		table.insert(innerTable,{ v[1],v[2],v[3],2,"E","Barbearia","Pressione para abrir" })
	end

	TriggerEvent("hoverfy:insertTable",innerTable)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADOPEN
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	SetNuiFocus(false,false)
	criarBlip()
	while true do
		local timeDistance = 500
		local ped = PlayerPedId()
		if not IsPedInAnyVehicle(ped) then
			local coords = GetEntityCoords(ped)
			for k,v in pairs(locations) do
				local distance = #(coords - vector3(v[1],v[2],v[3]))
				if distance <= 7 then
					timeDistance = 0
					if v[5] then
						DrawText3D(v[1],v[2],v[3]-0.1, "~r~E~w~ - ABRIR")
						DrawMarker(1, v[1], v[2], v[3] - 0.95, 0, 0, 0, 0, 0, 0, 2.0, 2.0, 0.5, 0, 0, 0, 105, 0, 0, 0, 1)
					else
						DrawText3D(v[1],v[2],v[3]-0.1, "~r~E~w~ - ABRIR")
						DrawMarker(1, v[1], v[2], v[3] - 0.95, 0, 0, 0, 0, 0, 0, 2.0, 2.0, 0.5, 0, 0, 0, 105, 0, 0, 0, 1)
					end
					if distance <= 2.5 then
						if IsControlJustPressed(1,38)  then
							old_custom = vRP.getCustom()
							displayBarbershop(true)
							SetEntityHeading(ped,332.21)
						end
					end
				end
			end
		end
		Citizen.Wait(timeDistance)
	end
end)


RegisterCommand("barbershop", function()
	if GetEntityHealth(PlayerPedId()) <= 105 then return end
	  if vSERVER.checkPermission() then
		old_custom = vRP.getCustom()
		displayBarbershop(true)
		SetEntityHeading(PlayerPedId(),332.21)
	  end
  end)

function criarBlip()
    for _, item in pairs(locations) do
		if item[4] then
			item.blip = AddBlipForCoord(item[1], item[2], item[3])
			SetBlipSprite(item.blip, 71)
			SetBlipColour(item.blip, 0)
			SetBlipScale(item.blip, 0.5)
			SetBlipAsShortRange(item.blip, true)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString("Barbearia")
			EndTextCommandSetBlipName(item.blip)

			Wait(150)
		end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- DRAWTEXT3D
-----------------------------------------------------------------------------------------------------------------------------------------
function DrawText3D(x,y,z,text)
	local onScreen,_x,_y = World3dToScreen2d(x,y,z)
	SetTextFont(4)
	SetTextScale(0.35,0.35)
	SetTextColour(255,255,255,100)
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(_x,_y)
	local factor = (string.len(text)) / 400
	DrawRect(_x,_y+0.0125,0.01+factor,0.03,0,0,0,100)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- SYNC BODY
-----------------------------------------------------------------------------------------------------------------------------------------
function setBarbershop(ped,data)
	if not data then
		return
	end

	SetPedHeadBlendData(ped,data.fathersID,data.mothersID,0,data.skinColor,0,0,f(data.shapeMix),0,0,false)
	-- Olhos
	SetPedEyeColor(ped,data.eyesColor)
	-- Sobrancelha
	SetPedFaceFeature(ped,6,data.eyebrowsHeight)
	SetPedFaceFeature(ped,7,data.eyebrowsWidth)
	-- Nariz
	SetPedFaceFeature(ped,0,data.noseWidth)
	SetPedFaceFeature(ped,1,data.noseHeight)
	SetPedFaceFeature(ped,2,data.noseLength)
	SetPedFaceFeature(ped,3,data.noseBridge)
	SetPedFaceFeature(ped,4,data.noseTip)
	SetPedFaceFeature(ped,5,data.noseShift)
	-- Bochechas
	SetPedFaceFeature(ped,8,data.cheekboneHeight)
	SetPedFaceFeature(ped,9,data.cheekboneWidth)
	SetPedFaceFeature(ped,10,data.cheeksWidth)
	-- Boca/Mandibula
	SetPedFaceFeature(ped,12,data.lips)
	SetPedFaceFeature(ped,13,data.jawWidth)
	SetPedFaceFeature(ped,14,data.jawHeight)
	-- Queixo
	SetPedFaceFeature(ped,15,data.chinLength)
	SetPedFaceFeature(ped,16,data.chinPosition)
	SetPedFaceFeature(ped,17,data.chinWidth)
	SetPedFaceFeature(ped,18,data.chinShape)
	-- Pescoço
	SetPedFaceFeature(ped,19,data.neckWidth)

	-- Cabelo
	SetPedComponentVariation(ped,2,data.hairModel,0,0)
	SetPedHairColor(ped,data.firstHairColor,data.secondHairColor)
	-- Sobracelha
	SetPedHeadOverlay(ped,2,data.eyebrowsModel,0.99)
	SetPedHeadOverlayColor(ped,2,1,data.eyebrowsColor,data.eyebrowsColor)
	-- Barba
	SetPedHeadOverlay(ped,1,data.beardModel,0.99)
	SetPedHeadOverlayColor(ped,1,1,data.beardColor,data.beardColor)
	-- Pelo Corporal
	SetPedHeadOverlay(ped,10,data.chestModel,0.99)
	SetPedHeadOverlayColor(ped,10,1,data.chestColor,data.chestColor)
	-- Blush
	SetPedHeadOverlay(ped,5,data.blushModel,0.99)
	SetPedHeadOverlayColor(ped,5,2,data.blushColor,data.blushColor)
	-- Battom
	SetPedHeadOverlay(ped,8,data.lipstickModel,0.99)
	SetPedHeadOverlayColor(ped,8,2,data.lipstickColor,data.lipstickColor)
	-- Manchas
	SetPedHeadOverlay(ped,0,data.blemishesModel,0.99)
	SetPedHeadOverlayColor(ped,0,0,0,0)
	-- Envelhecimento
	SetPedHeadOverlay(ped,3,data.ageingModel,0.99)
	SetPedHeadOverlayColor(ped,3,0,0,0)
	-- Aspecto
	SetPedHeadOverlay(ped,6,data.complexionModel,0.99)
	SetPedHeadOverlayColor(ped,6,0,0,0)
	-- Pele
	SetPedHeadOverlay(ped,7,data.sundamageModel,0.99)
	SetPedHeadOverlayColor(ped,7,0,0,0)
	-- Sardas
	SetPedHeadOverlay(ped,9,data.frecklesModel,0.99)
	SetPedHeadOverlayColor(ped,9,0,0,0)
	-- Maquiagem
	SetPedHeadOverlay(ped,4,data.makeupModel,0.99)
	SetPedHeadOverlayColor(ped,4,0,0,0)
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- THREAD SYNC PED
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		
		if canStartThread then
			while not IsPedModel(PlayerPedId(),"mp_m_freemode_01") and not IsPedModel(PlayerPedId(),"mp_f_freemode_01") do
				Citizen.Wait(10)
			end

			if custom then
				setBarbershop(PlayerPedId(), custom)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- OTHERS
-----------------------------------------------------------------------------------------------------------------------------------------
function DrawText3D(x,y,z, text)
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