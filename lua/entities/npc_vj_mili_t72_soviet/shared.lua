ENT.Base 			= "npc_vj_tank_base"
ENT.Type 			= "ai"
ENT.PrintName 		= "Enemy Soviet T-72"
ENT.Author 			= "DrVrej"
ENT.Contact 		= "http://steamcommunity.com/groups/vrejgaming"
ENT.Purpose 		= "Spawn it and fight with it!"
ENT.Instructions 	= "Click on the spawnicon to spawn it."
ENT.Category		= "Soviet Union"
 
if CLIENT then
local Name = "Enemy Soviet T-72"
local LangName = "npc_vj_mili_t72_soviet"
language.Add(LangName, Name)
killicon.Add(LangName,"HUD/killicons/default",Color(255,80,0,255))
language.Add("#"..LangName, Name)
killicon.Add("#"..LangName,"HUD/killicons/default",Color(255,80,0,255))
end
---------------------------------------------------------------------------------------------------------------------------------------------
net.Receive("vj_mili_t72_spawneffects", function()
	local ent = net.ReadEntity()
	if ent:IsValid() then
	ent.Emitter = ParticleEmitter(ent:GetPos())
	ent.SmokeEffect1 = ent.Emitter:Add("particles/smokey",ent:GetPos() +ent:GetForward()*110 +ent:GetRight()*-20 +ent:GetUp()*55)
	ent.SmokeEffect1:SetVelocity(ent:GetUp() *math.Rand(0,50) +Vector(math.Rand(5,5),math.Rand(5,5),math.Rand(5,5)) +ent:GetVelocity())
	ent.SmokeEffect1:SetDieTime(0.6)
	ent.SmokeEffect1:SetStartAlpha(30)
	ent.SmokeEffect1:SetEndAlpha(0)
	ent.SmokeEffect1:SetStartSize(5)
	ent.SmokeEffect1:SetEndSize(60)
	ent.SmokeEffect1:SetRoll(math.Rand(-0.2,0.2))
	ent.SmokeEffect1:SetColor(150,150,150,255)
	
	ent.HeatEffect1 = ent.Emitter:Add("sprites/heatwave",ent:GetPos() +ent:GetForward()*110 +ent:GetRight()*-20 +ent:GetUp()*60)
	ent.SmokeEffect1:SetVelocity(ent:GetUp() *math.Rand(0,50) +Vector(math.Rand(5,5),math.Rand(5,5),math.Rand(5,5)) +ent:GetVelocity())
	ent.HeatEffect1:SetDieTime(0.1)
	ent.HeatEffect1:SetStartAlpha(255)
	ent.HeatEffect1:SetEndAlpha(255)
	ent.HeatEffect1:SetStartSize(5)
	ent.HeatEffect1:SetEndSize(20)
	ent.HeatEffect1:SetRoll(math.Rand(-50,50))
	ent.HeatEffect1:SetColor(255,255,255)
	ent.Emitter:Finish()
	
	ent.Emitter = ParticleEmitter(ent:GetPos())
	ent.SmokeEffect1 = ent.Emitter:Add("particles/smokey",ent:GetPos() +ent:GetForward()*110 +ent:GetRight()*20 +ent:GetUp()*55)
	ent.SmokeEffect1:SetVelocity(ent:GetUp() *math.Rand(0,50) +Vector(math.Rand(5,5),math.Rand(5,5),math.Rand(5,5)) +ent:GetVelocity())
	ent.SmokeEffect1:SetDieTime(0.6)
	ent.SmokeEffect1:SetStartAlpha(30)
	ent.SmokeEffect1:SetEndAlpha(0)
	ent.SmokeEffect1:SetStartSize(5)
	ent.SmokeEffect1:SetEndSize(60)
	ent.SmokeEffect1:SetRoll(math.Rand(-0.2,0.2))
	ent.SmokeEffect1:SetColor(150,150,150,255)
	
	ent.HeatEffect1 = ent.Emitter:Add("sprites/heatwave",ent:GetPos() +ent:GetForward()*110 +ent:GetRight()*20 +ent:GetUp()*60)
	ent.SmokeEffect1:SetVelocity(ent:GetUp() *math.Rand(0,50) +Vector(math.Rand(5,5),math.Rand(5,5),math.Rand(5,5)) +ent:GetVelocity())
	ent.HeatEffect1:SetDieTime(0.1)
	ent.HeatEffect1:SetStartAlpha(255)
	ent.HeatEffect1:SetEndAlpha(255)
	ent.HeatEffect1:SetStartSize(5)
	ent.HeatEffect1:SetEndSize(20)
	ent.HeatEffect1:SetRoll(math.Rand(-50,50))
	ent.HeatEffect1:SetColor(255,255,255)
	ent.Emitter:Finish()
	end
end)
---------------------------------------------------------------------------------------------------------------------------------------------
net.Receive("vj_mili_t72_moveeffects", function()
	local ent = net.ReadEntity()
	if ent:IsValid() then
	ent.Emitter = ParticleEmitter(ent:GetPos())
	ent.MoveSmokeEffect1 = ent.Emitter:Add("particles/smokey",ent:GetPos() +ent:GetForward()*87 +ent:GetRight()*58 +ent:GetUp()*0)
	ent.MoveSmokeEffect1:SetVelocity( ent:GetForward() * math.Rand(100,200) + Vector(math.Rand(5,-5),math.Rand(5,-5),math.Rand(5,-5)) + ent:GetVelocity() )
	ent.MoveSmokeEffect1:SetDieTime(4)
	ent.MoveSmokeEffect1:SetStartAlpha(30)
	ent.MoveSmokeEffect1:SetEndAlpha(0)
	ent.MoveSmokeEffect1:SetStartSize(math.Rand(12,20))
	ent.MoveSmokeEffect1:SetEndSize(math.Rand(60,80))
	ent.MoveSmokeEffect1:SetRoll(math.Rand(-0.2,0.2))
	ent.MoveSmokeEffect1:SetColor(80,60,20)
	ent.MoveSmokeEffect1:SetAirResistance(300)
	ent.MoveSmokeEffect1:SetGravity(Vector(0,0,50))
	
	ent.MoveSmokeEffect2 = ent.Emitter:Add("particles/smokey",ent:GetPos() +ent:GetForward()*87 +ent:GetRight()*-58 +ent:GetUp()*0)
	ent.MoveSmokeEffect2:SetVelocity( ent:GetForward() * math.Rand(100,200) + Vector(math.Rand(5,-5),math.Rand(5,-5),math.Rand(5,-5)) + ent:GetVelocity() )
	ent.MoveSmokeEffect2:SetDieTime(4)
	ent.MoveSmokeEffect2:SetStartAlpha(30)
	ent.MoveSmokeEffect2:SetEndAlpha(0)
	ent.MoveSmokeEffect2:SetStartSize(math.Rand(12,20))
	ent.MoveSmokeEffect2:SetEndSize(math.Rand(60,80))
	ent.MoveSmokeEffect2:SetRoll(math.Rand(-0.2,0.2))
	ent.MoveSmokeEffect2:SetColor(80,60,20)
	ent.MoveSmokeEffect2:SetAirResistance(300)
	ent.MoveSmokeEffect2:SetGravity(Vector(0,0,50))
	ent.Emitter:Finish()
	end
end)