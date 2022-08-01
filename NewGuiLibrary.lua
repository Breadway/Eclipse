local Lib = {}

function Lib:CreateMain()
	local ScreenGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local Combat1 = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local Blatant = Instance.new("TextLabel")
	local Blatant_2 = Instance.new("Frame")
	local UIListLayout_2 = Instance.new("UIListLayout")
	local TextLabel = Instance.new("TextLabel")
	local Render = Instance.new("Frame")
	local UIListLayout_3 = Instance.new("UIListLayout")
	local TextLabel_2 = Instance.new("TextLabel")
	local Utility = Instance.new("Frame")
	local UIListLayout_4 = Instance.new("UIListLayout")
	local TextLabel_3 = Instance.new("TextLabel")
	local World = Instance.new("Frame")
	local UIListLayout_5 = Instance.new("UIListLayout")
	local TextLabel_4 = Instance.new("TextLabel")
	local UIListLayout_6 = Instance.new("UIListLayout")
	
	--Properties:
	
	ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	
	Frame.Parent = ScreenGui
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.BackgroundTransparency = 1.000
	Frame.Position = UDim2.new(0.0187546778, 0, 0.0171358772, 0)
	Frame.Size = UDim2.new(0, 1283, 0, 788)
	
	Combat1.Name = "Combat"
	Combat1.Parent = Frame
	Combat1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Combat1.Size = UDim2.new(0, 161, 0, 474)
	
	UIListLayout.Parent = Combat
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	
	Blatant.Name = "Blatant"
	Blatant.Parent = Combat
	Blatant.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Blatant.Size = UDim2.new(0, 161, 0, 50)
	Blatant.Font = Enum.Font.SourceSansBold
	Blatant.TextColor3 = Color3.fromRGB(0, 0, 0)
	Blatant.TextScaled = true
	Blatant.TextSize = 14.000
	Blatant.TextWrapped = true

	Blatant_2.Name = "Blatant"
	Blatant_2.Parent = Frame
	Blatant_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Blatant_2.Size = UDim2.new(0, 161, 0, 474)
	
	UIListLayout_2.Parent = Blatant_2
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
	
	TextLabel.Parent = Blatant_2
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.Size = UDim2.new(0, 161, 0, 50)
	TextLabel.Font = Enum.Font.SourceSansBold
	TextLabel.Text = "Combat"
	TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true
	
	Render.Name = "Render"
	Render.Parent = Frame
	Render.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Render.Size = UDim2.new(0, 161, 0, 474)
	
	UIListLayout_3.Parent = Render
	UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
	
	TextLabel_2.Parent = Render
	TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.Size = UDim2.new(0, 161, 0, 50)
	TextLabel_2.Font = Enum.Font.SourceSansBold
	TextLabel_2.Text = "Render"
	TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel_2.TextScaled = true
	TextLabel_2.TextSize = 14.000
	TextLabel_2.TextWrapped = true
	
	Utility.Name = "Utility"
	Utility.Parent = Frame
	Utility.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Utility.Size = UDim2.new(0, 161, 0, 474)
	
	UIListLayout_4.Parent = Utility
	UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
	
	TextLabel_3.Parent = Utility
	TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_3.Size = UDim2.new(0, 161, 0, 50)
	TextLabel_3.Font = Enum.Font.SourceSansBold
	TextLabel_3.Text = "Utility"
	TextLabel_3.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel_3.TextScaled = true
	TextLabel_3.TextSize = 14.000
	TextLabel_3.TextWrapped = true
	
	World.Name = "World"
	World.Parent = Frame
	World.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	World.Size = UDim2.new(0, 161, 0, 474)
	
	UIListLayout_5.Parent = World
	UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
	
	TextLabel_4.Parent = World
	TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_4.Size = UDim2.new(0, 161, 0, 50)
	TextLabel_4.Font = Enum.Font.SourceSansBold
	TextLabel_4.Text = "World"
	TextLabel_4.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel_4.TextScaled = true
	TextLabel_4.TextSize = 14.000
	TextLabel_4.TextWrapped = true
	
	UIListLayout_6.Parent = Frame
	UIListLayout_6.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_6.Padding = UDim.new(0, 100)
	
	local Combat = {}
	
	function Combat:AddButton(Name)
		local TextButton = Instance.new("TextButton")

		TextButton.Parent = Combat1
		TextButton.Name = Name
		TextButton.Text = Name
		TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextButton.Position = UDim2.new(0, 0, 0.105485231, 0)
		TextButton.Size = UDim2.new(0, 161, 0, 50)
		TextButton.Font = Enum.Font.SourceSansBold
		TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextButton.TextScaled = true
		TextButton.TextSize = 14.000
		TextButton.TextWrapped = true
	end
	
	return Combat
end

return Lib
