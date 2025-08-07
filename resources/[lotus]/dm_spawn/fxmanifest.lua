shared_script '@likizao_ac/client/library.lua'









shared_script "@vrp/lib/lib.lua" --Para remover esta pendencia de todos scripts, execute no console o comando "uninstall"











fx_version "cerulean"
game "gta5"

ui_page "web/index.html"

client_scripts {
	"@vrp/lib/utils.lua",
	"client/*"
}

server_scripts {
	"@vrp/lib/utils.lua",
	"server/*"
}

files {
	"web/*",
	"web/**/*",
}

export 'routes'                            