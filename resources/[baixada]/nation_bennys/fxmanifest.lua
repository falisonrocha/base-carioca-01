fx_version "cerulean"
game "gta5"

ui_page "nui/index.html"

client_scripts {
	"@vrp/lib/utils.lua",
	"config.lua",
	"client.lua"
} 

server_script {
	"@vrp/lib/utils.lua",
	"config.lua",
	"server.lua"
}

files {
	"nui/index.html",
	"nui/lang.js",
	"nui/sounds/*.ogg",
	"nui/sounds/*.wav",
	"nui/script.js",
	"nui/css.css",
	"carcols_gen9.meta", 
	"carmodcols_gen9.meta"
}

data_file "CARCOLS_GEN9_FILE" "carcols_gen9.meta"
data_file "CARMODCOLS_GEN9_FILE" "carmodcols_gen9.meta"