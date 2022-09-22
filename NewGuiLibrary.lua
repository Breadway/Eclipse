shared.GuiLibrary = {}
local api = shared.GuiLibrary
local UIS = game:GetService("UserInputService")

function api:CreateMain()
	local MainAPI = {}
	local Eclipse = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local UIListLayout = Instance.new("UIListLayout")
	local TopBar = Instance.new("TextButton")
	local Frame = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local UIListLayout_2 = Instance.new("UIListLayout")
	local Combat = Instance.new("TextButton")
	local Blatant = Instance.new("TextButton")
	local Render = Instance.new("TextButton")
	local Render_2 = Instance.new("TextButton")
	local World = Instance.new("TextButton")
	local Combat_2 = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local UIListLayout_3 = Instance.new("UIListLayout")
	local TopBar_2 = Instance.new("TextButton")
	local Frame_2 = Instance.new("ScrollingFrame")
	local UICorner_4 = Instance.new("UICorner")
	local UIListLayout_4 = Instance.new("UIListLayout")
	local Blatant_2 = Instance.new("Frame")
	local UICorner_5 = Instance.new("UICorner")
	local UIListLayout_5 = Instance.new("UIListLayout")
	local TopBar_3 = Instance.new("TextButton")
	local Frame_3 = Instance.new("ScrollingFrame")
	local UICorner_6 = Instance.new("UICorner")
	local UIListLayout_6 = Instance.new("UIListLayout")
	local Render_3 = Instance.new("Frame")
	local UICorner_7 = Instance.new("UICorner")
	local UIListLayout_7 = Instance.new("UIListLayout")
	local TopBar_4 = Instance.new("TextButton")
	local Frame_4 = Instance.new("ScrollingFrame")
	local UICorner_8 = Instance.new("UICorner")
	local UIListLayout_8 = Instance.new("UIListLayout")
	local Utility = Instance.new("Frame")
	local UICorner_9 = Instance.new("UICorner")
	local UIListLayout_9 = Instance.new("UIListLayout")
	local TopBar_5 = Instance.new("TextButton")
	local Frame_5 = Instance.new("ScrollingFrame")
	local UICorner_10 = Instance.new("UICorner")
	local UIListLayout_10 = Instance.new("UIListLayout")
	local World_2 = Instance.new("Frame")
	local UICorner_11 = Instance.new("UICorner")
	local UIListLayout_11 = Instance.new("UIListLayout")
	local TopBar_6 = Instance.new("TextButton")
	local Frame_6 = Instance.new("ScrollingFrame")
	local UICorner_12 = Instance.new("UICorner")
	local UIListLayout_12 = Instance.new("UIListLayout")

	Eclipse.Name = "Eclipse"
	Eclipse.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	Eclipse.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Main.Name = "Main"
	Main.Parent = Eclipse
	Main.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	Main.Position = UDim2.new(0.0159108993, 0, 0.0368271954, 0)
	Main.Size = UDim2.new(0, 154, 0, 261)

	UICorner.Parent = Main

	UIListLayout.Parent = Main
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

	TopBar.Name = "TopBar"
	TopBar.Parent = Main
	TopBar.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	TopBar.Position = UDim2.new(0.0227272734, 0, 0, 0)
	TopBar.Size = UDim2.new(0, 142, 0, 35)
	TopBar.Font = Enum.Font.FredokaOne
	TopBar.Text = "Eclipse"
	TopBar.TextColor3 = Color3.fromRGB(255, 255, 255)
	TopBar.TextScaled = true
	TopBar.TextSize = 14.000
	TopBar.TextWrapped = true

	Frame.Parent = Main
	Frame.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	Frame.Position = UDim2.new(0, 0, 0.134099618, 0)
	Frame.Size = UDim2.new(0, 153, 0, 226)

	UICorner_2.Parent = Frame

	UIListLayout_2.Parent = Frame
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

	Combat.Name = "Combat"
	Combat.Parent = Frame
	Combat.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	Combat.BorderColor3 = Color3.fromRGB(54, 54, 54)
	Combat.BorderSizePixel = 0
	Combat.Size = UDim2.new(0, 147, 0, 35)
	Combat.Font = Enum.Font.SourceSans
	Combat.Text = "Combat"
	Combat.TextColor3 = Color3.fromRGB(255, 255, 255)
	Combat.TextSize = 20.000
	Combat.TextWrapped = true
	Combat.MouseButton1Down:Connect(function()
		if Eclipse.Combat.Visible then
			Eclipse.Combat.Visible = false
		else
			Eclipse.Combat.Visible = true
		end
	end)

	Blatant.Name = "Blatant"
	Blatant.Parent = Frame
	Blatant.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	Blatant.BorderColor3 = Color3.fromRGB(54, 54, 54)
	Blatant.BorderSizePixel = 0
	Blatant.Size = UDim2.new(0, 147, 0, 35)
	Blatant.Font = Enum.Font.SourceSans
	Blatant.Text = "Blatant"
	Blatant.TextColor3 = Color3.fromRGB(255, 255, 255)
	Blatant.TextSize = 20.000
	Blatant.TextWrapped = true
	Blatant.MouseButton1Down:Connect(function()
		if Eclipse.Blatant.Visible then
			Eclipse.Blatant.Visible = false
		else
			Eclipse.Blatant.Visible = true
		end
	end)

	Render.Name = "Render"
	Render.Parent = Frame
	Render.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	Render.BorderColor3 = Color3.fromRGB(54, 54, 54)
	Render.BorderSizePixel = 0
	Render.Size = UDim2.new(0, 147, 0, 35)
	Render.Font = Enum.Font.SourceSans
	Render.Text = "Render"
	Render.TextColor3 = Color3.fromRGB(255, 255, 255)
	Render.TextSize = 20.000
	Render.TextWrapped = true
	Render.MouseButton1Down:Connect(function()
		local parent = Render
		if Eclipse[parent.Name].Visible then
			Eclipse[parent.Name].Visible = false
		else
			Eclipse[parent.Name].Visible = true
		end
	end)

	Render_2.Name = "Render"
	Render_2.Parent = Frame
	Render_2.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	Render_2.BorderColor3 = Color3.fromRGB(54, 54, 54)
	Render_2.BorderSizePixel = 0
	Render_2.Size = UDim2.new(0, 147, 0, 35)
	Render_2.Font = Enum.Font.SourceSans
	Render_2.Text = "Utility"
	Render_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Render_2.TextSize = 20.000
	Render_2.TextWrapped = true
	Render_2.MouseButton1Down:Connect(function()
		local parent = "Utility"
		if Eclipse[parent].Visible then
			Eclipse[parent].Visible = false
		else
			Eclipse[parent].Visible = true
		end
	end)

	World.Name = "World"
	World.Parent = Frame
	World.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	World.BorderColor3 = Color3.fromRGB(54, 54, 54)
	World.BorderSizePixel = 0
	World.Size = UDim2.new(0, 147, 0, 35)
	World.Font = Enum.Font.SourceSans
	World.Text = "World"
	World.TextColor3 = Color3.fromRGB(255, 255, 255)
	World.TextSize = 20.000
	World.TextWrapped = true
	World.MouseButton1Down:Connect(function()
		local parent = World
		if Eclipse[parent.Name].Visible then
			Eclipse[parent.Name].Visible = false
		else
			Eclipse[parent.Name].Visible = true
		end
	end)

	Combat_2.Name = "Combat"
	Combat_2.Parent = Eclipse
	Combat_2.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	Combat_2.Position = UDim2.new(0.150602117, 0, 0.0368271954, 0)
	Combat_2.Size = UDim2.new(0, 154, 0, 261)
	Combat_2.Visible = false

	UICorner_3.Parent = Combat_2

	UIListLayout_3.Parent = Combat_2
	UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder

	TopBar_2.Name = "TopBar"
	TopBar_2.Parent = Combat_2
	TopBar_2.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	TopBar_2.Position = UDim2.new(0.0227272734, 0, 0, 0)
	TopBar_2.Size = UDim2.new(0, 142, 0, 35)
	TopBar_2.Font = Enum.Font.FredokaOne
	TopBar_2.Text = "Combat"
	TopBar_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	TopBar_2.TextScaled = true
	TopBar_2.TextSize = 14.000
	TopBar_2.TextWrapped = true

	Frame_2.Name = "Frame"
	Frame_2.Parent = Combat_2
	Frame_2.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	Frame_2.ClipsDescendants = false
	Frame_2.Position = UDim2.new(0.00324675324, 0, 0.134099618, 0)
	Frame_2.Selectable = false
	Frame_2.Size = UDim2.new(0, 153, 0, 219)
	Frame_2.CanvasSize = UDim2.new(0, 0, 10, 0)
	Frame_2.ScrollBarThickness = 5

	UICorner_4.Parent = Frame_2

	UIListLayout_4.Parent = Frame_2
	UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder

	Blatant_2.Name = "Blatant"
	Blatant_2.Parent = Eclipse
	Blatant_2.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	Blatant_2.Position = UDim2.new(0.283453971, 0, 0.0368271954, 0)
	Blatant_2.Size = UDim2.new(0, 154, 0, 261)
	Blatant_2.Visible = false

	UICorner_5.Parent = Blatant_2

	UIListLayout_5.Parent = Blatant_2
	UIListLayout_5.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder

	TopBar_3.Name = "TopBar"
	TopBar_3.Parent = Blatant_2
	TopBar_3.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	TopBar_3.Position = UDim2.new(0.0227272734, 0, 0, 0)
	TopBar_3.Size = UDim2.new(0, 142, 0, 35)
	TopBar_3.Font = Enum.Font.FredokaOne
	TopBar_3.Text = "Blatant"
	TopBar_3.TextColor3 = Color3.fromRGB(255, 255, 255)
	TopBar_3.TextScaled = true
	TopBar_3.TextSize = 14.000
	TopBar_3.TextWrapped = true

	Frame_3.Name = "Frame"
	Frame_3.Parent = Blatant_2
	Frame_3.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	Frame_3.ClipsDescendants = false
	Frame_3.Position = UDim2.new(0.00324675324, 0, 0.134099618, 0)
	Frame_3.Selectable = false
	Frame_3.Size = UDim2.new(0, 153, 0, 219)
	Frame_3.CanvasSize = UDim2.new(0, 0, 10, 0)
	Frame_3.ScrollBarThickness = 5

	UICorner_6.Parent = Frame_3

	UIListLayout_6.Parent = Frame_3
	UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder

	Render_3.Name = "Render"
	Render_3.Parent = Eclipse
	Render_3.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	Render_3.Position = UDim2.new(0.417450964, 0, 0.0368271954, 0)
	Render_3.Size = UDim2.new(0, 154, 0, 261)
	Render_3.Visible = false

	UICorner_7.Parent = Render_3

	UIListLayout_7.Parent = Render_3
	UIListLayout_7.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_7.SortOrder = Enum.SortOrder.LayoutOrder

	TopBar_4.Name = "TopBar"
	TopBar_4.Parent = Render_3
	TopBar_4.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	TopBar_4.Position = UDim2.new(0.0227272734, 0, 0, 0)
	TopBar_4.Size = UDim2.new(0, 142, 0, 35)
	TopBar_4.Font = Enum.Font.FredokaOne
	TopBar_4.Text = "Render"
	TopBar_4.TextColor3 = Color3.fromRGB(255, 255, 255)
	TopBar_4.TextScaled = true
	TopBar_4.TextSize = 14.000
	TopBar_4.TextWrapped = true

	Frame_4.Name = "Frame"
	Frame_4.Parent = Render_3
	Frame_4.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	Frame_4.ClipsDescendants = false
	Frame_4.Position = UDim2.new(0.00324675324, 0, 0.134099618, 0)
	Frame_4.Selectable = false
	Frame_4.Size = UDim2.new(0, 153, 0, 219)
	Frame_4.CanvasSize = UDim2.new(0, 0, 10, 0)
	Frame_4.ScrollBarThickness = 5

	UICorner_8.Parent = Frame_4

	UIListLayout_8.Parent = Frame_4
	UIListLayout_8.SortOrder = Enum.SortOrder.LayoutOrder

	Utility.Name = "Utility"
	Utility.Parent = Eclipse
	Utility.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	Utility.Position = UDim2.new(0.549755573, 0, 0.0368271954, 0)
	Utility.Size = UDim2.new(0, 154, 0, 261)
	Utility.Visible = false

	UICorner_9.Parent = Utility

	UIListLayout_9.Parent = Utility
	UIListLayout_9.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_9.SortOrder = Enum.SortOrder.LayoutOrder

	TopBar_5.Name = "TopBar"
	TopBar_5.Parent = Utility
	TopBar_5.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	TopBar_5.Position = UDim2.new(0.0227272734, 0, 0, 0)
	TopBar_5.Size = UDim2.new(0, 142, 0, 35)
	TopBar_5.Font = Enum.Font.FredokaOne
	TopBar_5.Text = "Utility"
	TopBar_5.TextColor3 = Color3.fromRGB(255, 255, 255)
	TopBar_5.TextScaled = true
	TopBar_5.TextSize = 14.000
	TopBar_5.TextWrapped = true

	Frame_5.Name = "Frame"
	Frame_5.Parent = Utility
	Frame_5.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	Frame_5.ClipsDescendants = false
	Frame_5.Position = UDim2.new(0.00324675324, 0, 0.134099618, 0)
	Frame_5.Selectable = false
	Frame_5.Size = UDim2.new(0, 153, 0, 219)
	Frame_5.CanvasSize = UDim2.new(0, 0, 10, 0)
	Frame_5.ScrollBarThickness = 5

	UICorner_10.Parent = Frame_5

	UIListLayout_10.Parent = Frame_5
	UIListLayout_10.SortOrder = Enum.SortOrder.LayoutOrder

	World_2.Name = "World"
	World_2.Parent = Eclipse
	World_2.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	World_2.Position = UDim2.new(0.681816041, 0, 0.0368271954, 0)
	World_2.Size = UDim2.new(0, 154, 0, 261)
	World_2.Visible = false

	UICorner_11.Parent = World_2

	UIListLayout_11.Parent = World_2
	UIListLayout_11.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_11.SortOrder = Enum.SortOrder.LayoutOrder

	TopBar_6.Name = "TopBar"
	TopBar_6.Parent = World_2
	TopBar_6.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	TopBar_6.Position = UDim2.new(0.0227272734, 0, 0, 0)
	TopBar_6.Size = UDim2.new(0, 142, 0, 35)
	TopBar_6.Font = Enum.Font.FredokaOne
	TopBar_6.Text = "World"
	TopBar_6.TextColor3 = Color3.fromRGB(255, 255, 255)
	TopBar_6.TextScaled = true
	TopBar_6.TextSize = 14.000
	TopBar_6.TextWrapped = true

	Frame_6.Name = "Frame"
	Frame_6.Parent = World_2
	Frame_6.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	Frame_6.ClipsDescendants = false
	Frame_6.Position = UDim2.new(0.00324675324, 0, 0.134099618, 0)
	Frame_6.Selectable = false
	Frame_6.Size = UDim2.new(0, 153, 0, 219)
	Frame_6.CanvasSize = UDim2.new(0, 0, 10, 0)
	Frame_6.ScrollBarThickness = 5

	UICorner_12.Parent = Frame_6

	UIListLayout_12.Parent = Frame_6
	UIListLayout_12.SortOrder = Enum.SortOrder.LayoutOrder
	
	function MainAPI:COB(argstable)
		local Name = argstable["Name"]
		local Function = argstable["Function"]
		local Default = argstable["Default"]
		local Tab = argstable["Tab"]
		local callback = Default
		local InputBind = argstable["Bind"]
		local InputBind2 = InputBind
		local API2 = {}
		local BindValue = ""
		local children = {}
		local childrenopen = false
		
		local OptionsButton = Instance.new("TextButton")
		local Bind = Instance.new("ImageButton")
		local UICorner = Instance.new("UICorner")
		OptionsButton.Name = Name
		OptionsButton.Parent = Eclipse[Tab].Frame
		OptionsButton.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
		OptionsButton.BorderColor3 = Color3.fromRGB(54, 54, 54)
		OptionsButton.BorderSizePixel = 0
		OptionsButton.Size = UDim2.new(0, 147, 0, 35)
		OptionsButton.Font = Enum.Font.SourceSans
		OptionsButton.Text = Name
		OptionsButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		OptionsButton.TextSize = 20.000
		OptionsButton.TextWrapped = true
		OptionsButton.MouseButton2Down:Connect(function()
			if childrenopen then
				childrenopen = false
				for i, v in pairs(children) do
					v.Visible = childrenopen
				end
			else
				childrenopen = true
				for i, v in pairs(children) do
					v.Visible = childrenopen
				end
			end
		end)
		
		if callback then
			OptionsButton.BackgroundColor3 = Color3.fromRGB(120,24,255)
			callback = true
		end

		Bind.Name = "Bind"
		Bind.Parent = OptionsButton
		Bind.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
		Bind.Position = UDim2.new(0.78231293, 0, 0.257142872, 0)
		Bind.Size = UDim2.new(0, 18, 0, 18)
		
		local BindText = Instance.new("TextButton", Bind)
		BindText.Name = "BindText"
		BindText.BackgroundTransparency = 1
		BindText.Size = UDim2.new(0,18,0,18)
		BindText.Text = BindValue
		BindText.TextColor3 = Color3.fromRGB(255,255,255)
		
		BindText.MouseButton1Down:Connect(function()
			print("Debug")
			local detect
			detect = UIS.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.Keyboard then
					BindValue = input.Name
					BindText.Text = input.KeyCode.Name
					InputBind2 = input.KeyCode
					detect:Disconnect()
				end
			end)
		end)

		UICorner.CornerRadius = UDim.new(0, 6)
		UICorner.Parent = Bind
		
		function API2:Toggle()
			if callback then
				callback = false
				OptionsButton.BackgroundColor3 = Color3.fromRGB(42,42,42)
				Function(callback)
			else
				callback = true
				OptionsButton.BackgroundColor3 = Color3.fromRGB(120,24,255)
				Function(callback)
			end
		end
		
		OptionsButton.MouseButton1Down:Connect(function()
			API2:Toggle()
		end)
		
		UIS.InputBegan:Connect(function(input)
			if input.KeyCode == InputBind2 then
				API2:Toggle()
			end
		end)
		
		function API2:COB(argstable)
			local API3 = {}
			local Name1 = argstable["Name"]
			local Function1 = argstable["Function"]
			local Default1 = argstable["Default"]
			local callback1 = Default1
			
			local OptionsButton1 = Instance.new("TextButton")
			local UICorner1 = Instance.new("UICorner")
			OptionsButton1.Name = Name1
			OptionsButton1.Parent = Eclipse[Tab].Frame
			OptionsButton1.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
			OptionsButton1.BorderColor3 = Color3.fromRGB(54, 54, 54)
			OptionsButton1.BorderSizePixel = 0
			OptionsButton1.Size = UDim2.new(0, 147, 0, 35)
			OptionsButton1.Font = Enum.Font.SourceSans
			OptionsButton1.Text = Name1
			OptionsButton1.TextColor3 = Color3.fromRGB(255, 255, 255)
			OptionsButton1.TextSize = 20.000
			OptionsButton1.TextWrapped = true
			OptionsButton1.Visible = false
			children[Name1] = OptionsButton1
			
			
			function API3:Toggle()
				if callback1 then
					callback1 = false
					OptionsButton1.BackgroundColor3 = Color3.fromRGB(42,42,42)
					Function(callback1)
				else
					callback1 = true
					OptionsButton1.BackgroundColor3 = Color3.fromRGB(120,24,255)
					Function(callback1)
				end
			end
			
			OptionsButton1.MouseButton1Down:Connect(function()
				API3:Toggle()
			end)
			return API3
		end
		
		return API2
	end
	
	return MainAPI
end

return shared.GuiLibrary
