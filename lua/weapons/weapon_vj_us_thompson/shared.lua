SWEP.Base = "weapon_vj_base"
SWEP.PrintName = "Thompson"
SWEP.Author = "DrVrej"
SWEP.Contact = "http://steamcommunity.com/groups/vrejgaming"
SWEP.Category = "Military"
	-- Main Settings ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.MadeForNPCsOnly = true -- Is tihs weapon meant to be for NPCs only?
SWEP.WorldModel = "models/vj_weapons/american/w_m1928a1.mdl"
SWEP.HoldType = "ar2"
SWEP.NPC_NextPrimaryFire = 0.1 -- RPM of the weapon in seconds | Calculation: 60 / RPM
	-- World Model ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.WorldModel_UseCustomPosition = true -- Should the gun use custom position? This can be used to fix guns that are in the crotch
SWEP.WorldModel_CustomPositionAngle = Vector(-9.5, 0, -180)
SWEP.WorldModel_CustomPositionOrigin = Vector(-1.25, 0.6, -0.3)
	-- Primary Fire ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.Primary.Damage = 5 -- Damage
SWEP.Primary.Force = 5 -- Force applied on the object the bullet hits
SWEP.Primary.ClipSize = 30 -- Max amount of rounds per clip
SWEP.Primary.Ammo = "SMG1" -- Ammo typed
SWEP.Primary.Sound = "vj_weapons/thompson/thompson_close1.wav"
SWEP.Primary.HasDistantSound = true -- Does it have a distant sound when the gun is shot?
SWEP.Primary.DistantSound = "vj_weapons/thompson/thompson_distant1.wav"
SWEP.PrimaryEffects_MuzzleAttachment = "muzzle"
SWEP.PrimaryEffects_ShellAttachment = "shell"
SWEP.PrimaryEffects_ShellType = "RifleShellEject"