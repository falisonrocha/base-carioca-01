RANKING_UPDATE_INTERVAL = 300 --[[seconds]]
ADMIN_PERMISSION  = "admin.permissao"

Config = {}



-- default
-- this will automatically insert into db
Config.Clothes = {
    ['Choque'] = {
        org = 'Choque',
        male = {
            [1] = { 0,0,1 },
            [3] = { 15,0,1 },
            [4] = { 196,1,1 },
            [6] = { 25,0,1 },
            [7] = { 38,0,1 },
            [8] = { -1,0,1 },
            [9] = { -1,0,1 },
            [11] = { 609,0,1 },
            ['p0'] = { -1,0 },
            ['p6'] = { -1,0 },
        },
        female = {
            [1] = { 190,0,1 },
            [3] = { 14,0,1 },
            [4] = { 211,1,1 },
            [6] = { 25,0,1 },
            [7] = { 159,0,1 },
            [8] = { 15,0,1 },
            [9] = { 0,0,1 },
            [11] = { 636,0,1 },
            ['p0'] = { -1,0 },
            ['p6'] = { -1,0 } ,
        },
    },

    ["CoronelPM"] = {
        org = 'Policia',
        male = {
            [1] = { 0,0,2 },
            [3] = { 1,0,2 },
            [4] = { 59,9,2 },
            [6] = { 25,0,2 },
            [7] = { 15,0,2 },
            [8] = { 15,0,2 },
            [9] = { 18,4,2 },
            [11] = { 220,0,2 },
            ["p0"] = { -1,0 },
            ["p6"] = { -1,0 }
        },
        female = {
            [1] = { -1,0,2 },
            [3] = { 1,0,2 },
            [4] = { 32,0,2 },
            [6] = { 25,0,2 },
            [7] = { -1,0,2 },
            [8] = { -1,0,2 },
            [9] = { 36,0,2 },
            [11] = { 230,0,2 },
            ["p6"] = { -1,0 },
            ["p0"] = { -1,0 }
        }
    },
    ["MajorPM"] = {
        org = 'Policia',
        male = {
            [1] = { 0,0,2 },
            [3] = { 1,0,2 },
            [4] = { 59,9,2 },
            [6] = { 25,0,2 },
            [7] = { 15,0,2 },
            [8] = { 15,0,2 },
            [9] = { 18,0,2 },
            [11] = { 220,0,2 },
            ["p0"] = { -1,0 },
            ["p6"] = { -1,0 }
        },
        female = {
            [1] = { -1,0,2 },
            [3] = { 1,0,2 },
            [4] = { 32,0,2 },
            [6] = { 25,0,2 },
            [7] = { -1,0,2 },
            [8] = { -1,0,2 },
            [9] = { 36,0,2 },
            [11] = { 230,0,2 },
            ["p6"] = { -1,0 },
            ["p0"] = { -1,0 }
        }
    },
    ["CapitaoPM"] = {
        org = 'Policia',
        male = {
            [1] = { 0,0,2 },
            [3] = { 1,0,2 },
            [4] = { 59,9,2 },
            [6] = { 25,0,2 },
            [7] = { 15,0,2 },
            [8] = { 15,0,2 },
            [9] = { 18,0,2 },
            [11] = { 220,0,2 },
            ["p0"] = { -1,0 },
            ["p6"] = { -1,0 }
        },
        female = {
            [1] = { -1,0,2 },
            [3] = { 1,0,2 },
            [4] = { 32,0,2 },
            [6] = { 25,0,2 },
            [7] = { -1,0,2 },
            [8] = { -1,0,2 },
            [9] = { 36,0,2 },
            [11] = { 230,0,2 },
            ["p6"] = { -1,0 },
            ["p0"] = { -1,0 }
        }
    },
    ["PrimeiroTenentePM"] = {
        org = 'Policia',
        male = {
            [1] = { 0,0,2 },
            [3] = { 1,0,2 },
            [4] = { 59,9,2 },
            [6] = { 25,0,2 },
            [7] = { 15,0,2 },
            [8] = { 15,0,2 },
            [9] = { 18,0,2 },
            [11] = { 220,0,2 },
            ["p0"] = { -1,0 },
            ["p6"] = { -1,0 }
        },
        female = {
            [1] = { -1,0,2 },
            [3] = { 1,0,2 },
            [4] = { 32,0,2 },
            [6] = { 25,0,2 },
            [7] = { -1,0,2 },
            [8] = { -1,0,2 },
            [9] = { 36,0,2 },
            [11] = { 230,0,2 },
            ["p6"] = { -1,0 },
            ["p0"] = { -1,0 }
        }
    },
    ["PrimeiroSargentoPM"] = {
        org = 'Policia',
        male = {
            [1] = { 0,0,2 },
            [3] = { 1,0,2 },
            [4] = { 59,9,2 },
            [6] = { 25,0,2 },
            [7] = { 15,0,2 },
            [8] = { 15,0,2 },
            [9] = { 18,0,2 },
            [11] = { 220,0,2 },
            ["p0"] = { -1,0 },
            ["p6"] = { -1,0 }
        },
        female = {
            [1] = { -1,0,2 },
            [3] = { 1,0,2 },
            [4] = { 32,0,2 },
            [6] = { 25,0,2 },
            [7] = { -1,0,2 },
            [8] = { -1,0,2 },
            [9] = { 36,0,2 },
            [11] = { 230,0,2 },
            ["p6"] = { -1,0 },
            ["p0"] = { -1,0 }
        }
    },
    ["SoldadoPM"] = {
        org = 'Policia',
        male = {
            [1] = { -1,0,2 },
            [3] = { 0,0,2 },
            [4] = { 59,9,2 },
            [6] = { 25,0,2 },
            [7] = { -1,0,2 },
            [8] = { 130,0,2 },
            [9] = { 18,0,2 },
            [11] = { 271,1,2 },
            ["p6"] = { 5,0 },
            ["p0"] = { -1,0 }
        },
        female = {
            [1] = { -1,0,2 },
            [3] = { 1,0,2 },
            [4] = { 32,0,2 },
            [6] = { 25,0,2 },
            [7] = { -1,0,2 },
            [8] = { -1,0,2 },
            [9] = { 36,0,2 },
            [11] = { 230,0,2 },
            ["p6"] = { -1,0 },
            ["p0"] = { -1,0 }
        }
    },
    ["CaboPM"] = {
        org = 'Policia',
        male = {
            [1] = { -1,0,2 },
            [3] = { 0,0,2 },
            [4] = { 59,9,2 },
            [6] = { 25,0,2 },
            [7] = { -1,0,2 },
            [8] = { 130,0,2 },
            [9] = { 18,0,2 },
            [11] = { 271,1,2 },
            ["p6"] = { 5,0 },
            ["p0"] = { -1,0 }
        },
        female = {
            [1] = { -1,0,2 },
            [3] = { 1,0,2 },
            [4] = { 32,0,2 },
            [6] = { 25,0,2 },
            [7] = { -1,0,2 },
            [8] = { -1,0,2 },
            [9] = { 36,0,2 },
            [11] = { 230,0,2 },
            ["p6"] = { -1,0 },
            ["p0"] = { -1,0 }
        }
    },
    ["AlunoPM"] = {
        org = 'Policia',
        male = {
            [1] = { 59,2,2 },
            [3] = { 0,0,2 },
            [4] = { 59,9,2 },
            [6] = { 25,0,2 },
            [7] = { -1,0,2 },
            [8] = { -1,0,2 },
            [9] = { -1,0,2 },
            [11] = { 271,0,2 },
            ["p0"] = { -1,0 },
            ["p6"] = { -1,0 }
        },
        female = {
            [1] = { -1,0,2 },
            [3] = { 1,0,2 },
            [4] = { 32,0,2 },
            [6] = { 25,0,2 },
            [7] = { -1,0,2 },
            [8] = { -1,0,2 },
            [9] = { 36,0,2 },
            [11] = { 230,0,2 },
            ["p6"] = { -1,0 },
            ["p0"] = { -1,0 }
        }
    },
    ["UniformeBope"] = {
        org = 'Bope',
        male = {
            [1] = { 0,0,2 },
            [3] = { 0,0,2 },
            [4] = { 228,0,2 },
            [6] = { 25,0,2 },
            [7] = { 0,0,2 },
            [8] = { 15,0,2 },
            [9] = { 65,0,1 },
            [11] = { 526,0,2 },
            ["p0"] = { -1,0 },
            ["p6"] = { -1,0 }
        },
        female = {
            [1] = { 0,0,2 },
            [3] = { 0,0,2 },
            [4] = { 240,0,1 },
            [6] = { 36,0,1 },
            [7] = { 1,8,1 },
            [8] = { 15,0,1 },
            [9] = { 0,0,1 },
            [11] = { 567,0,1 },
            ["p6"] = { -1,0 },
            ["p0"] = { -1,0 }
        }
    },
}

-- easy insert
Config.Clothes["ComandoGeralPM"] = Config.Clothes["SoldadoPM"]
Config.Clothes["SubComandoGeralPM"] = Config.Clothes["SoldadoPM"]
Config.Clothes["CoronelPM"] = Config.Clothes["SoldadoPM"]
Config.Clothes["TenenteCoronelPM"] = Config.Clothes["SoldadoPM"]
Config.Clothes["MajorPM"] = Config.Clothes["SoldadoPM"]
Config.Clothes["ComandoSpeedPM"] = Config.Clothes["SoldadoPM"]
Config.Clothes["ComandoRocamPM"] = Config.Clothes["SoldadoPM"]
Config.Clothes["ComandoGrpaePM"] = Config.Clothes["SoldadoPM"]
Config.Clothes["CapitaoPM"] = Config.Clothes["SoldadoPM"]
Config.Clothes["SpeedPM"] = Config.Clothes["SoldadoPM"]
Config.Clothes["RocamPM"] = Config.Clothes["SoldadoPM"]
Config.Clothes["GrpaePM"] = Config.Clothes["SoldadoPM"]
Config.Clothes["PrimeiroTenentePM"] = Config.Clothes["SoldadoPM"]
Config.Clothes["SegundoTenentePM"] = Config.Clothes["SoldadoPM"]
Config.Clothes["SubTenentePM"] = Config.Clothes["SoldadoPM"]
Config.Clothes["PrimeiroSargentoPM"] = Config.Clothes["SoldadoPM"]
Config.Clothes["SegundoSargentoPM"] = Config.Clothes["SoldadoPM"]
Config.Clothes["TerceiroSargentoPM"] = Config.Clothes["SoldadoPM"]
Config.Clothes["SoldadoPM"] = Config.Clothes["SoldadoPM"]
Config.Clothes["CaboPM"] = Config.Clothes["SoldadoPM"]
Config.Clothes["AlunoPM"] = Config.Clothes["SoldadoPM"]

Config.Clothes["DiretorGeralPF"] = Config.Clothes["SoldadoPM"]
Config.Clothes["ViceDiretorGeralPF"] = Config.Clothes["SoldadoPM"]
Config.Clothes["CorregedoriaPF"] = Config.Clothes["SoldadoPM"]
Config.Clothes["ComandoSpeedPF"] = Config.Clothes["SoldadoPM"]
Config.Clothes["SubComandoSpeedPF"] = Config.Clothes["SoldadoPM"]
Config.Clothes["SpeedPF"] = Config.Clothes["SoldadoPM"]
Config.Clothes["InstrutorPF"] = Config.Clothes["SoldadoPM"]
Config.Clothes["DelegadoGeralPF"] = Config.Clothes["SoldadoPM"]
Config.Clothes["DelegadoPF"] = Config.Clothes["SoldadoPM"]
Config.Clothes["DelegadoAdjuntoPF"] = Config.Clothes["SoldadoPM"]
Config.Clothes["ComandoCOT"] = Config.Clothes["SoldadoPM"]
Config.Clothes["SubComandoCOT"] = Config.Clothes["SoldadoPM"]
Config.Clothes["EliteCOT"] = Config.Clothes["SoldadoPM"]
Config.Clothes["ComandoGTM"] = Config.Clothes["SoldadoPM"]
Config.Clothes["SubComandoGTM"] = Config.Clothes["SoldadoPM"]
Config.Clothes["GTM"] = Config.Clothes["SoldadoPM"]
Config.Clothes["ComandoCaop"] = Config.Clothes["SoldadoPM"]
Config.Clothes["SubComandoCaop"] = Config.Clothes["SoldadoPM"]
Config.Clothes["Caop"] = Config.Clothes["SoldadoPM"]
Config.Clothes["InvestigadorPF"] = Config.Clothes["SoldadoPM"]
Config.Clothes["PeritoPF"] = Config.Clothes["SoldadoPM"]
Config.Clothes["AgenteEspecialPF"] = Config.Clothes["SoldadoPM"]
Config.Clothes["AgentePF"] = Config.Clothes["SoldadoPM"]
Config.Clothes["RecrutaPF"] = Config.Clothes["SoldadoPM"]

Config.Clothes["ComandanteGeralCHOQUE"] = Config.Clothes["Choque"]
Config.Clothes["SubComandanteCHOQUE"] = Config.Clothes["Choque"]
Config.Clothes["CoronelCHOQUE"] = Config.Clothes["Choque"]
Config.Clothes["TenenteCoronelCHOQUE"] = Config.Clothes["Choque"]
Config.Clothes["MajorCHOQUE"] = Config.Clothes["Choque"]
Config.Clothes["CapitaoCHOQUE"] = Config.Clothes["Choque"]
Config.Clothes["GtmCHOQUE"] = Config.Clothes["Choque"]
Config.Clothes["SpeedCHOQUE"] = Config.Clothes["Choque"]
Config.Clothes["PrimeiroTenenteCHOQUE"] = Config.Clothes["Choque"]
Config.Clothes["SegundoTenenteCHOQUE"] = Config.Clothes["Choque"]
Config.Clothes["SubTenenteCHOQUE"] = Config.Clothes["Choque"]
Config.Clothes["PrimeiroSargentoCHOQUE"] = Config.Clothes["Choque"]
Config.Clothes["SegundoSargentoCHOQUE"] = Config.Clothes["Choque"]
Config.Clothes["TerceiroSargenteCHOQUE"] = Config.Clothes["Choque"]
Config.Clothes["CaboCHOQUE"] = Config.Clothes["Choque"]
Config.Clothes["SoldadoCHOQUE"] = Config.Clothes["Choque"]
Config.Clothes["EstagiarioCHOQUE"] = Config.Clothes["Choque"]

Config.Clothes["ComandoGot"] = Config.Clothes["SoldadoPM"]
Config.Clothes["SubComandoGot"] = Config.Clothes["SoldadoPM"]
Config.Clothes["CapitaoGot"] = Config.Clothes["SoldadoPM"]
Config.Clothes["SupervisorGot"] = Config.Clothes["SoldadoPM"]
Config.Clothes["InstrutorGot"] = Config.Clothes["SoldadoPM"]
Config.Clothes["EliteGot"] = Config.Clothes["SoldadoPM"]
Config.Clothes["SoldadoGot"] = Config.Clothes["SoldadoPM"]
Config.Clothes["EstagiarioGot"] = Config.Clothes["SoldadoPM"]

Config.Clothes["DiretorGeralPRF"] = Config.Clothes["SoldadoPM"]
Config.Clothes["SupervisorPRF"] = Config.Clothes["SoldadoPM"]
Config.Clothes["DiretorPRF"] = Config.Clothes["SoldadoPM"]
Config.Clothes["SupervisorGeralPRF"] = Config.Clothes["SoldadoPM"]
Config.Clothes["InspetorPRF"] = Config.Clothes["SoldadoPM"]
Config.Clothes["ComandoGRR"] = Config.Clothes["SoldadoPM"]
Config.Clothes["RecrutadorPRF"] = Config.Clothes["SoldadoPM"]
Config.Clothes["AgenteGRR"] = Config.Clothes["SoldadoPM"]
Config.Clothes["AgenteEspecialPRF"] = Config.Clothes["SoldadoPM"]
Config.Clothes["AGENTE1PRF"] = Config.Clothes["SoldadoPM"]
Config.Clothes["AGENTE2PRF"] = Config.Clothes["SoldadoPM"]
Config.Clothes["AGENTE3PRF"] = Config.Clothes["SoldadoPM"]
Config.Clothes["AlunoPRF"] = Config.Clothes["SoldadoPM"]

Config.Clothes["MarechalEXERCITO"] = Config.Clothes["SoldadoPM"]
Config.Clothes["GeneralEXERCITO"] = Config.Clothes["SoldadoPM"]
Config.Clothes["CoronelEXERCITO"] = Config.Clothes["SoldadoPM"]
Config.Clothes["TenenteCoronelEXERCITO"] = Config.Clothes["SoldadoPM"]
Config.Clothes["MajorEXERCITO"] = Config.Clothes["SoldadoPM"]
Config.Clothes["CapitaoEXERCITO"] = Config.Clothes["SoldadoPM"]
Config.Clothes["TenenteEXERCITO"] = Config.Clothes["SoldadoPM"]
Config.Clothes["SubtenenteEXERCITO"] = Config.Clothes["SoldadoPM"]
Config.Clothes["SargentoEXERCITO"] = Config.Clothes["SoldadoPM"]
Config.Clothes["CaboEXERCITO"] = Config.Clothes["SoldadoPM"]
Config.Clothes["SoldadoEXERCITO"] = Config.Clothes["SoldadoPM"]

Config.Clothes["ComandoGeralCivil"] = Config.Clothes["SoldadoPM"]
Config.Clothes["DelegadoGeral"] = Config.Clothes["SoldadoPM"]
Config.Clothes["Delegado"] = Config.Clothes["SoldadoPM"]
Config.Clothes["ComandoCore"] = Config.Clothes["SoldadoPM"]
Config.Clothes["SubComandoCore"] = Config.Clothes["SoldadoPM"]
Config.Clothes["Core"] = Config.Clothes["SoldadoPM"]
Config.Clothes["ComandoInvestigativa"] = Config.Clothes["SoldadoPM"]
Config.Clothes["SubComandoInvestigativa"] = Config.Clothes["SoldadoPM"]
Config.Clothes["Perito"] = Config.Clothes["SoldadoPM"]
Config.Clothes["Escrivao"] = Config.Clothes["SoldadoPM"]
Config.Clothes["Investigador"] = Config.Clothes["SoldadoPM"]
Config.Clothes["Agente"] = Config.Clothes["SoldadoPM"]
Config.Clothes["Recruta"] = Config.Clothes["SoldadoPM"]

Config.Clothes["Lider [Mecanica]"] = Config.Clothes["SoldadoPM"]
Config.Clothes["Sub-Lider [Mecanica]"] = Config.Clothes["SoldadoPM"]
Config.Clothes["Gerente [Mecanica]"] = Config.Clothes["SoldadoPM"]
Config.Clothes["Especialista [Mecanica]"] = Config.Clothes["SoldadoPM"]
Config.Clothes["Mecanico [Mecanica]"] = Config.Clothes["SoldadoPM"]
Config.Clothes["Borracheiro [Mecanica]"] = Config.Clothes["SoldadoPM"]

Config.Clothes["Lider [CUSTOMS]"] = Config.Clothes["SoldadoPM"]
Config.Clothes["Sub-Lider [CUSTOMS]"] = Config.Clothes["SoldadoPM"]
Config.Clothes["Gerente [CUSTOMS]"] = Config.Clothes["SoldadoPM"]
Config.Clothes["Especialista [CUSTOMS]"] = Config.Clothes["SoldadoPM"]
Config.Clothes["Mecanico [CUSTOMS]"] = Config.Clothes["SoldadoPM"]
Config.Clothes["Borracheiro [CUSTOMS]"] = Config.Clothes["SoldadoPM"]

Config.Clothes["Diretor"] = Config.Clothes["SoldadoPM"]
Config.Clothes["ViceDiretor"] = Config.Clothes["SoldadoPM"]
Config.Clothes["Gestao"] = Config.Clothes["SoldadoPM"]
Config.Clothes["Psiquiatra"] = Config.Clothes["SoldadoPM"]
Config.Clothes["Medico"] = Config.Clothes["SoldadoPM"]
Config.Clothes["Enfermeiro"] = Config.Clothes["SoldadoPM"]
Config.Clothes["Socorrista"] = Config.Clothes["SoldadoPM"]

Config.Clothes["CoronelBombeiro"] = Config.Clothes["SoldadoPM"]
Config.Clothes["TenenteCoronelBombeiro"] = Config.Clothes["SoldadoPM"]
Config.Clothes["MajorBombeiro"] = Config.Clothes["SoldadoPM"]
Config.Clothes["CapitaoBombeiro"] = Config.Clothes["SoldadoPM"]
Config.Clothes["TenenteBombeiro"] = Config.Clothes["SoldadoPM"]
Config.Clothes["AspiranteBombeiro"] = Config.Clothes["SoldadoPM"]
Config.Clothes["AspiranteBombeiro"] = Config.Clothes["SoldadoPM"]
Config.Clothes["AlunoOficialBombeiro"] = Config.Clothes["SoldadoPM"]

-- Bope
Config.Clothes["ComandanteGeralBOPE"] = Config.Clothes["UniformeBope"]
Config.Clothes["SubcomandanteBOPE"] = Config.Clothes["UniformeBope"]
Config.Clothes["CoronelBOPE"] = Config.Clothes["UniformeBope"]
Config.Clothes["TenenteCoronelBOPE"] = Config.Clothes["UniformeBope"]
Config.Clothes["MajorBOPE"] = Config.Clothes["UniformeBope"]
Config.Clothes["CapitaoBOPE"] = Config.Clothes["UniformeBope"]
Config.Clothes["PrimeiroTenenteBOPE"] = Config.Clothes["UniformeBope"]
Config.Clothes["SegundoTenenteBOPE"] = Config.Clothes["UniformeBope"]
Config.Clothes["SubTenenteBOPE"] = Config.Clothes["UniformeBope"]
Config.Clothes["PrimeiroSargentoBOPE"] = Config.Clothes["UniformeBope"]
Config.Clothes["SegundoSargentoBOPE"] = Config.Clothes["UniformeBope"]
Config.Clothes["TerceiroSargentoBOPE"] = Config.Clothes["UniformeBope"]
Config.Clothes["CaboBOPE"] = Config.Clothes["UniformeBope"]
Config.Clothes["SoldadoBOPE"] = Config.Clothes["UniformeBope"]
Config.Clothes["EstagiarioBOPE"] = Config.Clothes["UniformeBope"]

Config.WeaponsKit = {
    ["MCX"] = {
        name = "WEAPON_MCX",
        ammo = 250
    },
    ["SCARCIVIL"] = {
        name = "WEAPON_SCARCIVIL",
        ammo = 250
    },
    ["ARCHOQUE"] = {
        name = "WEAPON_ARCHOQUE",
        ammo = 250
    },
    ["G3WHITE"] = {
        name = "WEAPON_G3WHITE",
        ammo = 250
    },
    ["M4"] = {
        name = "WEAPON_CARBINERIFLE_MK2",
        ammo = 250
    },
    ["Glock"] = {
        name = "WEAPON_COMBATPISTOL",
        ammo = 250
    },
    ["PDW"] = {
        name = "WEAPON_COMBATPDW",
        ammo = 250
    },
    ["Taser"] = {
        name = "WEAPON_STUNGUN",
        ammo = 250
    },
    ["Cassetete"] = {
        name = "WEAPON_NIGHTSTICK",
        ammo = 250
    },
}

Config.Orgs = {
    ["Policia"] = {
        coords = {
            vec3(-1663.34,172.69,61.81),
        },
        radioChannel = 190,
        groups = {
            ["ComandoGeralPM"] = {
                WeaponsKit = { "G3WHITE", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["SubComandoGeralPM"] = {
                WeaponsKit = { "G3WHITE", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["CoronelPM"] = {
                WeaponsKit = { "G3WHITE", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["TenenteCoronelPM"] = {
                WeaponsKit = { "G3WHITE", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["MajorPM"] = {
                WeaponsKit = { "G3WHITE", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["ComandoSpeedPM"] = {
                WeaponsKit = { "G3WHITE", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["ComandoRocamPM"] = {
                WeaponsKit = { "G3WHITE", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["ComandoGrpaePM"] = {
                WeaponsKit = { "G3WHITE", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["CapitaoPM"] = {
                WeaponsKit = { "G3WHITE", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["SpeedPM"] = {
                WeaponsKit = { "G3WHITE", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["RocamPM"] = {
                WeaponsKit = { "G3WHITE", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["GrpaePM"] = {
                WeaponsKit = { "G3WHITE", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["PrimeiroTenentePM"] = {
                WeaponsKit = { "G3WHITE", "Glock", "PDW", "Cassetete" }
            },
            ["SegundoTenentePM"] = {
                WeaponsKit = { "G3WHITE", "Glock", "PDW", "Cassetete" }
            },
            ["SubTenentePM"] = {
                WeaponsKit = { "G3WHITE", "Glock", "PDW", "Cassetete" }
            },
            ["PrimeiroSargentoPM"] = {
                WeaponsKit = { "G3WHITE", "Glock", "PDW", "Cassetete" }
            },
            ["SegundoSargentoPM"] = {
                WeaponsKit = { "G3WHITE", "Glock", "PDW", "Cassetete" }
            },
            ["TerceiroSargentoPM"] = {
                WeaponsKit = { "G3WHITE", "Glock", "PDW", "Cassetete" }
            },
            ["SoldadoPM"] = {
                WeaponsKit = { "G3WHITE", "Glock", "PDW", "Cassetete" }
            },
            ["CaboPM"] = {
                WeaponsKit = { "Glock", "PDW", "Cassetete" }
            },
            ["AlunoPM"] = {
                WeaponsKit = { "Glock", "PDW", "Cassetete" }
            },
        }
    },

    ["Bope"] = {
        coords = {
            vec3(82.95,-409.59,41.62),
        },
        radioChannel = 2,
        groups = {
            ["ComandanteGeralBOPE"] = {
                WeaponsKit = { "MCX", "Glock", "Taser", "Parafal", "SMG"}
            },
            ["SubComandanteBOPE"] = {
                WeaponsKit = { "MCX", "Glock", "Taser", "Parafal", "SMG"}
            },
            ["CoronelBope"] = {
                WeaponsKit = { "MCX", "Glock", "Taser", "Parafal", "SMG"}
            },
            ["TenenteCoronelBope"] = {
                WeaponsKit = { "MCX", "Glock", "Taser", "Parafal", "SMG"}
            },
            ["MajorBope"] = {
                WeaponsKit = { "MCX", "Glock", "Taser", "Parafal", "SMG"}
            },
            ["CapitaoBope"] = {
                WeaponsKit = { "MCX", "Glock", "Taser", "Parafal", "SMG"}
            },
            ["PrimeiroTenenteBope"] = {
                WeaponsKit = { "MCX", "Glock", "Taser", "Parafal", "SMG"}
            },
            ["SegundoTenenteBope"] = {
                WeaponsKit = { "MCX", "Glock", "Taser", "Parafal", "SMG"}
            },
            ["SubTenenteBope"] = {
                WeaponsKit = { "MCX", "Glock", "Taser", "Parafal", "SMG"}
            },
            ["PrimeiroSargentoBope"] = {
                WeaponsKit = { "MCX", "Glock", "Taser", "Parafal", "SMG"}
            },
            ["SegundoSargentoBope"] = {
                WeaponsKit = { "MCX", "Glock", "Taser", "Parafal", "SMG"}
            },
            ["TerceiroSargenteBope"] = {
                WeaponsKit = { "MCX", "Glock", "Taser", "Parafal", "SMG"}
            },
            ["CaboBope"] = {
                WeaponsKit = { "MCX", "Glock", "Taser", "Parafal", "SMG"}
            },
            ["SoldadoBope"] = {
                WeaponsKit = { "MCX", "Glock", "Taser"}
            },
            ["EstagiarioBope"] = {
                WeaponsKit = { "Glock", "Taser"}
            },
        }
    },
    ["PF"] = {
        coords = {
            vec3(-785.82,-1220.33,6.86),
        },
        radioChannel = 4,
        groups = {
            ["DiretorGeralPF"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["ViceDiretorGeralPF"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["DelegadoGeralPF"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["DelegadoPF"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["DelegadoAdjuntoPF"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["CorregedoriaPF"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["ComandoCOT"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["SubComandoCOT"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["EliteCOT"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["ComandoGTM"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["SubComandoGTM"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["GTM"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["InstrutorPF"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["ComandoSpeedPF"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["SubComandoSpeedPF"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["SpeedPF"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["ComandoCaop"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["SubComandoCaop"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["Caop"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["InvestigadorPF"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["PeritoPF"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["AgenteEspecialPF"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["AgentePF"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["RecrutaPF"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            }
        }
    },    
    ["Choque"] = {
        coords = {
            vec3(-2057.82,-445.45,12.27),
        },
        radioChannel = 10,
        groups = {
            ["ComandanteGeralCHOQUE"] = {
                WeaponsKit = { "ARCHOQUE", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["SubComandanteCHOQUE"] = {
                WeaponsKit = { "ARCHOQUE", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["CoronelCHOQUE"] = {
                WeaponsKit = { "ARCHOQUE", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["TenenteCoronelCHOQUE"] = {
                WeaponsKit = { "ARCHOQUE", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["MajorCHOQUE"] = {
                WeaponsKit = { "ARCHOQUE", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["CapitaoCHOQUE"] = {
                WeaponsKit = { "ARCHOQUE", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["SpeedCHOQUE"] = {
                WeaponsKit = { "ARCHOQUE", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["GtmCHOQUE"] = {
                WeaponsKit = { "ARCHOQUE", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["PrimeiroTenenteCHOQUE"] = {
                WeaponsKit = { "ARCHOQUE", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["SegundoTenenteCHOQUE"] = {
                WeaponsKit = { "ARCHOQUE", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["SubTenenteCHOQUE"] = {
                WeaponsKit = { "ARCHOQUE", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["PrimeiroSargentoCHOQUE"] = {
                WeaponsKit = { "ARCHOQUE", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["SegundoSargentoCHOQUE"] = {
                WeaponsKit = { "ARCHOQUE", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["TerceiroSargenteCHOQUE"] = {
                WeaponsKit = { "ARCHOQUE", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["CaboCHOQUE"] = {
                WeaponsKit = { "ARCHOQUE", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["SoldadoCHOQUE"] = {
                WeaponsKit = { "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["EstagiarioCHOQUE"] = {
                WeaponsKit = { "Glock", "PDW", "Taser", "Cassetete" }
            },
        }
    },
    ["PRF"] = {
        coords = {
            vec3(2597.86,5335.47,47.67),
        },
        radioChannel = 5,
        groups = {
            ["DiretorGeralPRF"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["SupervisorPRF"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["DiretorPRF"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["SupervisorGeralPRF"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["InspetorPRF"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["ComandoGRR"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["RecrutadorPRF"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["AgenteGRR"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["AgenteEspecialPRF"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["AGENTE1PRF"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["AGENTE2PRF"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["AGENTE3PRF"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["AlunoPRF"] = {
                WeaponsKit = { "Glock", "PDW", "Taser", "Cassetete" }
            },
        }
    },
    ["Exercito"] = {
        coords = {
            vec3(-2174.55,3174.69,32.82),
        },
        radioChannel = 6,
        groups = {
            ["MarechalEXERCITO"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["GeneralEXERCITO"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["CoronelEXERCITO"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["TenenteCoronelEXERCITO"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["MajorEXERCITO"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["CapitaoEXERCITO"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["TenenteEXERCITO"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["SubtenenteEXERCITO"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["SargentoEXERCITO"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["CaboEXERCITO"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["SoldadoEXERCITO"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
        }
    },
    ["PoliciaCivil"] = {
        coords = {
            vec3(-470.12,1129.46,325.86),
        },
        radioChannel = 3,
        groups = {
            ["ComandoGeralCivil"] = {
                WeaponsKit = { "SCARCIVIL", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["DelegadoGeral"] = {
                WeaponsKit = { "SCARCIVIL", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["Delegado"] = {
                WeaponsKit = { "SCARCIVIL", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["ComandoCore"] = {
                WeaponsKit = { "SCARCIVIL", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["SubComandoCore"] = {
                WeaponsKit = { "SCARCIVIL", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["Core"] = {
                WeaponsKit = { "SCARCIVIL", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["ComandoInvestigativa"] = {
                WeaponsKit = { "SCARCIVIL", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["SubComandoInvestigativa"] = {
                WeaponsKit = { "SCARCIVIL", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["Perito"] = {
                WeaponsKit = { "SCARCIVIL", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["Escrivao"] = {
                WeaponsKit = { "SCARCIVIL", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["Investigador"] = {
                WeaponsKit = { "SCARCIVIL", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["Agente"] = {
                WeaponsKit = { "SCARCIVIL", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["Recruta"] = {
                WeaponsKit = { "Glock", "PDW", "Taser", "Cassetete" }
            },
        }
    },
    ["Got"] = {
        coords = {
            vec3(-1106.32,-826.76,14.27),
        },
        radioChannel = 525,
        groups = {
            ["ComandoGot"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["SubComandoGot"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["CapitaoGot"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["SupervisorGot"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["InstrutorGot"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["EliteGot"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["SoldadoGot"] = {
                WeaponsKit = { "M4", "Glock", "PDW", "Taser", "Cassetete" }
            },
            ["EstagiarioGot"] = {
                WeaponsKit = { "Glock", "PDW", "Taser", "Cassetete" }
            },
        }
    },
    ["Mecanica"] = {
        coords = {
            vec3(-341.52,-162.13,44.58),
        },
        radioChannel = 3,
        groups = {
            ["Lider [Mecanica]"] = {
                WeaponsKit = {}
            },
            ["Sub-Lider [Mecanica]"] = {
                WeaponsKit = {}
            },
            ["Gerente [Mecanica]"] = {
                WeaponsKit = {}
            },
            ["Especialista [Mecanica]"] = {
                WeaponsKit = {}
            },
            ["Mecanico [Mecanica]"] = {
                WeaponsKit = {}
            },
            ["Borracheiro [Mecanica]"] = {
                WeaponsKit = {}
            },
        }
    },
    --[[["Customs"] = {
        coords = {
            vec3(-933.48,-781.66,15.27),
        },
        radioChannel = 3,
        groups = {
            ["Lider [CUSTOMS]"] = {
                WeaponsKit = {}
            },
            ["Sub-Lider [CUSTOMS]"] = {
                WeaponsKit = {}
            },
            ["Gerente [CUSTOMS]"] = {
                WeaponsKit = {}
            },
            ["Especialista [CUSTOMS]"] = {
                WeaponsKit = {}
            },
            ["Mecanico [CUSTOMS]"] = {
                WeaponsKit = {}
            },
            ["Borracheiro [CUSTOMS]"] = {
                WeaponsKit = {}
            },
        }
    },--]]
    ["Hospital"] = {
        coords = {
            vec3( -855.03,-2185.55,8.95),
        },
        radioChannel = 192,
        groups = {
            ["Diretor"] = {
                WeaponsKit = {}
            },
            ["ViceDiretor"] = {
                WeaponsKit = {}
            },
            ["Gestao"] = {
                WeaponsKit = {}
            },
            ["Psiquiatra"] = {
                WeaponsKit = {}
            },
            ["Medico"] = {
                WeaponsKit = {}
            },
            ["Enfermeiro"] = {
                WeaponsKit = {}
            },
            ["Socorrista"] = {
                WeaponsKit = {}
            },
        }
    },
    ["Bombeiro"] = {
        coords = {
            vec3(1231.73,-1491.4,34.69),
        },
        radioChannel = 193,
        groups = {
            ["CoronelBombeiro"] = {
                WeaponsKit = { "Taser" }
            },
            ["TenenteCoronelBombeiro"] = {
                WeaponsKit = { "Taser" }
            },
            ["MajorBombeiro"] = {
                WeaponsKit = { "Taser" }
            },
            ["CapitaoBombeiro"] = {
                WeaponsKit = { "Taser" }
            },
            ["TenenteBombeiro"] = {
                WeaponsKit = { "Taser" }
            },
            ["AspiranteBombeiro"] = {
                WeaponsKit = { "Taser" }
            },
            ["AlunoOficialBombeiro"] = {
                WeaponsKit = { "Taser" }
            },
        }
    },
}