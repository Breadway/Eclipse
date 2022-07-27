local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Inhaler V10000", "GrapeTheme")



local Main = Window:NewTab("Main")
local Combat = Main:NewSection("Combat")

Combat:NewToggle("KillAura", "Automatically Attack Players", function(state)
    if state then
	repeat
		wait(0.1)
        	for i,v in pairs(game.Players:GetPlayers()) do
			local vchr = v.Character
			if vchr and v~=Player and v.Team~=Player.Team and Character and Character.Humanoid.Health>0 then
				local vhum = vchr:FindFirstChild("Humanoid")
				local vroot = vchr:FindFirstChild("HumanoidRootPart")
				if vhum and vroot and vhum.Health>0 and (vroot.Position-Character.HumanoidRootPart.Position).magnitude<=Range then
					RemoteFolder.SwordHit:InvokeServer({entityInstance=vchr,weapon=Character.HandInvItem.Value})
				end
			end
		end
	until not state

    end
end)

Combat:NewSlider("SliderText", "SliderInfo", 50, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

local Other = Window:NewTab("Other")
local Other1 = Other:NewSection("Other")

Other1:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.RightShift, function()
	Library:ToggleUI()
end)
