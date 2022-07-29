
local injected = true
local Library1 = {}

function CreateGui()
    local ScreenGui = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")
    local CombatFrame = Instance.new("Frame")
    local UIListLayout_2 = Instance.new("UIListLayout")
    local TextLabel = Instance.new("TextLabel")
    local BlatantFrame = Instance.new("Frame")
    local UIListLayout_3 = Instance.new("UIListLayout")
    local TextLabel_2 = Instance.new("TextLabel")
    local UtilityFrame = Instance.new("Frame")
    local UIListLayout_4 = Instance.new("UIListLayout")
    local TextLabel_3 = Instance.new("TextLabel")
    local WorldFrame = Instance.new("Frame")
    local UIListLayout_5 = Instance.new("UIListLayout")
    local TextLabel_4 = Instance.new("TextLabel")
    local RenderFrame = Instance.new("Frame")
    local UIListLayout_6 = Instance.new("UIListLayout")
    local TextLabel_5 = Instance.new("TextLabel")

    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ScreenGui.Name = "Eclipse"

    Frame.Parent = ScreenGui
    Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Frame.BackgroundTransparency = 1.000
    Frame.Position = UDim2.new(0.00825206283, 0, 0.0159118734, 0)
    Frame.Size = UDim2.new(0, 1310, 0, 778)

    UIListLayout.Parent = Frame
    UIListLayout.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 75)

    CombatFrame.Name = "CombatFrame"
    CombatFrame.Parent = Frame
    CombatFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    CombatFrame.BackgroundTransparency = 1.000
    CombatFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
    CombatFrame.Position = UDim2.new(0.214553624, 0, 0.0232558139, 0)
    CombatFrame.Size = UDim2.new(0, 200, 0, 779)

    UIListLayout_2.Parent = CombatFrame
    UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

    TextLabel.Parent = CombatFrame
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.Size = UDim2.new(0, 200, 0, 50)
    TextLabel.Font = Enum.Font.Arcade
    TextLabel.Text = "CombatFrame"
    TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.TextScaled = true
    TextLabel.TextSize = 14.000
    TextLabel.TextWrapped = true

    BlatantFrame.Name = "BlatantFrame"
    BlatantFrame.Parent = Frame
    BlatantFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    BlatantFrame.BackgroundTransparency = 1.000
    BlatantFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
    BlatantFrame.Position = UDim2.new(0.393098265, 0, 0.0232558139, 0)
    BlatantFrame.Size = UDim2.new(0, 200, 0, 779)

    UIListLayout_3.Parent = BlatantFrame
    UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder

    TextLabel_2.Parent = BlatantFrame
    TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_2.Size = UDim2.new(0, 200, 0, 50)
    TextLabel_2.Font = Enum.Font.Arcade
    TextLabel_2.Text = "BlatantFrame"
    TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel_2.TextScaled = true
    TextLabel_2.TextSize = 14.000
    TextLabel_2.TextWrapped = true

    UtilityFrame.Name = "UtilityFrame"
    UtilityFrame.Parent = Frame
    UtilityFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UtilityFrame.BackgroundTransparency = 1.000
    UtilityFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
    UtilityFrame.Position = UDim2.new(0.0382595584, 0, 0.0232558139, 0)
    UtilityFrame.Size = UDim2.new(0, 200, 0, 779)

    UIListLayout_4.Parent = UtilityFrame
    UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder

    TextLabel_3.Parent = UtilityFrame
    TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_3.Size = UDim2.new(0, 200, 0, 50)
    TextLabel_3.Font = Enum.Font.Arcade
    TextLabel_3.Text = "UtilityFrame"
    TextLabel_3.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel_3.TextScaled = true
    TextLabel_3.TextSize = 14.000
    TextLabel_3.TextWrapped = true

    WorldFrame.Name = "WorldFrame"
    WorldFrame.Parent = Frame
    WorldFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    WorldFrame.BackgroundTransparency = 1.000
    WorldFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
    WorldFrame.Position = UDim2.new(0.0382595584, 0, 0.0232558139, 0)
    WorldFrame.Size = UDim2.new(0, 200, 0, 779)

    UIListLayout_5.Parent = WorldFrame
    UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder

    TextLabel_4.Parent = WorldFrame
    TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_4.Size = UDim2.new(0, 200, 0, 50)
    TextLabel_4.Font = Enum.Font.Arcade
    TextLabel_4.Text = "WorldFrame"
    TextLabel_4.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel_4.TextScaled = true
    TextLabel_4.TextSize = 14.000
    TextLabel_4.TextWrapped = true

    RenderFrame.Name = "RenderFrame"
    RenderFrame.Parent = Frame
    RenderFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    RenderFrame.BackgroundTransparency = 1.000
    RenderFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
    RenderFrame.Position = UDim2.new(0.0382595584, 0, 0.0232558139, 0)
    RenderFrame.Size = UDim2.new(0, 200, 0, 779)

    UIListLayout_6.Parent = RenderFrame
    UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder

    TextLabel_5.Parent = RenderFrame
    TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_5.Size = UDim2.new(0, 200, 0, 50)
    TextLabel_5.Font = Enum.Font.Arcade
    TextLabel_5.Text = "RenderFrame"
    TextLabel_5.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel_5.TextScaled = true
    TextLabel_5.TextSize = 14.000
    TextLabel_5.TextWrapped = true
    local Combat = {}
    function CreateToggle(Name)
       local TextButton_5 = Instance.new("TextButton")
       TextButton_5.Parent = CombatFrame
       TextButton_5.Text = Name
       TextButton_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
       TextButton_5.Size = UDim2.new(0, 200, 0, 50)
       TextButton_5.Font = Enum.Font.Arcade
        TextButton_5.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextButton_5.TextScaled = true
        TextButton_5.TextSize = 14.000
        TextButton_5.TextWrapped = true
    end
    print(injected)
    
    return Combat
end

local e = CreateGui()

function CreateToggle(Name)
   e:CreateToggle(Name)
end


return Library1
