AddCSLuaFile("shared.lua")
include("shared.lua")
/*-----------------------------------------------
	*** Copyright (c) 2012-2024 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/soviet/soviet_soldier1.mdl","models/soviet/soviet_soldier2.mdl","models/soviet/soviet_soldier3.mdl","models/soviet/soviet_soldier4.mdl","models/soviet/soviet_soldier5.mdl","models/soviet/soviet_soldier6.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want 
ENT.StartHealth = 60
ENT.HullType = HULL_HUMAN
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.VJ_NPC_Class = {"CLASS_RUSSIAN_FRIENDLY", "CLASS_PLAYER_ALLY"} -- NPCs with the same class with be allied to each other
ENT.BloodColor = "Red" -- The blood type, this will determine what it should use (decal, particle, etc.)
ENT.HasMeleeAttack = true -- Should the SNPC have a melee attack?
ENT.MeleeAttackDamage = 10
ENT.FootStepTimeRun = 0.4 -- Next foot step sound when it is running
ENT.FootStepTimeWalk = 0.5 -- Next foot step sound when it is walking
ENT.HasGrenadeAttack = true -- Should the SNPC have a grenade attack?
	-- ====== Flinching Code ====== --
ENT.CanFlinch = 1 -- 0 = Don't flinch | 1 = Flinch at any damage | 2 = Flinch only from certain damages
	-- ====== Sound File Paths ====== --
-- Leave blank if you don't want any sounds to play
ENT.SoundTbl_Idle = {"vj_military/russian/idle1.wav","vj_military/russian/idle2.wav","vj_military/russian/idle3.wav","vj_military/russian/idle4.wav","vj_military/russian/idle5.wav","vj_military/russian/idle6.wav","vj_military/russian/idle7.wav","vj_military/russian/idle8.wav","vj_military/russian/idle9.wav","vj_military/russian/idle10.wav","vj_military/russian/idle11.wav","vj_military/russian/idle12.wav"}
ENT.SoundTbl_Alert = {"vj_military/russian/alert1.wav","vj_military/russian/alert2.wav","vj_military/russian/alert3.wav","vj_military/russian/alert4.wav","vj_military/russian/alert5.wav","vj_military/russian/alert6.wav"}
ENT.SoundTbl_CombatIdle = {"vj_military/russian/attack1.wav","vj_military/russian/attack2.wav","vj_military/russian/attack3.wav","vj_military/russian/attack4.wav","vj_military/russian/attack5.wav","vj_military/russian/attack6.wav","vj_military/russian/attack7.wav","vj_military/russian/attack8.wav","vj_military/russian/attack9.wav","vj_military/russian/attack10.wav","vj_military/russian/attack11.wav","vj_military/russian/attack12.wav"}
ENT.SoundTbl_WeaponReload = {"vj_military/russian/reloading1.wav","vj_military/russian/reloading2.wav","vj_military/russian/reloading3.wav","vj_military/russian/reloading4.wav","vj_military/russian/reloading5.wav","vj_military/russian/reloading6.wav"}
ENT.SoundTbl_OnGrenadeSight = {"vj_military/russian/grenade1.wav","vj_military/russian/grenade2.wav","vj_military/russian/grenade3.wav","vj_military/russian/grenade4.wav","vj_military/russian/grenade5.wav","vj_military/russian/grenade6.wav"}
ENT.SoundTbl_Pain = {"vj_military/russian/pain1.wav","vj_military/russian/pain2.wav","vj_military/russian/pain3.wav","vj_military/russian/pain4.wav","vj_military/russian/pain5.wav","vj_military/russian/pain6.wav"}
ENT.SoundTbl_Death = {"vj_military/russian/die1.wav","vj_military/russian/die2.wav","vj_military/russian/die3.wav","vj_military/russian/die4.wav","vj_military/russian/die5.wav","vj_military/russian/die6.wav"}

ENT.IdleSoundLevel = 85
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	if math.random(1,5) == 1 then self.IsMedicSNPC = true end
end