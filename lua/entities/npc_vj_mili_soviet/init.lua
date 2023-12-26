AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2024 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/soviet/soviet_soldier1.mdl","models/soviet/soviet_soldier2.mdl","models/soviet/soviet_soldier3.mdl","models/soviet/soviet_soldier4.mdl","models/soviet/soviet_soldier5.mdl","models/soviet/soviet_soldier6.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want 
ENT.StartHealth = GetConVarNumber("vj_mili_soviet_h")
ENT.HullType = HULL_HUMAN
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.VJ_NPC_Class = {"CLASS_RUSSIAN"} -- NPCs with the same class with be allied to each other
ENT.BloodColor = "Red" -- The blood type, this will determine what it should use (decal, particle, etc.)
ENT.HasMeleeAttack = true -- Should the SNPC have a melee attack?
ENT.MeleeAttackDamage = GetConVarNumber("vj_mili_soviet_d")
ENT.FootStepTimeRun = 0.4 -- Next foot step sound when it is running
ENT.FootStepTimeWalk = 0.5 -- Next foot step sound when it is walking
ENT.HasGrenadeAttack = true -- Should the SNPC have a grenade attack?
	-- ====== Flinching Code ====== --
ENT.CanFlinch = 1 -- 0 = Don't flinch | 1 = Flinch at any damage | 2 = Flinch only from certain damages
ENT.AnimTbl_Flinch = {ACT_FLINCH_PHYSICS} -- If it uses normal based animation, use this
	-- ====== Sound File Paths ====== --
-- Leave blank if you don't want any sounds to play
ENT.SoundTbl_Idle = {"mili_russian/idle1.wav","mili_russian/idle2.wav","mili_russian/idle3.wav","mili_russian/idle4.wav","mili_russian/idle5.wav","mili_russian/idle6.wav","mili_russian/idle7.wav","mili_russian/idle8.wav","mili_russian/idle9.wav","mili_russian/idle10.wav","mili_russian/idle11.wav","mili_russian/idle12.wav"}
ENT.SoundTbl_MedicBeforeHeal = {"mili_russian/medic1.wav","mili_russian/medic2.wav","mili_russian/medic3.wav","mili_russian/medic4.wav","mili_russian/medic5.wav","mili_russian/medic6.wav","mili_russian/medic7.wav","mili_russian/medic8.wav","mili_russian/medic9.wav",}
ENT.SoundTbl_Alert = {"mili_russian/alert1.wav","mili_russian/alert2.wav","mili_russian/alert3.wav","mili_russian/alert4.wav","mili_russian/alert5.wav","mili_russian/alert6.wav"}
ENT.SoundTbl_CombatIdle = {"mili_russian/attack1.wav","mili_russian/attack2.wav","mili_russian/attack3.wav","mili_russian/attack4.wav","mili_russian/attack5.wav","mili_russian/attack6.wav","mili_russian/attack7.wav","mili_russian/attack8.wav","mili_russian/attack9.wav","mili_russian/attack10.wav","mili_russian/attack11.wav","mili_russian/attack12.wav"}
ENT.SoundTbl_WeaponReload = {"mili_russian/reloading1.wav","mili_russian/reloading2.wav","mili_russian/reloading3.wav","mili_russian/reloading4.wav","mili_russian/reloading5.wav","mili_russian/reloading6.wav"}
ENT.SoundTbl_GrenadeAttack = {"mili_russian/throwgrenade1.wav","mili_russian/throwgrenade2.wav","mili_russian/throwgrenade3.wav","mili_russian/throwgrenade4.wav","mili_russian/throwgrenade5.wav","mili_russian/throwgrenade6.wav","mili_russian/throwgrenade7.wav","mili_russian/throwgrenade8.wav","mili_russian/throwgrenade9.wav"}
ENT.SoundTbl_OnGrenadeSight = {"mili_russian/grenade1.wav","mili_russian/grenade2.wav","mili_russian/grenade3.wav","mili_russian/grenade4.wav","mili_russian/grenade5.wav","mili_russian/grenade6.wav"}
ENT.SoundTbl_Pain = {"mili_russian/pain1.wav","mili_russian/pain2.wav","mili_russian/pain3.wav","mili_russian/pain4.wav","mili_russian/pain5.wav","mili_russian/pain6.wav"}
ENT.SoundTbl_Death = {"mili_russian/die1.wav","mili_russian/die2.wav","mili_russian/die3.wav","mili_russian/die4.wav","mili_russian/die5.wav","mili_russian/die6.wav"}

ENT.IdleSoundLevel = 85
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	if math.random(1,5) == 1 then self.IsMedicSNPC = true end
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2024 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/