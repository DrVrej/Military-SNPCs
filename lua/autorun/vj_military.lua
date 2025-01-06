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
	
	/*VJ.AddParticle("particles/doi_impact_fx.pcf", {
		"doi_impact_concrete",
		"doi_impact_dirt",
		"doi_impact_glass",
		"doi_impact_metal",
		"doi_impact_sand",
		"doi_impact_snow",
		"doi_impact_leaves",
		"doi_impact_wood",
		"doi_impact_grass",
		"doi_impact_tile",
		"doi_impact_plastic",
		"doi_impact_rock",
		"doi_impact_gravel",
		"doi_impact_mud",
		"doi_impact_fruit",
		"doi_impact_asphalt",
		"doi_impact_cardboard",
		"doi_impact_rubber",
		"doi_impact_carpet",
		"doi_impact_brick",
		"doi_impact_paper",
		"doi_impact_computer",
	})*/
	
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

	-- Net messages --
	if SERVER then
		util.AddNetworkString("vj_mili_tank_m1a1_fire")
		util.AddNetworkString("vj_mili_tank_m1a1_idle")
		util.AddNetworkString("vj_mili_tank_m1a1_move")
		util.AddNetworkString("vj_mili_tank_t72_fire")
		util.AddNetworkString("vj_mili_tank_t72_idle")
		util.AddNetworkString("vj_mili_tank_t72_move")
		util.AddNetworkString("vj_mili_tank_tiger_fire")
		util.AddNetworkString("vj_mili_tank_tiger_idle")
		util.AddNetworkString("vj_mili_tank_tiger_move")
	end
	
	net.Receive("vj_mili_tank_m1a1_fire", function()
		local ent = net.ReadEntity()
		if ent:IsValid() then
		ent.Emitter = ParticleEmitter(ent:GetPos())
		ent.SmokeEffect2 = ent.Emitter:Add("particles/smokey",ent:GetPos() +ent:GetForward()*-230 +ent:GetRight()*0 +ent:GetUp()*72)
		ent.SmokeEffect2:SetVelocity( ent:GetForward() * math.Rand(0,-50) + Vector(0,-30,math.Rand(-10,-20)) + ent:GetVelocity() )
		ent.SmokeEffect2:SetDieTime(2)
		ent.SmokeEffect2:SetStartAlpha(30)
		ent.SmokeEffect2:SetEndAlpha(0)
		ent.SmokeEffect2:SetStartSize(3)
		ent.SmokeEffect2:SetEndSize(50)
		ent.SmokeEffect2:SetRoll(math.Rand(-0.2,0.2))
		ent.SmokeEffect2:SetColor(150,150,150,255)
		ent.Emitter:Finish()
		end
	end)
	--
	net.Receive("vj_mili_tank_m1a1_idle", function()
		local ent = net.ReadEntity()
		if ent:IsValid() then
		ent.Emitter = ParticleEmitter(ent:GetPos())
		ent.SmokeEffect1 = ent.Emitter:Add("particles/smokey",ent:GetPos() +ent:GetForward()*160 +ent:GetRight()*-28 +ent:GetUp()*45)
		ent.SmokeEffect1:SetVelocity(ent:GetForward() *math.Rand(0,50) +Vector(math.Rand(5,5),math.Rand(5,5),math.Rand(5,5)) +ent:GetVelocity())
		ent.SmokeEffect1:SetDieTime(0.6)
		ent.SmokeEffect1:SetStartAlpha(30)
		ent.SmokeEffect1:SetEndAlpha(0)
		ent.SmokeEffect1:SetStartSize(5)
		ent.SmokeEffect1:SetEndSize(40)
		ent.SmokeEffect1:SetRoll(math.Rand(-0.2,0.2))
		ent.SmokeEffect1:SetColor(150,150,150,255)
		
		ent.HeatEffect1 = ent.Emitter:Add("sprites/heatwave",ent:GetPos() +ent:GetForward()*165 +ent:GetRight()*-28 +ent:GetUp()*45)
		ent.SmokeEffect1:SetVelocity(ent:GetForward() *math.Rand(0,50) +Vector(math.Rand(5,5),math.Rand(5,5),math.Rand(5,5)) +ent:GetVelocity())
		ent.HeatEffect1:SetDieTime(0.1)
		ent.HeatEffect1:SetStartAlpha(255)
		ent.HeatEffect1:SetEndAlpha(255)
		ent.HeatEffect1:SetStartSize(5)
		ent.HeatEffect1:SetEndSize(10)
		ent.HeatEffect1:SetRoll(math.Rand(-50,50))
		ent.HeatEffect1:SetColor(255,255,255)
		ent.Emitter:Finish()
		
		ent.Emitter = ParticleEmitter(ent:GetPos())
		ent.SmokeEffect1 = ent.Emitter:Add("particles/smokey",ent:GetPos() +ent:GetForward()*160 +ent:GetRight()*28 +ent:GetUp()*45)
		ent.SmokeEffect1:SetVelocity(ent:GetForward() *math.Rand(0,50) +Vector(math.Rand(5,5),math.Rand(5,5),math.Rand(5,5)) +ent:GetVelocity())
		ent.SmokeEffect1:SetDieTime(0.6)
		ent.SmokeEffect1:SetStartAlpha(30)
		ent.SmokeEffect1:SetEndAlpha(0)
		ent.SmokeEffect1:SetStartSize(5)
		ent.SmokeEffect1:SetEndSize(40)
		ent.SmokeEffect1:SetRoll(math.Rand(-0.2,0.2))
		ent.SmokeEffect1:SetColor(150,150,150,255)
		
		ent.HeatEffect1 = ent.Emitter:Add("sprites/heatwave",ent:GetPos() +ent:GetForward()*165 +ent:GetRight()*28 +ent:GetUp()*45)
		ent.SmokeEffect1:SetVelocity(ent:GetForward() *math.Rand(0,50) +Vector(math.Rand(5,5),math.Rand(5,5),math.Rand(5,5)) +ent:GetVelocity())
		ent.HeatEffect1:SetDieTime(0.1)
		ent.HeatEffect1:SetStartAlpha(255)
		ent.HeatEffect1:SetEndAlpha(255)
		ent.HeatEffect1:SetStartSize(5)
		ent.HeatEffect1:SetEndSize(10)
		ent.HeatEffect1:SetRoll(math.Rand(-50,50))
		ent.HeatEffect1:SetColor(255,255,255)
		ent.Emitter:Finish()
		end
	end)
	--
	net.Receive("vj_mili_tank_m1a1_move", function()
		local ent = net.ReadEntity()
		if ent:IsValid() then
		ent.Emitter = ParticleEmitter(ent:GetPos())
		ent.MoveSmokeEffect1 = ent.Emitter:Add("particles/smokey",ent:GetPos() +ent:GetForward()*87 +ent:GetRight()*58 +ent:GetUp()*0)
		ent.MoveSmokeEffect1:SetVelocity( ent:GetForward() * math.Rand(100,200) + Vector(math.Rand(5,-5),math.Rand(5,-5),math.Rand(5,-5)) + ent:GetVelocity() )
		ent.MoveSmokeEffect1:SetDieTime(4)
		ent.MoveSmokeEffect1:SetStartAlpha(30)
		ent.MoveSmokeEffect1:SetEndAlpha(0)
		ent.MoveSmokeEffect1:SetStartSize(math.Rand(12,20))
		ent.MoveSmokeEffect1:SetEndSize(math.Rand(60,80))
		ent.MoveSmokeEffect1:SetRoll(math.Rand(-0.2,0.2))
		ent.MoveSmokeEffect1:SetColor(80,60,20)
		ent.MoveSmokeEffect1:SetAirResistance(300)
		ent.MoveSmokeEffect1:SetGravity(Vector(0,0,50))
		
		ent.MoveSmokeEffect2 = ent.Emitter:Add("particles/smokey",ent:GetPos() +ent:GetForward()*87 +ent:GetRight()*-58 +ent:GetUp()*0)
		ent.MoveSmokeEffect2:SetVelocity( ent:GetForward() * math.Rand(100,200) + Vector(math.Rand(5,-5),math.Rand(5,-5),math.Rand(5,-5)) + ent:GetVelocity() )
		ent.MoveSmokeEffect2:SetDieTime(4)
		ent.MoveSmokeEffect2:SetStartAlpha(30)
		ent.MoveSmokeEffect2:SetEndAlpha(0)
		ent.MoveSmokeEffect2:SetStartSize(math.Rand(12,20))
		ent.MoveSmokeEffect2:SetEndSize(math.Rand(60,80))
		ent.MoveSmokeEffect2:SetRoll(math.Rand(-0.2,0.2))
		ent.MoveSmokeEffect2:SetColor(80,60,20)
		ent.MoveSmokeEffect2:SetAirResistance(300)
		ent.MoveSmokeEffect2:SetGravity(Vector(0,0,50))
		ent.Emitter:Finish()
		end
	end)
	--
	net.Receive("vj_mili_tank_t72_fire", function()
		local ent = net.ReadEntity()
		if ent:IsValid() then
		ent.Emitter = ParticleEmitter(ent:GetPos())
		ent.SmokeEffect2 = ent.Emitter:Add("particles/smokey",ent:GetPos() +ent:GetForward()*-230 +ent:GetRight()*0 +ent:GetUp()*66)
		ent.SmokeEffect2:SetVelocity( ent:GetForward() * math.Rand(0,-50) + Vector(0,-30,math.Rand(-10,-20)) + ent:GetVelocity() )
		ent.SmokeEffect2:SetDieTime(2)
		ent.SmokeEffect2:SetStartAlpha(30)
		ent.SmokeEffect2:SetEndAlpha(0)
		ent.SmokeEffect2:SetStartSize(3)
		ent.SmokeEffect2:SetEndSize(50)
		ent.SmokeEffect2:SetRoll(math.Rand(-0.2,0.2))
		ent.SmokeEffect2:SetColor(150,150,150,255)
		ent.Emitter:Finish()
		end
	end)
	--
	net.Receive("vj_mili_tank_t72_idle", function()
		local ent = net.ReadEntity()
		if ent:IsValid() then
		ent.Emitter = ParticleEmitter(ent:GetPos())
		ent.SmokeEffect1 = ent.Emitter:Add("particles/smokey",ent:GetPos() +ent:GetForward()*110 +ent:GetRight()*-20 +ent:GetUp()*55)
		ent.SmokeEffect1:SetVelocity(ent:GetUp() *math.Rand(0,50) +Vector(math.Rand(5,5),math.Rand(5,5),math.Rand(5,5)) +ent:GetVelocity())
		ent.SmokeEffect1:SetDieTime(0.6)
		ent.SmokeEffect1:SetStartAlpha(30)
		ent.SmokeEffect1:SetEndAlpha(0)
		ent.SmokeEffect1:SetStartSize(5)
		ent.SmokeEffect1:SetEndSize(60)
		ent.SmokeEffect1:SetRoll(math.Rand(-0.2,0.2))
		ent.SmokeEffect1:SetColor(150,150,150,255)
		
		ent.HeatEffect1 = ent.Emitter:Add("sprites/heatwave",ent:GetPos() +ent:GetForward()*110 +ent:GetRight()*-20 +ent:GetUp()*60)
		ent.SmokeEffect1:SetVelocity(ent:GetUp() *math.Rand(0,50) +Vector(math.Rand(5,5),math.Rand(5,5),math.Rand(5,5)) +ent:GetVelocity())
		ent.HeatEffect1:SetDieTime(0.1)
		ent.HeatEffect1:SetStartAlpha(255)
		ent.HeatEffect1:SetEndAlpha(255)
		ent.HeatEffect1:SetStartSize(5)
		ent.HeatEffect1:SetEndSize(20)
		ent.HeatEffect1:SetRoll(math.Rand(-50,50))
		ent.HeatEffect1:SetColor(255,255,255)
		ent.Emitter:Finish()
		
		ent.Emitter = ParticleEmitter(ent:GetPos())
		ent.SmokeEffect1 = ent.Emitter:Add("particles/smokey",ent:GetPos() +ent:GetForward()*110 +ent:GetRight()*20 +ent:GetUp()*55)
		ent.SmokeEffect1:SetVelocity(ent:GetUp() *math.Rand(0,50) +Vector(math.Rand(5,5),math.Rand(5,5),math.Rand(5,5)) +ent:GetVelocity())
		ent.SmokeEffect1:SetDieTime(0.6)
		ent.SmokeEffect1:SetStartAlpha(30)
		ent.SmokeEffect1:SetEndAlpha(0)
		ent.SmokeEffect1:SetStartSize(5)
		ent.SmokeEffect1:SetEndSize(60)
		ent.SmokeEffect1:SetRoll(math.Rand(-0.2,0.2))
		ent.SmokeEffect1:SetColor(150,150,150,255)
		
		ent.HeatEffect1 = ent.Emitter:Add("sprites/heatwave",ent:GetPos() +ent:GetForward()*110 +ent:GetRight()*20 +ent:GetUp()*60)
		ent.SmokeEffect1:SetVelocity(ent:GetUp() *math.Rand(0,50) +Vector(math.Rand(5,5),math.Rand(5,5),math.Rand(5,5)) +ent:GetVelocity())
		ent.HeatEffect1:SetDieTime(0.1)
		ent.HeatEffect1:SetStartAlpha(255)
		ent.HeatEffect1:SetEndAlpha(255)
		ent.HeatEffect1:SetStartSize(5)
		ent.HeatEffect1:SetEndSize(20)
		ent.HeatEffect1:SetRoll(math.Rand(-50,50))
		ent.HeatEffect1:SetColor(255,255,255)
		ent.Emitter:Finish()
		end
	end)
	--
	net.Receive("vj_mili_tank_t72_move", function()
		local ent = net.ReadEntity()
		if ent:IsValid() then
		ent.Emitter = ParticleEmitter(ent:GetPos())
		ent.MoveSmokeEffect1 = ent.Emitter:Add("particles/smokey",ent:GetPos() +ent:GetForward()*87 +ent:GetRight()*58 +ent:GetUp()*0)
		ent.MoveSmokeEffect1:SetVelocity( ent:GetForward() * math.Rand(100,200) + Vector(math.Rand(5,-5),math.Rand(5,-5),math.Rand(5,-5)) + ent:GetVelocity() )
		ent.MoveSmokeEffect1:SetDieTime(4)
		ent.MoveSmokeEffect1:SetStartAlpha(30)
		ent.MoveSmokeEffect1:SetEndAlpha(0)
		ent.MoveSmokeEffect1:SetStartSize(math.Rand(12,20))
		ent.MoveSmokeEffect1:SetEndSize(math.Rand(60,80))
		ent.MoveSmokeEffect1:SetRoll(math.Rand(-0.2,0.2))
		ent.MoveSmokeEffect1:SetColor(80,60,20)
		ent.MoveSmokeEffect1:SetAirResistance(300)
		ent.MoveSmokeEffect1:SetGravity(Vector(0,0,50))
		
		ent.MoveSmokeEffect2 = ent.Emitter:Add("particles/smokey",ent:GetPos() +ent:GetForward()*87 +ent:GetRight()*-58 +ent:GetUp()*0)
		ent.MoveSmokeEffect2:SetVelocity( ent:GetForward() * math.Rand(100,200) + Vector(math.Rand(5,-5),math.Rand(5,-5),math.Rand(5,-5)) + ent:GetVelocity() )
		ent.MoveSmokeEffect2:SetDieTime(4)
		ent.MoveSmokeEffect2:SetStartAlpha(30)
		ent.MoveSmokeEffect2:SetEndAlpha(0)
		ent.MoveSmokeEffect2:SetStartSize(math.Rand(12,20))
		ent.MoveSmokeEffect2:SetEndSize(math.Rand(60,80))
		ent.MoveSmokeEffect2:SetRoll(math.Rand(-0.2,0.2))
		ent.MoveSmokeEffect2:SetColor(80,60,20)
		ent.MoveSmokeEffect2:SetAirResistance(300)
		ent.MoveSmokeEffect2:SetGravity(Vector(0,0,50))
		ent.Emitter:Finish()
		end
	end)
	--
	net.Receive("vj_mili_tank_tiger_fire", function()
		local ent = net.ReadEntity()
		if ent:IsValid() then
		ent.Emitter = ParticleEmitter(ent:GetPos())
		ent.SmokeEffect2 = ent.Emitter:Add("particles/smokey",ent:GetPos() +ent:GetRight()*240 +ent:GetUp()*16)
		ent.SmokeEffect2:SetVelocity( ent:GetRight() * math.Rand(0,50) + Vector(0,30,math.Rand(10,20)) + ent:GetVelocity() )
		ent.SmokeEffect2:SetDieTime(2)
		ent.SmokeEffect2:SetStartAlpha(30)
		ent.SmokeEffect2:SetEndAlpha(0)
		ent.SmokeEffect2:SetStartSize(3)
		ent.SmokeEffect2:SetEndSize(50)
		ent.SmokeEffect2:SetRoll(math.Rand(-0.2,0.2))
		ent.SmokeEffect2:SetColor(150,150,150,255)
		ent.Emitter:Finish()
		end
	end)
	--
	net.Receive("vj_mili_tank_tiger_idle", function()
		local ent = net.ReadEntity()
		if ent:IsValid() then
		ent.Emitter = ParticleEmitter(ent:GetPos())
		ent.SmokeEffect1 = ent.Emitter:Add("particles/smokey",ent:GetPos() +ent:GetForward()*20 +ent:GetRight()*-195 +ent:GetUp()*100)
		ent.SmokeEffect1:SetVelocity( ent:GetRight() *-50 + ent:GetVelocity() )
		ent.SmokeEffect1:SetDieTime(0.6)
		ent.SmokeEffect1:SetStartAlpha(80)
		ent.SmokeEffect1:SetEndAlpha(0)
		ent.SmokeEffect1:SetStartSize(10)
		ent.SmokeEffect1:SetEndSize(40)
		ent.SmokeEffect1:SetRoll(math.Rand(-0.2,0.2))
		ent.SmokeEffect1:SetColor(150,150,150,255)
		ent.SmokeEffect1:SetAirResistance(100)
	
		ent.HeatEffect1 = ent.Emitter:Add("sprites/heatwave",ent:GetPos() +ent:GetForward()*20 +ent:GetRight()*-195 +ent:GetUp()*100)
		ent.HeatEffect1:SetVelocity( ent:GetForward() * math.Rand(0, 50) + Vector(math.Rand(5, -5),math.Rand(5, -5),math.Rand(5, -5)) + ent:GetVelocity() )
		ent.HeatEffect1:SetDieTime(0.1)
		ent.HeatEffect1:SetStartAlpha(255)
		ent.HeatEffect1:SetEndAlpha(255)
		ent.HeatEffect1:SetStartSize(10)
		ent.HeatEffect1:SetEndSize(5)
		ent.HeatEffect1:SetRoll(math.Rand(-50,50))
		ent.HeatEffect1:SetColor(255,255,255)
		//ent.HeatEffect1:Finish()
		ent.Emitter:Finish()
		
		ent.Emitter = ParticleEmitter(ent:GetPos())
		ent.SmokeEffect1 = ent.Emitter:Add("particles/smokey",ent:GetPos() +ent:GetForward()*-20 +ent:GetRight()*-195 +ent:GetUp()*100)
		ent.SmokeEffect1:SetVelocity( ent:GetRight() *-50 + ent:GetVelocity() )
		ent.SmokeEffect1:SetDieTime(0.6)
		ent.SmokeEffect1:SetStartAlpha(80)
		ent.SmokeEffect1:SetEndAlpha(0)
		ent.SmokeEffect1:SetStartSize(10)
		ent.SmokeEffect1:SetEndSize(40)
		ent.SmokeEffect1:SetRoll(math.Rand(-0.2,0.2))
		ent.SmokeEffect1:SetColor(150,150,150,255)
		ent.SmokeEffect1:SetAirResistance(100)
	
		ent.HeatEffect1 = ent.Emitter:Add("sprites/heatwave",ent:GetPos() +ent:GetForward()*-20 +ent:GetRight()*-195 +ent:GetUp()*100)
		ent.HeatEffect1:SetVelocity( ent:GetForward() * math.Rand(0, 50) + Vector(math.Rand(5, -5),math.Rand(5, -5),math.Rand(5, -5)) + ent:GetVelocity() )
		ent.HeatEffect1:SetDieTime(0.1)
		ent.HeatEffect1:SetStartAlpha(255)
		ent.HeatEffect1:SetEndAlpha(255)
		ent.HeatEffect1:SetStartSize(10)
		ent.HeatEffect1:SetEndSize(5)
		ent.HeatEffect1:SetRoll(math.Rand(-50,50))
		ent.HeatEffect1:SetColor(255,255,255)
		//ent.HeatEffect1:Finish()
		ent.Emitter:Finish()
		end
	end)
	--
	net.Receive("vj_mili_tank_tiger_move", function()
		local ent = net.ReadEntity()
		if ent:IsValid() then
		ent.Emitter = ParticleEmitter(ent:GetPos())
		ent.MoveSmokeEffect1 = ent.Emitter:Add("particles/smokey",ent:GetPos() +ent:GetForward()*-65 +ent:GetRight()*-130 +ent:GetUp()*0)
		ent.MoveSmokeEffect1:SetVelocity( ent:GetRight() * math.Rand(-100,-200) + Vector(math.Rand(5,-5),math.Rand(5,-5),math.Rand(5,-5)) + ent:GetVelocity() )
		ent.MoveSmokeEffect1:SetDieTime(4)
		ent.MoveSmokeEffect1:SetStartAlpha(30)
		ent.MoveSmokeEffect1:SetEndAlpha(0)
		ent.MoveSmokeEffect1:SetStartSize(math.Rand(12,20))
		ent.MoveSmokeEffect1:SetEndSize(math.Rand(60,80))
		ent.MoveSmokeEffect1:SetRoll(math.Rand(-0.2,0.2))
		ent.MoveSmokeEffect1:SetColor(80,60,20)
		ent.MoveSmokeEffect1:SetAirResistance(300)
		ent.MoveSmokeEffect1:SetGravity(Vector(0,0,50))
		
		ent.MoveSmokeEffect2 = ent.Emitter:Add("particles/smokey",ent:GetPos() +ent:GetForward()*65 +ent:GetRight()*-130 +ent:GetUp()*0)
		ent.MoveSmokeEffect2:SetVelocity( ent:GetRight() * math.Rand(-100,-200) + Vector(math.Rand(5,-5),math.Rand(5,-5),math.Rand(5,-5)) + ent:GetVelocity() )
		ent.MoveSmokeEffect2:SetDieTime(4)
		ent.MoveSmokeEffect2:SetStartAlpha(30)
		ent.MoveSmokeEffect2:SetEndAlpha(0)
		ent.MoveSmokeEffect2:SetStartSize(math.Rand(12,20))
		ent.MoveSmokeEffect2:SetEndSize(math.Rand(60,80))
		ent.MoveSmokeEffect2:SetRoll(math.Rand(-0.2,0.2))
		ent.MoveSmokeEffect2:SetColor(80,60,20)
		ent.MoveSmokeEffect2:SetAirResistance(300)
		ent.MoveSmokeEffect2:SetGravity(Vector(0,0,50))
		ent.Emitter:Finish()
		end
	end)

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
