/*--------------------------------------------------
	=============== Autorun File ===============
	*** Copyright (c) 2012-2025 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/
------------------ Addon Information ------------------
local AddonName = "Military SNPCs"
local AddonType = "NPC"
-------------------------------------------------------
local VJExists = file.Exists("lua/autorun/vj_base_autorun.lua", "GAME")
if VJExists == true then
	include("autorun/vj_controls.lua")

	local spawnCategory = "Military" -- Category, you can also set a category individually by replacing the spawnCategory with a string value
	
	-- Enemy
		-- United States of America
		VJ.AddNPC_HUMAN("U.S. Marine (Enemy)", "npc_vj_mili_marine", {"weapon_vj_m16a1"}, spawnCategory)
		VJ.AddNPC_HUMAN("U.S. Ranger (Enemy)", "npc_vj_mili_ranger", {"weapon_vj_m16a1", "weapon_vj_m16a1", "weapon_vj_m16a1", "weapon_vj_spas12"}, spawnCategory)
		VJ.AddNPC_HUMAN("U.S. Airborne (Enemy)", "npc_vj_mili_airborne", {"weapon_vj_us_thompson", "weapon_vj_us_m1garand", "weapon_vj_us_m1garand", "weapon_vj_us_m1garand"}, spawnCategory)
		VJ.AddNPC("M1 Abrams Woodland (Enemy)", "npc_vj_mili_m1a1abrams", spawnCategory)
		VJ.AddNPC("M1 Abrams Desert (Enemy)", "npc_vj_mili_m1a1abramsdes", spawnCategory)
		VJ.AddNPC("M2 Browning Emplacement (Enemy)", "npc_vj_mili_emp_m2b", spawnCategory)
		-- Germany
		VJ.AddNPC_HUMAN("Wehrmacht Infantry (Enemy)", "npc_vj_mili_wehrmacht", {"weapon_vj_mp40", "weapon_vj_nz_karabiner98k", "weapon_vj_nz_karabiner98k", "weapon_vj_nz_karabiner98k"}, spawnCategory)
		VJ.AddNPC_HUMAN("German Infantry (Enemy)", "npc_vj_mili_german", {"weapon_vj_mp40", "weapon_vj_nz_karabiner98k", "weapon_vj_nz_karabiner98k", "weapon_vj_nz_karabiner98k"}, spawnCategory)
		VJ.AddNPC_HUMAN("Panzergrenadier (Enemy)", "npc_vj_mili_pzgrenadier", {"weapon_vj_mp40", "weapon_vj_nz_karabiner98k", "weapon_vj_nz_karabiner98k"}, spawnCategory)
		VJ.AddNPC_HUMAN("Waffen-SS (Enemy)", "npc_vj_mili_waffenss", {"weapon_vj_mp40"}, spawnCategory)
		VJ.AddNPC("Tiger (Enemy)", "npc_vj_mili_tiger_red", spawnCategory)
		VJ.AddNPC("MG 42 Emplacement (Enemy)", "npc_vj_mili_emp_mg42", spawnCategory)
		-- Soviet
		VJ.AddNPC_HUMAN("Soviet Infantry (Enemy)", "npc_vj_mili_soviet", {"weapon_vj_sov_mosinnagant", "weapon_vj_sov_mosinnagant", "weapon_vj_sov_mosinnagant", "weapon_vj_sov_ppsh41"}, spawnCategory)
		VJ.AddNPC_HUMAN("Soviet Spetsnaz (Enemy)", "npc_vj_mili_soviet_spetsnaz", {"weapon_vj_ak47", "weapon_vj_sov_ppsh41"}, spawnCategory)
		VJ.AddNPC("Soviet T-72 (Enemy)", "npc_vj_mili_t72_soviet", spawnCategory)
		-- Insurgents
		VJ.AddNPC_HUMAN("Terrorist (Enemy)", "npc_vj_mili_terrorist", {"weapon_vj_rpg", "weapon_vj_rpg", "weapon_vj_ak47", "weapon_vj_ak47", "weapon_vj_ak47", "weapon_vj_mp40", "weapon_vj_mp40", "weapon_vj_mp40", "weapon_vj_smg1", "weapon_vj_smg1", "weapon_vj_smg1", "weapon_vj_spas12", "weapon_vj_spas12", "weapon_vj_spas12"}, spawnCategory)
		VJ.AddNPC("ChicLeet (Enemy)", "npc_vj_mili_chicleet", spawnCategory)
		VJ.AddNPC("Terrorist T-72 (Enemy)", "npc_vj_mili_t72_terrorist", spawnCategory)
		VJ.AddNPC("Terrorism (Enemy)", "sent_vj_mili_terrorism", spawnCategory)
		
	-- Friendly
		-- United States of America
		VJ.AddNPC_HUMAN("U.S. Marine (Friendly)", "npc_vj_milifri_marine", {"weapon_vj_m16a1"}, spawnCategory)
		VJ.AddNPC_HUMAN("U.S. Ranger (Friendly)", "npc_vj_milifri_ranger", {"weapon_vj_m16a1", "weapon_vj_m16a1", "weapon_vj_m16a1", "weapon_vj_spas12"}, spawnCategory)
		VJ.AddNPC_HUMAN("U.S. Airborne (Friendly)", "npc_vj_milifri_airborne", {"weapon_vj_us_thompson", "weapon_vj_us_m1garand", "weapon_vj_us_m1garand", "weapon_vj_us_m1garand"}, spawnCategory)
		VJ.AddNPC("M1 Abrams Woodland (Friendly)", "npc_vj_milifri_m1a1abrams", spawnCategory)
		VJ.AddNPC("M1 Abrams Desert (Friendly)", "npc_vj_milifri_m1a1abramsdes", spawnCategory)
		VJ.AddNPC("M2 Browning Emplacement (Friendly)", "npc_vj_milifri_emp_m2b", spawnCategory)
		-- Germany
		VJ.AddNPC_HUMAN("Wehrmacht Infantry (Friendly)", "npc_vj_milifri_wehrmacht", {"weapon_vj_mp40", "weapon_vj_nz_karabiner98k", "weapon_vj_nz_karabiner98k", "weapon_vj_nz_karabiner98k"}, spawnCategory)
		VJ.AddNPC_HUMAN("German Infantry (Friendly)", "npc_vj_milifri_german", {"weapon_vj_mp40", "weapon_vj_nz_karabiner98k", "weapon_vj_nz_karabiner98k", "weapon_vj_nz_karabiner98k"}, spawnCategory)
		VJ.AddNPC_HUMAN("Panzergrenadier (Friendly)", "npc_vj_milifri_pzgrenadier", {"weapon_vj_mp40", "weapon_vj_nz_karabiner98k", "weapon_vj_nz_karabiner98k"}, spawnCategory)
		VJ.AddNPC_HUMAN("Waffen-SS (Friendly)", "npc_vj_milifri_waffenss", {"weapon_vj_mp40", "weapon_vj_nz_karabiner98k"}, spawnCategory)
		VJ.AddNPC("Tiger (Friendly)", "npc_vj_milifri_tiger_red", spawnCategory)
		VJ.AddNPC("MG 42 Emplacement (Friendly)", "npc_vj_milifri_emp_mg42", spawnCategory)
		-- Soviet
		VJ.AddNPC_HUMAN("Soviet Infantry (Friendly)", "npc_vj_milifri_soviet", {"weapon_vj_sov_mosinnagant", "weapon_vj_sov_mosinnagant", "weapon_vj_sov_mosinnagant", "weapon_vj_sov_ppsh41"}, spawnCategory)
		VJ.AddNPC_HUMAN("Soviet Spetsnaz (Friendly)", "npc_vj_milifri_soviet_spetsnaz", {"weapon_vj_ak47", "weapon_vj_sov_ppsh41"}, spawnCategory)
		VJ.AddNPC("Soviet T-72 (Friendly)", "npc_vj_milifri_t72_soviet", spawnCategory)
		-- Insurgents
		VJ.AddNPC_HUMAN("Terrorist (Friendly)", "npc_vj_milifri_terrorist", {"weapon_vj_rpg", "weapon_vj_rpg", "weapon_vj_ak47", "weapon_vj_ak47", "weapon_vj_ak47", "weapon_vj_mp40", "weapon_vj_mp40", "weapon_vj_mp40", "weapon_vj_smg1", "weapon_vj_smg1", "weapon_vj_smg1", "weapon_vj_spas12", "weapon_vj_spas12", "weapon_vj_spas12"}, spawnCategory)
		VJ.AddNPC("ChicLeet (Friendly)", "npc_vj_milifri_chicleet", spawnCategory)
		VJ.AddNPC("Terrorist T-72 (Friendly)", "npc_vj_milifri_t72_terrorist", spawnCategory)
		VJ.AddNPC("Terrorism (Friendly)", "sent_vj_milifri_terrorism", spawnCategory)

	-- Weapons
	VJ.AddNPCWeapon("VJ_US_Thompson", "weapon_vj_us_thompson")
	VJ.AddNPCWeapon("VJ_US_M1 Garand", "weapon_vj_us_m1garand")
	VJ.AddNPCWeapon("VJ_NZ_Karabiner 98k", "weapon_vj_nz_karabiner98k")
	VJ.AddNPCWeapon("VJ_Sov_Mosin-Nagant", "weapon_vj_sov_mosinnagant")
	VJ.AddNPCWeapon("VJ_Sov_PSSh-41", "weapon_vj_sov_ppsh41")
	
	-- Particles --
	VJ.AddParticle("particles/vj_military_fx.pcf", {
		"vj_military_muzzle_bar",
		"vj_military_muzzle_bar_core1",
		"vj_military_muzzle_bar_core2",
		"vj_military_muzzle_bar_flame",
		"vj_military_muzzle_garand",
		"vj_military_muzzle_garand_core1",
		"vj_military_muzzle_garand_core2",
		"vj_military_muzzle_garand_flame",
		"vj_military_muzzle_smoke",
		"vj_military_muzzle_spark1",
		"vj_military_muzzle_spark2",
	})
	
	-- Precache Models --
	util.PrecacheModel("models/VJ_HGRUNT/hgrunt1.mdl")
	util.PrecacheModel("models/VJ_HGRUNT/hgrunt2.mdl")
	util.PrecacheModel("models/VJ_HGRUNT/hgrunt3.mdl")
	util.PrecacheModel("models/VJ_HGRUNT/hgrunt4.mdl")
	util.PrecacheModel("models/VJ_HGRUNT/hgrunt5.mdl")
	util.PrecacheModel("models/VJ_UNITEDSTATES/airbrone1.mdl")
	util.PrecacheModel("models/VJ_UNITEDSTATES/airbrone2.mdl")
	util.PrecacheModel("models/VJ_UNITEDSTATES/airbrone3.mdl")
	util.PrecacheModel("models/VJ_UNITEDSTATES/airbrone4.mdl")
	util.PrecacheModel("models/VJ_UNITEDSTATES/airbrone5.mdl")
	util.PrecacheModel("models/VJ_UNITEDSTATES/airbrone6.mdl")
	util.PrecacheModel("models/VJ_UNITEDSTATES/airbrone7.mdl")
	util.PrecacheModel("models/VJ_UNITEDSTATES/airbrone8.mdl")
	util.PrecacheModel("models/VJ_UNITEDSTATES/airbrone9.mdl")
	
	util.PrecacheModel("models/VJ_DODGERMANS/german_soldier1.mdl")
	util.PrecacheModel("models/VJ_DODGERMANS/german_soldier2.mdl")
	util.PrecacheModel("models/VJ_DODGERMANS/german_soldier3.mdl")
	util.PrecacheModel("models/VJ_DODGERMANS/german_soldier4.mdl")
	util.PrecacheModel("models/VJ_DODGERMANS/german_soldier5.mdl")
	util.PrecacheModel("models/VJ_DODGERMANS/german_soldier6.mdl")
	util.PrecacheModel("models/VJ_WAFFEN/german_soldier1.mdl")
	util.PrecacheModel("models/VJ_WAFFEN/german_soldier2.mdl")
	util.PrecacheModel("models/VJ_WAFFEN/german_soldier3.mdl")
	util.PrecacheModel("models/VJ_WAFFEN/german_soldier4.mdl")
	util.PrecacheModel("models/VJ_WAFFEN/german_soldier5.mdl")
	util.PrecacheModel("models/VJ_WAFFEN/german_soldier6.mdl")
	
	util.PrecacheModel("models/soviet/soviet_soldier1.mdl")
	util.PrecacheModel("models/soviet/soviet_soldier2.mdl")
	util.PrecacheModel("models/soviet/soviet_soldier3.mdl")
	util.PrecacheModel("models/soviet/soviet_soldier4.mdl")
	util.PrecacheModel("models/soviet/soviet_soldier5.mdl")
	util.PrecacheModel("models/soviet/soviet_soldier6.mdl")
	
	util.PrecacheModel("models/VJ_Terrorist/2hemagh.mdl")
	util.PrecacheModel("models/VJ_Terrorist/2kimasked.mdl")
	util.PrecacheModel("models/VJ_Terrorist/3hemagh.mdl")
	util.PrecacheModel("models/VJ_Terrorist/shemagh.mdl")
	util.PrecacheModel("models/VJ_Terrorist/shemagh_helmet.mdl")
	util.PrecacheModel("models/VJ_Terrorist/skimasked.mdl")
	util.PrecacheModel("models/VJ_Terrorist/unmasked1.mdl")
	util.PrecacheModel("models/VJ_Terrorist/unmasked2.mdl")

-- !!!!!! DON'T TOUCH ANYTHING BELOW THIS !!!!!! -------------------------------------------------------------------------------------------------------------------------
	AddCSLuaFile()
	VJ.AddAddonProperty(AddonName, AddonType)
else
	if CLIENT then
		chat.AddText(Color(0, 200, 200), AddonName,
		Color(0, 255, 0), " was unable to install, you are missing ", 
		Color(255, 100, 0), "VJ Base!")
	end
	
	timer.Simple(1, function()
		if not VJBASE_ERROR_MISSING then
			VJBASE_ERROR_MISSING = true
			if CLIENT then
				// Get rid of old error messages from addons running on older code...
				if VJF && type(VJF) == "Panel" then
					VJF:Close()
				end
				VJF = true
				
				local frame = vgui.Create("DFrame")
				frame:SetSize(600, 160)
				frame:SetPos((ScrW() - frame:GetWide()) / 2, (ScrH() - frame:GetTall()) / 2)
				frame:SetTitle("Error: VJ Base is missing!")
				frame:SetBackgroundBlur(true)
				frame:MakePopup()
	
				local labelTitle = vgui.Create("DLabel", frame)
				labelTitle:SetPos(250, 30)
				labelTitle:SetText("VJ BASE IS MISSING!")
				labelTitle:SetTextColor(Color(255,128,128))
				labelTitle:SizeToContents()
				
				local label1 = vgui.Create("DLabel", frame)
				label1:SetPos(170, 50)
				label1:SetText("Garry's Mod was unable to find VJ Base in your files!")
				label1:SizeToContents()
				
				local label2 = vgui.Create("DLabel", frame)
				label2:SetPos(10, 70)
				label2:SetText("You have an addon installed that requires VJ Base but VJ Base is missing. To install VJ Base, click on the link below. Once\n                                                   installed, make sure it is enabled and then restart your game.")
				label2:SizeToContents()
				
				local link = vgui.Create("DLabelURL", frame)
				link:SetSize(300, 20)
				link:SetPos(195, 100)
				link:SetText("VJ_Base_Download_Link_(Steam_Workshop)")
				link:SetURL("https://steamcommunity.com/sharedfiles/filedetails/?id=131759821")
				
				local buttonClose = vgui.Create("DButton", frame)
				buttonClose:SetText("CLOSE")
				buttonClose:SetPos(260, 120)
				buttonClose:SetSize(80, 35)
				buttonClose.DoClick = function()
					frame:Close()
				end
			elseif (SERVER) then
				VJF = true
				timer.Remove("VJBASEMissing")
				timer.Create("VJBASE_ERROR_CONFLICT", 5, 0, function()
					print("VJ Base is missing! Download it from the Steam Workshop! Link: https://steamcommunity.com/sharedfiles/filedetails/?id=131759821")
				end)
			end
		end
	end)
end
