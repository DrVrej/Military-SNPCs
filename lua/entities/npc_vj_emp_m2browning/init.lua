AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2023 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/gredwitch/m2browning/m2_tripod.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want
ENT.StartHealth = 200
ENT.HullType = HULL_HUMAN
ENT.SightDistance = 5000 -- How far it can see
ENT.MovementType = VJ_MOVETYPE_STATIONARY -- How does the SNPC move?
ENT.CanTurnWhileStationary = false -- If set to true, the SNPC will be able to turn while it's a stationary SNPC
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.VJ_NPC_Class = {"CLASS_UNITED_STATES"}
ENT.HasMeleeAttack = false -- Should the SNPC have a melee attack?

ENT.HasRangeAttack = true -- Should the SNPC have a range attack?
ENT.RangeDistance = 5000 -- This is how far away it can shoot
ENT.RangeToMeleeDistance = 1 -- How close does it have to be until it uses melee?
ENT.TimeUntilRangeAttackProjectileRelease = 0.025 -- How much time until the projectile code is ran?
ENT.NextRangeAttackTime = 0.05 -- How much time until it can use a range attack?
ENT.DisableDefaultRangeAttackCode = true -- When true, it won't spawn the range attack entity, allowing you to make your own
ENT.DisableRangeAttackAnimation = true -- if true, it will disable the animation code

//ENT.SoundTbl_RangeAttack = {"vj_emplacements/m2/m2_tp.wav"}

ENT.RangeAttackPitch = VJ_Set(100, 100)
ENT.RangeAttackSoundLevel = 80

-- Custom
ENT.Emp_MaxAmmo = 100
ENT.Emp_CurrentAmmo = 0
ENT.Emp_Reloading = false

ENT.Emp_Lerp_Yaw = 0
ENT.Emp_Lerp_Ptich = 0
ENT.Emp_Lerp_Ptich_Previous = 0
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize()
	self:SetCollisionBounds(Vector(20, 20, 60), Vector(-20, -20, -5))
	
	self.ExtraGunModel = ents.Create("prop_vj_animatable")
	self.ExtraGunModel:SetModel("models/gredwitch/m2browning/m2_gun_anotherone.mdl")
	self.ExtraGunModel:SetLocalPos(self:GetPos() + self:GetUp()*50)
	self.ExtraGunModel:SetLocalAngles(Angle(self:GetAngles().p, self:GetAngles().y - 90, self:GetAngles().r))
	self.ExtraGunModel:SetOwner(self)
	self.ExtraGunModel:SetParent(self)
	//self.ExtraGunModel:Fire("SetParentAttachmentMaintainOffset","hookup")
	//self.ExtraGunModel:Fire("SetParentAttachment","hookup")
	self.ExtraGunModel:SetCollisionGroup(COLLISION_GROUP_IN_VEHICLE)
	self.ExtraGunModel:Spawn()
	self.ExtraGunModel:Activate()
	//self.ExtraGunModel:SetSolid(SOLID_NONE)
	//self.ExtraGunModel:AddEffects(EF_BONEMERGE)
	
	self.Emp_CurrentAmmo = self.Emp_MaxAmmo
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnThink()
	if IsValid(self.ExtraGunModel) then
		local ene = self:GetEnemy()
		if IsValid(ene) && (self:GetForward():Dot((ene:GetPos() -self:GetPos()):GetNormalized()) > math.cos(math.rad(self.RangeAttackAngleRadius))) then
			self.Emp_Lerp_Yaw = Lerp(25 * FrameTime(), self.Emp_Lerp_Yaw, (ene:GetPos() - self.ExtraGunModel:GetPos()):Angle().y - 90)
			local pitch = -((ene:GetPos() + ene:OBBCenter()) - (self.ExtraGunModel:GetPos()  + self.ExtraGunModel:OBBCenter())):Angle().p
			self.Emp_Lerp_Ptich = Lerp(25 * FrameTime(), self.Emp_Lerp_Ptich, pitch)
			local dist = math.Distance(self.Emp_Lerp_Ptich, 0, self.Emp_Lerp_Ptich_Previous, 0)
			-- Nayir inchab yergare arach-va yev himagva teve, yete 20-en vere, eselete zenke bidi tarna glorag  ...
			-- ...  Ador teme yeleloo hamar, ere vor zenke chi sharje, minche vor yergarootyoun-e 20 en vare
			if dist < 20 then
				self.ExtraGunModel:SetAngles(Angle(0, self.Emp_Lerp_Yaw, self.Emp_Lerp_Ptich))
			else
				self.Emp_Lerp_Ptich = pitch
			end
			self.Emp_Lerp_Ptich_Previous = self.Emp_Lerp_Ptich
		end
		if self.Emp_CurrentAmmo <= 0 && self.Emp_Reloading == false then
			self.Emp_Reloading = true
			self.ExtraGunModel:SetBodygroup(2, 1)
			VJ_EmitSound(self, "vj_emplacements/m2/m2_reload.wav")
			self.ExtraGunModel:ResetSequence(self.ExtraGunModel:LookupSequence("reload"))
			self.ExtraGunModel:ResetSequenceInfo()
			self.ExtraGunModel:SetCycle(0)
			timer.Simple(0.3,function()
				if IsValid(self) then
					self.ExtraGunModel:SetBodygroup(1, 1)
					if IsValid(self.ReloadAmmoBox) then self.ReloadAmmoBox:Remove() end -- Remove the ammo box if it already existed
					self.ReloadAmmoBox = ents.Create("prop_physics")
					self.ReloadAmmoBox:SetModel("models/gredwitch/m2browning/m2_mag.mdl")
					self.ReloadAmmoBox:PhysicsInit(SOLID_VPHYSICS)
					self.ReloadAmmoBox:SetSolid(SOLID_VPHYSICS)
					self.ReloadAmmoBox:SetMoveType(MOVETYPE_VPHYSICS)
					self.ReloadAmmoBox:SetPos(self.ExtraGunModel:GetPos() + self.ExtraGunModel:GetForward()*-5 + self.ExtraGunModel:GetUp()*5)
					self.ReloadAmmoBox:SetAngles(self.ExtraGunModel:GetAngles())
					self.ReloadAmmoBox:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
					self.ReloadAmmoBox:Spawn()
					self.ReloadAmmoBox:Activate()
					self.ReloadAmmoBox:SetBodygroup(1, 1)
					local phys = self.ReloadAmmoBox:GetPhysicsObject()
					if IsValid(phys) then
						phys:Wake()
						phys:ApplyForceCenter(self.ReloadAmmoBox:GetForward() * -50000)
					end
					timer.Simple(5, function() if IsValid(self.ReloadAmmoBox) then self.ReloadAmmoBox:Remove() end end)
				end
			end)
			timer.Simple(1.6, function()
				if IsValid(self) && IsValid(self.ExtraGunModel) then
					self.ExtraGunModel:SetBodygroup(1, 0)
					self.ExtraGunModel:SetBodygroup(2, 0)
				end
			end)
			timer.Simple(2.67, function()
				if IsValid(self) then
					self.Emp_CurrentAmmo = self.Emp_MaxAmmo
					self.Emp_Reloading = false
				end
			end)
		end
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomAttackCheck_RangeAttack()
	if self.Emp_CurrentAmmo > 0 then return true end
	return false
end
---------------------------------------------------------------------------------------------------------------------------------------------
local angX90 = Angle(90, 0, 0)
--
function ENT:CustomRangeAttackCode()
	if !IsValid(self.ExtraGunModel) then return end
	self.Emp_CurrentAmmo = self.Emp_CurrentAmmo - 1
	
	local ene = self:GetEnemy()
	local bulletAttach = self.ExtraGunModel:GetAttachment(self.ExtraGunModel:LookupAttachment("muzzle")).Pos
	local fSpread = self.LatestEnemyDistance / 50
	local bullet = {}
		bullet.Attacker = self
		bullet.Num = 1
		bullet.Src = bulletAttach
		bullet.Dir = (ene:GetPos() + ene:OBBCenter()) - (self:GetPos() + self:OBBCenter())
		bullet.Spread = Vector(fSpread, fSpread, 0)
		bullet.Tracer = 1
		bullet.TracerName = "Tracer"
		bullet.Force = 5
		bullet.Damage = math.random(5, 20)
		bullet.AmmoType = "SMG1"
		bullet.Callback = function(attacker, tr, dmginfo)
			local mat = "doi_impact_concrete"
			if tr.MatType == MAT_CONCRETE then
				mat = "doi_impact_concrete"
			elseif tr.MatType == MAT_DIRT then
				mat = "doi_impact_dirt"
			elseif tr.MatType == MAT_GLASS then
				mat = "doi_impact_glass"
			elseif tr.MatType == MAT_METAL or tr.MatType == MAT_VENT then
				mat = "doi_impact_metal"
			elseif tr.MatType == MAT_SAND then
				mat = "doi_impact_sand"
			elseif tr.MatType == MAT_SNOW then
				mat = "doi_impact_snow"
			elseif tr.MatType == MAT_WOOD then
				mat = "doi_impact_wood"
			elseif tr.MatType == MAT_GRASS then
				mat = "doi_impact_grass"
			elseif tr.MatType == MAT_TILE then
				mat = "doi_impact_tile"
			elseif tr.MatType == MAT_PLASTIC then
				mat = "doi_impact_plastic"
			elseif tr.MatType == MAT_COMPUTER then
				mat = "doi_impact_computer"
			elseif tr.MatType == MAT_FOLIAGE then
				mat = "doi_impact_leaves"
			elseif tr.MatType == MAT_ANTLION or tr.MatType == MAT_ALIENFLESH or tr.MatType == MAT_FLESH then
				mat = nil
			end
			if mat != nil then
				ParticleEffect(mat, tr.HitPos, tr.HitNormal:Angle() + angX90)
			end
		end
	self.ExtraGunModel:FireBullets(bullet)
	
	self:PlaySoundSystem("RangeAttack", "vj_emplacements/m2/m2_tp.wav", VJ_EmitSound)
	VJ_EmitSound(self, "vj_emplacements/m2/m2_dist.wav", 110)
	
	ParticleEffectAttach("vj_rifle_full", PATTACH_POINT, self.ExtraGunModel, 1)
	ParticleEffectAttach("muzzleflash_bar_3p", PATTACH_POINT, self.ExtraGunModel, 1)
	
	local bulletShell = EffectData()
	bulletShell:SetEntity(self.ExtraGunModel)
	bulletShell:SetOrigin(self.ExtraGunModel:GetPos() + self:GetForward()*-2 + self:GetUp()*2)
	util.Effect("RifleShellEject", bulletShell)
	
	local dynLight = ents.Create("light_dynamic")
	dynLight:SetKeyValue("brightness", "4")
	dynLight:SetKeyValue("distance", "120")
	dynLight:SetPos(bulletAttach)
	dynLight:SetLocalAngles(self.ExtraGunModel:GetAngles())
	dynLight:Fire("Color", "255 150 60")
	dynLight:SetParent(self.ExtraGunModel)
	dynLight:Spawn()
	dynLight:Activate()
	dynLight:Fire("TurnOn", "", 0)
	dynLight:Fire("Kill", "", 0.07)
	self.ExtraGunModel:DeleteOnRemove(dynLight)
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnRemove()
	if IsValid(self.ReloadAmmoBox) then self.ReloadAmmoBox:Remove() end
	if IsValid(self.ExtraGunModel) then
		self.ExtraGunModel:SetCollisionGroup(COLLISION_GROUP_INTERACTIVE)
		self.ExtraGunModel:SetOwner(NULL)
		self.ExtraGunModel:SetParent(NULL)
		self.ExtraGunModel:Fire("ClearParent")
		self.ExtraGunModel:SetMoveType(MOVETYPE_VPHYSICS)
		self:CreateExtraDeathCorpse("prop_physics", self.ExtraGunModel:GetModel(), {Pos=self.ExtraGunModel:GetPos(), Ang=self.ExtraGunModel:GetAngles(), HasVel=false})
		self.ExtraGunModel:Remove()
	end
end