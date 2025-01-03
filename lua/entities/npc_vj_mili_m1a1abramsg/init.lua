AddCSLuaFile("shared.lua")
include("shared.lua")
/*-----------------------------------------------
	*** Copyright (c) 2012-2024 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.Model = {"models/VJ_VEHICLES/m1abrams_turret.mdl"} -- Model(s) to spawn with | Picks a random one if it's a table 
ENT.StartHealth = 0
ENT.VJ_NPC_Class = {"CLASS_UNITED_STATES"} -- NPCs with the same class with be allied to each other

-- Tank Base
ENT.Tank_Shell_SpawnPos = Vector(-170,0,65)
ENT.Tank_Shell_DynamicLightPos = Vector(-200,0,0)
ENT.Tank_Shell_MuzzleFlashPos = Vector(-300,0,72)
ENT.Tank_Shell_ParticlePos = Vector(-223,00,74)

---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:StartShootEffects()
	net.Start("vj_mili_tank_m1a1_fire")
	net.WriteEntity(self)
	net.Broadcast()
end