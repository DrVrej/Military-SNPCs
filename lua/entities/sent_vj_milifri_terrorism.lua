/*--------------------------------------------------
	*** Copyright (c) 2012-2024 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted,
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
--------------------------------------------------*/
AddCSLuaFile()

ENT.Base 			= "obj_vj_spawner_base"
ENT.Type 			= "anim"
ENT.PrintName 		= "Friendly Terrorism"
ENT.Author 			= "DrVrej"
ENT.Contact 		= "http://steamcommunity.com/groups/vrejgaming"
ENT.Purpose 		= "Spawn it and fight with it!"
ENT.Instructions 	= "Click on the spawnicon to spawn it."
ENT.Category		= "VJ Base Spawners"
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
if !SERVER then return end

ENT.SingleSpawner = true -- If set to true, it will spawn the entities once then remove itself
ENT.EntitiesToSpawn = {
	{SpawnPosition = Vector(0, 0, 0), Entities = {"npc_vj_milifri_chicleet"}},
	{SpawnPosition = Vector(50, 50, 0), Entities = {"npc_vj_milifri_terrorist"}, WeaponsList = {"default"}},
	{SpawnPosition = Vector(50, -50, 0), Entities = {"npc_vj_milifri_terrorist"}, WeaponsList = {"default"}},
	{SpawnPosition = Vector(-50, 50, 0), Entities = {"npc_vj_milifri_terrorist"}, WeaponsList = {"default"}},
	{SpawnPosition = Vector(-50, -50, 0), Entities = {"npc_vj_milifri_terrorist"}, WeaponsList = {"default"}},
}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize_BeforeNPCSpawn()
	self:EmitSound("vj_military/arabic/terrorism"..math.random(1, 7)..".wav", 511, math.random(90, 100))
end