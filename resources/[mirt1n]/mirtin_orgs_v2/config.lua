Config = {}

Config.Main = {
    cmd = 'painelfac', -- Comando para abrir Painel
    createAutomaticOrganizations = true,
    storeUrl = 'https://discord.gg/MPm3Pptfn5', -- Link da Sua Loja
    serverLogo = "https://cdn.discordapp.com/attachments/1220512492250337295/1222014150264356964/logo_sem_fundo.png?ex=6614ac5d&is=6602375d&hm=33693ed8eb138aba40feb4c6e59e46968ef51ec193cb57bbea05aa04650e33e1&",
    blackListIlegal = 1,
    blackList = 1,
    clearChestLogs = 15, -- Logs do Bau limpar automaticamente de 15 em 15 dias. ( Evitar consumo da tabela )
}

Config.defaultPermissions = { 
    invite = { -- Permissao Para Convidar
        name = "Convidar",
        description = "Esta permissao permite vc convidar as pessoas para sua facção."
    },
    demote = { -- Permissao Para Rebaixar
        name = "Rebaixar",
        description = "Essa permissão permite que o cargo selecionado rebaixe um cargo inferior."
    }, 
    promote = { -- Permissao Para Promover
        name = "Promover",
        description = "Essa permissão permite que o cargo selecionado promova um cargo."
    }, 
    dismiss = { -- Permissao Para Rebaixar
        name = "Demitir",
        description = "Essa permissão permite que o cargo selecionado demita um cargo inferior."
    }, 
    withdraw = { -- Permissao Para Sacar Dinheiro
        name = "Sacar dinheiro",
        description = "Permite que esse cargo selecionado possa sacar dinheiro do banco da facção."
    }, 
    deposit = { -- Permissao Para Depositar Dinheiro
        name = "Depositar dinheiro",
        description = "Permite que esse cargo selecionado possa depositar dinheiro no banco da facção."
    }, 
    message = { -- Permissao para Escrever nas anotaçoes
        name = "Escrever anotações",
        description = "Permite que esse cargo selecionado possa escrever anotações."
    },
    alerts = { -- Permissao para enviar alertas
        name = "Escrever Alertas",
        description = "Permite que esse cargo selecionado possa enviar alertas para todos jogadores."
    },
    chat = { -- Permissao para Falar no chat
        name = "Escrever no chat",
        description = "Permite que esse cargo selecionado possa se comunicar no chat da facção"
    },
}

Config.Groups = {
    ['Cpx'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['money'] = 1000000,
                    ['capsulas'] = 1000000,
                    ['polvora'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [CPX]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [CPX]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [CPX]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [CPX]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [CPX]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Membro [CPX]'] = {
                prefix = 'Membro',
                tier = 6
            },
            ['Novato [CPX]'] = {
                prefix = 'Novato',
                tier = 7
            },
        }
    },
    ['Korea'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['money'] = 1000000,
                    ['pecadearma'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [KOREA]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [KOREA]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [KOREA]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [KOREA]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [KOREA]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Membro [KOREA]'] = {
                prefix = 'Membro',
                tier = 6
            },
            ['Novato [KOREA]'] = {
                prefix = 'Novato',
                tier = 7
            },
        }
    },
    ['Grota'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['money'] = 1000000,
                    ['capsulas'] = 1000000,
                    ['polvora'] = 1000000,
                    ['pecadearmaexclusiva'] = 1000000,
                    ['capsulaexclusiva'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [GROTA]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [GROTA]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [GROTA]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [GROTA]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [GROTA]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Membro [GROTA]'] = {
                prefix = 'Membro',
                tier = 6
            },
            ['Novato [GROTA]'] = {
                prefix = 'Novato',
                tier = 7
            },
        }
    },
    ['CV'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['money'] = 1000000,
                    ['pecadearma'] = 1000000,
                    ['pecadearmaexclusiva'] = 1000000,
                    ['capsulaexclusiva'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [CV]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [CV]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [CV]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [CV]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [CV]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Membro [CV]'] = {
                prefix = 'Membro',
                tier = 6
            },
            ['Novato [CV]'] = {
                prefix = 'Novato',
                tier = 7
            },
        }
    },
    ['Mafia'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['money'] = 1000000,
                    ['pecadearma'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [MAFIA]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [MAFIA]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [MAFIA]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [MAFIA]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [MAFIA]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Membro [MAFIA]'] = {
                prefix = 'Membro',
                tier = 6
            },
            ['Novato [MAFIA]'] = {
                prefix = 'Novato',
                tier = 7
            },
        }
    },
    ['Croacia'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['money'] = 1000000,
                    ['pecadearma'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [CROACIA]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [CROACIA]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [CROACIA]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [CROACIA]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [CROACIA]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Membro [CROACIA]'] = {
                prefix = 'Membro',
                tier = 6
            },
            ['Novato [CROACIA]'] = {
                prefix = 'Novato',
                tier = 7
            },
        }
    },
    --[[['Inglaterra'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['money'] = 1000000,
                    ['pecadearma'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [INGLATERRA]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [INGLATERRA]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [INGLATERRA]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [INGLATERRA]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [INGLATERRA]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Membro [INGLATERRA]'] = {
                prefix = 'Membro',
                tier = 6
            },
            ['Novato [INGLATERRA]'] = {
                prefix = 'Novato',
                tier = 7
            },
        }
    },--]]
    ['Corleone'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['money'] = 1000000,
                    ['pecadearma'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [CORLEONE]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [CORLEONE]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [CORLEONE]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [CORLEONE]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [CORLEONE]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Membro [CORLEONE]'] = {
                prefix = 'Membro',
                tier = 6
            },
            ['Novato [CORLEONE]'] = {
                prefix = 'Novato',
                tier = 7
            },
        }
    },
    
    ['Turquia'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['money'] = 1000000,
                    ['capsulas'] = 1000000,
                    ['polvora'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [TURQUIA]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [TURQUIA]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [TURQUIA]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [TURQUIA]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [TURQUIA]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Membro [TURQUIA]'] = {
                prefix = 'Membro',
                tier = 6
            },
            ['Novato [TURQUIA]'] = {
                prefix = 'Novato',
                tier = 7
            },
        }
    },
    ['Yakuza'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['money'] = 1000000,
                    ['capsulas'] = 1000000,
                    ['polvora'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [YAKUZA]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [YAKUZA]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [YAKUZA]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [YAKUZA]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [YAKUZA]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Membro [YAKUZA]'] = {
                prefix = 'Membro',
                tier = 6
            },
            ['Novato [YAKUZA]'] = {
                prefix = 'Novato',
                tier = 7
            },
        }
    },
    ['Franca'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['money'] = 1000000,
                    ['capsulas'] = 1000000,
                    ['polvora'] = 1000000,
                    ['pecadearmaexclusiva'] = 1000000,
                    ['capsulaexclusiva'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [FRANCA]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [FRANCA]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [FRANCA]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [FRANCA]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [FRANCA]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Membro [FRANCA]'] = {
                prefix = 'Membro',
                tier = 6
            },
            ['Novato [FRANCA]'] = {
                prefix = 'Novato',
                tier = 7
            },
        }
    },
    ['TCP'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['money'] = 1000000,
                    ['pecadearma'] = 1000000,
                    ['pecadearmaexclusiva'] = 1000000,
                    ['capsulaexclusiva'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [TCP]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [TCP]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [TCP]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [TCP]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [TCP]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Membro [TCP]'] = {
                prefix = 'Membro',
                tier = 6
            },
            ['Novato [TCP]'] = {
                prefix = 'Novato',
                tier = 7
            },
        }
    },

    ['PCC'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['money'] = 1000000,
                    ['pecadearma'] = 1000000,
                    ['pecadearmaexclusiva'] = 1000000,
                    ['capsulaexclusiva'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [PCC]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [PCC]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [PCC]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [PCC]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [PCC]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Membro [PCC]'] = {
                prefix = 'Membro',
                tier = 6
            },
            ['Novato [PCC]'] = {
                prefix = 'Novato',
                tier = 7
            },
        }
    },
    ['Cassino'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['money'] = 1000000,
                    ['l-alvejante'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [CASSINO]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [CASSINO]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [CASSINO]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [CASSINO]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [CASSINO]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Membro [CASSINO]'] = {
                prefix = 'Membro',
                tier = 6
            },
            ['Novato [CASSINO]'] = {
                prefix = 'Novato',
                tier = 7
            },
        }
    },
    ['Playboy'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['money'] = 1000000,
                    ['l-alvejante'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [PLAYBOY]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [PLAYBOY]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [PLAYBOY]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Supervisor [PLAYBOY]'] = {
                prefix = 'Supervisor',
                tier = 4
            },
            ['Mecanico [PLAYBOY]'] = {
                prefix = 'Mecanico',
                tier = 5
            },
            ['Elite [PLAYBOY]'] = {
                prefix = 'Elite',
                tier = 6
            },
            ['Membro [PLAYBOY]'] = {
                prefix = 'Membro',
                tier = 7
            },
            ['Novato [PLAYBOY]'] = {
                prefix = 'Novato',
                tier = 8
            },
        }
    },
    ['Mainstreet'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['money'] = 1000000,
                    ['l-alvejante'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [MAINSTREET]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [MAINSTREET]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [MAINSTREET]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [MAINSTREET]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [MAINSTREET]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Membro [MAINSTREET]'] = {
                prefix = 'Membro',
                tier = 6
            },
            ['Novato [MAINSTREET]'] = {
                prefix = 'Novato',
                tier = 7
            },
        }
    },
    ['Bahamas'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['money'] = 1000000,
                    ['l-alvejante'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [BAHAMAS]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [BAHAMAS]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [BAHAMAS]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [BAHAMAS]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [BAHAMAS]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Membro [BAHAMAS]'] = {
                prefix = 'Membro',
                tier = 6
            },
            ['Novato [BAHAMAS]'] = {
                prefix = 'Novato',
                tier = 7
            },
        }
    },
    ['Lux'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['money'] = 1000000,
                    ['l-alvejante'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [LUX]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [LUX]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [LUX]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [LUX]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [LUX]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Membro [LUX]'] = {
                prefix = 'Membro',
                tier = 6
            },
            ['Novato [LUX]'] = {
                prefix = 'Novato',
                tier = 7
            },
        }
    },
    ['Galaxy'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['money'] = 1000000,
                    ['l-alvejante'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [GALAXY]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [GALAXY]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [GALAXY]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [GALAXY]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [GALAXY]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Membro [GALAXY]'] = {
                prefix = 'Membro',
                tier = 6
            },
            ['Novato [GALAXY]'] = {
                prefix = 'Novato',
                tier = 7
            },
        }
    },
    ['Vanilla'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['money'] = 1000000,
                    ['l-alvejante'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [VANILLA]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [VANILLA]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [VANILLA]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [VANILLA]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [VANILLA]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Membro [VANILLA]'] = {
                prefix = 'Membro',
                tier = 6
            },
            ['Novato [VANILLA]'] = {
                prefix = 'Novato',
                tier = 7
            },
        }
    },
    ['Motoclube'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['money'] = 1000000,
                    ['ferro'] = 1000000,
                    ['aluminio'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [MOTOCLUBE]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [MOTOCLUBE]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [MOTOCLUBE]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [MOTOCLUBE]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [MOTOCLUBE]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Membro [MOTOCLUBE]'] = {
                prefix = 'Membro',
                tier = 6
            },
            ['Novato [MOTOCLUBE]'] = {
                prefix = 'Novato',
                tier = 7
            },
        }
    },
    ['Ballas'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['money'] = 1000000,
                    ['ferro'] = 1000000,
                    ['aluminio'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [BALLAS]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [BALLAS]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [BALLAS]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [BALLAS]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [BALLAS]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Membro [BALLAS]'] = {
                prefix = 'Membro',
                tier = 6
            },
            ['Novato [BALLAS]'] = {
                prefix = 'Novato',
                tier = 7
            },
        }
    },
    ['Bennys'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['money'] = 1000000,
                    ['ferro'] = 1000000,
                    ['aluminio'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [BENNYS]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [BENNYS]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [BENNYS]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [BENNYS]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [BENNYS]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Mecanico [BENNYS]'] = {
                prefix = 'Mecanico',
                tier = 6
            },
            ['Membro [BENNYS]'] = {
                prefix = 'Membro',
                tier = 7
            },
            ['Novato [BENNYS]'] = {
                prefix = 'Novato',
                tier = 8
            },
        }
    },
    ['Grecia'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['money'] = 1000000,
                    ['ferro'] = 1000000,
                    ['aluminio'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [GRECIA]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [GRECIA]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [GRECIA]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [GRECIA]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [GRECIA]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Membro [GRECIA]'] = {
                prefix = 'Membro',
                tier = 6
            },
            ['Novato [GRECIA]'] = {
                prefix = 'Novato',
                tier = 7
            },
        }
    },
    ['Lacoste'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['money'] = 1000000,
                    ['ferro'] = 1000000,
                    ['aluminio'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [LACOSTE]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [LACOSTE]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [LACOSTE]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [LACOSTE]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [LACOSTE]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Membro [LACOSTE]'] = {
                prefix = 'Membro',
                tier = 6
            },
            ['Novato [LACOSTE]'] = {
                prefix = 'Novato',
                tier = 7
            },
        }
    },
    ['Tequila'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['money'] = 1000000,
                    ['ferro'] = 1000000,
                    ['aluminio'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [TEQUILA]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [TEQUILA]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [TEQUILA]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [TEQUILA]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [TEQUILA]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Membro [TEQUILA]'] = {
                prefix = 'Membro',
                tier = 6
            },
            ['Novato [TEQUILA]'] = {
                prefix = 'Novato',
                tier = 7
            },
        }
    },
    ['Hellsangels'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['money'] = 1000000,
                    ['ferro'] = 1000000,
                    ['aluminio'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [HELLSANGELS]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [HELLSANGELS]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [HELLSANGELS]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [HELLSANGELS]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [HELLSANGELS]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Membro [HELLSANGELS]'] = {
                prefix = 'Membro',
                tier = 6
            },
            ['Novato [HELLSANGELS]'] = {
                prefix = 'Novato',
                tier = 7
            },
        }
    },
    ['Colombia'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['money'] = 1000000,
                    ['capsulas'] = 1000000,
                    ['polvora'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [COLOMBIA]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [COLOMBIA]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [COLOMBIA]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [COLOMBIA]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [COLOMBIA]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Membro [COLOMBIA]'] = {
                prefix = 'Membro',
                tier = 6
            },
            ['Novato [COLOMBIA]'] = {
                prefix = 'Novato',
                tier = 7
            },
        }
    },
    ['Mexico'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['folhamaconha'] = 1000000,
                    ['pastabase'] = 1000000,
                    ['podemd'] = 1000000,
                    ['resinacannabis'] = 1000000,
                    ['fibradecarbono'] = 1000000,
                    ['poliester'] = 1000000,
                    ['respingodesolda'] = 1000000,
                    ['anfetamina'] = 1000000,
                    ['opiopapoula'] = 1000000,
                    ['morfina'] = 1000000,
                    ['money'] = 1000000,
                    ['dirty_money'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [MEXICO]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [MEXICO]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [MEXICO]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [MEXICO]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [MEXICO]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Membro [MEXICO]'] = {
                prefix = 'Membro',
                tier = 6
            },
            ['Novato [MEXICO]'] = {
                prefix = 'Novato',
                tier = 7
            },
        }
    },
    ['Elements'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['money'] = 1000000,
                    ['ferro'] = 1000000,
                    ['aluminio'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [ELEMENTS]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [ELEMENTS]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [ELEMENTS]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [ELEMENTS]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [ELEMENTS]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Membro [ELEMENTS]'] = {
                prefix = 'Membro',
                tier = 6
            },
            ['Novato [ELEMENTS]'] = {
                prefix = 'Novato',
                tier = 7
            },
        }
    },
    ['Vagos'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['folhamaconha'] = 1000000,
                    ['pastabase'] = 1000000,
                    ['podemd'] = 1000000,
                    ['resinacannabis'] = 1000000,
                    ['fibradecarbono'] = 1000000,
                    ['poliester'] = 1000000,
                    ['respingodesolda'] = 1000000,
                    ['anfetamina'] = 1000000,
                    ['opiopapoula'] = 1000000,
                    ['morfina'] = 1000000,
                    ['money'] = 1000000,
                    ['dirty_money'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [VAGOS]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [VAGOS]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [VAGOS]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [VAGOS]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [VAGOS]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Membro [VAGOS]'] = {
                prefix = 'Membro',
                tier = 6
            },
            ['Novato [VAGOS]'] = {
                prefix = 'Novato',
                tier = 7
            },
        }
    },
    ['Mercenarios'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['folhamaconha'] = 1000000,
                    ['pastabase'] = 1000000,
                    ['podemd'] = 1000000,
                    ['resinacannabis'] = 1000000,
                    ['fibradecarbono'] = 1000000,
                    ['poliester'] = 1000000,
                    ['respingodesolda'] = 1000000,
                    ['anfetamina'] = 1000000,
                    ['opiopapoula'] = 1000000,
                    ['morfina'] = 1000000,
                    ['money'] = 1000000,
                    ['dirty_money'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [MERCENARIOS]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [MERCENARIOS]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [MERCENARIOS]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [MERCENARIOS]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [MERCENARIOS]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Membro [MERCENARIOS]'] = {
                prefix = 'Membro',
                tier = 6
            },
            ['Novato [MERCENARIOS]'] = {
                prefix = 'Novato',
                tier = 7
            },
        }
    },
    ['Jamaica'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['folhamaconha'] = 1000000,
                    ['pastabase'] = 1000000,
                    ['podemd'] = 1000000,
                    ['resinacannabis'] = 1000000,
                    ['fibradecarbono'] = 1000000,
                    ['poliester'] = 1000000,
                    ['respingodesolda'] = 1000000,
                    ['anfetamina'] = 1000000,
                    ['opiopapoula'] = 1000000,
                    ['morfina'] = 1000000,
                    ['money'] = 1000000,
                    ['dirty_money'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [JAMAICA]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [JAMAICA]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [JAMAICA]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [JAMAICA]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [JAMAICA]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Membro [JAMAICA]'] = {
                prefix = 'Membro',
                tier = 6
            },
            ['Novato [JAMAICA]'] = {
                prefix = 'Novato',
                tier = 7
            },
        }
    },
    ['Suecia'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['folhamaconha'] = 1000000,
                    ['pastabase'] = 1000000,
                    ['podemd'] = 1000000,
                    ['resinacannabis'] = 1000000,
                    ['fibradecarbono'] = 1000000,
                    ['poliester'] = 1000000,
                    ['respingodesolda'] = 1000000,
                    ['anfetamina'] = 1000000,
                    ['opiopapoula'] = 1000000,
                    ['morfina'] = 1000000,
                    ['money'] = 1000000,
                    ['dirty_money'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [SUECIA]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [SUECIA]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [SUECIA]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [SUECIA]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [SUECIA]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Membro [SUECIA]'] = {
                prefix = 'Membro',
                tier = 6
            },
            ['Novato [SUECIA]'] = {
                prefix = 'Novato',
                tier = 7
            },
        }
    },
    ['Belgica'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['folhamaconha'] = 1000000,
                    ['pastabase'] = 1000000,
                    ['podemd'] = 1000000,
                    ['resinacannabis'] = 1000000,
                    ['fibradecarbono'] = 1000000,
                    ['poliester'] = 1000000,
                    ['respingodesolda'] = 1000000,
                    ['anfetamina'] = 1000000,
                    ['opiopapoula'] = 1000000,
                    ['morfina'] = 1000000,
                    ['money'] = 1000000,
                    ['dirty_money'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [BELGICA]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [BELGICA]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [BELGICA]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [BELGICA]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [BELGICA]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Membro [BELGICA]'] = {
                prefix = 'Membro',
                tier = 6
            },
            ['Novato [BELGICA]'] = {
                prefix = 'Novato',
                tier = 7
            },
        }
    },
    ['Vidigal'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['folhamaconha'] = 1000000,
                    ['pastabase'] = 1000000,
                    ['podemd'] = 1000000,
                    ['resinacannabis'] = 1000000,
                    ['fibradecarbono'] = 1000000,
                    ['poliester'] = 1000000,
                    ['respingodesolda'] = 1000000,
                    ['anfetamina'] = 1000000,
                    ['opiopapoula'] = 1000000,
                    ['morfina'] = 1000000,
                    ['money'] = 1000000,
                    ['dirty_money'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [VIDIGAL]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [VIDIGAL]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [VIDIGAL]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [VIDIGAL]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [VIDIGAL]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Membro [VIDIGAL]'] = {
                prefix = 'Membro',
                tier = 6
            },
            ['Novato [VIDIGAL]'] = {
                prefix = 'Novato',
                tier = 7
            },
        }
    },
    ['Anonymous'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['money'] = 1000000,
                    ['pecadearma'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [ANONYMOUS]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [ANONYMOUS]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [ANONYMOUS]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [ANONYMOUS]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [ANONYMOUS]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Membro [ANONYMOUS]'] = {
                prefix = 'Membro',
                tier = 6
            },
            ['Novato [ANONYMOUS]'] = {
                prefix = 'Novato',
                tier = 7
            },
        }
    },
    ['Russia'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['folhamaconha'] = 1000000,
                    ['pastabase'] = 1000000,
                    ['podemd'] = 1000000,
                    ['resinacannabis'] = 1000000,
                    ['fibradecarbono'] = 1000000,
                    ['poliester'] = 1000000,
                    ['respingodesolda'] = 1000000,
                    ['anfetamina'] = 1000000,
                    ['opiopapoula'] = 1000000,
                    ['morfina'] = 1000000,
                    ['money'] = 1000000,
                    ['dirty_money'] = 1000000,
                }
            }
        },

        List = {
            ['Lider [RUSSIA]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [RUSSIA]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [RUSSIA]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Elite [RUSSIA]'] = {
                prefix = 'Elite',
                tier = 4
            },
            ['Supervisor [RUSSIA]'] = {
                prefix = 'Supervisor',
                tier = 5
            },
            ['Membro [RUSSIA]'] = {
                prefix = 'Membro',
                tier = 6
            },
            ['Novato [RUSSIA]'] = {
                prefix = 'Novato',
                tier = 7
            },
        }
    },

    ['Mecanica'] = {
        Config = {
            type = "legal",
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['m-gatilho'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['m-corpo_microsmg'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Lider [Mecanica]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [Mecanica]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [Mecanica]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Especialista [Mecanica]'] = {
                prefix = 'Especialista',
                tier = 4
            },
            ['Mecanico [Mecanica]'] = {
                prefix = 'Mecanico',
                tier = 5
            },
            ['Borracheiro [Mecanica]'] = {
                prefix = 'Borracheiro',
                tier = 6
            },
        }
    },

    ['Customs'] = {
        Config = {
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['money'] = 1000000,
                    ['dirty_money'] = 1000000,
                    ['ferro'] = 1000000,
                    ['aluminio'] = 1000000,
                    ['papel'] = 1000000,
                    ['poliester'] = 1000000,
                    ['fibradecarbono'] = 1000000,
                    
                }
            }
        },

        List = {
            ['Lider [CUSTOMS]'] = {
                prefix = 'Lider',
                tier = 1
            },
            ['Sub-Lider [CUSTOMS]'] = {
                prefix = 'Sub-Lider',
                tier = 2
            },
            ['Gerente [CUSTOMS]'] = {
                prefix = 'Gerente',
                tier = 3
            },
            ['Especialista [CUSTOMS]'] = {
                prefix = 'Especialista',
                tier = 4
            },
            ['Mecanico [CUSTOMS]'] = {
                prefix = 'Mecanico',
                tier = 5
            },
            ['Borracheiro [CUSTOMS]'] = {
                prefix = 'Borracheiro',
                tier = 6
            },
        }
    },

    ['Jornal'] = {
        Config = {
            type = "legal",
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['m-gatilho'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['m-corpo_microsmg'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['DiretorJornal'] = {
                prefix = 'DiretorJornal',
                tier = 1
            },
            ['ProdutorJornal'] = {
                prefix = 'ProdutorJornal',
                tier = 2
            },
            ['Reporter'] = {
                prefix = 'Reporter',
                tier = 3
            },
            ['EstagiarioJornal'] = {
                prefix = 'EstagiarioJornal',
                tier = 4
            },
        }
    },

    ["Judiciario"] = {
        Config = {
            type = "legal",
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['m-gatilho'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['m-corpo_microsmg'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },
		
		List = {
			["Desembargador"] = {
				prefix = "Desembargador",
				tier = 1,
			},

			["Juiz"] = {
				prefix = "Juiz", 
				tier = 2, 
			},

			["Promotor"] = {
				prefix = "Promotor", 
				tier = 3,
			},

			["Supervisor"] = {
				prefix = "Supervisor",
				tier = 4, 
			},

			["Advogado"] = {
				prefix = "Advogado", 
				tier = 5,
			},

			["EstagiarioADV"] = { 
				prefix = "EstagiarioADV",
				tier = 6, 
			},
		}
	},

    -- ["Vanilla"] = {
    --     Config = {
    --         type = "legal",
    --         Salary = { -- SALARIO FAC
    --             active = false, -- Se vai esta ativo ou nao
    --             amount = 2000, -- Valor que vai receber
    --             time = 30, -- tempo em tempo que vai receber salario em minuto(s)
    --         },

    --         Goals = { -- METAS
    --             defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
    --             itens = {
    --                 ['m-gatilho'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
    --                 ['m-corpo_microsmg'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
    --             }
    --         }
    --     },
		
	-- 	List = {
	-- 		["CAFETINA [VANILLA]"] = {
	-- 			prefix = "Cafetina",
	-- 			tier = 1,
	-- 		},

	-- 		["GERENTE [VANILLA]"] = {
	-- 			prefix = "Gerente", 
	-- 			tier = 2, 
	-- 		},

	-- 		["GPLUXO [VANILLA]"] = {
	-- 			prefix = "GP DE LUXO", 
	-- 			tier = 3,
	-- 		},

	-- 		["GP [VANILLA]"] = {
	-- 			prefix = "GP",
	-- 			tier = 4, 
	-- 		},

	-- 		["DANCARINA [VANILLA]"] = {
	-- 			prefix = "Dançarina", 
	-- 			tier = 5,
	-- 		},
	-- 	}
	-- },

    ["Maisonette"] = {
        Config = {
            type = "legal",
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['m-gatilho'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['m-corpo_microsmg'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },
		
		List = {
			["Lider [MAISONETTE]"] = {
				prefix = "Líder",
				tier = 1,
			},

			["Sub-Lider [MAISONETTE]"] = {
				prefix = "Sub-Líder", 
				tier = 2, 
			},

			["Gerente [MAISONETTE]"] = {
				prefix = "Gerente", 
				tier = 3,
			},

			["Membro [MAISONETTE]"] = {
				prefix = "Membro",
				tier = 4, 
			},

			["Novato [MAISONETTE]"] = {
				prefix = "Novato", 
				tier = 5,
			},
            ["Supervisor [MAISONETTE]"] = {
				prefix = "Supervisor", 
				tier = 5,
			},
		}
	},

    ["Bombeiro"] = {
        Config = {
            type = "legal",
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['m-gatilho'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['m-corpo_microsmg'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },
		
		List = {
			["CoronelBombeiro"] = {
				prefix = "CoronelBombeiro",
				tier = 1,
			},

			["TenenteCoronelBombeiro"] = {
				prefix = "TenenteCoronelBombeiro", 
				tier = 2, 
			},

			["MajorBombeiro"] = {
				prefix = "MajorBombeiro", 
				tier = 3,
			},

			["CapitaoBombeiro"] = {
				prefix = "CapitaoBombeiro",
				tier = 4, 
			},

			["TenenteBombeiro"] = {
				prefix = "TenenteBombeiro", 
				tier = 5,
			},

			["AspiranteBombeiro"] = { 
				prefix = "AspiranteBombeiro",
				tier = 6, 
			},
			
			["AlunoOficialBombeiro"] = {
				prefix = "AlunoOficialBombeiro", 
				tier = 7, 
			},
		}
	},

    ['Hospital'] = {
        Config = {
            type = "legal",
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['m-gatilho'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['m-corpo_microsmg'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Diretor'] = {
                prefix = 'Diretor',
                tier = 1
            },
            ['ViceDiretor'] = {
                prefix = 'ViceDiretor',
                tier = 2
            },
            ['Gestao'] = {
                prefix = 'Gestao',
                tier = 3
            },
            ['Psiquiatra'] = {
                prefix = 'Psiquiatra',
                tier = 4
            },
            ['Medico'] = {
                prefix = 'Medico',
                tier = 5
            },
            ['Enfermeiro'] = {
                prefix = 'Enfermeiro',
                tier = 6
            },
            ['Socorrista'] = {
                prefix = 'Socorrista',
                tier = 7
            },
        }
    },

    ['Creche'] = {
        Config = {
            type = "legal",
            Salary = { -- SALARIO FAC
                active = false, -- Se vai esta ativo ou nao
                amount = 2000, -- Valor que vai receber
                time = 30, -- tempo em tempo que vai receber salario em minuto(s)
            },

            Goals = { -- METAS
                defaultReward = 300, -- Valor Padrão da recompensa ( obs Lider consegue alterar in-game )
                itens = {
                    ['m-gatilho'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                    ['m-corpo_microsmg'] = 50, -- Quantidade Padrão da recompensa ( obs Lider consegue alterar in-game )
                }
            }
        },

        List = {
            ['Diretor [CRECHE]'] = {
                prefix = 'Diretor',
                tier = 1
            },
            ['Professor [CRECHE]'] = {
                prefix = 'Professor',
                tier = 2
            },
            ['Crianca [CRECHE]'] = {
                prefix = 'Crianca',
                tier = 3
            },
        }
    },
}


Config.Langs = {
    ['offlinePlayer'] = function(source) TriggerClientEvent("Notify", source,"negado","Este jogador não está online.",5000) end,
    ['alreadyFaction'] = function(source) TriggerClientEvent("Notify", source,"negado","Este jogador já esta em uma organização.",5000)  end,
    ['alreadyBlacklist'] = function(source) TriggerClientEvent("Notify", source,"negado","Você está na black-list, não pode receber convites.",5000)  end,
    ['alreadyUserBlacklist'] = function(source) TriggerClientEvent("Notify",source,"negado","Este jogador está em black-list.",5000)  end,
    ['sendInvite'] = function(source) TriggerClientEvent("Notify",source,"sucesso","Você enviou o convite.",5000)  end,
    ['acceptInvite'] = function(source) TriggerClientEvent("Notify",source,"sucesso","Você aceitou o convite.",5000) end,
    ['acceptedInvite'] = function(source, ply_id) 
        vRP.sendLog('https://discordapp.com/api/webhooks/1279076286517612625/wyobhGChg2L719AmtxmyiNEHPC27sb4VD8XPO8TxUHbIRdVf2RaIA8Yj_IpHc9t_EG9J', '```prolog\n[ID]: '..vRP.getUserId(source)..'\n[CONTATOU]: '..ply_id..''..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S")..'```')
        TriggerClientEvent("Notify",source,"sucesso","O "..ply_id.." aceitou o convite. ",5000) 
    end,
    ['bestTier'] = function(source) TriggerClientEvent("Notify",source,"negado","Você não pode fazer isso com alguem com um cargo igual ou maior que o seu.",5000)   end,
    ['youPromoved'] = function(source) TriggerClientEvent("Notify",source,"sucesso","Você foi promovido.",5000)  end,
    ['youPromovedUser'] = function(source, ply_id, group) 
        print(group,'PROMOTE')
        TriggerClientEvent("Notify",source,"sucesso","Você promoveu o ID: "..ply_id.." para "..group..".",5000) 
        vRP.sendLog('https://discord.com/api/webhooks/1279076360572244061/speWX9Gqou6V5Mr4TynnuXInD-XwJICRwb0lFWTMFiOSlwNT8h0bJJMxCDXPgHPbPFz8', '```prolog\n[ID]: '..vRP.getUserId(source)..'\n[PROMOVEU]: '..ply_id..'\n[PARA]: '..group..''..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S")..'```')
    end,
    ['youDemote'] = function(source) TriggerClientEvent("Notify",source,"sucesso","Você foi rebaixado.",5000)  end,
    ['youDemoteUser'] = function(source, ply_id,group) 
        print(group,'DEMOTE')
        TriggerClientEvent("Notify",source,"sucesso","Você rebaixou o ID: "..ply_id..".",5000) 
        vRP.sendLog('https://discordapp.com/api/webhooks/1279076429069291530/Wf080GpZb499keINVXoQViL0oN1G3oGTpNTCQ6bV9w7ui8qAuwpe38EbUOwHqD9fXZvh', '```prolog\n[ID]: '..vRP.getUserId(source)..'\n[REBAIXOU]: '..ply_id..''..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S")..'```')
    end,
    ['youDismiss'] = function(source) TriggerClientEvent("Notify",source,"sucesso","Você foi demitido de sua organização .",5000)  end,
    ['youDismissUser'] = function(source, ply_id)
        TriggerClientEvent("Notify", source,"sucesso","Você demitiu o ID "..ply_id.." .",5000)  
        vRP.sendLog('https://discordapp.com/api/webhooks/1279076429069291530/Wf080GpZb499keINVXoQViL0oN1G3oGTpNTCQ6bV9w7ui8qAuwpe38EbUOwHqD9fXZvh', '```prolog\n[ID]: '..vRP.getUserId(source)..'\n[DEMITIU]: '..ply_id..''..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S")..'```')
    end,
    ['waitCooldown'] = function(source) TriggerClientEvent("Notify",source,"negado","Aguarde para fazer isso..",5000) end,
    ['bankNotMoney'] = function(source) TriggerClientEvent("Notify",source,"negado","O Banco da organização não possui essa quantia.",5000)  end,
    ['rewardedGoal'] = function(source, amount) TriggerClientEvent("Notify",source,"sucesso","Você resgatou sua meta diaria e recebeu <b>R$ "..amount.."</b> por isso.",5000) end,
    ['notPermission'] = function(source) TriggerClientEvent("Notify",source,"negado","Você não possui permissão.",5000)  end,
    ['notMoneyDeposit'] = function(source) TriggerClientEvent("Notify",source,"negado","Você não possui dinheiro para depositar.",5000)  end,
    ['aa'] = function(source) end,
    ['aa'] = function(source) end,
    ['aa'] = function(source) end,

}

if SERVER then
    -- CUSTOM QUERYS
    vRP.prepare('mirtin_orgs_v2/GetUsersGroup', " SELECT user_id,dvalue FROM vrp_user_data WHERE dkey = 'vRP:datatable' ")
    vRP.prepare("mirtin_orgs_v2/getUserGroup", "SELECT user_id,dvalue FROM vrp_user_data WHERE dkey = 'vRP:datatable' and user_id = @user_id")
    vRP.prepare("mirtin_orgs_v2/updateUserGroup", "UPDATE vrp_user_data SET dvalue = @dvalue WHERE user_id = @user_id and dkey = 'vRP:datatable'")

    -- CAPTURAR GRUPOS COM JOGADOR OFFLINE
    function getUserGroups(user_id)
        local rows = vRP.query("mirtin_orgs_v2/getUserGroup", { user_id = user_id })
        local data = json.decode(rows[1].dvalue) or {}

        if #rows == 0 then 
            return 
        end

        return data.groups
    end

    -- SETAR GRUPO COM JOGADOR OFFLINE
    function updateUserGroups(user_id, groups)
        local rows = vRP.query("mirtin_orgs_v2/getUserGroup", { user_id = user_id })
        local data = json.decode(rows[1].dvalue) or {}

        if #rows == 0 then 
            return 
        end

        if not groups then
            groups = {}
        end

        data.groups = groups

        vRP.execute("mirtin_orgs_v2/updateUserGroup", { user_id = user_id, dvalue = json.encode(data) })
    end

    -- PEGAR DINHEIRO DO BANCO DO JOGADOR
    function getBankMoney(user_id)
        return vRP.getBankMoney(user_id)
    end

    -- IDENTIDADE
    function getUserIdentity(user_id)
        local identity = vRP.getUserIdentity(user_id)
        if not identity then
            return
        end
        if identity.nome then
            identity.name = identity.nome
            identity.firstname = identity.sobrenome
        end

        if identity.name2 then
            identity.firstname = identity.name2
        end

        return identity
    end

    function getUserSource(user_id)
        return vRP.getUserSource(user_id)
    end

    function getUserId(source)
        return vRP.getUserId(source)
    end

    function getUsers()
        --user_id,source
        return vRP.getUsers()
    end

    function getUserMyGroups(user_id)
        return vRP.getUserGroups(user_id)
    end

    function hasGroup(user_id, group)
        return vRP.hasGroup(user_id, group)
    end

    function addUserGroup(user_id, group)
        return vRP.addUserGroup(user_id, group)
    end

    function tryFullPayment(user_id, amount)
        return vRP.tryFullPayment(user_id, amount)
    end

    function giveBankMoney(user_id, amount)
        return vRP.giveBankMoney(user_id, amount)
    end

    function getBankMoney(user_id)
        return vRP.getBankMoney(user_id)
    end

    function getItemName(item)
        local itemName = exports.vrp:itemNameList(item)
        return itemName == "Deleted" or item
    end

    function request(source, text, time)
        return vRP.request(source, text, time)
    end

    function removeUserGroup(user_id, group)
        return vRP.removeUserGroup(user_id, group)
    end

    -- REMOVER BLACKLIST
    RegisterCommand('removerbl', function(source,args)
        local user_id = getUserId(source)
        if not user_id then return end

        local ply_id = tonumber(args[1])
        if not ply_id then return end

        if vRP.hasPermission(user_id,"admin.permissao") then
            TriggerClientEvent("Notify", source, "sucesso","Você removeu a blacklist do ID: "..ply_id..".",5000) 
            BLACKLIST:remUser(ply_id)
        end
    end)

    AddEventHandler('vRP:playerSpawn', function(user_id, source)
        TriggerEvent('mirtin_orgs_v2:playerSpawn', user_id, source)
    end)

    AddEventHandler('vRP:playerLeave', function(user_id)
        TriggerEvent('mirtin_orgs_v2:playerLeave', user_id)
    end)

    AddEventHandler('orgs:removeBlacklist', function(ply_id)
        BLACKLIST:remUser(ply_id)
    end)
end


--[[ 
    Como Utilizar EXPORT de Guardar / Retirar Item no Bau:
    ( Colocar Esse EXPORT na função de retirar/guardar item de seu inventario)
    
    user_id: user_id, -- ID Do Jogador,
    action: withdraw or deposit, -- Ação que foi feita Retirou/Depositou
    item: item, -- Spawn do item que foi retirado/guardado.
    amount: quantidade, -- Quantidade do item que foi depositada/retirada

    EXPORT: 
    exports.mirtin_orgs_v2:addLogChest(user_id, action, item, amount)
]]

--[[ 
    Como Utilizar EXPORT De METAS DIARIAS:
    ( Colocar esse EXPORT na função de Guardar Itens no Armazem ou Coletar Itens no Farm )

    user_id: user_id, -- ID Do Jogador,
    item: item, -- Spawn do item que foi guardado/farmado.
    amount: quantidade, -- Quantidade do item que foi guardada/farmada.

    EXPORT: 
    exports.mirtin_orgs_v2:addGoal(user_id, item, amount)
]]