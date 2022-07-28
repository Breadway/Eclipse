local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Eclipse", "GrapeTheme")

-- Variables --

local KillToggled = false
local SpeedToggled = false
local GravityToggled = false
local Autoclicker = false
local Velocity = false
local NoFall = false
local Gravity = 196.2
local speed = 16

-- Combat Tab --

local CombatTab = Window:NewTab("Combat")
local Combat = CombatTab:NewSection("Combat")

Combat:NewToggle("Print And Change Sword", "Speed Method", function(v)
    getgenv().hfg = v
    while true do
    if not getgenv().hfg then return end
    local wood = game:GetService("ReplicatedStorage").Inventories[game.Players.LocalPlayer.Name]:FindFirstChild("wood_sword")
    local stone = game:GetService("ReplicatedStorage").Inventories[game.Players.LocalPlayer.Name]:FindFirstChild("stone_sword")
    local iron = game:GetService("ReplicatedStorage").Inventories[game.Players.LocalPlayer.Name]:FindFirstChild("iron_sword")
    local diamond = game:GetService("ReplicatedStorage").Inventories[game.Players.LocalPlayer.Name]:FindFirstChild("diamond_sword")
    local emerald = game:GetService("ReplicatedStorage").Inventories[game.Players.LocalPlayer.Name]:FindFirstChild("emerald_sword")
    local rage = game:GetService("ReplicatedStorage").Inventories[game.Players.LocalPlayer.Name]:FindFirstChild("rageblade")
    print("Done!")
    wait(1)
    if wood then
    ourS = "wood_sword"
    end
    if stone then
    ourS = "stone_sword"
    end
    if iron then
    ourS = "iron_sword"
    end
    if diamond then
    ourS = "diamond_sword"
    end
    if emerald then
    ourS = "emerald_sword"
    end
    if rage then
    ourS = "rageblade"
    end
    print("sword chanced to "..ourS)
    wait(0.5)
    print(ourS)
    wait()
    end
    end)

local KillAura = Combat:NewToggle("KillAura", "Automatically Attack Players", function(v)
    getgenv().a = v
    while true do
    if not getgenv().a then return end
    for i, v in pairs(game.Players:GetPlayers()) do
            if (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 80 then
                local args = {
    [1] = {
         ["chargedAttack"] = {
             ["chargeRatio"] = 0
         },
         ["entityInstance"] = v.Character,
         ["validate"] = {
             ["targetPosition"] = {
                 ["value"] = v.Character.HumanoidRootPart.Position
             },
             ["selfPosition"] = {
                 ["value"] = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
             }
         },
         ["weapon"] = game:GetService("ReplicatedStorage").Inventories[game.Players.LocalPlayer.Name][ourS]
     }
        }
    end
end)

Combat:NewToggle("Velocity", "No KnockBack", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

Combat:NewToggle("Autoclicker", "Clicks when mouse button is held down", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

Combat:NewToggle("Aim Assist", "Better Aim Because Ur Bad", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

-- Player Tab --

local PlayerTab = Window:NewTab("Player")
local Player = PlayerTab:NewSection("Player")

Player:NewButton("Normal Speed", "Speed method", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

Player:NewButton("23 Speed Method", "Speed method", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 23
end)

Player:NewToggle("Loop Speed Method 1", "Speed Method", function(v)
getgenv().g = v
while true do
if not getgenv().g then return end
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 30
wait(0.5)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 18
wait(0.5)
end
end)

Player:NewToggle("Loop Speed Method 2", "Speed Method", function(v)
getgenv().s = v
while true do
if not getgenv().s then return end
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 40
wait(0.2)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 15
wait(0.5)
end
end)

Player:NewToggle("Loop Speed Method 3", "Speed Method", function(v)
getgenv().s = v
while true do
if not getgenv().s then return end
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
wait(0.2)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 23
wait(0.5)
end
end)

Player:NewToggle("Loop Speed Method 4 (FAST) (RISKY)", "Speed Method", function(v)
getgenv().s = v
while true do
if not getgenv().s then return end
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 90
wait(0.2)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 23
wait(0.5)
end
end)


-- Blatant Tab --

local BlatantTab = Window:NewTab("Blatant")
local Blatant = BlatantTab:NewSection("Blatant")

Blatant:NewToggle("NoFall", "Take No Fall Damage", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

Blatant:NewToggle("HighJump", "Jump High", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

Blatant:NewButton("LongJump", "Fly", function()
    game.workspace.Gravity = 30
    wait(2.7)
    game.workspace.Gravity = 169
end)

Blatant:NewToggle("NoSlowdown", "Dont Slowdown When using Bows, Apples etc", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

Blatant:NewSlider("Gravity", " ", 500, -500, function(s) -- 500 (MaxValue) | 0 (MinValue)
    if GravityToggled then
		Gravity = s
		return	GravityToggle
	else
		Gravity = 196.2
		return GravityToggle
	end
	game.workspace.Gravity = Gravity
end)

-- World Tab --

local WorldTab = Window:NewTab("World")
local World = WorldTab:NewSection("World")

-- Render Tab --

local RenderTab = Window:NewTab("Render")
local Render = RenderTab:NewSection("Render")

-- Keybinds Tab --

local KeybindsTab = Window:NewTab("Keybinds")
local KeybindsTG = KeybindsTab:NewSection("ToggleGui")
local KeybindsC = KeybindsTab:NewSection("Combat")
local KeybindsP = KeybindsTab:NewSection("Player")
local KeybindsB = KeybindsTab:NewSection("Blatant")
local KeybindsW = KeybindsTab:NewSection("World")
local KeybindsR = KeybindsTab:NewSection("Render")

KeybindsTG:NewKeybind("Toggle Gui", "Toggles The Inhaler X Gui", Enum.KeyCode.RightShift, function()
	Library:ToggleUI()
end)

KeybindsC:NewKeybind("Toggle KillAura", "Automatically Attack Players", Enum.KeyCode.R, function()
	if KillToggled then
		KillAura:UpdateToggle("Toggle Off")
	elseif not KillToggled then
		KillAura:UpdateToggle("Toggle On")
	end
end) 

KeybindsP:NewKeybind("Toggle Speed", "Changes Player Speed, 23 Is Reccomended", Enum.KeyCode.V, function()
	if SpeedToggled then
		SpeedToggle:UpdateToggle("Toggle Off")
	elseif not SpeedToggled then
		SpeedToggle:UpdateToggle("Toggle On")
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
	end
end)

KeybindsB:NewKeybind("LongJump", "gra", Enum.KeyCode.X, function()
	game.workspace.Gravity = 30
    wait(2.7)
    game.workspace.Gravity = 169
end)

-- Credits Tab --

local CreditsTab = Window:NewTab("Credits")
local Credits = CreditsTab:NewSection("Credits")

Credits:NewLabel("Owner - Breadway (@Breadway#2678)")
Credits:NewLabel("Co-Owner - Emi H (@emirtube11)")
Credits:NewLabel("Gui Library - xHeptc")
