shared_script '@likizao_ac/client/library.lua'

fx_version 'bodacious'
game "gta5"

ui_page "web/index.html"

lua54 'yes'

shared_scripts {
    '@vrp/lib/utils.lua',
    'shared/*'
}

client_scripts {
	"client/functions.lua",
	"client/main.lua",
}

server_scripts {
	"server/modules/*.lua",
	"server/main.lua"
}

files {
	"web/*",
	"web/**/*",
	"web/**/**/*",
}