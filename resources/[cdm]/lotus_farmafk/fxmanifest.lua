shared_script '@likizao_ac/client/library.lua'

fx_version   'cerulean'
lua54        'yes'
game         'gta5'

--[[ Resource Information ]]--
name         'lotus_farmafk'
author       'boynull'

--[[ Manifest ]]--
shared_scripts {
    '@vrp/lib/utils.lua',
    'shared/**'
}

server_scripts {
    "server/server.lua",
}

client_scripts {
    "client/utils.lua",
    "client/client.lua",
}

ui_page 'web/index.html'

files {
    'web/*'
}
