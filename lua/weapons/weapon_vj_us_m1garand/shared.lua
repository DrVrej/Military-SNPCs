SWEP.Base 						= "weapon_vj_base"
SWEP.PrintName					= "M1 Garand"
SWEP.Author 					= "DrVrej"
SWEP.Contact					= "http://steamcommunity.com/groups/vrejgaming"
SWEP.Purpose					= "This weapon is made for Players and NPCs"
SWEP.Instructions				= "Controls are like a regular weapon."
SWEP.Category					= "VJ Base"
	-- NPC Settings ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.NPC_EnableDontUseRegulate 	= false -- Used for VJ Base SNPCs, if enabled the SNPC will remove use regulate
SWEP.NPC_NextPrimaryFire 		= 1.5 -- Next time it can use primary fire
SWEP.NPC_CustomSpread	 		= 0.5 -- This is added on top of the custom spread that's set inside the SNPC! | Starting from 1: Closer to 0 = better accuracy, Farther than 1 = worse accuracy
SWEP.NPC_ReloadSound			= {"vj_weapons/reload_boltaction.wav"} -- Sounds it plays when the base detects the SNPC playing a reload animation
	-- Main Settings ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.MadeForNPCsOnly 			= true -- Is tihs weapon meant to be for NPCs only?
SWEP.WorldModel					= "models/vj_weapons/american/w_m1_garand.mdl"
SWEP.HoldType 					= "ar2"
	-- World Model ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.WorldModel_UseCustomPosition = true -- Should the gun use custom position? This can be used to fix guns that are in the crotch
SWEP.WorldModel_CustomPositionAngle = Vector(-7.3,0,-180)
SWEP.WorldModel_CustomPositionOrigin = Vector(-0.4,0.6,0)
	-- Primary Fire ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.Primary.Damage				= 20 -- Damage
SWEP.Primary.Force				= 1 -- Force applied on the object the bullet hits
SWEP.Primary.ClipSize			= 8 -- Max amount of bullets per clip
SWEP.Primary.Ammo				= "357" -- Ammo type
SWEP.Primary.Sound				= {"vj_weapons/m1garand/m1garand_close1.wav"}
SWEP.Primary.HasDistantSound	= true -- Does it have a distant sound when the gun is shot?
SWEP.Primary.DistantSound		= {"vj_weapons/m1garand/m1garand_distant1.wav"}
SWEP.PrimaryEffects_MuzzleAttachment = "muzzle"
SWEP.PrimaryEffects_ShellAttachment = "shell"
SWEP.PrimaryEffects_ShellType = "VJ_Weapon_RifleShell1"