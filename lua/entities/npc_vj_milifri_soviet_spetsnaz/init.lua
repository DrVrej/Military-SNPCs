AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2024 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/VJ_WIC_SOVIET/soviet_01.mdl","models/VJ_WIC_SOVIET/soviet_02.mdl","models/VJ_WIC_SOVIET/soviet_03.mdl","models/VJ_WIC_SOVIET/soviet_04.mdl","models/VJ_WIC_SOVIET/soviet_05.mdl","models/VJ_WIC_SOVIET/soviet_06.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want 
ENT.StartHealth = GetConVarNumber("vj_milifri_soviet_spetsnaz_h")
ENT.HullType = HULL_HUMAN
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.VJ_NPC_Class = {"CLASS_RUSSIAN_FRIENDLY"} -- NPCs with the same class with be allied to each other
ENT.BloodColor = "Red" -- The blood type, this will determine what it should use (decal, particle, etc.)
ENT.HasMeleeAttack = true -- Should the SNPC have a melee attack?
ENT.MeleeAttackDamage = GetConVarNumber("vj_milifri_soviet_spetsnaz_d")
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
ENT.SoundTbl_Idle = {"mili_russian/idle1.wav","mili_russian/idle2.wav","mili_russian/idle3.wav","mili_russian/idle4.wav","mili_russian/idle5.wav","mili_russian/idle6.wav","mili_russian/idle7.wav","mili_russian/idle8.wav","mili_russian/idle9.wav","mili_russian/idle10.wav","mili_russian/idle11.wav","mili_russian/idle12.wav"}
ENT.SoundTbl_Alert = {"mili_russian/alert1.wav","mili_russian/alert2.wav","mili_russian/alert3.wav","mili_russian/alert4.wav","mili_russian/alert5.wav","mili_russian/alert6.wav"}
ENT.SoundTbl_CombatIdle = {"mili_russian/attack1.wav","mili_russian/attack2.wav","mili_russian/attack3.wav","mili_russian/attack4.wav","mili_russian/attack5.wav","mili_russian/attack6.wav","mili_russian/attack7.wav","mili_russian/attack8.wav","mili_russian/attack9.wav","mili_russian/attack10.wav","mili_russian/attack11.wav","mili_russian/attack12.wav"}
ENT.SoundTbl_WeaponReload = {"mili_russian/reloading1.wav","mili_russian/reloading2.wav","mili_russian/reloading3.wav","mili_russian/reloading4.wav","mili_russian/reloading5.wav","mili_russian/reloading6.wav"}
ENT.SoundTbl_OnGrenadeSight = {"mili_russian/grenade1.wav","mili_russian/grenade2.wav","mili_russian/grenade3.wav","mili_russian/grenade4.wav","mili_russian/grenade5.wav","mili_russian/grenade6.wav"}
ENT.SoundTbl_Pain = {"mili_russian/pain1.wav","mili_russian/pain2.wav","mili_russian/pain3.wav","mili_russian/pain4.wav","mili_russian/pain5.wav","mili_russian/pain6.wav"}
ENT.SoundTbl_Death = {"mili_russian/die1.wav","mili_russian/die2.wav","mili_russian/die3.wav","mili_russian/die4.wav","mili_russian/die5.wav","mili_russian/die6.wav"}

ENT.IdleSoundLevel = 85
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	if math.random(1,5) == 1 then self.IsMedicSNPC = true end
	self:SetSkin(math.random(0,2))
	self:SetBodygroup(1,math.random(0,2))
	self:SetBodygroup(2,math.random(0,2))
	if math.random(1,4) == 1 then self:SetBodygroup(2,math.random(3,5)) end
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2024 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/