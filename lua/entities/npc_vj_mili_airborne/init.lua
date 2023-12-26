AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2024 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/VJ_UNITEDSTATES/airbrone1.mdl","models/VJ_UNITEDSTATES/airbrone2.mdl","models/VJ_UNITEDSTATES/airbrone3.mdl","models/VJ_UNITEDSTATES/airbrone4.mdl","models/VJ_UNITEDSTATES/airbrone5.mdl","models/VJ_UNITEDSTATES/airbrone6.mdl","models/VJ_UNITEDSTATES/airbrone7.mdl","models/VJ_UNITEDSTATES/airbrone8.mdl","models/VJ_UNITEDSTATES/airbrone9.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.StartHealth = GetConVarNumber("vj_mili_airborne_h")
ENT.HullType = HULL_HUMAN
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.VJ_NPC_Class = {"CLASS_UNITED_STATES"} -- NPCs with the same class with be allied to each other
ENT.BloodColor = "Red" -- The blood type, this will determine what it should use (decal, particle, etc.)
ENT.HasMeleeAttack = true -- Should the SNPC have a melee attack?
ENT.MeleeAttackDamage = GetConVarNumber("vj_mili_airborne_d")
ENT.FootStepTimeRun = 0.4 -- Next foot step sound when it is running
ENT.FootStepTimeWalk = 0.5 -- Next foot step sound when it is walking
ENT.HasGrenadeAttack = true -- Should the SNPC have a grenade attack?
ENT.DamageByPlayerDispositionLevel = 1 -- 0 = Run it every time | 1 = Run it only when friendly to player | 2 = Run it only when enemy to player
	-- ====== Flinching Code ====== --
ENT.CanFlinch = 1 -- 0 = Don't flinch | 1 = Flinch at any damage | 2 = Flinch only from certain damages
ENT.AnimTbl_Flinch = {ACT_FLINCH_PHYSICS} -- If it uses normal based animation, use this
	-- ====== Sound File Paths ====== --
-- Leave blank if you don't want any sounds to play
ENT.SoundTbl_Idle = {"mili_us1/idle1.wav","mili_us1/idle2.wav","mili_us1/idle3.wav","mili_us1/idle4.wav","mili_us1/idle5.wav","mili_us1/idle6.wav","mili_us1/idle7.wav","mili_us1/idle8.wav","mili_us1/idle9.wav","mili_us1/idle10.wav","mili_us1/idle11.wav","mili_us1/idle12.wav"}
ENT.SoundTbl_OnReceiveOrder = {"mili_us1/yes1.wav","mili_us1/yes2.wav","mili_us1/yes3.wav","mili_us1/yes4.wav","mili_us1/yes5.wav","mili_us1/yes6.wav","mili_us1/yes7.wav","mili_us1/yes8.wav"}
ENT.SoundTbl_MedicBeforeHeal = {"mili_us1/medic1.wav","mili_us1/medic2.wav","mili_us1/medic3.wav","mili_us1/medic4.wav","mili_us1/medic5.wav","mili_us1/medic6.wav","mili_us1/medic7.wav"}
ENT.SoundTbl_Alert = {"mili_us1/alert1.wav","mili_us1/alert2.wav","mili_us1/alert3.wav","mili_us1/alert4.wav","mili_us1/alert5.wav","mili_us1/alert6.wav"}
ENT.SoundTbl_CallForHelp = {"mili_us1/help1.wav","mili_us1/help2.wav","mili_us1/help3.wav","mili_us1/help4.wav","mili_us1/help5.wav","mili_us1/help6.wav","mili_us1/help7.wav","mili_us1/help8.wav"}
ENT.SoundTbl_CombatIdle = {"mili_us1/attack1.wav","mili_us1/attack2.wav","mili_us1/attack3.wav","mili_us1/attack4.wav","mili_us1/attack5.wav","mili_us1/attack6.wav","mili_us1/attack7.wav","mili_us1/attack8.wav","mili_us1/attack9.wav"}
ENT.SoundTbl_Suppressing = {"mili_us1/suppressing1.wav","mili_us1/suppressing2.wav","mili_us1/suppressing3.wav","mili_us1/suppressing4.wav","mili_us1/suppressing5.wav","mili_us1/suppressing6.wav","mili_us1/suppressing7.wav","mili_us1/suppressing8.wav","mili_us1/suppressing9.wav","mili_us1/suppressing10.wav","mili_us1/suppressing11.wav","mili_us1/suppressing12.wav"}
ENT.SoundTbl_WeaponReload = {"mili_us1/reloading1.wav","mili_us1/reloading2.wav","mili_us1/reloading3.wav","mili_us1/reloading4.wav","mili_us1/reloading5.wav","mili_us1/reloading6.wav"}
ENT.SoundTbl_GrenadeAttack = {"mili_us1/throwgrenade1.wav","mili_us1/throwgrenade2.wav","mili_us1/throwgrenade3.wav","mili_us1/throwgrenade4.wav","mili_us1/throwgrenade5.wav","mili_us1/throwgrenade6.wav","mili_us1/throwgrenade7.wav","mili_us1/throwgrenade8.wav","mili_us1/throwgrenade9.wav"}
ENT.SoundTbl_OnGrenadeSight = {"mili_us1/grenade1.wav","mili_us1/grenade2.wav","mili_us1/grenade3.wav","mili_us1/grenade4.wav","mili_us1/grenade5.wav","mili_us1/grenade6.wav"}
ENT.SoundTbl_Pain = {"mili_us1/pain1.wav","mili_us1/pain2.wav","mili_us1/pain3.wav","mili_us1/pain4.wav","mili_us1/pain5.wav","mili_us1/pain6.wav"}
ENT.SoundTbl_DamageByPlayer = {"mili_us1/friendlyfire1.wav","mili_us1/friendlyfire2.wav","mili_us1/friendlyfire3.wav","mili_us1/friendlyfire4.wav","mili_us1/friendlyfire5.wav","mili_us1/friendlyfire6.wav"}
ENT.SoundTbl_Death = {"mili_us1/death1.wav","mili_us1/death2.wav","mili_us1/death3.wav","mili_us1/death4.wav","mili_us1/death5.wav","mili_us1/death6.wav"}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	self:SetBodygroup(1,math.random(0,2))
	if math.random(1,5) == 1 then self.IsMedicSNPC = true end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnDeath_AfterCorpseSpawned(dmginfo,hitgroup)
	if dmginfo:GetDamageType() == DMG_BLAST or hitgroup == HITGROUP_HEAD then
		self.Corpse:SetBodygroup(2,1)
		self:CreateExtraDeathCorpse("prop_physics","models/VJ_UNITEDSTATES/helmet.mdl",{Pos=self:GetAttachment(self:LookupAttachment("anim_attachment_head")).Pos + self:GetUp()*10})
	end
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2024 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/