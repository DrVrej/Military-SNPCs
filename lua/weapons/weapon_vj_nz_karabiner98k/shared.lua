SWEP.Base = "weapon_vj_base"
SWEP.PrintName = "Karabiner 98k"
SWEP.Author = "DrVrej"
SWEP.Contact = "http://steamcommunity.com/groups/vrejgaming"
SWEP.Purpose = "This weapon is made for Players and NPCs"
SWEP.Instructions = "Controls are like a regular weapon."
SWEP.Category = "Military"
	-- NPC Settings ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.NPC_NextPrimaryFire = 1.5 -- Next time it can use primary fire
SWEP.NPC_CustomSpread = 0.5 -- This is added on top of the custom spread that's set inside the SNPC! | Starting from 1: Closer to 0 = better accuracy, Farther than 1 = worse accuracy
SWEP.NPC_ExtraFireSound = {"vj_weapons/perform_boltaction.wav"} -- Plays an extra sound after it fires (Example: Bolt action sound)
SWEP.NPC_ReloadSound = {"vj_weapons/reload_boltaction.wav"} -- Sounds it plays when the base detects the SNPC playing a reload animation
	-- Main Settings ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.MadeForNPCsOnly = true -- Is tihs weapon meant to be for NPCs only?
SWEP.WorldModel = "models/vj_weapons/german/w_karabiner_98k.mdl"
SWEP.HoldType = "ar2"
	-- World Model ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.WorldModel_UseCustomPosition = true -- Should the gun use custom position? This can be used to fix guns that are in the crotch
SWEP.WorldModel_CustomPositionAngle = Vector(0, -91, -189)
SWEP.WorldModel_CustomPositionOrigin = Vector(9, 0.5, -3.9)
	-- Primary Fire ---------------------------------------------------------------------------------------------------------------------------------------------
SWEP.Primary.Damage = 20 -- Damage
SWEP.Primary.Force = 1 -- Force applied on the object the bullet hits
SWEP.Primary.ClipSize = 5 -- Max amount of bullets per clip
SWEP.Primary.Ammo = "357" -- Ammo type
SWEP.Primary.Sound = {"vj_weapons/karabiner_98k/kar98_close1.wav"}
SWEP.Primary.DistantSound = {"vj_weapons/karabiner_98k/kar98_distant1.wav"}
SWEP.PrimaryEffects_MuzzleAttachment = "muzzle"
SWEP.PrimaryEffects_ShellAttachment = "shell"
SWEP.PrimaryEffects_ShellType = "VJ_Weapon_RifleShell1"