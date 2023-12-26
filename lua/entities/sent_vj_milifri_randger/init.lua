AddCSLuaFile("shared.lua")
include('shared.lua')
/*-----------------------------------------------
	*** Copyright (c) 2012-2023 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted, 
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/
ENT.SingleSpawner = true -- If set to true, it will spawn the entities once then remove itself
ENT.EntitiesToSpawn = {
	{SpawnPosition = {vForward=0,vRight=0,vUp=0},Entities = {"npc_vj_milifri_wehrmacht","npc_vj_milifri_wehrmacht","npc_vj_milifri_wehrmacht","npc_vj_milifri_german","npc_vj_milifri_german","npc_vj_milifri_pzgrenadier","npc_vj_milifri_waffenss"},WeaponsList = {"weapon_vj_mp40","weapon_vj_nz_karabiner98k","weapon_vj_nz_karabiner98k","weapon_vj_nz_karabiner98k"}},
}
/*-----------------------------------------------
	*** Copyright (c) 2012-2023 by DrVrej, All rights reserved. ***
	No parts of this code or any of its contents may be reproduced, copied, modified or adapted, 
	without the prior written consent of the author, unless otherwise indicated for stand-alone materials.
-----------------------------------------------*/