local Tunnel = module("vrp","lib/Tunnel")
local Proxy  = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

-- ========================
-- CONTROLES DE UI / ESTADO
-- ========================
local uiOpen       = false
local lastCloseTs  = 0
local openCooldown = 800 -- ms de respiro depois de fechar

local nearestOrg = nil
local userGroup  = nil
local userData   = {}

-- Fallback de DrawText3D (se já existir no seu pack, pode remover esta função)
if not DrawText3D then
  function DrawText3D(coords, text)
    local onScreen,_x,_y = World3dToScreen2d(coords.x, coords.y, coords.z)
    local px,py,pz       = table.unpack(GetGameplayCamCoords())
    local dist           = Vdist(px,py,pz, coords.x, coords.y, coords.z)
    local scale          = (1/dist)*2; if scale < 0.35 then scale = 0.35 end
    if onScreen then
      SetTextScale(0.30, 0.30)
      SetTextFont(4)
      SetTextProportional(1)
      SetTextColour(255,255,255,215)
      SetTextCentre(1)
      SetTextEntry("STRING")
      AddTextComponentString(text)
      DrawText(_x,_y)
    end
  end
end

-- ========================
-- UTIL: org mais próxima
-- ========================
local function findNearestOrg(coords)
  local distance, org, resultCoords = 10000, nil, nil
  for k,v in pairs(Config.Orgs) do
    for i = 1, #v.coords do
      local dist = #(coords - v.coords[i])
      if dist < distance then
        distance    = dist
        org         = k
        resultCoords = v.coords[i]
      end
    end
  end
  return org, distance, resultCoords
end

-- ========================
-- LOOP PRINCIPAL
-- ========================
CreateThread(function()
  while true do
    local sleep  = 3000
    local ped    = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local org, distance, resultCoords = findNearestOrg(coords)

    if org and distance < 5.0 then
      sleep = 3
      DrawText3D(resultCoords, "~g~[E]~w~ Ponto - "..org)
      DrawMarker(1, resultCoords.x, resultCoords.y, resultCoords.z - 0.95,
        0,0,0, 0,0,0, 2.0,2.0,0.5, 255,255,255,105, 0,0,0, 1)

      local now = GetGameTimer()
      if IsControlJustPressed(0, 38) and not uiOpen and (now - lastCloseTs) > openCooldown then
        uiOpen = true

        local success, group, startTime, userInfo = Remote.checkOrgData(org)

        userData = type(userInfo) == "table" and userInfo or {}
        userData.status  = userData.status ~= nil and userData.status or false
        userData.uniform = userData.uniform or { male = {}, female = {} }

        if success then
          nearestOrg = org
          userGroup  = (type(group) == "string" and group or "")

          -- Normaliza grupo (evita undefined na NUI)
          if userGroup:lower():find("choque") then
            userGroup = "Choque"
          end
          print("DEBUG >> Grupo recebido:", userGroup)

          SendNUIMessage({ action = 'open', data = { point = startTime }})
          SetNuiFocus(true, true)
        else
          uiOpen = false
          lastCloseTs = GetGameTimer()
          TriggerEvent("Notify","negado","Você não faz parte da organização "..tostring(org))
        end
      end
    end

    Wait(sleep)
  end
end)

-- ========================
-- NUI CALLBACKS
-- ========================
RegisterNUICallback('getUser', function(_, cb)
  cb(userData)
end)

RegisterNUICallback('hideFrame', function(_, cb)
  -- fecha SOMENTE quando a NUI mandar
  SetNuiFocus(false, false)
  uiOpen = false
  lastCloseTs = GetGameTimer()
  cb(true)
end)

RegisterNUICallback('point', function(data, cb)
  if data.status then
    Remote._startService(nearestOrg)
  else
    Remote.stopService(nearestOrg)
  end
  cb(true)
end)

RegisterNUICallback('equip', function(_, cb)
  local response = Remote.equip(nearestOrg)
  if response then
    local orgCfg = (Config.Orgs[nearestOrg] or {})
    local newChannel = orgCfg.radioChannel
    if newChannel then
      TriggerEvent("InteractSound_CL:PlayOnOne","radioclick",0.6)
      TriggerEvent("lotus-hud:setRadioFrequency", parseInt(newChannel))
      exports["pma-voice"]:setRadioChannel(parseInt(newChannel))
      exports["pma-voice"]:setVoiceProperty('radioEnabled', true)
    end
  end
  cb(true)
end)

-- NIL-safe: não quebra se groups[userGroup] não existir
RegisterNUICallback('getEquipments', function(_, cb)
  local payload   = {}
  local orgCfg    = (nearestOrg and Config.Orgs[nearestOrg]) or {}
  local orgGroups = orgCfg.groups or {}

  local ug = tostring(userGroup or "")

  -- tenta bater a chave exata; senão, usa "Choque"; senão, primeira chave
  local groupCfg = orgGroups[ug]
  if not groupCfg and ug:lower():find("choque") then groupCfg = orgGroups["Choque"] end
  if not groupCfg then for _, cfg in pairs(orgGroups) do groupCfg = cfg; break end end

  if not groupCfg or not groupCfg.WeaponsKit then
    print("[lotus_ponto] WARN getEquipments: grupo não encontrado para", ug, "em", tostring(nearestOrg))
    cb({})
    return
  end

  for _, kitName in pairs(groupCfg.WeaponsKit) do
    local kit = Config.WeaponsKit[kitName]
    if kit then
      payload[#payload+1] = {
        image = "nui://lotus_hud/web-side/assets/weapons/"..GetHashKey(kit.name)..".png",
        name  = kitName
      }
    end
  end

  cb(payload)
end)

RegisterNUICallback('getUniforms', function(_, cb)
  cb(Remote.getClothes(nearestOrg))
end)

RegisterNUICallback('getRanking', function(_, cb)
  cb(Remote.getRanking(nearestOrg))
end)

RegisterNUICallback('editUniform', function(data, cb)
  local ok = Remote.updateUniform(nearestOrg, data.uniform.group, json.decode(data.text))
  if ok then cb(true) else TriggerEvent("Notify","negado","Uniforme inválido!"); cb(false) end
end)
