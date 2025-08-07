config = {}

config.prices = {
	["extras"] = { -- extras
		startprice = 500,
		increaseby = 100,
		item = 'extra', 
		amount = 30
	},	

	["sticker"] = { -- adesivo
		startprice = 500,
		increaseby = 100,
		item = 'tinta', 
		amount = 30
	},	
---------tipos de cor-----------

	["colortypes"] = {
		["cromado"] = 700,  -- + o preco da cor normal
		["metálico"] = 100,
		["fosco"] = 100,
		["metal"] = 300 
	},

----------cor secundária custom--------
	["cor-secundaria"] = {
		startprice = 500,
		item = 'tinta', 
		amount = 30
	},	
----------cor primaria custom--------
	["cor-primaria"] = {
		startprice = 500,
		item = 'tinta', 
		amount = 30
	},
----------cor secundária--------
	["secundaria"] = {
		startprice = 300,
		item = 'tinta', 
		amount = 30
	},	
----------cor primaria--------
	["primaria"] = {
		startprice = 300,
		item = 'tinta', 
		amount = 30
	},
----------Perolado--------
	["perolado"] = {
		startprice = 300,
		item = 'tinta', 
		amount = 30
	},
----------Cor da roda--------
	["wheelcolor"] = {
		startprice = 300,
		item = 'tinta', 
		amount = 30
	},
----------Neon--------
	["neon"] = {
		startprice = 3000,
		item = 'neon', 
		amount = 30
	},
----------Pneu custom--------
	["custom"] = {
		startprice = 1000,
		item = 'pneu', 
		amount = 30
	},
----------Pneu a prova de balas--------
	["bulletproof"] = {
		startprice = 5000,
		item = 'pneu', 
		amount = 30
	},
----------Pneu para drift--------
	["drift"] = {
		startprice = 5000,
		item = 'pneu', 
		amount = 30
	},
----------cor da fumaça--------
	["smoke"] = {
		startprice = 150,
		item = 'tinta', 
		amount = 30
	},
----------Placa--------
	["placa"] = {
		startprice = 150,
		increaseby = 150,
		item = 'placa', 
		amount = 30
	},
----------Vidro--------
	["vidro"] = {
		startprice = 1000,
		increaseby = 250,
		item = 'vidro', 
		amount = 30
	},
	----------barra de luz--------
	[49] = {
		startprice = 5000,
		increaseby = 800,
		item = 'lightbar', 
		amount = 30
	},
----------Liveries--------
	[48] = {
		startprice = 5000,
		increaseby = 800,
		item = 'decal', 
		amount = 30
	},
	
----------Windows--------
	[46] = {
		startprice = 5000,
		increaseby = 1250,
		item = 'janela', 
		amount = 30
	},
	
----------Tank--------
	[45] = {
		startprice = 5000,
		increaseby = 1250,
		item = 'tanque', 
		amount = 30
	},
	
----------Trim--------
	[44] = {
		startprice = 5000,
		increaseby = 1250,
		item = 'trim', 
		amount = 30
	},
	
----------Aerials--------
	[43] = {
		startprice = 5000,
		increaseby = 1250,
		item = 'antena', 
		amount = 30
	},

----------Arch cover--------
	[42] = {
		startprice = 5000,
		increaseby = 1250,
		item = 'capa', 
		amount = 30
	},

----------Struts--------
	[41] = {
		startprice = 5000,
		increaseby = 1250,
		item = 'suporte', 
		amount = 30
	},
	
----------Air filter--------
	[40] = {
		startprice = 5000,
		increaseby = 1250,
		item = 'filtrodear', 
		amount = 30
	},
	
----------Engine block--------
	[39] = {
		startprice = 5000,
		increaseby = 1250,
		item = 'motor', 
		amount = 30
	},

----------Hydraulics--------
	[38] = {
		startprice = 15000,
		increaseby = 2500,
		item = 'hidraulica', 
		amount = 30
	},
	
----------Trunk--------
	[37] = {
		startprice = 5000,
		increaseby = 1250,
		item = 'porta-malas', 
		amount = 30
	},

----------Speakers--------
	[36] = {
		startprice = 5000,
		increaseby = 1250,
		item = 'som', 
		amount = 30
	},

----------Plaques--------
	[35] = {
		startprice = 5000,
		increaseby = 1250,
		item = 'placa', 
		amount = 30
	},
	
----------Shift leavers--------
	[34] = {
		startprice = 5000,
		increaseby = 1250,
		item = 'cambio', 
		amount = 30
	},
	
----------Steeringwheel--------
	[33] = {
		startprice = 5000,
		increaseby = 1250,
		item = 'volante', 
		amount = 30
	},
	
----------Seats--------
	[32] = {
		startprice = 5000,
		increaseby = 1250,
		item = 'banco', 
		amount = 30
	},
	
----------Door speaker--------
	[31] = {
		startprice = 5000,
		increaseby = 1250,
		item = 'porta', 
		amount = 30
	},

----------Dial--------
	[30] = {
		startprice = 5000,
		increaseby = 1250,
		item = 'ponteiro', 
		amount = 30
	},
----------Dashboard--------
	[29] = {
		startprice = 5000,
		increaseby = 1250,
		item = 'painel', 
		amount = 30
	},
	
----------Ornaments--------
	[28] = {
		startprice = 5000,
		increaseby = 1250,
		item = 'enfeite', 
		amount = 30
	},
	
----------Trim--------
	[27] = {
		startprice = 5000,
		increaseby = 1250,
		item = 'trim', 
		amount = 30
	},
	
----------Vanity plates--------
	[26] = {
		startprice = 5000,
		increaseby = 1250,
		item = 'placa', 
		amount = 30
	},
	
----------Plate holder--------
	[25] = {
		startprice = 5000,
		increaseby = 1250,
		item = 'porta-placa', 
		amount = 30
	},
---------Back Wheels---------
	[24] = {
		startprice = 300,
		increaseby = 75,
		item = 'roda', 
		amount = 30
	},
---------Front Wheels---------
	[23] = {
		startprice = 300,
		increaseby = 75,
		item = 'roda', 
		amount = 30
	},
---------Headlights---------
	[22] = {
		startprice = 20000,
		item = 'xenon', 
		amount = 30
	},
	
----------Turbo---------
	[18] = {
		startprice = 15000,
		item = 'turbo', 
		amount = 30
	},
	
-----------Armor-------------
	[16] = {
		startprice = 2500,
		increaseby = 2500,
		item = 'blindagem', 
		amount = 30
	},

---------Suspension-----------
	[15] = {
		startprice = 1000,
		increaseby = 1000,
		item = 'suspensão', 
		amount = 30
	},
-----------Horn----------
    [14] = {
        startprice = 500,
		increaseby = 0,
		item = 'buzina', 
		amount = 30
    },
-----------Transmission-------------
    [13] = {
        startprice = 10000,
		increaseby = 2500,
		item = 'transmissão', 
		amount = 30
	},
	
-----------Brakes-------------
	[12] = {
        startprice = 6500,
		increaseby = 2275,
		item = 'freios', 
		amount = 30
	},
	
------------Engine----------
	[11] = {
        startprice = 4500,
		increaseby = 3500,
		item = 'motor', 
		amount = 30
	},
    ---------Roof----------
	[10] = {
		startprice = 1250,
		increaseby = 400,
		item = 'teto', 
		amount = 30
	},

	------------Right Fender---------
	[9] = {
		startprice = 1500,
		increaseby = 400,
		item = 'paralama', 
		amount = 30
	},
	
------------Fenders---------
	[8] = {
		startprice = 1500,
		increaseby = 400,
		item = 'paralama', 
		amount = 30
	},
	
------------Hood----------
	[7] = {
		startprice = 1500,
		increaseby = 400,
		item = 'capô', 
		amount = 30
	},
	
----------Grille----------
	[6] = {
		startprice = 1250,
		increaseby = 400,
		item = 'grelha', 
		amount = 30
	},
	
----------Roll cage----------
	[5] = {
		startprice = 1250,
		increaseby = 400,
		item = 'gaiola', 
		amount = 30
	},
	
----------Exhaust----------
	[4] = {
		startprice = 1000,
		increaseby = 400,
		item = 'escapamento', 
		amount = 30
	},
	
----------Skirts----------
	[3] = {
		startprice = 1250,
		increaseby = 400,
		item = 'saias', 
		amount = 30
	},
	
-----------Rear bumpers----------
	[2] = {
		startprice = 2500,
		increaseby = 500,
		item = 'parachoque', 
		amount = 30
	},
	
----------Front bumpers----------
	[1] = {
		startprice = 2500,
		increaseby = 500,
		item = 'parachoque', 
		amount = 30
	},
	
----------Spoiler----------
	[0] = {
		startprice = 2500,
		increaseby = 400,
		item = 'aerofolio', 
		amount = 30
	},
}



config.locais = {
	-- { vec3(-222.13,-1330.18,30.89), perm = {"Mechanic", "mecanico.permissao"},
	-- 	opcoes = {
	-- 		{ nome = 'aerofólio' },
	-- 		{ nome = 'parachoque dianteiro' },
	-- 		{ nome = 'parachoque traseiro' },
	-- 		{ nome = 'saias' },
	-- 		{ nome = 'escapamento' },
	-- 		{ nome = 'chassi' },
	-- 		{ nome = 'grelha' },
	-- 		{ nome = 'capô' },
	-- 		{ nome = 'para-lama' },
	-- 		{ nome = 'para-lama traseiro' },
	-- 		{ nome = 'teto' },
	-- 		{ nome = 'motor' },
	-- 		{ nome = 'freios' },
	-- 		{ nome = 'transmissão' },
	-- 		{ nome = 'buzina' },
	-- 		{ nome = 'suspensão' },
	-- 		{ nome = 'blindagem' },
	-- 		{ nome = 'turbo' },
	-- 		{ nome = 'interior' },
	-- 		{ nome = 'farol' },
	-- 		{ nome = 'decal' },
	-- 		{ nome = 'rodas' },
	-- 		{ nome = 'porta-placa' },
	-- 		{ nome = 'placa custom' },
	-- 		{ nome = 'placa' },
	-- 		{ nome = 'neon' },
	-- 		{ nome = 'pintura' },
	-- 		{ nome = 'vidro' },
	-- 		{ nome = "hidráulica" },
	-- 		{ nome = "bloco do motor" },
	-- 		{ nome = "filtro de ar" },
	-- 		{ nome = "suporte" },
	-- 		{ nome = "antena" },
	-- 		{ nome = "design" },
	-- 		{ nome = "tanque" },
	-- 		{ nome = "adesivo" },
	-- 		{ nome = "extras" },
	-- 		{ nome = "lightbar" },
	-- 	},
	-- 	pneus = {
	-- 		"fabrica", "custom", "bulletproof", "drift", "smoke"
	-- 	},
	-- 	logo = "https://vignette.wikia.nocookie.net/gtawiki/images/b/be/BennysOriginalMotorWorks-GTAO-Logo.png/revision/latest?cb=20160623123158"
	-- },
	-- { vec3(-214.45,-1319.79,30.89), perm = {"Mechanic", "perm.oficinamycroft"},
	-- 	opcoes = {
	-- 		{ nome = 'farol' },
	-- 		{ nome = 'decal' },
	-- 		{ nome = 'rodas' },
	-- 		{ nome = 'placa custom' },
	-- 		{ nome = 'placa' },
	-- 		{ nome = 'neon' },
	-- 		{ nome = 'pintura' },
	-- 		{ nome = 'vidro' },
	-- 		{ nome = "design" },
	-- 	},
	-- 	pneus = {
	-- 		"fabrica", "custom", "smoke"
	-- 	}
	-- },
	-- { vec3(912.52,-2006.33,30.65), perm = {"Mechanic", "perm.oficinamycroft"} },
	-- { vec3(907.26,-2005.64,30.75), perm = {"Mechanic", "perm.oficinamycroft"} },
	-- { vec3(902.05,-2005.42,30.65), perm = {"Mechanic", "perm.oficinamycroft"} },
	-- { vec3(888.07,-2017.68,30.75), perm = {"Mechanic", "perm.oficinamycroft"} },
	-- { vec3(888.02,-2023.74,30.65), perm = {"Mechanic", "perm.oficinamycroft"} },
	-- { vec3(887.23,-2029.27,30.75), perm = {"Mechanic", "perm.oficinamycroft"} },
	-- { vec3(886.87,-2034.72,30.65), perm = {"Mechanic", "perm.oficinamycroft"} },
	{ vec3(68.89,-1759.05,29.66), perm = {"Mechanic", "perm.bennys"} },
	{ vec3(63.75,-1765.38,29.76), perm = {"Mechanic", "perm.bennys"} },
	{ vec3(58.49,-1771.6,29.64), perm = {"Mechanic", "perm.bennys"} },
	{ vec3(53.41,-1778.17,29.76), perm = {"Mechanic", "perm.bennys"} },
	{ vec3(47.82,-1784.37,29.66), perm = {"Mechanic", "perm.bennys"} },
	{ vec3(33.53,-1772.33,29.69), perm = {"Mechanic", "perm.bennys"} },
	{ vec3(38.91,-1766.09,29.71), perm = {"Mechanic", "perm.bennys"} },
	{ vec3(44.31,-1759.84,29.71), perm = {"Mechanic", "perm.bennys"} },
	{ vec3(49.81,-1753.59,29.71), perm = {"Mechanic", "perm.bennys"} },
	{ vec3(81.22,-1769.48,29.71), perm = {"Mechanic", "perm.bennys"} },
	{ vec3(76.12,-1775.77,29.71), perm = {"Mechanic", "perm.bennys"} },
	{ vec3(70.82,-1782.05,29.71), perm = {"Mechanic", "perm.bennys"} },
	{ vec3(83.36,-1792.52,29.71), perm = {"Mechanic", "perm.bennys"} },
	{ vec3(88.71,-1786.12,29.71), perm = {"Mechanic", "perm.bennys"} },
	{ vec3(83.46,-1774.73,37.1), perm = {"Mechanic", "perm.bennys"} },
	{ vec3(97.71,-1786.7,37.1), perm = {"Mechanic", "perm.bennys"} },

	{ vec3(941.21,-1015.18,40.84), perm = {"Mechanic", "perm.FoxTuning"} },
	{ vec3(941.71,-1022.4,40.84), perm = {"Mechanic", "perm.FoxTuning"} },
	{ vec3(941.93,-1029.53,40.84), perm = {"Mechanic", "perm.FoxTuning"} },
	{ vec3(950.99,-1025.72,55.55), perm = {"Mechanic", "perm.FoxTuning"} },

	{ vec3(1169.7,2639.87,37.66), perm = {"Mechanic", "perm.harmony"} },
	{ vec3(1175.98,2639.89,37.66), perm = {"Mechanic", "perm.harmony"} },
	{ vec3(1182.36,2640.37,37.66), perm = {"Mechanic", "perm.harmony"} },
	{ vec3(1166.93,2655.99,37.64), perm = {"Mechanic", "perm.harmony"} },
	{ vec3(1167.33,2663.56,37.64), perm = {"Mechanic", "perm.harmony"} },
	{ vec3(1176.53,2639.4,43.1), perm = {"Mechanic", "perm.harmony"} },

	{ vec3(-2794.69,1454.67,96.4), perm = {"Mechanic", "perm.mansaochucky"} },
}



-- config.repair_price = 0 -- preço para reparar veículo

config.permissao = 	{"Mechanic", "perm.bennys"}

config.logo = "https://vignette.wikia.nocookie.net/gtawiki/images/b/be/BennysOriginalMotorWorks-GTAO-Logo.png/revision/latest?cb=20160623123158" -- logo default

config.marker = function(x,y,z)
	DrawMarker(27, vec3(x,y,z) ,0,0,0,0,0,0,301,3.001,1.001,3,198,252,155,0,0,0,1)
	DrawMarker(36, vec3(x,y,z),0,0,0,0,0,0,1.001,3.001,1.001,3,198,252,155,0,0,0,1)
end



config.clientmsg = {
	"Modificações aplicadas com <b>sucesso</b>.",
	"Veículo reparado com <b>sucesso</b>.",
	"Você se afastou muito do veículo.",
	"PRESSIONE  ~r~E~w~  PARA ACESSAR A ~y~MECÂNICA",
	"aplicando modificações",
	"reparando",
}

config.servermsg = {
	"Você não tem permissão.",
	"Veículo já está sendo modificado por outro mecânico.",
	function(price) return "Você não possui <b>$"..price.."</b>." end
}



-- mudar preco da tunagem de acordo com o valor do veiculo

--[[ local Proxy = module("vrp","lib/Proxy")
nation = Proxy.getInterface("nation_garages")
config.getModPrice = function(modType, vehicle)
	local price = config.prices[modType]
	local hash = GetEntityModel(vehicle)
	local vehPrice = nation.getVehiclePrice(hash)
	if vehPrice and price.startprice then
		local startprice = price.startprice + vehPrice * 0.05 -- 5% do valor do veiculo
		local increaseby = (price.increaseby or 0) + vehPrice * 0.05
		price = { startprice = startprice, increaseby = increaseby }
	end
	return price
end
 ]]


-- tunar por itens

--[[ config.tryPayMods = function(source, user_id, cart)
	local itemList = {}
	local money = parseInt(vRP.getBankMoney(user_id) + vRP.getMoney(user_id))
	if money < (cart['total'] or 0) then return false end
	for k in pairs(cart) do
		local index = tonumber(k) or tostring(k)
		local v = config.prices[index]
		if v and v.item and v.amount then
			if not itemList[v.item] then
				itemList[v.item] = v.amount
			else
				itemList[v.item] = itemList[v.item] + v.amount
			end
		end
	end
	for item, amount in pairs(itemList) do
		if vRP.getInventoryItemAmount(user_id,item) < amount then
			TriggerClientEvent("Notify",source,"negado","Você não possui <b>"..amount.." "..item.."</b>")
			return false
		end
	end
	if vRP.tryFullPayment(user_id, cart.total) then
		for item, amount in pairs(itemList) do
			if not vRP.tryGetInventoryItem(user_id,item,amount) then
				TriggerClientEvent("Notify",source,"negado","Você não possui <b>"..amount.." "..item.."</b>")
				return false
			end
		end
	else
		TriggerClientEvent("Notify",source,"negado","Você não possui <b>$"..vRP.format(cart.total).."</b>.") 
		return false
	end
	return true
end ]]




-- funcao de pagamento

--[[ config.tryPay = function(user_id,price)
	return vRP.tryPayment(user_id, price)
end ]]

--[[ config.saveVehicle = function(vehplate,custom, vehname,netid)
    local vehuser = vRP.getVehiclePlate(vehplate) or vRP.getUserByRegistration(vehplate)
    if vehuser then
        vRP.setSData("custom:"..vehuser..":"..vehname,json.encode(custom))
    end
end

config.getSavedMods = function(vehplate, vehname)
    local vehuser = vRP.getVehiclePlate(vehplate) or vRP.getUserByRegistration(vehplate)
    if vehuser then
        local data = vRP.getSData("custom:"..vehuser..":"..vehname)
        local custom = json.decode(data)
        if custom then
            return custom
        end
    end
    return false
end ]]


--[[ config.getSavedMods = function(vehplate, vehname)
    local vehuser = vRP.userPlate(vehplate)
    if vehuser then
        local data = vRP.query("entitydata/getData", { dkey = "custom:"..vehuser..":"..vehname })[1]
        local custom = data and json.decode(data.dvalue)
        if custom then
            return custom
        end
    end
    return false
end

config.saveVehicle = function(vehplate,custom, vehname,netid)
    local vehuser = vRP.userPlate(vehplate)
    if vehuser then
        vRP.execute("entitydata/setData", { dkey = "custom:"..vehuser..":"..vehname, value = json.encode(custom)})
    end
end ]]


config.showDebug = false -- mostrar modificacoes cada vez q um veiculo é spawnado

local blockVehicles = function()
	if IsDuplicityVersion() then return end
	local id = GetPlayerServerId(PlayerId())
	while true do
		Citizen.Wait(1000)
		local ped = PlayerPedId()
		local vehicle = GetVehiclePedIsIn(ped)
		if DoesEntityExist(vehicle) and NetworkGetEntityIsNetworked(vehicle) then
			local state = Entity(vehicle).state or {}
			if state.inBennys and state.inBennys ~= id then	
				TaskLeaveVehicle(ped, vehicle, 16)
			end
		end
	end
end

CreateThread(blockVehicles)
