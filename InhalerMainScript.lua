local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Inhaler V10000", "GrapeTheme")
local speed = false



local Main = Window:NewTab("Main")
local Combat = Main:NewSection("Combat")

Combat:NewToggle("KillAura", "Automatically Attack Players", function(state)
    if state then
        for i,v in pairs(game.Players:GetPlayers()) do
            if v.Team ~= game.Players.LocalPlayer.Team and v.Character and game.Players.LocalPlayer.Character.HandInvItem.Value ~= nil and game.Players.LocalPlayer:DistanceFromCharacter(v.Character.HumanoidRootPart.Position) < 60 then
                game.ReplicatedStorage:WaitForChild("rbxts_include")["node_modules"]["net"]["out"]["_NetManaged"].SwordHit:InvokeServer({
                    entityInstance = v.Character,
                    weapon = game.Players.LocalPlayer.Character.HandInvItem.Value
                })
            end
        end
    else

    end
end)

Combat:NewToggle("Speed", "ToggleInfo", function(state)
    if state then
        print(speed)
        speed = state
    else
        speed = state
        print(speed)
    end
end)

Combat:NewSlider("SliderText", "SliderInfo", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    if speed == true then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    else
        while speed == false do
          game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
          wait(0.5)
        end
    end
end)

local Other = Window:NewTab("Other")
local Other1 = Other:NewSection("Other")

Other1:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.RightShift, function()
	Library:ToggleUI()
end)
