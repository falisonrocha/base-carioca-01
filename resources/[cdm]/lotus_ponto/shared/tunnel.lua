local Tunnel = module("vrp","lib/Tunnel")
local Proxy  = module("vrp","lib/Proxy")
local Tools  = module("vrp","lib/Tools")
local uiOpen       = false
local lastCloseTs  = 0
local openCooldown = 800  -- ms de “respiro” após fechar

local RESOURCE_NAME = GetCurrentResourceName()

vRP  = Proxy.getInterface("vRP")
vRPC = Tunnel.getInterface("vRP")

-- =========================
-- SERVER SIDE
-- =========================
if IsDuplicityVersion() then
  local API = {}
  Tunnel.bindInterface(RESOURCE_NAME, API) -- mesma interface do client

  -- Retorna: success, groupName, startTime, userInfo
  function API.checkOrgData(org)
    local src     = source
    local user_id = vRP.getUserId(src)
    if not user_id then return false end

    local cfg  = (Config.Orgs and Config.Orgs[org]) or {}
    local perm = cfg.permission
    local ok   = false

    -- 1) Perm exata do config (se existir)
    if perm and vRP.hasPermission(user_id, perm) then
      ok = true
    end

    -- 2) Fallback: qualquer grupo contendo "choque"
    if not ok then
      local data   = vRP.getUserDataTable(user_id) or {}
      local groups = data.groups or {}
      for g,_ in pairs(groups) do
        if string.find(string.lower(g), "choque") then
          ok = true
          break
        end
      end
    end

    print(("[ponto] checkOrgData uid=%s org=%s perm=%s has=%s")
      :format(tostring(user_id), tostring(org), tostring(perm), tostring(ok)))

    if not ok then return false end

    local groupName = (cfg.orgName or org or "Choque")
    local userInfo  = { status = false, uniform = { male = {}, female = {} } }
    return true, groupName, os.time(), userInfo
  end
else
-- =========================
-- CLIENT SIDE: pega a interface deste recurso
-- =========================
  Remote = Tunnel.getInterface(RESOURCE_NAME)
end
