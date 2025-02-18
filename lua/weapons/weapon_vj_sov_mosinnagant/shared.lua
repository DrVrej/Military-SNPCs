SWEP.Base = "weapon_vj_base"
SWEP.PrintName = "Mosin-Nagant"
SWEP.Author = "DrVrej"
SWEP.Contact = "http://steamcommunity.com/groups/vrejgaming"
SWEP.Category = "Military"
	-- NPC Settings ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.NPC_NextPrimaryFire = 1.5 -- RPM of the weapon in seconds | Calculation: 60 / RPM
SWEP.NPC_CustomSpread = 0.5 -- This is added on top of the custom spread that's set inside the SNPC! | Starting from 1: Closer to 0 = better accuracy, Farther than 1 = worse accuracy
SWEP.NPC_ExtraFireSound = "vj_base/weapons/cycle_rifle_bolt.wav" -- Plays an extra sound after it fires (Example: Bolt action sound)
SWEP.NPC_ReloadSound = "vj_base/weapons/reload_rifle_bolt.wav" -- Sounds it plays when the base detects the SNPC playing a reload animation
	-- Main Settings ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.MadeForNPCsOnly = true -- Is tihs weapon meant to be for NPCs only?
SWEP.WorldModel = "models/vj_weapons/russian/w_mosin_nagant.mdl"
SWEP.HoldType = "ar2"
	-- World Model ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.WorldModel_UseCustomPosition = true -- Should the gun use custom position? This can be used to fix guns that are in the crotch
SWEP.WorldModel_CustomPositionAngle = Vector(-7, -91, -182)
SWEP.WorldModel_CustomPositionOrigin = Vector(15, 0.4, -5.4)
	-- Primary Fire ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.Primary.Damage = 20 -- Damage
SWEP.Primary.Force = 1 -- Force applied on the object the bullet hits
SWEP.Primary.ClipSize = 5 -- Max amount of rounds per clip
SWEP.Primary.Ammo = "357" -- Ammo type
SWEP.Primary.Sound = {"vj_weapons/mosin_nagant/fire2a.wav", "vj_weapons/mosin_nagant/fire2b.wav", "vj_weapons/mosin_nagant/fire2c.wav"}
SWEP.Primary.HasDistantSound = true -- Does it have a distant sound when the gun is shot?
SWEP.Primary.DistantSound = "vj_weapons/mosin_nagant/distant1.wav"
SWEP.PrimaryEffects_MuzzleAttachment = "muzzle"
SWEP.PrimaryEffects_ShellAttachment = "shell"
SWEP.PrimaryEffects_ShellType = "RifleShellEject"