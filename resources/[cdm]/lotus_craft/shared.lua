Shops = {
    [1] = { amount = 5000, buyed = false, price = 100000 },
    [2] = { amount = 10000, buyed = false, price = 250000 },
    [3] = { amount = 20000, buyed = false, price = 500000 },
    [4] = { amount = 30000, buyed = false, price = 1000000 },
    [5] = { amount = 50000, buyed = false, price = 2500000 },
    [6] = { amount = 100000, buyed = false, price = 5000000 },
    [7] = { amount = 500000, buyed = false, price = 10000000 },
}

CraftConfig = {
    Tables = {
        -------------- [ DOMINAS ] --------------

        ['Dominacao [ARMAS]'] = {
            Config = {
                hasDominas = 'Armas',
                permission = 'perm.liderarma',
                location = vec3(583.53, -3110.94, 6.07)
            },

            Itens = {
                {
                    item = "WEAPON_APPISTOL",                                                 -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 215 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        -- { item = "gatilho" , amount = 5 },
                        -- { item = "molas" , amount = 90 },
                        -- { item = "metal" , amount = 90 }
                    }
                },

                {
                    item = "WEAPON_SMG_MK2",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 515 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        -- { item = "gatilho" , amount = 5 },
                        -- { item = "molas" , amount = 130 },
                        -- { item = "metal" , amount = 130 }
                    }
                },

                {
                    item = "WEAPON_MICROSMG",                                                 -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 415 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        -- { item = "gatilho" , amount = 5 },
                        -- { item = "molas" , amount = 100 },
                        -- { item = "metal" , amount = 100 }
                    }
                },
            }
        },

        ['Dominacao [MUNICAO]'] = {
            Config = {
                hasDominas = 'Municao',
                permission = 'perm.lidermuni',
                location = vec3(121.18, -3103.78, 6.02)
            },

            Itens = {
                {
                    item = "AMMO_SMG_MK2",                                                    -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 300 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 200 },
                    }
                },

                {
                    item = "AMMO_APPISTOL",                                                   -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 300 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 200 },
                        { item = "money",    amount = 10000 },
                    }
                },

                {
                    item = "AMMO_MICROSMG",                                                   -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 300 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 200 },
                        { item = "money",    amount = 15000 },
                    }
                },
            }
        },


        ['Dominacao [GERAL]'] = {
            Config = {
                hasDominas = 'Geral',
                permission = nil,
                location = vec3(2755.67, 1548.32, 30.82)
            },

            Itens = {
                {
                    item = "WEAPON_PUMPSHOTGUN_MK2",                                          -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "money", amount = 10000000 },
                    }
                },

                {
                    item = "AMMO_PUMPSHOTGUN_MK2",                                            -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "money", amount = 1000000 },
                    }
                },

                {
                    item = "cogumelo",                                                        -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "money", amount = 20000 },
                    }
                },

                {
                    item = "barricada",                                                       -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "money", amount = 100000 },
                    }
                },
                {
                    item = "WEAPON_G3LUNETA_RELIKIASHOP",                                     -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "money", amount = 5000000 },
                    }
                },

                {
                    item = "AMMO_G3LUNETA_RELIKIASHOP",                                       -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "money", amount = 1000000 },
                    }
                },

                {
                    item = "WEAPON_ARPENTEACRILICO_RELIKIASHOP",                              -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "money", amount = 700000 },
                    }
                },

                {
                    item = "AMMO_ARPENTEACRILICO_RELIKIASHOP",                                -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "money", amount = 1200000 },
                    }
                },
            }
        },

        ['Dominacao [LAVAGEM]'] = {
            Config = {
                hasDominas = 'Lavagem',
                permission = 'perm.liderlavagem',
                location = vec3(-234.43,-1999.09,24.68)
            },

            Itens = {
                {
                    item = "money",                                                           -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 180000,                                                    -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "dirty_money", amount = 200000 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "l-alvejante", amount = 20 }
                    }
                },

            }
        },

        ['Dominacao [DROGAS]'] = {
            Config = {
                hasDominas = 'Drogas',
                permission = 'perm.ilegal',
                location = vec3(-316.89,-2786.16,5.0)
            },

            Itens = {
                {
                    item = "adrenalina",                                                      -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "money", amount = 50000 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

            }
        },

        ['Dominacao [DESMANCHE]'] = {
            Config = {
                hasDominas = 'Desmanche',
                permission = 'perm.craftdesmanche',
                location = vec3(2337.06,3050.34,48.16)
            },

            Itens = {
                {
                    item = "lockpick",                                                        -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "ferro",    amount = 30 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio", amount = 30 }
                    }
                },
                {
                    item = "ticket",                                                          -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "papel", amount = 10 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "garrafanitro",                                                    -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "aluminio", amount = 40 },     -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "ferro",    amount = 40 },     -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "money",    amount = 30000 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "body_armor",                                                      -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "fibradecarbono", amount = 40 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "poliester",      amount = 40 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

            }
        },

        -------------- [ MESAS ] --------------

        -- ARMAS
        ['Anonymous'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.lideranonymous",
                location = vec3(-1490.38, 833.99, 176.99)
            },
            Itens = {
                {
                    item = "WEAPON_SNSPISTOL_MK2",                                            -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 65, }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_PISTOL_MK2",                                               -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 105 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_MACHINEPISTOL",                                            -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 215 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_SMG",                                                      -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 265 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_ASSAULTRIFLE",                                             -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 300 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_ASSAULTRIFLE_MK2",                                         -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 350 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_SPECIALCARBINE_MK2",                                       -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 450 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_PARAFAL",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 650 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_AR10BXD",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 750 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
            }
        },
        ['Corleone'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.lidercorleone",
                location = vec3(-2933.73, 36.93, 11.61)
            },
            Itens = {
                {
                    item = "WEAPON_SNSPISTOL_MK2",                                            -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 65, }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_PISTOL_MK2",                                               -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 105 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_MACHINEPISTOL",                                            -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 215 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_SMG",                                                      -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 265 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_ASSAULTRIFLE",                                             -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 300 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_ASSAULTRIFLE_MK2",                                         -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 350 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_SPECIALCARBINE_MK2",                                       -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 450 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_PARAFAL",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 650 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_AR10BXD",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 750 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
            }
        },
        ['PCC'] = {
            Config = {
                hasDominas = nil,
                permission = 'perm.liderpcc',
                location = vec3(-1702.89,-246.71,61.16)
            },
            Itens = {
                {
                    item = "WEAPON_SNSPISTOL_MK2",                                            -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 65, }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_PISTOL_MK2",                                               -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 105 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_MACHINEPISTOL",                                            -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 215 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_SMG",                                                      -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 265 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_ASSAULTRIFLE",                                             -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 300 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_ASSAULTRIFLE_MK2",                                         -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 350 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_SPECIALCARBINE_MK2",                                       -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 450 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_PARAFAL",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 650 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_AR10BXD",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 750 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_M16PCC",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearmaexclusiva", amount = 700 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "AMMO_M16PCC",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "capsulaexclusiva", amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "money", amount = 30000 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_UMPPCC",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearmaexclusiva", amount = 600 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "AMMO_UMPPCC",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "capsulaexclusiva", amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "money", amount = 30000 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "opio",                                                            -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "opiopapoula", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "heroina",                                                         -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "morfina", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
            }
        },
        
        ['Korea'] = {
            Config = {
                hasDominas = nil,
                permission = 'perm.liderkorea',
                location = vec3(-966.38,346.63,72.17)
            },
            Itens = {
                {
                    item = "WEAPON_SNSPISTOL_MK2",                                            -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 65, }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_PISTOL_MK2",                                               -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 105 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_MACHINEPISTOL",                                            -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 215 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_SMG",                                                      -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 265 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_ASSAULTRIFLE",                                             -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 300 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_ASSAULTRIFLE_MK2",                                         -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 350 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_SPECIALCARBINE_MK2",                                       -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 450 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_PARAFAL",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 650 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_AR10BXD",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 750 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
            }
        },


        ['Grota'] = {
            Config = {
                hasDominas = nil,
                permission = 'perm.lidergrota',
                location = vec3(1277.71,-156.0,98.54)
            },
            Itens = {
                {
                    item = "cocaina",                                                         -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pastabase", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "maconha",                                                         -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "folhamaconha", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_MTARGROTA",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearmaexclusiva", amount = 600 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "AMMO_SNSPISTOL_MK2",                                              -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 75 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 }
                    }
                },

                {
                    item = "AMMO_PISTOL_MK2",                                                 -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 150 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 }
                    }
                },

                {
                    item = "AMMO_ASSAULTRIFLE",                                               -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 150 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 },
                        { item = "money",    amount = 5000 },
                    }
                },

                {
                    item = "AMMO_SMG",                                                        -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 150 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 },
                        { item = "money",    amount = 10000 },
                    }
                },

                {
                    item = "AMMO_MACHINEPISTOL",                                              -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 150 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 },
                        { item = "money",    amount = 10000 },
                    }
                },

                {
                    item = "AMMO_ASSAULTRIFLE_MK2",                                           -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 150 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 },
                        { item = "money",    amount = 15000 },
                    }
                },

                {
                    item = "AMMO_SPECIALCARBINE_MK2",                                         -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 150 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 },
                        { item = "money",    amount = 30000 },
                    }
                },

                {
                    item = "AMMO_PARAFAL",                                                    -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 180 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 150 },
                        { item = "money",    amount = 40000 },
                    }
                },

                {
                    item = "AMMO_AR10BXD",                                                    -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 180 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 150 },
                        { item = "money",    amount = 45000 },
                    }
                },

                {
                    item = "AMMO_MTARGROTA",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "capsulaexclusiva", amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "money", amount = 30000 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_FALLGROTA",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearmaexclusiva", amount = 700 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "AMMO_FALLGROTA",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "capsulaexclusiva", amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "money", amount = 30000 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
            }
        },

        ['Mafia'] = {
            Config = {
                hasDominas = nil,
                permission = 'perm.lidermafia',
                location = vec3(412.22, 3.8, 84.92)
            },
            Itens = {
                {
                    item = "WEAPON_SNSPISTOL_MK2",                                            -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 65, }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_PISTOL_MK2",                                               -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 105 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_MACHINEPISTOL",                                            -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 215 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_SMG",                                                      -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 265 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_ASSAULTRIFLE",                                             -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 300 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_ASSAULTRIFLE_MK2",                                         -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 350 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_SPECIALCARBINE_MK2",                                       -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 450 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_PARAFAL",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 650 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_AR10BXD",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 750 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
            }
        },

        --[[['Inglaterra'] = {
            Config = {
                hasDominas = nil,
                permission = 'perm.lideringlaterra',
                location = vec3(-1549.12, 81.66, 53.87)
            },
            Itens = {
                {
                    item = "WEAPON_SNSPISTOL_MK2",                                            -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 65, }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_PISTOL_MK2",                                               -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 105 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_MACHINEPISTOL",                                            -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 215 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_SMG",                                                      -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 265 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_ASSAULTRIFLE",                                             -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 300 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_ASSAULTRIFLE_MK2",                                         -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 350 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_SPECIALCARBINE_MK2",                                       -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 450 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_PARAFAL",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 650 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_AR10BXD",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 750 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
            }
        },--]]

        -- ['Croacia'] = {
        --     Config = {
        --         hasDominas = nil,
        --         permission = 'perm.lidercroacia',
        --         location = vec3(-803.12, -1806.46, 38.45)
        --     },
        --     Itens = {
        --         {
        --             item = "balinha",                                                         -- SPAWN DO ITEM
        --             time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
        --             customAmount = 2,                                                         -- Oque cada unidade vai fabricar
        --             anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

        --             requires = {
        --                 { item = "podemd", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
        --             }
        --         },
        --         {
        --             item = "lancaperfume",                                                    -- SPAWN DO ITEM
        --             time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
        --             customAmount = 2,                                                         -- Oque cada unidade vai fabricar
        --             anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

        --             requires = {
        --                 { item = "respingodesolda", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
        --             }
        --         },
        --         {
        --             item = "WEAPON_SNSPISTOL_MK2",                                            -- SPAWN DO ITEM
        --             time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
        --             customAmount = 1,                                                         -- Oque cada unidade vai fabricar
        --             anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

        --             requires = {
        --                 { item = "pecadearma", amount = 65, }, -- ITEM / QUANTIDADE ( POR UNIDADE )
        --             }
        --         },

        --         {
        --             item = "WEAPON_PISTOL_MK2",                                               -- SPAWN DO ITEM
        --             time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
        --             customAmount = 1,                                                         -- Oque cada unidade vai fabricar
        --             anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

        --             requires = {
        --                 { item = "pecadearma", amount = 105 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
        --             }
        --         },

        --         {
        --             item = "WEAPON_MACHINEPISTOL",                                            -- SPAWN DO ITEM
        --             time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
        --             customAmount = 1,                                                         -- Oque cada unidade vai fabricar
        --             anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

        --             requires = {
        --                 { item = "pecadearma", amount = 215 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
        --             }
        --         },

        --         {
        --             item = "WEAPON_SMG",                                                      -- SPAWN DO ITEM
        --             time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
        --             customAmount = 1,                                                         -- Oque cada unidade vai fabricar
        --             anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

        --             requires = {
        --                 { item = "pecadearma", amount = 265 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
        --             }
        --         },

        --         {
        --             item = "WEAPON_ASSAULTRIFLE",                                             -- SPAWN DO ITEM
        --             time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
        --             customAmount = 1,                                                         -- Oque cada unidade vai fabricar
        --             anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

        --             requires = {
        --                 { item = "pecadearma", amount = 300 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
        --             }
        --         },

        --         {
        --             item = "WEAPON_ASSAULTRIFLE_MK2",                                         -- SPAWN DO ITEM
        --             time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
        --             customAmount = 1,                                                         -- Oque cada unidade vai fabricar
        --             anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

        --             requires = {
        --                 { item = "pecadearma", amount = 350 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
        --             }
        --         },

        --         {
        --             item = "WEAPON_SPECIALCARBINE_MK2",                                       -- SPAWN DO ITEM
        --             time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
        --             customAmount = 1,                                                         -- Oque cada unidade vai fabricar
        --             anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

        --             requires = {
        --                 { item = "pecadearma", amount = 450 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
        --             }
        --         },

        --         {
        --             item = "WEAPON_PARAFAL",                                                  -- SPAWN DO ITEM
        --             time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
        --             customAmount = 1,                                                         -- Oque cada unidade vai fabricar
        --             anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

        --             requires = {
        --                 { item = "pecadearma", amount = 650 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
        --             }
        --         },

        --         {
        --             item = "WEAPON_AR10BXD",                                                  -- SPAWN DO ITEM
        --             time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
        --             customAmount = 1,                                                         -- Oque cada unidade vai fabricar
        --             anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

        --             requires = {
        --                 { item = "pecadearma", amount = 750 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
        --             }
        --         },

        --         {
        --             item = "WEAPON_AKCROACIA",                                                  -- SPAWN DO ITEM
        --             time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
        --             customAmount = 1,                                                         -- Oque cada unidade vai fabricar
        --             anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

        --             requires = {
        --                 { item = "pecadearmaexclusiva", amount = 700 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
        --             }
        --         },

        --         {
        --             item = "AMMO_AKCROACIA",                                                  -- SPAWN DO ITEM
        --             time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
        --             customAmount = 100,                                                         -- Oque cada unidade vai fabricar
        --             anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

        --             requires = {
        --                 { item = "capsulaexclusiva", amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
        --                 { item = "money", amount = 30000 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
        --             }
        --         },

        --         {
        --             item = "WEAPON_ARCROACIA",                                                  -- SPAWN DO ITEM
        --             time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
        --             customAmount = 1,                                                         -- Oque cada unidade vai fabricar
        --             anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

        --             requires = {
        --                 { item = "pecadearmaexclusiva", amount = 700 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
        --             }
        --         },

        --         {
        --             item = "AMMO_ARCROACIA",                                                  -- SPAWN DO ITEM
        --             time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
        --             customAmount = 100,                                                         -- Oque cada unidade vai fabricar
        --             anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

        --             requires = {
        --                 { item = "capsulaexclusiva", amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
        --                 { item = "money", amount = 30000 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
        --             }
        --         },
        --     }
        -- },

        ['Tcp'] = {
            Config = {
                hasDominas = nil,
                permission = 'perm.lidertcp',
                location = vec3(937.18,360.37,112.08)
            },
            Itens = {
                {
                    item = "WEAPON_SNSPISTOL_MK2",                                            -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 65, }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_PISTOL_MK2",                                               -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 105 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_MACHINEPISTOL",                                            -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 215 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_SMG",                                                      -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 265 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_ASSAULTRIFLE",                                             -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 300 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_ASSAULTRIFLE_MK2",                                         -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 350 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_SPECIALCARBINE_MK2",                                       -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 450 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_PARAFAL",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 650 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_AR10BXD",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 750 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_ARTCP3",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearmaexclusiva", amount = 700 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "AMMO_ARTCP3",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "capsulaexclusiva", amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "money", amount = 30000 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "opio",                                                            -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "opiopapoula", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "heroina",                                                         -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "morfina", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
            }
        },
        
        -- MUNICAO
        
        ['Colombia'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.lidercolombia",
                location = vec3(-799.87, 187.13, 72.61)
            },
            Itens = { 
                {
                    item = "AMMO_SNSPISTOL_MK2",                                              -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 75 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 }
                    }
                },

                {
                    item = "AMMO_PISTOL_MK2",                                                 -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 150 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 }
                    }
                },

                {
                    item = "AMMO_ASSAULTRIFLE",                                               -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 150 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 },
                        { item = "money",    amount = 5000 },
                    }
                },

                {
                    item = "AMMO_SMG",                                                        -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 150 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 },
                        { item = "money",    amount = 10000 },
                    }
                },

                {
                    item = "AMMO_MACHINEPISTOL",                                              -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 150 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 },
                        { item = "money",    amount = 10000 },
                    }
                },

                {
                    item = "AMMO_ASSAULTRIFLE_MK2",                                           -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 150 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 },
                        { item = "money",    amount = 15000 },
                    }
                },

                {
                    item = "AMMO_SPECIALCARBINE_MK2",                                         -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 150 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 },
                        { item = "money",    amount = 30000 },
                    }
                },

                {
                    item = "AMMO_PARAFAL",                                                    -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 180 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 150 },
                        { item = "money",    amount = 40000 },
                    }
                },

                {
                    item = "AMMO_AR10BXD",                                                    -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 180 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 150 },
                        { item = "money",    amount = 45000 },
                    }
                },
            }
        },
        ['CV'] = {
            Config = {
                hasDominas = nil,
                permission = 'perm.lidercv',
                location = vec3(1466.66,-719.53,85.68)
            },
            Itens = {
                {
                    item = "balinha",                                                         -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "podemd", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "lancaperfume",                                                    -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "respingodesolda", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "WEAPON_SNSPISTOL_MK2",                                            -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 65, }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_PISTOL_MK2",                                               -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 105 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_MACHINEPISTOL",                                            -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 215 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_SMG",                                                      -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 265 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_ASSAULTRIFLE",                                             -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 300 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_ASSAULTRIFLE_MK2",                                         -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 350 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_SPECIALCARBINE_MK2",                                       -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 450 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_PARAFAL",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 650 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_AR10BXD",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 750 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "WEAPON_ARTAMBOR100",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearmaexclusiva", amount = 700 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "AMMO_ARTAMBOR100",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "capsulaexclusiva", amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "money", amount = 30000 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "WEAPON_ARCV2",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearmaexclusiva", amount = 700 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "AMMO_ARCV2",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "capsulaexclusiva", amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "money", amount = 30000 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
            }
        },
        
       

        ['Turquia'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.liderturquia",
                location = vec3(-804.06,-1808.3,38.45)
            },
            Itens = {
                {
                    item = "metanfetamina",                                                         -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "anfetamina", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "haxixe",                                                          -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "resinacannabis", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "AMMO_SNSPISTOL_MK2",                                              -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 75 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 }
                    }
                },

                {
                    item = "AMMO_PISTOL_MK2",                                                 -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 150 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 }
                    }
                },

                {
                    item = "AMMO_ASSAULTRIFLE",                                               -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 150 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 },
                        { item = "money",    amount = 5000 },
                    }
                },

                {
                    item = "AMMO_SMG",                                                        -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 150 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 },
                        { item = "money",    amount = 10000 },
                    }
                },

                {
                    item = "AMMO_MACHINEPISTOL",                                              -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 150 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 },
                        { item = "money",    amount = 10000 },
                    }
                },

                {
                    item = "AMMO_ASSAULTRIFLE_MK2",                                           -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 150 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 },
                        { item = "money",    amount = 15000 },
                    }
                },

                {
                    item = "AMMO_SPECIALCARBINE_MK2",                                         -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 150 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 },
                        { item = "money",    amount = 30000 },
                    }
                },

                {
                    item = "AMMO_PARAFAL",                                                    -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 180 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 150 },
                        { item = "money",    amount = 40000 },
                    }
                },
                {
                    item = "AMMO_AR10BXD",                                                    -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 180 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 150 },
                        { item = "money",    amount = 45000 },
                    }
                },
            }
        },

        ['Franca'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.liderfranca",
                location = vec3(794.31,-309.03,66.32)
            },
            Itens = {
                {
                    item = "metanfetamina",                                                         -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "anfetamina", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "haxixe",                                                          -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "resinacannabis", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "AMMO_SNSPISTOL_MK2",                                              -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 75 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 }
                    }
                },

                {
                    item = "AMMO_PISTOL_MK2",                                                 -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 150 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 }
                    }
                },

                {
                    item = "AMMO_ASSAULTRIFLE",                                               -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 150 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 },
                        { item = "money",    amount = 5000 },
                    }
                },

                {
                    item = "AMMO_SMG",                                                        -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 150 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 },
                        { item = "money",    amount = 10000 },
                    }
                },

                {
                    item = "AMMO_MACHINEPISTOL",                                              -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 150 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 },
                        { item = "money",    amount = 10000 },
                    }
                },

                {
                    item = "AMMO_ASSAULTRIFLE_MK2",                                           -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 150 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 },
                        { item = "money",    amount = 15000 },
                    }
                },

                {
                    item = "AMMO_SPECIALCARBINE_MK2",                                         -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 150 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 },
                        { item = "money",    amount = 30000 },
                    }
                },

                {
                    item = "AMMO_PARAFAL",                                                    -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 180 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 150 },
                        { item = "money",    amount = 40000 },
                    }
                },
                {
                    item = "AMMO_AR10BXD",                                                    -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 180 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 150 },
                        { item = "money",    amount = 45000 },
                    }
                },
                {
                    item = "WEAPON_ARFRANCA",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearmaexclusiva", amount = 700 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "AMMO_ARFRANCA",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "capsulaexclusiva", amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "money", amount = 30000 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
            }
        },

        ['Yakuza'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.lideryakuza",
                location = vec3(-901.68, -1434.69, 9.84)
            },
            Itens = {
                {
                    item = "AMMO_SNSPISTOL_MK2",                                              -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 75 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 }
                    }
                },

                {
                    item = "AMMO_PISTOL_MK2",                                                 -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 150 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 }
                    }
                },

                {
                    item = "AMMO_ASSAULTRIFLE",                                               -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 150 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 },
                        { item = "money",    amount = 5000 },
                    }
                },

                {
                    item = "AMMO_SMG",                                                        -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 150 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 },
                        { item = "money",    amount = 10000 },
                    }
                },

                {
                    item = "AMMO_MACHINEPISTOL",                                              -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 150 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 },
                        { item = "money",    amount = 10000 },
                    }
                },

                {
                    item = "AMMO_ASSAULTRIFLE_MK2",                                           -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 150 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 },
                        { item = "money",    amount = 15000 },
                    }
                },

                {
                    item = "AMMO_SPECIALCARBINE_MK2",                                         -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 150 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 },
                        { item = "money",    amount = 30000 },
                    }
                },

                {
                    item = "AMMO_PARAFAL",                                                    -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 180 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 150 },
                        { item = "money",    amount = 40000 },
                    }
                },

                {
                    item = "AMMO_AR10BXD",                                                    -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 180 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 150 },
                        { item = "money",    amount = 45000 },
                    }
                },
            }
        },

        ['Cpx'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.lidercpx",
                location = vec3(-1769.24,-115.89,95.4)
            },
            Itens = {
                {
                    item = "cocaina",                                                         -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "pastabase", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "maconha",                                                         -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "folhamaconha", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "AMMO_SNSPISTOL_MK2",                                              -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 75 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 }
                    }
                },

                {
                    item = "AMMO_PISTOL_MK2",                                                 -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 150 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 }
                    }
                },

                {
                    item = "AMMO_ASSAULTRIFLE",                                               -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 150 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 },
                        { item = "money",    amount = 5000 },
                    }
                },

                {
                    item = "AMMO_SMG",                                                        -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 150 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 },
                        { item = "money",    amount = 10000 },
                    }
                },

                {
                    item = "AMMO_MACHINEPISTOL",                                              -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 150 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 },
                        { item = "money",    amount = 10000 },
                    }
                },

                {
                    item = "AMMO_ASSAULTRIFLE_MK2",                                           -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 150 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 },
                        { item = "money",    amount = 15000 },
                    }
                },

                {
                    item = "AMMO_SPECIALCARBINE_MK2",                                         -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 150 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 100 },
                        { item = "money",    amount = 30000 },
                    }
                },

                {
                    item = "AMMO_PARAFAL",                                                    -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 180 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 150 },
                        { item = "money",    amount = 40000 },
                    }
                },

                {
                    item = "AMMO_AR10BXD",                                                    -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                       -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "polvora",  amount = 180 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas", amount = 150 },
                        { item = "money",    amount = 45000 },
                    }
                },

            }
        },



        -- DESMANCHE
        ['Elements'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.liderelements",
                location = vec3(-193.29, -1712.62, 33.01)
            },
            Itens = {
                {
                    item = "lockpick",                                                        -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "ferro",    amount = 50 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio", amount = 50 }
                    }
                },
                {
                    item = "ticket",                                                          -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "papel", amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "garrafanitro",                                                    -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "ferro",    amount = 50 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio", amount = 50 },
                        { item = "money",    amount = 50000 }
                    }
                },
                {
                    item = "body_armor",                                                      -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "fibradecarbono", amount = 60 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "poliester",      amount = 60 }
                    }
                },
            }
        },
        ['Bennys'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.liderbennys",
                location = vec3(-204.03,-1341.42,30.89)
            },
            Itens = {
                {
                    item = "lockpick",                                                        -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "ferro",    amount = 50 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio", amount = 50 }
                    }
                },
                {
                    item = "ticket",                                                          -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "papel", amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "garrafanitro",                                                    -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "ferro",    amount = 50 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio", amount = 50 },
                        { item = "money",    amount = 50000 }
                    }
                },
                {
                    item = "body_armor",                                                      -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "fibradecarbono", amount = 60 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "poliester",      amount = 60 }
                    }
                },
            }
        },

        ['Ballas'] = {
            Config = {
                hasDominas = nil,
                permission = 'perm.liderballas',
                location = vec3(90.59, -1989.95, 20.41)
            },

            Itens = {
                {
                    item = "lockpick",                                                        -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "ferro",    amount = 50 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio", amount = 50 }
                    }
                },
                {
                    item = "ticket",                                                          -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "papel", amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "garrafanitro",                                                    -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "ferro",    amount = 50 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio", amount = 50 },
                        { item = "money",    amount = 50000 }
                    }
                },
                {
                    item = "body_armor",                                                      -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "fibradecarbono", amount = 60 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "poliester",      amount = 60 }
                    }
                },
            }
        },

        ['HellsAngels'] = {
            Config = {
                hasDominas = nil,
                permission = 'perm.gerentehells',
                location = vec3(1037.16, -2527.51, 28.29)
            },

            Itens = {
                {
                    item = "lockpick",                                                        -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "ferro",    amount = 50 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio", amount = 50 }
                    }
                },
                {
                    item = "ticket",                                                          -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "papel", amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "garrafanitro",                                                    -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "ferro",    amount = 50 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio", amount = 50 },
                        { item = "money",    amount = 50000 }
                    }
                },
                {
                    item = "body_armor",                                                      -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "fibradecarbono", amount = 60 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "poliester",      amount = 60 }
                    }
                },
            }
        },
        ['Motoclube'] = {
            Config = {
                hasDominas = nil,
                permission = 'perm.lidermotoclube',
                location = vec3(972.15,-98.03,74.34)
            },

            Itens = {
                {
                    item = "lockpick",                                                        -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "ferro",    amount = 50 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio", amount = 50 }
                    }
                },
                {
                    item = "ticket",                                                          -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "papel", amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "garrafanitro",                                                    -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "ferro",    amount = 50 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio", amount = 50 },
                        { item = "money",    amount = 50000 }
                    }
                },
                {
                    item = "body_armor",                                                      -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "fibradecarbono", amount = 60 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "poliester",      amount = 60 }
                    }
                },
                {
                    item = "WEAPON_HK417DENDE",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearmaexclusiva", amount = 700 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "AMMO_HK417DENDE",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "capsulaexclusiva", amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "money", amount = 30000 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
            }
        },

        ['Lacoste'] = {
            Config = {
                hasDominas = nil,
                permission = 'perm.gerentelacoste',
                location = vec3(737.6, -1088.78, 22.16)
            },

            Itens = {
                {
                    item = "lockpick",                                                        -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "ferro",    amount = 50 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio", amount = 50 }
                    }
                },
                {
                    item = "ticket",                                                          -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "papel", amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "garrafanitro",                                                    -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "ferro",    amount = 50 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio", amount = 50 },
                        { item = "money",    amount = 50000 }
                    }
                },
                {
                    item = "body_armor",                                                      -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "fibradecarbono", amount = 60 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "poliester",      amount = 60 }
                    }
                },
            }
        },

        ['Tequila'] = {
            Config = {
                hasDominas = nil,
                permission = 'perm.lidertequila',
                location = vec3(-571.68,289.05,79.18)
            },

            Itens = {
                {
                    item = "lockpick",                                                        -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "ferro",    amount = 50 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio", amount = 50 }
                    }
                },
                {
                    item = "ticket",                                                          -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "papel", amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "garrafanitro",                                                    -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "ferro",    amount = 50 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio", amount = 50 },
                        { item = "money",    amount = 50000 }
                    }
                },
                {
                    item = "body_armor",                                                      -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "fibradecarbono", amount = 60 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "poliester",      amount = 60 }
                    }
                },
            }
        },

        ['Grecia'] = {
            Config = {
                hasDominas = nil,
                permission = 'perm.lidergrecia',
                location = vec3(-338.96, -1519.0, 33.19)
            },

            Itens = {
                {
                    item = "lockpick",                                                        -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "ferro",    amount = 50 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio", amount = 50 }
                    }
                },
                {
                    item = "ticket",                                                          -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "papel", amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "garrafanitro",                                                    -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "ferro",    amount = 50 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio", amount = 50 },
                        { item = "money",    amount = 50000 }
                    }
                },
                {
                    item = "body_armor",                                                      -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "fibradecarbono", amount = 60 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "poliester",      amount = 60 }
                    }
                },
            }
        },

        ['Customs'] = {
            Config = {
                hasDominas = nil,
                permission = 'perm.liderplayboy',
                location = vec3(-697.31,-816.64,33.01)
            },

            Itens = {
                {
                    item = "lockpick",                                                        -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "ferro",    amount = 50 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio", amount = 50 }
                    }
                },
                {
                    item = "ticket",                                                          -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "papel", amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "garrafanitro",                                                    -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "ferro",    amount = 50 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio", amount = 50 },
                        { item = "money",    amount = 50000 }
                    }
                },
                {
                    item = "body_armor",                                                      -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "fibradecarbono", amount = 60 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "poliester",      amount = 60 }
                    }
                },
            }
        },

        -------------- [ LAVAGEM SEM DOMINACAO ]------------------------

        ['Galaxy'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.lidergalaxy",
                location = vec3(-215.78, -317.48, 28.46)
            },

            Itens = {
                {
                    item = "money",                                                           -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 160000,                                                    -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "dirty_money", amount = 200000 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "l-alvejante", amount = 20 }
                    }
                },
                {
                    item = "capuz",                                                           -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "fibradecarbono", amount = 20 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "poliester",      amount = 20 }
                    }
                },

                {
                    item = "corda",                                                           -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "fibradecarbono", amount = 25 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "poliester",      amount = 25 }
                    }
                },

                {
                    item = "algemas",                                                         -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "ferro",    amount = 40 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio", amount = 40 }
                    }
                },
                
                {
                    item = "blacklist",                                                         -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "dirty_money",    amount = 2000000 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
            }
        },
        ['Playboy'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.fullliderplayboy",
                location = vec3(-1508.98,113.27,46.98)
            },

            Itens = {
                {
                    item = "money",                                                           -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 160000,                                                    -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "dirty_money", amount = 200000 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "l-alvejante", amount = 20 }
                    }
                },
                {
                    item = "capuz",                                                           -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "fibradecarbono", amount = 20 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "poliester",      amount = 20 }
                    }
                },

                {
                    item = "corda",                                                           -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "fibradecarbono", amount = 25 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "poliester",      amount = 25 }
                    }
                },

                {
                    item = "algemas",                                                         -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "ferro",    amount = 40 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio", amount = 40 }
                    }
                },
                
                {
                    item = "blacklist",                                                         -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "dirty_money",    amount = 2000000 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
            }
        },

        ['Vanilla'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.lidervanilla",
                location = vec3(103.01,-1298.2,28.76)
            },

            Itens = {
                {
                    item = "money",                                                           -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 160000,                                                    -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "dirty_money", amount = 200000 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "l-alvejante", amount = 20 }
                    }
                },
                {
                    item = "capuz",                                                           -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "fibradecarbono", amount = 20 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "poliester",      amount = 20 }
                    }
                },

                {
                    item = "corda",                                                           -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "fibradecarbono", amount = 25 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "poliester",      amount = 25 }
                    }
                },

                {
                    item = "algemas",                                                         -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "ferro",    amount = 40 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio", amount = 40 }
                    }
                },
                {
                    item = "blacklist",                                                         -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "dirty_money",    amount = 2000000 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
            }
        },

        ['Bahamas'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.gerentebahamas",
                location = vec3(-1385.49, -603.59, 36.51)
            },

            Itens = {
                {
                    item = "money",                                                           -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 160000,                                                    -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "dirty_money", amount = 200000 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "l-alvejante", amount = 20 }
                    }
                },
                {
                    item = "capuz",                                                           -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "fibradecarbono", amount = 20 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "poliester",      amount = 20 }
                    }
                },

                {
                    item = "corda",                                                           -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "fibradecarbono", amount = 25 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "poliester",      amount = 25 }
                    }
                },

                {
                    item = "algemas",                                                         -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "ferro",    amount = 40 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio", amount = 40 }
                    }
                },
                {
                    item = "blacklist",                                                         -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "dirty_money",    amount = 2000000 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
            }
        },

        ['Lux'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.liderlux",
                location = vec3(-281.41, 223.43, 78.82)
            },

            Itens = {
                {
                    item = "money",                                                           -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 160000,                                                    -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "dirty_money", amount = 200000 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "l-alvejante", amount = 20 }
                    }
                },
                {
                    item = "capuz",                                                           -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "fibradecarbono", amount = 20 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "poliester",      amount = 20 }
                    }
                },

                {
                    item = "corda",                                                           -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "fibradecarbono", amount = 25 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "poliester",      amount = 25 }
                    }
                },

                {
                    item = "algemas",                                                         -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "ferro",    amount = 40 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio", amount = 40 }
                    }
                },
                {
                    item = "blacklist",                                                         -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "dirty_money",    amount = 2000000 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
            }
        },
        ['Cassino'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.lidercassino",
                location = vec3(956.42, 20.93, 75.74)
            },

            Itens = {
                {
                    item = "money",                                                           -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 160000,                                                    -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "dirty_money", amount = 200000 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "l-alvejante", amount = 20 }
                    }
                },
                {
                    item = "capuz",                                                           -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "fibradecarbono", amount = 20 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "poliester",      amount = 20 }
                    }
                },

                {
                    item = "corda",                                                           -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "fibradecarbono", amount = 25 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "poliester",      amount = 25 }
                    }
                },

                {
                    item = "algemas",                                                         -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "ferro",    amount = 40 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio", amount = 40 }
                    }
                },
                {
                    item = "blacklist",                                                         -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "dirty_money",    amount = 2000000 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
            }
        },

        ['Mainstreet'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.gerentemainstreet",
                location = vec3(-813.24,-702.17,28.05)
            },

            Itens = {
                {
                    item = "money",                                                           -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 160000,                                                    -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "dirty_money", amount = 200000 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "l-alvejante", amount = 20 }
                    }
                },
                {
                    item = "capuz",                                                           -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "fibradecarbono", amount = 20 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "poliester",      amount = 20 }
                    }
                },

                {
                    item = "corda",                                                           -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "fibradecarbono", amount = 25 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "poliester",      amount = 25 }
                    }
                },

                {
                    item = "algemas",                                                         -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "ferro",    amount = 40 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio", amount = 40 }
                    }
                },
                {
                    item = "blacklist",                                                         -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "dirty_money",    amount = 2000000 },  -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
            }
        },

        -------------- [ DROGAS] --------------

        -- META | LANÇA | HAXIXE | COCAINA

        
        ['Mercenarios'] = {
            Config = {
                hasDominas = nil,
                permission = 'perm.gerentemercenarios',
                location = vec3(-106.29, 981.0, 240.88)
            },
            Itens = {
                {
                    item = "maconha",                                                         -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "folhamaconha", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "heroina",                                                         -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "morfina", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "opio",                                                            -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "opiopapoula", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "balinha",                                                         -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "podemd", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
            }
        },
        ['Mexico'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.lidermexico",
                location = vec3(-1709.1, 621.78, 181.52)
            },
            Itens = {
                {
                    item = "metanfetamina",                                                   -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "anfetamina", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "lancaperfume",                                                    -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "respingodesolda", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "haxixe",                                                          -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "resinacannabis", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "cocaina",                                                         -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pastabase", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
            }
        },

        ['Vagos'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.lidervagos",
                location = vec3(331.97, -2013.46, 22.39)
            },
            Itens = {
                {
                    item = "metanfetamina",                                                   -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "anfetamina", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "lancaperfume",                                                    -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "respingodesolda", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "haxixe",                                                          -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "resinacannabis", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "cocaina",                                                         -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pastabase", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
            }
        },

       

        -- MACONHA | HEROINA | OPIO | BALINHA

       
        ['Russia'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.liderrussia",
                location = vec3(1042.94,649.28,161.35)
            },

            Itens = {
                {
                    item = "maconha",                                                         -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "folhamaconha", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "heroina",                                                         -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "morfina", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "opio",                                                            -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "opiopapoula", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "balinha",                                                         -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "podemd", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
            }
        },

        -- ['Belgica'] = { -- ANTES DA KEY BUGAR
        --     Config = {
        --         hasDominas = nil,
        --         permission = "perm.liderbelgica",
        --         location = vec3(181.59, 637.13, 207.44)
        --     },

        --     Itens = {
        --         {
        --             item = "maconha",                                                         -- SPAWN DO ITEM
        --             time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
        --             customAmount = 2,                                                         -- Oque cada unidade vai fabricar
        --             anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

        --             requires = {
        --                 { item = "folhamaconha", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
        --             }
        --         },
        --         {
        --             item = "heroina",                                                         -- SPAWN DO ITEM
        --             time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
        --             customAmount = 2,                                                         -- Oque cada unidade vai fabricar
        --             anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

        --             requires = {
        --                 { item = "morfina", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
        --             }
        --         },
        --         {
        --             item = "opio",                                                            -- SPAWN DO ITEM
        --             time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
        --             customAmount = 2,                                                         -- Oque cada unidade vai fabricar
        --             anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

        --             requires = {
        --                 { item = "opiopapoula", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
        --             }
        --         },
        --         {
        --             item = "balinha",                                                         -- SPAWN DO ITEM
        --             time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
        --             customAmount = 2,                                                         -- Oque cada unidade vai fabricar
        --             anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

        --             requires = {
        --                 { item = "podemd", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
        --             }
        --         },
        --     }
        -- },
        ['Croacia'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.lidercroacia",
                location = vec3(464.09,943.86,222.25)
            },

            Itens = {
                {
                    item = "balinha",                                                         -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "podemd", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "lancaperfume",                                                    -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "respingodesolda", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "WEAPON_SNSPISTOL_MK2",                                            -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 65, }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_PISTOL_MK2",                                               -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 105 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_MACHINEPISTOL",                                            -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 215 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_SMG",                                                      -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 265 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_ASSAULTRIFLE",                                             -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 300 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_ASSAULTRIFLE_MK2",                                         -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 350 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_SPECIALCARBINE_MK2",                                       -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 450 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_PARAFAL",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                    requires = {
                        { item = "pecadearma", amount = 650 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_AR10BXD",                                                  -- SPAWN DO ITEM
                    time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma", amount = 750 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                -- {
                --     item = "WEAPON_AKCROACIA",                                                  -- SPAWN DO ITEM
                --     time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                --     customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                --     anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                --     requires = {
                --         { item = "pecadearmaexclusiva", amount = 700 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                --     }
                -- },

                -- {
                --     item = "AMMO_AKCROACIA",                                                  -- SPAWN DO ITEM
                --     time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                --     customAmount = 100,                                                         -- Oque cada unidade vai fabricar
                --     anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                --     requires = {
                --         { item = "capsulaexclusiva", amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                --         { item = "money", amount = 30000 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                --     }
                -- },

                -- {
                --     item = "WEAPON_ARCROACIA",                                                  -- SPAWN DO ITEM
                --     time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                --     customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                --     anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                --     requires = {
                --         { item = "pecadearmaexclusiva", amount = 700 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                --     }
                -- },

                -- {
                --     item = "AMMO_ARCROACIA",                                                  -- SPAWN DO ITEM
                --     time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                --     customAmount = 100,                                                         -- Oque cada unidade vai fabricar
                --     anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                --     requires = {
                --         { item = "capsulaexclusiva", amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                --         { item = "money", amount = 30000 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                --     }
                -- },

                -- {
                --     item = "WEAPON_TACTICALRIFLE",                                                  -- SPAWN DO ITEM
                --     time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                --     customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                --     anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                --     requires = {
                --         { item = "pecadearmaexclusiva", amount = 700 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                --     }
                -- },

                -- {
                --     item = "AMMO_TACTICALRIFLE",                                                  -- SPAWN DO ITEM
                --     time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                --     customAmount = 100,                                                         -- Oque cada unidade vai fabricar
                --     anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                --     requires = {
                --         { item = "capsulaexclusiva", amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                --         { item = "money", amount = 30000 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                --     }
                -- },
                -- NEW

                -- {
                --     item = "WEAPON_ASSAULTSMG",                                                      -- SPAWN DO ITEM
                --     time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                --     customAmount = 1,                                                         -- Oque cada unidade vai fabricar
                --     anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO

                --     requires = {
                --         { item = "pecadearmaexclusiva", amount = 600 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                --     }
                -- },

                -- {
                --     item = "AMMO_ASSAULTSMG",                                                  -- SPAWN DO ITEM
                --     time = 7,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                --     customAmount = 100,                                                         -- Oque cada unidade vai fabricar
                --     anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                --     requires = {
                --         { item = "capsulaexclusiva", amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                --         { item = "money", amount = 30000 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                --     }
                -- },

            }
        },

        ['Suecia'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.lidersuecia",
                location = vec3(3038.87, 2967.21, 90.37)
            },

            Itens = {
                {
                    item = "maconha",                                                         -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "folhamaconha", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "heroina",                                                         -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "morfina", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "opio",                                                            -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "opiopapoula", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "balinha",                                                         -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "podemd", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
            }
        },

        ['Vidigal'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.lidervidigal",
                location = vec3(1930.95, 711.58, 194.38)
            },

            Itens = {
                {
                    item = "maconha",                                                         -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "folhamaconha", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "heroina",                                                         -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "morfina", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "opio",                                                            -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "opiopapoula", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "balinha",                                                         -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "podemd", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
            }
        },

        ['Jamaica'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.liderjamaica",
                location = vec3(-1963.12,4516.2,38.91)
            },

            Itens = {
                {
                    item = "maconha",                                                         -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "folhamaconha", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "heroina",                                                         -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "morfina", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "opio",                                                            -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "opiopapoula", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "balinha",                                                         -- SPAWN DO ITEM
                    time = 3,                                                                 -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 2,                                                         -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "podemd", amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
            }
        },
    },
    Storage = {
        -- ARMAS

        ['PCC'] = {
            Config = {
                permission = 'perm.pcc',
                location = vec3(-1680.17,-236.53,55.57),
            },
            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['pecadearma'] = 1000000,
                ["money"] = 1000000,
                ['pecadearmaexclusiva'] = 1000000,
                ['capsulaexclusiva'] = 1000000,
                -- HEROINA
                ['morfina'] = 1000000,
                ['poliester'] = 1000000,
                ['fibradecarbono'] = 1000000,
                -- OPIO
                ['opiopapoula'] = 1000000,
            }
        },
        ['Korea'] = {
            Config = {
                permission = 'perm.korea',
                location = vec3(-953.77,345.9,71.9),
            },
            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['pecadearma'] = 1000000,
                ["money"] = 1000000,
            }
        },

        ['Tcp'] = {
            Config = {
                permission = 'perm.tcp',
                location = vec3(938.93,363.33,112.08),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['money'] = 1000000,
                ['pecadearma'] = 1000000,
                ['pecadearmaexclusiva'] = 1000000,
                ['capsulaexclusiva'] = 1000000,
                -- HEROINA
                ['morfina'] = 1000000,
                ['poliester'] = 1000000,
                ['fibradecarbono'] = 1000000,
                -- OPIO
                ['opiopapoula'] = 1000000,
            }
        },
        ['Mafia'] = {
            Config = {
                permission = 'perm.mafia',
                location = vec3(406.75, 2.77, 84.92),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['pecadearma'] = 1000000,
                ['money'] = 1000000,
            }
        },
        -- ['Croacia'] = { -- ANTES DA KEY BUGAR
        --     Config = {
        --         permission = 'perm.croacia',
        --         location = vec3(-803.05, -1805.51, 28.98),
        --     },

        --     List = {
        --         -- ITEM / QUANTIDADE MAXIMA
        --         ['pecadearma'] = 1000000,
        --         ["money"] = 1000000,
        --         ["pecadearmaexclusiva"] = 1000000,
        --         ["capsulaexclusiva"] = 1000000,
        --         -- LANÇA
        --         ['respingodesolda'] = 1000000,
        --         -- BALINHA
        --         ['podemd'] = 1000000,
        --     }
        -- },
        ['Grota'] = {
            Config = {
                permission = 'perm.grota',
                location = vec3(1172.5,-217.25,62.43),     -- # TODO rever coords
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['polvora'] = 1000000,
                ['capsulas'] = 1000000,
                ['money'] = 1000000,
                ['pecadearmaexclusiva'] = 1000000,
                ['capsulaexclusiva'] = 1000000,
                 -- COCAINA
                ['pastabase'] = 1000000,
                -- MACONHA
                ['folhamaconha'] = 1000000,
                ["money"] = 1000000,
            }
        },
       --[[ ['Inglaterra'] = {
            Config = {
                permission = 'perm.inglaterra',
                location = vec3(-1519.59, 72.39, 56.75),     -- # TODO rever coords
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['pecadearma'] = 1000000,
                ['pecadearmaexclusiva'] = 1000000,
                ['capsulaexclusiva'] = 1000000,
                ["money"] = 1000000,
            }
        },--]]


        -- MUNIÇÃO
        ['Colombia'] = {
            Config = {
                permission = 'perm.colombia',
                location = vec3(-803.53, 185.73, 72.61),
            },
            List = {
                 -- ITEM / QUANTIDADE MAXIMA
                 ['polvora'] = 1000000,
                 ['capsulas'] = 1000000,
                 ['money'] = 1000000,
            },
        },
        ['Franca'] = {
            Config = {
                permission = 'perm.franca',
                location = vec3(721.13, -281.96, 61.55),
            },
            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['polvora'] = 1000000,
                ['capsulas'] = 1000000,
                ['money'] = 1000000,
                -- HEROINA E HAXIXE
                ['morfina'] = 1000000,
                ['poliester'] = 1000000,
                ['fibradecarbono'] = 1000000,
                ['pecadearmaexclusiva'] = 1000000,
                ['capsulaexclusiva'] = 1000000,
                -- META
                ['anfetamina'] = 1000000,
                -- HAXIXE
                ['resinacannabis'] = 1000000,
            },
            Max = 500000,
        },
        ['Turquia'] = {
            Config = {
                permission = 'perm.turquia',
                location = vec3(-803.03,-1805.57,28.98),
            },
            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['polvora'] = 1000000,
                ['capsulas'] = 1000000,
                ['money'] = 1000000,
                -- HEROINA E HAXIXE
                ['morfina'] = 1000000,
                ['poliester'] = 1000000,
                ['fibradecarbono'] = 1000000,
            },
            Max = 1350000,
        },
        ['Yakuza'] = {
            Config = {
                permission = 'perm.yakuza',
                location = vec3(-894.68, -1457.61, 5.44),
            },
            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['polvora'] = 1000000,
                ['capsulas'] = 1000000,
                ['money'] = 1000000,
            }
        },

        ['Cpx'] = {
            Config = {
                permission = 'perm.cpx',
                location = vec3(-1771.19,-117.87,85.95),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['polvora'] = 1000000,
                ['pecadearmaexclusiva'] = 1000000,
                ['capsulaexclusiva'] = 1000000,
                ['capsulas'] = 1000000,
                 -- COCAINA
                ['pastabase'] = 1000000,
                -- MACONHA
                ['folhamaconha'] = 1000000,
                ['money'] = 1000000,
            }
        },
        ['Anonymous'] = {
            Config = {
                permission = 'perm.anonymous',
                location = vec3(-1488.36, 841.39, 176.99),
            },
            
            List = {
                -- ITEM / QUANTIDADE MAXIMA
                 ['pecadearma'] = 1000000,
                 ['money'] = 1000000,
             }
         },
        ['Corleone'] = {
            Config = {
                permission = 'perm.corleone',
                location = vec3(-2941.97, 37.34, 11.61),
            },

            List = {
               -- ITEM / QUANTIDADE MAXIMA
                ['pecadearma'] = 1000000,
                ['money'] = 1000000,
            }
        },
        ['CV'] = {
            Config = {
                permission = 'perm.cv',
                location = vec3(1318.32,-643.88,70.82),
            },
            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['pecadearma'] = 1000000,
                ['money'] = 1000000,
                ['pecadearmaexclusiva'] = 1000000,
                ['capsulaexclusiva'] = 1000000,
                -- LANÇA
                ['respingodesolda'] = 1000000,
                -- BALINHA
                ['podemd'] = 1000000,
            }
        },

        -- DESMANCHE
        ['Elements'] = {
            Config = {
                permission = 'perm.elements',
                location = vec3(-187.74,-1711.05,33.01),
            },
            
            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['ferro'] = 1000000,
                ['aluminio'] = 1000000,
                ['papel'] = 1000000,
                ['money'] = 1000000,
                ['poliester'] = 1000000,
                ['fibradecarbono'] = 1000000,
            }
        },
        ['Ballas'] = {
            Config = {
                permission = 'perm.ballas',
                location = vec3(109.1, -1982.2, 20.96),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['ferro'] = 1000000,
                ['aluminio'] = 1000000,
                ['papel'] = 1000000,
                ['money'] = 1000000,
                ['poliester'] = 1000000,
                ['fibradecarbono'] = 1000000,
            }
        },

        ['HellsAngels'] = {
            Config = {
                permission = 'perm.hellsangels',
                location = vec3(1035.42, -2516.72, 28.29),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['ferro'] = 1000000,
                ['aluminio'] = 1000000,
                ['papel'] = 1000000,
                ['money'] = 1000000,
                ['poliester'] = 1000000,
                ['fibradecarbono'] = 1000000,
            }
        },
        ['Motoclube'] = {
            Config = {
                permission = 'perm.motoclube',
                location = vec3(998.92,-103.66,73.97),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['ferro'] = 1000000,
                ['aluminio'] = 1000000,
                ['papel'] = 1000000,
                ['money'] = 1000000,
                ['poliester'] = 1000000,
                ['fibradecarbono'] = 1000000,
                ['pecadearmaexclusiva'] = 1000000,
                ['capsulaexclusiva'] = 1000000,
            },
            Max = 1000000
        },

        ['Bennys'] = {
            Config = {
                permission = 'perm.bennys',
                location = vec3(-198.8,-1340.04,30.89),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['ferro'] = 1000000,
                ['aluminio'] = 1000000,
                ['papel'] = 1000000,
                ['money'] = 1000000,
                ['poliester'] = 1000000,
                ['fibradecarbono'] = 1000000,
            }
        },
        ['Lacoste'] = {
            Config = {
                permission = 'perm.lacoste',
                location = vec3(726.9, -1064.04, 22.16),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['ferro'] = 1000000,
                ['aluminio'] = 1000000,
                ['papel'] = 1000000,
                ['money'] = 1000000,
                ['poliester'] = 1000000,
                ['fibradecarbono'] = 1000000,
            }
        },
        ['Tequila'] = {
            Config = {
                permission = 'perm.tequila',
                location = vec3(-562.2,288.76,82.18),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['ferro'] = 1000000,
                ['aluminio'] = 1000000,
                ['papel'] = 1000000,
                ['money'] = 1000000,
                ['poliester'] = 1000000,
                ['fibradecarbono'] = 1000000,
            }
        },

        ['Grecia'] = {
            Config = {
                permission = 'perm.grecia',
                location = vec3(-338.83, -1522.27, 33.19),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['ferro'] = 1000000,
                ['aluminio'] = 1000000,
                ['papel'] = 1000000,
                ['money'] = 1000000,
                ['poliester'] = 1000000,
                ['fibradecarbono'] = 1000000,
            }
        },

        ['Customs'] = {
            Config = {
                permission = 'perm.playboy',
                location = vec3( -679.29,-792.58,33.04),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['ferro'] = 1000000,
                ['aluminio'] = 1000000,
                ['papel'] = 1000000,
                ['money'] = 1000000,
                ['poliester'] = 1000000,
                ['fibradecarbono'] = 1000000,
            }
        },

        -- LAVAGEM
        ['Playboy'] = {
            Config = {
                permission = 'perm.playboy',
                location = vec3(-1539.91,72.86,56.77),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['dirty_money'] = 1000000,
                ['l-alvejante'] = 1000000,
                ['poliester'] = 1000000,
                ['fibradecarbono'] = 1000000,
                ['ferro'] = 1000000,
                ['aluminio'] = 1000000,
                ['money'] = 1000000,
            }
        },
        ['Galaxy'] = {
            Config = {
                permission = 'perm.galaxy',
                location = vec3(-225.65, -293.22, 29.25),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['dirty_money'] = 1000000,
                ['l-alvejante'] = 1000000,
                ['poliester'] = 1000000,
                ['fibradecarbono'] = 1000000,
                ['ferro'] = 1000000,
                ['aluminio'] = 1000000,
                ['money'] = 1000000,
            }
        },
        ['Vanilla'] = {
            Config = {
                permission = 'perm.vanilla',
                location = vec3(108.76,-1304.21,28.8),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['dirty_money'] = 1000000,
                ['l-alvejante'] = 1000000,
                ['poliester'] = 1000000,
                ['fibradecarbono'] = 1000000,
                ['ferro'] = 1000000,
                ['aluminio'] = 1000000,
                ['money'] = 1000000,
            }
        },

        ['Lux'] = {
            Config = {
                permission = 'perm.lux',
                location = vec3(-286.47, 232.78, 78.82),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['dirty_money'] = 1000000,
                ['l-alvejante'] = 1000000,
                ['poliester'] = 1000000,
                ['fibradecarbono'] = 1000000,
                ['ferro'] = 1000000,
                ["money"] = 1000000,
                ['aluminio'] = 1000000,
            },
            Max = 710000,
        },
        ['Bahamas'] = {
            Config = {
                permission = 'perm.bahamas',
                location = vec3(-1390.35, -607.29, 30.31),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['dirty_money'] = 1000000,
                ['l-alvejante'] = 1000000,
                ['poliester'] = 1000000,
                ['fibradecarbono'] = 1000000,
                ['ferro'] = 1000000,
                ["money"] = 1000000,
                ['aluminio'] = 1000000,
            },
            Max = 500000
        },

        ['Cassino'] = {
            Config = {
                permission = 'perm.cassino',
                location = vec3(961.02, 13.77, 75.74),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['dirty_money'] = 1000000,
                ['l-alvejante'] = 1000000,
                ['poliester'] = 1000000,
                ['fibradecarbono'] = 1000000,
                ["money"] = 1000000,
                ['ferro'] = 1000000,
                ['aluminio'] = 1000000,
            },
            Max = 500000
        },
        ['Mainstreet'] = {
            Config = {
                permission = 'perm.mainstreet',
                location = vec3(-812.12, -698.67, 28.05),
            },

            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['dirty_money'] = 1000000,
                ['l-alvejante'] = 1000000,
                ['poliester'] = 1000000,
                ['fibradecarbono'] = 1000000,
                ["money"] = 1000000,
                ['ferro'] = 1000000,
                ['aluminio'] = 1000000,
            }
        },


        -- MACONHA | HEROINA | OPIO | BALINHA

        ['Russia'] = {
            Config = {
                permission = 'perm.russia',
                location = vec3(1041.62,646.57,161.35),
            },
            List = {
                -- HEROINA
                ['morfina'] = 1000000,
                ['poliester'] = 1000000,
                ['fibradecarbono'] = 1000000,
                -- MACONHA
                ['folhamaconha'] = 1000000,
                -- OPIO
                ['opiopapoula'] = 1000000,
                -- BALINHA
                ['podemd'] = 1000000,
                ['money'] = 1000000,
            }
        },
        -- ['Belgica'] = { -- ANTES DA KEY
        --     Config = {
        --         permission = 'perm.belgica',
        --         location = vec3(168.12, 641.1, 207.44),
        --     },
        --     List = {
        --         -- HEROINA
        --         ['morfina'] = 1000000,
        --         ['poliester'] = 1000000,
        --         ['fibradecarbono'] = 1000000,
        --         -- MACONHA
        --         ['folhamaconha'] = 1000000,
        --         -- OPIO
        --         ['opiopapoula'] = 1000000,
        --         -- BALINHA
        --         ['podemd'] = 1000000,

        --     }
        -- },
        ['Croacia'] = {
            Config = {
                permission = 'perm.croacia',
                location = vec3(555.17,888.84,219.91),
            },
            List = {
                -- HEROINA
                ['morfina'] = 1000000,
                ['poliester'] = 1000000,
                ['fibradecarbono'] = 1000000,
                -- MACONHA
                ['folhamaconha'] = 1000000,
                -- OPIO
                ['pecadearmaexclusiva'] = 1000000,
                ['pecadearma'] = 1000000,
                ['opiopapoula'] = 1000000,
                -- BALINHA
                ['podemd'] = 1000000,
                ['capsulaexclusiva'] = 1000000,
                ['money'] = 1000000,

            }
        },
        ['Suecia'] = {
            Config = {
                permission = 'perm.suecia',
                location = vec3(3036.37, 2969.08, 90.37),
            },
            List = {
                -- HEROINA
                ['morfina'] = 1000000,
                ['poliester'] = 1000000,
                ['fibradecarbono'] = 1000000,
                -- MACONHA
                ['folhamaconha'] = 1000000,
                -- OPIO
                ['opiopapoula'] = 1000000,
                -- BALINHA
                ['podemd'] = 1000000,
                ['money'] = 1000000,
            }
        },
        ['Vidigal'] = {
            Config = {
                permission = 'perm.vidigal',
                location = vec3(1934.43, 712.48, 194.38),
            },
            List = {
                -- ITEM / QUANTIDADE MAXIMA
                -- META
                ['podemd'] = 1000000,
                -- LANÇA
                ['opiopapoula'] = 1000000,
                -- HAXIXE
                ['morfina'] = 1000000,
                ['folhamaconha'] = 1000000,
                ['money'] = 1000000,
                -- COCAINA
                ['pastabase'] = 1000000,
            }
        },
        -- META | LANÇA | HAXIXE | COCAINA

        ['Mercenarios'] = {
            Config = {
                permission = 'perm.mercenarios',
                location = vec3(-75.21, 995.42, 234.4),
            },
            List = {
                ['folhamaconha'] = 1000000,
                ['podemd'] = 1000000,
                ['opiopapoula'] = 1000000,
                ['morfina'] = 1000000,
                ['money'] = 1000000,
            }
        },
        ['Mexico'] = {
            Config = {
                permission = 'perm.mexico',
                location = vec3(-1719.15, 619.84, 181.52),
            },
            List = {
                -- ITEM / QUANTIDADE MAXIMA
                -- META
                ['anfetamina'] = 1000000,
                -- LANÇA
                ['respingodesolda'] = 1000000,
                -- HAXIXE
                ['resinacannabis'] = 1000000,
                -- COCAINA
                ['pastabase'] = 1000000,
                ['money'] = 1000000,
            }
        },
        ['Vagos'] = {
            Config = {
                permission = 'perm.vagos',
                location = vec3(338.01, -2012.3, 22.39),
            },
            List = {
                -- ITEM / QUANTIDADE MAXIMA
                -- META
                ['anfetamina'] = 1000000,
                -- LANÇA
                ['respingodesolda'] = 1000000,
                -- HAXIXE
                ['resinacannabis'] = 1000000,
                -- COCAINA
                ['pastabase'] = 1000000,
                ['money'] = 1000000,
            }
        },
        
    }
}


function tD(n)
    n = math.ceil(n * 100) / 100
    return n
end
