local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local RemoteFolder = game.ReplicatedStorage:WaitForChild("rbxts_include")["node_modules"]["net"]["out"]["_NetManaged"]
local Character = game.Players.LocalPlayer.Character
local RunService = game:GetService("RunService")
local LongJumpToggleVal = false
local BowAuraToggleVal = false
local FastConsumeToggeVal = false
local HighJumpToggleVal = false
local NoFallToggleVal = false
local NoSlowdownToggleVal = false
local PhaseToggleVal = false
local ScaffoldToggleVal = false
local SwimToggleVal = false
local lplr = game.Players.LocalPlayer

-- Anti error
for i,v in pairs(getconnections(game:GetService("ScriptContext").Error)) do v:Disable() end
-- Lol

local repstorage = game.ReplicatedStorage

local entity = loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/Libraries/entityHandler.lua", true))()

local Flamework = require(repstorage["rbxts_include"]["node_modules"]["@flamework"].core.out).Flamework
repeat task.wait() until Flamework.isInitialized

local KnitClient = debug.getupvalue(require(lplr.PlayerScripts.TS.knit).setup, 6)

local Client = require(repstorage.TS.remotes).default.Client

local function getremote(tab)
	for i,v in pairs(tab) do
		if v == "Client" then
			return tab[i + 1]
		end
	end
	return ""
end

local bedwars = {

["ClientHandler"] = Client,
["PaintRemote"] = getremote(debug.getconstants(KnitClient.Controllers.PaintShotgunController.fire))

}

print(Client)

local function GetNearestHumanoidToPosition(player, distance, overridepos)
	local closest, returnedplayer = distance, nil
    if entity.isAlive then
        for i, v in pairs(entity.entityList) do
			if v.Targetable and targetCheck(v) then
				local mag = (entity.character.HumanoidRootPart.Position - v.RootPart.Position).magnitude
				if overridepos and mag > distance then 
					mag = (overridepos - v.RootPart.Position).magnitude
				end
				if mag <= closest then
					closest = mag
					returnedplayer = v
				end
			end
        end
	return returnedplayer
end
end

function getinv(plr)
    local plr = plr or lplr
    local thingy, thingytwo = pcall(function() return InventoryUtil.getInventory(plr) end)
    return (thingy and thingytwo or {
        items = {},
        armor = {},
        hand = nil
    })
end

function getmapname()
    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
        if v.Name == "Map" then
            if v:FindFirstChild("Worlds") then
                for g, c in pairs(v.Worlds:GetChildren()) do
                    if c.Name ~= "Void_World" then
                        return c.Name
                    end
		        end
		    end
		end
	end
end

local function getScaffold(vec, diagonaltoggle)
    local realvec = Vector3.new(math.floor((vec.X / 3) + 0.5) * 3, math.floor((vec.Y / 3) + 0.5) * 3, math.floor((vec.Z / 3) + 0.5) * 3) 
    local newpos = (oldpos - realvec)
    local returedpos = realvec
    if entity.isAlive then
        local angle = math.deg(math.atan2(-lplr.Character.Humanoid.MoveDirection.X, -lplr.Character.Humanoid.MoveDirection.Z))
        local goingdiagonal = (angle >= 130 and angle <= 150) or (angle <= -35 and angle >= -50) or (angle >= 35 and angle <= 50) or (angle <= -130 and angle >= -150)
        if goingdiagonal and ((newpos.X == 0 and newpos.Z ~= 0) or (newpos.X ~= 0 and newpos.Z == 0)) and diagonaltoggle then
            return oldpos
        end
    end
    return realvec
end

function placeblockthing(newpos, customblock)
    local placeblocktype = (customblock or getwool())
    blocktable.blockType = placeblocktype
    if blockcontroller:isAllowedPlacement(lplr, placeblocktype, Vector3.new(newpos.X / 3, newpos.Y / 3, newpos.Z / 3)) and getItem(placeblocktype) then
        return blocktable:placeBlock(Vector3.new(newpos.X / 3, newpos.Y / 3, newpos.Z / 3))
    end
end

local function getwool()
	for i5, v5 in pairs(getinv(lplr)["items"]) do
		if v5["itemType"]:match("wool") or v5["itemType"]:match("grass") then
			return v5["itemType"], v5["amount"]
		end
	end	
	return nil
end

local function getScaffold(vec, diagonaltoggle)
    local realvec = Vector3.new(math.floor((vec.X / 3) + 0.5) * 3, math.floor((vec.Y / 3) + 0.5) * 3, math.floor((vec.Z / 3) + 0.5) * 3) 
    local newpos = (oldpos - realvec)
    local returedpos = realvec
    if entity.isAlive then
        local angle = math.deg(math.atan2(-lplr.Character.Humanoid.MoveDirection.X, -lplr.Character.Humanoid.MoveDirection.Z))
        local goingdiagonal = (angle >= 130 and angle <= 150) or (angle <= -35 and angle >= -50) or (angle >= 35 and angle <= 50) or (angle <= -130 and angle >= -150)
        if goingdiagonal and ((newpos.X == 0 and newpos.Z ~= 0) or (newpos.X ~= 0 and newpos.Z == 0)) and diagonaltoggle then
            return oldpos
        end
    end
    return realvec
end

local Window = OrionLib:MakeWindow({Name = "Eclipse", HidePremium = true, SaveConfig = true, ConfigFolder = "Eclipse"})

local Combat = Window:MakeTab({
Name = "Combat",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})


local veloh, velov = {["Value"] = 0},{["Value"] = 0}
local velocity = {["Enabled"] = false}
local oldveloh, oldvelov, oldvelofunc = debug.getupvalue(require(game:GetService("ReplicatedStorage").TS.damage["knockback-util"]).KnockbackUtil.calculateKnockbackVelocity, 1)["kbDirectionStrength"], debug.getupvalue(require(game:GetService("ReplicatedStorage").TS.damage["knockback-util"]).KnockbackUtil.calculateKnockbackVelocity, 1)["kbUpwardStrength"], require(game:GetService("ReplicatedStorage")["rbxts_include"]["node_modules"]["@easy-games"]["game-core"].out["shared"].util["velocity-util"]).VelocityUtil.applyVelocity
local Velocity = Combat:AddToggle({
    Name = "Velocity",
    Default = false,
    Save = true,
    Flag = "Velocity",
    Callback = function(Value)
        if Value then
            debug.getupvalue(require(game:GetService("ReplicatedStorage").TS.damage["knockback-util"]).KnockbackUtil.calculateKnockbackVelocity, 1)["kbDirectionStrength"] = oldveloh * (veloh["Value"] / 100)
            debug.getupvalue(require(game:GetService("ReplicatedStorage").TS.damage["knockback-util"]).KnockbackUtil.calculateKnockbackVelocity, 1)["kbUpwardStrength"] = oldvelov * (velov["Value"] / 100)
            if veloh["Value"] == 0 and velov["Value"] == 0 then
                require(game:GetService("ReplicatedStorage")["rbxts_include"]["node_modules"]["@easy-games"]["game-core"].out["shared"].util["velocity-util"]).applyVelocity = function(...) end
            else
                require(game:GetService("ReplicatedStorage")["rbxts_include"]["node_modules"]["@easy-games"]["game-core"].out["shared"].util["velocity-util"]).applyVelocity = oldvelofunc
            end
        else
            require(game:GetService("ReplicatedStorage")["rbxts_include"]["node_modules"]["@easy-games"]["game-core"].out["shared"].util["velocity-util"]).applyVelocity = oldvelofunc
            debug.getupvalue(require(game:GetService("ReplicatedStorage").TS.damage["knockback-util"]).KnockbackUtil.calculateKnockbackVelocity, 1)["kbDirectionStrength"] = oldveloh
            debug.getupvalue(require(game:GetService("ReplicatedStorage").TS.damage["knockback-util"]).KnockbackUtil.calculateKnockbackVelocity, 1)["kbUpwardStrength"] = oldvelov
        end
    end  
})

print(OrionLib.Flags["Velocity"].Value)

local TargetPart = Instance.new("Part")
TargetPart.Color = Color3.fromRGB(200, 0, 0)
TargetPart.Transparency = 0.6
TargetPart.CanCollide = false
TargetPart.Anchored = true

local KillAura = Combat:AddToggle({
    Name = "KillAura (qwertyui#0001 is best)",
    Default = false,
    Save = true,
    Flag = "KillAura",
    Callback = function(Value)
        shared.toggleee = Value
while shared.toggleee do
wait()
							local plrs = game:GetService("Players"):GetPlayers()
							for i,plr in pairs(plrs) do
									local selfpos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
									local newpos = plr.Character:FindFirstChild("UpperTorso").Position
bedwars["ClientHandler"]:Get(bedwars["PaintRemote"]):SendToServer(selfpos, CFrame.lookAt(selfpos, newpos).lookVector)
if plr.Character.Humanoid.Health == 0 then
if not plr.Character.UpperTorso then
print("a")
plr.Character.UpperTorso.CFrame = lplr.Character.HumanoidRootPart.CFrame
end
end
end
end
end
})

print(OrionLib.Flags["KillAura"].Value)

local Blatant = Window:MakeTab({
    Name = "Blatant",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

--[[
local BowAura = Blatant:AddToggle({
    Name = "BowAura",
    Default = false,
    Save = true,
    Flag = "BowAura",
    Callback = function(Value)
        
    end    
})

print(OrionLib.Flags["BowAura"].Value)

local FastConsume = Blatant:AddToggle({
    Name = "FastConsume",
    Default = false,
    Save = true,
    Flag = "FastConsume",
    Callback = function(Value)
        
    end    
})

print(OrionLib.Flags["FastConsume"].Value)
--]]
local flymesto = false
local flyme = Blatant:AddToggle({
	Name = "Fly",
	Default = false,
	Callback = function(vfs)
        LongJumpToggleVall = vfs
        longjumpvall = vfs
shared.toggled2 = vfs
shared.speed = 35
local Step = 0
while shared.toggled2 do
	wait(0.400)
lplr.Character.Humanoid.WalkSpeed = 23
	local x = lplr.Character.HumanoidRootPart.Velocity.X
	local z = lplr.Character.HumanoidRootPart.Velocity.Z
	lplr.Character.HumanoidRootPart.Velocity = Vector3.new(x,35,z)
end
end
})

local healthexploit = Blatant:AddToggle({
	Name = "Loop Health (Buy Medkit)",
	Default = false,
	Callback = function(vfss)
shared.toggled2 = vfss
shared.speed = 35
local Step = 0
while shared.toggled2 do
wait(0.100)
local args = {
    [1] = "HEALING_BACKPACK"
}

game:GetService("ReplicatedStorage"):FindFirstChild("events-@easy-games/game-core:shared/game-core-networking@getEvents.Events").useAbility:FireServer(unpack(args))
wait()
end
end
})

local highjumpforce = {["Value"] = 50}
local HighJump = Blatant:AddButton({
    Name = "HighJump",
    Callback = function()
        local highjumpval = true
for i = 1,25 do
    task.wait(0.05)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,i * 3,0)
end
end   
})

local mapname = getmapname()
local NoFall = Blatant:AddToggle({
    Name = "NoFall",
    Default = false,
    Save = true,
    Flag = "NoFall",
    Callback = function(Value)
getgenv().asfg = Value
while true do
if not getgenv().asfg then return end
game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.GroundHit:FireServer(workspace.Map.Worlds[mapname].Blocks,1645488277.345853)
wait(0.1)
end
    end    
})

print(OrionLib.Flags["NoFall"].Value)

--[[
local NoSlowdown = Blatant:AddToggle({
    Name = "NoSlowdown",
    Default = false,
    Save = true,
    Flag = "NoSlowdown",
    Callback = function(Value)
        
    end    
})

print(OrionLib.Flags["NoSlowdown"].Value)

local Phase = Blatant:AddToggle({
    Name = "Phase",
    Default = false,
    Save = true,
    Flag = "Phase",
    Callback = function(Value)
        
    end    
})

print(OrionLib.Flags["Phase"].Value)

--]]
local Scaffold = Blatant:AddToggle({
    Name = "Scaffold",
    Default = false,
    Callback = function(Value)
        if Value then
            spawn(function()
                local yestwo = RunService.Heartbeat:Connect(function(step)
                    if (not sussythingy) then return end
                    local y = lplr.Character.HumanoidRootPart.Position.y
                    local x = lplr.Character.HumanoidRootPart.Position.x
                    local z = lplr.Character.HumanoidRootPart.Position.z
                    local blockpos = getScaffold((lplr.Character.Head.Position) + Vector3.new(1, -math.floor(lplr.Character.Humanoid.HipHeight * 3), 0) + lplr.Character.Humanoid.MoveDirection)
                    placeblockthing(blockpos, getwool())
                end)
            end)
        end 
    end    
})
--[[
local Swim = Blatant:AddToggle({
    Name = "Swim",
    Default = false,
    Save = true,
    Flag = "Swim",
    Callback = function(Value)
        
    end    
})

print(OrionLib.Flags["Swim"].Value)
--]]
local LJSpeed = {["Value"] = 100}
local gravityval = {["Value"] = 15}
local longjumpval = false
local oldthing
local LongJump = Blatant:AddToggle({
    Name = "LongJump",
    Default = false,
    Save = true,
    Flag = "LongJump",
    Callback = function(v)
        LongJumpToggleVal = v
        longjumpval = v
            if longjumpval then
                OrionLib:MakeNotification({
                    Name = "Module Toggled",
                    Content = "LongJump Toggled (On)",
                    Image = "rbxassetid://4483345998",
                    Time = 2
                })
                game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
                workspace.Gravity = gravityval["Value"]
                repeat
                    if (not longjumpval) then break end
                    oldthing = oldthing or speedvalue["Value"]
                    speedvalue["Value"] = LJSpeed["Value"]
                    task.wait(longjumpdelay["Value"])
                    task.wait(0.12)
                until (not longjumpval)
            else
                workspace.Gravity = 169
                OrionLib:MakeNotification({
                    Name = "Module Toggled",
                    Content = "LongJump Toggled (Off)",
                    Image = "rbxassetid://4483345998",
                    Time = 2
                })
                longjumpval = false
                return
            end
    end    
})

local speedy = {["Value"] = 23}
local lowwspeedy = {["Value"] = 16}
local waits = {["Value"] = 0.4}
local afwaits = {["Value"] = 0.5}
local Speedyy = Blatant:AddToggle({
    Name = "Speed",
    Default = false,
    Save = true,
    Flag = "Speeds",
    Callback = function(Value)
getgenv().asdf = Value
       while true do
       if not getgenv().asdf then return end
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speedy.Value
wait(waits.Value)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = lowwspeedy.Value
wait(afwaits.Value)
       end
    end  
})

Blatant:AddSlider({
    Name = "Speed",
    Min = 23,
    Max = 65,
    Default = 20,
    Color = Color3.new(255,255,255),
    Increment = 0.5,
    ValueName = "",
    Callback = function(Value)
        speedy["Value"] = Value
    end    
})

Blatant:AddSlider({
    Name = "Lower Speed",
    Min = 1,
    Max = 23,
    Default = 20,
    Color = Color3.new(255,255,255),
    Increment = 0.5,
    ValueName = "",
    Callback = function(Value)
        lowwspeedy["Value"] = Value
    end    
})

Blatant:AddSlider({
    Name = "Wait Time",
    Min = 0.3,
    Max = 1.5,
    Default = 0.3,
    Color = Color3.new(255,255,255),
    Increment = 0.1,
    ValueName = "",
    Callback = function(Value)
        waits["Value"] = Value
    end    
})

Blatant:AddSlider({
    Name = "After Wait Time",
    Min = 0.4,
    Max = 1.5,
    Default = 0.4,
    Color = Color3.new(255,255,255),
    Increment = 0.1,
    ValueName = "",
    Callback = function(Value)
        afwaits["Value"] = Value
    end    
})

local World = Window:MakeTab({
    Name = "World",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local partmade = false
local AntiVoid = World:AddToggle({
    Name = "AntiVoid",
    Default = false,
    Save = true,
    Flag = "AntiVoid",
    Callback = function(Value)
        if Value then
            partmade = true
            local antivoidpart = Instance.new("Part", Workspace)
            antivoidpart.Name = "AntiVoid"
            antivoidpart.Size = Vector3.new(2100, 0.5, 2000)
            antivoidpart.Position = Vector3.new(160.5, 25, 247.5)
            antivoidpart.Material = Enum.Material.Neon
            antivoidpart.Color = Color3.new(51, 153, 255)
            antivoidpart.Transparency = 0.4
            antivoidpart.Anchored = true
            antivoidpart.Touched:connect(function(dumbcocks)
                if dumbcocks.Parent:WaitForChild("Humanoid") and dumbcocks.Parent.Name == lplr.Name then
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
                    wait(0.2)
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
                    wait(0.2)
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
                    wait(0.2)
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
                    wait(0.2)
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
                end
            end)
        elseif partmade then
            game.workspace.AntiVoid:Remove()
        end
    end    
})

print(OrionLib.Flags["AntiVoid"].Value)

local Render = Window:MakeTab({
    Name = "Render",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

--[[local Arrows = Render:AddToggle({
    Name = "Arrows",
    Default = false,
    Save = true,
    Flag = "Arrows",
    Callback = function(Value)
        
    end    
})

print(OrionLib.Flags["Arrows"].Value)

local BedESP = Render:AddToggle({
    Name = "BedESP",
    Default = false,
    Save = true,
    Flag = "BedESP",
    Callback = function(Value)
        
    end    
})

print(OrionLib.Flags["BedESP"].Value)

local CameraFix  = Render:AddToggle({
    Name = "CameraFix",
    Default = false,
    Save = true,
    Flag = "CameraFix",
    Callback = function(Value)
        
    end    
})

print(OrionLib.Flags["CameraFix"].Value)

local Chams = Render:AddToggle({
    Name = "Chams",
    Default = false,
    Save = true,
    Flag = "Chams",
    Callback = function(Value)
        
    end    
})

print(OrionLib.Flags["Chams"].Value)

local ESP = Render:AddToggle({
    Name = "ESP",
    Default = false,
    Save = true,
    Flag = "ESP",
    Callback = function(Value)
        
    end    
})

print(OrionLib.Flags["ESP"].Value)

local Tracers = Render:AddToggle({
    Name = "Tracers",
    Default = false,
    Save = true,
    Flag = "Tracers",
    Callback = function(Value)
        
    end    
})

print(OrionLib.Flags["Tracers"].Value)
--]]

local Utility = Window:MakeTab({
    Name = "Utility",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
--[[
local Panic = Utility:AddToggle({
    Name = "Panic",
    Default = false,
    Save = true,
    Flag = "Panic",
    Callback = function(Value)
        
    end    
})

print(OrionLib.Flags["Panic"].Value)

local ShopTierBypass = Utility:AddToggle({
    Name = "ShopTierBypass",
    Default = false,
    Save = true,
    Flag = "STB",
    Callback = function(Value)
        
    end    
})

print(OrionLib.Flags["STB"].Value)

local Nuker = Utility:AddToggle({
    Name = "Nuker",
    Default = false,
    Save = true,
    Flag = "Nuker",
    Callback = function(Value)
        
    end    
})

print(OrionLib.Flags["Nuker"].Value)
--]]
local Uninject = Utility:AddButton({
    Name = "Uninject",
    Callback = function(Value)
        OrionLib:Destroy()
    end    
})

local Keybinds = Window:MakeTab({
    Name = "Keybinds",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Keybinds:AddBind({
    Name = "HighJump",
    Default = Enum.KeyCode.V,
    Hold = false,
    Callback = function()
for i = 1,25 do
    task.wait(0.05)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,i * 3,0)
end
    end    
})

Keybinds:AddBind({
    Name = "LongJump",
    Default = Enum.KeyCode.C,
    Hold = false,
    Callback = function()
        if LongJumpToggleVal then
            LongJump:Set(false)
        elseif LongJumpToggleVal == false then
            LongJump:Set(true)
        end
    end    
})

Keybinds:AddBind({
    Name = "Fly",
    Default = Enum.KeyCode.R,
    Hold = false,
    Callback = function()
        if LongJumpToggleVall then
            flyme:Set(false)
        elseif LongJumpToggleVall == false then
            flyme:Set(true)
        end
    end    
})

local Credits = Window:MakeTab({
    Name = "Credits",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Credits:AddLabel("Owner - Breadway (@Breadway#2678)")
Credits:AddLabel("Developer - Emi H (@Emi_H#3286)")
Credits:AddLabel("Developer/Helper - qwertyui (@qwertyui#0001)")
Credits:AddLabel("Thanks To Future And Vape V4 Owners For Inspiration")

OrionLib:Init()
