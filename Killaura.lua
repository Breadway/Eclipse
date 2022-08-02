-- Re edited by emirtube11 
-- Main owner Breadway

-- Lol i spend 5 hours on it :skull:

local ourS = "wood_sword"
local swords = {"wood_sword", "stone_sword", "iron_sword", "diamond_sword", "emerald_sword", "rageblade"}

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Inhaler X", "GrapeTheme")
local speed = false

local Tab = Window:NewTab("Combat")
local Section = Tab:NewSection("Combat")

local Gap = Window:NewTab("Blatant")

local Gaps = Gap:NewSection("Speed Methods")
local FGaps = Gap:NewSection("Fly/Gravity Methods")

Section:NewButton("Fix Killaura", "Fixes Killaura folder", function()
    game:GetService("ReplicatedStorage").Inventories[game.Players..Name]:Remove()
end)

Section:NewToggle("Print And Change Sword", "Speed Method", function(v)
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

Section:NewToggle("Kill Aura", "Hit Automaticly", function(v)
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

game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.plxlxcoyhxqKcbeXjUxcnjIua:InvokeServer(unpack(args))
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://522635514"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
track:Play(0.0, 0.5, 40)

               wait(0)
           end
       end
end
wait(0)
end)
Gaps:NewButton("Normal Speed", "Speed method", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

Gaps:NewButton("23 Speed Method", "Speed method", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 23
end)

Gaps:NewToggle("Loop Speed Method 1", "Speed Method", function(v)
getgenv().g = v
while true do
if not getgenv().g then return end
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 30
wait(0.5)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 18
wait(0.5)
end
end)

Gaps:NewToggle("Loop Speed Method 2", "Speed Method", function(v)
getgenv().s = v
while true do
if not getgenv().s then return end
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 40
wait(0.2)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 15
wait(0.5)
end
end)

Gaps:NewToggle("Loop Speed Method 3", "Speed Method", function(v)
getgenv().s = v
while true do
if not getgenv().s then return end
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
wait(0.2)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 23
wait(0.5)
end
end)

Gaps:NewToggle("Loop Speed Method 4 (FAST) (RISKY)", "Speed Method", function(v)
getgenv().s = v
while true do
if not getgenv().s then return end
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 90
wait(0.2)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 23
wait(0.5)
end
end)

FGaps:NewKeybind("Gravity 30 For 2.7 Sec Method", "gra", Enum.KeyCode.X, function()
	game.workspace.Gravity = 30
    wait(2.7)
    game.workspace.Gravity = 169
end)
FGaps:NewKeybind("Normal Gravity", "gra", Enum.KeyCode.V, function()
	game.workspace.Gravity = 169
end)

local Other = Window:NewTab("Other")
local Other1 = Other:NewSection("Other")

Other1:NewLabel("Credits - plasticbread849, emirtube11")

Other1:NewKeybind("Toggle Gui", "lol", Enum.KeyCode.RightShift, function()
	Library:ToggleUI()
end)
