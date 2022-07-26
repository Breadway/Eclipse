local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Inhaler V10000", "GrapeTheme")

Section:NewKeybind("Left Shift", "KeybindInfo", Enum.KeyCode.RightShift, function()
	Library:ToggleUI()
end)

local Main = Window:NewTab("Main")
local Combat = Main:NewSection("Combat")

Combat:NewToggle("KillAura", "Automatically Attack Players", function(state)
    if state then
        local killaura = true
      while state do
        if killaura then
           for i,v in pairs(game.Players:GetPlayers()) do
           if v.Team ~= game.Players.LocalPlayer.Team and v.Character and game.Players.LocalPlayer.Character.HandInvItem.Value ~= nil and game.Players.LocalPlayer:DistanceFromCharacter(v.Character.HumanoidRootPart.Position) < 60 then
               game.ReplicatedStorage:WaitForChild("rbxts_include")["node_modules"]["net"]["out"]["_NetManaged"].SwordHit:InvokeServer({
                   entityInstance = v.Character,
                   weapon = game.Players.LocalPlayer.Character.HandInvItem.Value
               })
           end
       end
        end
        wait(1)
      end
    else
        killaura = false
    end
end)
