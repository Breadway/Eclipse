local Lib = {}

function Lib:CreateMain()
	local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Combat = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local CombatLabel = Instance.new("TextLabel")
local Blatant1 = Instance.new("Frame")
local UIListLayout_2 = Instance.new("UIListLayout")
local BlatantLabel = Instance.new("TextLabel")
local Render = Instance.new("Frame")
local UIListLayout_3 = Instance.new("UIListLayout")
local RenderLabel = Instance.new("TextLabel")
local Utility = Instance.new("Frame")
local UIListLayout_4 = Instance.new("UIListLayout")
local UtilityLabel = Instance.new("TextLabel")
local World = Instance.new("Frame")
local UIListLayout_5 = Instance.new("UIListLayout")
local WorldLabel = Instance.new("TextLabel")
local UIListLayout_6 = Instance.new("UIListLayout")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0.0187546778, 0, 0.0171358772, 0)
Frame.Size = UDim2.new(0, 1283, 0, 788)

Combat.Name = "Combat"
Combat.Parent = Frame
Combat.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Combat.Size = UDim2.new(0, 161, 0, 474)

UIListLayout.Parent = Combat
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

CombatLabel.Name = "CombatLabel"
CombatLabel.Parent = Combat
CombatLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CombatLabel.Size = UDim2.new(0, 161, 0, 50)
CombatLabel.Font = Enum.Font.SourceSansBold
CombatLabel.Text = "Combat"
CombatLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
CombatLabel.TextScaled = true
CombatLabel.TextSize = 14.000
CombatLabel.TextWrapped = true

Blatant1.Name = "Blatant1"
Blatant1.Parent = Frame
Blatant1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Blatant1.Size = UDim2.new(0, 161, 0, 474)

UIListLayout_2.Parent = Blatant1
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

BlatantLabel.Name = "BlatantLabel"
BlatantLabel.Parent = Blatant1
BlatantLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BlatantLabel.Size = UDim2.new(0, 161, 0, 50)
BlatantLabel.Font = Enum.Font.SourceSansBold
BlatantLabel.Text = "Blatant"
BlatantLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
BlatantLabel.TextScaled = true
BlatantLabel.TextSize = 14.000
BlatantLabel.TextWrapped = true

Render.Name = "Render"
Render.Parent = Frame
Render.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Render.Size = UDim2.new(0, 161, 0, 474)

UIListLayout_3.Parent = Render
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder

RenderLabel.Name = "RenderLabel"
RenderLabel.Parent = Render
RenderLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RenderLabel.Size = UDim2.new(0, 161, 0, 50)
RenderLabel.Font = Enum.Font.SourceSansBold
RenderLabel.Text = "Render"
RenderLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
RenderLabel.TextScaled = true
RenderLabel.TextSize = 14.000
RenderLabel.TextWrapped = true

Utility.Name = "Utility"
Utility.Parent = Frame
Utility.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Utility.Size = UDim2.new(0, 161, 0, 474)

UIListLayout_4.Parent = Utility
UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder

UtilityLabel.Name = "UtilityLabel"
UtilityLabel.Parent = Utility
UtilityLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UtilityLabel.Size = UDim2.new(0, 161, 0, 50)
UtilityLabel.Font = Enum.Font.SourceSansBold
UtilityLabel.Text = "Utility"
UtilityLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
UtilityLabel.TextScaled = true
UtilityLabel.TextSize = 14.000
UtilityLabel.TextWrapped = true

World.Name = "World"
World.Parent = Frame
World.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
World.Size = UDim2.new(0, 161, 0, 474)

UIListLayout_5.Parent = World
UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder

WorldLabel.Name = "WorldLabel"
WorldLabel.Parent = World
WorldLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WorldLabel.Size = UDim2.new(0, 161, 0, 50)
WorldLabel.Font = Enum.Font.SourceSansBold
WorldLabel.Text = "World"
WorldLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
WorldLabel.TextScaled = true
WorldLabel.TextSize = 14.000
WorldLabel.TextWrapped = true

UIListLayout_6.Parent = Frame
UIListLayout_6.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_6.Padding = UDim.new(0, 100)
	
	local Blatant = {}
	
	function Blatant:AddButton(Name)
		local TextButton = Instance.new("TextButton")

		TextButton.Parent = Blatant_2
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
	
	wait(10)

Frame:Destroy()
Combat:Destroy()
UIListLayout:Destroy()
CombatLabel:Destroy()
Blatant1:Destroy()
UIListLayout_2:Destroy()
BlatantLabel:Destroy()
Render:Destroy()
UIListLayout_3:Destroy()
RenderLabel:Destroy()
Utility:Destroy()
UIListLayout_4:Destroy()
UtilityLabel:Destroy()
World:Destroy()
UIListLayout_5:Destroy()
WorldLabel:Destroy()
UIListLayout_6:Destroy()
	return Blatant
end

return Lib
