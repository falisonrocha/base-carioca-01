shared_script "@vrp/lib/lib.lua" --Para remover esta pendencia de todos scripts, execute no console o comando "uninstall"





 
fx_version "bodacious"
game "gta5"

this_is_a_map "yes"

client_scripts {
	"client.lua"
}

files {
	"stream/*",
	"stream/*/**"
}

data_file "DLC_ITYP_REQUEST" "stream/NZKinterior/v_int_16.ytyp"
data_file "DLC_ITYP_REQUEST" "stream/NZKinterior/v_int_49.ytyp"
data_file "DLC_ITYP_REQUEST" "stream/NZKinterior/creative_hotel.ytyp"
data_file "DLC_ITYP_REQUEST" "stream/NZKinterior/creative_middle.ytyp"
data_file 'DLC_ITYP_REQUEST' 'stream/NZKhospital/props/vw_prop_vw_casino_art_02.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/NZKpolicia/vesp_props.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/Molo_lux/sf_dlc_int_01_sec.ytyp'


file 'interiorproxies.meta'
data_file 'INTERIOR_PROXY_ORDER_FILE' 'interiorproxies.meta'                                          