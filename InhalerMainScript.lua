local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Inhaler X", "GrapeTheme")

-- Tab & Section Creation --

local CombatTab = Window:NewTab("Combat")
local Combat =CombatTab:NewSection("Combat")

local PlayerTab = Window:NewTab("Player")
local Player = PlayerTab:NewSection("Player")

local BlatantTab = Window:NewTab("Blatant")
local Blatant = BlatantTab:NewSection("Blatant")

local WorldTab = Window:NewTab("World")
local World = WorldTab:NewSection("World")

local RenderTab = Window:NewTab("Render")
local Render = RenderTab:NewSection("Render")

local KeybindsTab = Window:NewTab("Keybinds")
local KeybindsTG = RenderTab:NewSection("ToggleGui")
local KeybindsC = RenderTab:NewSection("Combat")
local KeybindsP = RenderTab:NewSection("Player")
local KeybindsB = RenderTab:NewSection("Blatant")
local KeybindsW = RenderTab:NewSection("World")
local KeybindsR = RenderTab:NewSection("Render")


local CreditsTab = Window:NewTab("Credits")
local Credits = OtherTab:NewSection("Credits")

-- Combat Tab --

Combat:NewToggle("KillAura", "Automatically Attack Players", function(state)
    if state then
	repeat
		wait(0.3)
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

-- Player Tab --

Player:NewSlider("Speed", "Changes Player Speed, 23 Is Reccomended", 50, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)


-- Blatant Tab --

-- World Tab --

-- Render Tab --

-- Keybinds Tab --

KeybindsTG:NewKeybind("Toggle Gui", "Toggles The Inhaler X Gui", Enum.KeyCode.RightShift, function()
	Library:ToggleUI()
end)

KeybindsC:NewKeybind("Kill Aura", "Automatically Attacks Players", Enum.Keycode.F, function()
	
end)

-- Credits Tab --

Credits:NewLabel("Owner - Breadway (@plasticbread849)")
Credits:NewLabel("Co-Owner - Emi H (@emirtube11)")
Credits:NewLabel("Gui Library - xHeptc")
