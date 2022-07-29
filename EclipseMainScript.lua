-- Re edited by emirtube11 
-- Main owner Breadway

-- Lol i spend 5 hours on it :skull:

local ourS = "wood_sword"
local swords = {"wood_sword", "stone_sword", "iron_sword", "diamond_sword", "emerald_sword", "rageblade"}
local lplr = game.Players.LocalPlayer
local PLAYERS = game:GetService("Players")
local Future = shared.Future
local KnitClient = debug.getupvalue(require(lplr.PlayerScripts.TS.controllers.game["block-break-controller"]).BlockBreakController.onEnable, 1)
local cam = game.workspace.CurrentCamera
local function getremote(tab)
	for i,v in pairs(tab) do
		if v == "Client" then
			return tab[i + 1]
		end
	end
	return ""
end
local repstorage = game:GetService("ReplicatedStorage")
local bedwars = {
    ["AnimationUtil"] = require(repstorage["rbxts_include"]["node_modules"]["@easy-games"]["game-core"].out["shared"].util["animation-util"]).AnimationUtil,
    ["VelocityUtil"]  = require(game:GetService("ReplicatedStorage")["rbxts_include"]["node_modules"]["@easy-games"]["game-core"].out["shared"].util["velocity-util"]).VelocityUtil, 
    ["ClientHandler"] = Client,
			["AngelUtil"] = require(repstorage.TS.games.bedwars.kit.kits.angel["angel-kit"]),
			["AppController"] = require(repstorage["rbxts_include"]["node_modules"]["@easy-games"]["game-core"].out.client.controllers["app-controller"]).AppController,
			["BatteryRemote"] = getremote(debug.getconstants(debug.getproto(debug.getproto(KnitClient.Controllers.BatteryController.KnitStart, 1), 1))),
			["BatteryEffectController"] = KnitClient.Controllers.BatteryEffectsController,
            ["BalloonController"] = KnitClient.Controllers.BalloonController,
            ["BlockController"] = require(repstorage["rbxts_include"]["node_modules"]["@easy-games"]["block-engine"].out).BlockEngine,
            ["BlockController2"] = require(repstorage["rbxts_include"]["node_modules"]["@easy-games"]["block-engine"].out.client.placement["block-placer"]).BlockPlacer,
            ["BlockEngine"] = require(lplr.PlayerScripts.TS.lib["block-engine"]["client-block-engine"]).ClientBlockEngine,
            ["BlockEngineClientEvents"] = require(repstorage["rbxts_include"]["node_modules"]["@easy-games"]["block-engine"].out.client["block-engine-client-events"]).BlockEngineClientEvents,
			["BlockPlacementController"] = KnitClient.Controllers.BlockPlacementController,
            ["BedwarsKits"] = require(repstorage.TS.games.bedwars.kit["bedwars-kit-shop"]).BedwarsKitShop,
			["BedTable"] = {},
            ["BlockBreaker"] = KnitClient.Controllers.BlockBreakController.blockBreaker,
            ["BowTable"] = KnitClient.Controllers.ProjectileController,
			["BowConstantsTable"] = debug.getupvalue(KnitClient.Controllers.ProjectileController.enableBeam, 5),
			["ChestController"] = KnitClient.Controllers.ChestController,
			["CheckWhitelisted"] = function(plr, ownercheck)
				local plrstr = bedwars["HashFunction"](plr.Name..plr.UserId)
				local localstr = bedwars["HashFunction"](lplr.Name..lplr.UserId)
				return ((ownercheck == nil and (betterfind(whitelisted.players, plrstr) or betterfind(whitelisted.owners, plrstr)) or ownercheck and betterfind(whitelisted.owners, plrstr))) and betterfind(whitelisted.owners, localstr) == nil and true or false
			end,
			["CheckPlayerType"] = function(plr)
				local plrstr = bedwars["HashFunction"](plr.Name..plr.UserId)
				local playertype, playerattackable = "DEFAULT", true
				local private = betterfind(whitelisted.players, plrstr)
				local owner = betterfind(whitelisted.owners, plrstr)
				if private then
					playertype = "VAPE PRIVATE"
					playerattackable = not (type(private) == "table" and private.invulnerable or false)
				end
				if owner then
					playertype = "VAPE OWNER"
					playerattackable = not (type(owner) == "table" and owner.invulnerable or false)
				end
				return playertype, playerattackable
			end,
			["ClickHold"] = require(repstorage["rbxts_include"]["node_modules"]["@easy-games"]["game-core"].out.client.ui.lib.util["click-hold"]).ClickHold,
            ["ClientHandler"] = Client,
			["SharedConstants"] = require(repstorage.TS["shared-constants"]),
            ["ClientHandlerDamageBlock"] = require(repstorage["rbxts_include"]["node_modules"]["@easy-games"]["block-engine"].out.remotes).BlockEngineRemotes.Client,
            ["ClientStoreHandler"] = require(lplr.PlayerScripts.TS.ui.store).ClientStore,
			["ClientHandlerSyncEvents"] = require(lplr.PlayerScripts.TS["client-sync-events"]).ClientSyncEvents,
            ["CombatConstant"] = require(repstorage.TS.combat["combat-constant"]).CombatConstant,
			["CombatController"] = KnitClient.Controllers.CombatController,
			["ConsumeSoulRemote"] = getremote(debug.getconstants(KnitClient.Controllers.GrimReaperController.consumeSoul)),
			["ConstantManager"] = require(repstorage["rbxts_include"]["node_modules"]["@easy-games"]["game-core"].out["shared"].constant["constant-manager"]).ConstantManager,
			["CooldownController"] = KnitClient.Controllers.CooldownController,
            ["damageTable"] = KnitClient.Controllers.DamageController,
			["DaoRemote"] = getremote(debug.getconstants(debug.getprotos(KnitClient.Controllers.DaoController.onEnable)[4])),
			["DamageController"] = KnitClient.Controllers.DamageController,
			["DamageIndicator"] = KnitClient.Controllers.DamageIndicatorController.spawnDamageIndicator,
			["DamageIndicatorController"] = KnitClient.Controllers.DamageIndicatorController,
			["DetonateRavenRemote"] = getremote(debug.getconstants(getmetatable(KnitClient.Controllers.RavenController).detonateRaven)),
            ["DropItem"] = getmetatable(KnitClient.Controllers.ItemDropController).dropItemInHand,
            ["DropItemRemote"] = getremote(debug.getconstants(getmetatable(KnitClient.Controllers.ItemDropController).dropItemInHand)),
            ["EatRemote"] = getremote(debug.getconstants(debug.getproto(getmetatable(KnitClient.Controllers.ConsumeController).onEnable, 1))),
            ["EquipItemRemote"] = getremote(debug.getconstants(debug.getprotos(shared.oldequipitem or require(repstorage.TS.entity.entities["inventory-entity"]).InventoryEntity.equipItem)[3])),
			["FishermanTable"] = KnitClient.Controllers.FishermanController,
			["GameAnimationUtil"] = require(repstorage.TS.animation["animation-util"]).GameAnimationUtil,
			["GamePlayerUtil"] = require(repstorage.TS.player["player-util"]).GamePlayerUtil,
            ["getEntityTable"] = require(repstorage.TS.entity["entity-util"]).EntityUtil,
            ["getIcon"] = function(item, showinv)
                local itemmeta = bedwars["ItemTable"][item.itemType]
                if itemmeta and showinv then
                    return itemmeta.image
                end
                return ""
            end,
			["getInventory2"] = function(plr)
                local suc, result = pcall(function() 
					return InventoryUtil.getInventory(plr) 
				end)
                return (suc and result or {
                    ["items"] = {},
                    ["armor"] = {},
                    ["hand"] = nil
                })
            end,
            ["getItemMetadata"] = require(repstorage.TS.item["item-meta"]).getItemMeta,
			["GrimReaperController"] = KnitClient.Controllers.GrimReaperController,
			["GuitarHealRemote"] = getremote(debug.getconstants(KnitClient.Controllers.GuitarController.performHeal)),
			["HashFunction"] = function(str)
				if storedshahashes[tostring(str)] == nil then
					storedshahashes[tostring(str)] = shalib.sha512(tostring(str).."SelfReport")
				end
				return storedshahashes[tostring(str)]
			end,
			["HangGliderController"] = KnitClient.Controllers.HangGliderController,
			["HighlightController"] = KnitClient.Controllers.EntityHighlightController,
            ["ItemTable"] = debug.getupvalue(require(repstorage.TS.item["item-meta"]).getItemMeta, 1),
			["IsVapePrivateIngame"] = function()
				for i,v in pairs(players:GetChildren()) do 
					local plrstr = bedwars["HashFunction"](v.Name..v.UserId)
					if bedwars["CheckPlayerType"](v) ~= "DEFAULT" or whitelisted.chattags[plrstr] then 
						return true
					end
				end
				return false
			end,
			["JuggernautRemote"] = getremote(debug.getconstants(debug.getprotos(debug.getprotos(KnitClient.Controllers.JuggernautController.KnitStart)[1])[4])),
			["KatanaController"] = KnitClient.Controllers.DaoController,
			["KatanaRemote"] = getremote(debug.getconstants(debug.getproto(KnitClient.Controllers.DaoController.onEnable, 4))),
            ["KnockbackTable"] = debug.getupvalue(require(repstorage.TS.damage["knockback-util"]).KnockbackUtil.calculateKnockbackVelocity, 1),
			["LobbyClientEvents"] = require(repstorage["rbxts_include"]["node_modules"]["@easy-games"].lobby.out.client.events).LobbyClientEvents,
			["MapMeta"] = require(repstorage.TS.game.map["map-meta"]),
			["MissileController"] = KnitClient.Controllers.GuidedProjectileController,
			["MinerRemote"] = getremote(debug.getconstants(debug.getprotos(debug.getproto(getmetatable(KnitClient.Controllers.MinerController).onKitEnabled, 1))[2])),
			["MinerController"] = KnitClient.Controllers.MinerController,
			["ProdAnimations"] = require(repstorage.TS.animation.definitions["prod-animations"]).ProdAnimations,
            ["PickupRemote"] = getremote(debug.getconstants(getmetatable(KnitClient.Controllers.ItemDropController).checkForPickup)),
            ["PlayerUtil"] = require(repstorage.TS.player["player-util"]).GamePlayerUtil,
			["ProjectileMeta"] = require(repstorage.TS.projectile["projectile-meta"]).ProjectileMeta,
			["QueueMeta"] = require(repstorage.TS.game["queue-meta"]).QueueMeta,
			["QueueCard"] = require(lplr.PlayerScripts.TS.controllers.global.queue.ui["queue-card"]).QueueCard,
			["QueryUtil"] = require(repstorage["rbxts_include"]["node_modules"]["@easy-games"]["game-core"].out).GameQueryUtil,
            ["prepareHashing"] = require(repstorage.TS["remote-hash"]["remote-hash-util"]).RemoteHashUtil.prepareHashVector3,
			["ProjectileRemote"] = getremote(debug.getconstants(debug.getupvalues(getmetatable(KnitClient.Controllers.ProjectileController)["launchProjectileWithValues"])[2])),
            ["RavenTable"] = KnitClient.Controllers.RavenController,
			["RespawnController"] = KnitClient.Controllers.BedwarsRespawnController,
			["RespawnTimer"] = require(lplr.PlayerScripts.TS.controllers.games.bedwars.respawn.ui["respawn-timer"]).RespawnTimerWrapper,
			["ResetRemote"] = getremote(debug.getconstants(debug.getproto(KnitClient.Controllers.ResetController.createBindable, 1))),
			["Roact"] = require(repstorage["rbxts_include"]["node_modules"]["roact"].src),
			["RuntimeLib"] = require(repstorage["rbxts_include"].RuntimeLib),
            ["Shop"] = require(repstorage.TS.games.bedwars.shop["bedwars-shop"]).BedwarsShop,
			["ShopItems"] = debug.getupvalue(require(repstorage.TS.games.bedwars.shop["bedwars-shop"]).BedwarsShop.getShopItem, 2),
            ["ShopRight"] = require(lplr.PlayerScripts.TS.controllers.games.bedwars.shop.ui["item-shop"]["shop-left"]["shop-left"]).BedwarsItemShopLeft,
			["SpawnRavenRemote"] = getremote(debug.getconstants(getmetatable(KnitClient.Controllers.RavenController).spawnRaven)),
            ["SoundManager"] = require(repstorage["rbxts_include"]["node_modules"]["@easy-games"]["game-core"].out).SoundManager,
			["SoundList"] = require(repstorage.TS.sound["game-sound"]).GameSound,
            ["sprintTable"] = KnitClient.Controllers.SprintController,
			["StopwatchController"] = KnitClient.Controllers.StopwatchController,
            ["SwingSword"] = getmetatable(KnitClient.Controllers.SwordController).swingSwordAtMouse,
            ["SwingSwordRegion"] = getmetatable(KnitClient.Controllers.SwordController).swingSwordInRegion,
            ["SwordController"] = KnitClient.Controllers.SwordController,
            ["TreeRemote"] = getremote(debug.getconstants(debug.getprotos(debug.getprotos(KnitClient.Controllers.BigmanController.KnitStart)[2])[1])),
			["TrinityRemote"] = getremote(debug.getconstants(debug.getproto(getmetatable(KnitClient.Controllers.AngelController).onKitEnabled, 1))),
            ["VictoryScreen"] = require(lplr.PlayerScripts.TS.controllers["game"].match.ui["victory-section"]).VictorySection,
            ["ViewmodelController"] = KnitClient.Controllers.ViewmodelController,
			["VehicleController"] = KnitClient.Controllers.VehicleController,
			["WeldTable"] = require(repstorage.TS.util["weld-util"]).WeldUtil,
}
local currentinventory = {
	["inventory"] = {
		["items"] = {},
		["armor"] = {},
		["hand"] = nil
	}
}

local function getEquipped()
	local typetext = ""
	local obj = currentinventory.inventory.hand
	if obj then
		local metatab = bedwars["ItemTable"][obj.itemType]
		typetext = metatab.sword and "sword" or metatab.block and "block" or obj.itemType:find("bow") and "bow"
	end
    return {["Object"] = obj and obj.tool, ["Type"] = typetext}
end

local function isAlive(plr)
    local plr = plr or lplr
    if plr and plr.Character and ((plr.Character:FindFirstChild("Humanoid")) and (plr.Character:FindFirstChild("Humanoid") and plr.Character:FindFirstChild("Humanoid").Health > 0) and (plr.Character:FindFirstChild("HumanoidRootPart")) and (plr.Character:FindFirstChild("Head"))) then
        return true
    end
end


local function getAllPlrsNear(max)
    if not isAlive() then return {} end
    local t = {}
    for i,v in next, PLAYERS:GetPlayers() do 
        if isAlive(v) and v~=lplr then 
            if v.Character.HumanoidRootPart and (lplr.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude <= max then 
                table.insert(t, v)
            end
        end
    end
    return t
end

local function getLowestHpPlrNear(max) 
    local returning, lowestnum = nil, 9999999999
    for i,v in next, PLAYERS:GetPlayers() do 
        if isAlive(v) and v~=lplr then 
            local diff = (lplr.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
            local health = v.Character:GetAttribute("Health")
            if diff < max and health < lowestnum then 
                lowestnum = health 
                returning = v
            end
        end
    end
    return returning
end

local function getwool()
	for i5, v5 in pairs(bedwars["getInventory"](lplr)["items"]) do
		if v5.itemType:match("wool") then
			return v5.itemType, v5.amount
		end
	end	
	return nil
end

local function getBestSword()
	local data, slot, bestdmg
    local items = bedwars.getInventory().items
	for i, v in next, items do
		if v.itemType:lower():find("sword") or v.itemType:lower():find("blade") then
			if bestdmg == nil or bedwars.ItemTable[v.itemType].sword.damage > bestdmg then
                data = v
				bestdmg = bedwars.ItemTable[v.itemType].sword.damage
				slot = i
			end
		end
	end
	return data, slot
end

local function canBeTargeted(plr, doTeamCheck) 
    return Future.canBeTargeted(plr)
end

local function hashvector(vec)
	return {
		value = vec
	}
end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Eclipse", "DarkTheme")
local speed = false

local CombatTab = Window:NewTab("Combat")
local Combat = CombatTab:NewSection("Combat")

local BlatantTab = Window:NewTab("Blatant")
local SBlatant = BlatantTab:NewSection("Speed Methods")
local FBlatant = BlatantTab:NewSection("Fly/Gravity Methods")

local WorldTab = Window:NewTab("World")
local World = WorldTab:NewSection("World")

local RenderTab = Window:NewTab("Render")
local Render = RenderTab:NewSection("Render")

local KeybindsTab = Window:NewTab("Keybinds")
local KeybindsTG = KeybindsTab:NewSection("ToggleGui")
local KeybindsC = KeybindsTab:NewSection("Combat")
local KeybindsP = KeybindsTab:NewSection("Player")
local KeybindsB = KeybindsTab:NewSection("Blatant")
local KeybindsW = KeybindsTab:NewSection("World")
local KeybindsR = KeybindsTab:NewSection("Render")

local CreditsTab = Window:NewTab("Credits")
local Credits = CreditsTab:NewSection("Credits")

local veloh, velov = {["Value"] = 0},{["Value"] = 0}
local oldveloh, oldvelov, oldvelofunc = bedwars["KnockbackTable"]["kbDirectionStrength"], bedwars["KnockbackTable"]["kbUpwardStrength"], 
bedwars["VelocityUtil"].applyVelocity
Combat:NewToggle("Velocity", "No KnockBack", function(state)
        bedwars["KnockbackTable"]["kbDirectionStrength"] = oldveloh * (veloh["Value"] / 100)
        bedwars["KnockbackTable"]["kbUpwardStrength"] = oldvelov * (velov["Value"] / 100)
        if veloh["Value"] == 0 and velov["Value"] == 0 then
            bedwars["VelocityUtil"].applyVelocity = function(...) end
        else
            bedwars["VelocityUtil"].applyVelocity = oldvelofunc
        end
end)

Combat:NewButton("Fix Killaura", "Fixes Killaura folder", function()
    game:GetService("ReplicatedStorage").Inventories[game.Players..Name]:Remove()
end)

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

local AuraDistance = {Value = 18}
local KillAura = Combat:NewToggle("Kill Aura", "Hit Automaticly", function(v)
    getgenv().l = v
    print("Debug")
    while getgenv().l do
        wait(1)
        wait(0.3)
        local TargetPart = TargetPart or Instance.new("Part")
                TargetPart.Color = Color3.fromRGB(200, 0, 0)
                TargetPart.Transparency = 0.6
                TargetPart.CanCollide = false
                TargetPart.Anchored = true

                spawn(function() -- Begin main attack loop
                    repeat
                        if isAlive() then 
                            wait(1)
                            
                            local Root = RealRoot or lplr.Character.HumanoidRootPart

                            local plrs = getAllPlrsNear(AuraDistance.Value-0.01)
                            if #plrs == 0 then
                                currentTarget = nil
                            end

                            local v = getLowestHpPlrNear(AuraDistance.Value - 0.01)
                            if not v then 
                                currentTarget = nil
                            end

                            for i,v in next, plrs do 
                                if v  then    
                                    currentTarget = v
                                    local weapon = ourS
                                    local selfpos = Root.Position + (AuraDistance.Value > 14 and (Root.Position - v.Character.HumanoidRootPart.Position).magnitude > 14 and (CFrame.lookAt(Root.Position, v.Character.HumanoidRootPart.Position).lookVector * 4) or Vector3.new(0, 0, 0))
                                    local attackArgs = {
                                        ["weapon"] = weapon~=nil and weapon.tool,
                                        ["entityInstance"] = v.Character,
                                        ["validate"] = {
                                            ["raycast"] = {
                                                ["cameraPosition"] = hashvector(cam.CFrame.p), 
                                                ["cursorDirection"] = hashvector(Ray.new(cam.CFrame.p, v.Character.HumanoidRootPart.Position).Unit.Direction)
                                            },
                                            ["targetPosition"] = hashvector(v.Character.HumanoidRootPart.Position),
                                            ["selfPosition"] = hashvector(selfpos),
                                        }, 
                                        ["chargedAttack"] = {["chargeRatio"] = 1},
                                    }
                                    --spawn(function()
                                        local x = bedwars.["ClientHandler"]:getremote(bedwars["AttackRemote"]):CallServer(attackArgs)
                                        --print("Aura attack was successful:", x)
                                    --end)
                                    task.wait(1 / 3) -- was 0.03
                                end
                            end
                        end
                    until not getgenv().l
                end)
    end
end)
SBlatant:NewButton("Normal Speed", "Speed method", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

SBlatant:NewButton("23 Speed Method", "Speed method", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 23
end)

SBlatant:NewToggle("Loop Speed Method 1", "Speed Method", function(v)
getgenv().g = v
while true do
if not getgenv().g then return end
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 30
wait(0.5)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 18
wait(0.5)
end
end)

SBlatant:NewToggle("Loop Speed Method 2", "Speed Method", function(v)
getgenv().s = v
while true do
if not getgenv().s then return end
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 40
wait(0.2)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 15
wait(0.5)
end
end)

SBlatant:NewToggle("Loop Speed Method 3", "Speed Method", function(v)
getgenv().s = v
while true do
if not getgenv().s then return end
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
wait(0.2)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 23
wait(0.5)
end
end)

SBlatant:NewToggle("Loop Speed Method 4 (FAST) (RISKY)", "Speed Method", function(v)
getgenv().s = v
while true do
if not getgenv().s then return end
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 90
wait(0.2)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 23
wait(0.5)
end
end)

FBlatant:NewKeybind("Gravity 30 For 2.7 Sec Method", "gra", Enum.KeyCode.X, function()
	game.workspace.Gravity = 30
    wait(2.7)
    game.workspace.Gravity = 169
end)
FBlatant:NewKeybind("Normal Gravity", "gra", Enum.KeyCode.V, function()
         game.workspace.Gravity = 169    
end)

FBlatant:NewButton("Dupe", "Dupe", function()
    local monkey = getEquipped()
				if monkey and monkey["Object"] and monkey.amount ~= math.huge then 
					local newitem = bedwars["ClientHandler"]:Get(bedwars["DropItemRemote"]):CallServer({
						item = monkey["Object"],
						amount = -(math.huge)
					})
					if newitem then 
						newitem:Destroy()
					end
				end
end)

KeybindsTG:NewKeybind("Toggle Gui", "Toggles The Eclipse Gui", Enum.KeyCode.RightShift, function()
	Library:ToggleUI()
end)


Credits:NewLabel("Owner - Breadway (@Breadway#2678)")
Credits:NewLabel("Co-Owner - Emi H (@emirtube11)")
Credits:NewLabel("Gui Library - xHeptc")
