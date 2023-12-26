AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2024 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/VJ_Terrorist/2hemagh.mdl","models/VJ_Terrorist/2kimasked.mdl","models/VJ_Terrorist/3hemagh.mdl","models/VJ_Terrorist/shemagh.mdl","models/VJ_Terrorist/shemagh_helmet.mdl","models/VJ_Terrorist/skimasked.mdl","models/VJ_Terrorist/unmasked1.mdl","models/VJ_Terrorist/unmasked2.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want 
ENT.StartHealth = GetConVarNumber("vj_mili_terrorist_h")
ENT.HullType = HULL_HUMAN
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.VJ_NPC_Class = {"CLASS_TERRORIST"} -- NPCs with the same class with be allied to each other
ENT.BloodColor = "Red" -- The blood type, this will determine what it should use (decal, particle, etc.)
ENT.HasMeleeAttack = true -- Should the SNPC have a melee attack?
ENT.MeleeAttackDamage = GetConVarNumber("vj_mili_terrorist_d")
ENT.FootStepTimeRun = 0.4 -- Next foot step sound when it is running
ENT.FootStepTimeWalk = 0.5 -- Next foot step sound when it is walking
ENT.HasGrenadeAttack = true -- Should the SNPC have a grenade attack?
	-- ====== Flinching Code ====== --
ENT.CanFlinch = 1 -- 0 = Don't flinch | 1 = Flinch at any damage | 2 = Flinch only from certain damages
ENT.AnimTbl_Flinch = {ACT_FLINCH_PHYSICS} -- If it uses normal based animation, use this
	-- ====== Sound File Paths ====== --
-- Leave blank if you don't want any sounds to play
ENT.SoundTbl_Idle = {"mili_terrorist/idle1.wav","mili_terrorist/idle2.wav","mili_terrorist/idle3.wav","mili_terrorist/idle4.wav","mili_terrorist/idle5.wav","mili_terrorist/idle6.wav","mili_terrorist/idle7.wav","mili_terrorist/idle8.wav","mili_terrorist/idle9.wav","mili_terrorist/idle10.wav","mili_terrorist/idle11.wav","mili_terrorist/idle12.wav"}
ENT.SoundTbl_Alert = {"mili_terrorist/alert1.wav","mili_terrorist/alert1.wav","mili_terrorist/attack1.wav","mili_terrorist/attack2.wav","mili_terrorist/attack3.wav","mili_terrorist/attack4.wav","mili_terrorist/attack7.wav"}
ENT.SoundTbl_CombatIdle = {"mili_terrorist/attack1.wav","mili_terrorist/attack2.wav","mili_terrorist/attack3.wav","mili_terrorist/attack4.wav","mili_terrorist/attack5.wav","mili_terrorist/attack6.wav","mili_terrorist/attack7.wav","mili_terrorist/allahackbar1.wav","mili_terrorist/allahackbar2.wav","mili_terrorist/allahackbar3.wav","mili_terrorist/allahackbar1.wav","mili_terrorist/allahackbar2.wav","mili_terrorist/allahackbar3.wav"}
ENT.SoundTbl_OnGrenadeSight = {"mili_terrorist/scared1.wav","mili_terrorist/scared2.wav","mili_terrorist/scared3.wav","mili_terrorist/scared4.wav"}
ENT.SoundTbl_Pain = {"mili_terrorist/pain1.wav","mili_terrorist/pain2.wav","mili_terrorist/pain3.wav","mili_terrorist/pain4.wav","mili_terrorist/pain5.wav","mili_terrorist/pain6.wav"}
ENT.SoundTbl_Death = {"mili_terrorist/death1.wav","mili_terrorist/death2.wav","mili_terrorist/death3.wav","mili_terrorist/death4.wav","mili_terrorist/death5.wav","mili_terrorist/death6.wav","mili_terrorist/death7.wav"}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	if math.random(1,5) == 1 then self.IsMedicSNPC = true end
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2024 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/