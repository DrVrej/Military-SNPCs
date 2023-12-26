AddCSLuaFile("shared.lua")
include("shared.lua")
/*-----------------------------------------------
	*** Copyright (c) 2012-2024 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/VJ_UNITEDSTATES/ranger1.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want 
ENT.StartHealth = 80
ENT.HullType = HULL_HUMAN
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.VJ_NPC_Class = {"CLASS_UNITED_STATES_FRIENDLY"} -- NPCs with the same class with be allied to each other
ENT.BloodColor = "Red" -- The blood type, this will determine what it should use (decal, particle, etc.)
ENT.PlayerFriendly = true -- Makes the SNPC friendly to the player and HL2 Resistance
ENT.FriendsWithAllPlayerAllies = true -- Should this SNPC be friends with all other player allies that are running on VJ Base?
ENT.HasMeleeAttack = true -- Should the SNPC have a melee attack?
ENT.MeleeAttackDamage = 15
ENT.FootStepTimeRun = 0.4 -- Next foot step sound when it is running
ENT.FootStepTimeWalk = 0.5 -- Next foot step sound when it is walking
ENT.HasGrenadeAttack = true -- Should the SNPC have a grenade attack?
ENT.FollowPlayer = true -- Should the SNPC follow the player when the player presses a certain key?
ENT.DamageByPlayerDispositionLevel = 1 -- 0 = Run it every time | 1 = Run it only when friendly to player | 2 = Run it only when enemy to player
	-- ====== Flinching Code ====== --
ENT.CanFlinch = 1 -- 0 = Don't flinch | 1 = Flinch at any damage | 2 = Flinch only from certain damages
ENT.AnimTbl_Flinch = {ACT_FLINCH_PHYSICS} -- If it uses normal based animation, use this
	-- ====== Sound File Paths ====== --
-- Leave blank if you don't want any sounds to play
ENT.SoundTbl_Idle = {"vj_military/english_american/idle1.wav","vj_military/english_american/idle2.wav","vj_military/english_american/idle3.wav","vj_military/english_american/idle4.wav","vj_military/english_american/idle5.wav","vj_military/english_american/idle6.wav","vj_military/english_american/idle7.wav","vj_military/english_american/idle8.wav","vj_military/english_american/idle9.wav","vj_military/english_american/idle10.wav","vj_military/english_american/idle11.wav","vj_military/english_american/idle12.wav"}
ENT.SoundTbl_OnReceiveOrder = {"vj_military/english_american/yes1.wav","vj_military/english_american/yes2.wav","vj_military/english_american/yes3.wav","vj_military/english_american/yes4.wav","vj_military/english_american/yes5.wav","vj_military/english_american/yes6.wav","vj_military/english_american/yes7.wav","vj_military/english_american/yes8.wav"}
ENT.SoundTbl_MedicBeforeHeal = {"vj_military/english_american/medic1.wav","vj_military/english_american/medic2.wav","vj_military/english_american/medic3.wav","vj_military/english_american/medic4.wav","vj_military/english_american/medic5.wav","vj_military/english_american/medic6.wav","vj_military/english_american/medic7.wav"}
ENT.SoundTbl_Alert = {"vj_military/english_american/alert1.wav","vj_military/english_american/alert2.wav","vj_military/english_american/alert3.wav","vj_military/english_american/alert4.wav","vj_military/english_american/alert5.wav","vj_military/english_american/alert6.wav"}
ENT.SoundTbl_CallForHelp = {"vj_military/english_american/help1.wav","vj_military/english_american/help2.wav","vj_military/english_american/help3.wav","vj_military/english_american/help4.wav","vj_military/english_american/help5.wav","vj_military/english_american/help6.wav","vj_military/english_american/help7.wav","vj_military/english_american/help8.wav"}
ENT.SoundTbl_CombatIdle = {"vj_military/english_american/attack1.wav","vj_military/english_american/attack2.wav","vj_military/english_american/attack3.wav","vj_military/english_american/attack4.wav","vj_military/english_american/attack5.wav","vj_military/english_american/attack6.wav","vj_military/english_american/attack7.wav","vj_military/english_american/attack8.wav","vj_military/english_american/attack9.wav"}
ENT.SoundTbl_Suppressing = {"vj_military/english_american/suppressing1.wav","vj_military/english_american/suppressing2.wav","vj_military/english_american/suppressing3.wav","vj_military/english_american/suppressing4.wav","vj_military/english_american/suppressing5.wav","vj_military/english_american/suppressing6.wav","vj_military/english_american/suppressing7.wav","vj_military/english_american/suppressing8.wav","vj_military/english_american/suppressing9.wav","vj_military/english_american/suppressing10.wav","vj_military/english_american/suppressing11.wav","vj_military/english_american/suppressing12.wav"}
ENT.SoundTbl_WeaponReload = {"vj_military/english_american/reloading1.wav","vj_military/english_american/reloading2.wav","vj_military/english_american/reloading3.wav","vj_military/english_american/reloading4.wav","vj_military/english_american/reloading5.wav","vj_military/english_american/reloading6.wav"}
ENT.SoundTbl_GrenadeAttack = {"vj_military/english_american/throwgrenade1.wav","vj_military/english_american/throwgrenade2.wav","vj_military/english_american/throwgrenade3.wav","vj_military/english_american/throwgrenade4.wav","vj_military/english_american/throwgrenade5.wav","vj_military/english_american/throwgrenade6.wav","vj_military/english_american/throwgrenade7.wav","vj_military/english_american/throwgrenade8.wav","vj_military/english_american/throwgrenade9.wav"}
ENT.SoundTbl_OnGrenadeSight = {"vj_military/english_american/grenade1.wav","vj_military/english_american/grenade2.wav","vj_military/english_american/grenade3.wav","vj_military/english_american/grenade4.wav","vj_military/english_american/grenade5.wav","vj_military/english_american/grenade6.wav"}
ENT.SoundTbl_Pain = {"vj_military/english_american/pain1.wav","vj_military/english_american/pain2.wav","vj_military/english_american/pain3.wav","vj_military/english_american/pain4.wav","vj_military/english_american/pain5.wav","vj_military/english_american/pain6.wav"}
ENT.SoundTbl_DamageByPlayer = {"vj_military/english_american/friendlyfire1.wav","vj_military/english_american/friendlyfire2.wav","vj_military/english_american/friendlyfire3.wav","vj_military/english_american/friendlyfire4.wav","vj_military/english_american/friendlyfire5.wav","vj_military/english_american/friendlyfire6.wav"}
ENT.SoundTbl_Death = {"vj_military/english_american/death1.wav","vj_military/english_american/death2.wav","vj_military/english_american/death3.wav","vj_military/english_american/death4.wav","vj_military/english_american/death5.wav","vj_military/english_american/death6.wav"}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	if math.random(1,5) == 1 then self.IsMedicSNPC = true end
	self:SetBodygroup(1,math.random(0,4))
	self:SetBodygroup(2,math.random(0,1))
	self:SetBodygroup(3,math.random(0,4))
	self:SetBodygroup(4,math.random(0,2))
	self:SetBodygroup(5,math.random(0,1))
	self:SetSkin(math.random(0,10))
end