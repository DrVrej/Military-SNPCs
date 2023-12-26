ENT.Base 			= "npc_vj_creature_base"
ENT.Type 			= "ai"
ENT.PrintName 		= "Enemy MG 42 Emplacement"
ENT.Author 			= "DrVrej"
ENT.Contact 		= "http://steamcommunity.com/groups/vrejgaming"
ENT.Purpose 		= "Spawn it and fight with it!"
ENT.Instructions 	= "Click on the spawnicon to spawn it."
ENT.Category		= "Emplacements"

if (CLIENT) then
	function ENT:CustomOnDraw()
		if IsValid(self.NPCModel) then
			local npc = self.NPCModel
			npc:SetPos(self:GetPos() + self:GetForward()*-40 + self:GetUp()*-2)
			npc:SetAngles(self:GetAngles())
			npc:SetSequence("man_gun")
		else
			self.NPCModel = ClientsideModel("models/kriegsyntax/germans/heer/enlisted/npc_4.mdl")
		end
	end
	
	function ENT:OnRemove()
		self.NPCModel:Remove()
	end
end