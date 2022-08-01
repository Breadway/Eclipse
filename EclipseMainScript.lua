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
    Name = "KillAura",
    Default = false,
    Save = true,
    Flag = "KillAura",
    Callback = function(Value)
        
    end    
})

print(OrionLib.Flags["KillAura"].Value)

local Blatant = Window:MakeTab({
    Name = "Blatant",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

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

local highjumpforce = {["Value"] = 50}
local HighJump = Blatant:AddButton({
    Name = "HighJump",
    Callback = function()
        local highjumpval = true
            lplr.Character.Humanoid:ChangeState("Jumping")
            task.wait()
            workspace.Gravity = 5
            spawn(function()
                for i = 1, highjumpforce["Value"] do
                        wait()
                        if (not highjumpval) then return end
                    lplr.Character.Humanoid:ChangeState("Jumping")
                end
            end)
            spawn(function()
                for i = 1, highjumpforce["Value"] / 28 do
                    task.wait(0.1)
                    lplr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Freefall)
                    task.wait(0.1)
                    lplr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                end
            end)
            workspace.Gravity = 150 
    end    
})

Blatant:AddSlider({
    Name = "HighJumpForce",
    Min = 0,
    Max = 100,
    Default = 20,
    Color = Color3.new(255,255,255),
    Increment = 1,
    ValueName = "",
    Callback = function(Value)
        highjumpforce["Value"] = Value
    end    
})

local mapname = getmapname()
local NoFall = Blatant:AddToggle({
    Name = "NoFall",
    Default = false,
    Save = true,
    Flag = "NoFall",
    Callback = function(Value)
        if Value then
            while Value do
                wait(0.1)
                game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.GroundHit:FireServer(workspace.Map.Worlds[mapname].Blocks,1645488277.345853)
            end
        end
    end    
})

print(OrionLib.Flags["NoFall"].Value)

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

local Swim = Blatant:AddToggle({
    Name = "Swim",
    Default = false,
    Save = true,
    Flag = "Swim",
    Callback = function(Value)
        
    end    
})

print(OrionLib.Flags["Swim"].Value)

local speedvalue = {["Value"] = 23}
Blatant:AddDropdown({
    Name = "Speed",
    Default = "23 Speed Method",
    Flag = "Speed",
    Save = true,
    Options = {
        "23 Speed Method",
        "Speed Method 1",
        "Speed Method 2",
        "Speed Method 3",
        "Speed Method 4",
    },
    Callback = function(Value)
        if Value == "23 Speed Method" then
            wait(0.5)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 23
        elseif Value == "Speed Method 1" then
            while Value == "Speed Method 1" do
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 30
                wait(0.3)
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 18
                wait(1.7)
            end
        elseif Value == "Speed Method 2" then
            while Value == "Speed Method 2" do
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 40
                wait(0.3)
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 15
                wait(1.7)
            end
        else
            if Value == "Speed Method 3" then
                while Value == "Speed Method 3" do
                    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
                    wait(0.3)
                    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 23
                    wait(0.8)
                end
            else
                if Value == "Speed Method 4" then
                    while Value == "Speed Method 4" do
                        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 90
                        wait(0.2)
                        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
                        wait(1)
                    end
                end
            end
        end
    end    
})

local LJSpeed = {["Value"] = 100}
local gravityval = {["Value"] = 0}
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

local Arrows = Render:AddToggle({
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

local Utility = Window:MakeTab({
    Name = "Utility",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

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
        local highjumpval = true
        lplr.Character.Humanoid:ChangeState("Jumping")
        task.wait()
        workspace.Gravity = 5
        spawn(function()
            for i = 1, highjumpforce["Value"] do
                wait()
                    if (not highjumpval) then return end
                lplr.Character.Humanoid:ChangeState("Jumping")
            end
        end)
        spawn(function()
            for i = 1, highjumpforce["Value"] / 28 do
                task.wait(0.1)
                lplr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Freefall)
                task.wait(0.1)
                lplr.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end)
        workspace.Gravity = 169 
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

local Credits = Window:MakeTab({
    Name = "Credits",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Credits:AddLabel("Owner - Breadway (@Breadway#2678)")
Credits:AddLabel("Developer - Emi H (@Emi_H#3286)")
Credits:AddLabel("Thanks To Future And Vape V4 Owners For Inspiration")

OrionLib:Init()
