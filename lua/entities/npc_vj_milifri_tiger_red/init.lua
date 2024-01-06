AddCSLuaFile("shared.lua")
include("shared.lua")
/*-----------------------------------------------
	*** Copyright (c) 2012-2023 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/VJ_GERMAN/tigerbody.mdl"} -- The game will pick a random model from the table when the SNPC is spawned | Add as many as you want 
ENT.StartHealth = 500
---------------------------------------------------------------------------------------------------------------------------------------------
ENT.VJ_NPC_Class = {"CLASS_GERMAN_FRIENDLY", "CLASS_PLAYER_ALLY"} -- NPCs with the same class with be allied to each other

ENT.SoundTbl_Idle = {"vj_military/german/objectiveclear1.wav","vj_military/german/objectiveclear2.wav","vj_military/german/objectiveclear3.wav","vj_military/german/objectiveclear4.wav","vj_military/german/objectiveclear5.wav","vj_military/german/spreadout1.wav","vj_military/german/spreadout2.wav","vj_military/german/sticktogether1.wav","vj_military/german/sticktogether2.wav","vj_military/german/statusreport1.wav","vj_military/german/statusreport2.wav","vj_military/german/raid_decoy1.wav","vj_military/german/raid_decoy2.wav","vj_military/german/raid_decoy3.wav","vj_military/german/raid_decoy4.wav","vj_military/german/raid_decoy5.wav"}
ENT.SoundTbl_CombatIdle = {"vj_military/german/ontheway1.wav","vj_military/german/ontheway2.wav","vj_military/german/ontheway3.wav","vj_military/german/ontheway4.wav","vj_military/german/go1.wav","vj_military/german/go2.wav","vj_military/german/go3.wav","vj_military/german/go4.wav","vj_military/german/moving1.wav","vj_military/german/moving2.wav","vj_military/german/moving3.wav","vj_military/german/moving4.wav","vj_military/german/moving5.wav"}
ENT.SoundTbl_OnReceiveOrder = {"vj_military/german/affirmative1.wav","vj_military/german/affirmative2.wav","vj_military/german/affirmative3.wav","vj_military/german/affirmative4.wav"}
ENT.SoundTbl_Alert = {"vj_military/german/alert1.wav","vj_military/german/alert2.wav","vj_military/german/alert3.wav","vj_military/german/alert4.wav","vj_military/german/alert5.wav"}
ENT.SoundTbl_CallForHelp = {"vj_military/german/needbackup1.wav","vj_military/german/needbackup2.wav","vj_military/german/needbackup3.wav","vj_military/german/needbackup4.wav","vj_military/german/requestreinforcements1.wav","vj_military/german/requestreinforcements2.wav","vj_military/german/requestreinforcements3.wav","vj_military/german/requestreinforcements4.wav"}

-- Tank Base
ENT.Tank_GunnerENT = "npc_vj_milifri_tiger_redg"
ENT.Tank_AngleDiffuseNumber = -90
ENT.Tank_SeeClose = 600
ENT.Tank_CollisionBoundSize = 140
ENT.Tank_CollisionBoundUp = 120
ENT.Tank_DeathSoldierModels = {"models/VJ_WAFFEN/german_soldier1.mdl","models/VJ_WAFFEN/german_soldier2.mdl","models/VJ_WAFFEN/german_soldier3.mdl","models/VJ_WAFFEN/german_soldier4.mdl","models/VJ_WAFFEN/german_soldier5.mdl","models/VJ_WAFFEN/german_soldier6.mdl"}

util.AddNetworkString("vj_mili_redtiger_spawneffects")
util.AddNetworkString("vj_mili_redtiger_moveeffects")
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:Tank_GunnerSpawnPosition()
	return self:GetPos() +self:GetUp()*92 +self:GetRight()*-20
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:StartSpawnEffects()
	net.Start("vj_mili_redtiger_spawneffects")
	net.WriteEntity(self)
	net.Broadcast()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:StartMoveEffects()
	net.Start("vj_mili_redtiger_moveeffects")
	net.WriteEntity(self)
	net.Broadcast()
end
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:GetNearDeathSparkPositions()
	local randpos = math.random(1,7)
	if randpos == 1 then return self.Spark1:SetLocalPos(self:GetPos() +self:GetForward()*90 +self:GetUp()*60 +self:GetRight()*-100) else
	if randpos == 2 then return self.Spark1:SetLocalPos(self:GetPos() +self:GetForward()*-50 +self:GetUp()*100 +self:GetRight()*40) end
	if randpos == 3 then return self.Spark1:SetLocalPos(self:GetPos()+self:GetUp()*100 +self:GetRight()*-190 +self:GetForward()*-20) end 
	if randpos == 4 then return self.Spark1:SetLocalPos(self:GetPos()+self:GetUp()*100 +self:GetRight()*-140) end
	if randpos == 5 then return self.Spark1:SetLocalPos(self:GetPos() +self:GetForward()*30 +self:GetUp()*70 +self:GetRight()*70) end
	if randpos == 6 then return self.Spark1:SetLocalPos(self:GetPos() +self:GetForward()*80 +self:GetUp()*90 +self:GetRight()*-30) end
	if randpos == 7 then return self.Spark1:SetLocalPos(self:GetPos() +self:GetForward()*-100 +self:GetUp()*70 +self:GetRight()*-80) end
	end
end