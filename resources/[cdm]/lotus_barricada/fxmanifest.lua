shared_script '@likizao_ac/client/library.lua'



fx_version 'cerulean'

game 'gta5'

title 'Lotus Barricada'
description 'A simple barricade script for FiveM'
author 'Feijonts'
version '1.0.0'

shared_scripts {
    '@vrp/lib/utils.lua',
    'shared/*.lua'
}

client_scripts {
    'client/*.lua'
}

server_scripts {
    'server/*.lua'
}

files {
    'stream/nt_objeto_han.ydr',
    'stream/nt_objeto_han.ytyp'
}

data_file 'DLC_ITYP_REQUEST' 'stream/nt_objeto_han.ytyp'