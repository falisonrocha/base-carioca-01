garagesConfig = {}

garagesConfig.main = {
	dir = "http://177.54.148.31:4020/lotus/carros/",
	spawnClientVehicle = true, -- Spawnar veiculo via client-side

	clearVehicle = { -- LIMPAR VEICULOS QUE NÃO ESTEJAM USADOS
		enable = true,  -- CASO QUEIRA ATIVAR / DESATIVAR
		time = 25, -- TEMPO EM MINUTOS
	},

	ipvaVencimento = 7, -- DIAS PARA O VENCIMENTO DO IPVA
	ipvaValue = 0.05, -- 5% VALOR  DO VEICULO IPVA

	detidoValue = 0.1, -- 5% VALOR DO VEICULO DETIDO
	retidoValue = 0.1, -- 10% VALOR DO VEICULO RETIDO 

	defaultCarPrice = 5000, -- Valor padrão caso o carro não seja encontrado na lista abaixo.
	defaultCarChest = 50, -- Valor padrão caso o carro não seja encontrado na lista abaixo.

	commands = {
		prefix = "veh", -- PREFIX
		sellVeh = "vender", -- comando para vender carro /veh vender
		keyAdd = "add", -- comando para add chave carro /veh add
		keyRem = "rem", -- comando para rem chave carro /veh rem
	}
}

garagesConfig.listCars = {
	--[[VEÍCULOS NOVOS]]-- 
	[GetHashKey('intruder')] = { model = 'intruder', price = 90000, banned = false, name = 'Intruder', trunk = 50, type = 'sedans' },
    [GetHashKey('exemplar')] = { model = 'exemplar', price = 250000, banned = false, name = 'Exemplar', trunk = 50, type = 'sedans' },
    [GetHashKey('f620')] = { model = 'f620', price = 160000, banned = false, name = 'F620', trunk = 30, type = 'sedans' },
    [GetHashKey('felon')] = { model = 'felon', price = 300000, banned = false, name = 'Felon', trunk = 50, type = 'sedans' },
    [GetHashKey('ingot')] = { model = 'ingot', price = 100000, banned = false, name = 'Ingot', trunk = 60, type = 'sedans' },
    [GetHashKey('jackal')] = { model = 'jackal', price = 200000, banned = false, name = 'Jackal', trunk = 50, type = 'sedans' },
    [GetHashKey('oracle')] = { model = 'oracle', price = 120000, banned = false, name = 'Oracle', trunk = 50, type = 'sedans' },
    [GetHashKey('oracle2')] = { model = 'oracle2', price = 150000, banned = false, name = 'Oracle2', trunk = 60, type = 'sedans' },
    [GetHashKey('sentinel')] = { model = 'sentinel', price = 140000, banned = false, name = 'Sentinel', trunk = 50, type = 'sedans' },
    [GetHashKey('sentinel2')] = { model = 'sentinel2', price = 130000, banned = false, name = 'Sentinel2', trunk = 40, type = 'sedans' },
    [GetHashKey('windsor')] = { model = 'windsor', price = 220000, banned = false, name = 'Windsor', trunk = 20, type = 'sedans' },
    [GetHashKey('windsor2')] = { model = 'windsor2', price = 170000, banned = false, name = 'Windsor2', trunk = 40, type = 'sedans' },
    [GetHashKey('zion')] = { model = 'zion', price = 150000, banned = false, name = 'Zion', trunk = 50, type = 'sedans' },
    [GetHashKey('zion2')] = { model = 'zion2', price = 300000, banned = false, name = 'Zion2', trunk = 40, type = 'sedans' },
    [GetHashKey('blade')] = { model = 'blade', price = 150000, banned = false, name = 'Blade', trunk = 40, type = 'sedans' },
    [GetHashKey('buccaneer')] = { model = 'buccaneer', price = 200000, banned = false, name = 'Buccaneer', trunk = 50, type = 'sedans' },
    [GetHashKey('buccaneer2')] = { model = 'buccaneer2', price = 500000, banned = false, name = 'Buccaneer2', trunk = 60, type = 'sedans' },
    [GetHashKey('primo')] = { model = 'primo', price = 130000, banned = false, name = 'Primo', trunk = 50, type = 'sedans' },
	[GetHashKey('issi2')] = { model = 'issi2', price = 1835000, banned = false, name = 'Issi2', trunk = 20, type = 'sedans' },
    [GetHashKey('prairie')] = { model = 'prairie', price = 80000, banned = false, name = 'Prairie', trunk = 25, type = 'sedans' },
    [GetHashKey('rhapsody')] = { model = 'rhapsody', price = 10000, banned = false, name = 'Rhapsody', trunk = 30, type = 'sedans' },
    [GetHashKey('cogcabrio')] = { model = 'cogcabrio', price = 220000, banned = false, name = 'Cogcabrio', trunk = 60, type = 'sedans' },
    [GetHashKey('emperor')] = { model = 'emperor', price = 70000, banned = false, name = 'Emperor', trunk = 60, type = 'sedans' },
    [GetHashKey('emperor2')] = { model = 'emperor2', price = 100000, banned = false, name = 'Emperor 2', trunk = 60, type = 'sedans' },
    [GetHashKey('phoenix')] = { model = 'phoenix', price = 160000, banned = false, name = 'Phoenix', trunk = 40, type = 'sedans' },
    [GetHashKey('premier')] = { model = 'premier', price = 150000, banned = false, name = 'Premier', trunk = 50, type = 'sedans' },
    [GetHashKey('glendale')] = { model = 'glendale', price = 80000, banned = false, name = 'Glendale', trunk = 50, type = 'sedans' }, 

	[GetHashKey('lotusraptor')] = { model = 'lotusraptor', price = 1835000, banned = false, name = 'Raptor', trunk = 180, type = 'service'},
	[GetHashKey('rvg63')] = { model = 'rvg63', price = 1835000, banned = false, name = 'Mercedes G63 Grota', trunk = 60, type = 'service'},
	[GetHashKey('velargate')] = { model = 'velargate', price = 1835000, banned = false, name = 'Velar CPX', trunk = 60, type = 'service'},
	[GetHashKey('firetruk')] = { model = 'firetruk', price = 1835000, banned = false, name = 'Firetruk', trunk = 180, type = 'service'},
	[GetHashKey('lotusscania')] = { model = 'lotusscania', price = 1835000, banned = false, name = 'Scania', trunk = 180, type = 'service'},
	[GetHashKey('wrtrxmeclotus')] = { model = 'wrtrxmeclotus', price = 1835000, banned = false, name = 'wrtrxmeclotus', trunk = 30, type = 'service'},
	[GetHashKey('wrflatbedlotus')] = { model = 'wrflatbedlotus', price = 1835000, banned = false, name = 'wrflatbedlotus', trunk = 30, type = 'service'},

	[GetHashKey('wrtrxmecdk')] = { model = 'wrtrxmecdk', price = 1835000, banned = false, name = 'wrtrxmecdk', trunk = 30, type = 'service'},
	[GetHashKey('wrflatbeddk')] = { model = 'wrflatbeddk', price = 1835000, banned = false, name = 'wrflatbeddk', trunk = 30, type = 'service'},

	[GetHashKey('wrtrxmecmotors')] = { model = 'wrtrxmecmotors', price = 1835000, banned = false, name = 'wrtrxmecmotors', trunk = 30, type = 'service'},
	[GetHashKey('wrflatbedmotors')] = { model = 'wrflatbedmotors', price = 1835000, banned = false, name = 'wrflatbedmotors', trunk = 30, type = 'service'},

	[GetHashKey('WRVolito')] = { model = 'WRVolito', price = 1835000, banned = false, name = 'Helicoptero HP', trunk = 180, type = 'service'},

	[GetHashKey('veto2')] = { model = 'veto2', price = 900000, banned = false, name = 'Veto 2', trunk = 30, type = 'outros'},
	[GetHashKey('caddy')] = { model = 'caddy', price = 900000, banned = false, name = 'Caddy', trunk = 30, type = 'outros'},
	[GetHashKey('dominator6')] = { model = 'dominator6', price = 900000, banned = false, name = 'Dominator 6', trunk = 30, type = 'outros'},
	[GetHashKey('openwheel2')] = { model = 'openwheel2', price = 900000, banned = false, name = 'Open Wheel', trunk = 30, type = 'outros'},
	[GetHashKey('tractor')] = { model = 'tractor', price = 50000, banned = false, name = 'Tractor', trunk = 20, type = 'outros'},

	[GetHashKey('duke90')] = { model = 'duke90', price = 3500000, banned = false, name = 'duke90', trunk = 30, type = 'vip' },
	[GetHashKey('vw23gti')] = { model = 'vw23gti', price = 3500000, banned = false, name = 'vw23gti', trunk = 30, type = 'vip' },
	[GetHashKey('urusfac')] = { model = 'urusfac', price = 3500000, banned = false, name = 'urusfac', trunk = 60, type = 'vip' },
	[GetHashKey('wrbb64')] = { model = 'wrbb64', price = 3500000, banned = false, name = 'Brabus G900', trunk = 100, type = 'vip' },
	[GetHashKey('wrcorollaciv')] = { model = 'wrcorollaciv', price = 3500000, banned = false, name = 'Corolla', trunk = 30, type = 'vip' },
	[GetHashKey('evoquecabrio')] = { model = 'evoquecabrio', price = 3500000, banned = false, name = 'Cabrio', trunk = 30, type = 'vip' },

	[GetHashKey('wrthundersasuke')] = { model = 'wrthundersasuke', price = 3500000, banned = false, name = 'wrthundersasuke', trunk = 30, type = 'vip' },

	[GetHashKey('nismoinicial')] = { model = 'nismoinicial', price = 500000, banned = false, name = 'nismoinicial', trunk = 40, type = 'vip' },

	[GetHashKey('3500sd')] = { model = '3500sd', price = 3500000, banned = false, name = 'Dodge RAM 3500 Super Duty', trunk = 150, type = 'vip' },
	[GetHashKey('f850new')] = { model = 'f850new', price = 3500000, banned = false, name = 'BMW GS F850', trunk = 20, type = 'vip' },
	[GetHashKey('wrarmoredconada')] = { model = 'wrarmoredconada', price = 3500000, banned = false, name = 'Conada Blindado', trunk = 20, type = 'vip' },
	[GetHashKey('wrarmoredurus')] = { model = 'wrarmoredurus', price = 3500000, banned = false, name = 'Urus Blindada', trunk = 20, type = 'vip' },
	[GetHashKey('wrarmoredescalade')] = { model = 'wrarmoredescalade', price = 3500000, banned = false, name = 'Escalade Blindada', trunk = 50, type = 'vip' },
	[GetHashKey('xc90r')] = { model = 'xc90r', price = 3500000, banned = false, name = 'Volvo XC90r', trunk = 20, type = 'vip' },
	[GetHashKey('wrarmoredct')] = { model = 'wrarmoredct', price = 3500000, banned = false, name = 'wrarmoredct', trunk = 80, type = 'vip' },

	[GetHashKey('2xlr35kuromi')] = { model = '2xlr35kuromi', price = 3500000, banned = false, name = 'R35 Kuromi', trunk = 40, type = 'vip' },
	[GetHashKey('2xlr35sakura')] = { model = '2xlr35sakura', price = 3500000, banned = false, name = 'R35 Sakura', trunk = 40, type = 'vip' },
	
	[GetHashKey('corvetterotam')] = { model = 'corvetterotam', price = 3500000, banned = false, name = 'corvetterotam', trunk = 30, type = 'vip' },
	[GetHashKey('wrsxrrotam')] = { model = 'wrsxrrotam', price = 3500000, banned = false, name = 'wrsxrrotam', trunk = 30, type = 'vip' },
	[GetHashKey('wrtrailblazerrotam')] = { model = 'wrtrailblazerrotam', price = 3500000, banned = false, name = 'wrtrailblazerrotam', trunk = 30, type = 'vip' },
	[GetHashKey('wrx7rotam')] = { model = 'wrx7rotam', price = 3500000, banned = false, name = 'wrx7rotam', trunk = 30, type = 'vip' },

	[GetHashKey('insurgent2')] = { model = 'insurgent2', price = 1835000, banned = false, name = 'Insurgent 2', trunk = 200, type = 'vip' },
	[GetHashKey('avenger')] = { model = 'Avenger', price = 1835000, banned = false, name = 'Avenger', trunk = 100, type = 'vip' },
	[GetHashKey('pounder')] = { model = 'pounder', price = 1835000, banned = false, name = 'Pounder', trunk = 3000, type = 'vip'},

	[GetHashKey('venatus')] = { model = 'venatus', price = 3500000, banned = false, name = 'Lamborghini Mansory Urus', trunk = 60, type = 'vip' },
	[GetHashKey('speedo4')] = { model = 'speedo4', price = 3500000, banned = false, name = 'Speedo 4', trunk = 1000, type = 'vip' },

	[GetHashKey('devel22')] = { model = 'devel22', price = 1835000, banned = false, name = 'Devel22', trunk = 30, type = 'vip'},
	[GetHashKey('lambose')] = { model = 'lambose', price = 1835000, banned = false, name = 'Lambose', trunk = 30, type = 'vip'},
	
	[GetHashKey('amels200')] = { model = 'amels200', price = 1835000, banned = false, name = 'Iate Amels', trunk = 30, type = 'vip' },
	[GetHashKey('havok')] = { model = 'havok', price = 1835000, banned = false, name = 'Havok', trunk = 50, type = 'vip' },
	[GetHashKey('stockade3')] = { model = 'stockade3', price = 1835000, banned = false, name = 'Stockade', trunk = 100, type = 'vip'},
	[GetHashKey('thruster')] = { model = 'thruster', price = 1835000, banned = false, name = 'Thruster', trunk = 10, type = 'vip'},
	[GetHashKey('ahksv')] = { model = 'ahksv', price = 1835000, banned = false, name = 'Ahksv', trunk = 30, type = 'vip'},
	[GetHashKey('rmodf40')] = { model = 'rmodf40', price = 1835000, banned = false, name = 'Rmodf40', trunk = 30, type = 'vip'},
	[GetHashKey('rmodjesko')] = { model = 'rmodjesko', price = 1835000, banned = false, name = 'Jesko', trunk = 40, type = 'vip' },
	[GetHashKey('rmodgtr50')] = { model = 'rmodgtr50', price = 1835000, banned = false, name = 'Nissan GTR 50', trunk = 30, type = 'vip'},
	[GetHashKey('rmodmi8lb')] = { model = 'rmodmi8lb', price = 1835000, banned = false, name = 'Bmw i8 conversível ', trunk = 30, type = 'vip'},
	[GetHashKey('agerars')] = { model = 'agerars', price = 1835000, banned = false, name = 'Koenisegg Agera', trunk = 30, type = 'vip'},
	[GetHashKey('rmodf12tdf')] = { model = 'rmodf12tdf', price = 1835000, banned = false, name = 'Ferrari 12 TDF', trunk = 30, type = 'vip'},
	[GetHashKey('chironss')] = { model = 'chironss', price = 1835000, banned = false, name = 'Bugatti Chiron', trunk = 30, type = 'vip'},
	[GetHashKey('350z')] = { model = '350z', price = 1835000, banned = false, name = 'Nissan 350z', trunk = 40, type = 'vip'},
	[GetHashKey('rmodjeep')] = { model = 'rmodjeep', price = 1835000, banned = false, name = 'Jeep Cherokee', trunk = 600, type = 'vip'},
	[GetHashKey('audiq8')] = { model = 'audiq8', price = 1835000, banned = false, name = 'Audi Q8', trunk = 30, type = 'vip'},
	[GetHashKey('wrhiace')] = { model = 'wrhiace', price = 1835000, banned = false, name = 'WR Hiace', trunk = 300, type = 'vip'},
	[GetHashKey('wrhiacebela')] = { model = 'wrhiacebela', price = 1835000, banned = false, name = 'WR Hiace', trunk = 300, type = 'vip'},
	[GetHashKey('911r')] = { model = '911r', price = 900000, banned = false, name = 'Porshe 911r', trunk = 30, type = 'vip'},
	[GetHashKey('panamera17turbo')] = { model = 'panamera17turbo', price = 900000, banned = false, name = 'Panamera Turbo', trunk = 30, type = 'vip'},
	[GetHashKey('amarok')] = { model = 'amarok', price = 900000, banned = false, name = 'Amarok', trunk = 120, type = 'vip'},
	[GetHashKey('fox720m')] = { model = 'fox720m', price = 900000, banned = false, name = 'Ahksv', trunk = 30, type = 'vip'},
	[GetHashKey('s10')] = { model = 's10', price = 1835000, banned = false, name = 'Chevrolet S10', trunk = 30, type = 'vip'},
	[GetHashKey('xreagstore')] = { model = 'xreagstore', price = 1835000, banned = false, name = 'Honda XRE 300', trunk = 30, type = 'vip'},
	[GetHashKey('survolt')] = { model = 'survolt', price = 1835000, banned = false, name = 'Citroen Survolt', trunk = 30, type = 'vip'},
	[GetHashKey('18velar')] = { model = '18velar', price = 1835000, banned = false, name = 'Range Rover Velar', trunk = 30, type = 'vip'},
	[GetHashKey('WRvelar')] = { model = 'WRvelar', price = 1835000, banned = false, name = 'Range Rover Velar', trunk = 30, type = 'vip'},
	[GetHashKey('WRc7')] = { model = 'WRvelar', price = 1835000, banned = false, name = 'WR Corvette', trunk = 30, type = 'vip'},
	-- [GetHashKey('WRsw4')] = { model = 'WRsw4', price = 1835000, banned = false, name = 'WRsw4', trunk = 30, type = 'vip'},

	[GetHashKey('blacks')] = { model = 'blacks', price = 1835000, banned = false, name = 'Blacks', trunk = 30, type = 'vip' },

	[GetHashKey('wrarmoredcayenne')] = { model = 'wrarmoredcayenne', price = 1835000, banned = false, name = 'Cayenne GT', trunk = 80, type = 'vip' },
	[GetHashKey('wrarmoredgle')] = { model = 'wrarmoredgle', price = 1835000, banned = false, name = 'GLE63', trunk = 80, type = 'vip' },
	[GetHashKey('wrarmoredjettagli')] = { model = 'wrarmoredjettagli', price = 1835000, banned = false, name = 'Jetta GLI', trunk = 80, type = 'vip' },
	[GetHashKey('wrarmoredm3g80c')] = { model = 'wrarmoredm3g80c', price = 1835000, banned = false, name = 'M3 G80C', trunk = 80, type = 'vip' },
	[GetHashKey('wrarmoredm5')] = { model = 'wrarmoredm5', price = 1835000, banned = false, name = 'M5 SL', trunk = 80, type = 'vip' },
	[GetHashKey('wrarmoredmacan')] = { model = 'wrarmoredmacan', price = 1835000, banned = false, name = 'Macan', trunk = 80, type = 'vip' },
	[GetHashKey('wrarmoredrs7')] = { model = 'wrarmoredrs7', price = 1835000, banned = false, name = 'RS7', trunk = 80, type = 'vip' },
	[GetHashKey('wrarmoredvelar')] = { model = 'wrarmoredvelar', price = 1835000, banned = false, name = 'Velar', trunk = 80, type = 'vip' },
	[GetHashKey('wrarmoredx7m60i')] = { model = 'wrarmoredx7m60i', price = 1835000, banned = false, name = 'X7 M60i', trunk = 80, type = 'vip' },
	[GetHashKey('wrarmoredx6')] = { model = 'wrarmoredx6', price = 1835000, banned = false, name = 'X6 F96', trunk = 80, type = 'vip' },
	[GetHashKey('23teslapf')] = { model = '23teslapf', price = 1835000, banned = false, name = 'Tesla', trunk = 30, type = 'vip' },

	[GetHashKey('10r24nbrt')] = { model = "10r24nbrt", price = 3000000, banned = false, name = 'ZX10-R KRT Edition', trunk = 20, type = 'vip' },

	


	-- HOSPITAL
	[GetHashKey('WRxreparamedico')] = { model = 'WRxreparamedico', price = 1835000, banned = false, name = 'XRE SAMU', trunk = 40, type = 'vip'},
	[GetHashKey('WRas350samu')] = { model = 'WRas350samu', price = 1835000, banned = false, name = 'AS350 SAMU', trunk = 40, type = 'vip'},
	[GetHashKey('WRsw4')] = { model = 'WRsw4', price = 1835000, banned = false, name = 'SW4 SAMU', trunk = 40, type = 'vip'},
	[GetHashKey('WRsprinter22')] = { model = 'WRsprinter22', price = 1835000, banned = false, name = 'Sprinter SAMU', trunk = 40, type = 'vip'},
	
	[GetHashKey('wrsprinterhp')] = { model = 'wrsprinterhp', price = 1835000, banned = false, name = 'Sprinter SAMU', trunk = 40, type = 'vip'},
	[GetHashKey('wrurushp')] = { model = 'wrurushp', price = 1835000, banned = false, name = 'Urus SAMU', trunk = 40, type = 'vip'},

	-- IFOOD
	[GetHashKey('wrcargo150')] = { model = 'wrcargo150', price = 1835000, banned = false, name = 'IFOOD', trunk = 40, type = 'vip'},
			
	-- BOMBEIRO
	[GetHashKey('WRsprinter22cbm')] = { model = 'WRsprinter22cbm', price = 1835000, banned = false, name = 'WRsprinter22cbm', trunk = 40, type = 'vip'},
	[GetHashKey('WRas350cbm')] = { model = 'WRas350cbm', price = 1835000, banned = false, name = 'WRas350cbm', trunk = 40, type = 'vip'},
	[GetHashKey('WR21hiluxcbm')] = { model = 'WR21hiluxcbm', price = 1835000, banned = false, name = 'WR21hiluxcbm', trunk = 40, type = 'vip'},
	[GetHashKey('WRsw4cbm')] = { model = 'WRsw4cbm', price = 1835000, banned = false, name = 'WRsw4cbm', trunk = 40, type = 'vip'},
				
	-- BANCO DO BRASIL
	[GetHashKey('insurgentbb')] = { model = 'insurgentbb', price = 1835000, banned = false, name = 'insurgentbb', trunk = 40, type = 'vip'},
		
	-- LIXEIRO
	[GetHashKey('WRtrashrio')] = { model = 'WRtrashrio', price = 1835000, banned = false, name = 'Caminhão de Lixo', trunk = 40, type = 'vip'},
	
	-- MECANICA
	[GetHashKey('wrtrxmec')] = { model = 'wrtrxmec', price = 1835000, banned = false, name = 'TRX', trunk = 40, type = 'vip'},
	[GetHashKey('wrflatbed')] = { model = 'wrflatbed', price = 1835000, banned = false, name = 'Flatbed', trunk = 40, type = 'vip'},
	
	-- EXERCITO
	[GetHashKey('WRranger23ebc')] = { model = 'WRranger23ebc', price = 1835000, banned = false, name = 'WRranger23ebc', trunk = 40, type = 'vip'},
	[GetHashKey('WRranger23eb')] = { model = 'WRranger23eb', price = 1835000, banned = false, name = 'WRranger23eb', trunk = 40, type = 'vip'},
	[GetHashKey('WR5ton')] = { model = 'WR5ton', price = 1835000, banned = false, name = 'WR5ton', trunk = 40, type = 'vip'},
	[GetHashKey('uh1exercito')] = { model = 'uh1exercito', price = 1835000, banned = false, name = 'uh1exercito', trunk = 40, type = 'vip'},
	[GetHashKey('haitun')] = { model = 'haitun', price = 1835000, banned = false, name = 'haitun', trunk = 40, type = 'vip'},


	-- CIVIC GRATUITO
	[GetHashKey('wrcivici')] = { model = 'wrcivici', price = 1835000, banned = false, name = 'Civic', trunk = 40, type = 'vip'},

	
	 
	-- POLICIA
	[GetHashKey('caveiraopmerj')] = { model = 'caveiraopmerj', price = 1835000, banned = false, name = 'Caveirão PMERJ', trunk = 40, type = 'vip'},
	[GetHashKey('WRvelar')] = { model = 'WRvelar', price = 1835000, banned = false, name = 'Range Rover Velar', trunk = 40, type = 'vip'},
	[GetHashKey('WRjeep')] = { model = 'WRjeep', price = 1835000, banned = false, name = 'Jeep Grand Cherokee', trunk = 40, type = 'vip'},
	[GetHashKey('WRas350')] = { model = 'WRas350', price = 1835000, banned = false, name = 'AS350', trunk = 40, type = 'vip'},
	[GetHashKey('WRc7')] = { model = 'WRc7', price = 1835000, banned = false, name = 'Corvette C7', trunk = 40, type = 'vip'},
	[GetHashKey('WRduster22')] = { model = 'WRduster22', price = 1835000, banned = false, name = 'Duster', trunk = 40, type = 'vip'},
	[GetHashKey('WRl200')] = { model = 'WRl200', price = 1835000, banned = false, name = 'L200', trunk = 40, type = 'vip'},
	[GetHashKey('WRpajero')] = { model = 'WRpajero', price = 1835000, banned = false, name = 'Pajero', trunk = 40, type = 'vip'},
	[GetHashKey('WRranger23')] = { model = 'WRranger23', price = 1835000, banned = false, name = 'Ranger 23', trunk = 40, type = 'vip'},
	[GetHashKey('WRxt660')] = { model = 'WRxt660', price = 1835000, banned = false, name = 'XT 660', trunk = 40, type = 'vip'},
	[GetHashKey('WRtrailblazer22')] = { model = 'WRtrailblazer22', price = 1835000, banned = false, name = 'Trailblazer', trunk = 40, type = 'vip'},
	[GetHashKey('WRstorm')] = { model = 'WRstorm', price = 1835000, banned = false, name = 'Storm', trunk = 40, type = 'vip'},
	
	[GetHashKey('wrlc500mgt')] = { model = 'wrlc500mgt', price = 1835000, banned = false, name = '500MGT', trunk = 40, type = 'vip'},
	[GetHashKey('wrbmwg05mgt')] = { model = 'wrbmwg05mgt', price = 1835000, banned = false, name = 'BMW 05MGT', trunk = 40, type = 'vip'},

	-- CORE
	[GetHashKey('wrtrxccr')] = { model = 'wrtrxccr', price = 1835000, banned = false, name = 'wrtrxccr', trunk = 40, type = 'vip'},
	-- [GetHashKey('wrlc500ccr')] = { model = 'wrlc500ccr', price = 1835000, banned = false, name = 'wrlc500ccr', trunk = 40, type = 'vip'},
	[GetHashKey('wrbmwg05ccr')] = { model = 'wrbmwg05ccr', price = 1835000, banned = false, name = 'wrbmwg05ccr', trunk = 40, type = 'vip'},

	-- COT 
	[GetHashKey("wrtrxmct")] = { model = 'wrtrxmct', price = 1835000, banned = false, name = 'wrtrxmct', trunk = 40, type = 'vip'},
	[GetHashKey("wrm3g80mct")] = { model = 'wrm3g80mct', price = 1835000, banned = false, name = 'wrm3g80mct', trunk = 40, type = 'vip'},
	[GetHashKey("wrbmwg05mct")] = { model = 'wrbmwg05mct', price = 1835000, banned = false, name = 'wrbmwg05mct', trunk = 40, type = 'vip'},
	[GetHashKey("wrlc500mct")] = { model = 'wrlc500mct', price = 1835000, banned = false, name = 'wrlc500mct', trunk = 40, type = 'vip'},
	[GetHashKey("wrtiger1200mct")] = { model = 'wrtiger1200mct', price = 1835000, banned = false, name = 'wrtiger1200mct', trunk = 40, type = 'vip'},

	-- policia
	[GetHashKey('WRas350policia')] = { model = 'WRas350policia', price = 1835000, banned = false, name = 'AS350', trunk = 40, type = 'vip'},
	[GetHashKey('WRbell407policia')] = { model = 'WRbell407policia', price = 1835000, banned = false, name = 'BELL 407', trunk = 40, type = 'vip'},
	[GetHashKey('WRcruzepolicia')] = { model = 'WRcruzepolicia', price = 1835000, banned = false, name = 'Cruze', trunk = 40, type = 'vip'},
	[GetHashKey('WRl200policia')] = { model = 'WRl200policia', price = 1835000, banned = false, name = 'L200', trunk = 40, type = 'vip'},
	[GetHashKey('WRpoliciacamaro19')] = { model = 'WRpoliciacamaro19', price = 1835000, banned = false, name = 'Camaro', trunk = 40, type = 'vip'},
	[GetHashKey('WRranger21')] = { model = 'WRranger21', price = 1835000, banned = false, name = 'Ranger 21', trunk = 40, type = 'vip'},
	[GetHashKey('WRtrailblazerpolicia')] = { model = 'WRtrailblazerpolicia', price = 1835000, banned = false, name = 'Trailblazer', trunk = 40, type = 'vip'},


	[GetHashKey('r8spyder20')] = { model = 'r8spyder20', price = 1835000, banned = false, name = 'Audi R8 Spyder', trunk = 30, type = 'vip'},
	[GetHashKey('moss')] = { model = 'moss', price = 1835000, banned = false, name = 'Mercedes Moss', trunk = 30, type = 'vip'},
	[GetHashKey('m135i')] = { model = 'm135i', price = 1835000, banned = false, name = 'BMW M1', trunk = 30, type = 'vip'},
	[GetHashKey('sonata18')] = { model = 'sonata18', price = 1835000, banned = false, name = 'Sonata', trunk = 30, type = 'vip'},
	[GetHashKey('fordka')] = { model = 'fordka', price = 1835000, banned = false, name = 'Ford Ka', trunk = 30, type = 'vip'},
	[GetHashKey('palio')] = { model = 'palio', price = 1835000, banned = false, name = 'Palio', trunk = 30, type = 'vip'},
	[GetHashKey('mbc')] = { model = 'mbc', price = 1835000, banned = false, name = 'Mercedes Concept', trunk = 150, type = 'vip'},
	[GetHashKey('trailcat')] = { model = 'trailcat', price = 1835000, banned = false, name = 'Jeep Trailcat 4x4', trunk = 150, type = 'vip'},
	[GetHashKey('WRspeedoems')] = { model = 'WRspeedoems', price = 1000000, banned = false, name = 'WRspeedoems', trunk = 50, type = 'service' },
	[GetHashKey('WRurus')] = { model = 'WRurus', price = 1000000, banned = false, name = 'WRurus', trunk = 50, type = 'service' },
	[GetHashKey('mercxclass')] = { model = 'mercxclass', price = 1835000, banned = false, name = 'Mercedes Class X', trunk = 150, type = 'vip'},
	[GetHashKey('submersible')] = { model = 'submersible', price = 1835000, banned = false, name = 'Submarino', trunk = 30, type = 'vip'},
	[GetHashKey('civic2016')] = { model = 'civic2016', price = 1835000, banned = false, name = 'Civic 2016', trunk = 30, type = 'vip'},
	[GetHashKey('m2f22')] = { model = "m2f22", price = 1835000, banned = false, name = "BMW M2", trunk = 30, type = "vip" },
	[GetHashKey('eletran17')] = { model = 'eletran17', price = 1835000, banned = false, name = 'Elantra 17', trunk = 30, type = 'vip' },
	[GetHashKey('z4bmw')] = { model = 'z4bmw', price = 1835000, banned = false, name = 'BMW Z4', trunk = 30, type = 'vip' },
	[GetHashKey('punto')] = { model = 'punto', price = 1835000, banned = false, name = 'Fiat Punto', trunk = 30, type = 'vip' },
	[GetHashKey('veneno')] = { model = 'veneno', price = 1835000, banned = false, name = 'Lamborghini Veneno', trunk = 20, type = 'vip' },
	[GetHashKey('urus')] = { model = 'urus', price = 1835000, banned = false, name = 'Lamborghini Urus', trunk = 40, type = 'vip' },
	[GetHashKey('tenere1200')] = { model = 'tenere1200', price = 1835000, banned = false, name = 'YAMAHA SUPER TENERÊ 1200', trunk = 30, type = 'vip' },
	[GetHashKey('pcx')] = { model = 'pcx', price = 1835000, banned = false, name = 'PCX 2018', trunk = 30, type = 'vip' },
	[GetHashKey('pboxstergts')] = { model = 'pboxstergts', price = 1835000, banned = false, name = 'PORSCHE BOXTER 2013', trunk = 30, type = 'vip' },
	[GetHashKey('gs2013')] = { model = 'gs2013', price = 1835000, banned = false, name = 'R1200 GS 2013', trunk = 30, type = 'vip' },
	[GetHashKey('fxxkevo')] = { model = 'fxxkevo', price = 1835000, banned = false, name = 'Ferrari FXXK Evo', trunk = 30, type = 'vip' },
	[GetHashKey('fc15')] = { model = 'fc15', price = 1835000, banned = false, name = 'Ferrari California', trunk = 20, type = 'vip' },
	[GetHashKey('f850')] = { model = 'f850', price = 1835000, banned = false, name = 'F850 GS', trunk = 30, type = 'vip' },
	[GetHashKey('biz25')] = { model = "biz25", price = 1835000, banned = false, name = 'Biz 25', trunk = 40, type = 'vip' },
	[GetHashKey('f150')] = { model = "f150", price = 1835000, banned = false, name = 'Ford 150', trunk = 40, type = 'vip' },
	[GetHashKey('370z')] = { model = "370z", price = 1835000, banned = false, name = 'Nissan 370z', trunk = 40, type = 'vip' },
	[GetHashKey('a452')] = { model = "a452", price = 1835000, banned = false, name = 'Mercedes A45', trunk = 40, type = 'vip' },
	[GetHashKey('bikelete')] = { model = "bikelete", price = 1835000, banned = false, name = 'Bikelete', trunk = 40, type = 'vip' },
	[GetHashKey('c63w205')] = { model = 'c63w205', price = 1835000, banned = false, name = 'MERCEDES-AMG C63W205', trunk = 30, type = 'vip'},
	[GetHashKey('evo9')] = { model = 'evo9', price = 1835000, banned = false, name = 'Lancer Evolution 9', trunk = 30, type = 'vip'},
	[GetHashKey('ftoro')] = { model = 'ftoro', price = 1835000, banned = false, name = 'Ford Toro', trunk = 30, type = 'vip'},
	[GetHashKey('gle53')] = { model = 'gle53', price = 1835000, banned = false, name = 'Mercedes GLE53', trunk = 30, type = 'vip'},
	[GetHashKey('Hilux2019')] = { model = 'Hilux2019', price = 1835000, banned = false, name = 'Toyota Hilux 2019', trunk = 30, type = 'vip'},
	[GetHashKey('huayrar')] = { model = 'huayrar', price = 1835000, banned = false, name = 'Pagani Huayra', trunk = 30, type = 'vip'},
	[GetHashKey('subwrx')] = { model = 'subwrx', price = 1835000, banned = false, name = 'Subaru WRX', trunk = 30, type = 'vip'},
	[GetHashKey('ds4')] = { model = 'ds4', price = 1835000, banned = false, name = 'DS4', trunk = 30, type = 'vip'},
	[GetHashKey('amggtc')] = { model = 'amggtc', price = 1835000, banned = false, name = 'AMG Conversivel', trunk = 60, type = 'vip'},
	[GetHashKey('avisa')] = { model = 'avisa', price = 1835000, banned = false, name = 'Submarino Avisa', trunk = 30, type = 'outros' },

	[GetHashKey('675ltsp')] = { model = '675ltsp ', price = 1835000, banned = false, name = 'McLaren 675 LT SP', trunk = 30, type = 'vip'},
	[GetHashKey('wladlc500')] = { model = 'wladlc500', price = 1835000, banned = false, name = 'Lexus LC 500', trunk = 30, type = 'vip'},
	[GetHashKey('rs520')] = { model = 'rs520', price = 1835000, banned = false, name = 'Audi RS5 2020', trunk = 30, type = 'vip'},
	[GetHashKey('amgone')] = { model = 'amgone', price = 1835000, banned = false, name = 'Mercedes AMG ONE', trunk = 30, type = 'vip'},
	[GetHashKey('sjdodge')] = { model = 'sjdodge', price = 1835000, banned = false, name = 'Dodge Charger Hellcat', trunk = 30, type = 'vip'},
	[GetHashKey('bmwg07')] = { model = 'bmwg07', price = 1835000, banned = false, name = 'BMW X7 2021', trunk = 30, type = 'vip'},
	[GetHashKey('c8z0623')] = { model = 'c8z0623', price = 1835000, banned = false, name = 'Corvette C7 2023', trunk = 30, type = 'vip'},
	[GetHashKey('dd911gtrsr')] = { model = 'dd911gtrsr', price = 1835000, banned = false, name = 'Porsche 911R GT2 DD', trunk = 30, type = 'vip'},
	[GetHashKey('lpi8004')] = { model = 'lpi8004 ', price = 1835000, banned = false, name = 'Lamborghini Countach LPI800-4', trunk = 30, type = 'vip'},

	--[[VEÍCULOS VELOZES E FURIOSOS]]--
	[GetHashKey('rmodskyline34')] = { model = "rmodskyline34", price = 1835000, banned = false, name = 'Skyline R34', trunk = 40, type = 'vip' },
	[GetHashKey('fnflan')] = { model = 'fnflan', price = 1835000, banned = false, name = 'Mitsubishi Lancer Evolution IX GSR', trunk = 30, type = 'vip'},
	[GetHashKey('ff4wrx')] = { model = 'ff4wrx', price = 1835000, banned = false, name = 'Subaru Impreza Fast and Furious', trunk = 30, type = 'vip'},
	[GetHashKey('2f2fmk4')] = { model = '2f2fmk4', price = 1835000, banned = false, name = 'Toyota Supra Fast and Furious', trunk = 30, type = 'vip'},
	[GetHashKey('fnfmk4')] = { model = 'fnfmk4', price = 1835000, banned = false, name = 'Toyota Supra Fast and Furious 2', trunk = 30, type = 'vip'},
	[GetHashKey('fnfmits')] = { model = 'fnfmits', price = 1835000, banned = false, name = 'Mitsubishi Eclipse do Brian', trunk = 30, type = 'vip'},
	[GetHashKey('fnfrx7')] = { model = 'fnfrx7', price = 1835000, banned = false, name = 'Mazda RX7 do Han', trunk = 0, type = 'vip'},
	[GetHashKey('2f2fmle7')] = { model = '2f2fmle7', price = 1835000, banned = false, name = 'Lancer Evolution do Brian', trunk = 30, type = 'vip'},
	[GetHashKey('2f2fgts')] = { model = '2f2fgts', price = 1835000, banned = false, name = 'Mitsubishi Spyder do Roman', trunk = 30, type = 'vip'},
		
	--[[VEÍCULOS EMPREGOS]]--
	[GetHashKey('quadri')] = { model = 'quadri', price = 1000000, banned = false, name = 'Quadriciclo', trunk = 0, type = 'service'},
	[GetHashKey('phantom')] = { model = 'phantom', price = 1000000, banned = false, name = 'Phantom', trunk = 0, type = 'service'},
	[GetHashKey('trash2')] = { model = 'trash2', price = 1000000, banned = false, name = 'Trash 2', trunk = 0, type = 'service' },
	[GetHashKey('tiptruck')] = { model = 'tiptruck', price = 1000000, banned = false, name = 'Tip Truck', trunk = 80, type = 'service' },
	[GetHashKey('boxville2')] = { model = 'boxville2', price = 1000000, banned = false, name = 'Box ville', trunk = 80, type = 'service' },
	[GetHashKey('airbus')] = { model = 'airbus', price = 1000000, banned = false, name = 'Airbus', trunk = nil, type = 'service' },
	[GetHashKey('bus')] = { model = 'bus', price = 1000000, banned = false, name = 'Bus', trunk = nil, type = 'service' },
	[GetHashKey('dinghy')] = { model = 'dinghy', price = 1000000, banned = false, name = 'Dinghy', trunk = nil, type = 'service' },
	[GetHashKey('dinghy2')] = { model = 'dinghy2', price = 1000000, banned = false, name = 'Dinghy 2', trunk = nil, type = 'service' },
	[GetHashKey('dinghy3')] = { model = 'dinghy3', price = 1000000, banned = false, name = 'Dinghy 3', trunk = nil, type = 'service' },
	[GetHashKey('dinghy4')] = { model = 'dinghy4', price = 1000000, banned = false, name = 'Dinghy 4', trunk = nil, type = 'service' },
	[GetHashKey('trailerlogs')] = { model = 'trailerlogs', price = 1000000, banned = false, name = 'Trailer Logs', trunk = nil, type = 'service' },
	[GetHashKey('taxi')] = { model = 'taxi', price = 1000000, banned = false, name = 'Táxi', trunk = nil, type = 'service' },
	[GetHashKey('towtruck2')] = { model = 'towtruck2', price = 1000000, banned = false, name = 'TowTruck 2', trunk = nil, type = 'service' },
	[GetHashKey('flatbed')] = { model = 'flatbed', price = 1000000, banned = false, name = 'Flatbed', trunk = nil, type = 'service' },

	--[[HELIS]]--
	[GetHashKey('supervolito')] = { model = 'supervolito', price = 1835000, banned = false, name = 'Supervolito', trunk = 150, type = 'vip' },
	[GetHashKey('supervolito2')] = { model = 'supervolito2', price = 1835000, banned = false, name = 'Supervolito 2', trunk = 150, type = 'vip' },
	[GetHashKey('frogger')] = { model = 'frogger', price = 1835000, banned = false, name = 'Frogger', trunk = 150, type = 'vip' },
	[GetHashKey('frogger2')] = { model = 'frogger2', price = 1835000, banned = false, name = 'Frogger2', trunk = 150, type = 'vip' },
	[GetHashKey('volatus')] = { model = 'volatus', price = 1835000, banned = false, name = 'Volatus', trunk = 150, type = 'vip' },

	[GetHashKey('luxor')] = { model = 'luxor', price = 1835000, banned = false, name = 'Luxor', trunk = 50, type = 'vip' },

	
	[GetHashKey('swift2')] = { model = 'swift2', price = 1835000, banned = false, name = 'Swift2', trunk = 150, type = 'vip' },
	-- [GetHashKey('havok')] = { temodel = 'havok', price = 1835000, banned = false, name = 'Havok', trunk = 150, type = 'vip' },

	--[[VEÍCULOS ORGANIZACIONAIS]]--
	[GetHashKey('coach')] = { model = 'coach', price = 1000000, banned = false, name = 'Coach Civil', trunk = 50, type = 'service' },
	[GetHashKey('VRa3')] = { model = 'VRa3', price = 1000000, banned = false, name = 'VRa3', trunk = 50, type = 'service' },
	[GetHashKey('VRq8')] = { model = 'VRq8', price = 1000000, banned = false, name = 'VRq8', trunk = 50, type = 'service' },


	[GetHashKey('WRsubaru')] = { model = 'WRsubaru', price = 1000000, banned = false, name = 'WRsubaru', trunk = 50, type = 'service' },
	[GetHashKey('WRclassxxc')] = { model = 'WRclassxxc', price = 1000000, banned = false, name = 'WRclassxxc', trunk = 50, type = 'service' },
	[GetHashKey('WRm5')] = { model = 'WRm5', price = 1000000, banned = false, name = 'WRm5', trunk = 50, type = 'service' },


	[GetHashKey('VRraptor')] = { model = 'VRraptor', price = 1000000, banned = false, name = 'VRraptor', trunk = 50, type = 'service' },
	[GetHashKey('WRpolmav')] = { model = 'WRpolmav', price = 1000000, banned = false, name = 'Helicóptero Policia', trunk = 50, type = 'service' },
	[GetHashKey('ambulance')] = { model = 'ambulance', price = 1000000, banned = false, name = 'Ambulância', trunk = 50, type = 'service' },
	[GetHashKey('paramedicoheli')] = { model = 'paramedicoheli', price = 1000000, banned = false, name = 'Helicóptero Serviços', trunk = 50, type = 'service' },
	[GetHashKey('amggtr')] = { model = "amggtr", price = 1000000, banned = false, name = "Mercedes-Benz AMGGTR", trunk = 50, type = 'service' },
	[GetHashKey('mercedesgt')] = { model = 'mercedesgt', price = 1000000, banned = false, name = 'Mercedes-Benz GT63', trunk = 50, type = 'service' },
	[GetHashKey('nc750x')] = { model = 'nc750x', price = 1000000, banned = false, name = 'NC750X', trunk = 50, type = 'service' },
	[GetHashKey('paramedicoambu')] = { model = "paramedicoambu", price = 1000000, banned = false, name = 'Ambulância', trunk = nil, type = 'service' },
	[GetHashKey('wrcb500x')] = { model = "wrcb500x", price = 1000000, banned = false, name = "CB 500 Policia", trunk = 30, type = "service" },
	[GetHashKey('riot')] = { model = "riot", price = 1000000, banned = false, name = "Blindado Policia", trunk = 30, type = "service" }, 
	


	--[[NOVOS VEICULOS]]--
	[GetHashKey('maverick')] = { model = 'maverick', price = 1835000, banned = false, name = 'Maverick', trunk = 30, type = 'vip'},
	[GetHashKey('fc15')] = { model = 'fc15', price = 1835000, banned = false, name = 'Ferrari California', trunk = 30, type = 'vip'},
	[GetHashKey('ttrs')] = { model = 'ttrs', price = 1835000, banned = false, name = 'Audi TTrs', trunk = 30, type = 'vip'},
	[GetHashKey('f250deboxe')] = { model = 'f250deboxe', price = 1835000, banned = false, name = 'F250 Deboxe', trunk = 100, type = 'vip'},
	[GetHashKey('africatAG')] = { model = 'africatAG', price = 1835000, banned = false, name = 'africatAG', trunk = 30, type = 'vip' },
	[GetHashKey('m8gte')] = { model = 'm8gte', price = 1835000, banned = false, name = 'm8gte', trunk = 30, type = 'vip' },
	[GetHashKey('polestar1')] = { model = 'polestar1', price = 1835000, banned = false, name = 'polestar1', trunk = 30, type = 'vip' },

	[GetHashKey('WRx6')] = { model = "WRx6", price = 1000000, banned = false, name = "Bmw x6", trunk = 30, type = "service" },
	[GetHashKey('WRsxr')] = { model = "WRsxr", price = 1000000, banned = false, name = "Sxr", trunk = 30, type = "service" },
	[GetHashKey('WRram2500')] = { model = "WRram2500", price = 1000000, banned = false, name = "Ram 2500", trunk = 30, type = "service" },
	[GetHashKey('WRBmwm8')] = { model = "WRBmwm8", price = 1000000, banned = false, name = "Bmw m8", trunk = 30, type = "service" },
	[GetHashKey('WRBmwm1')] = { model = "WRBmwm1", price = 1000000, banned = false, name = "Bmw m1", trunk = 30, type = "service" },
	[GetHashKey('WRbmwi8')] = { model = "WRbmwi8", price = 1000000, banned = false, name = "Bmw i8", trunk = 30, type = "service" },
	[GetHashKey('WRbmwm4')] = { model = "WRbmwm4", price = 1000000, banned = false, name = "BMW M4 Policia", trunk = 30, type = "service" },
	[GetHashKey('WRclassxx')] = { model = "WRclassxx", price = 1000000, banned = false, name = "Class xx", trunk = 30, type = "service" },
	[GetHashKey('WRpolmav')] = 	{ model = "WRpolmav", price = 1000000, banned = false, name = "Pol Mav", trunk = 30, type = "service" },
	

	[GetHashKey('WRafricat')] = { model = "WRafricat", price = 1000000, banned = false, name = "WRafricat", trunk = 50, type = "service" },
	[GetHashKey('WRpgt322')] = { model = "WRpgt322", price = 1000000, banned = false, name = "WRpgt322", trunk = 50, type = "service" },
	[GetHashKey('WRbell407')] = { model = "WRbell407", price = 1000000, banned = false, name = "WRbell407", trunk = 50, type = "service" },
	[GetHashKey('WRpanamera')] = { model = "WRpanamera", price = 1000000, banned = false, name = "WRpanamera", trunk = 50, type = "service" },
	[GetHashKey('WRtacoma22')] = { model = "WRtacoma22", price = 1000000, banned = false, name = "WRtacoma22", trunk = 50, type = "service" },
	[GetHashKey('WRtacoma22choque')] = { model = "WRtacoma22choque", price = 1000000, banned = false, name = "WRtacoma22choque", trunk = 50, type = "service" },
	[GetHashKey('WRtacoma22cot')] = { model = "WRtacoma22cot", price = 1000000, banned = false, name = "WRtacoma22cot", trunk = 50, type = "service" },
	[GetHashKey('WRtaycan')] = { model = "WRtaycan", price = 1000000, banned = false, name = "WRtaycan", trunk = 50, type = "service" },
	[GetHashKey('WRauditron')] = { model = 'WRauditron', price = 1000000, banned = false, name = 'WRauditron', trunk = 50, type = 'service' },
	[GetHashKey('WRq7')] = { model = 'WRq7', price = 1000000, banned = false, name = 'WRq7', trunk = 50, type = 'service' },
	[GetHashKey('WRr8')] = { model = 'WRr8', price = 1000000, banned = false, name = 'WRr8', trunk = 50, type = 'service' },
	[GetHashKey('WRtacoma22core')] = { model = 'WRtacoma22core', price = 1000000, banned = false, name = 'WRtacoma22core', trunk = 50, type = 'service' },


	[GetHashKey('wrbell407mct')] = { model = "wrbell407mct", price = 1000000, banned = false, name = "wrbell407mct", trunk = 50, type = "service" },

	
	--[[ GTF ]]
	[GetHashKey('wrafricatgtf')] = { model = "wrafricatgtf", price = 1000000, banned = false, name = "wrafricatgtf", trunk = 50, type = 'service' },
	[GetHashKey('wrcamaro19gtf')] = { model = "wrcamaro19gtf", price = 1000000, banned = false, name = "wrcamaro19gtf", trunk = 50, type = 'service' },
	[GetHashKey('wrcruzegtf')] = { model = "wrcruzegtf", price = 1000000, banned = false, name = "wrcruzegtf", trunk = 50, type = 'service' },
	[GetHashKey('wrl200gtf')] = { model = "wrl200gtf", price = 1000000, banned = false, name = "wrl200gtf", trunk = 50, type = 'service' },
	[GetHashKey('wrranger21gtf')] = { model = "wrranger21gtf", price = 1000000, banned = false, name = "wrranger21gtf", trunk = 50, type = 'service' },
	[GetHashKey('wrtrailblazergtf')] = { model = "wrtrailblazergtf", price = 1000000, banned = false, name = "wrtrailblazergtf", trunk = 50, type = 'service' },
	[GetHashKey('wrbell407gtf')] = { model = "wrbell407gtf", price = 1000000, banned = false, name = "wrbell407gtf", trunk = 50, type = 'service' },

	--[[ GOT ]]
	[GetHashKey('wrbmwg05cgo')] = { model = "wrbmwg05cgo", price = 1000000, banned = false, name = "wrbmwg05cgo", trunk = 50, type = 'service' },
	[GetHashKey('wrlc500cgo')] = { model = "wrlc500cgo", price = 1000000, banned = false, name = "wrlc500cgo", trunk = 50, type = 'service' },
	[GetHashKey('wrtrxcgo')] = { model = "wrtrxcgo", price = 1000000, banned = false, name = "wrtrxcgo", trunk = 50, type = 'service' },
	[GetHashKey('wrtiger1200cgo')] = { model = "wrtiger1200cgo", price = 1000000, banned = false, name = "wrtiger1200cgo", trunk = 50, type = 'service' },
	[GetHashKey('wrbell407cgo')] = { model = "wrbell407cgo", price = 1000000, banned = false, name = "wrbell407cgo", trunk = 50, type = 'service' },
	
	



	--[[ CIVIL ]]
	[GetHashKey('wrtiger1200c')] = { model = "wrtiger1200c", price = 1000000, banned = false, name = "wrtiger1200c", trunk = 50, type = 'service' },
	[GetHashKey('wr22gt4rsc')] = { model = "wr22gt4rsc", price = 1000000, banned = false, name = "wr22gt4rsc", trunk = 50, type = 'service' },
	[GetHashKey('wr22m5c')] = { model = "wr22m5c", price = 1000000, banned = false, name = "wr22m5c", trunk = 50, type = 'service' },
	[GetHashKey('wrbmwg05c')] = { model = "wrbmwg05c", price = 1000000, banned = false, name = "wrbmwg05c", trunk = 50, type = 'service' },
	[GetHashKey('wretrongt22c')] = { model = "wretrongt22c", price = 1000000, banned = false, name = "wretrongt22c", trunk = 50, type = 'service' },
	[GetHashKey('wrtrxc')] = { model = "wrtrxc", price = 1000000, banned = false, name = "wrtrxc", trunk = 50, type = 'service' },
	[GetHashKey('wrpolmavm')] = { model = "wrpolmavm", price = 1000000, banned = false, name = "wrpolmavm", trunk = 50, type = 'service' },


	--[[ CHOQUE ]]

	[GetHashKey('wrbmwg05mcq')] = { model = "wrbmwg05mcq", price = 1000000, banned = false, name = "wrbmwg05mcq", trunk = 50, type = 'service' },
	[GetHashKey('wrlc500mcq')] = { model = "wrlc500mcq", price = 1000000, banned = false, name = "wrlc500mcq", trunk = 50, type = 'service' },
	[GetHashKey('wrtrxmcq')] = { model = "wrtrxmcq", price = 1000000, banned = false, name = "wrtrxmcq", trunk = 50, type = 'service' },
	[GetHashKey('wrtiger1200mcq')] = { model = "wrtiger1200mcq", price = 1000000, banned = false, name = "Tiger 1200", trunk = 50, type = 'service' },


	[GetHashKey('WRbmwm4')] = { model = "WRbmwm4", price = 1000000, banned = false, name = "BMW M4 Policia", trunk = 30, type = "service" },
	[GetHashKey('WRclassxx')] = { model = "WRclassxx", price = 1000000, banned = false, name = "Class xx", trunk = 30, type = "service" },


	[GetHashKey('dodgeems')] = { model = "dodgeems", price = 1000000, banned = false, name = "Dodge EMS", trunk = 30, type = "service" },
	
	--[[VEÍCULOS VIP]]--
	[GetHashKey('rmodlegosenna')] = { model = 'rmodlegosenna', price = 1835000, banned = false, name = 'Mclaren Lego Senna ', trunk = 30, type = 'vip'},
	[GetHashKey('foxc8')] = { model = 'foxc8', price = 1835000, banned = false, name = 'Corvette C8 ', trunk = 30, type = 'vip'},
	[GetHashKey('m3e46')] = { model = 'm3e46', price = 1835000, banned = false, name = 'BMW M3 E46', trunk = 30, type = 'vip'},
	[GetHashKey('rmodcharger69')] = { model = 'rmodcharger69', price = 1835000, banned = false, name = 'Dodge Charger', trunk = 30, type = 'vip'},
	[GetHashKey('civic')] = { model = 'civic', price = 1835000, banned = false, name = 'Civic', trunk = 40, type = 'vip'},
	[GetHashKey('rmodcamaro')] = { model = 'rmodcamaro', price = 1835000, banned = false, name = 'Camaro', trunk = 40, type = 'vip'},
	[GetHashKey('rmodmartin')] = { model = 'rmodmartin', price = 1835000, banned = false, name = 'rmodmartin', trunk = 40, type = 'vip'},
	[GetHashKey('jetta2017')] = { model = 'jetta2017', price = 1835000, banned = false, name = 'Jetta 2017', trunk = 30, type = 'vip' },
	[GetHashKey('rmodessenza')] = { model = 'rmodessenza', price = 1835000, banned = false, name = 'Lamborghini Essenza', trunk = 30, type = 'vip' },
	[GetHashKey('adr8')] = { model = 'adr8', price = 1835000, banned = false, name = 'Audi R8 2021', trunk = 30, type = 'vip' },
	[GetHashKey('dukes2')] = { model = 'dukes2', price = 1835000, banned = false, name = 'Dukes Blindado', trunk = 30, type = 'vip' },
	[GetHashKey('dm1200')] = { model = 'dm1200', price = 1835000, banned = false, name = 'Ducati', trunk = 15, type = 'vip' },
	[GetHashKey('nissanskyliner34')] = 	{ model = 'nissanskyliner34', price = 1835000, banned = false, name = 'Skyline R34', trunk = 100, type = 'vip' },
	[GetHashKey('r1')] = { model = 'r1', price = 1835000, banned = false, name = 'Yamaha R1', trunk = 50, type = 'vip' },
	[GetHashKey('s1000rr')] = { model = 's1000rr', price = 1835000, banned = false, name = 'BMW S1000RR', trunk = 30, type = 'vip' },
	[GetHashKey('pcj')] = { model = 'pcj', price = 1835000, banned = false, name = 'KTM', trunk = 5, type = 'vip' },
	[GetHashKey('audirs7')] = { model = 'audirs7', price = 1835000, banned = false, name = 'Audi RS7', trunk = 40, type = 'vip' },
	[GetHashKey('718b')] = { model = '718b', price = 1835000, banned = false, name = 'Porsche 718B', trunk = 40, type = 'vip' },
	[GetHashKey('ferrariitalia')] = { model = 'ferrariitalia', price = 1835000, banned = false, name = 'Ferrari Itália', trunk = 40, type = 'vip' },
	[GetHashKey('fordmustang')] = { model = 'fordmustang', price = 1835000, banned = false, name = 'Ford Mustang', trunk = 40, type = 'vip' },
	[GetHashKey('lancerevolutionx')] = { model = 'lancerevolutionx', price = 1835000, banned = false, name = 'Lancer Evolution X', trunk = 40, type = 'vip' },
	[GetHashKey('teslaprior')] = { model = 'teslaprior', price = 1835000, banned = false, name = 'Tesla Prior', trunk = 40, type = 'vip' },
	[GetHashKey('bmws')] = { model = 'bmws', price = 1835000, banned = false, name = 'BMW S', trunk = 40, type = 'vip' },
	[GetHashKey('panigale')] = { model = 'panigale', price = 1835000, banned = false, name = 'Ducati', trunk = 40, type = 'vip' },
	[GetHashKey('gsxr')] = { model = 'gsxr', price = 1835000, banned = false, name = 'Suzuki GSXR', trunk = 40, type = 'vip' },
	[GetHashKey('hayabusa')] = { model = 'hayabusa', price = 1835000, banned = false, name = 'Hayabusa', trunk = 40, type = 'vip' },
	[GetHashKey('r6')] = { model = 'r6', price = 1835000, banned = false, name = 'Yamaha R6', trunk = 40, type = 'vip' },
	[GetHashKey('tiger')] = { model = "tiger", price = 1835000, banned = false, name = "Tiger", trunk = 40, type = 'vip' },
	[GetHashKey('xj6')] = { model = 'xj6', price = 1835000, banned = false, name = 'XJ6', trunk = 40, type = 'vip' },
	[GetHashKey('xt660vip')] = { model = 'xt660vip', price = 1835000, banned = false, name = 'XT 660', trunk = 40, type = 'vip' },
	[GetHashKey('z1000')] = { model = 'z1000', price = 20000, banned = false, name = 'Z1000', trunk = 40, type = 'vip' },
	[GetHashKey('zx6r')] = { model = 'zx6r', price = 1835000, banned = false, name = 'ZX6R', trunk = 40, type = 'vip' },
	[GetHashKey('zx10')] = { model = 'zx10', price = 1835000, banned = false, name = 'ZX10', trunk = 40, type = 'vip' },
	[GetHashKey('rmodbacalar')] = { model = 'rmodbacalar', price = 1835000, banned = false, name = 'Bacalar', trunk = 40, type = 'vip' },
	[GetHashKey('rmodbentleygt')] = { model = 'rmodbentleygt', price = 1835000, banned = false, name = 'Bentley GT', trunk = 40, type = 'vip' },
	[GetHashKey('rmodbmwm8')] = { model = 'rmodbmwm8', price = 1835000, banned = false, name = 'BMW M8', trunk = 40, type = 'vip' },
	[GetHashKey('africat')] = { model = 'africat', price = 1835000, banned = false, name = 'Africat', trunk = 40, type = 'vip' },
	[GetHashKey('c7')] = { model = 'c7', price = 1835000, banned = false, name = 'Corvette Conversivel 7', trunk = 40, type = 'vip' },
	[GetHashKey('cx75')] = { model = 'cx75', price = 1835000, banned = false, name = 'Jaguar C-X75', trunk = 40, type = 'vip' },
	[GetHashKey('divo')] = { model = 'divo', price = 1835000, banned = false, name = 'Bugatti Divo', trunk = 40, type = 'vip' },
	[GetHashKey('evoque')] = { model = 'evoque', price = 1835000, banned = false, name = 'Range Rover Evoque', trunk = 40, type = 'vip' },
	[GetHashKey('f8t')] = { model = 'f8t', price = 1835000, banned = false, name = 'Ferrari Pista 8', trunk = 40, type = 'vip' },
	[GetHashKey('fz07')] = { model = 'fz07', price = 1835000, banned = false, name = 'Yamaha FZ-07', trunk = 40, type = 'vip' },
	[GetHashKey('nh2r')] = { model = 'nh2r', price = 1835000, banned = false, name = 'Kawasaki Ninja H2R', trunk = 40, type = 'vip' },
	[GetHashKey('pamodelra17turbo')] = { model = 'pamodelra17turbo', price = 1835000, banned = false, name = 'Porsche Pamodelra 17 TURBO', trunk = 40, type = 'vip' },
	[GetHashKey('r1200')] = { model = 'r1200', price = 1835000, banned = false, name = 'BMW R1250', trunk = 40, type = 'vip' },
	[GetHashKey('terzo')] = { model = 'terzo', price = 1835000, banned = false, name = 'Lamborghini Terzo', trunk = 40, type = 'vip' },
	[GetHashKey('hornet')] = { model = 'hornet', price = 100000, banned = false, name = 'Hornet', trunk = 40, type = 'vip' },
	[GetHashKey('civictyper')] = { model = 'civictyper', price = 1835000, banned = false, name = 'CivicType R', trunk = 40, type = 'vip' },
	[GetHashKey('18performante')] = { model = '18performante', price = 1835000, banned = false, name = 'Lamborghini Huracan NOVA', trunk = 40, type = 'vip' },
	[GetHashKey('bmwi8')] = { model = 'bmwi8', price = 1835000, banned = false, name = 'BMW I8', trunk = 40, type = 'vip' },
	[GetHashKey('silvias15')] = { model = 'silvias15', price = 1835000, banned = false, name = 'Nissan Silvia S15', trunk = 50, type = 'vip' },
	[GetHashKey('silvia')] = { model = 'silvia', price = 1835000, banned = false, name = 'Silvia GK', trunk = 50, type = 'vip' },
	[GetHashKey('24humevof')] = { model = '24humevof', price = 1835000, banned = false, name = 'Hummer EV 2024', trunk = 150, type = 'vip' },
	[GetHashKey('rvfranca')] = { model = 'rvfranca', price = 1835000, banned = false, name = 'Rv Franca', trunk = 150, type = 'vip' },
	[GetHashKey('rvafricat')] = { model = 'rvafricat', price = 1835000, banned = false, name = 'Rv Africat', trunk = 150, type = 'vip' },
	[GetHashKey('rvx6')] = { model = 'rvx6', price = 1835000, banned = false, name = 'Rv X6', trunk = 150, type = 'vip' },
	[GetHashKey('d99')] = { model = 'd99', price = 1835000, banned = false, name = 'Ducati 1199 Panigale', trunk = 50, type = 'vip' },
	[GetHashKey('elva')] = { model = 'elva', price = 1835000, banned = false, name = 'Elva', trunk = 40, type = 'vip' },
	[GetHashKey('foxct')] = { model = 'foxct', price = 1835000, banned = false, name = 'Tesla CyberTruck', trunk = 40, type = 'vip' },
	[GetHashKey('foxevo')] = { model = 'foxevo', price = 1835000, banned = false, name = 'Lamborghini Evo', trunk = 40, type = 'vip' },
	[GetHashKey('foxgt2')] = { model = 'foxgt2', price = 1835000, banned = false, name = 'McLaren GT2', trunk = 40, type = 'vip' },
	[GetHashKey('foxsenna')] = { model = 'foxsenna', price = 1835000, banned = false, name = 'McLaren Senna', trunk = 40, type = 'vip' },
	[GetHashKey('gemera')] = { model = 'gemera', price = 1835000, banned = false, name = 'Koenigsegg', trunk = 40, type = 'vip' },
	[GetHashKey('giuliagta')] = { model = 'giuliagta', price = 1835000, banned = false, name = 'Giulia', trunk = 40, type = 'vip' },
	[GetHashKey('golf7gti')] = { model = 'golf7gti', price = 20000, banned = false, name = 'GOLF GTI', trunk = 40, type = 'vip' },
	[GetHashKey('rmodgt63')] = { model = 'rmodgt63', price = 1835000, banned = false, name = 'Mercedes GT63', trunk = 40, type = 'vip' },
	[GetHashKey('lwgtr')] = { model = 'lwgtr', price = 1835000, banned = false, name = 'LWGTR', trunk = 40, type = 'vip' },
	[GetHashKey('huracangt3evo')] = { model = 'huracangt3evo', price = 1835000, banned = false, name = 'Lamborghini Huracan GT3 EVO', trunk = 40, type = 'vip' },
	[GetHashKey('l200')] = { model = 'l200', price = 1835000, banned = false, name = 'L200', trunk = 40, type = 'vip' },
	[GetHashKey('bmwm4gts')] = { model = 'bmwm4gts', price = 1835000, banned = false, name = 'BMW M4GTS', trunk = 40, type = 'vip' },
	[GetHashKey('mansgt')] = { model = 'mansgt', price = 1835000, banned = false, name = 'MANSGT', trunk = 40, type = 'vip' },
	[GetHashKey('monza')] = { model = 'monza', price = 1835000, banned = false, name = 'Monza', trunk = 40, type = 'vip' },
	[GetHashKey('paredao')] = { model = 'paredao', price = 1835000, banned = false, name = 'Paredão', trunk = 40, type = 'vip' },
	[GetHashKey('pct18')] = { model = "pct18", price = 1835000, banned = false, name = 'Cayenne Turbo', trunk = 40, type = 'vip' },
	[GetHashKey('pistaspider19')] = { model = 'pistaspider19', price = 1835000, banned = false, name = 'Ferrari Spider', trunk = 40, type = 'vip' },
	-- [GetHashKey('ram2500')] = { model = 'ram2500', price = 1835000, banned = false, name = 'Caminhonete RAM2500', trunk = 130, type = 'vip' },
	[GetHashKey('fd')] = { model = 'fd', price = 1835000, banned = false, name = 'RX7', trunk = 40, type = 'vip' },
	[GetHashKey('rs7c821')] = { model = 'rs7c821', price = 1835000, banned = false, name = 'rs7c821', trunk = 40, type = 'vip' },
	[GetHashKey('mt07')] = { model = 'mt07', price = 1835000, banned = false, name = 'mt07', trunk = 40, type = 'vip' },
	[GetHashKey('wrpolo')] = { model = "wrpolo", price = 3000000, banned = false, name = 'Polo', trunk = 20, type = 'vip' },

	
	[GetHashKey('a80')] = { model = 'a80', price = 1835000, banned = false, name = 'Toyota Supra', trunk = 40, type = 'vip' },
	[GetHashKey('rs6wb')] = { model = 'rs6wb', price = 1835000, banned = false, name = 'RS6WB', trunk = 40, type = 'vip' },
	[GetHashKey('valkyrietp')] = { model = 'valkyrietp', price = 1835000, banned = false, name = 'Valkyrie TP', trunk = 40, type = 'vip' },
	[GetHashKey('rmodx6')] = { model = 'rmodx6', price = 1835000, banned = false, name = 'BMW X6', trunk = 40, type = 'vip' },
	[GetHashKey('918S')] = { model = '918S', price = 1835000, banned = false, name = 'Porsche Spyder', trunk = 30, type = 'vip' },
	[GetHashKey('macanturbo')] = { model = 'macanturbo', price = 1835000, banned = false, name = 'Porshe Macan', trunk = 30, type = 'vip' },
	[GetHashKey('taycan21')] = { model = 'taycan21', price = 1835000, banned = false, name = 'Porshe Taycan', trunk = 30, type = 'vip' },
	[GetHashKey('WRtiger900')] = { model = 'WRtiger900', price = 1835000, banned = false, name = 'Triumph Tiger 900', trunk = 30, type = 'vip' },
	[GetHashKey('rmodsianr')] = { model = 'rmodsianr', price = 1835000, banned = false, name = 'Lamborghini Sian', trunk = 30, type = 'vip' },
	[GetHashKey('chevette')] = { model = 'chevette', price = 300000, banned = false, name = 'Chevette', trunk = 30, type = 'vip'},
	[GetHashKey('saveiro')] = { model = 'saveiro', price = 300000, banned = false, name = 'Saveiro', trunk = 50, type = 'vip'},
	[GetHashKey('terbyte')] = { model = 'terbyte', price = 1835000, banned = false, name = 'Terbyte', trunk = 2000, type = 'vip'},
	[GetHashKey('WRtrailblazercore')] = { model = 'WRtrailblazercore', price = 1, banned = false, name = 'Blazer Core', trunk = 30, type = 'service' },
	[GetHashKey('WRlwgtr')] = { model = 'WRlwgtr', price = 1, banned = false, name = 'WR GTR', trunk = 30, type = 'service' },
	[GetHashKey('wrbmwi8exc')] = { model = 'wrbmwi8exc', price = 1500000, banned = false, name = 'Storm', trunk = 40, type = 'vip'},
	
	
	[GetHashKey('2f2fgtr34')] = { model = '2f2fgtr34', price = 1835000, banned = false, name = 'GT-R 34', trunk = 30, type = 'vip'},
	[GetHashKey('2f2fgts')] = { model = '2f2fgts', price = 1835000, banned = false, name = 'Eclipse GTS', trunk = 30, type = 'vip'},
	[GetHashKey('2f2fmk4')] = { model = '2f2fmk4', price = 1835000, banned = false, name = 'Supra MK4', trunk = 30, type = 'vip'},
	[GetHashKey('2f2fmle7')] = { model = '2f2fmle7', price = 1835000, banned = false, name = 'Lancer Evo VII', trunk = 30, type = 'vip'},
	[GetHashKey('2f2frx7')] = { model = '2f2frx7', price = 1835000, banned = false, name = 'RX7 FD', trunk = 30, type = 'vip'},
	[GetHashKey('2f2fs2000')] = { model = '2f2fs2000', price = 1835000, banned = false, name = 'S2000', trunk = 30, type = 'vip'},
	[GetHashKey('350zdk')] = { model = '350zdk', price = 1835000, banned = false, name = '350Z DK', trunk = 30, type = 'vip'},
	[GetHashKey('350zm')] = { model = '350zm', price = 1835000, banned = false, name = '350Z Morimoto', trunk = 30, type = 'vip'},
	[GetHashKey('acura2f2f')] = { model = 'acura2f2f', price = 1835000, banned = false, name = 'NSX NA1', trunk = 30, type = 'vip'},
	[GetHashKey('ff4wrx')] = { model = 'ff4wrx', price = 1835000, banned = false, name = 'Impreza WRX', trunk = 30, type = 'vip'},
	[GetHashKey('fnf4r34')] = { model = 'fnf4r34', price = 1835000, banned = false, name = 'GT-R 34 FNF4', trunk = 30, type = 'vip'},
	[GetHashKey('fnfjetta')] = { model = 'fnfjetta', price = 1835000, banned = false, name = 'Jetta 3', trunk = 30, type = 'vip'},
	[GetHashKey('fnflan')] = { model = 'fnflan', price = 1835000, banned = false, name = 'Lancer Evo VIII', trunk = 30, type = 'vip'},
	[GetHashKey('fnfmits')] = { model = 'fnfmits', price = 1835000, banned = false, name = 'Eclipse GS-T', trunk = 30, type = 'vip'},
	[GetHashKey('fnfmk4')] = { model = 'fnfmk4', price = 1835000, banned = false, name = 'Supra MK4 FNF', trunk = 30, type = 'vip'},
	[GetHashKey('fnfrx7')] = { model = 'fnfrx7', price = 1835000, banned = false, name = 'RX7 Veilside', trunk = 30, type = 'vip'},
	[GetHashKey('fnfrx7dom')] = { model = 'fnfrx7dom', price = 1835000, banned = false, name = 'RX7 Toretto', trunk = 30, type = 'vip'},
	[GetHashKey('hcej1')] = { model = 'hcej1', price = 1835000, banned = false, name = 'Civic EJ1', trunk = 30, type = 'vip'},
	[GetHashKey('silvias15varietta')] = { model = 'silvias15varietta ', price = 1835000, banned = false, name = 'S15 Monalisa', trunk = 30, type = 'vip'},
	[GetHashKey('WRs10')] = { model = 'WRs10', price = 1835000, banned = false, name = 'S10 2021', trunk = 80, type = 'vip'},
	[GetHashKey('minittrs')] = { model = 'minittrs', price = 1835000, banned = false, name = 'Audi TRS KID', trunk = 10, type = 'vip'},
	[GetHashKey('wrbmwx6civ')] = { model = 'wrbmwx6civ', price = 1835000, banned = false, name = 'wrbmwx6civ', trunk = 30, type = 'vip'},
	
	--[[FIM DOS VIP]]--
	[GetHashKey('furia')] = { model = 'furia', price = 10000000, banned = false, name = 'Furia', trunk = 50, type = 'imports' },
	[GetHashKey('italirsx')] = { model = 'italirsx', price = 10000000, banned = false, name = 'ItaliRSX', trunk = 30, type = 'outros' },
	[GetHashKey('krieger')] = { model = 'krieger', price = 4000000, banned = false, name = 'Krieger', trunk = 30, type = 'imports', },
	[GetHashKey('emerus')] = { model = 'emerus', price = 2000000, banned = false, name = 'Emerus', trunk = 30, type = 'imports' },
	[GetHashKey('zorrusso')] = { model = 'zorrusso', price = 3500000, banned = false, name = 'Zorrusso', trunk = 30, type = 'imports'  },
	[GetHashKey('thrax')] = { model = 'thrax', price = 5000000, banned = false, name = 'Thrax', trunk = 30, type = 'imports' },
	[GetHashKey('vstr')] = { model = 'vstr', price = 200000, banned = false, name = 'Vstr', trunk = 30, type = 'outros' },
	[GetHashKey('caracara2')] = { model = 'caracara2', price = 1000000, banned = false, name = 'Caracara2', trunk = 90, type = 'suvs' },
	[GetHashKey('verus')] = { model = 'verus', price = 1000000, banned = false, name = 'Verus', trunk = 50, type = 'motos' },
	[GetHashKey('hellion')] = { model = "hellion", price = 800000, banned = false, name = "Hellion", trunk = 70, type = 'suvs' },
	[GetHashKey('novak')] = { model = "novak", price = 800000, banned = false, name = "Novak", trunk = 70, type = 'suvs' },
	[GetHashKey('rebla')] = { model = 'rebla', price = 800000, banned = false, name = 'Rebla', trunk = 70, type = 'suvs' },
	[GetHashKey('paragon')] = { model = 'paragon', price = 800000, banned = false, name = 'Paragon', trunk = 30, type = 'outros' },
	[GetHashKey('jugular')] = { model = 'jugular', price = 700000, banned = false, name = 'Jugular', trunk = 30, type = 'outros' },
	[GetHashKey('komoda')] = { model = 'komoda', price = 850000, banned = false, name = 'Komoda', trunk = 30, type = 'outros' },
	[GetHashKey('drafter')] = { model = 'drafter', price = 800000, banned = false, name = 'Drafter', trunk = 30, type = 'outros' },
	[GetHashKey('pounder2')] = { model = 'pounder2', price = 800000, banned = false, name = 'pounder2', trunk = 5000, type = 'service' },
	[GetHashKey('benson')] = { model = "benson", price = 20000000, banned = false, name = "Benson", trunk = 1000, type = 'service' },
	 
	[GetHashKey('brickade')] = { model = 'brickade', price = 1000000, banned = false, name = 'Brickade', trunk = 2000, type = 'vip' },
	[GetHashKey('club')] = { model = 'club', price = 800000, banned = false, name = 'Club', trunk = 30, type = 'outros' },
	[GetHashKey('kanjo')] = { model = 'kanjo', price = 90000, banned = false, name = 'Kanjo', trunk = 30, type = 'outros'},
	[GetHashKey('issi5')] = { model = 'issi5', price = 1000000, banned = false, name = 'Issi 5', trunk = 30, type = 'outros' },
	[GetHashKey('issi4')] = { model = 'issi4', price = 1000000, banned = false,  name = 'Issi 4', trunk = 30, type = 'outros' },
	[GetHashKey('panto')] = { model = 'panto', price = 5000, banned = false, name = 'Panto', trunk = 30, type = 'outros' },
	[GetHashKey('glendale2')] = { model = 'glendale2', price = 250000, banned = false, name = 'Glendale 2', trunk = 30, type = 'sedans' },
	[GetHashKey('regina')] = { model = 'regina', price = 200000, banned = false,  name = 'Regina', trunk = 30, type = 'sedans' },
	[GetHashKey('romero')] = { model = 'romero', price = 500000, banned = false, name = 'Funerário', trunk = 30, type = 'sedans' },
	[GetHashKey('stretch')] = { model = 'stretch', price = 18350000, banned = false, name = 'Limousine', trunk = 60, type = 'sedans' },
	[GetHashKey('pbus2')] = { model = 'pbus2', price = 1000, banned = false, name = 'Bus Fest', trunk = 0, type = 'service' },
	[GetHashKey('imorgon')] = { model = 'imorgon', price = 900000, banned = false, name = 'Imorgon', trunk = 30, type = 'outros' },
	[GetHashKey('issi7')] = { model = 'issi7', price = 400000, banned = false, name = 'Issi 7', trunk = 30, type = 'outros'},
	[GetHashKey('locust')] = { model = 'locust', price = 2000000, banned = false, name = 'Ocelot', trunk = 45, type = 'outros' },
	[GetHashKey('neo')] = { model = 'neo', price = 2000000, banned = false, name = 'Neo', trunk = 30, type = 'outros' },
	[GetHashKey('penumbra2')] = { model = 'penumbra2', price = 600000, banned = false, name = 'Penumbra 2', trunk = 30, type = 'outros' },
	[GetHashKey('revolter')] = { model = 'revolter', price = 200000, banned = false, name = 'Revolter', trunk = 30, type = 'outros' },
	[GetHashKey('schafter2')] = { model = 'schafter2', price = 100000, banned = false, name = 'Schafter 2', trunk = 30, type = 'outros' },
	[GetHashKey('blista')] = { model = 'blista', price = 90000, banned = false, name = 'Blista', trunk = 40, type = 'outros'},

	[GetHashKey('sultan2')] = { model = 'sultan2', price = 500000, banned = false, name = 'Sultan 2', trunk = 30, type = 'outros' },
	[GetHashKey('dynasty')] = { model = 'dynasty', price = 200000, banned = false, name = 'Dynasty', trunk = 30, type = 'outros' },
	[GetHashKey('manana2')] = { model = 'manana2', price = 300000, banned = false, name = 'Manana 2', trunk = 30, type = 'outros' },
	[GetHashKey('peyote3')] = { model = 'peyote3', price = 300000, banned = false, name = 'Peyote 3', trunk = 30, type = 'outros' },
	[GetHashKey('retinue2')] = { model = 'retinue2', price = 300000, banned = false, name = 'Retinue 2', trunk = 30, type = 'outros' },
	[GetHashKey('savestra')] = { model = 'savestra', price = 400000, banned = false, name = 'Savestra', trunk = 30, type = 'outros' },
	-- [GetHashKey('viseris')] = { model = 'viseris', price = 600000, banned = false, name = 'Viseris', trunk = 30, type = 'outros' },
	[GetHashKey('s80')] = { model = 's80', price = 1000000, banned = false, name = 'S80', trunk = 30, type = 'imports' },
	[GetHashKey('tigon')] = { model = 'tigon', price = 2000000, banned = false, name = 'Tigon', trunk = 30, type = 'imports' },
	[GetHashKey('brioso')] = { model = 'brioso', price = 45000, banned = false, name = 'Brioso', trunk = 30, type = 'outros' },
	[GetHashKey('brioso2')] = { model = "brioso2", price = 70000, banned = false, name = "Brioso 2", trunk = 30, type = 'outros' },
	[GetHashKey('dilettante')] = { model = 'dilettante', price = 100000, banned = false, name = 'Dilettante', trunk = 30, type = 'outros' },
	[GetHashKey('primo2')] = { model = 'primo2', price = 150000, banned = false, name = 'Primo2', trunk = 60, type = 'sedans' },
	[GetHashKey('chino')] = { model = 'chino', price = 150000, banned = false, name = 'Chino', trunk = 50, type = 'outros' },
	[GetHashKey('chino2')] = { model = 'chino2', price = 600000, banned = false, name = 'Chino2', trunk = 60, type = 'outros' },
	[GetHashKey('coquette3')] = { model = 'coquette3', price = 1835000, banned = false, name = 'Coquette3', trunk = 40, type = 'outros' },
	[GetHashKey('dominator')] = { model = 'dominator', price = 200000, banned = false, name = 'Dominator', trunk = 50, type = 'outros' },
	[GetHashKey('dominator2')] = { model = 'dominator2', price = 300000, banned = false, name = 'Dominator2', trunk = 50, type = 'outros' },
	[GetHashKey('dukes')] = { model = 'dukes', price = 200000, banned = false, name = 'Dukes', trunk = 40, type = 'outros' },
	[GetHashKey('faction')] = { model = 'faction', price = 140000, banned = false, name = 'Faction', trunk = 50, type = 'outros' },
	[GetHashKey('faction2')] = { model = 'faction2', price = 500000, banned = false, name = 'Faction2', trunk = 40, type = 'outros' },
	[GetHashKey('faction3')] = { model = 'faction3', price = 500000, banned = false, name = 'Faction3', trunk = 60, type = 'outros' },
	[GetHashKey('gauntlet4')] = { model = 'gauntlet4', price = 1000000, banned = false, name = 'Gauntlet 4', trunk = 30, type = 'outros' },
	[GetHashKey('gauntlet3')] = { model = 'gauntlet3', price = 150000, banned = false, name = 'Gauntlet 3', trunk = 30, type = 'outros' },
	[GetHashKey('gauntlet2')] = { model = 'gauntlet2', price = 400000, banned = false, name = 'Gauntlet2', trunk = 40, type = 'outros' },
	[GetHashKey('hermes')] = { model = 'hermes', price = 200000, banned = false, name = 'Hermes', trunk = 50, type = 'outros' },
	[GetHashKey('hotknife')] = { model = 'hotknife', price = 500000, banned = false, name = 'Hotknife', trunk = 30, type = 'outros' },
	[GetHashKey('moonbeam')] = { model = 'moonbeam', price = 10000000, banned = false, name = 'Moonbeam', trunk = 80, type = 'outros' },
	[GetHashKey('moonbeam2')] = { model = 'moonbeam2', price = 5000000, banned = false, name = 'Moonbeam2', trunk = 70, type = 'outros' },
	[GetHashKey('nightshade')] = { model = 'nightshade', price = 450000, banned = false, name = 'Nightshade', trunk = 30, type = 'outros' },
	[GetHashKey('picador')] = { model = 'picador', price = 200000, banned = false, name = 'Picador', trunk = 90, type = 'outros' },
	[GetHashKey('ruiner')] = { model = 'ruiner', price = 100000, banned = false, name = 'Ruiner', trunk = 50, type = 'outros' },
	[GetHashKey('sabregt')] = { model = 'sabregt', price = 120000, banned = false, name = 'Sabregt', trunk = 60, type = 'outros' },
	[GetHashKey('sabregt2')] = { model = 'sabregt2', price = 150000, banned = false, name = 'Sabregt2', trunk = 60, type = 'outros' },
	[GetHashKey('gburrito')] = { model = 'gburrito', price = 1835000, banned = false, name = 'GBurrito', trunk = 100, type = 'service' },
	[GetHashKey('tokyoamarokjornal')] = { model = 'tokyoamarokjornal', price = 800000, banned = false, name = 'Amarok Jornal', trunk = 50, type = 'service' },
	[GetHashKey('slamvan')] = { model = 'slamvan', price = 800000, banned = false, name = 'Slamvan', trunk = 80, type = 'outros' },
	[GetHashKey('slamvan2')] = { model = 'slamvan2', price = 800000, banned = false, name = 'Slamvan2', trunk = 50, type = 'service' },
	[GetHashKey('slamvan3')] = { model = 'slamvan3', price = 800000, banned = false, name = 'Slamvan3', trunk = 80, type = 'outros' },
	[GetHashKey('stalion')] = { model = 'stalion', price = 400000, banned = false, name = 'Stalion', trunk = 30, type = 'outros' },
	[GetHashKey('stalion2')] = { model = 'stalion2', price = 260000, banned = false, name = 'Stalion2', trunk = 20, type = 'outros' },
	[GetHashKey('tampa')] = { model = 'tampa', price = 200000, banned = false, name = 'Tampa', trunk = 40, type = 'outros' },
	[GetHashKey('vigero')] = { model = 'vigero', price = 170000, banned = false, name = 'Vigero', trunk = 30, type = 'outros' },
	[GetHashKey('virgo')] = { model = 'virgo', price = 150000, banned = false, name = 'Virgo', trunk = 60, type = 'outros' },
	[GetHashKey('virgo2')] = { model = 'virgo2', price = 150000, banned = false, name = 'Virgo2', trunk = 50, type = 'outros' },
	[GetHashKey('virgo3')] = { model = 'virgo3', price = 150000, banned = false, name = 'Virgo3', trunk = 60, type = 'outros' },
	[GetHashKey('voodoo')] = { model = 'voodoo', price = 300000, banned = false, name = 'Voodoo', trunk = 60, type = 'outros' },
	[GetHashKey('voodoo2')] = { model = 'voodoo2', price = 100000, banned = false, name = 'Voodoo2', trunk = 60, type = 'outros' },
	[GetHashKey('yosemite')] = { model = 'yosemite', price = 800000, banned = false, name = 'Yosemite', trunk = 130, type = 'outros' },
	[GetHashKey('yosemite3')] = { model = 'yosemite3', price = 1000000, banned = false, name = 'Yosemite 3', trunk = 70, type = 'outros' },
	[GetHashKey('bfinjection')] = { model = 'bfinjection', price = 60000, banned = false, name = 'Bfinjection', trunk = 20, type = 'suvs' },
	[GetHashKey('bifta')] = { model = 'bifta', price = 800000, banned = false, name = 'Bifta', trunk = 20, type = 'suvs' },
	[GetHashKey('bodhi2')] = { model = 'bodhi2', price = 900000, banned = false, name = 'Bodhi2', trunk = 90, type = 'suvs' },
	[GetHashKey('brawler')] = { model = 'brawler', price = 4000000, banned = false, name = 'Brawler', trunk = 100, type = 'outros' },
	[GetHashKey('trophytruck')] = { model = 'trophytruck', price = 2000000, banned = false, name = 'Trophytruck', trunk = 10, type = 'suvs' },
	[GetHashKey('trophytruck2')] = { model = 'trophytruck2', price = 2000000, banned = false, name = 'Trophytruck2', trunk = 15, type = 'suvs' },
	[GetHashKey('dubsta3')] = { model = 'dubsta3', price = 5000000, banned = false, name = 'Dubsta3', trunk = 90, type = 'suvs' },
	[GetHashKey('mesa3')] = { model = 'mesa3', price = 1835000, banned = false, name = 'Mesa3', trunk = 60, type = 'suvs' },
	[GetHashKey('rancherxl')] = { model = 'rancherxl', price = 200000, banned = false, name = 'Rancherxl', trunk = 70, type = 'suvs' },
	[GetHashKey('rebel')] = { model = 'rebel', price = 2500000, banned = false, name = 'Rebel', trunk = 250, type = 'service' },
	[GetHashKey('rebel2')] = { model = 'rebel2', price = 2000000, banned = false, name = 'Rebel2', trunk = 200, type = 'suvs' },
	[GetHashKey('riata')] = { model = 'riata', price = 2500000, banned = false, name = 'Riata', trunk = 250, type = 'suvs' },
	[GetHashKey('dloader')] = { model = 'dloader', price = 150000, banned = false, name = 'Dloader', trunk = 80, type = 'outros' },
	[GetHashKey('ratloader')] = { model = 'ratloader', price = 1000000, banned = false, name = 'Caminhão', trunk = 80, type = 'service' },
	[GetHashKey('sandking')] = { model = 'sandking', price = 2500000, banned = false, name = 'Sandking', trunk = 250, type = 'suvs' },
	[GetHashKey('sandking2')] = { model = 'sandking2', price = 2500000, banned = false, name = 'Sandking2', trunk = 250, type = 'outros' },
	[GetHashKey('baller')] = { model = 'baller', price = 1000000, banned = false, name = 'Baller', trunk = 50, type = 'suvs' },
	[GetHashKey('baller2')] = { model = 'baller2', price = 1835000, banned = false, name = 'Baller2', trunk = 50, type = 'suvs' },
	[GetHashKey('baller3')] = { model = 'baller3', price = 2000000, banned = false, name = 'Baller3', trunk = 50, type = 'suvs' },
	[GetHashKey('baller4')] = { model = 'baller4', price = 2500000, banned = false, name = 'Baller4', trunk = 50, type = 'suvs' },
		-- aqui
	[GetHashKey('baller5')] = { model = 'baller5', price = 270000, banned = false, name = 'Baller5', trunk = 50, type = 'vip' },
	[GetHashKey('oppressor2')] = { model = 'oppressor2', price = 100000, banned = false, name = 'oppressor2', trunk = 30, type = 'vip' },
	
	[GetHashKey('baller6')] = { model = 'baller6', price = 280000, banned = false, name = 'Baller6', trunk = 50, type = 'suvs' },
	[GetHashKey('bjxl')] = { model = 'bjxl', price = 1000000, banned = false, name = 'Bjxl', trunk = 50, type = 'suvs' },
	[GetHashKey('cavalcade')] = { model = 'cavalcade', price = 500000, banned = false, name = 'Cavalcade', trunk = 60, type = 'suvs' },
	[GetHashKey('cavalcade2')] = { model = 'cavalcade2', price = 200000, banned = false, name = 'Cavalcade2', trunk = 60, type = 'suvs' },
	[GetHashKey('contender')] = { model = 'contender', price = 7000000, banned = false, name = 'Contender', trunk = 80, type = 'suvs' },
	[GetHashKey('dubsta')] = { model = 'dubsta', price = 1835000, banned = false, name = 'Dubsta', trunk = 70, type = 'suvs' },
	[GetHashKey('dubsta2')] = { model = 'dubsta2', price = 2000000, banned = false, name = 'Dubsta2', trunk = 70, type = 'suvs' },
	[GetHashKey('fq2')] = { model = 'fq2', price = 400000, banned = false, name = 'Fq2', trunk = 50, type = 'suvs' },
	[GetHashKey('granger')] = { model = 'granger', price = 600000, banned = false, name = 'Granger', trunk = 100, type = 'suvs' },
	[GetHashKey('gresley')] = { model = 'gresley', price = 300000, banned = false, name = 'Gresley', trunk = 50, type = 'suvs' },
	[GetHashKey('habanero')] = { model = 'habanero', price = 220000, banned = false, name = 'Habanero', trunk = 50, type = 'suvs' },
	[GetHashKey('seminole')] = { model = 'seminole', price = 230000, banned = false, name = 'Seminole', trunk = 60, type = 'suvs' },
	[GetHashKey('seminole2')] = { model = 'seminole2', price = 800000, banned = false, name = 'Seminole 2', trunk = 70, type = 'suvs' },
	[GetHashKey('serrano')] = { model = 'serrano', price = 250000, banned = false, name = 'Serrano', trunk = 50, type = 'suvs' },
	[GetHashKey('xls')] = { model = 'xls', price = 400000, banned = false, name = 'Xls', trunk = 50, type = 'suvs' },
	[GetHashKey('xls2')] = { model = 'xls2', price = 350000, banned = false, name = 'Xls2', trunk = 50, type = 'outros' },
	[GetHashKey('asea')] = { model = 'asea', price = 100000, banned = false, name = 'Asea', trunk = 30, type = 'sedans' },
	[GetHashKey('asterope')] = { model = 'asterope', price = 150000, banned = false, name = 'Asterope', trunk = 30, type = 'sedans' },
	[GetHashKey('cog55')] = { model = 'cog55', price = 200000, banned = false, name = 'Cog55', trunk = 50, type = 'sedans' },
	[GetHashKey('cog552')] = { model = 'cog552', price = 200000, banned = false, name = 'Cog552', trunk = 50, type = 'outros' },
	[GetHashKey('cognoscenti')] = { model = 'cognoscenti', price = 190000, banned = false, name = 'Cognoscenti', trunk = 50, type = 'outros' },
	[GetHashKey('cognoscenti2')] = { model = 'cognoscenti2', price = 200000, banned = false, name = 'Cognoscenti2', trunk = 50, type = 'outros' },
	[GetHashKey('stanier')] = { model = 'stanier', price = 130000, banned = false, name = 'Stanier', trunk = 60, type = 'sedans' },
	[GetHashKey('stratum')] = { model = 'stratum', price = 100000, banned = false, name = 'Stratum', trunk = 70, type = 'sedans' },
	[GetHashKey('importsd')] = { model = 'importsd', price = 150000, banned = false, name = 'importsd', trunk = 30, type = 'sedans' },
	[GetHashKey('surge')] = { model = 'surge', price = 220000, banned = false, name = 'Surge', trunk = 60, type = 'sedans' },
	[GetHashKey('tailgater')] = { model = 'tailgater', price = 160000, banned = false, name = 'Tailgater', trunk = 50, type = 'sedans' },
	[GetHashKey('warrener')] = { model = 'warrener', price = 100000, banned = false, name = 'Warrener', trunk = 40, type = 'sedans' },
	[GetHashKey('washington')] = { model = 'washington', price = 150000, banned = false, name = 'Washington', trunk = 60, type = 'sedans' },
	[GetHashKey('alpha')] = { model = 'alpha', price = 200000, banned = false, name = 'Alpha', trunk = 40, type = 'outros' },
	[GetHashKey('banshee')] = { model = 'banshee', price = 300000, banned = false, name = 'Banshee', trunk = 30, type = 'outros' },
	[GetHashKey('bestiagts')] = { model = 'bestiagts', price = 400000, banned = false, name = 'Bestiagts', trunk = 60, type = 'outros' },
	[GetHashKey('blista2')] = { model = 'blista2', price = 100000, banned = false, name = 'Blista2', trunk = 40, type = 'outros' },
	[GetHashKey('blista3')] = { model = 'blista3', price = 200000, banned = false, name = 'Blista3', trunk = 40, type = 'outros' },
	[GetHashKey('buffalo')] = { model = 'buffalo', price = 450000, banned = false, name = 'Buffalo', trunk = 50, type = 'outros' },
	[GetHashKey('buffalo2')] = { model = 'buffalo2', price = 450000, banned = false, name = 'Buffalo2', trunk = 30, type = 'outros' },
	[GetHashKey('buffalo3')] = { model = 'buffalo3', price = 400000, banned = false, name = 'Buffalo3', trunk = 50, type = 'outros' },
	[GetHashKey('carbonizzare')] = { model = 'carbonizzare', price = 1835000, banned = false, name = 'Carbonizzare', trunk = 30, type = 'outros' },
	[GetHashKey('comet2')] = { model = 'comet2', price = 400000, banned = false, name = 'Comet2', trunk = 40, type = 'outros' },
	[GetHashKey('comet3')] = { model = 'comet3', price = 500000, banned = false, name = 'Comet3', trunk = 40, type = 'outros' },
	[GetHashKey('comet5')] = { model = 'comet5', price = 1250000, banned = false, name = 'Comet5', trunk = 40, type = 'outros' },
	[GetHashKey('coquette')] = { model = 'coquette', price = 500000, banned = false, name = 'Coquette', trunk = 30, type = 'outros' },
	[GetHashKey('coquette4')] = { model = 'coquette4', price = 8000000, banned = false, name = 'Coquette 4', trunk = 130, type = 'outros' },
	[GetHashKey('elegy')] = { model = 'elegy', price = 500000, banned = false, name = 'Elegy', trunk = 30, type = 'outros' },
	[GetHashKey('elegy2')] = { model = 'elegy2', price = 400000, banned = false, name = 'Elegy2', trunk = 30, type = 'outros' },
	[GetHashKey('feltzer2')] = { model = 'feltzer2', price = 200000, banned = false, name = 'Feltzer2', trunk = 40, type = 'outros' },
	[GetHashKey('furoregt')] = { model = 'furoregt', price = 200000, banned = false, name = 'Furoregt', trunk = 30, type = 'outros' },
	[GetHashKey('fusilade')] = { model = 'fusilade', price = 200000, banned = false, name = 'Fusilade', trunk = 40, type = 'outros' },
	[GetHashKey('futo')] = { model = 'futo', price = 150000, banned = false, name = 'Futo', trunk = 40, type = 'outros' },
	[GetHashKey('jester')] = { model = 'jester', price = 5000000, banned = false, name = 'Jester', trunk = 30, type = 'outros' },
	[GetHashKey('khamelion')] = { model = 'khamelion', price = 1000000, banned = false, name = 'Khamelion', trunk = 50, type = 'outros' },
	[GetHashKey('kuruma2')] = { model = "kuruma2", price = 3000000, banned = false, name = 'Kuruma 2', trunk = 30, type = 'vip' },
	[GetHashKey('kuruma')] = { model = 'kuruma', price = 750000, banned = false, name = 'Kuruma', trunk = 40, type = 'outros' },

	[GetHashKey('armored18velar')] = { model = "armored18velar", price = 3000000, banned = false, name = 'Velar Blindada', trunk = 80, type = 'vip' },
	[GetHashKey('armoredx7m60i')] = { model = "armoredx7m60i", price = 3000000, banned = false, name = 'X7 2024 Blindada', trunk = 80, type = 'vip' },

	[GetHashKey('wri8e')] = { model = "wri8e", price = 3000000, banned = false, name = 'I8E 2021', trunk = 40, type = 'vip' },
	[GetHashKey('wrlwcla45')] = { model = "wrlwcla45", price = 3000000, banned = false, name = 'A45 LW', trunk = 40, type = 'vip' },
	[GetHashKey('22macgt')] = { model = "22macgt", price = 3000000, banned = false, name = 'Mustang Mach-E', trunk = 40, type = 'vip' },
	[GetHashKey('er34n')] = { model = "er34n", price = 3000000, banned = false, name = 'ER34 (Skyline 4 Portas)', trunk = 40, type = 'vip' },
	[GetHashKey('s15lbwk')] = { model = "s15lbwk", price = 3000000, banned = false, name = 'S15 LW', trunk = 40, type = 'vip' },
	[GetHashKey('ram226x6')] = { model = "ram226x6", price = 3000000, banned = false, name = 'RAM TRX 6X6', trunk = 40, type = 'vip' },
	[GetHashKey('etrongt22')] = { model = "etrongt22", price = 3000000, banned = false, name = 'Audi E-TRON', trunk = 40, type = 'vip' },
	[GetHashKey('23s63l')] = { model = "23s63l", price = 3000000, banned = false, name = 'S63 Luxury', trunk = 40, type = 'vip' },
	[GetHashKey('xplaid24c')] = { model = "xplaid24c", price = 3000000, banned = false, name = 'Tesla Model X', trunk = 40, type = 'vip' },
	[GetHashKey('noire19wb')] = { model = "noire19wb", price = 2000000, banned = false, name = 'Bugatti La Voiture Noire', trunk = 40, type = 'vip' },
	[GetHashKey('x7m60i')] = { model = "x7m60i", price = 3000000, banned = false, name = 'BMW X7 2024', trunk = 40, type = 'vip' },
	[GetHashKey('m3g80c')] = { model = "m3g80c", price = 3000000, banned = false, name = 'BMW M3 G80 Competition', trunk = 40, type = 'vip' },
	[GetHashKey('lexuslfa')] = { model = "lexuslfa", price = 3000000, banned = false, name = 'Lexus LFA', trunk = 40, type = 'vip' },
	[GetHashKey('wrxt660civ')] = { model = "wrxt660civ", price = 3000000, banned = false, name = 'XT 660 Nova', trunk = 15, type = 'vip' },
	[GetHashKey('wrtiger1200')] = { model = "wrtiger1200", price = 3000000, banned = false, name = 'Tiger 1200', trunk = 15, type = 'vip' },


	[GetHashKey('massacro')] = { model = 'massacro', price = 750000, banned = false, name = 'Massacro', trunk = 40, type = 'outros' },
	[GetHashKey('massacro2')] = { model = 'massacro2', price = 1000000, banned = false, name = 'Massacro2', trunk = 40, type = 'outros' },
	[GetHashKey('ninef')] = { model = 'ninef', price = 950000, banned = false, name = 'Ninef', trunk = 40, type = 'outros' },
	[GetHashKey('ninef2')] = { model = 'ninef2', price = 950000, banned = false, name = 'Ninef2', trunk = 40, type = 'outros' },
	[GetHashKey('omnis')] = { model = 'omnis', price = 200000, banned = false, name = 'Omnis', trunk = 20, type = 'outros' },
	[GetHashKey('pariah')] = { model = 'pariah', price = 950000, banned = false, name = 'Pariah', trunk = 30, type = 'outros' },
	[GetHashKey('penumbra')] = { model = 'penumbra', price = 800000, banned = false, name = 'Penumbra', trunk = 40, type = 'outros' },
	[GetHashKey('raiden')] = { model = 'raiden', price = 850000, banned = false, name = 'Raiden', trunk = 50, type = 'outros' },
	[GetHashKey('rapidgt')] = { model = 'rapidgt', price = 800000, banned = false, name = 'Rapidgt', trunk = 20, type = 'outros' },
	[GetHashKey('rapidgt2')] = { model = 'rapidgt2', price = 1000000, banned = false, name = 'Rapidgt2', trunk = 20, type = 'outros' },
	[GetHashKey('ruston')] = { model = 'ruston', price = 3000000, banned = false, name = 'Ruston', trunk = 30, type = 'outros' },
	[GetHashKey('schafter3')] = { model = 'schafter3', price = 300000, banned = false, name = 'Schafter3', trunk = 50, type = 'outros' },
	[GetHashKey('schafter4')] = { model = 'schafter4', price = 250000, banned = false, name = 'Schafter4', trunk = 30, type = 'outros' },
	[GetHashKey('schafter5')] = { model = 'schafter5', price = 175000, banned = false, name = 'Schafter5', trunk = 50, type = 'outros' },
	[GetHashKey('schwarzer')] = { model = 'schwarzer', price = 250000, banned = false, name = 'Schwarzer', trunk = 50, type = 'outros' },
	[GetHashKey('sentinel3')] = { model = 'sentinel3', price = 350000, banned = false, name = 'Sentinel3', trunk = 30, type = 'outros' },
	[GetHashKey('seven70')] = { model = 'seven70', price = 1000000, banned = false, name = 'Seven70', trunk = 20, type = 'outros' },
	[GetHashKey('specter')] = { model = 'specter', price = 2000000, banned = false, name = 'Specter', trunk = 20, type = 'outros' },
	[GetHashKey('specter2')] = { model = 'specter2', price = 900000, banned = false, name = 'Specter2', trunk = 20, type = 'outros' },
	[GetHashKey('streiter')] = { model = 'streiter', price = 600000, banned = false, name = 'Streiter', trunk = 70, type = 'outros' },
	[GetHashKey('sultan')] = { model = 'sultan', price = 800000, banned = false, name = 'Sultan', trunk = 50, type = 'outros' },
	[GetHashKey('surano')] = { model = 'surano', price = 1835000, banned = false, name = 'Surano', trunk = 30, type = 'outros' },
	[GetHashKey('tampa2')] = { model = 'tampa2', price = 300000, banned = false, name = 'Tampa2', trunk = 20, type = 'outros' },
	[GetHashKey('tropos')] = { model = 'tropos', price = 450000, banned = false, name = 'Tropos', trunk = 20, type = 'outros' },
	[GetHashKey('verlierer2')] = { model = 'verlierer2', price = 350000, banned = false, name = 'Verlierer2', trunk = 20, type = 'outros' },
	[GetHashKey('btype')] = { model = 'btype', price = 1000000, banned = false, name = 'Btype', trunk = 40, type = 'outros' },
	[GetHashKey('btype2')] = { model = 'btype2', price = 1835000, banned = false, name = 'Btype2', trunk = 20, type = 'outros' },
	[GetHashKey('btype3')] = { model = 'btype3', price = 1000000, banned = false, name = 'Btype3', trunk = 40, type = 'outros' },
	[GetHashKey('casco')] = { model = 'casco', price = 500000, banned = false, name = 'Casco', trunk = 50, type = 'outros' },
	[GetHashKey('cheetah')] = { model = 'cheetah', price = 1000000, banned = false, name = 'Cheetah', trunk = 20, type = 'imports' },
	[GetHashKey('coquette2')] = { model = 'coquette2', price = 400000, banned = false, name = 'Coquette2', trunk = 40, type = 'outros' },
	[GetHashKey('feltzer3')] = { model = 'feltzer3', price = 390000, banned = false, name = 'Feltzer3', trunk = 40, type = 'outros' },
	[GetHashKey('gt500')] = { model = 'gt500', price = 600000, banned = false, name = 'GT500', trunk = 40, type = 'outros' },
	[GetHashKey('infernus2')] = { model = 'infernus2', price = 1000000, banned = false, name = 'Infernus2', trunk = 20, type = 'outros' },
	[GetHashKey('jb700')] = { model = 'jb700', price = 250000, banned = false, name = 'Jb700', trunk = 30, type = 'outros' },
	[GetHashKey('mamba')] = { model = 'mamba', price = 400000, banned = false, name = 'Mamba', trunk = 50, type = 'outros' },
	[GetHashKey('manana')] = { model = 'manana', price = 75000, banned = false, name = 'Manana', trunk = 60, type = 'outros' },
	[GetHashKey('monroe')] = { model = 'monroe', price = 400000, banned = false, name = 'Monroe', trunk = 20, type = 'outros' },
	[GetHashKey('peyote')] = { model = 'peyote', price = 80000, banned = false, name = 'Peyote', trunk = 50, type = 'outros' },
	[GetHashKey('pigalle')] = { model = 'pigalle', price = 80000, banned = false, name = 'Pigalle', trunk = 60, type = 'outros' },
	[GetHashKey('rapidgt3')] = { model = 'rapidgt3', price = 650000, banned = false, name = 'Rapidgt3', trunk = 40, type = 'outros' },
	[GetHashKey('retinue')] = { model = 'retinue', price = 200000, banned = false, name = 'Retinue', trunk = 40, type = 'outros' },
	[GetHashKey('stinger')] = { model = 'stinger', price = 450000, banned = false, name = 'Stinger', trunk = 20, type = 'outros' },
	[GetHashKey('stingergt')] = { model = 'stingergt', price = 400000, banned = false, name = 'Stingergt', trunk = 20, type = 'outros' },
	[GetHashKey('torero')] = { model = 'torero', price = 300000, banned = false, name = 'Torero', trunk = 30, type = 'outros' },
	[GetHashKey('tornado')] = { model = 'tornado', price = 100000, banned = false, name = 'Tornado', trunk = 70, type = 'outros' },
	[GetHashKey('tornado2')] = { model = 'tornado2', price = 300000, banned = false, name = 'Tornado2', trunk = 60, type = 'outros' },
	[GetHashKey('tornado5')] = { model = 'tornado5', price = 500000, banned = false, name = 'Tornado5', trunk = 60, type = 'outros' },
	[GetHashKey('tornado6')] = { model = 'tornado6', price = 800000, banned = false, name = 'Tornado6', trunk = 50, type = 'outros' },
	[GetHashKey('turismo2')] = { model = 'turismo2', price = 1000000, banned = false, name = 'Turismo2', trunk = 30, type = 'outros' },
	[GetHashKey('ztype')] = { model = 'ztype', price = 1000000, banned = false, name = 'Ztype', trunk = 20, type = 'outros' },
	[GetHashKey('adder')] = { model = 'adder', price = 700000, banned = false, name = 'Adder', trunk = 20, type = 'outros' },
	[GetHashKey('autarch')] = { model = 'autarch', price = 3000000, banned = false, name = 'Autarch', trunk = 20, type = 'imports' },
	[GetHashKey('banshee2')] = { model = 'banshee2', price = 700000, banned = false, name = 'Banshee2', trunk = 20, type = 'imports' },
	[GetHashKey('bullet')] = { model = 'bullet', price = 800000, banned = false, name = 'Bullet', trunk = 20, type = 'imports' },
	[GetHashKey('cheetah2')] = { model = 'cheetah2', price = 1000000, banned = false, name = 'Cheetah2', trunk = 20, type = 'outros' },
	[GetHashKey('entityxf')] = { model = 'entityxf', price = 1835000, banned = false, name = 'Entityxf', trunk = 20, type = 'imports' },
	[GetHashKey('fmj')] = { model = 'fmj', price = 1200000, banned = false, name = 'Fmj', trunk = 20, type = 'imports' },
	[GetHashKey('gp1')] = { model = 'gp1', price = 2000000, banned = false, name = 'Gp1', trunk = 20, type = 'imports' },
	[GetHashKey('infernus')] = { model = 'infernus', price = 700000, banned = false, name = 'Infernus', trunk = 20, type = 'imports' },
	[GetHashKey('nero')] = { model = 'nero', price = 4500000, banned = false, name = 'Nero', trunk = 20, type = 'imports' },
	[GetHashKey('nero2')] = { model = 'nero2', price = 3000000, banned = false, name = 'Nero2', trunk = 20, type = 'imports' },
	[GetHashKey('osiris')] = { model = 'osiris', price = 4000000, banned = false, name = 'Osiris', trunk = 20, type = 'imports' },
	[GetHashKey('penetrator')] = { model = 'penetrator', price = 1200000, banned = false, name = 'Penetrator', trunk = 20, type = 'imports' },
	[GetHashKey('pfister811')] = { model = 'pfister811', price = 2000000, banned = false, name = 'Pfister811', trunk = 20, type = 'imports' },
	[GetHashKey('reaper')] = { model = 'reaper', price = 2500000, banned = false, name = 'Reaper', trunk = 20, type = 'imports' },
	[GetHashKey('sc1')] = { model = 'sc1', price = 2500000, banned = false, name = 'Sc1', trunk = 20, type = 'imports' },
	[GetHashKey('sultanrs')] = { model = 'sultanrs', price = 2000000, banned = false, name = 'Sultan RS', trunk = 30, type = 'imports' },
	[GetHashKey('t20')] = { model = 't20', price = 2500000, banned = false, name = 'T20', trunk = 20, type = 'imports' },
	[GetHashKey('tempesta')] = { model = 'tempesta', price = 4000000, banned = false, name = 'Tempesta', trunk = 20, type = 'imports' },
	[GetHashKey('turismor')] = { model = 'turismor', price = 5000000, banned = false, name = 'Turismor', trunk = 20, type = 'imports' },
	[GetHashKey('tyrus')] = { model = 'tyrus', price = 1200000, banned = false, name = 'Tyrus', trunk = 20, type = 'imports' },
	[GetHashKey('vacca')] = { model = 'vacca', price = 1000000, banned = false, name = 'Vacca', trunk = 30, type = 'imports' },
	[GetHashKey('visione')] = { model = 'visione', price = 10000000, banned = false, name = 'Visione', trunk = 20, type = 'imports' },
	[GetHashKey('voltic')] = { model = 'voltic', price = 800000, banned = false, name = 'Voltic', trunk = 20, type = 'imports' },
	[GetHashKey('zentorno')] = { model = 'zentorno', price = 10000000, banned = false, name = 'Zentorno', trunk = 20, type = 'imports' },
	[GetHashKey('sadler')] = { model = 'sadler', price = 1835000, banned = false, name = 'Sadler', trunk = 70, type = 'utility' },
	[GetHashKey('bison')] = { model = 'bison', price = 1000000, banned = false, name = 'Bison', trunk = 70, type = 'outros' },
	[GetHashKey('bison2')] = { model = 'bison2', price = 1000000, banned = false, name = 'Bison2', trunk = 70, type = 'outros' },
	[GetHashKey('bobcatxl')] = { model = 'bobcatxl', price = 650000, banned = false, name = 'Bobcatxl', trunk = 100, type = 'outros' },
	[GetHashKey('burrito')] = { model = 'burrito', price = 2000000, banned = false, name = 'Burrito', trunk = 200, type = 'outros' },
	[GetHashKey('burrito2')] = { model = 'burrito2', price = 6000000, banned = false, name = 'Burrito2', trunk = 300, type = 'outros' },
	[GetHashKey('burrito3')] = { model = 'burrito3', price = 8000000, banned = false, name = 'Burrito3', trunk = 400, type = 'outros' },
	[GetHashKey('burrito4')] = { model = 'burrito4', price = 10000000, banned = false, name = 'Burrito4', trunk = 500, type = 'outros' },
	[GetHashKey('minivan')] = { model = 'minivan', price = 800000, banned = false, name = 'Minivan', trunk = 70, type = 'outros' },
	[GetHashKey('minivan2')] = { model = 'minivan2', price = 5000000, banned = false, name = 'Minivan2', trunk = 60, type = 'outros' },
	[GetHashKey('paradise')] = { model = 'paradise', price = 1000000, banned = false, name = 'Paradise', trunk = 120, type = 'outros' },
	[GetHashKey('pony')] = { model = 'pony', price = 160000, banned = false, name = 'Pony', trunk = 120, type = 'outros' },
	[GetHashKey('pony2')] = { model = 'pony2', price = 2000000, banned = false, name = 'Pony2', trunk = 120, type = 'outros' },
	[GetHashKey('rumpo')] = { model = 'rumpo', price = 1000000, banned = false, name = 'Rumpo', trunk = 120, type = 'outros' },
	[GetHashKey('rumpo2')] = { model = 'rumpo2', price = 160000, banned = false, name = 'Rumpo2', trunk = 120, type = 'outros' },
	[GetHashKey('rumpo3')] = { model = 'rumpo3', price = 2000000, banned = false, name = 'Rumpo3', trunk = 120, type = 'vip' },
	[GetHashKey('speedo')] = { model = 'speedo', price = 500000, banned = false, name = 'Speedo', trunk = 120, type = 'service' },
	[GetHashKey('surfer')] = { model = 'surfer', price = 500000, banned = false, name = 'Surfer', trunk = 120, type = 'outros' },
	[GetHashKey('youga')] = { model = 'youga', price = 1835000, banned = false, name = 'Youga', trunk = 250, type = 'outros' },
	[GetHashKey('youga2')] = { model = 'youga2', price = 750000, banned = false, name = 'Youga2', trunk = 80, type = 'service' },
	[GetHashKey('youga3')] = { model = 'youga3', price = 750000, banned = false, name = 'Youga3', trunk = 250, type = 'service' },
	[GetHashKey('tractor2')] = { model = 'tractor2', price = 160000, banned = false, name = 'Tractor2', trunk = 80, type = 'service' },
	[GetHashKey('huntley')] = { model = 'huntley', price = 400000, banned = false, name = 'Huntley', trunk = 60, type = 'suvs' },
	[GetHashKey('landstalker')] = { model = 'landstalker', price = 600000, banned = false, name = 'Landstalker', trunk = 70, type = 'suvs' },
	[GetHashKey('landstalker2')] = { model = 'landstalker2', price = 800000, banned = false, name = 'Landstalker 2', trunk = 70, type = 'suvs' },
	[GetHashKey('mesa')] = { model = 'mesa', price = 400000, banned = false, name = 'Mesa', trunk = 50, type = 'suvs' },
	[GetHashKey('patriot')] = { model = 'patriot', price = 800000, banned = false, name = 'Patriot', trunk = 70, type = 'suvs' },
	[GetHashKey('radi')] = { model = 'radi', price = 300000, banned = false, name = 'Radi', trunk = 50, type = 'suvs' },
	[GetHashKey('rocoto')] = { model = 'rocoto', price = 110000, banned = false, name = 'Rocoto', trunk = 60, type = 'suvs' },
	[GetHashKey('tyrant')] = { model = 'tyrant', price = 5000000, banned = false, name = 'Tyrant', trunk = 30, type = 'imports' },
	[GetHashKey('entity2')] = { model = 'entity2', price = 1835000, banned = false, name = 'Entity2', trunk = 20, type = 'imports' },
	[GetHashKey('cheburek')] = { model = 'cheburek', price = 230000, banned = false, name = 'Cheburek', trunk = 50, type = 'outros' },
	[GetHashKey('hotring')] = { model = 'hotring', price = 500000, banned = false, name = 'Hotring', trunk = 60, type = 'outros' },
	[GetHashKey('jester2')] = { model = "jester2", price = 1000000, banned = false, name = 'Jester 2', trunk = 30, type = 'imports'},
	[GetHashKey('jester3')] = { model = 'jester3', price = 1000000, banned = false, name = 'Jester3', trunk = 30, type = 'outros' },
	[GetHashKey('flashgt')] = { model = 'flashgt', price = 700000, banned = false, name = 'Flashgt', trunk = 30, type = 'outros' },
	[GetHashKey('ellie')] = { model = 'ellie', price = 400000, banned = false, name = 'Ellie', trunk = 50, type = 'outros' },
	[GetHashKey('michelli')] = { model = 'michelli', price = 200000, banned = false, name = 'Michelli', trunk = 40, type = 'outros' },
	[GetHashKey('fagaloa')] = { model = 'fagaloa', price = 100000, banned = false, name = 'Fagaloa', trunk = 80, type = 'outros' },
	[GetHashKey('dominator3')] = { model = 'dominator3', price = 400000, banned = false, name = 'Dominator3', trunk = 30, type = 'outros' },
	[GetHashKey('issi3')] = { model = 'issi3', price = 100000, banned = false, name = 'Issi3', trunk = 20, type = 'outros' },
	[GetHashKey('taipan')] = { model = 'taipan', price = 2000000, banned = false, name = 'Taipan', trunk = 20, type = 'imports' },
	[GetHashKey('gb200')] = { model = 'gb200', price = 500000, banned = false, name = 'Gb200', trunk = 20, type = 'outros' },
	[GetHashKey('guardian')] = { model = 'guardian', price = 5000000, banned = false, name = 'Guardian', trunk = 150, type = 'industrial' },
	[GetHashKey('kamacho')] = { model = 'kamacho', price = 1835000, banned = false, name = 'Kamacho', trunk = 90, type = 'suvs' },
	[GetHashKey('neon')] = { model = 'neon', price = 2000000, banned = false, name = 'Neon', trunk = 30, type = 'outros' },
	[GetHashKey('cyclone')] = { model = 'cyclone', price = 1000000, banned = false, name = 'Cyclone', trunk = 20, type = 'imports' },
	[GetHashKey('italigtb')] = { model = 'italigtb', price = 1000000, banned = false, name = 'Italigtb', trunk = 20, type = 'imports' },
	[GetHashKey('italigtb2')] = { model = 'italigtb2', price = 1835000, banned = false, name = 'Italigtb2', trunk = 20, type = 'imports' },
	[GetHashKey('vagner')] = { model = 'vagner', price = 2000000, banned = false, name = 'Vagner', trunk = 20, type = 'imports' },
	[GetHashKey('xa21')] = { model = 'xa21', price = 10000000, banned = false, name = 'Xa21', trunk = 20, type = 'imports' },
	[GetHashKey('tezeract')] = { model = 'tezeract', price = 7000000, banned = false, name = 'Tezeract', trunk = 20, type = 'outros' },
	[GetHashKey('prototipo')] = { model = 'prototipo', price = 10000000, banned = false, name = 'Prototipo', trunk = 20, type = 'imports' },
	[GetHashKey('patriot2')] = { model = 'patriot2', price = 5000000, banned = false, name = 'Patriot2', trunk = 60, type = 'suvs' },
	[GetHashKey('stafford')] = { model = 'stafford', price = 200000, banned = false, name = 'Stafford', trunk = 40, type = 'sedans' },
	[GetHashKey('swinger')] = { model = 'swinger', price = 550000, banned = false, name = 'Swinger', trunk = 20, type = 'outros' },
	[GetHashKey('clique')] = { model = 'clique', price = 200000, banned = false, name = 'Clique', trunk = 40, type = 'outros' },
	[GetHashKey('deveste')] = { model = 'deveste', price = 2000000, banned = false, name = 'Deveste', trunk = 20, type = 'outros' },
	[GetHashKey('deviant')] = { model = 'deviant', price = 1000000, banned = false, name = 'Deviant', trunk = 50, type = 'outros' },
	[GetHashKey('impaler')] = { model = 'impaler', price = 1300000, banned = false, name = 'Impaler', trunk = 60, type = 'outros' },
	[GetHashKey('italigto')] = { model = 'italigto', price = 5000000, banned = false, name = 'Italigto', trunk = 30, type = 'outros' },
	[GetHashKey('schlagen')] = { model = 'schlagen', price = 500000, banned = false, name = 'Schlagen', trunk = 30, type = 'outros' },
	[GetHashKey('toros')] = { model = 'toros', price = 5000000, banned = false, name = 'Toros', trunk = 50, type = 'suvs' },
	[GetHashKey('tulip')] = { model = 'tulip', price = 850000, banned = false, name = 'Tulip', trunk = 60, type = 'outros' },
	[GetHashKey('vamos')] = { model = 'vamos', price = 900000, banned = false, name = 'Vamos', trunk = 60, type = 'outros' },
	[GetHashKey('freecrawler')] = { model = 'freecrawler', price = 900000, banned = false, name = 'Freecrawler', trunk = 50, type = 'suvs' },
	[GetHashKey('fugitive')] = { model = 'fugitive', price = 190000, banned = false, name = 'Fugitive', trunk = 30, type = 'sedans' },
	[GetHashKey('le7b')] = { model = 'le7b', price = 3000000, banned = false, name = 'Le7b', trunk = 20, type = 'imports' },
	[GetHashKey('lurcher')] = { model = 'lurcher', price = 200000, banned = false, name = 'Lurcher', trunk = 60, type = 'outros' },
	[GetHashKey('lynx')] = { model = 'lynx', price = 800000, banned = false, name = 'Lynx', trunk = 30, type = 'outros' },
	[GetHashKey('raptor')] = { model = 'raptor', price = 1000000, banned = false, name = 'Raptor', trunk = 20, type = 'outros' },
	[GetHashKey('sheava')] = { model = 'sheava', price = 4000000, banned = false, name = 'Sheava', trunk = 20, type = 'imports' },
	[GetHashKey('z190')] = { model = 'z190', price = 400000, banned = false, name = 'Z190', trunk = 40, type = 'outros' },
	[GetHashKey('akuma')] = { model = 'akuma', price = 2000000, banned = false, name = 'Akuma', trunk = 15, type = 'motos' },
	[GetHashKey('avarus')] = { model = 'avarus', price = 200000, banned = false, name = 'Avarus', trunk = 15, type = 'motos' },
	[GetHashKey('bagger')] = { model = 'bagger', price = 200000, banned = false, name = 'Bagger', trunk = 40, type = 'motos' },
	[GetHashKey('bati')] = { model = 'bati', price = 1000000, banned = false, name = 'Bati', trunk = 15, type = 'motos' },
	[GetHashKey('bati2')] = { model = 'bati2', price = 800000, banned = false, name = 'Bati2', trunk = 15, type = 'motos' },
	[GetHashKey('bf400')] = { model = 'bf400', price = 1000000, banned = false, name = 'Bf400', trunk = 15, type = 'motos' },
	[GetHashKey('carbonrs')] = { model = 'carbonrs', price = 800000, banned = false, name = 'Carbonrs', trunk = 15, type = 'motos' },
	[GetHashKey('chimera')] = { model = 'chimera', price = 400000, banned = false, name = 'Chimera', trunk = 15, type = 'motos' },
	[GetHashKey('cliffhanger')] = { model = 'cliffhanger', price = 250000, banned = false, name = 'Cliffhanger', trunk = 15, type = 'motos' },
	[GetHashKey('daemon')] = { model = 'daemon', price = 200000, banned = false, name = 'Daemon', trunk = 15, type = 'motos' },
	[GetHashKey('daemon2')] = { model = 'daemon2', price = 200000, banned = false, name = 'Daemon2', trunk = 15, type = 'motos' },
	[GetHashKey('defiler')] = { model = 'defiler', price = 700000, banned = false, name = 'Defiler', trunk = 15, type = 'motos' },
	[GetHashKey('diablous')] = { model = 'diablous', price = 500000, banned = false, name = 'Diablous', trunk = 15, type = 'motos' },
	[GetHashKey('diablous2')] = { model = 'diablous2', price = 700000, banned = false, name = 'Diablous2', trunk = 15, type = 'motos' },
	[GetHashKey('double')] = { model = 'double', price = 800000, banned = false, name = 'Double', trunk = 15, type = 'motos' },
	[GetHashKey('enduro')] = { model = 'enduro', price = 400000, banned = false, name = 'Enduro', trunk = 15, type = 'motos' },
	[GetHashKey('esskey')] = { model = 'esskey', price = 400000, banned = false, name = 'Esskey', trunk = 15, type = 'motos' },
	[GetHashKey('faggio')] = { model = 'faggio', price = 4000, banned = false, name = 'Faggio', trunk = 30, type = 'motos' },
	[GetHashKey('faggio2')] = { model = 'faggio2', price = 5000, banned = false, name = 'Faggio2', trunk = 30, type = 'motos' },
	[GetHashKey('faggio3')] = { model = 'faggio3', price = 5000, banned = false, name = 'Faggio3', trunk = 30, type = 'motos' },
	[GetHashKey('fcr')] = { model = 'fcr', price = 300000, banned = false, name = 'Fcr', trunk = 15, type = 'motos' },
	[GetHashKey('fcr2')] = { model = 'fcr2', price = 400000, banned = false, name = 'Fcr2', trunk = 15, type = 'motos' },
	[GetHashKey('gargoyle')] = { model = 'gargoyle', price = 450000, banned = false, name = 'Gargoyle', trunk = 15, type = 'motos' },
	[GetHashKey('hakuchou')] = { model = 'hakuchou', price = 3000000, banned = false, name = 'Hakuchou', trunk = 15, type = 'motos' },
	[GetHashKey('hakuchou2')] = { model = 'hakuchou2', price = 1000000, banned = false, name = 'Hakuchou2', trunk = 15, type = 'motos' },
	[GetHashKey('hexer')] = { model = 'hexer', price = 200000, banned = false, name = 'Hexer', trunk = 15, type = 'motos' },
	[GetHashKey('innovation')] = { model = 'innovation', price = 200000, banned = false, name = 'Innovation', trunk = 15, type = 'motos' },
	[GetHashKey('lectro')] = { model = 'lectro', price = 200000, banned = false, name = 'Lectro', trunk = 15, type = 'motos' },
	[GetHashKey('manchez')] = { model = 'manchez', price = 800000, banned = false, name = 'Manchez', trunk = 15, type = 'motos' },
	[GetHashKey('nemesis')] = { model = 'nemesis', price = 250000, banned = false, name = 'Nemesis', trunk = 15, type = 'motos' },
	[GetHashKey('nightblade')] = { model = 'nightblade', price = 800000, banned = false, name = 'Nightblade', trunk = 15, type = 'outros' },
	[GetHashKey('pcj')] = { model = 'pcj', price = 300000, banned = false, name = 'Pcj', trunk = 15, type = 'motos' },
	[GetHashKey('ruffian')] = { model = 'ruffian', price = 450000, banned = false, name = 'Ruffian', trunk = 15, type = 'motos' },
	[GetHashKey('sanchez')] = { model = 'sanchez', price = 400000, banned = false, name = 'Sanchez', trunk = 15, type = 'motos' },
	[GetHashKey('sanchez2')] = { model = 'sanchez2', price = 500000, banned = false, name = 'Sanchez2', trunk = 15, type = 'motos' },
	[GetHashKey('sanctus')] = { model = 'sanctus', price = 400000, banned = false, name = 'Sanctus', trunk = 15, type = 'motos' },
	[GetHashKey('sovereign')] = { model = 'sovereign', price = 1835000, banned = false, name = 'Sovereign', trunk = 50, type = 'motos' },
	[GetHashKey('thrust')] = { model = 'thrust', price = 650000, banned = false, name = 'Thrust', trunk = 15, type = 'motos' },
	[GetHashKey('vader')] = { model = 'vader', price = 400000, banned = false, name = 'Vader', trunk = 15, type = 'motos' },
	[GetHashKey('vindicator')] = { model = 'vindicator', price = 1000000, banned = false, name = 'Vindicator', trunk = 15, type = 'motos' },
	[GetHashKey('vortex')] = { model = 'vortex', price = 800000, banned = false, name = 'Vortex', trunk = 15, type = 'motos' },
	[GetHashKey('wolfsbane')] = { model = 'wolfsbane', price = 400000, banned = false, name = 'Wolfsbane', trunk = 15, type = 'motos' },
	[GetHashKey('zombiea')] = { model = 'zombiea', price = 250000, banned = false, name = 'Zombiea', trunk = 15, type = 'motos' },
	[GetHashKey('zombieb')] = { model = 'zombieb', price = 250000, banned = false, name = 'Zombieb', trunk = 15, type = 'motos' },
	[GetHashKey('blazer')] = { model = 'blazer', price = 750000, banned = false, name = 'Blazer', trunk = 15, type = 'motos' },
	[GetHashKey('blazer4')] = { model = 'blazer4', price = 800000, banned = false, name = 'Blazer4', trunk = 15, type = 'motos' },
	[GetHashKey('shotaro')] = { model = 'shotaro', price = 2000000, banned = false, name = 'Shotaro', trunk = 30, type = 'motos' },
	[GetHashKey('ratbike')] = { model = 'ratbike', price = 200000, banned = false, name = 'Ratbike', trunk = 30, type = 'motos' },
	[GetHashKey('policiaheli')] = { model = 'policiaheli', price = 1000000, banned = false, name = 'Policia Helicóptero', trunk = 0, type = 'service' },
	[GetHashKey('fbi2')] = { model = 'fbi2', price = 1000000, banned = false, name = 'Granger SOG', trunk = 0, type = 'service' },
	[GetHashKey('policeb')] = { model = 'policeb', price = 1000000, banned = false, name = 'Harley Davidson', trunk = 0, type = 'service' },
	[GetHashKey('paramedicoambu')] = { model = 'paramedicoambu', price = 1000000, banned = false, name = 'Ambulância', trunk = 0, type = 'service' },
	[GetHashKey('paramedicocharger2014')] = { model = 'paramedicocharger2014', price = 1000000, banned = false, name = 'Dodge Charger 2014', trunk = 0, type = 'service' },
	[GetHashKey('pbus')] = { model = 'pbus', price = 1000000, banned = false, name = 'Ônibus da Penitenciária', trunk = 0, type = 'service' },
	[GetHashKey('mule4')] = { model = 'mule4', price = 4000000, banned = false, name = 'Mule 4', trunk = 3000, type = 'vip' },
	[GetHashKey('mule5')] = { model = 'mule5', price = 4000000, banned = false, name = 'Mule 5', trunk = 2000, type = 'vip' },
	[GetHashKey('rallytruck')] = { model = 'rallytruck', price = 20000000, banned = false, name = 'RallyTruck', trunk = 3000, type = 'vip' },
	[GetHashKey('rallytruck2')] = { model = 'rallytruck2', price = 20000000, banned = false, name = 'Rallytruck 2', trunk = 3000, type = 'vip' },
	[GetHashKey('bus')] = { model = 'bus', price = 1000000, banned = false, name = 'Ônibus', trunk = 0, type = 'service' },
	[GetHashKey('flatbed')] = { model = 'flatbed', price = 1000000, banned = false, name = 'Reboque', trunk = 0, type = 'service' },
	[GetHashKey('towtruck')] = { model = 'towtruck', price = 1000000, banned = false, name = 'Towtruck', trunk = 0, type = 'service' },
	[GetHashKey('towtruck2')] = { model = 'towtruck2', price = 1000000, banned = false, name = 'Towtruck2', trunk = 0, type = 'service' },
	[GetHashKey('ratloader')] = { model = 'ratloader', price = 1000000, banned = false, name = 'Caminhão', trunk = 80, type = 'service' },
	[GetHashKey('ratloader2')] = { model = 'ratloader2', price = 180000, banned = false, name = 'Ratloader2', trunk = 70, type = 'outros' },
	[GetHashKey('rubble')] = { model = 'rubble', price = 1000000, banned = false, name = 'Caminhão', trunk = 100, type = 'service' },
	[GetHashKey('taxi')] = { model = 'taxi', price = 1000000, banned = false, name = 'Taxi', trunk = 0, type = 'service' },
	[GetHashKey('boxville4')] = { model = 'boxville4', price = 1000000, banned = false, name = 'Caminhão', trunk = 70, type = 'service' },
	[GetHashKey('trash2')] = { model = 'trash2', price = 1000000, banned = false, name = 'Caminhão', trunk = 100, type = 'service' },
	[GetHashKey('tiptruck')] = { model = 'tiptruck', price = 1000000, banned = false, name = 'Tiptruck', trunk = 100, type = 'service' },
	[GetHashKey('scorcher')] = { model = 'scorcher', price = 1000000, banned = false, name = 'Scorcher', trunk = 0, type = 'service' },
	[GetHashKey('tribike')] = { model = 'tribike', price = 1000000, banned = false, name = 'Tribike', trunk = 0, type = 'service' },
	[GetHashKey('tribike2')] = { model = 'tribike2', price = 1000000, banned = false, name = 'Tribike2', trunk = 0, type = 'service' },
	[GetHashKey('tribike3')] = { model = 'tribike3', price = 1000000, banned = false, name = 'Tribike3', trunk = 0, type = 'service' },
	[GetHashKey('fixter')] = { model = 'fixter', price = 1000000, banned = false, name = 'Fixter', trunk = 0, type = 'service' },
	[GetHashKey('cruiser')] = { model = 'cruiser', price = 1000000, banned = false, name = 'Cruiser', trunk = 0, type = 'service' },
	[GetHashKey('bmx')] = { model = 'bmx', price = 1000000, banned = false, name = 'Bmx', trunk = 100, type = 'service' },
	[GetHashKey('dinghy')] = { model = 'dinghy', price = 1000000, banned = false, name = 'Dinghy', trunk = 100, type = 'vip' },
	[GetHashKey('jetmax')] = { model = 'jetmax', price = 1000000, banned = false, name = 'Jetmax', trunk = 100, type = 'vip' },
	[GetHashKey('marquis')] = { model = 'marquis', price = 1000000, banned = false, name = 'Marquis', trunk = 100, type = 'vip' },
	[GetHashKey('seashark3')] = { model = 'seashark3', price = 1000000, banned = false, name = 'Seashark3', trunk = 100, type = 'vip' },
	[GetHashKey('speeder')] = { model = 'speeder', price = 1000000, banned = false, name = 'Speeder', trunk = 100, type = 'vip' },
	[GetHashKey('speeder2')] = { model = 'speeder2', price = 1000000, banned = false, name = 'Speeder2', trunk = 100, type = 'vip' },
	[GetHashKey('squalo')] = { model = 'squalo', price = 1000000, banned = false, name = 'Squalo', trunk = 100, type = 'vip' },
	[GetHashKey('suntrap')] = { model = 'suntrap', price = 1000000, banned = false, name = 'Suntrap', trunk = 100, type = 'vip' },
	[GetHashKey('toro')] = { model = 'toro', price = 1000000, banned = false, name = 'Toro', trunk = 100, type = 'vip' },
	[GetHashKey('toro2')] = { model = 'toro2', price = 1000000, banned = false, name = 'Toro2', trunk = 100, type = 'vip' },
	[GetHashKey('tropic')] = { model = 'tropic', price = 1000000, banned = false, name = 'Tropic', trunk = 100, type = 'vip' },
	[GetHashKey('tropic2')] = { model = 'tropic2', price = 1000000, banned = false, name = 'Tropic2', trunk = 100, type = 'vip' },
	[GetHashKey('yacht2')] = { model = 'yacht2', price = 1000000, banned = false, name = 'yacht2', trunk = 100, type = 'vip' },
	[GetHashKey('phantom')] = { model = 'phantom', price = 1000000, banned = false, name = 'Phantom', trunk = 0, type = 'service' },
	[GetHashKey('packer')] = { model = 'packer', price = 800000, banned = false, name = 'Packer', trunk = 100, type = 'service' },
	[GetHashKey('importsvolito')] = { model = 'importsvolito', price = 1000000, banned = false, name = 'importsvolito', trunk = 100, type = 'vip' },
	[GetHashKey('importsvolito2')] = { model = 'importsvolito2', price = 1000000, banned = false, name = 'importsvolito2', trunk = 100, type = 'vip' },
	[GetHashKey('seasparrow')] = { model = 'seasparrow', price = 1000000, banned = false, name = 'Paramédico Helicóptero Água', trunk = 0, type = 'service' },
	[GetHashKey('cuban800')] = { model = 'cuban800', price = 1000000, banned = false, name = 'Cuban800', trunk = 100, type = 'vip' },
	[GetHashKey('mammatus')] = { model = 'mammatus', price = 1000000, banned = false, name = 'Mammatus', trunk = 100, type = 'vip' },
	[GetHashKey('vestra')] = { model = 'vestra', price = 1000000, banned = false, name = 'Vestra', trunk = 100, type = 'vip' },
	[GetHashKey('velum2')] = { model = 'velum2', price = 1000000, banned = false, name = 'Velum2', trunk = 100, type = 'vip' },
	[GetHashKey('buzzard2')] = { model = 'buzzard2', price = 1000000, banned = false, name = 'Buzzard2', trunk = 100, type = 'vip' },
	[GetHashKey('maverick')] = { model = 'maverick', price = 1000000, banned = false, name = 'Maverick', trunk = 0, type = 'service' },
	[GetHashKey('tanker2')] = { model = 'tanker2', price = 1000000, banned = false, name = 'Gas', trunk = 0, type = 'service' },
	[GetHashKey('armytanker')] = { model = 'armytanker', price = 1000000, banned = false, name = 'Diesel', trunk = 0, type = 'service' },
	[GetHashKey('tvtrailer')] = { model = 'tvtrailer', price = 1000000, banned = false, name = 'Show', trunk = 0, type = 'service' },
	[GetHashKey('trailerlogs')] = { model = 'trailerlogs', price = 1000000, banned = false, name = 'Woods', trunk = 0, type = 'service' },
	[GetHashKey('tr4')] = { model = 'tr4', price = 1000000, banned = false, name = 'Cars', trunk = 0, type = 'service' },
	[GetHashKey('nissangtr')] = { model = 'nissangtr', price = 3000000, banned = false, name = 'Nissan GTR', trunk = 100, type = 'vip' },
	[GetHashKey('weevil')] = { model = 'weevil', price = 150000, banned = false, name = 'Fusca', trunk = 150, type = 'vip' },
	[GetHashKey('nissan370z')] = { model = 'nissan370z', price = 1000000, banned = false, name = 'Nissan 370Z', trunk = 40, type = 'vip' },
	[GetHashKey('dodgechargersrt')] = { model = 'dodgechargersrt', price = 2000000, banned = false, name = 'Dodge Charger SRT', trunk = 50, type = 'import' },
	[GetHashKey('14r8')] = { model = '14r8', price = 1000000, banned = false, name = 'Audi R8 2014', trunk = 30, type = 'vip' },
	[GetHashKey('bmwm3f80')] = { model = 'bmwm3f80', price = 1350000, banned = false, name = 'BMW M3 F80', trunk = 50, type = 'import' },
	[GetHashKey('nissangtrnismo')] = { model = 'nissangtrnismo', price = 2900000, banned = false, name = 'Nissan GTR Nismo', trunk = 40, type = 'vip' },
	
	[GetHashKey('seasparrow2')] = { model = 'seasparrow2', price = 1835000, banned = false, name = 'Sea Sparrow2', trunk = 30, type = 'vip' },
	[GetHashKey('mule')] = { model = 'mule', price = 1835000, banned = false, name = 'Mule', trunk = 1000, type = 'vip' },
	[GetHashKey('mule2')] = { model = 'mule2', price = 1835000, banned = false, name = 'Mule 2', trunk = 2000, type = 'vip' },
	[GetHashKey('mule3')] = { model = 'mule3', price = 1835000, banned = false, name = 'Mule 3', trunk = 3000, type = 'vip' },

	[GetHashKey('mercedesa45')] = { model = 'mercedesa45', price = 1200000, banned = false, name = 'Mercedes A45', trunk = 40, type = 'import' },
	[GetHashKey('rcbandito')] = { model = 'rcbandito', price = 1200000, banned = false, name = 'Mini carro', trunk = 10, type = 'vip' },
	[GetHashKey('focusrs')] = { model = 'focusrs', price = 1000000, banned = false, name = 'Focus RS', trunk = 40, type = 'import' },
	[GetHashKey('lancerevolution9')] = { model = 'lancerevolution9', price = 1400000, banned = false, name = 'Lancer Evolution 9', trunk = 50, type = 'import' },
	[GetHashKey('ninjah2')] = { model = 'ninjah2', price = 1000000, banned = false, name = 'Ninja H2', trunk = 15, type = 'vip' },
	[GetHashKey('trr')] = { model = 'trr', price = 1000000, banned = false, name = 'KTM TRR', trunk = 15, type = 'vip' },
	[GetHashKey('p1')] = { model = 'p1', price = 1000000, banned = false, name = 'Mclaren P1', trunk = 20, type = 'vip' },
	[GetHashKey('i8')] = { model = 'i8', price = 1000000, banned = false, name = 'BMW i8', trunk = 35, type = 'vip' },
	[GetHashKey('bme6tun')] = { model = 'bme6tun', price = 1000000, banned = false, name = 'BMW M5', trunk = 50, type = 'vip' },
	[GetHashKey('aperta')] = { model = 'aperta', price = 1000000, banned = false, name = 'La Ferrari', trunk = 20, type = 'vip' },

	[GetHashKey('devel22')] = { model = 'devel22', price = 1000000, banned = false, name = 'devel22', trunk = 20, type = 'vip' },
	[GetHashKey('lambose')] = { model = 'lambose', price = 1000000, banned = false, name = 'lambose', trunk = 20, type = 'vip' },
	[GetHashKey('titan')] = { model = 'titan', price = 1000000, banned = false, name = 'Titan', trunk = 20, type = 'vip' },


	[GetHashKey('bettle')] = { model = 'bettle', price = 1000000, banned = false, name = 'New Bettle', trunk = 35, type = 'vip' },
	[GetHashKey('senna')] = { model = 'senna', price = 1000000, banned = false, name = 'Mclaren Senna', trunk = 20, type = 'vip' },
	[GetHashKey('bnteam')] = { model = 'bnteam', price = 1000000, banned = false, name = 'Bentley', trunk = 20, type = 'vip' },
	[GetHashKey('rmodlp770')] = { model = 'rmodlp770', price = 1000000, banned = false, name = 'Lamborghini Centenario', trunk = 20, type = 'vip' },
	[GetHashKey('s15')] = { model = 's15', price = 1000000, banned = false, name = 'Nissan Silvia S15', trunk = 20, type = 'vip' },
	[GetHashKey('amggtr')] = { model = 'amggtr', price = 1000000, banned = false, name = 'Mercedes AMG', trunk = 20, type = 'vip' },
	[GetHashKey('lamtmc')] = { model = 'lamtmc', price = 1000000, banned = false, name = 'Lamborghini Terzo', trunk = 20, type = 'vip' },
	[GetHashKey('vantage')] = { model = 'vantage', price = 1000000, banned = false, name = 'Aston Martin Vantage', trunk = 20, type = 'vip' },
	[GetHashKey('slsamg')] = { model = 'slsamg', price = 1000000, banned = false, name = 'Mercedes SLS', trunk = 20, type = 'vip' },
	[GetHashKey('g65amg')] = { model = 'g65amg', price = 1000000, banned = false, name = 'Mercedes G65', trunk = 0, type = 'vip' },
	[GetHashKey('celta')] = { model = 'celta', price = 30000, banned = false, name = 'Celta Paredão', trunk = 0, type = 'vip' },
	[GetHashKey('eleanor')] = { model = 'eleanor', price = 1000000, banned = false, name = 'Mustang Eleanor', trunk = 30, type = 'vip' },
	[GetHashKey('rmodamgc63')] = { model = 'rmodamgc63', price = 1000000, banned = false, name = 'Mercedes AMG C63', trunk = 40, type = 'vip' },
	[GetHashKey('palameila')] = { model = 'palameila', price = 1000000, banned = false, name = 'Porsche Pamodelra', trunk = 50, type = 'vip' },
	[GetHashKey('cb500x')] = { model = 'cb500x', price = 1000000, banned = false, name = 'Honda CB500', trunk = 15, type = 'vip' },
	[GetHashKey('rsvr16')] = { model = 'rsvr16', price = 1000000, banned = false, name = 'Ranger Rover', trunk = 50, type = 'vip' },
	[GetHashKey('19ramdonk')] = { model = '19ramdonk', price = 1000000, banned = false, name = 'Dodge Ram Donk', trunk = 80, type = 'vip' },
	[GetHashKey('silv86')] = { model = 'silv86', price = 1000000, banned = false, name = 'Silverado Donk', trunk = 80, type = 'vip' },
	[GetHashKey('bc')] = { model = 'bc', price = 1000000, banned = false, name = 'Pagani Huayra', trunk = 20, type = 'vip' },
	[GetHashKey('70camarofn')] = { model = '70camarofn', price = 1000000, banned = false, name = 'camaro Z28 1970', trunk = 20, type = 'vip' },
	[GetHashKey('bbentayga')] = { model = 'bbentayga', price = 1000000, banned = false, name = 'Bentley Bentayga', trunk = 50, type = 'vip' },
	[GetHashKey('nissantitan17')] = { model = 'nissantitan17', price = 1000000, banned = false, name = 'Nissan Titan 2017', trunk = 120, type = 'vip' },
	[GetHashKey('regera')] = { model = 'regera', price = 1000000, banned = false, name = 'Koenigsegg Regera', trunk = 20, type = 'vip' },
	[GetHashKey('msohs')] = { model = 'msohs', price = 1000000, banned = false, name = 'Mclaren 688 HS', trunk = 20, type = 'vip' },
	[GetHashKey('gt17')] = { model = 'gt17', price = 1000000, banned = false, name = 'Ford GT 17', trunk = 20, type = 'vip' },
	[GetHashKey('19ftype')] = { model = '19ftype', price = 1000000, banned = false, name = 'Jaguar F-Type', trunk = 50, type = 'vip' },
	[GetHashKey('488gtb')] = { model = '488gtb', price = 1000000, banned = false, name = 'Ferrari 488 GTB', trunk = 30, type = 'vip' },
	[GetHashKey('m2')] = { model = 'm2', price = 1000000, banned = false, name = 'BMW M2', trunk = 50, type = 'vip' },
	[GetHashKey('defiant')] = { model = 'defiant', price = 1000000, banned = false, name = 'AMC Javelin 72', trunk = 40, type = 'vip' },
	[GetHashKey('f12tdf')] = { model = 'f12tdf', price = 1000000, banned = false, name = 'Ferrari F12 TDF', trunk = 20, type = 'vip' },
	[GetHashKey('71gtx')] = { model = '71gtx', price = 1000000, banned = false, name = 'Plymouth 71 GTX', trunk = 50, type = 'vip' },
	[GetHashKey('porsche992')] = { model = 'porsche992', price = 1000000, banned = false, name = 'Porsche 992', trunk = 20, type = 'vip' },
	[GetHashKey('18macan')] = { model = '18macan', price = 1000000, banned = false, name = 'Porsche Macan', trunk = 60, type = 'vip' },
	[GetHashKey('m6e63')] = { model = 'm6e63', price = 1000000, banned = false, name = 'BMW M6 E63', trunk = 50, type = 'vip' },
	[GetHashKey('180sx')] = { model = '180sx', price = 1000000, banned = false, name = 'Nissan 180SX', trunk = 10, type = 'vip' },
	[GetHashKey('hondafk8')] = { model = 'hondafk8', price = 1700000, banned = false, name = 'Honda FK8', trunk = 40, type = 'import' },
	[GetHashKey('mustangmach1')] = { model = 'mustangmach1', price = 1100000, banned = false, name = 'Mustang Mach 1', trunk = 40, type = 'import' },
	[GetHashKey('porsche930')] = { model = 'porsche930', price = 1300000, banned = false, name = 'Porsche 930', trunk = 20, type = 'import' },
	[GetHashKey('raptor2017')] = { model = 'raptor2017', price = 2000000, banned = false, name = 'Ford Raptor 2017', trunk = 150, type = 'vip' },
	[GetHashKey('filthynsx')] = { model = 'filthynsx', price = 1000000, banned = false, name = 'Honda NSX', trunk = 20, type = 'vip' },
	[GetHashKey('2018zl1')] = { model = '2018zl1', price = 1000000, banned = false, name = 'Camaro ZL1', trunk = 40, type = 'vip' },
	[GetHashKey('eclipse')] = { model = 'eclipse', price = 1000000, banned = false, name = 'Mitsubishi Eclipse', trunk = 30, type = 'vip' },
	[GetHashKey('lp700r')] = { model = 'lp700r', price = 1000000, banned = false, name = 'Lamborghini LP700R', trunk = 0, type = 'vip' },
	[GetHashKey('db11')] = { model = 'db11', price = 1000000, banned = false, name = 'Aston Martin DB11', trunk = 0, type = 'vip' },
	[GetHashKey('beetle74')] = { model = 'beetle74', price = 500000, banned = false, name = 'Fusca 74', trunk = 40, type = 'import' },
	[GetHashKey('fe86')] = { model = 'fe86', price = 500000, banned = false, name = 'Escorte', trunk = 40, type = 'import' },
	[GetHashKey('type263')] = { model = 'type263', price = 500000, banned = false, name = 'Kombi 63', trunk = 60, type = 'import' },
	[GetHashKey('pistas')] = { model = 'pistas', price = 1000000, banned = false, name = 'Ferrari Pista', trunk = 30, type = 'vip' },
	[GetHashKey('yzfr125')] = { model = 'yzfr125', price = 1000000, banned = false, name = 'Yamaha YZF R125', trunk = 10, type = 'vip' },
	[GetHashKey('mt03')] = { model = 'mt03', price = 1000000, banned = false, name = 'Yamaha MT 03', trunk = 10, type = 'vip' },
	[GetHashKey('flatbed3')] = { model = 'flatbed3', price = 1000000, banned = false, name = 'flatbed3', trunk = 0, type = 'service' },
	[GetHashKey('20r1')] = { model = '20r1', price = 1000000, banned = false, name = 'Yamaha YZF R1', trunk = 10, type = 'vip' },
	[GetHashKey('SVR14')] = { model = 'SVR14', price = 1000000, banned = false, name = 'Ranger Rover', trunk = 50, type = 'vip' },
	[GetHashKey('Bimota')] = { model = 'Bimota', price = 1000000, banned = false, name = 'Ducati Bimota', trunk = 10, type = 'vip' },
	[GetHashKey('r8ppi')] = { model = 'r8ppi', price = 1000000, banned = false, name = 'Audi R8 PPI Razor', trunk = 30, type = 'vip' },
	[GetHashKey('bobbes2')] = { model = 'bobbes2', price = 1000000, banned = false, name = 'Harley D. Bobber S', trunk = 15, type = 'vip' },
	[GetHashKey('bobber')] = { model = 'bobber', price = 1000000, banned = false, name = 'Harley D. Bobber ', trunk = 15, type = 'vip' },
	[GetHashKey('911tbs')] = { model = '911tbs', price = 1000000, banned = false, name = 'Porsche 911S', trunk = 25, type = 'vip' },
	[GetHashKey('rc')] = { model = 'rc', price = 1000000, banned = false, name = 'KTM RC', trunk = 15, type = 'vip' },
	[GetHashKey('brutus')] = { model = 'brutus', price = 1835000, banned = false, name = 'Brutus', trunk = 2000, type = 'vip' },
	[GetHashKey('cargobob2')] = { model = 'cargobob2', price = 1000000, banned = false, name = 'Cargo Bob', trunk = 0, type = 'service' },
	[GetHashKey('cargobob')] = { model = 'cargobob', price = 1835000, banned = false, name = 'CargoBob', trunk = 50, type = 'vip' },
	[GetHashKey('zx10r')] = { model = 'zx10r', price = 1000000, banned = false, name = 'Kawasaki ZX10R', trunk = 20, type = 'vip' },
	[GetHashKey('fox600lt')] = { model = 'fox600lt', price = 1000000, banned = false, name = 'McLaren 600LT', trunk = 40, type = 'vip' },
	[GetHashKey('foxbent1')] = { model = 'foxbent1', price = 1000000, banned = false, name = 'Bentley Liter 1931', trunk = 40, type = 'vip' },
	[GetHashKey('jeepg')] = { model = 'jeepg', price = 1000000, banned = false, name = 'Jeep Gladiator', trunk = 90, type = 'vip' },
	[GetHashKey('foxharley1')] = { model = 'foxharley1', price = 1000000, banned = false, name = 'Harley-Davidson Softail F.B.', trunk = 20, type = 'vip' },
	[GetHashKey('foxharley2')] = { model = 'foxharley2', price = 1000000, banned = false, name = '2016 Harley-Davidson Road Glide', trunk = 20, type = 'vip' },
	[GetHashKey('foxleggera')] = { model = 'foxleggera', price = 1000000, banned = false, name = 'Aston Martin Leggera', trunk = 50, type = 'vip' },
	[GetHashKey('foxrossa')] = { model = 'foxrossa', price = 1000000, banned = false, name = 'Ferrari Rossa', trunk = 40, type = 'vip' },
	[GetHashKey('foxshelby')] = { model = 'foxshelby', price = 1000000, banned = false, name = 'Ford Shelby GT500', trunk = 40, type = 'vip' },
	[GetHashKey('foxsian')] = { model = 'foxsian', price = 1000000, banned = false, name = 'Lamborghini Sian', trunk = 40, type = 'vip' },
	[GetHashKey('foxsterrato')] = { model = 'foxsterrato', price = 1000000, banned = false, name = 'Lamborghini Sterrato', trunk = 40, type = 'vip' },
	[GetHashKey('foxsupra')] = { model = 'foxsupra', price = 1000000, banned = false, name = 'Toyota Supra', trunk = 50, type = 'vip' },
	[GetHashKey('m6x6')] = { model = 'm6x6', price = 1000000, banned = false, name = 'Mercedes Benz 6x6', trunk = 90, type = 'vip' },
	[GetHashKey('m6gt3')] = { model = 'm6gt3', price = 1000000, banned = false, name = 'BMW M6 GT3', trunk = 40, type = 'vip' },
	[GetHashKey('w900')] = { model = 'w900', price = 1000000, banned = false, name = 'Kenworth W900', trunk = 130, type = 'vip' },
	[GetHashKey('22g63')] = { model = '22g63', price = 1000000, banned = false, name = '22g63', trunk = 130, type = 'vip' },
	[GetHashKey('ram2500')] = { model = 'ram2500', price = 1000000, banned = false, name = 'ram2500', trunk = 80, type = 'vip' },

	

	[GetHashKey('sugoi')] = { model = 'sugoi', price = 1000000, banned = false, name = 'Sugoi', trunk = 30, type = 'sedans' },
	[GetHashKey('fiatstilo')] = { model = 'fiatstilo', price = 1000000, banned = false, name = 'Fiat Stilo', trunk = 50, type = 'sedans' },

	[GetHashKey('fiat')] = { model = 'fiat', price = 1000000, banned = false, name = 'Fiat', trunk = 30, type = 'sedans' },
	[GetHashKey('palio2')] = { model = 'palio2', price = 1000000, banned = false, name = 'Palio2', trunk = 30, type = 'sedans' },
	[GetHashKey('wruno')] = { model = 'wruno', price = 1000000, banned = false, name = 'Wr Uno', trunk = 30, type = 'sedans' },
	[GetHashKey('silvia')] = { model = 'silvia', price = 1000000, banned = false, name = 'Silvia', trunk = 30, type = 'sedans' },

	[GetHashKey('xplaid24c')] = { model = 'xplaid24c', price = 1000000, banned = false, name = 'Tesla Model X', trunk = 30, type = 'vip' },
	[GetHashKey('amrevu23mg')] = { model = 'amrevu23mg', price = 1000000, banned = false, name = 'Lamborghini Revuelto', trunk = 30, type = 'vip' },

	[GetHashKey('wrbrickade')] = { model = 'wrbrickade', price = 1000000, banned = false, name = 'WR Brickade', trunk = 1000, type = 'vip' },
	[GetHashKey('adolescentem8gte')] = { model = 'adolescentem8gte', price = 1000000, banned = false, name = 'KID M8GTE', trunk = 30, type = 'vip' },
	[GetHashKey('rvphantom8')] = { model = 'rvphantom8', price = 1000000, banned = false, name = 'RV Phantom8', trunk = 1000, type = 'vip' },

	[GetHashKey('wrlamborghinikid')] = { model = 'adolescentem8gte', price = 1000000, banned = false, name = 'Wr LamboKid', trunk = 30, type = 'vip' },
	[GetHashKey('wrminir34')] = { model = 'wrminir34', price = 1000000, banned = false, name = 'WR Minir34', trunk = 30, type = 'vip' },
	[GetHashKey('wrminie36')] = { model = 'wrminie36', price = 1000000, banned = false, name = 'WR Minie36', trunk = 30, type = 'vip' },
	[GetHashKey('wrspiderkid')] = { model = 'wrspiderkid', price = 1000000, banned = false, name = 'WR SPIDER', trunk = 30, type = 'vip' },
	[GetHashKey('wrminiporsche')] = { model = 'wrminiporsche', price = 1000000, banned = false, name = 'Wr MiniPorsche', trunk = 40, type = 'vip' },
	[GetHashKey('wrplasticcar')] = { model = 'wrplasticcar', price = 1000000, banned = false, name = 'WR Plastic', trunk = 30, type = 'vip' },
	[GetHashKey('minievoque')] = { model = 'minievoque', price = 1000000, banned = false, name = 'Mini Evoque', trunk = 100, type = 'vip' },
	[GetHashKey('wrrelampagomarquinhos')] = { model = 'wrrelampagomarquinhos', price = 1000000, banned = false, name = 'Wr Relampago', trunk = 30, type = 'vip' },
	[GetHashKey('babyr35')] = { model = 'babyr35', price = 1000000, banned = false, name = 'Babyr35', trunk = 30, type = 'vip' },
	[GetHashKey('nimbus16')] = { model = 'nimbus16', price = 1000000, banned = false, name = 'nimbus16', trunk = 15, type = 'vip' },

	[GetHashKey('burrito6')] = { model = 'burrito6', price = 10000000, banned = false, name = 'Burrito6', trunk = 600, type = 'outros' },
	[GetHashKey('burritonatal')] = { model = 'burritonatal', price = 10000000, banned = false, name = 'Burrito Natal', trunk = 600, type = 'outros' },

	[GetHashKey('wrrtracer900')] = { model = 'wrrtracer900', price = 1000000, banned = false, name = 'WR Rtracer900', trunk = 20, type = 'vip' },
	[GetHashKey('wrcayenne')] = { model = 'wrcayenne', price = 1000000, banned = false, name = 'WR Cayenne', trunk = 60, type = 'vip' },
	[GetHashKey('gtb22')] = { model = 'gtb22', price = 1000000, banned = false, name = 'GTB 22', trunk = 15, type = 'vip' },
	[GetHashKey('wreclipse')] = { model = 'wreclipse', price = 1000000, banned = false, name = 'WR Eclipse', trunk = 15, type = 'vip' },
	[GetHashKey('wrgolquadrado')] = { model = 'wrgolquadrado', price = 1000000, banned = false, name = 'WR Gol Quadrado', trunk = 15, type = 'vip' },
	[GetHashKey('1winskyline')] = { model = '1winskyline', price = 1000000, banned = false, name = '1WIN Skyline', trunk = 20, type = 'vip' },

	[GetHashKey('mclarensenna')] = { model = 'mclarensenna', price = 1000000, banned = false, name = 'McLaren Senna', trunk = 50, type = 'vip' },
	[GetHashKey('gt3marlboro')] = { model = 'gt3marlboro', price = 1000000, banned = false, name = 'GT3 Marlboro', trunk = 50, type = 'vip' },
	[GetHashKey('mclaren')] = { model = 'mclaren', price = 1000000, banned = false, name = 'McLaren MP4/4', trunk = 50, type = 'vip' },

	[GetHashKey('q6audi23')] = { model = 'q6audi23', price = 1000000, banned = false, name = 'AUDI Q6', trunk = 80, type = 'vip' },
	[GetHashKey('m8gte')] = { model = 'm8gte', price = 1000000, banned = false, name = 'M8 GTE', trunk = 50, type = 'vip' },
	[GetHashKey('mysterym')] = { model = 'mysterym', price = 1000000, banned = false, name = 'Van Scooby Doo', trunk = 350, type = 'vip' },

	[GetHashKey('sl63')] = { model = 'sl63', price = 1000000, banned = false, name = 'Mercedes SL63', trunk = 40, type = 'vip' },
	[GetHashKey('mersa45')] = { model = 'mersa45', price = 1000000, banned = false, name = 'A45 AMG', trunk = 40, type = 'vip' },
	[GetHashKey('gls600')] = { model = 'gls600', price = 1000000, banned = false, name = 'Maybach GLS600', trunk = 80, type = 'vip' },
	[GetHashKey('monster5')] = { model = 'monster5', price = 500000, banned = false, name = 'Monster5', trunk = 100, type = 'vip' },
	[GetHashKey('monster4')] = { model = 'monster4', price = 500000, banned = false, name = 'Monster4', trunk = 100, type = 'vip' },
	[GetHashKey('monster3')] = { model = 'monster3', price = 500000, banned = false, name = 'Monster3', trunk = 100, type = 'vip' },
	[GetHashKey('xmasirisrora')] = { model = 'xmasirisrora', price = 1000000, banned = false, name = 'Xmas Irisrora', trunk = 150, type = 'vip' },
	[GetHashKey('mvso')] = { model = 'mvso', price = 1000000, banned = false, name = 'MV Agusta Brutalle 1000', trunk = 30, type = 'vip' },
	[GetHashKey('720wb')] = { model = '720wb', price = 1000000, banned = false, name = 'McLaren 720S WB', trunk = 30, type = 'vip' },
	[GetHashKey('pounderesc')] = { model = 'pounderesc', price = 1000000, banned = false, name = 'Pounder Esc', trunk = 400, type = 'vip' },

	[GetHashKey('speedobg')] = { model = 'speedobg', price = 1000000, banned = false, name = 'Speedobg', trunk = 30, type = 'vip' },
	[GetHashKey('polmavbg')] = { model = 'polmavbg', price = 1000000, banned = false, name = 'Polmavbg', trunk = 30, type = 'vip' },
	[GetHashKey('aventsvjr')] = { model = 'aventsvjr', price = 1000000, banned = false, name = 'Aventador SVJ', trunk = 35, type = 'vip' },
	[GetHashKey('haya24nbrt')] = { model = 'haya24nbrt', price = 1000000, banned = false, name = 'Hayabusa 2024', trunk = 15, type = 'vip' },
	[GetHashKey('gle')] = { model = 'gle', price = 1000000, banned = false, name = 'GLE 53', trunk = 35, type = 'vip' },
	 
	[GetHashKey('wrarmoredgls600')] = { model = 'wrarmoredgls600', price = 1000000, banned = false, name = 'GLS 600', trunk = 30, type = 'vip' },
	[GetHashKey('wrarmoredpurosangue')] = { model = 'wrarmoredpurosangue', price = 1000000, banned = false, name = 'Ferrari Purosangue', trunk = 60, type = 'vip' },
	[GetHashKey('F40LBWK')] = { model = 'F40LBWK', price = 1000000, banned = false, name = 'Ferrari SF90', trunk = 60, type = 'vip' },
	[GetHashKey('sf90')] = { model = 'sf90', price = 1000000, banned = false, name = 'F40 Libery Walk', trunk = 60, type = 'vip' },
	[GetHashKey('x6')] = { model = 'x6', price = 1000000, banned = false, name = 'X6', trunk = 30, type = 'vip' },
	[GetHashKey('wrarmoredvenatus')] = { model = 'wrarmoredvenatus', price = 1000000, banned = false, name = 'Venatus', trunk = 30, type = 'vip' },
	[GetHashKey('wrthundersasuke')] = { model = 'wrthundersasuke', price = 1000000, banned = false, name = 'Thunder Sasuke', trunk = 30, type = 'vip' },
	[GetHashKey('freecrawler')] = { model = 'freecrawler', price = 1000000, banned = false, name = 'Freecrawler', trunk = 350, type = 'vip' },
	[GetHashKey('2xla80neondragon')] = { model = '2xla80neondragon', price = 1000000, banned = false, name = '80 Neondragon', trunk = 30, type = 'vip' },
	[GetHashKey('flhxs')] = { model = 'flhxs', price = 1000000, banned = false, name = 'Flhxs', trunk = 30, type = 'vip' },
	[GetHashKey('impala67')] = { model = 'impala67', price = 1000000, banned = false, name = 'Impala Supernatural', trunk = 30, type = 'vip' },
	[GetHashKey('truckhalloween')] = { model = 'truckhalloween', price = 1000000, banned = false, name = 'Caminhão Halloween', trunk = 3000, type = 'vip' },
	[GetHashKey('zxhalloween')] = { model = 'zxhalloween', price = 1000000, banned = false, name = 'ZX10 Halloween', trunk = 15, type = 'vip' },

}



garagesConfig.typeGarages = {

	['garagemPrisao'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'blazer'}
        },
    },

	['garagemAeroporto'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'caddyin'}
        },
    },

	['Taxista'] = {
        type = "service", -- [ public / service ]

        blip = {
            showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'taxi'}
        },
    },

	['ifood'] = {
        type = "service", -- [ public / service ]

        blip = {
            showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'wrcargo150'}
        },
    },

	['GaragemCORE'] = {
        type = "service", -- [ public / service ]

        blip = {
            showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'wrcorolla', livery = 2},
            {vehicle = 'wrl200', livery = 2},
            {vehicle = 'wrranger23', livery = 2},
            {vehicle = 'wrtrailblazer22', livery = 2},
            {vehicle = 'WRpajero', livery = 1},
        },
    },

	['garagemEXERCITO'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
			{vehicle = 'WRranger23ebc'},
			{vehicle = 'WRranger23eb'},
			{vehicle = 'WR5ton'},
			{vehicle = 'wrr1200eb'},
        },
    },

	['garagemHeliEXERCITO'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
			{vehicle = 'haitun'},
			{vehicle = 'uh1exercito'},
			{vehicle = 'titan'},
        },
    },

	['GaragemCIVIL'] = {
        type = "service", -- [ public / service ]

        blip = {
            showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'wrcorolla', livery = 1},
            {vehicle = 'wrl200', livery = 4},
            {vehicle = 'wrranger23', livery = 4},
            {vehicle = 'wrtrailblazer22', livery = 4},
            {vehicle = 'WRpajero', livery = 2},
        },
    },

    ['GaragemHeliGOT'] = {
        type = "service", -- [ public / service ]

        blip = {
            showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'WRas350', livery = 2},
        },
    },

	['GaragemHeliCIVIL'] = {
        type = "service", -- [ public / service ]

        blip = {
            showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'WRas350', livery = 1},
        },
    },

	['GaragemMILITAR'] = {
        type = "service", -- [ public / service ]

        blip = {
            showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'wrcorolla', livery = 3},
            {vehicle = 'wrl200', livery = 3},
            {vehicle = 'wrranger23', livery = 3},
            {vehicle = 'wrtrailblazer22', livery = 3},
            {vehicle = 'WRduster22'},
            {vehicle = 'WRxt660', livery = 2},
            {vehicle = 'wrc7'},
        },
    },

	['GaragemBOPE'] = {
        type = "service", -- [ public / service ]

        blip = {
            showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'wrgtr50'},
            {vehicle = 'rvmercpcr'},
            {vehicle = 'wrl200', livery = 9},
            {vehicle = 'wrranger23', livery = 9},
            {vehicle = 'wrtrailblazer22', livery = 9},
            {vehicle = 'wrav'}
        },
    },
    ['BlindadoBOPE'] = {
        type = "service", -- [ public / service ]

        blip = {
            showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'wrav'}
        },
    },
    ['GaragemGOT'] = {
        type = "service", -- [ public / service ]

        blip = {
            showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'wrl200', livery = 6},
            {vehicle = 'wrranger23', livery = 6},
            {vehicle = 'wrtrailblazer22', livery = 6},
        },
    },
	['GaragemPF'] = {
        type = "service", -- [ public / service ]

        blip = {
            showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'wrcb500fed'},
            {vehicle = 'wrtrailfed'},
            {vehicle = 'wrl200fed'},
            {vehicle = 'wrcorollafed'},
            {vehicle = 'wrcamarofed'},
        },
    },
	['HeliPF'] = {
        type = "service", -- [ public / service ]

        blip = {
            showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
			{vehicle = 'wras350fed'},
        },
    },

	['GaragemCOT'] = {
        type = "service", -- [ public / service ]

        blip = {
            showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'wrl200', livery = 7},
            {vehicle = 'wrranger23', livery = 7},
            {vehicle = 'wrtrailblazer22', livery = 7},
        },
    },

	['GaragemHeliCHOQUE'] = {
        type = "service", -- [ public / service ]

        blip = {
            showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'WRas350', livery = 2},
        },
    },

	['GaragemCHOQUE'] = {
        type = "service", -- [ public / service ]

        blip = {
            showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'wrl200', livery = 1},
            {vehicle = 'wrranger23', livery = 1},
            {vehicle = 'wrtrailblazer22', livery = 1},
            
        },
    },
    ['SpeedCHOQUE'] = {
        type = "service", -- [ public / service ]

        blip = {
            showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'wrgtrchoque'},
            
        },
    },
    ['GtmCHOQUE'] = {
        type = "service", -- [ public / service ]

        blip = {
            showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'wrtigercore', livery = 1},
        },
    },

	['Garagempolicia'] = {
        type = "service", -- [ public / service ]

        blip = {
            showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'WRcruzepolicia'},
            {vehicle = 'wrr1200policia'},
            {vehicle = 'WRl200policia'},
            {vehicle = 'WRpoliciacamaro19'},
            {vehicle = 'WRranger21'},
            {vehicle = 'WRtrailblazerpolicia'},
        },
    },

	['GaragemHelipolicia'] = {
        type = "service", -- [ public / service ]

        blip = {
            showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'WRas350policia'},
            {vehicle = 'WRbell407policia'},
        },
    },

	['GaragemGRPAE'] = {
        type = "service", -- [ public / service ]

        blip = {
            showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'WRas350', livery = 2},
        },
    },


	['garagemBombeiro'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
			{vehicle = 'WRsprinter22cbm'},
			{vehicle = 'WR21hiluxcbm'},
			{vehicle = 'WRsw4cbm'},
            {vehicle = 'bigr1200'},
        },
    },

	['garagemHeliBombeiro'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
			{vehicle = 'WRas350cbm'},
        },
    },

	['garagemMecanicoFast'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'Eguinchofast'},
            {vehicle = 'Esierrafast'},
            {vehicle = 'Etenerefast'},
        },
    },

	['garagemMecanicoFastHELI'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'Ehelifast'},
        },
    },

	['garagemHOSPITAL'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'WRsprinter22'},
            {vehicle = 'WRsw4'},
            {vehicle = 'WRxreparamedico'},
        },
    },

	['garagemHeliHOSPITAL'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'WRas350samu'},
        },
    },

	['garagemMECANICA'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'wrtrxmecm'},
            {vehicle = 'wrflatbedm'},
        },
    },

    ['garagemBennys'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'wrtrxmecr'},
            {vehicle = 'wrflatbedr'},
        },
    },

	['PublicaRecrutamento'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = '24humevof'},
            {vehicle = 'africat'},
            {vehicle = 'wrhiacebela'},
        },
    },

	['PublicaRecrutamentoDiamante'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
			{vehicle = "24humevof"},
			{vehicle = "africat"},
            {vehicle = "wrhiacebela"},
            {vehicle = "wrcayenne" },
            {vehicle = "r1200"},
        },
    },

    ['PublicaRecrutamentoDiamanteFranca'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
			{vehicle = "24humevof"},
			{vehicle = "africat"},
            {vehicle = "wrhiacebela"},
            {vehicle = "wrcayenne" },
            {vehicle = "r1200"},
            {vehicle = "rvfranca"},
        },
    },

	['PublicaRecrutamentoEsmeralda'] = {

        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
			
			{vehicle = "24humevof"},
			{vehicle = "africat"},
			{vehicle = "wrhiacebela"},
			{vehicle = "s1000rr"},
			{vehicle = "urusfac"},
			
        },
    },

	['PublicaRecrutamentoEsmeraldaTcp'] = {

        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
			
			{vehicle = "24humevof"},
			{vehicle = "africat"},
			{vehicle = "wrhiacebela"},
			{vehicle = "s1000rr"},
			{vehicle = "urusfac"},
			{vehicle = "wrbrickade"},
			{vehicle = "rvphantom8"}
        },
    },

	['PublicaRecrutamentoEsmeraldaCpx'] = {

        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
			
			{vehicle = "24humevof"},
			{vehicle = "africat"},
			{vehicle = "wrhiacebela"},
			{vehicle = "s1000rr"},
			{vehicle = "urusfac"},
			{vehicle = "velargate"},
			
        },
    },

	['PublicaRecrutamentoEsmeraldaCv'] = {

        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
			{vehicle = "24humevof"},
			{vehicle = "africat"},
			{vehicle = "wrhiacebela"},
			{vehicle = "s1000rr"},
			{vehicle = "urusfac"},
			{vehicle = "rvx6"},
        },
    },

	['GaragemCV'] = {

        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
			{vehicle = "wrarmoredx7m60i"},
        },
    },

	['PublicaRecrutamentoEsmeraldaGrota'] = {

        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
			
			{vehicle = "24humevof"},
			{vehicle = "africat"},
			{vehicle = "wrhiacebela"},
			{vehicle = "s1000rr"},
			{vehicle = "urusfac"},
			{vehicle = "rvg63"},
			{vehicle = "wrbrickade"},
			{vehicle = "rvafricat"}
        },
    },

	['VipFacDiamante'] = {

        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
			{vehicle = "terbyte"},
			{vehicle = "nissantitan17"},
        },
    },

	['VipFacEsmeralda'] = {

        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
			{vehicle = "rallytruck2"},
			{vehicle = "ram226x6"},
        },
    },

    ['Creche'] = {

        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
			{vehicle = "minievoque"},
			{vehicle = "wrrelampagomarquinhos"},
        },
    },

    ['VipBombeiro'] = {

        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
			{vehicle = "wrbugbomb"},
        },
    },

	['Firetruck'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'firetruk'},
        },
    },

    ['VipPolicia'] = {
        type = "service", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        vehicles = {
            {vehicle = 'wrmustpol'},
        },
    },

    ['Publica'] = {
        type = "public", -- [ public / service ]

        blip = {
			showBlip = true, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        listCars = {
            vehicle = true,
            heli = false,
            boat = false
        }
    },
	

	['PublicaSemBlip'] = {
        type = "public", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        listCars = {
            vehicle = true,
            heli = false,
            boat = false
        }
    },

	['PublicaHeli'] = {
        type = "public", -- [ public / service ]

        blip = {
			showBlip = true, -- Exibir BLIP
            name = 'Garagem Helicoptero', -- Nome do BLIP
            blipId = 43, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        listCars = {
            vehicle = false,
            heli = true,
            boat = false
        }
    },

	['PublicaHeliSemBlip'] = {
        type = "public", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem Helicoptero', -- Nome do BLIP
            blipId = 43, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        listCars = {
            vehicle = false,
            heli = true,
            boat = false
        }
    },

	['PublicaAviao'] = {
        type = "public", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem Avião', -- Nome do BLIP
            blipId = 43, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        listCars = {
            vehicle = false,
            heli = true,
            boat = false
        }
    },
	

	['PublicaBarcos'] = {
        type = "public", -- [ public / service ]

        blip = {
			showBlip = true, -- Exibir BLIP
            name = 'Garagem Barcos', -- Nome do BLIP
            blipId = 410, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        listCars = {
            vehicle = false,
            heli = false,
            boat = true
        }
    },

	['PublicaBarcosSemBlip'] = {
        type = "public", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem Barcos', -- Nome do BLIP
            blipId = 410, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        listCars = {
            vehicle = false,
            heli = false,
            boat = true
        }
    },

	['GaragemBarco'] = {
        type = "public", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem Barcos', -- Nome do BLIP
            blipId = 410, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        -- listCars = {
        --     vehicle = false,
        --     heli = false,
        --     boat = true
        -- },

		vehicles = {
            {vehicle = 'seashark3'},
        },
    },

	['PublicaFac'] = {
        type = "public", -- [ public / service ]

        blip = {
			showBlip = false, -- Exibir BLIP
            name = 'Garagem', -- Nome do BLIP
            blipId = 357, -- ID DO BLIP = https://docs.fivem.net/docs/game-references/blips/
            blipColor = 0, -- Cor do BLIP
            blipScale = 0.5, -- Tamanho do Blip
        },  

        listCars = {
            vehicle = true,
            heli = false,
            boat = false
        }
    },


}

garagesConfig.garagesLocs = {

    -- VIP FACs
    
    -- PUBLICAS BARCOS
    {
        type = "PublicaBarcos",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-1799.48,-1224.76,1.58), 
        spawnCoords = {
            vector4(-1784.69,-1226.36,0.45,233.16)
        }
    },
    {
        type = "GaragemBarco",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-2599.0,-1778.75,1.5), 
        spawnCoords = {
            vector4(-2609.19,-1799.38,1.03,138.49)
        }
    },

---

-- PUBLICAS RECRUTAMENTO
    {
        type = "garagemAeroporto",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-1209.92,-1445.78,4.38), 
        spawnCoords = {
            vector4(-1203.63,-1440.85,3.72,304.62)
        }
    },

    {
        type = "PublicaRecrutamentoEsmeraldaGrota",
        blipDistance = 5.0,
        permiss = "perm.grota",
        coords = vec3(1207.3,-142.7,62.36), 
        spawnCoords = {
            vector4(1204.17,-142.12,61.87,152.72)
        }
    },
    {
        type = "PublicaRecrutamentoEsmeraldaCv",
        blipDistance = 5.0,
        permiss = "perm.cv",
        coords = vec3(1332.24,-656.62,72.13), 
        spawnCoords = {
            vector4(1329.7,-658.49,71.14,75.96)
        }
    },
    {
        type = "VipFacEsmeralda",
        blipDistance = 5.0,
        permiss = "perm.gerentecv",
        coords = vec3(1460.33,-717.62,85.68), 
        spawnCoords = {
            vector4(1455.13,-722.01,85.8,92.54)
        }
    },
    {
        type = "GaragemCV",
        blipDistance = 5.0,
        permiss = "perm.elitecv",
        coords = vec3(1315.53,-731.74,65.31), 
        spawnCoords = {
            vector4(1315.88,-727.63,64.55,68.62)
        }
    },


    {
        type = "PublicaRecrutamento",
        blipDistance = 5.0,
        permiss = "perm.playboy",
        coords = vec3(-1531.72,79.19,56.75), 
        spawnCoords = {
            vector4(-1526.76,84.4,56.31,272.1)
        }
    },
    --[[{
        type = "PublicaRecrutamento",
        blipDistance = 5.0,
        permiss = "perm.inglaterra",
        coords = vec3(-1531.72,79.14,56.75), 
        spawnCoords = {
            vector4(-1527.01,84.06,56.31,276.5)
        }
    },--]]
    {
        type = "PublicaRecrutamento",
        blipDistance = 5.0,
        permiss = "perm.mafia",
        coords = vec3(376.99,-13.56,82.99), 
        spawnCoords = {
            vector4(372.93,-13.0,82.72,35.67)
        }
    },
    {
        type = "PublicaRecrutamentoDiamanteFranca",
        blipDistance = 5.0,
        permiss = "perm.franca",
        coords = vec3(696.18,-299.84,59.26), 
        spawnCoords = {
            vector4(699.1,-295.5,58.91,189.1)
        }
    },
    {
        type = "PublicaRecrutamentoEsmeraldaTcp",
        blipDistance = 5.0,
        permiss = "perm.tcp",
        coords = vec3(937.17,356.37,111.21), 
        spawnCoords = {
            vector4(933.96,355.21,110.94,57.02)
        }
    },
    {
        type = "PublicaRecrutamento",
        blipDistance = 5.0,
        permiss = "perm.yakuza",
        coords = vec3(-970.53,-1460.24,5.02), 
        spawnCoords = {
            vector4(-971.51,-1463.85,4.73,108.98)
        }
    },
    {
        type = "PublicaRecrutamento",
        blipDistance = 5.0,
        permiss = "perm.corleone",
        coords = vec3(-3022.9,89.77,11.61), 
        spawnCoords = {
            vector4(-3023.31,92.95,11.34,319.97)
        }
    },
    --[[{
        type = "VipFacEsmeralda",
        blipDistance = 5.0,
        permiss = "perm.gerentecorleone",
        coords = vec3(-2966.25,68.91,11.56), 
        spawnCoords = {
            vector4(-2969.69,74.11,11.85,58.64)
        }
    },--]]
    {
        type = "PublicaRecrutamento",
        blipDistance = 5.0,
        permiss = "perm.turquia",
        coords = vec3(-845.93,-1873.13,27.33), 
        spawnCoords = {
            vector4(-847.84,-1871.15,27.06,315.25)
        }
    },
    {
        type = "PublicaRecrutamento",
        blipDistance = 5.0,
        permiss = "perm.cpx",
        coords = vec3(-1767.12,-50.36,77.41), 
        spawnCoords = {
            vector4(-1762.5,-53.19,76.58,309.13)
        }
    },
    {
        type = "PublicaRecrutamento",
        blipDistance = 5.0,
        permiss = "perm.cassino",
        coords = vec3(916.69,-16.27,78.84), 
        spawnCoords = {
            vector4(911.9,-16.08,78.49,147.67)
        }
    },
    {
        type = "PublicaRecrutamento",
        blipDistance = 5.0,
        permiss = "perm.lux",
        coords = vec3(-327.65,217.34,87.59), 
        spawnCoords = {
            vector4(-330.51,221.48,86.73,11.2)
        }
    },
    {
        type = "PublicaRecrutamento",
        blipDistance = 5.0,
        permiss = "perm.bahamas",
        coords = vec3(-1408.36,-592.99,30.43), 
        spawnCoords = {
            vector4(-1411.97,-591.81,30.11,299.89)
        }
    },
    {
        type = "PublicaRecrutamento",
        blipDistance = 5.0,
        permiss = "perm.mainstreet",
        coords = vec3(-827.63,-754.21,22.61), 
        spawnCoords = {
            vector4(-828.96,-757.21,22.07,90.49)
        }
    },
    {
        type = "PublicaRecrutamento",
        blipDistance = 5.0,
        permiss = "perm.galaxy",
        coords = vec3(-248.18,-319.21,29.99), 
        spawnCoords = {
            vector4(-247.35,-313.06,29.86,100.78)
        }
    },
    {
        type = "PublicaRecrutamento",
        blipDistance = 5.0,
        permiss = "perm.vanilla",
        coords = vec3(124.25,-1305.09,29.23), 
        spawnCoords = {
            vector4(127.01,-1310.5,28.51,118.34)
        }
    },
    {
        type = "PublicaRecrutamentoDiamante",
        blipDistance = 5.0,
        permiss = "perm.motoclube",
        coords = vec3(964.15,-120.85,74.36), 
        spawnCoords = {
            vector4(960.51,-121.74,74.07,226.46)
        }
    },
    {
        type = "VipFacDiamante",
        blipDistance = 5.0,
        permiss = "perm.gerentemotoclube",
        coords = vec3(992.83,-119.22,73.99), 
        spawnCoords = {
            vector4(993.75,-123.89,74.11,135.85)
        }
    },
    {
        type = "PublicaRecrutamento",
        blipDistance = 5.0,
        permiss = "perm.ballas",
        coords = vec3(110.51,-1952.2,20.79), 
        spawnCoords = {
            vector4(110.47,-1945.87,20.49,49.31)
        }
    },
    {
        type = "PublicaRecrutamentoDiamante",
        blipDistance = 5.0,
        permiss = "perm.bennys",
        coords = vec3(-229.31,-1298.5,31.31), 
        spawnCoords = {
            vector4(-224.38,-1303.04,31.0,90.36)
        }
    },
    {
        type = "PublicaRecrutamento",
        blipDistance = 5.0,
        permiss = "perm.lacoste",
        coords = vec3(721.02,-1084.39,22.24), 
        spawnCoords = {
            vector4(716.87,-1084.58,22.06,0.42)
        }
    },
    {
        type = "PublicaRecrutamento",
        blipDistance = 5.0,
        permiss = "perm.tequila",
        coords = vec3(-570.31,311.98,84.48), 
        spawnCoords = {
            vector4(-573.71,314.19,83.95,354.87)
        }
    },
    {
        type = "PublicaRecrutamento",
        blipDistance = 5.0,
        permiss = "perm.hellsangels",
        coords = vec3(1004.22,-2529.82,28.46), 
        spawnCoords = {
            vector4(1001.24,-2525.43,28.02,355.04)
        }
    },
    {
        type = "PublicaRecrutamento",
        blipDistance = 5.0,
        permiss = "perm.colombia",
        coords = vec3(-812.62,163.39,71.53), 
        spawnCoords = {
            vector4(-815.7,159.1,70.82,108.48)
        }
    },
    {
        type = "PublicaRecrutamento",
        blipDistance = 5.0,
        permiss = "perm.mexico",
        coords = vec3(-1674.06,564.97,154.36), 
        spawnCoords = {
            vector4(-1677.75,565.9,154.09,137.17)
        }
    },
    {
        type = "PublicaRecrutamento",
        blipDistance = 5.0,
        permiss = "perm.elements",
        coords = vec3(-143.01,-1564.03,34.56), 
        spawnCoords = {
            vector4(-146.07,-1561.21,34.39,319.1)
        }
    },
    {
        type = "PublicaRecrutamento",
        blipDistance = 5.0,
        permiss = "perm.anonymous",
        coords = vec3(-1529.1,892.15,181.93), 
        spawnCoords = {
            vector4(-1531.21,890.76,181.62,200.16)
        }
    },
    {
        type = "PublicaRecrutamento",
        blipDistance = 5.0,
        permiss = "perm.russia",
        coords = vec3(1061.91,703.18,158.67), 
        spawnCoords = {
            vector4(1060.96,698.84,158.15,61.93)
        }
    },
    {
        type = "PublicaRecrutamento",
        blipDistance = 5.0,
        permiss = "perm.vagos",
        coords = vec3(335.81,-2031.92,21.4), 
        spawnCoords = {
            vector4(332.17,-2031.94,20.89,143.54)
        }
    },
    {
        type = "PublicaRecrutamento",
        blipDistance = 5.0,
        permiss = "perm.mercenarios",
        coords = vec3(-116.55,994.36,235.75), 
        spawnCoords = {
            vector4(-123.58,994.83,235.48,152.33)
        }
    },
    {
        type = "PublicaRecrutamentoDiamante",
        blipDistance = 5.0,
        permiss = "perm.croacia",
        coords = vec3(556.36,877.55,219.69), 
        spawnCoords = {
            vector4(562.58,868.88,219.42,125.09)
        }
    },
    {
        type = "PublicaRecrutamento",
        blipDistance = 5.0,
        permiss = "perm.suecia",
        coords = vec3(2965.6,2960.33,89.67), 
        spawnCoords = {
            vector4(2967.38,2957.19,89.29,136.98)
        }
    },
    {
        type = "PublicaRecrutamento",
        blipDistance = 5.0,
        permiss = "perm.vidigal",
        coords = vec3(1924.46,749.21,191.57), 
        spawnCoords = {
            vector4(1928.05,748.11,191.3,187.53)
        }
    },
    {
        type = "PublicaRecrutamento",
        blipDistance = 5.0,
        permiss = "perm.jamaica",
        coords = vec3(-1955.14,4476.97,34.63), 
        spawnCoords = {
            vector4(-1953.66,4480.45,34.36,36.39)
        }
    },
    {
        type = "PublicaRecrutamentoDiamante",
        blipDistance = 5.0,
        permiss = "perm.korea",
        coords = vec3(-952.02,306.47,70.92), 
        spawnCoords = {
            vector4(-952.07,301.65,70.35,301.63)
        }
    },
    {
        type = "PublicaRecrutamento",
        blipDistance = 5.0,
        permiss = "perm.grecia",
        coords = vec3(-321.32,-1535.07,27.72), 
        spawnCoords = {
            vector4(-316.48,-1536.05,27.25,356.62)
        }
    },
    {
        type = "PublicaRecrutamento",
        blipDistance = 5.0,
        permiss = "perm.playboy",
        coords = vec3(-707.26,-769.14,33.01), 
        spawnCoords = {
            vector4(-702.92,-770.46,32.82,268.41)
        }
    },
    
    {
        type = "VipFacDiamante",
        blipDistance = 5.0,
        permiss = "perm.gerentebennys",
    
        coords = vec3(-219.79,-1310.47,31.29),
        spawnCoords = {
            vector4(-219.2,-1303.67,31.37,90.76)
        }
    },
    {
        type = "PublicaRecrutamentoDiamante",
        blipDistance = 5.0,
        permiss = "perm.pcc",
        coords = vec3(-1688.79,-308.18,51.85), 
        spawnCoords = {
            vector4(-1684.53,-306.23,51.54,232.85)
        }
    },
    {
        type = "VipFacDiamante",
        blipDistance = 5.0,
        permiss = "perm.gerentepcc",
    
        coords = vec3(-1678.12,-248.53,54.49),
        spawnCoords = {
            vector4(-1669.14,-248.99,54.81,251.47)
        }
    },
    -- {
    --     type = "VipFacDiamante",
    --     blipDistance = 5.0,
    --     permiss = "perm.gerentecroacia",
    
    --     coords = vec3(555.91,853.5,219.7),
    --     spawnCoords = {
    --         vector4(552.91,864.64,219.7,36.32)
    --     }
    -- },
    {
        type = "VipFacDiamante",
        blipDistance = 5.0,
        permiss = "perm.gerentefranca",
    
        coords = vec3(775.57,-285.25,59.93),
        spawnCoords = {
            vector4(781.06,-295.26,59.95,36.35)
        }
    },
    {
        type = "VipFacDiamante",
        blipDistance = 5.0,
        permiss = "perm.gerentekorea",
    
        coords = vec3(-959.43,334.99,71.38),
        spawnCoords = {
            vector4(-961.91,325.47,71.24,192.54)
        }
    },
    {
        type = "VipFacEsmeralda",
        blipDistance = 5.0,
        permiss = "perm.gerentegrota",
    
        coords = vec3(1171.88,-204.92,62.39),
        spawnCoords = {
            vector4(1169.11,-202.62,61.86,150.79)
        }
    },
    {
        type = "VipFacEsmeralda",
        blipDistance = 5.0,
        permiss = "perm.gerentetcp",
    
        coords = vec3(926.0,368.56,110.57),
        spawnCoords = {
            vector4(922.36,370.65,110.69,145.49)
        }
    },
---
    {
        type = "Creche",
        blipDistance = 5.0,
        permiss = "perm.creche",
        coords = vec3(-1982.62,553.67,112.2), 
        spawnCoords = {
            vector4(-1979.93,554.11,111.92,166.32)
        }
    },
    {
        type = "VipBombeiro",
        blipDistance = 5.0,
        permiss = "perm.vipbombeiro",
        coords = vec3(1162.65,-1473.4,34.69), 
        spawnCoords = {
            vector4(1160.35,-1471.31,34.42,90.14)
        }
    },
-- PUBLICAS COM BLIPMARKER
    {
        type = "Publica",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(316.79,-1379.09,31.91),
        spawnCoords = {
            vector4(309.01,-1377.59,31.83,135.53)
        }
    },

    {
        type = "Publica",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(342.15,-205.64,54.22),
        spawnCoords = {
            vector4(321.84,-209.12,54.09,157.81),
            vector4(329.91,-212.46,54.09,157.49)
        }
    },

    {
        type = "Publica",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(790.2,-720.52,28.09),
        spawnCoords = {
            vector4(783.12,-724.68,28.0,138.52),
            vector4(783.59,-730.41,27.84,130.97)
        }
    },

    {
        type = "Publica",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(4435.14,-4484.12,4.3),
        spawnCoords = {
            vector4(4438.37,-4490.07,4.57,112.55)
        }
    },

    {
        type = "Publica",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(317.6,2623.44,44.47),
        spawnCoords = {
            vector4(321.01,2625.41,44.82,39.53)
        }
    },
    
    {
        type = "Publica",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(3608.04,3761.08,30.08),
        spawnCoords = {
            vector4(3608.62,3769.55,29.64,90.93)
        }
    },
    {
        type = "Publica",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-1491.49,-662.05,28.95),
        spawnCoords = {
            vector4(-1486.31,-663.82,28.68,214.63),
            vector4(-1483.27,-661.62,28.68,214.7)
        }
    },
    {
        type = "Publica",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(463.47,218.91,103.1),
        spawnCoords = {
            vector4(462.35,222.88,102.83,71.17),
            vector4(463.57,227.37,102.92,70.15)
        }
    },
    {
        type = "Publica",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(1894.33,3715.22,32.76),
        spawnCoords = {
            vector4(1883.58,3715.01,32.69,118.78)
        }
    },

    {
        type = "Publica",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(2834.4,2806.84,57.41),
        spawnCoords = {
            vector4(2827.68,2804.3,57.15,175.8)
        }
    },
    {
        type = "Publica",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(56.14, -876.34, 30.65),
        spawnCoords = {
            vector4(50.77, -872.99, 30.16, 159.95),
            vector4(47.37, -872.04, 30.18, 158.99)
        }
    },
    {
        type = "Publica",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-73.26,-2004.42,18.27),
        spawnCoords = {
            vector4(-77.98,-2004.34,17.74,173.85)
        }
    },
    {
        type = "Publica",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(100.55, -1073.4, 29.37),
        spawnCoords = {
            vector4(104.47, -1078.41, 28.91, 340.31),
            vector4(108.3, -1078.93, 28.91, 341.49),
            vector4(111.49, -1081.01, 28.91, 340.54)
        }
    },
    {
        type = "Publica",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(213.62, -809.05, 31.0),
        spawnCoords = {
            vector4(221.87, -804.02, 30.41, 248.97),
            vector4(223.96, -801.98, 30.36, 248.18),
            vector4(223.88, -799.23, 30.38, 250.24)
        }
    },
    {
        type = "Publica",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-348.92, -874.72, 31.31),
        spawnCoords = {
            vector4(-343.67, -875.07, 30.8, 167.69),
            vector4(-340.31, -876.92, 30.8, 167.6),
            vector4(-336.42, -876.58, 30.8, 168.2)
        }
    },
    {
        type = "Publica",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-1597.27, -1040.69, 13.01),
        spawnCoords = {
            vector4(-1607.76, -1041.37, 12.84, 320.59)
        }
    },
    {
        type = "Publica",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-1698.84, -945.23, 7.67),
        spawnCoords = {
            vector4(-1694.34, -944.63, 7.4, 343.76),
            vector4(-1691.35, -945.49, 7.4, 344.44)
        }
    },
    {
        type = "Publica",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(596.72, 91.38, 93.13),
        spawnCoords = {
            vector4(599.29, 98.13, 92.64, 249.92),
            vector4(600.55, 102.02, 92.64, 249.86)
        }
    },
    {
        type = "Publica",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(275.5, -345.15, 45.17),
        spawnCoords = {
            vector4(283.05, -342.11, 44.65, 249.3),
            vector4(285.13, -339.19, 44.65, 248.95)
        }
    },
    {
        type = "Publica",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-1184.55, -1509.65, 4.65),
        spawnCoords = {
            vector4(-1183.31, -1495.81, 4.11, 124.65),
            vector4(-1185.56, -1493.64, 4.11, 123.72)
        }
    },

    {
        type = "Publica",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-141.73, 6279.67, 31.49),
        spawnCoords = {
            vector4(-133.91,6278.88,31.36,315.97)
        }
    },
    {
        type = "Publica",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-340.74, 266.97, 85.68),
        spawnCoords = {
            vector4(-349.3, 272.6, 84.84, 269.88),
            vector4(-348.69, 275.81, 84.81, 272.49)
        }
    },
    {
        type = "Publica",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-769.01,5597.28,33.6),
        spawnCoords = {
            vector4(-772.52,5578.38,33.06,88.8)
        }
    },
    {
        type = "Publica",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-1028.37,-3452.57,13.93),
        spawnCoords = {
            vector4(-1033.14,-3445.51,13.36,57.91)
        }
    },
    {
        type = "Publica",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-983.07,301.88,69.12),
        spawnCoords = {
            vector4(-975.83,297.58,69.25,262.86)
        }
    },
    {
        type = "Publica",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-591.57,-2374.87,13.82),
        spawnCoords = {
            vector4(-592.86,-2371.95,13.55,319.6)
        }
    },
    
    {
        type = "PublicaHeli",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-2976.1,602.25,20.39),
        spawnCoords = {
            vector4(-2983.42,602.23,20.24,191.92)
        }
    },
    {
        type = "PublicaHeli",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-996.64,-2949.67,13.95),
        spawnCoords = {
            vector4(-1024.8,-2951.24,14.54,59.11)
        }
    },
    {
        type = "PublicaHeli",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(2483.62,1585.93,34.78),
        spawnCoords = {
            vector4(2485.76,1575.31,35.13,1.17)
        }
    },
        
---

    {
        type = "garagemPrisao",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(1851.84,2586.04,45.68), 
        spawnCoords = {
            vector4(1854.64,2578.71,45.25, 267.56)
        }
    },
    {
        type = "garagemPrisao",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(2496.27,1591.76,32.72), 
        spawnCoords = {
            vector4(2501.44,1589.32,32.01,277.46)
        }
    },
    {
        type = "VipPolicia",
        blipDistance = 5.0,
        permiss = "perm.vippolicia",
        coords = vec3(-1307.31,267.45,63.54),
        spawnCoords = {
            vector4(-1309.08,262.92,62.73,160.0)
        }
    },

    {
        type = "VipPolicia",
        blipDistance = 5.0,
        permiss = "perm.vippolicia",
        coords = vec3(-755.64,-1280.28,5.17),
        spawnCoords = {
            vector4(-752.25,-1282.04,4.87,298.02)
        }
    },

    {
        type = "VipPolicia",
        blipDistance = 5.0,
        permiss = "perm.vippolicia",
        coords = vec3(-2018.84,-485.68,12.27),
        spawnCoords = {
            vector4(-2014.5,-483.16,12.0,320.54)
        }
    },

    {
        type = "VipPolicia",
        blipDistance = 5.0,
        permiss = "perm.vippolicia",
        coords = vec3(-431.1,1177.63,325.86),
        spawnCoords = {
            vector4(-427.45,1173.57,325.59,252.27)
        }
    },

    {
        type = "VipPolicia",
        blipDistance = 5.0,
        permiss = "perm.vippolicia",
        coords = vec3(2596.04,5318.91,45.68),
        spawnCoords = {
            vector4(2593.9,5321.02,45.06,113.42)
        }
    },

    {
        type = "VipPolicia",
        blipDistance = 5.0,
        permiss = "perm.vippolicia",
        coords = vec3(-2227.02,3323.52,33.03),
        spawnCoords = {
            vector4(-2229.58,3326.96,32.77,91.46)
        }
    },
    
    {
        type = "garagemAeroporto",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-793.84,-110.07,37.52), 
        spawnCoords = {
            vector4(-797.98,-115.51,36.93,242.16)
        }
    },

    {
        type = "garagemAeroporto",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-1673.47,-907.49,8.29), 
        spawnCoords = {
            vector4(-1675.62,-903.29,7.8,321.15),
            vector4(-1677.83,-900.92,7.82,320.03),
            vector4(-1680.22,-898.94,8.34,316.2)
        }
    },

    {
        type = "garagemAeroporto",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(320.64,-1375.49,31.91), 
        spawnCoords = {
            vector4(314.39,-1370.5,31.31,326.08)
        }
    },

    {
        type = "garagemAeroporto",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-1616.11,-1015.4,13.15), 
        spawnCoords = {
            vector4(-1609.86,-1014.98,13.07, 229.14)
        }
    },

    {
        type = "garagemAeroporto",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-1608.29,-884.76,9.49), 
        spawnCoords = {
            vector4(-1615.19,-882.26,9.44,132.71),
            vector4(-1621.14,-879.11,9.42,137.84),
            vector4(-1625.06,-874.6,9.44,137.68)
        }
    },

    {
        type = "garagemAeroporto",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-1598.0,-1051.01,13.01), 
        spawnCoords = {
            vector4(-1595.97,-1048.21,13.01,320.59),
            vector4(-1592.83,-1050.14,13.01,321.57),
            vector4(-1590.21,-1052.37,13.01,322.44),
            vector4(-1587.45,-1054.23,13.01,320.72)
        }
    },
    

    {
        type = "garagemAeroporto",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(547.05,-223.47,51.26), 
        spawnCoords = {
            vector4(540.06,-226.56,50.01,144.13)
        }
    },

    {
        type = "garagemAeroporto",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-580.18,-2350.98,13.82), 
        spawnCoords = {
            vector4(-584.84,-2351.65,13.23,136.2)
        }
    },

    {
        type = "garagemAeroporto",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-892.6,-2178.89,8.71), 
        spawnCoords = {
            vector4(vector4(-896.96,-2183.01,8.0,61.37))
        }
    },

    {
        type = "garagemAeroporto",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(285.7,-577.13,43.19), 
        spawnCoords = {
            vector4(286.99,-574.06,42.55,70.23)
        }
    },

    {
        type = "GaragemCORE",
        blipDistance = 5.0,
        permiss = 'perm.core',
        checkService = true,

        coords = vec3(-440.51,1130.72,325.86), 
        spawnCoords = {
            vector4(-438.18,1134.44,325.47,253.51)
        }
    },
    {
        type = "GaragemCIVIL",
        blipDistance = 5.0,
        permiss = 'perm.policiacivil',
        checkService = true,

        coords = vec3(-409.04,1121.78,325.86), 
        spawnCoords = {
            vector4(-409.87,1126.04,325.56,74.29)
        }
    },
    {
        type = "GaragemHeliCIVIL",
        blipDistance = 5.0,
        permiss = 'perm.policiacivil',
        checkService = true,

        coords = vec3(-437.07,1096.37,335.11), 
        spawnCoords = {
            vector4(-431.4,1102.32,335.48,164.34)
        }
    },
    {
        type = "GaragemMILITAR",
        blipDistance = 5.0,
        permiss = 'perm.militar',
        checkService = true,

        coords = vec3(-1632.75,203.1,60.56), 
        spawnCoords = {
            vector4(-1628.86,201.46,60.17,295.46)
        }
    },
    {
        type = "GaragemBOPE",
        blipDistance = 5.0,
        permiss = 'perm.bope',
        checkService = true,

        coords = vec3(109.71,-400.18,40.32), 
        spawnCoords = {
            vector4(112.21,-403.62,40.05,250.38)
        }
    },
    {
        type = "GaragemHeliCIVIL",
        blipDistance = 5.0,
        permiss = 'perm.bope',
        checkService = true,

        coords = vec3(80.35,-408.96,55.32), 
        spawnCoords = {
            vector4(86.99,-403.42,55.67,341.74)
        }
    },
    
    --[[{
        type = "BlindadoBOPE",
        blipDistance = 5.0,
        permiss = 'perm.blindadobope',
        checkService = true,

        coords = vec3(106.0,-412.43,40.32), 
        spawnCoords = {
            vector4(109.35,-410.84,40.05,251.45)
        }
    },--]]
    {
        type = "GaragemGRPAE",
        blipDistance = 5.0,
        permiss = 'perm.grpae',
        checkService = true,

        coords = vec3(-1582.64,206.25,76.26), 
        spawnCoords = {
            vector4(-1573.66,207.46,76.87,112.34)
        }
    },
    {
        type = "garagemEXERCITO",
        blipDistance = 5.0,
        permiss = "perm.exercito",

        coords = vec3(-2232.0,3260.09,32.81), 
        spawnCoords = {
            vector4(-2231.82,3270.14,32.5,238.3)
        }
    },
    {
        type = "garagemHeliEXERCITO", 
        blipDistance = 5.0,
        permiss = "perm.exercito",

        coords = vec3(-1881.79,2817.8,32.81), 
        spawnCoords = {
            vector4(-1877.19,2806.09,33.26,196.36)
        }
    },
    {
        type = "Garagempolicia",
        blipDistance = 5.0,
        permiss = 'perm.policia',
        checkService = true,

        coords = vec3(2612.1,5351.6,47.53), 
        spawnCoords = {
            vector4(2606.08,5353.4,47.04,105.38)
        }
    },
    {
        type = "GaragemHelipolicia",
        blipDistance = 5.0,
        permiss = 'perm.policia',
        checkService = true,

        coords = vec3(2612.06,5365.73,48.14), 
        spawnCoords = {
            vector4(2614.3,5372.68,48.68,107.79)
        }
    },
    {
        type = "GaragemGOT",
        blipDistance = 5.0,
        permiss = 'perm.got',
        checkService = true,

        coords = vec3(-1065.03,-849.7,5.04), 
        spawnCoords = {
            vector4(-1061.45,-853.43,4.62,217.75)
        }
    },
    {
        type = "GaragemHeliGOT",
        blipDistance = 5.0,
        permiss = 'perm.got',
        checkService = true,

        coords = vec3(-1098.87,-840.39,37.69), 
        spawnCoords = {
            vector4(-1097.09,-832.72,38.35,310.6)
        }
    },
    {
        type = "GaragemPF",
        blipDistance = 5.0,
        permiss = 'perm.pf',
        checkService = true,

        coords = vec3(-772.19,-1278.13,5.14), 
        spawnCoords = {
            vector4(-772.85,-1281.95,4.62,169.59)
        }
    },
    {
        type = "HeliPF",
        blipDistance = 5.0,
        permiss = 'perm.pf',
        checkService = true,

        coords = vec3(-735.94,-1445.72,5.0), 
        spawnCoords = {
            vector4(-724.61,-1444.2,5.66,50.55)
        }
    },
    {
        type = "GaragemCOT",
        blipDistance = 5.0,
        permiss = 'perm.cot',
        checkService = true,

        coords = vec3(-714.22,-1293.77,5.11), 
        spawnCoords = {
            vector4(-718.27,-1291.29,4.75,48.79)
        }
    },
    {
        type = "GaragemCHOQUE",
        blipDistance = 5.0,
        permiss = 'perm.choque',
        checkService = true,

        coords = vec3(-2040.26,-470.49,12.32), 
        spawnCoords = {
            vector4(-2035.0,-473.34,12.05,320.13)
        }
    },
    {
        type = "GtmCHOQUE",
        blipDistance = 5.0,
        permiss = 'perm.gtmchoque',
        checkService = true,

        coords = vec3(-2032.72,-490.45,12.32), 
        spawnCoords = {
            vector4(-2031.81,-487.7,11.96,319.82)
        }
    },
    {
        type = "SpeedCHOQUE",
        blipDistance = 5.0,
        permiss = 'perm.speedchoque',
        checkService = true,

        coords = vec3(-2038.35,-485.96,12.32), 
        spawnCoords = {
            vector4(-2035.81,-482.49,11.58,322.69)
        }
    },
    {
        type = "GaragemHeliCHOQUE",
        blipDistance = 5.0,
        permiss = 'perm.choque',
        checkService = true,

        coords = vec3(-2054.82,-448.16,19.39), 
        spawnCoords = {
            vector4(-2053.34,-457.34,19.75,229.55)
        }
    },
    {
        type = "garagemMecanicoFast",
        blipDistance = 5.0,
        permiss = "perm.playboy",

        coords = vec3(-932.01,-790.91,15.06), 
        spawnCoords = {
            vector4(-935.82,-795.67,15.2,179.47)
        }
    },
    {
        type = "garagemMecanicoFastHELI",
        blipDistance = 5.0,
        permiss = "perm.playboy",

        coords = vec3(-887.36,-765.04,29.12), 
        spawnCoords = {
            vector4(-881.68,-758.86,29.77,91.88)
        }
    },
    {
        type = "garagemHOSPITAL",
        blipDistance = 5.0,
        permiss = "perm.unizk",

        coords = vec3(-878.05,-2193.6,8.71), 
        spawnCoords = {
            vector4(-883.08,-2195.44,8.21,41.73)
        }
    },
    {
        type = "garagemHeliHOSPITAL",
        blipDistance = 5.0,
        permiss = "perm.unizk",

        coords = vec3(-859.08,-2125.66,96.26), 
        spawnCoords = {
            vector4(-868.7,-2119.88,97.95,44.43)
        }
    },
    {
        type = "garagemMECANICA",
        blipDistance = 5.0,
        permiss = "perm.mecanica",

        coords = vec3(-354.97,-166.43,39.01), 
        spawnCoords = {
            vector4(-356.79,-159.94,38.42,31.96)
        }
    },
    {
        type = "garagemBennys",
        blipDistance = 5.0,
        permiss = "perm.bennys",

        coords = vec3(-338.09,-1321.1,31.48), 
        spawnCoords = {
            vector4(-337.76,-1316.95,31.17,270.26)
        }
    },
    {
        type = "garagemBombeiro",
        blipDistance = 5.0,
        permiss = "perm.bombeiro",

        coords = vec3(1179.22,-1466.88,34.91), 
        spawnCoords = {
            vector4(1181.81,-1461.61,34.41,358.01)
        }
    },
    {
        type = "garagemHeliBombeiro",
        blipDistance = 5.0,
        permiss = "perm.bombeiro",

        coords = vec3(1191.16,-1532.12,39.39), 
        spawnCoords = {
            vector4(1189.15,-1540.12,41.52,359.82)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,
        coords = vec3(102.95,-419.55,40.32), 
        spawnCoords = {
            vector4(103.64,-422.53,40.05,250.39)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,
        coords = vec3(367.77,8.51,82.99), 
        spawnCoords = {
            vector4(373.59,2.37,82.41,37.54)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,
        coords = vec3(-298.85,-1345.59,31.49), 
        spawnCoords = {
            vector4(-304.6,-1347.28,31.21,90.81)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = 'perm.lima',
        coords = vec3(1619.69,-2609.44,53.85), 
        spawnCoords = {
            vector4(1612.75,-2605.97,53.43,32.75)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,
        coords = vec3(-2592.21,1928.17,167.3), 
        spawnCoords = {
            vector4(-2585.27,1931.46,167.03,269.92)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,
        coords = vec3(521.07,900.85,219.74), 
        spawnCoords = {
            vector4(525.37,903.6,219.38,35.69)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,
        coords = vec3(-1386.23,-583.37,30.18), 
        spawnCoords = {
            vector4(-1389.58,-579.12,30.23,300.98)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,
        coords = vec3(-1656.75,-190.9,55.65), 
        spawnCoords = {
            vector4(-1654.35,-195.66,55.1,249.15)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,
        coords = vec3(-376.54,-149.12,38.69), 
        spawnCoords = {
            vector4(-376.79,-146.22,38.42,298.94)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,
        coords = vec3(-345.12,-89.57,39.01), 
        spawnCoords = {
            vector4(-338.99,-95.35,39.09,247.51)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,
        coords = vec3(-1748.66,370.05,89.73),
        spawnCoords = {
            vector4(-1751.34,365.58,89.42,114.61)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,
        coords = vec3(-1468.47,76.58,53.73), 
        spawnCoords = {
            vector4(-1472.21,75.28,53.4,188.28)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,
        coords = vec3(-3208.62,835.68,8.93), 
        spawnCoords = {
            vector4(-3213.46,833.35,8.66,213.67)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,
        coords = vec3(-2038.7,-133.96,27.52), 
        spawnCoords = {
            vector4(-2033.81,-143.27,27.18,192.0)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,
        coords = vec3(711.54,-348.71,42.43), 
        spawnCoords = {
            vector4(707.19,-351.67,42.58,228.19)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,
        coords = vec3(711.54,-348.71,42.43), 
        spawnCoords = {
            vector4(707.19,-351.67,42.58,228.19)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,
        coords = vec3(1441.6,-726.67,85.28), 
        spawnCoords = {
            vector4(1443.79,-725.61,84.77,3.5)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,
        coords = vec3(1299.79,-649.38,67.77), 
        spawnCoords = {
            vector4(1295.41,-648.11,67.3,11.8)
        }
    },
    --[[{
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,
        coords = vec3(-3034.21,96.88,12.35), 
        spawnCoords = {
            vector4(-3031.46,100.05,11.34,319.28),
            vector4(-3028.06,98.46,11.34,317.97)
        }
    },--]]
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-560.76,320.85,84.4), 
        spawnCoords = {
            vector4(-563.22,318.8,84.13,84.95)
        }
    },
    {
        type = "Publica",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(2553.82,2612.96,37.96), 
        spawnCoords = {
            vector4(2550.3,2615.13,37.68,19.61)
        }
    },
    {
        type = "Publica",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(253.43,-2577.33,5.7), 
        spawnCoords = {
            vector4(254.04,-2572.6,5.43,25.56)
        }
    },
    {
        type = "Publica",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(917.17,373.4,110.69), 
        spawnCoords = {
            vector4(924.16,372.35,110.42,325.86)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(3417.09,4914.07,35.99), 
        spawnCoords = {
            vector4(3417.74,4907.54,35.72,220.72)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = 'perm.pequim',

        coords = vec3(-1989.0,-227.03,34.91), 
        spawnCoords = {
            vector4(-1989.29,-223.05,34.64,323.11)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(955.72,-122.69,74.36), 
        spawnCoords = {
            vector4(954.12,-124.85,74.07,239.39)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-2243.81,3323.83,33.26), 
        spawnCoords = {
            vector4(-2247.83,3319.65,32.55,60.42)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(1298.21,-707.35,64.87), 
        spawnCoords = {
            vector4(1292.38,-700.29,64.4,336.73)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-392.61,1168.99,325.84), 
        spawnCoords = {
            vector4(-397.92,1166.6,325.37,56.88)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(1394.6,-748.54,67.25), 
        spawnCoords = {
            vector4(1383.05,-742.9,66.93,71.38)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(1464.12,-786.11,113.25), 
        spawnCoords = {
            vector4(1461.71,-787.1,112.74,1.28)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-148.03,-1546.8,34.54), 
        spawnCoords = {
            vector4(-145.43,-1549.13,34.15,318.53)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(318.15,-2016.39,20.76), 
        spawnCoords = {
            vector4(318.48,-2020.0,20.44,141.01)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-1553.96,880.13,181.34), 
        spawnCoords = {
            vector4(-1551.37,881.21,181.05,199.19)
        }
    },
    {
        type = "PublicaHeliSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-338.5,-1373.35,31.63), 
        spawnCoords = {
            vector4(-340.68,-1379.23,32.13,266.03)
        }
    },
    {
        type = "PublicaHeliSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(572.87,931.5,233.86), 
        spawnCoords = {
            vector4(581.65,938.71,234.45,233.73)
        }
    },
    {
        type = "PublicaHeliSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-1847.01,9.0,106.54), 
        spawnCoords = {
            vector4(-1850.2,17.61,106.9,187.84)
        }
    },
    {
        type = "PublicaHeliSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-948.54,315.42,73.16), 
        spawnCoords = {
            vector4(-948.56,324.0,73.79,194.3)
        }
    },
    {
        type = "PublicaHeliSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(86.14,-1788.17,35.28), 
        spawnCoords = {
            vector4(68.83,-1789.25,37.79,51.24),
            vector4(83.9,-1771.38,37.79,51.12)
        }
    },
    {
        type = "PublicaHeliSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(3484.2,4921.02,35.0), 
        spawnCoords = {
            vector4(3492.4,4915.59,36.01,316.3)
        }
    },
    {
        type = "PublicaHeliSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-1682.74,-286.77,53.84), 
        spawnCoords = {
            vector4(-1679.24,-277.3,54.31,146.75)
        }
    },
    {
        type = "PublicaHeliSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-1968.06,-233.39,95.67), 
        spawnCoords = {
            vector4(-1976.59,-229.87,96.21,235.48)
        }
    },
    {
        type = "PublicaHeliSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-1968.06,-233.39,95.67), 
        spawnCoords = {
            vector4(-1976.59,-229.87,96.21,235.48)
        }
    },
    {
        type = "PublicaHeliSemBlip",
        blipDistance = 5.0,
        permiss = nil,

      
        coords = vec3(-952.62,-1519.5,6.67), 
        spawnCoords = {
            vector4(-951.91,-1527.49,6.35,18.29)
        }
    },
    {
        type = "PublicaHeliSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(1012.53,-128.08,73.92), 
        spawnCoords = {
            vector4(999.78,-127.23,74.63,136.09)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(1297.55,-247.87,96.65), 
        spawnCoords = {
            vector4(1292.18,-246.29,96.6,230.99)
        }
    },	
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-1585.89,254.29,59.13), 
        spawnCoords = {
            vector4(-1589.97,248.33,58.62,205.56)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-1704.96,-14.32,64.65), 
        spawnCoords = {
            vector4(-1700.7,-12.34,63.41,227.31)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-1718.41,-127.71,85.66), 
        spawnCoords = {
            vector4(-1720.35,-125.76,85.14,304.82)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(290.96,-565.56,43.25), 
        spawnCoords = {
            vector4(284.68,-559.88,42.95,341.28)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-1100.96,-2054.7,13.29), 
        spawnCoords = {
            vector4(-1100.78,-2048.87,13.02,319.05)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-245.44,-1312.85,31.27), 
        spawnCoords = {
            vector4(-249.13,-1316.34,31.0,358.88)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(900.35,331.84,109.61), 
        spawnCoords = {
            vector4(897.12,333.63,109.05,139.05)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-100.15,-458.45,37.07), 
        spawnCoords = {
            vector4(-102.29,-455.31,36.75,337.37)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-916.28,-792.25,15.06), 
        spawnCoords = {
            vector4(-912.13,-796.61,14.79,182.35)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-574.9,-2355.75,13.82), 
        spawnCoords = {
            vector4(-577.88,-2354.96,13.55,138.25)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(1165.53,-1462.2,34.85), 
        spawnCoords = {
            vector4(1161.57,-1463.48,34.42,89.04)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-1646.57,-260.42,54.22), 
        spawnCoords = {
            vector4(-1649.3,-255.75,54.24,337.57)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(843.21,240.47,83.95), 
        spawnCoords = {
            vector4(849.62,243.61,83.49,146.15)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-1037.63,320.64,66.88), 
        spawnCoords = {
            vector4(-1047.4,318.81,66.76,293.06) 
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(869.44,-5.64,78.84), 
        spawnCoords = {
            vector4(872.05,-17.2,78.74,238.42)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-1785.23,0.45,85.66), 
        spawnCoords = {
            vector4(-1783.14,-3.87,85.39,229.97)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(1083.45,634.16,139.25), 
        spawnCoords = {
            vector4(1084.96,627.92,138.59,148.43)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(727.4,-293.93,57.9), 
        spawnCoords = {
            vector4(722.81,-293.38,57.71,186.6)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-844.52,-1855.35,26.77), 
        spawnCoords = {
            vector4(-844.29,-1852.14,26.27,225.58)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(175.71,710.41,209.06), 
        spawnCoords = {
            vector4(179.23,707.7,208.77,178.28)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(1260.14,-872.67,75.39), 
        spawnCoords = {
            vector4(1264.09,-871.08,75.12,348.35)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-1669.54,-300.32,51.88), 
        spawnCoords = {
            vector4(-1673.43,-302.47,51.51,143.21)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-817.8,187.76,72.39), 
        spawnCoords = {
            vector4(-825.67,177.8,71.27,140.08)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-1235.63,840.15,193.37), 
        spawnCoords = {
            vector4(-1239.5,837.49,193.1,66.37)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(807.7,3435.18,57.86), 
        spawnCoords = {
            vector4(814.48,3436.07,57.58,179.31)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-811.56,-1203.2,6.93), 
        spawnCoords = {
            vector4(-814.72,-1203.45,6.62,140.91)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-832.65,-702.43,27.28), 
        spawnCoords = {
            vector4(-834.29,-700.0,27.01,89.85)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-1440.71,695.87,180.14), 
        spawnCoords = {
            vector4(-1435.99,688.7,179.45,0.41)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-84.46,-405.74,37.0), 
        spawnCoords = {
            vector4(-87.32,-399.7,36.8,70.08)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-1737.74,-30.83,70.75), 
        spawnCoords = {
            vector4(-1735.01,-35.1,70.11,300.31)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(801.26,-2503.01,22.12), 
        spawnCoords = {
            vector4(795.13,-2502.69,21.26,86.63)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(2626.05,5298.32,47.53), 
        spawnCoords = {
            vector4(2620.99,5299.11,47.15,107.17)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(746.13,-345.79,46.76), 
        spawnCoords = {
            vector4(747.26,-351.17,44.94,113.97)
        }
    },
    {
        type = "PublicaSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-2027.01,-492.52,12.3), 
        spawnCoords = {
            vector4(-2028.52,-488.69,12.03,322.41)
        }
    },
    {
        type = "PublicaHeliSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(1285.38,-851.18,78.45), 
        spawnCoords = {
            vector4(1284.86,-842.98,79.11,78.27)
        }
    },
    {
        type = "PublicaHeliSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(1310.7,-744.81,67.25), 
        spawnCoords = {
            vector4(1311.92,-757.96,67.9,334.62)
        }
    },
    --[[{
        type = "PublicaHeliSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-3119.3,89.33,11.51), 
        spawnCoords = {
            vector4(-3118.16,75.83,13.99,278.67),
            vector4(-3121.74,102.6,13.99,276.94)
        }
    },--]]
    {
        type = "PublicaHeliSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(760.33,-194.42,72.12), 
        spawnCoords = {
            vector4(754.4,-201.75,72.59,154.32)
        }
    },
    --[[{
        type = "PublicaHeliSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(1318.74,-748.4,69.15), 
        spawnCoords = {
            vector4(1314.68,-756.6,69.62,72.18)
        }
    },--]]
    {
        type = "PublicaHeliSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-1164.5,-2197.1,14.96), 
        spawnCoords = {
            vector4(-1170.67,-2203.64,15.57,330.36)
        }
    },
    {
        type = "PublicaHeliSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(1203.09,-133.71,62.36), 
        spawnCoords = {
            vector4(1196.63,-126.09,64.64,150.78)
        }
    },
    {
        type = "PublicaHeliSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-903.92,-764.94,29.12), 
        spawnCoords = {
            vector4(-898.66,-759.25,29.77,267.67)
        }
    },
    {
        type = "PublicaHeliSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(920.1,349.09,111.21), 
        spawnCoords = {
            vector4(928.61,352.69,111.87,148.1)
        }
    },
    {
        type = "PublicaHeliSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(-96.54,-417.45,55.69), 
        spawnCoords = {
            vector4(-99.78,-409.97,56.35,339.8)
        }
    },
    {
        type = "PublicaHeliSemBlip",
        blipDistance = 5.0,
        permiss = nil,

        coords = vec3(695.91,3436.78,57.53), 
        spawnCoords = {
            vector4(687.04,3435.68,58.4,359.9)
        }
    },
}