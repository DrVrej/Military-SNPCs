AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2024 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/VJ_VEHICLES/m1abrams_chasis.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want 
ENT.StartHealth = GetConVarNumber("npc_vj_milifri_m1a1abrams_h")
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.VJ_NPC_Class = {"CLASS_UNITED_STATES_FRIENDLY"} -- NPCs with the same class with be allied to each other
ENT.PlayerFriendly = true -- Makes the SNPC friendly to the player and HL2 Resistance
ENT.FriendsWithAllPlayerAllies = true -- Should this SNPC be friends with all other player allies that are running on VJ Base?

ENT.SoundTbl_Idle = {"mili_us1/idle1.wav","mili_us1/idle2.wav","mili_us1/idle3.wav","mili_us1/idle4.wav","mili_us1/idle5.wav","mili_us1/idle6.wav","mili_us1/idle7.wav","mili_us1/idle8.wav","mili_us1/idle9.wav","mili_us1/idle10.wav","mili_us1/idle11.wav","mili_us1/idle12.wav"}
ENT.SoundTbl_OnReceiveOrder = {"mili_us1/yes1.wav","mili_us1/yes2.wav","mili_us1/yes3.wav","mili_us1/yes4.wav","mili_us1/yes5.wav","mili_us1/yes6.wav","mili_us1/yes7.wav","mili_us1/yes8.wav"}
ENT.SoundTbl_Alert = {"mili_us1/alert1.wav","mili_us1/alert2.wav","mili_us1/alert3.wav","mili_us1/alert4.wav","mili_us1/alert5.wav","mili_us1/alert6.wav"}
ENT.SoundTbl_CallForHelp = {"mili_us1/help1.wav","mili_us1/help2.wav","mili_us1/help3.wav","mili_us1/help4.wav","mili_us1/help5.wav","mili_us1/help6.wav","mili_us1/help7.wav","mili_us1/help8.wav"}
ENT.SoundTbl_CombatIdle = {"mili_us1/attack1.wav","mili_us1/attack2.wav","mili_us1/attack3.wav","mili_us1/attack4.wav","mili_us1/attack5.wav","mili_us1/attack6.wav","mili_us1/attack7.wav","mili_us1/attack8.wav","mili_us1/attack9.wav"}

-- Tank Base
ENT.Tank_GunnerENT = "npc_vj_milifri_m1a1abramsg"
ENT.Tank_CollisionBoundSize = 90
ENT.Tank_CollisionBoundUp = 100
ENT.Tank_DeathSoldierModels = {"models/VJ_HGRUNT/hgrunt1.mdl","models/VJ_HGRUNT/hgrunt2.mdl","models/VJ_HGRUNT/hgrunt3.mdl","models/VJ_HGRUNT/hgrunt4.mdl","models/VJ_HGRUNT/hgrunt5.mdl"}

util.AddNetworkString("vj_mili_tankm1a1_spawneffects")
util.AddNetworkString("vj_mili_tankm1a1_moveeffects")
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomInitialize_CustomTank()
	if GetConVarNumber("vj_npc_noidleparticle") == 0 then
		self.WhiteLight1 = ents.Create("env_sprite")
		self.WhiteLight1:SetPos( self:GetPos() +self:GetForward()*-150 +self:GetRight()*33 +self:GetUp()*50 )
		self.WhiteLight1:SetKeyValue( "renderfx", "14" )
		self.WhiteLight1:SetKeyValue( "model", "sprites/glow1.vmt")
		self.WhiteLight1:SetKeyValue( "scale","0.8")
		self.WhiteLight1:SetKeyValue( "spawnflags","1")
		self.WhiteLight1:SetKeyValue( "angles","0 0 0")
		self.WhiteLight1:SetKeyValue( "rendermode","9")
		self.WhiteLight1:SetKeyValue( "renderamt", "255")
		self.WhiteLight1:SetKeyValue( "rendercolor", "255 255 255" )
		self.WhiteLight1:Spawn()
		self.WhiteLight1:SetParent(self)
		self.WhiteLight1:Activate()
		self:DeleteOnRemove(self.WhiteLight1)
		
		-- Right
		self.WhiteLight2 = ents.Create("env_sprite")
		self.WhiteLight2:SetPos( self:GetPos() +self:GetForward()*-150 +self:GetRight()*-33 +self:GetUp()*50 )
		self.WhiteLight2:SetKeyValue( "renderfx", "14" )
		self.WhiteLight2:SetKeyValue( "model", "sprites/glow1.vmt")
		self.WhiteLight2:SetKeyValue( "scale","0.8")
		self.WhiteLight2:SetKeyValue( "spawnflags","1")
		self.WhiteLight2:SetKeyValue( "angles","0 0 0")
		self.WhiteLight2:SetKeyValue( "rendermode","9")
		self.WhiteLight2:SetKeyValue( "renderamt", "255")
		self.WhiteLight2:SetKeyValue( "rendercolor", "255 255 255" )
		self.WhiteLight2:Spawn()
		self.WhiteLight2:SetParent(self)
		self.WhiteLight2:Activate()
		self:DeleteOnRemove(self.WhiteLight2)

		-- Left
		self.ActualLight1 = ents.Create("light_dynamic")
		self.ActualLight1:SetKeyValue("brightness", "2")
		self.ActualLight1:SetKeyValue("distance", "150")
		self.ActualLight1:SetLocalPos(self.WhiteLight1:GetPos())
		self.ActualLight1:SetLocalAngles( self:GetAngles() +Angle(0,180,0) )
		//self.ActualLight1:Fire("LightColor", "255 255 255")
		self.ActualLight1:SetParent(self)
		self.ActualLight1:Spawn()
		self.ActualLight1:Activate()
		self.ActualLight1:Fire("TurnOn", "", 0)
		self:DeleteOnRemove(self.ActualLight1)
		
		-- Right
		self.ActualLight2 = ents.Create("light_dynamic")
		self.ActualLight2:SetKeyValue("brightness", "2")
		self.ActualLight2:SetKeyValue("distance", "150")
		self.ActualLight2:SetLocalPos(self.WhiteLight2:GetPos())
		self.ActualLight2:SetLocalAngles( self:GetAngles() +Angle(0,180,0) )
		//self.ActualLight2:Fire("LightColor", "255 255 255")
		self.ActualLight2:SetParent(self)
		self.ActualLight2:Spawn()
		self.ActualLight2:Activate()
		self.ActualLight2:Fire("TurnOn", "", 0)
		self:DeleteOnRemove(self.ActualLight2)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:StartSpawnEffects()
	net.Start("vj_mili_tankm1a1_spawneffects")
	net.WriteEntity(self)
	net.Broadcast()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:StartMoveEffects()
	net.Start("vj_mili_tankm1a1_moveeffects")
	net.WriteEntity(self)
	net.Broadcast()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:GetNearDeathSparkPositions()
	local randpos = math.random(1,7)
	if randpos == 1 then return self.Spark1:SetLocalPos(self:GetPos() +self:GetForward()*100 +self:GetUp()*60) else
	if randpos == 2 then return self.Spark1:SetLocalPos(self:GetPos() +self:GetForward()*30 +self:GetUp()*60) end
	if randpos == 3 then return self.Spark1:SetLocalPos(self.WhiteLight1:GetPos()) end 
	if randpos == 4 then return self.Spark1:SetLocalPos(self.WhiteLight2:GetPos()) end
	if randpos == 5 then return self.Spark1:SetLocalPos(self:GetPos() +self:GetForward()*10 +self:GetUp()*60 +self:GetRight()*50) end
	if randpos == 6 then return self.Spark1:SetLocalPos(self:GetPos() +self:GetForward()*80 +self:GetUp()*60 +self:GetRight()*-50) end
	if randpos == 7 then return self.Spark1:SetLocalPos(self:GetPos() +self:GetForward()*-20 +self:GetUp()*60 +self:GetRight()*-30) end
	end
end
/*-----------------------------------------------
	*** Copyright (c) 2012-2024 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/