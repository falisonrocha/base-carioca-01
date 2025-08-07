Config = {
    DevMode = true, -- Munição infinita
    CenterZone = vec3(5053.19,-5145.61,7.13),
    DistZone = 1090.0,

    SafeZone = vec3(4103.06,-4637.22,4.43),
    DistSafe = 390.0,

    Domination = {
        Permissions = {
            { permType = 'group', perm = 'developerlotusgroup@445' },
            { permType = 'group', perm = 'respilegallotusgroup@445' },
        }
    },

    PresetsCloths = {
        presets = {
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

        locales = {
            vec3(-1608.81,-3137.78,13.93),
            vec3(-1668.35,-3103.0,13.93),
        }

    },

    Zombies = {

        Halfs = {
            IncressZombiesPerHalf = 9,
            maxZombiesSpawnPerPlayer = 30,
            maxZombiesSpawnGlobal = 300,
            timeTotalToSurvival = 40 * 60 * 1000
        },

        MinSpawnDistance = 30,
        MaxSpawnDistance = 50,

        TypeZombies = {
            Boss = {
                ['ZombieGiant'] = {
                    Speed = 3.9,
                    Health = 800,
                    Armor = 200,
                    IsBoss = true,
                    Habilitys = { },
                    PointsGive = 5,
                    DamageInPlayer = 100,
        
                    ['Models'] = {
                        'Charger'
                    },
                },
        
                ['ZombieTank'] = {
                    Speed = 2.88,
                    Health = 1000,
                    Armor = 300,
                    IsBoss = true,
                    Habilitys = {},
                    PointsGive = 5,
                    DamageInPlayer = 90,
        
                    ['Models'] = {
                        'Jockey'
                    }
                },
            },
        
            Commom = {
                ['ZombieFat'] = {
                    Speed = 3.0,
                    Health = 600,
                    Armor = 150,
                    IsBoss = false,
                    Habilitys = {},
                    PointsGive = 5,
                    DamageInPlayer = 60,
        
                    ['Models'] = {
                        'a_m_m_fatlatin_01'
                    }
                },
        
                ['ZombieChemist'] = {
                    Speed = 4.8,
                    Health = 450,
                    Armor = 80,
                    IsBoss = false,
                    Habilitys = {},
                    PointsGive = 7,
                    DamageInPlayer = 50,
        
                    ['Models'] = {
                        'g_m_m_chemwork_01'
                    }
                },
        
                ['ZombieDoctor'] = {
                    Speed = 5.4,
                    Health = 200,
                    Armor = 50,
                    IsBoss = false,
                    Habilitys = { 'healer' },
                    PointsGive = 5,
                    DamageInPlayer = 30,
        
                    ['Models'] = {
                        's_m_m_doctor_01'
                    }
                },
        
                ['ZombieMarine'] = {
                    Speed = 9.6,
                    Health = 550,
                    Armor = 100,
                    IsBoss = false,
                    Habilitys = {},
                    PointsGive = 6,
                    DamageInPlayer = 70,
        
                    ['Models'] = {
                        's_m_y_marine_02'
                    }
                },
        
                ['ZombieBoomer'] = {
                    Speed = 2.4,
                    Health = 300,
                    Armor = 50,
                    IsBoss = false,
                    Habilitys = {},
                    PointsGive = 8,
                    DamageInPlayer = 40,
        
                    ['Models'] = {
                        'boomer', 'boomer2', 'Boomette'
                    }
                },
        
                ['ZombieCharger'] = {
                    Speed = 7.2,
                    Health = 700,
                    Armor = 200,
                    IsBoss = false,
                    Habilitys = {},
                    PointsGive = 10,
                    DamageInPlayer = 80,
        
                    ['Models'] = {
                        'Charger'
                    }
                },
        
                ['ZombieJockey'] = {
                    Speed = 12.0,
                    Health = 250,
                    Armor = 50,
                    IsBoss = false,
                    Habilitys = {},
                    PointsGive = 7,
                    DamageInPlayer = 40,
        
                    ['Models'] = {
                        'Jockey'
                    }
                },
        
                ['ZombieWitch'] = {
                    Speed = 14.4,
                    Health = 350,
                    Armor = 75,
                    IsBoss = false,
                    Habilitys = {},
                    PointsGive = 8,
                    DamageInPlayer = 50,
        
                    ['Models'] = {
                        'Witch'
                    }
                },
        
                ['ZombiePrisoner'] = {
                    Speed = 6.0,
                    Health = 400,
                    Armor = 100,
                    IsBoss = false,
                    Habilitys = {},
                    PointsGive = 6,
                    DamageInPlayer = 60,
        
                    ['Models'] = {
                        's_m_y_prisoner_01', 's_m_y_prismuscl_01'
                    }
                },
        
                ['ZombiePolynesian'] = {
                    Speed = 3.6,
                    Health = 600,
                    Armor = 150,
                    IsBoss = false,
                    Habilitys = {},
                    PointsGive = 7,
                    DamageInPlayer = 70, -- Zumbi mais lento, mas com alta saúde
        
                    ['Models'] = {
                        'a_m_m_polynesian_01'
                    }
                },
        
                ['ZombieOG'] = {
                    Speed = 5.4,
                    Health = 550,
                    Armor = 120,
                    IsBoss = false,
                    Habilitys = {},
                    PointsGive = 8,
                    DamageInPlayer = 65,
        
                    ['Models'] = {
                        'a_m_m_og_boss_01'
                    }
                },
        
                ['ZombieHillbilly'] = {
                    Speed = 4.8,
                    Health = 500,
                    Armor = 100,
                    IsBoss = false,
                    Habilitys = {},
                    PointsGive = 6,
                    DamageInPlayer = 60,
        
                    ['Models'] = {
                        'a_m_m_hillbilly_01'
                    }
                },
        
                ['ZombieBeach'] = {
                    Speed = 118.8,
                    Health = 200,
                    Armor = 50,
                    IsBoss = false,
                    Habilitys = {},
                    PointsGive = 4,
                    DamageInPlayer = 20,
        
                    ['Models'] = {
                        'a_m_m_beach_01'
                    }
                },
            }
        },
        

        PlayCustomSpeakingSounds = true,
        SpeakingSounds = {
            DistanceSounds = {
                far = {
                    'zombie_growl_1.mp3',
                    'zombie_growl_2.mp3',
                },
                close  = {
                    'zombie_aggressive_1.mp3',
                    'zombie_aggressive_2.mp3',
                    'zombie_aggressive_3.mp3',
                    'zombie_aggressive_4.mp3',
                    'zombie_aggressive_5.mp3'
                },
            },
        },
    },

    Players = {
        CoordsTeleportReject = vector3(1435.71,-2588.92,47.7)
    }
}
