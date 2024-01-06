ENT.Base 			= "npc_vj_tankg_base"
ENT.Type 			= "ai"
ENT.PrintName 		= "Enemy Tiger"
ENT.Author 			= "DrVrej"
ENT.Contact 		= "http://steamcommunity.com/groups/vrejgaming"
ENT.Purpose 		= "Spawn it and fight with it!"
ENT.Instructions 	= "Click on the spawnicon to spawn it."
ENT.Category		= "Military"

---------------------------------------------------------------------------------------------------------------------------------------------
net.Receive("vj_mili_redtigerg_shooteffects", function()
	local ent = net.ReadEntity()
	if ent:IsValid() then
	ent.Emitter = ParticleEmitter(ent:GetPos())
	ent.SmokeEffect2 = ent.Emitter:Add("particles/smokey",ent:GetPos() +ent:GetRight()*240 +ent:GetUp()*16)
	ent.SmokeEffect2:SetVelocity( ent:GetRight() * math.Rand(0,50) + Vector(0,30,math.Rand(10,20)) + ent:GetVelocity() )
	ent.SmokeEffect2:SetDieTime(2)
	ent.SmokeEffect2:SetStartAlpha(30)
	ent.SmokeEffect2:SetEndAlpha(0)
	ent.SmokeEffect2:SetStartSize(3)
	ent.SmokeEffect2:SetEndSize(50)
	ent.SmokeEffect2:SetRoll(math.Rand(-0.2,0.2))
	ent.SmokeEffect2:SetColor(150,150,150,255)
	ent.Emitter:Finish()
	end
end)