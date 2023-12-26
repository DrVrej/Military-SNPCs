AddCSLuaFile("shared.lua")
include("shared.lua")
/*-----------------------------------------------
	*** Copyright (c) 2012-2024 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted, 
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.SingleSpawner = true -- If set to true, it will spawn the entities once then remove itself
ENT.Model = {"models/props_junk/popcan01a.mdl"} -- The models it should spawn with | Picks a random one from the table
ENT.EntitiesToSpawn = {
	{EntityName = "NPC1",SpawnPosition = {vForward=5,vRight=-50,vUp=0},Entities = {"npc_vj_mili_terrorist"},WeaponsList = {"weapon_vj_rpg","weapon_vj_rpg","weapon_vj_ak47","weapon_vj_ak47","weapon_vj_ak47","weapon_vj_m16a1","weapon_vj_m16a1","weapon_vj_m16a1","weapon_vj_mp40","weapon_vj_mp40","weapon_vj_mp40","weapon_vj_smg1","weapon_vj_smg1","weapon_vj_smg1","weapon_vj_spas12","weapon_vj_spas12","weapon_vj_spas12","weapon_vj_ar2","weapon_vj_blaster"}},
	{EntityName = "NPC2",SpawnPosition = {vForward=0,vRight=50,vUp=0},Entities = {"npc_vj_mili_terrorist"},WeaponsList = {"weapon_vj_rpg","weapon_vj_rpg","weapon_vj_ak47","weapon_vj_ak47","weapon_vj_ak47","weapon_vj_m16a1","weapon_vj_m16a1","weapon_vj_m16a1","weapon_vj_mp40","weapon_vj_mp40","weapon_vj_mp40","weapon_vj_smg1","weapon_vj_smg1","weapon_vj_smg1","weapon_vj_spas12","weapon_vj_spas12","weapon_vj_spas12","weapon_vj_ar2","weapon_vj_blaster"}},
	{EntityName = "NPC3",SpawnPosition = {vForward=100,vRight=50,vUp=0},Entities = {"npc_vj_mili_terrorist"},WeaponsList = {"weapon_vj_rpg","weapon_vj_rpg","weapon_vj_ak47","weapon_vj_ak47","weapon_vj_ak47","weapon_vj_m16a1","weapon_vj_m16a1","weapon_vj_m16a1","weapon_vj_mp40","weapon_vj_mp40","weapon_vj_mp40","weapon_vj_smg1","weapon_vj_smg1","weapon_vj_smg1","weapon_vj_spas12","weapon_vj_spas12","weapon_vj_spas12","weapon_vj_ar2","weapon_vj_blaster"}},
	{EntityName = "NPC4",SpawnPosition = {vForward=100,vRight=-50,vUp=0},Entities = {"npc_vj_mili_terrorist"},WeaponsList = {"weapon_vj_rpg","weapon_vj_rpg","weapon_vj_ak47","weapon_vj_ak47","weapon_vj_ak47","weapon_vj_m16a1","weapon_vj_m16a1","weapon_vj_m16a1","weapon_vj_mp40","weapon_vj_mp40","weapon_vj_mp40","weapon_vj_smg1","weapon_vj_smg1","weapon_vj_smg1","weapon_vj_spas12","weapon_vj_spas12","weapon_vj_spas12","weapon_vj_ar2","weapon_vj_blaster"}},
	{EntityName = "NPC5",SpawnPosition = {vForward=50,vRight=0,vUp=0},Entities = {"npc_vj_mili_chicleet"}},
}
---------------------------------------------------------------------------------------------------------------------------------------------
function ENT:CustomOnInitialize_BeforeNPCSpawn() 
	self:EmitSound("vj_military/arabic/terrorism"..math.random(1, 7)..".wav", 511, math.random(90, 100))
end