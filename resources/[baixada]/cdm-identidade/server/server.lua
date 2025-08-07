local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

src = {}
Tunnel.bindInterface("cdm-identidade",src)
Proxy.addInterface("cdm-identidade",src)

vCLIENT = Tunnel.getInterface("cdm-identidade")

-----------------------------------------------------------------------------------------------------------------------------------------
-- IDENTIDADE
-----------------------------------------------------------------------------------------------------------------------------------------
function src.getInfos()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		local cash = vRP.getMoney(user_id)
		local banco = vRP.getBankMoney(user_id)
		local identity = vRP.getUserIdentity(user_id)

		planos = {
			["vip"] = {
				[1] = {['Vip'] = 'Inicial'},
				[2] = {['Vip'] = 'Bronze'},
				[3] = {['Vip'] = 'Prata'},
				[4] = {['Vip'] = 'Ouro'},
				[5] = {['Vip'] = 'Platina'},
				[6] = {['Vip'] = 'Diamante'},
				[7] = {['Vip'] = 'Esmeralda'},
				[8] = {['Vip'] = 'Safira'},
				[9] = {['Vip'] = 'Rubi'},
				[10] = {['Vip'] = 'RubiPlus'},
				[11] = {['Vip'] = 'VipBombeiros'},
				[12] = {['Vip'] = 'VipHospital'},
				[13] = {['Vip'] = 'VipPolicia'},
				[14] = {['Vip'] = 'VipMecanico'},
			}
		}

		local vips = {}
        for k,v in pairs(planos['vip']) do
		    if vRP.hasGroup(user_id, v.Vip) then table.insert(vips, {v.Vip}) end
        end
		
		if #vips <= 0 then table.insert(vips, {'Nenhum'}) end

		local org = vRP.getUserGroupByType(user_id,"org")
		if org == "" then org = "Nenhum(a)" end

		local parmas = "Não Possui"
		if vRP.hasGroup(user_id, "Porte de Armas") then
			parmas = "Sim Possui"
		end

		local staff = vRP.getUserGroupByType(user_id,"staff")
		if staff == "" then staff = "Nenhum" end

		if identity then 
			return { action = "open",id = user_id, name = identity.nome .. " " .. identity.sobrenome,birth = identity.age, org = org, civilStatus = json.decode(identity.relacionamento), spouse = json.decode(identity.relacionamento), telephone = identity.telefone, wallet = vRP.format(parseInt(cash)), bank = vRP.format(parseInt(banco)), carry = parmas, staff = staff, vips = vips }
		end
	end
end