server_script "@event_logger/log_register.lua"
shared_script '@likizao_ac/client/library.lua'

shared_script "@vrp/lib/lib.lua" --Para remover esta pendencia de todos scripts, execute no console o comando "uninstall" v:P

fx_version 'cerulean'
game 'gta5'

files {

	'data/*',
	'data/**/*',

}

data_file 'HANDLING_FILE' 'data/**/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/**/vehicles.meta'
data_file 'CARCOLS_FILE' 'data/**/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/**/carvariations.meta'
data_file "VEHICLE_LAYOUTS_FILE" 'data/**/layouts/*.meta'
