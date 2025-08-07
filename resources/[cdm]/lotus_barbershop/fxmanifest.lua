shared_script '@likizao_ac/client/library.lua'











shared_script '@vrp/lib/lib.lua' --Para remover esta pendencia de todos scripts, execute no console o comando "uninstall"

fx_version 'adamant'
game 'gta5'

ui_page 'ui/index.html'

client_scripts {
    '@vrp/lib/utils.lua',
    'client-side/*'
}

server_scripts {
    '@vrp/lib/utils.lua',
    'server-side/*'
}

files {
    'ui/*',
    'ui/**/*',
    'ui/**/*'
}
