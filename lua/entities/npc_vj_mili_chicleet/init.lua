AddCSLuaFile("shared.lua")
include("shared.lua")
/*-----------------------------------------------
	*** Copyright (c) 2012-2024 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/VJ_Terrorist/chicleet.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want 
ENT.StartHealth = 200
ENT.HullType = HULL_MEDIUM_TALL
ENT.HullSizeNormal = false -- set to false to cancel out the self:SetHullSizeNormal()
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.VJ_NPC_Class = {"CLASS_TERRORIST"} -- NPCs with the same class with be allied to each other
ENT.BloodColor = "Red" -- The blood type, this will determine what it should use (decal, particle, etc.)
ENT.HasMeleeAttack = true -- Should the SNPC have a melee attack?
ENT.MeleeAttackDamage = 30
ENT.AnimTbl_MeleeAttack = {ACT_MELEE_ATTACK1} -- Melee Attack Animations
ENT.MeleeAttackDistance = 80 -- How close does it have to be until it attacks?
ENT.MeleeAttackDamageDistance = 120 -- How far does the damage go?
ENT.TimeUntilMeleeAttackDamage = 0.6 -- This counted in seconds | This calculates the time until it hits something
ENT.NextAnyAttackTime_Melee = 0.4 -- How much time until it can use any attack again? | Counted in Seconds
ENT.DisableDefaultMeleeAttackDamageCode = false -- Disables the default melee attack damage code
ENT.HasDeathRagdoll = false -- If set to false, it will not spawn the regular ragdoll of the SNPC
ENT.GibOnDeathDamagesTable = {"All"} -- Damages that it gibs from | "UseDefault" = Uses default damage types | "All" = Gib from any damage
	-- ====== Sound File Paths ====== --
-- Leave blank if you don't want any sounds to play
ENT.SoundTbl_Idle = {"vj_military/chicleet/idle1.wav","vj_military/chicleet/idle2.wav","vj_military/chicleet/idle3.wav","vj_military/chicleet/idle4.wav","vj_military/chicleet/idle5.wav"}
ENT.SoundTbl_Alert = {"vj_military/chicleet/alert1.wav","vj_military/chicleet/alert2.wav"}
ENT.SoundTbl_MeleeAttack = {"vj_military/chicleet/attack1.wav","vj_military/chicleet/attack2.wav"}
ENT.SoundTbl_MeleeAttackMiss = {"npc/zombie/claw_miss1.wav","npc/zombie/claw_miss2.wav"}
ENT.SoundTbl_Pain = {"vj_military/chicleet/pain1.wav","vj_military/chicleet/pain2.wav","vj_military/chicleet/pain3.wav"}
ENT.SoundTbl_Death = {"vj_military/chicleet/death1.wav"}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	self:SetCollisionBounds(Vector(13, 13, 90), Vector(-13, -13, 0))
	self:CapabilitiesAdd(bit.bor(CAP_MOVE_CLIMB))
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnMeleeAttack_AfterChecks(TheHitEntity)
	self:TakeDamage(self:GetMaxHealth(), self, self)
end
---------------------------------------------------------------------------------------------------------------------------------------------
local colorRed = VJ_Color2Byte(Color(130, 19, 10))
--
function ENT:SetUpGibesOnDeath(dmginfo,hitgroup)
	util.BlastDamage(self, self, self:GetPos(), 300, 150)
	util.ScreenShake(self:GetPos(), 100, 200, 1, 2500)

	local spawnPos = self:GetPos() + self:OBBCenter()
	
	if self.HasGibDeathParticles == true then
		local effectData = EffectData()
		effectData:SetOrigin(spawnPos)
		util.Effect("Explosion", effectData)
		effectData:SetColor(colorRed)
		effectData:SetScale(150)
		util.Effect("VJ_Blood1", effectData)
		effectData:SetScale(8)
		effectData:SetFlags(3)
		effectData:SetColor(0)
		util.Effect("bloodspray", effectData)
		util.Effect("bloodspray", effectData)
		
		ParticleEffect("vj_explosion2", spawnPos, self:GetAngles())
	end
	
	self:CreateGibEntity("obj_vj_gib", "models/gibs/humans/brain_gib.mdl", {Pos=spawnPos + self:GetUp() * 50})
	self:CreateGibEntity("obj_vj_gib", "models/gibs/humans/eye_gib.mdl", {Pos=spawnPos + self:GetUp() * 48})
	self:CreateGibEntity("obj_vj_gib", "models/gibs/humans/eye_gib.mdl", {Pos=spawnPos + self:GetUp() * 46})
	self:CreateGibEntity("obj_vj_gib", "models/gibs/humans/heart_gib.mdl", {Pos=spawnPos + VectorRand(-25, 25)})
	self:CreateGibEntity("obj_vj_gib", "models/gibs/humans/lung_gib.mdl", {Pos=spawnPos + VectorRand(-25, 25)})
	self:CreateGibEntity("obj_vj_gib", "models/gibs/humans/lung_gib.mdl", {Pos=spawnPos + VectorRand(-25, 25)})
	self:CreateGibEntity("obj_vj_gib", "models/gibs/humans/liver_gib.mdl", {Pos=spawnPos + VectorRand(-25, 25)})
	self:CreateGibEntity("obj_vj_gib", "UseHuman_Small", {Pos=spawnPos + VectorRand(-25, 25)})
	self:CreateGibEntity("obj_vj_gib", "UseHuman_Small", {Pos=spawnPos + VectorRand(-25, 25)})
	self:CreateGibEntity("obj_vj_gib", "UseHuman_Small", {Pos=spawnPos + VectorRand(-25, 25)})
	self:CreateGibEntity("obj_vj_gib", "UseHuman_Big", {Pos=spawnPos + VectorRand(-25, 25)})
	self:CreateGibEntity("obj_vj_gib", "UseHuman_Big", {Pos=spawnPos + VectorRand(-25, 25)})
	self:CreateGibEntity("obj_vj_gib", "UseHuman_Big", {Pos=spawnPos + VectorRand(-25, 25)})
	self:CreateGibEntity("obj_vj_gib", "UseHuman_Big", {Pos=spawnPos + VectorRand(-25, 25)})
	self:CreateGibEntity("obj_vj_gib", "UseHuman_Big", {Pos=spawnPos + VectorRand(-25, 25)})
	self:CreateGibEntity("obj_vj_gib", "UseHuman_Big", {Pos=spawnPos + VectorRand(-25, 25)})
	self:CreateGibEntity("obj_vj_gib", "UseHuman_Big", {Pos=spawnPos + VectorRand(-25, 25)})
	self:CreateGibEntity("obj_vj_gib", "UseHuman_Big", {Pos=spawnPos + VectorRand(-25, 25)})
	self:CreateGibEntity("obj_vj_gib", "UseHuman_Big", {Pos=spawnPos + VectorRand(-25, 25)})
	self:CreateGibEntity("obj_vj_gib", "UseHuman_Big", {Pos=spawnPos + VectorRand(-25, 25)})
end