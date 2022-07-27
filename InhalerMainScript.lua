local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Inhaler X", "GrapeTheme")

-- Variables --

local KillToggled = false
local SpeedToggled = false
local GravityToggled = false
local Autoclicker = false
local Velocity = false
local NoFall = false
local Gravity = 196.2
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

Blatant:NewToggle("LongJump", "Fly", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

Blatant:NewToggle("NoSlowdown", "Dont Slowdown When using Bows, Apples etc", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

local GravityToggle = Blatant:NewToggle("Gravity", "Changes Workspace Gravity", function(state)
    if state then
        GravityToggled = True
	game.workspace.Gravity = Gravity
    else
        GravityToggled = false
	Gravity = 196.2
	game.workspace.Gravity = Gravity
    end
    game.workspace.Gravity = Gravity
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

-- Render Tab --

-- Keybinds Tab --

KeybindsTG:NewKeybind("Toggle Gui", "Toggles The Inhaler X Gui", Enum.KeyCode.RightShift, function()
	Library:ToggleUI()
end)

KeybindsC:NewKeybind("Toggle KillAura", "Automatically Attack Players", Enum.KeyCode.R, function()
	if KillToggled then
		KillAura:UpdateToggle("Toggle Off")
	elseif not KillToggled
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

-- Credits Tab --

Credits:NewLabel("Owner - Breadway (@Breadway#2678)")
Credits:NewLabel("Co-Owner - Emi H (@emirtube11)")
Credits:NewLabel("Gui Library - xHeptc")
