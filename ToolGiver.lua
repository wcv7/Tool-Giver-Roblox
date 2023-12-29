local Part = script.Parent
local ReplicatedStorage = game.ReplicatedStorage
local Tool = ReplicatedStorage:WaitForChild("Tools"):WaitForChild("Tool2")

Part.Touched:Connect(function(hit)
	if hit.Parent:FindFirstChild("Humanoid") then
		local Player = game:GetService("Players"):GetPlayerFromCharacter(hit.Parent)
		if Player then
			if not Player.StarterGear:FindFirstChild("Tool2") and not Player.Backpack:FindFirstChild("Tool2") then
				local LocalTool = Tool:Clone()
				LocalTool.Parent = Player.StarterGear
				local BackpackTool = LocalTool:Clone()
				BackpackTool.Parent = Player.Backpack
			end
		end
	end
end)
