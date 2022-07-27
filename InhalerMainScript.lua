local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Inhaler X", "GrapeTheme")
local KillToggled = false
local SpeedToggled = false
local speed = 16

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

local KillAura = Combat:NewToggle("KillAura", "Automatically Attack Players", function(state)
    if state then
	KillToggled = true
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
    else
	KillToggled = false
    end
end)

-- Player Tab --

local SpeedToggle = Player:NewToggle("Speed", "ToggleInfo", function(state)
    if state then
        SpeedToggled = True
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
    else
        SpeedToggled = false
	speed = 16
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
    end
end)

Player:NewSlider("Speed", "Changes Player Speed, 23 Is Reccomended", 50, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
	if SpeedToggled then
		speed = s
		return	SpeedToggle
	else
		speed = 16
		return SpeedToggle
	end
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
end)


-- Blatant Tab --

-- World Tab --

-- Render Tab --

-- Keybinds Tab --

KeybindsTG:NewKeybind("Toggle Gui", "Toggles The Inhaler X Gui", Enum.KeyCode.RightShift, function()
	Library:ToggleUI()
end)

KeybindsC:NewKeybind("Toggle KillAura", "Automatically Attack Players", Enum.KeyCode.RightShift, function()
	if KillToggled then
		KillAura:UpdateToggle("Toggle Off")
	elseif not KillToggled
		KillAura:UpdateToggle("Toggle On")
	end
end) 

KeybindsP:NewKeybind("Toggle Speed", "Changes Player Speed, 23 Is Reccomended", Enum.KeyCode.RightShift, function()
	if SpeedToggled then
		SpeedToggle:UpdateToggle("Toggle Off")
	elseif not SpeedToggled then
		SpeedToggle:UpdateToggle("Toggle On")
	end
end)

-- Credits Tab --

Credits:NewLabel("Owner - Breadway (@plasticbread849)")
Credits:NewLabel("Co-Owner - Emi H (@emirtube11)")
Credits:NewLabel("Gui Library - xHeptc")
