AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2023 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/VJ_SS/soldier_1.mdl","models/VJ_SS/soldier_2.mdl","models/VJ_SS/soldier_3.mdl","models/VJ_SS/soldier_g1.mdl","models/VJ_SS/soldier_g2.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want 
ENT.StartHealth = 90
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
ENT.DeathCorpseEntityClass = "prop_ragdoll" -- The entity class it creates | "UseDefaultBehavior" = Let the base automatically detect the type
	-- ====== Flinching Code ====== --
ENT.CanFlinch = 1 -- 0 = Don't flinch | 1 = Flinch at any damage | 2 = Flinch only from certain damages
ENT.AnimTbl_Flinch = {ACT_FLINCH_PHYSICS} -- If it uses normal based animation, use this
	-- ====== Sound File Paths ====== --
-- Leave blank if you don't want any sounds to play
ENT.SoundTbl_Idle = {"vj_mili_german/objectiveclear1.wav","vj_mili_german/objectiveclear2.wav","vj_mili_german/objectiveclear3.wav","vj_mili_german/objectiveclear4.wav","vj_mili_german/objectiveclear5.wav","vj_mili_german/spreadout1.wav","vj_mili_german/spreadout2.wav","vj_mili_german/sticktogether1.wav","vj_mili_german/sticktogether2.wav","vj_mili_german/statusreport1.wav","vj_mili_german/statusreport2.wav","vj_mili_german/raid_decoy1.wav","vj_mili_german/raid_decoy2.wav","vj_mili_german/raid_decoy3.wav","vj_mili_german/raid_decoy4.wav","vj_mili_german/raid_decoy5.wav"}
ENT.SoundTbl_CombatIdle = {"vj_mili_german/ontheway1.wav","vj_mili_german/ontheway2.wav","vj_mili_german/ontheway3.wav","vj_mili_german/ontheway4.wav","vj_mili_german/go1.wav","vj_mili_german/go2.wav","vj_mili_german/go3.wav","vj_mili_german/go4.wav","vj_mili_german/moving1.wav","vj_mili_german/moving2.wav","vj_mili_german/moving3.wav","vj_mili_german/moving4.wav","vj_mili_german/moving5.wav"}
ENT.SoundTbl_OnReceiveOrder = {"vj_mili_german/affirmative1.wav","vj_mili_german/affirmative2.wav","vj_mili_german/affirmative3.wav","vj_mili_german/affirmative4.wav"}
ENT.SoundTbl_MedicReceiveHeal = {"vj_mili_german/receiveammo1.wav","vj_mili_german/receiveammo2.wav","vj_mili_german/receiveammo3.wav","vj_mili_german/receiveammo4.wav"}
ENT.SoundTbl_Alert = {"vj_mili_german/alert1.wav","vj_mili_german/alert2.wav","vj_mili_german/alert3.wav","vj_mili_german/alert4.wav","vj_mili_german/alert5.wav"}
ENT.SoundTbl_CallForHelp = {"vj_mili_german/needbackup1.wav","vj_mili_german/needbackup2.wav","vj_mili_german/needbackup3.wav","vj_mili_german/needbackup4.wav","vj_mili_german/requestreinforcements1.wav","vj_mili_german/requestreinforcements2.wav","vj_mili_german/requestreinforcements3.wav","vj_mili_german/requestreinforcements4.wav"}
ENT.SoundTbl_Suppressing = {"vj_mili_german/covering1.wav","vj_mili_german/covering2.wav","vj_mili_german/covering3.wav","vj_mili_german/covering4.wav","vj_mili_german/covering5.wav","vj_mili_german/engaging1.wav","vj_mili_german/engaging2.wav","vj_mili_german/engaging3.wav","vj_mili_german/engaging4.wav","vj_mili_german/engaging5.wav"}
ENT.SoundTbl_WeaponReload = {"vj_mili_german/reloading1.wav","vj_mili_german/reloading2.wav","vj_mili_german/reloading3.wav","vj_mili_german/reloading4.wav","vj_mili_german/reloading5.wav","vj_mili_german/reloading6.wav","vj_mili_german/reloading7.wav","vj_mili_german/reloading8.wav","vj_mili_german/reloading9.wav"}
ENT.SoundTbl_GrenadeAttack = {"vj_mili_german/fraggrenadeout1.wav","vj_mili_german/fraggrenadeout2.wav","vj_mili_german/fraggrenadeout3.wav","vj_mili_german/fraggrenadeout4.wav"}
ENT.SoundTbl_OnGrenadeSight = {"vj_mili_german/grenadespotted1.wav","vj_mili_german/grenadespotted2.wav","vj_mili_german/grenadespotted3.wav","vj_mili_german/grenadespotted4.wav","vj_mili_german/grenadespotted5.wav","vj_mili_german/artilleryexplodingnearme1.wav","vj_mili_german/artilleryexplodingnearme2.wav","vj_mili_german/artilleryexplodingnearme3.wav"}
ENT.SoundTbl_OnKilledEnemy = {"vj_mili_german/enemydown1.wav","vj_mili_german/enemydown2.wav","vj_mili_german/enemydown3.wav","vj_mili_german/enemydown4.wav"}
ENT.SoundTbl_Pain = {"vj_mili_german/wounded1.wav","vj_mili_german/wounded2.wav","vj_mili_german/wounded3.wav","vj_mili_german/wounded4.wav","vj_mili_german/wounded5.wav","vj_mili_german/wounded6.wav","vj_mili_german/wounded7.wav","vj_mili_german/wounded8.wav","vj_mili_german/wounded9.wav"}
ENT.SoundTbl_DamageByPlayer = {"vj_mili_german/friendlyfire1.wav","vj_mili_german/friendlyfire2.wav","vj_mili_german/friendlyfire3.wav","vj_mili_german/friendlyfire4.wav"}
ENT.SoundTbl_Death = {"vj_mili_german/death_distant1.wav","vj_mili_german/death_distant2.wav","vj_mili_german/death_distant3.wav","vj_mili_german/death_distant4.wav","vj_mili_german/death_distant5.wav","vj_mili_german/death_distant6.wav","vj_mili_german/death_distant7.wav","vj_mili_german/death_distant8.wav","vj_mili_german/death_distant9.wav"}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	if math.random(1,5) == 1 then self.IsMedicSNPC = true end
end