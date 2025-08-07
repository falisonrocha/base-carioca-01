Citizen.CreateThread(function()
	RequestIpl("vh_deco")  -- Decoração fora do Prédio ( Cadeiras de Rodas, Lixeira, Bancos ).
	RequestIpl("vh_flores") -- Flores que estão fora do prédio.
	-- RequestIpl("vh_inconstrucao") -- Objetos em construção na garagem ( recomendo tirar após chegar a atualização com a garagem.).
	RequestIpl("vh_heliponto") -- Heliponto acima do prédio.
	RequestIpl("pillbox_incost") -- Porta no Pillbox, impossibilitando entrar nele.
	RemoveIpl("lr_sc1_02_interior_0_supermod_int_milo_")
end)


CreateThread(function()
	interiorID = GetInteriorAtCoords(2861.54000000,4456.64500000,40.34200000)
	if IsValidInterior(interiorID) then
        EnableInteriorProp(interiorID, "coke_app")
        EnableInteriorProp(interiorID, "coke_staff_01")
        EnableInteriorProp(interiorID, "coke_staff_02")
        EnableInteriorProp(interiorID, "coke_stock")
	    RefreshInterior(interiorID)
	end

    interiorID = GetInteriorAtCoords(553.70790000,2679.48800000,34.06469000)
	if IsValidInterior(interiorID) then
        EnableInteriorProp(interiorID, "light_stock")
        EnableInteriorProp(interiorID, "meth_app")
        EnableInteriorProp(interiorID, "meth_staff_01")
        EnableInteriorProp(interiorID, "meth_staff_02")
        EnableInteriorProp(interiorID, "meth_update_lab_01")
        EnableInteriorProp(interiorID, "meth_update_lab_02")
        EnableInteriorProp(interiorID, "meth_update_lab_01_2")
        EnableInteriorProp(interiorID, "meth_update_lab_02_2")
        EnableInteriorProp(interiorID, "meth_stock")
	    RefreshInterior(interiorID)
	end

    interiorID = GetInteriorAtCoords(-147.94070000,6303.98600000,23.59090000)
	if IsValidInterior(interiorID) then
        EnableInteriorProp(interiorID, "light_stock")
        EnableInteriorProp(interiorID, "meth_app")
        EnableInteriorProp(interiorID, "meth_staff_01")
        EnableInteriorProp(interiorID, "meth_staff_02")
        EnableInteriorProp(interiorID, "meth_update_lab_01")
        EnableInteriorProp(interiorID, "meth_update_lab_02")
        EnableInteriorProp(interiorID, "meth_update_lab_01_2")
        EnableInteriorProp(interiorID, "meth_update_lab_02_2")
        EnableInteriorProp(interiorID, "meth_stock")
	    RefreshInterior(interiorID)
	end
	
    RequestIpl("vw_casino_penthouse")
	RequestIpl("hei_dlc_windows_casino")

	interiorID = GetInteriorAtCoordsWithType(976.6364,70.2947,115.1641,"vw_dlc_casino_apart")
    if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID, "set_pent_tint_shell")
		EnableInteriorProp(interiorID, "set_pent_media_bar_open")
		EnableInteriorProp(interiorID, "set_pent_spa_bar_open")
		EnableInteriorProp(interiorID, "set_pent_dealer")
		EnableInteriorProp(interiorID, "set_pent_pattern_09")
		EnableInteriorProp(interiorID, "set_pent_arcade_retro")
		EnableInteriorProp(interiorID, "set_pent_clutter_03")
		EnableInteriorProp(interiorID, "set_pent_clutter_02")
		EnableInteriorProp(interiorID, "set_pent_clutter_01")
		EnableInteriorProp(interiorID, "set_pent_bar_party_2")
		SetInteriorEntitySetColor(interiorID,"set_pent_tint_shell","0")
		SetInteriorEntitySetColor(interiorID, "set_pent_bar_party_1","0")
		SetInteriorEntitySetColor(interiorID, "set_pent_tint_shell","0")
		SetInteriorEntitySetColor(interiorID, "set_pent_media_bar_open","0")
		SetInteriorEntitySetColor(interiorID, "set_pent_spa_bar_open","0")
		SetInteriorEntitySetColor(interiorID, "set_pent_dealer","0")
		SetInteriorEntitySetColor(interiorID, "set_pent_nodealer","0")
		SetInteriorEntitySetColor(interiorID, "set_pent_media_bar_closed","0")
		SetInteriorEntitySetColor(interiorID, "set_pent_spa_bar_closed","0")
		SetInteriorEntitySetColor(interiorID, "set_pent_pattern_01","0")
		SetInteriorEntitySetColor(interiorID, "set_pent_pattern_03","0")
		SetInteriorEntitySetColor(interiorID, "set_pent_pattern_02","0")
		SetInteriorEntitySetColor(interiorID, "set_pent_pattern_04","0")
		SetInteriorEntitySetColor(interiorID, "set_pent_pattern_05","0")
		SetInteriorEntitySetColor(interiorID, "set_pent_pattern_06","0")
		SetInteriorEntitySetColor(interiorID, "set_pent_pattern_07","0")
		SetInteriorEntitySetColor(interiorID, "set_pent_pattern_08","0")
		SetInteriorEntitySetColor(interiorID, "set_pent_pattern_09","0")
		SetInteriorEntitySetColor(interiorID, "set_pent_arcade_modern","0")
		SetInteriorEntitySetColor(interiorID, "set_pent_arcade_retro","0")
		SetInteriorEntitySetColor(interiorID, "set_pent_clutter_03","0")
		SetInteriorEntitySetColor(interiorID, "set_pent_clutter_02","0")
		SetInteriorEntitySetColor(interiorID, "set_pent_clutter_01","0")
		SetInteriorEntitySetColor(interiorID, "set_pent_lounge_blocker","0")
		SetInteriorEntitySetColor(interiorID, "set_pent_guest_blocker","0")
		SetInteriorEntitySetColor(interiorID, "set_pent_office_blocker","0")
		SetInteriorEntitySetColor(interiorID, "set_pent_cine_blocker","0")
		SetInteriorEntitySetColor(interiorID, "set_pent_spa_blocker","0")
		SetInteriorEntitySetColor(interiorID, "set_pent_bar_blocker","0")
		SetInteriorEntitySetColor(interiorID, "set_pent_bar_party_after","0")
		SetInteriorEntitySetColor(interiorID, "set_pent_bar_clutter","0")
		SetInteriorEntitySetColor(interiorID, "set_pent_bar_party_2","0")
		SetInteriorEntitySetColor(interiorID, "set_pent_bar_light_0","0")
		SetInteriorEntitySetColor(interiorID, "set_pent_bar_light_01","0")
		SetInteriorEntitySetColor(interiorID, "set_pent_bar_light_02","0")
		SetInteriorEntitySetColor(interiorID, "set_pent_bar_party_0","0")
		SetInteriorEntitySetColor(interiorID, "set_pent_bar_party_1","0")
		RefreshInterior(interiorID)
	end

	interiorID = GetInteriorAtCoordsWithType(946.251,43.2715,58.9172,"uj_casino_vault")
    if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID, "set_vault_diamonds_02")
		EnableInteriorProp(interiorID, "set_vault_diamonds_01")
		EnableInteriorProp(interiorID, "set_vault_gold_02")
		EnableInteriorProp(interiorID, "set_vault_gold_01")
		EnableInteriorProp(interiorID, "set_vault_art_02")
		EnableInteriorProp(interiorID, "set_vault_art_01")
		EnableInteriorProp(interiorID, "set_vault_cash_02")
		EnableInteriorProp(interiorID, "set_vault_cash_01")
		EnableInteriorProp(interiorID, "set_vault_dressing")
		EnableInteriorProp(interiorID, "set_spawn_group2")
		EnableInteriorProp(interiorID, "set_spawn_group1")
		DisableInteriorProp(interiorID, "set_vault_door_broken")
		EnableInteriorProp(interiorID, "set_vault_door")
		DisableInteriorProp(interiorID, "set_vault_door_closed")
		RefreshInterior(interiorID)
	end

	interiorID = GetInteriorAtCoordsWithType(935.1050,42.5656,71.2737,"uj_casino_main")
	if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID, "casino_manager_default")
		EnableInteriorProp(interiorID, "casino_manager_workout")
		RefreshInterior(interiorID)
	end

	interiorID = GetInteriorAtCoordsWithType(974.5600,22.5161,70.8396,"uj_casino_back")
	if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID, "casino_back_laundry_damage")
		RefreshInterior(interiorID)
	end
	
	interiorID = GetInteriorAtCoordsWithType(930.1539,-0.2010,59.1323,"uj_casino_tunnel")
	if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID, "set_tunnel_collapse")
		RefreshInterior(interiorID)
	end

    RequestIpl("gabz_biker_milo_")
	interiorID = GetInteriorAtCoords(994.47870000, -122.99490000, 73.11467000)
	if IsValidInterior(interiorID) then
	    EnableInteriorProp(interiorID, "walls_02")
	    SetInteriorPropColor(interiorID, "walls_02", 8)
	    EnableInteriorProp(interiorID, "Furnishings_02")
	    SetInteriorPropColor(interiorID, "Furnishings_02", 8)
	    EnableInteriorProp(interiorID, "decorative_02")
	    EnableInteriorProp(interiorID, "mural_03")
	    EnableInteriorProp(interiorID, "lower_walls_default")
	    SetInteriorPropColor(interiorID, "lower_walls_default", 8)
	    EnableInteriorProp(interiorID, "mod_booth")
	    EnableInteriorProp(interiorID, "gun_locker")
	    EnableInteriorProp(interiorID, "cash_small")
	    EnableInteriorProp(interiorID, "id_small")
	    EnableInteriorProp(interiorID, "weed_small")
	    RefreshInterior(interiorID)
	end

    interiorID = GetInteriorAtCoords(376.91300000,275.42500000,90.1960000)
	if IsValidInterior(interiorID) then
        EnableInteriorProp(interiorID, "int01_ba_style02")
        EnableInteriorProp(interiorID, "int01_ba_deliverytruck")
        EnableInteriorProp(interiorID, "dj_02_lights_04")
        EnableInteriorProp(interiorID, "int01_ba_dj03")
        EnableInteriorProp(interiorID, "int01_ba_style02_podium")
        EnableInteriorProp(interiorID, "int01_ba_equipment_setup")
	    RefreshInterior(interiorID)
	end

	interiorID = GetInteriorAtCoords(2725.19900000,3487.38700000,57.70855000)
	if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID, "maiquel_coloredobject")
		SetInteriorPropColor(interiorID, "maiquel_coloredobject", ConfigK.ObjectsColor)
		if ConfigK.Reflective then
			EnableInteriorProp(interiorID, "maiquel_mtool_rfltv")
		else
			DisableInteriorProp(interiorID, "maiquel_mtool_rfltv")
		end
		if ConfigK.Mural then
			EnableInteriorProp(interiorID, "maiquel_mtool_gft")
		else
			DisableInteriorProp(interiorID, "maiquel_mtool_gft")
		end
		if ConfigK.CabinetsLight then
			EnableInteriorProp(interiorID, "maiquel_mtool_lon")
		else
			DisableInteriorProp(interiorID, "maiquel_mtool_lon")
		end
		if ConfigK.WallObjects then
			EnableInteriorProp(interiorID, "maiquel_wallobjects")
		else
			DisableInteriorProp(interiorID, "maiquel_wallobjects")
		end
		SetInteriorPropColor(interiorID, "maiquel_wallobjects", ConfigK.ObjectsColor)
		if ConfigK.Postlift then
			EnableInteriorProp(interiorID, "maiquel_postlift")
		else
			DisableInteriorProp(interiorID, "maiquel_postlift")
		end
		SetInteriorPropColor(interiorID, "maiquel_postlift", ConfigK.ObjectsColor)
		RefreshInterior(interiorID)
	end

    RequestIpl("gabz_mrpd_milo_")
    interiorID = GetInteriorAtCoords(451.0129, -993.3741, 29.1718)
    if IsValidInterior(interiorID) then      
        EnableInteriorProp(interiorID, "v_gabz_mrpd_rm1")
        EnableInteriorProp(interiorID, "v_gabz_mrpd_rm2")
        EnableInteriorProp(interiorID, "v_gabz_mrpd_rm3")
        EnableInteriorProp(interiorID, "v_gabz_mrpd_rm4")
        EnableInteriorProp(interiorID, "v_gabz_mrpd_rm5")
        EnableInteriorProp(interiorID, "v_gabz_mrpd_rm6")
        EnableInteriorProp(interiorID, "v_gabz_mrpd_rm7")
        EnableInteriorProp(interiorID, "v_gabz_mrpd_rm8")
        EnableInteriorProp(interiorID, "v_gabz_mrpd_rm9")
        EnableInteriorProp(interiorID, "v_gabz_mrpd_rm10")
        EnableInteriorProp(interiorID, "v_gabz_mrpd_rm11")
        EnableInteriorProp(interiorID, "v_gabz_mrpd_rm12")
        EnableInteriorProp(interiorID, "v_gabz_mrpd_rm13")
        EnableInteriorProp(interiorID, "v_gabz_mrpd_rm14")
        EnableInteriorProp(interiorID, "v_gabz_mrpd_rm15")
        EnableInteriorProp(interiorID, "v_gabz_mrpd_rm16")
        EnableInteriorProp(interiorID, "v_gabz_mrpd_rm17")
        EnableInteriorProp(interiorID, "v_gabz_mrpd_rm18")
        EnableInteriorProp(interiorID, "v_gabz_mrpd_rm19")
        EnableInteriorProp(interiorID, "v_gabz_mrpd_rm20")
        EnableInteriorProp(interiorID, "v_gabz_mrpd_rm21")
        EnableInteriorProp(interiorID, "v_gabz_mrpd_rm22")
        EnableInteriorProp(interiorID, "v_gabz_mrpd_rm23")
        EnableInteriorProp(interiorID, "v_gabz_mrpd_rm24")
        EnableInteriorProp(interiorID, "v_gabz_mrpd_rm25")
        EnableInteriorProp(interiorID, "v_gabz_mrpd_rm26")
        EnableInteriorProp(interiorID, "v_gabz_mrpd_rm27")
        EnableInteriorProp(interiorID, "v_gabz_mrpd_rm28")
        EnableInteriorProp(interiorID, "v_gabz_mrpd_rm29")
        EnableInteriorProp(interiorID, "v_gabz_mrpd_rm30")
        EnableInteriorProp(interiorID, "v_gabz_mrpd_rm31")      
    RefreshInterior(interiorID)
    end

	interiorID = GetInteriorAtCoords(96.47223, 6347.784, 30.48238)
	if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID, "weed_hosea")
		EnableInteriorProp(interiorID, "weed_hoseb")
		EnableInteriorProp(interiorID, "weed_hosec")
		EnableInteriorProp(interiorID, "weed_hosed")
		EnableInteriorProp(interiorID, "weed_hosee")
		EnableInteriorProp(interiorID, "weed_hosef")
		EnableInteriorProp(interiorID, "weed_hoseg")
		EnableInteriorProp(interiorID, "weed_hoseh")
		EnableInteriorProp(interiorID, "weed_hosei")
		EnableInteriorProp(interiorID, "weed_growtha_stage3")
		EnableInteriorProp(interiorID, "weed_growthb_stage3")
		EnableInteriorProp(interiorID, "weed_growthc_stage3")
		EnableInteriorProp(interiorID, "weed_growthd_stage3")
		EnableInteriorProp(interiorID, "weed_growthe_stage3")
		EnableInteriorProp(interiorID, "weed_growthf_stage3")
		EnableInteriorProp(interiorID, "weed_growthg_stage3")
		EnableInteriorProp(interiorID, "weed_growthh_stage3")
		EnableInteriorProp(interiorID, "weed_growthi_stage3")
		EnableInteriorProp(interiorID, "light_growtha_stage33_upgrade")
		EnableInteriorProp(interiorID, "light_growthb_stage33_upgrade")
		EnableInteriorProp(interiorID, "light_growthc_stage33_upgrade")
		EnableInteriorProp(interiorID, "light_growthd_stage33_upgrade")
		EnableInteriorProp(interiorID, "light_growthe_stage33_upgrade")
		EnableInteriorProp(interiorID, "light_growthf_stage33_upgrade")
		EnableInteriorProp(interiorID, "light_growthg_stage33_upgrade")
		EnableInteriorProp(interiorID, "light_growthh_stage33_upgrade")
		EnableInteriorProp(interiorID, "light_growthi_stage33_upgrade")
		EnableInteriorProp(interiorID, "weed_upgrade_equip")
		EnableInteriorProp(interiorID, "weed_drying")
		EnableInteriorProp(interiorID, "weed_security_upgrade")
		EnableInteriorProp(interiorID, "weed_production")
		EnableInteriorProp(interiorID, "weed_set_up")
		EnableInteriorProp(interiorID, "weed_chairs")
		RefreshInterior(interiorID)
	end

	interiorID = GetInteriorAtCoords(24.54136000, -1400.42700000, 29.12644000)
	if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID, "weed_upgrade_equip")
		EnableInteriorProp(interiorID, "counterfeit_security")
		EnableInteriorProp(interiorID, "counterfeit_cashpile100a")
		EnableInteriorProp(interiorID, "counterfeit_cashpile20a")
		EnableInteriorProp(interiorID, "counterfeit_cashpile10a")
		EnableInteriorProp(interiorID, "counterfeit_cashpile100b")
		EnableInteriorProp(interiorID, "counterfeit_cashpile100c")
		EnableInteriorProp(interiorID, "counterfeit_cashpile100d")
		EnableInteriorProp(interiorID, "counterfeit_cashpile20b")
		EnableInteriorProp(interiorID, "counterfeit_cashpile20c")
		EnableInteriorProp(interiorID, "counterfeit_cashpile20d")
		EnableInteriorProp(interiorID, "counterfeit_cashpile10b")
		EnableInteriorProp(interiorID, "counterfeit_cashpile10c")
		EnableInteriorProp(interiorID, "counterfeit_cashpile10d")
		EnableInteriorProp(interiorID, "counterfeit_setup")
		EnableInteriorProp(interiorID, "counterfeit_upgrade_equip")
		EnableInteriorProp(interiorID, "dryera_on")
		EnableInteriorProp(interiorID, "dryerb_on")
		EnableInteriorProp(interiorID, "dryerc_on")
		EnableInteriorProp(interiorID, "dryerd_on")
		EnableInteriorProp(interiorID, "money_cutter")
		EnableInteriorProp(interiorID, "special_chairs")
		RefreshInterior(interiorID)
	end

	interiorID = GetInteriorAtCoords(1497.75100000, 6393.09000000, 21.78359000)
	if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID, "meth_lab_upgrade")
		EnableInteriorProp(interiorID, "meth_lab_production")
		EnableInteriorProp(interiorID, "meth_lab_security_high")
		EnableInteriorProp(interiorID, "meth_lab_setup")
		EnableInteriorProp(interiorID, "counterfeit_standard_equip")
		RefreshInterior(interiorID)
	end

	interiorID = GetInteriorAtCoords(-1103.1722412109,4951.3447265625,234.8638)
	if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID, "coke_cut_01")
		EnableInteriorProp(interiorID, "coke_cut_02")
		EnableInteriorProp(interiorID, "coke_cut_03")
		EnableInteriorProp(interiorID, "coke_cut_04")
		EnableInteriorProp(interiorID, "coke_cut_05")
		EnableInteriorProp(interiorID, "set_up")
		EnableInteriorProp(interiorID, "security_high")
		EnableInteriorProp(interiorID, "production_upgrade")
		EnableInteriorProp(interiorID, "equipment_upgrade")
		RefreshInterior(interiorID)
	end

	local int_id = GetInteriorAtCoords(345.4899597168,294.95315551758,98.191421508789)

	--==============================================================
	--НАСТРОЙКИ НАХОДЯТ В САМОМ НИЗУ СКРИПТА / SETTINGS ARE LOWEST SCRIPT
	--==============================================================
	
	--============================ НЕ ТРОГАТЬ / DO NOT TOUCH ==================================
	-- upgrade
	EnableInteriorProp(int_id , "Int01_ba_security_upgrade")
	EnableInteriorProp(int_id , "Int01_ba_equipment_setup")
	DisableInteriorProp(int_id , "Int01_ba_Style01") -- дешовый
	DisableInteriorProp(int_id , "Int01_ba_Style02") -- средний
	EnableInteriorProp(int_id , "Int01_ba_Style03") -- дорогой
	DisableInteriorProp(int_id , "Int01_ba_style01_podium") -- дешовый
	DisableInteriorProp(int_id , "Int01_ba_style02_podium") -- средний
	EnableInteriorProp(int_id , "Int01_ba_style03_podium") -- дорогой
	EnableInteriorProp(int_id , "int01_ba_lights_screen")
	EnableInteriorProp(int_id , "Int01_ba_Screen")
	EnableInteriorProp(int_id , "Int01_ba_bar_content")
	DisableInteriorProp(int_id , "Int01_ba_booze_01") --мусор после вечеринки
	DisableInteriorProp(int_id , "Int01_ba_booze_02") --мусор после вечеринки
	DisableInteriorProp(int_id , "Int01_ba_booze_03") --мусор после вечеринки
	DisableInteriorProp(int_id , "Int01_ba_dj01")
	DisableInteriorProp(int_id , "Int01_ba_dj02")
	EnableInteriorProp(int_id , "Int01_ba_dj03")
	DisableInteriorProp(int_id , "Int01_ba_dj04")
	
	EnableInteriorProp(int_id , "DJ_01_Lights_01")
	DisableInteriorProp(int_id , "DJ_01_Lights_02")
	DisableInteriorProp(int_id , "DJ_01_Lights_03")
	DisableInteriorProp(int_id , "DJ_01_Lights_04")
	
	DisableInteriorProp(int_id , "DJ_02_Lights_01")
	EnableInteriorProp(int_id , "DJ_02_Lights_02")
	DisableInteriorProp(int_id , "DJ_02_Lights_03")
	DisableInteriorProp(int_id , "DJ_02_Lights_04")
	
	DisableInteriorProp(int_id , "DJ_03_Lights_01")
	DisableInteriorProp(int_id , "DJ_03_Lights_02")
	EnableInteriorProp(int_id , "DJ_03_Lights_03")
	DisableInteriorProp(int_id , "DJ_03_Lights_04")
	
	DisableInteriorProp(int_id , "DJ_04_Lights_01")
	DisableInteriorProp(int_id , "DJ_04_Lights_02")
	DisableInteriorProp(int_id , "DJ_04_Lights_03")
	EnableInteriorProp(int_id , "DJ_04_Lights_04")
	
	DisableInteriorProp(int_id , "light_rigs_off")
	EnableInteriorProp(int_id , "Int01_ba_lightgrid_01")
	DisableInteriorProp(int_id , "Int01_ba_Clutter")
	EnableInteriorProp(int_id , "Int01_ba_equipment_upgrade")
	EnableInteriorProp(int_id , "Int01_ba_clubname_01") -- galaxy
	DisableInteriorProp(int_id , "Int01_ba_clubname_02") --studio
	DisableInteriorProp(int_id , "Int01_ba_clubname_03") --omega
	DisableInteriorProp(int_id , "Int01_ba_clubname_04") --tehnology
	DisableInteriorProp(int_id , "Int01_ba_clubname_05") --gefangnis
	DisableInteriorProp(int_id , "Int01_ba_clubname_06") --maisonnette
	DisableInteriorProp(int_id , "Int01_ba_clubname_07") -- tony 
	DisableInteriorProp(int_id , "Int01_ba_clubname_08") -- the palace
	DisableInteriorProp(int_id , "Int01_ba_clubname_09") -- paradise
	
	EnableInteriorProp(int_id , "Int01_ba_dry_ice")
	DisableInteriorProp(int_id , "Int01_ba_deliverytruck")
	DisableInteriorProp(int_id , "Int01_ba_trophy04")
	DisableInteriorProp(int_id , "Int01_ba_trophy05")
	DisableInteriorProp(int_id , "Int01_ba_trophy07")
	DisableInteriorProp(int_id , "Int01_ba_trophy09")
	DisableInteriorProp(int_id , "Int01_ba_trophy08")
	DisableInteriorProp(int_id , "Int01_ba_trophy11")
	DisableInteriorProp(int_id , "Int01_ba_trophy10")
	DisableInteriorProp(int_id , "Int01_ba_trophy03")
	DisableInteriorProp(int_id , "Int01_ba_trophy01")
	DisableInteriorProp(int_id , "Int01_ba_trophy02")
	DisableInteriorProp(int_id , "Int01_ba_trad_lights")
	DisableInteriorProp(int_id , "Int01_ba_Worklamps") -- работа
	RefreshInterior(int_id )


	Citizen.CreateThread(function()
		RequestIpl("vw_casino_penthouse")
		RequestIpl("hei_dlc_windows_casino")
	
		EnableInteriorProp(penthouse, "set_pent_tint_shell")
		DisableInteriorProp(penthouse, "set_pent_bar_party_1")  
		EnableInteriorProp(penthouse, "set_pent_media_bar_open")
		EnableInteriorProp(penthouse, "set_pent_spa_bar_open")
		EnableInteriorProp(penthouse, "set_pent_dealer")
		DisableInteriorProp(penthouse, "set_pent_nodealer")
		DisableInteriorProp(penthouse, "set_pent_media_bar_closed")
		DisableInteriorProp(penthouse, "set_pent_spa_bar_closed")
		DisableInteriorProp(penthouse, "set_pent_pattern_01")
		DisableInteriorProp(penthouse, "set_pent_pattern_03")
		DisableInteriorProp(penthouse, "set_pent_pattern_02")
		DisableInteriorProp(penthouse, "set_pent_pattern_04")
		DisableInteriorProp(penthouse, "set_pent_pattern_05")
		DisableInteriorProp(penthouse, "set_pent_pattern_06")
		DisableInteriorProp(penthouse, "set_pent_pattern_07")
		DisableInteriorProp(penthouse, "set_pent_pattern_08")
		EnableInteriorProp(penthouse, "set_pent_pattern_09")
		DisableInteriorProp(penthouse, "set_pent_arcade_modern")
		EnableInteriorProp(penthouse, "set_pent_arcade_retro")
		EnableInteriorProp(penthouse, "set_pent_clutter_03")
		EnableInteriorProp(penthouse, "set_pent_clutter_02")
		EnableInteriorProp(penthouse, "set_pent_clutter_01")
		DisableInteriorProp(penthouse, "set_pent_lounge_blocker")
		DisableInteriorProp(penthouse, "set_pent_guest_blocker")
		DisableInteriorProp(penthouse, "set_pent_office_blocker")
		DisableInteriorProp(penthouse, "set_pent_cine_blocker")
		DisableInteriorProp(penthouse, "set_pent_spa_blocker")
		DisableInteriorProp(penthouse, "set_pent_bar_blocker")
		DisableInteriorProp(penthouse, "set_pent_bar_party_after")
		DisableInteriorProp(penthouse, "set_pent_bar_clutter")
		EnableInteriorProp(penthouse, "set_pent_bar_party_2")
		DisableInteriorProp(penthouse, "set_pent_bar_light_0")
		DisableInteriorProp(penthouse, "set_pent_bar_light_01")
		DisableInteriorProp(penthouse, "set_pent_bar_light_02")
		DisableInteriorProp(penthouse, "set_pent_bar_party_0")
		DisableInteriorProp(penthouse, "set_pent_bar_party_1")
	
		SetInteriorEntitySetColor(penthouse,"set_pent_tint_shell","0")
		SetInteriorEntitySetColor(penthouse, "set_pent_bar_party_1","0")
		SetInteriorEntitySetColor(penthouse, "set_pent_tint_shell","0")
		SetInteriorEntitySetColor(penthouse, "set_pent_media_bar_open","0")
		SetInteriorEntitySetColor(penthouse, "set_pent_spa_bar_open","0")
		SetInteriorEntitySetColor(penthouse, "set_pent_dealer","0") -- Дверцы
		SetInteriorEntitySetColor(penthouse, "set_pent_nodealer","0")
		SetInteriorEntitySetColor(penthouse, "set_pent_media_bar_closed","0")
		SetInteriorEntitySetColor(penthouse, "set_pent_spa_bar_closed","0")
		SetInteriorEntitySetColor(penthouse, "set_pent_pattern_01","0")
		SetInteriorEntitySetColor(penthouse, "set_pent_pattern_03","0")
		SetInteriorEntitySetColor(penthouse, "set_pent_pattern_02","0")
		SetInteriorEntitySetColor(penthouse, "set_pent_pattern_04","0")
		SetInteriorEntitySetColor(penthouse, "set_pent_pattern_05","0")
		SetInteriorEntitySetColor(penthouse, "set_pent_pattern_06","0")
		SetInteriorEntitySetColor(penthouse, "set_pent_pattern_07","0")
		SetInteriorEntitySetColor(penthouse, "set_pent_pattern_08","0")
		SetInteriorEntitySetColor(penthouse, "set_pent_pattern_09","0")
		SetInteriorEntitySetColor(penthouse, "set_pent_arcade_modern","0")
		SetInteriorEntitySetColor(penthouse, "set_pent_arcade_retro","0")
		SetInteriorEntitySetColor(penthouse, "set_pent_clutter_03","0")
		SetInteriorEntitySetColor(penthouse, "set_pent_clutter_02","0")
		SetInteriorEntitySetColor(penthouse, "set_pent_clutter_01","0")
		SetInteriorEntitySetColor(penthouse, "set_pent_lounge_blocker","0")
		SetInteriorEntitySetColor(penthouse, "set_pent_guest_blocker","0")
		SetInteriorEntitySetColor(penthouse, "set_pent_office_blocker","0")
		SetInteriorEntitySetColor(penthouse, "set_pent_cine_blocker","0")
		SetInteriorEntitySetColor(penthouse, "set_pent_spa_blocker","0")
		SetInteriorEntitySetColor(penthouse, "set_pent_bar_blocker","0")
		SetInteriorEntitySetColor(penthouse, "set_pent_bar_party_after","0")
		SetInteriorEntitySetColor(penthouse, "set_pent_bar_clutter","0")
		SetInteriorEntitySetColor(penthouse, "set_pent_bar_party_2","0")
		SetInteriorEntitySetColor(penthouse, "set_pent_bar_light_0","0")
		SetInteriorEntitySetColor(penthouse, "set_pent_bar_light_01","0")
		SetInteriorEntitySetColor(penthouse, "set_pent_bar_light_02","0")
		SetInteriorEntitySetColor(penthouse, "set_pent_bar_party_0","0")
		SetInteriorEntitySetColor(penthouse, "set_pent_bar_party_1","0")
		RefreshInterior(penthouse)
	end)
	

end)