AddCSLuaFile("shared.lua")
include("shared.lua")
/*-----------------------------------------------
	*** Copyright (c) 2012-2023 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/vj_german/panzergrenadier/panzergrenadier1.mdl","models/vj_german/panzergrenadier/panzergrenadier2.mdl","models/vj_german/panzergrenadier/panzergrenadier3.mdl","models/vj_german/panzergrenadier/panzergrenadier4.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want 
ENT.StartHealth = 75
ENT.HullType = HULL_HUMAN
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.VJ_NPC_Class = {"CLASS_GERMAN_FRIENDLY"} -- NPCs with the same class with be allied to each other
ENT.BloodColor = "Red" -- The blood type, this will determine what it should use (decal, particle, etc.)
ENT.HasMeleeAttack = true -- Should the SNPC have a melee attack?
ENT.MeleeAttackDamage = 20
ENT.FootStepTimeRun = 0.4 -- Next foot step sound when it is running
ENT.FootStepTimeWalk = 0.5 -- Next foot step sound when it is walking
ENT.PlayerFriendly = true -- Makes the SNPC friendly to the player and HL2 Resistance
ENT.HasGrenadeAttack = true -- Should the SNPC have a grenade attack?
ENT.FollowPlayer = true -- Should the SNPC follow the player when the player presses a certain key?
	-- ====== Flinching Code ====== --
ENT.CanFlinch = 1 -- 0 = Don't flinch | 1 = Flinch at any damage | 2 = Flinch only from certain damages
ENT.AnimTbl_Flinch = {ACT_FLINCH_PHYSICS} -- If it uses normal based animation, use this
	-- ====== Sound File Paths ====== --
-- Leave blank if you don't want any sounds to play
ENT.SoundTbl_Idle = {"vj_military/german/objectiveclear1.wav","vj_military/german/objectiveclear2.wav","vj_military/german/objectiveclear3.wav","vj_military/german/objectiveclear4.wav","vj_military/german/objectiveclear5.wav","vj_military/german/spreadout1.wav","vj_military/german/spreadout2.wav","vj_military/german/sticktogether1.wav","vj_military/german/sticktogether2.wav","vj_military/german/statusreport1.wav","vj_military/german/statusreport2.wav","vj_military/german/raid_decoy1.wav","vj_military/german/raid_decoy2.wav","vj_military/german/raid_decoy3.wav","vj_military/german/raid_decoy4.wav","vj_military/german/raid_decoy5.wav"}
ENT.SoundTbl_CombatIdle = {"vj_military/german/ontheway1.wav","vj_military/german/ontheway2.wav","vj_military/german/ontheway3.wav","vj_military/german/ontheway4.wav","vj_military/german/go1.wav","vj_military/german/go2.wav","vj_military/german/go3.wav","vj_military/german/go4.wav","vj_military/german/moving1.wav","vj_military/german/moving2.wav","vj_military/german/moving3.wav","vj_military/german/moving4.wav","vj_military/german/moving5.wav"}
ENT.SoundTbl_OnReceiveOrder = {"vj_military/german/affirmative1.wav","vj_military/german/affirmative2.wav","vj_military/german/affirmative3.wav","vj_military/german/affirmative4.wav"}
ENT.SoundTbl_MedicReceiveHeal = {"vj_military/german/receiveammo1.wav","vj_military/german/receiveammo2.wav","vj_military/german/receiveammo3.wav","vj_military/german/receiveammo4.wav"}
ENT.SoundTbl_Alert = {"vj_military/german/alert1.wav","vj_military/german/alert2.wav","vj_military/german/alert3.wav","vj_military/german/alert4.wav","vj_military/german/alert5.wav"}
ENT.SoundTbl_CallForHelp = {"vj_military/german/needbackup1.wav","vj_military/german/needbackup2.wav","vj_military/german/needbackup3.wav","vj_military/german/needbackup4.wav","vj_military/german/requestreinforcements1.wav","vj_military/german/requestreinforcements2.wav","vj_military/german/requestreinforcements3.wav","vj_military/german/requestreinforcements4.wav"}
ENT.SoundTbl_Suppressing = {"vj_military/german/covering1.wav","vj_military/german/covering2.wav","vj_military/german/covering3.wav","vj_military/german/covering4.wav","vj_military/german/covering5.wav","vj_military/german/engaging1.wav","vj_military/german/engaging2.wav","vj_military/german/engaging3.wav","vj_military/german/engaging4.wav","vj_military/german/engaging5.wav"}
ENT.SoundTbl_WeaponReload = {"vj_military/german/reloading1.wav","vj_military/german/reloading2.wav","vj_military/german/reloading3.wav","vj_military/german/reloading4.wav","vj_military/german/reloading5.wav","vj_military/german/reloading6.wav","vj_military/german/reloading7.wav","vj_military/german/reloading8.wav","vj_military/german/reloading9.wav"}
ENT.SoundTbl_GrenadeAttack = {"vj_military/german/fraggrenadeout1.wav","vj_military/german/fraggrenadeout2.wav","vj_military/german/fraggrenadeout3.wav","vj_military/german/fraggrenadeout4.wav"}
ENT.SoundTbl_OnGrenadeSight = {"vj_military/german/grenadespotted1.wav","vj_military/german/grenadespotted2.wav","vj_military/german/grenadespotted3.wav","vj_military/german/grenadespotted4.wav","vj_military/german/grenadespotted5.wav","vj_military/german/artilleryexplodingnearme1.wav","vj_military/german/artilleryexplodingnearme2.wav","vj_military/german/artilleryexplodingnearme3.wav"}
ENT.SoundTbl_OnKilledEnemy = {"vj_military/german/enemydown1.wav","vj_military/german/enemydown2.wav","vj_military/german/enemydown3.wav","vj_military/german/enemydown4.wav"}
ENT.SoundTbl_Pain = {"vj_military/german/wounded1.wav","vj_military/german/wounded2.wav","vj_military/german/wounded3.wav","vj_military/german/wounded4.wav","vj_military/german/wounded5.wav","vj_military/german/wounded6.wav","vj_military/german/wounded7.wav","vj_military/german/wounded8.wav","vj_military/german/wounded9.wav"}
ENT.SoundTbl_DamageByPlayer = {"vj_military/german/friendlyfire1.wav","vj_military/german/friendlyfire2.wav","vj_military/german/friendlyfire3.wav","vj_military/german/friendlyfire4.wav"}
ENT.SoundTbl_Death = {"vj_military/german/death_distant1.wav","vj_military/german/death_distant2.wav","vj_military/german/death_distant3.wav","vj_military/german/death_distant4.wav","vj_military/german/death_distant5.wav","vj_military/german/death_distant6.wav","vj_military/german/death_distant7.wav","vj_military/german/death_distant8.wav","vj_military/german/death_distant9.wav"}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	if math.random(1,5) == 1 then self.IsMedicSNPC = true end
end