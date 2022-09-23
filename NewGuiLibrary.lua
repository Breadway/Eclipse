shared.GuiLibrary = {}
local ScriptSettings = {}
local Eclipse
local api = shared.GuiLibrary
local UIS = game:GetService("UserInputService")
local UIToggled = false
local customdir = "Eclipse/"
local Config = customdir .. "Config"

function DragGUI(gui, gui2)
	local MainFrame = gui
	local TopBar = gui2
	local camera = workspace.Camera
	local DragMousePosition
	local FramePosition
	local draggable = false
	
	TopBar.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			draggable = true
			DragMousePosition = Vector2.new(input.Position.X, input.Position.Y)
			FramePosition = Vector2.new(MainFrame.Position.X.Scale, MainFrame.Position.Y.Scale)
			
		end
	end)
	
	TopBar.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			draggable = false
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if draggable then
			local NewPosition = FramePosition + ((Vector2.new(input.Position.X, input.Position.Y) - DragMousePosition) / camera.ViewportSize)
			MainFrame.Position = UDim2.new(NewPosition.X, 0, NewPosition.Y, 0)
		end
	end)
end

function Slide(MainFrame, sliderFrame, sliderButton, SliderDisplay: TextBox, Max, Default)
	local sliderdragging = false
	local percentageValue = Instance.new("IntValue")
	sliderButton.MouseButton1Down:Connect(function()
		sliderdragging = true
	end)
	
	sliderButton.Position = UDim2.new(Default/Max,0,0,0)
	
	UIS.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			sliderdragging = false
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			if sliderdragging then
				local mouseloc = UIS:GetMouseLocation()
				local relativePOS = mouseloc-MainFrame.AbsolutePosition
				local percentage = math.clamp(relativePOS.X/MainFrame.AbsoluteSize.X,0,1)
				
				percentageValue.Value = percentage
				sliderButton.Position = UDim2.new(percentage,0,0,0)
				SliderDisplay.Text = math.round(percentage * Max)
			end
		end
	end)
	
	SliderDisplay.FocusLost:Connect(function(enterPressed)
		if enterPressed then
			local displayNumber = tonumber(SliderDisplay.Text)
			local displayDefault = (displayNumber > Max and Max) or (displayNumber < 0 and 0 or displayNumber)
			sliderButton.Position = UDim2.new(displayDefault/Max,0,0,0)
		end
	end)
	
	return percentageValue
end

function api:CreateMain(Name5, tab1, tab2, tab3, tab4, tab5)
	local MainAPI = {}
	local Eclipse = Instance.new("Frame")
	Eclipse.Visible = false
	local Eclipse1 = Instance.new("ScreenGui")
	Eclipse.Parent = Eclipse1
	Eclipse.BackgroundTransparency = 1
	Eclipse.Size = UDim2.new(0, 1257,0, 545)
	UIS.InputBegan:Connect(function(input)
		if input.KeyCode == Enum.KeyCode.RightShift then
			if UIToggled then
				UIToggled = false
			else
				UIToggled = true
			end
			Eclipse.Visible = UIToggled
		end
	end)

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

	Eclipse1.Name = Name5
	Eclipse1.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	Eclipse1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	Eclipse1.ResetOnSpawn = false

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
	TopBar.Text = Name5
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

	Combat.Name = tab1
	Combat.Parent = Frame
	Combat.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	Combat.BorderColor3 = Color3.fromRGB(54, 54, 54)
	Combat.BorderSizePixel = 0
	Combat.Size = UDim2.new(0, 147, 0, 35)
	Combat.Font = Enum.Font.SourceSans
	Combat.Text = tab1
	Combat.TextColor3 = Color3.fromRGB(255, 255, 255)
	Combat.TextSize = 20.000
	Combat.TextWrapped = true
	Combat.MouseButton1Down:Connect(function()
		local parent = tab1
		if Eclipse[parent].Visible then
			Eclipse[parent].Visible = false
		else
			Eclipse[parent].Visible = true
		end
	end)

	Blatant.Name = tab2
	Blatant.Parent = Frame
	Blatant.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	Blatant.BorderColor3 = Color3.fromRGB(54, 54, 54)
	Blatant.BorderSizePixel = 0
	Blatant.Size = UDim2.new(0, 147, 0, 35)
	Blatant.Font = Enum.Font.SourceSans
	Blatant.Text = tab2
	Blatant.TextColor3 = Color3.fromRGB(255, 255, 255)
	Blatant.TextSize = 20.000
	Blatant.TextWrapped = true
	Blatant.MouseButton1Down:Connect(function()
		local parent = tab2
		if Eclipse[parent].Visible then
			Eclipse[parent].Visible = false
		else
			Eclipse[parent].Visible = true
		end
	end)

	Render.Name = tab3
	Render.Parent = Frame
	Render.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	Render.BorderColor3 = Color3.fromRGB(54, 54, 54)
	Render.BorderSizePixel = 0
	Render.Size = UDim2.new(0, 147, 0, 35)
	Render.Font = Enum.Font.SourceSans
	Render.Text = tab3
	Render.TextColor3 = Color3.fromRGB(255, 255, 255)
	Render.TextSize = 20.000
	Render.TextWrapped = true
	Render.MouseButton1Down:Connect(function()
		local parent = tab3
		if Eclipse[parent].Visible then
			Eclipse[parent].Visible = false
		else
			Eclipse[parent].Visible = true
		end
	end)

	Render_2.Name = tab4
	Render_2.Parent = Frame
	Render_2.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	Render_2.BorderColor3 = Color3.fromRGB(54, 54, 54)
	Render_2.BorderSizePixel = 0
	Render_2.Size = UDim2.new(0, 147, 0, 35)
	Render_2.Font = Enum.Font.SourceSans
	Render_2.Text = tab4
	Render_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Render_2.TextSize = 20.000
	Render_2.TextWrapped = true
	Render_2.MouseButton1Down:Connect(function()
		local parent = tab4
		if Eclipse[parent].Visible then
			Eclipse[parent].Visible = false
		else
			Eclipse[parent].Visible = true
		end
	end)

	World.Name = tab5
	World.Parent = Frame
	World.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	World.BorderColor3 = Color3.fromRGB(54, 54, 54)
	World.BorderSizePixel = 0
	World.Size = UDim2.new(0, 147, 0, 35)
	World.Font = Enum.Font.SourceSans
	World.Text = tab5
	World.TextColor3 = Color3.fromRGB(255, 255, 255)
	World.TextSize = 20.000
	World.TextWrapped = true
	World.MouseButton1Down:Connect(function()
		local parent = tab5
		if Eclipse[parent].Visible then
			Eclipse[parent].Visible = false
		else
			Eclipse[parent].Visible = true
		end
	end)

	Combat_2.Name = tab1
	Combat_2.Parent = Eclipse
	Combat_2.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	Combat_2.Position = UDim2.new(0.150602117, 0, 0.0368271954, 0)
	Combat_2.Size = UDim2.new(0, 154, 0, 261)
	Combat_2.Visible = false
	DragGUI(Main, TopBar)
	DragGUI(Combat_2, TopBar_2)
	DragGUI(Blatant_2, TopBar_3)
	DragGUI(Render_3, TopBar_4)
	DragGUI(Utility, TopBar_5)
	DragGUI(World_2, TopBar_6)

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
	TopBar_2.Text = tab1
	TopBar_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	TopBar_2.TextScaled = true
	TopBar_2.TextSize = 14.000
	TopBar_2.TextWrapped = true

	Frame_2.Name = "Frame"
	Frame_2.Parent = Combat_2
	Frame_2.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	Frame_2.ClipsDescendants = true
	Frame_2.Position = UDim2.new(0.00324675324, 0, 0.134099618, 0)
	Frame_2.Selectable = false
	Frame_2.Size = UDim2.new(0, 153, 0, 219)
	Frame_2.CanvasSize = UDim2.new(0, 0, 10, 0)
	Frame_2.ScrollBarThickness = 5

	UICorner_4.Parent = Frame_2

	UIListLayout_4.Parent = Frame_2
	UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder

	Blatant_2.Name = tab2
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
	TopBar_3.Text = tab2
	TopBar_3.TextColor3 = Color3.fromRGB(255, 255, 255)
	TopBar_3.TextScaled = true
	TopBar_3.TextSize = 14.000
	TopBar_3.TextWrapped = true

	Frame_3.Name = "Frame"
	Frame_3.Parent = Blatant_2
	Frame_3.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	Frame_3.ClipsDescendants = true
	Frame_3.Position = UDim2.new(0.00324675324, 0, 0.134099618, 0)
	Frame_3.Selectable = false
	Frame_3.Size = UDim2.new(0, 153, 0, 219)
	Frame_3.CanvasSize = UDim2.new(0, 0, 10, 0)
	Frame_3.ScrollBarThickness = 5

	UICorner_6.Parent = Frame_3

	UIListLayout_6.Parent = Frame_3
	UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder

	Render_3.Name = tab3
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
	TopBar_4.Text = tab3
	TopBar_4.TextColor3 = Color3.fromRGB(255, 255, 255)
	TopBar_4.TextScaled = true
	TopBar_4.TextSize = 14.000
	TopBar_4.TextWrapped = true

	Frame_4.Name = "Frame"
	Frame_4.Parent = Render_3
	Frame_4.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	Frame_4.ClipsDescendants = true
	Frame_4.Position = UDim2.new(0.00324675324, 0, 0.134099618, 0)
	Frame_4.Selectable = false
	Frame_4.Size = UDim2.new(0, 153, 0, 219)
	Frame_4.CanvasSize = UDim2.new(0, 0, 10, 0)
	Frame_4.ScrollBarThickness = 5

	UICorner_8.Parent = Frame_4

	UIListLayout_8.Parent = Frame_4
	UIListLayout_8.SortOrder = Enum.SortOrder.LayoutOrder

	Utility.Name = tab4
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
	TopBar_5.Text = tab4
	TopBar_5.TextColor3 = Color3.fromRGB(255, 255, 255)
	TopBar_5.TextScaled = true
	TopBar_5.TextSize = 14.000
	TopBar_5.TextWrapped = true

	Frame_5.Name = "Frame"
	Frame_5.Parent = Utility
	Frame_5.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	Frame_5.ClipsDescendants = true
	Frame_5.Position = UDim2.new(0.00324675324, 0, 0.134099618, 0)
	Frame_5.Selectable = false
	Frame_5.Size = UDim2.new(0, 153, 0, 219)
	Frame_5.CanvasSize = UDim2.new(0, 0, 10, 0)
	Frame_5.ScrollBarThickness = 5

	UICorner_10.Parent = Frame_5

	UIListLayout_10.Parent = Frame_5
	UIListLayout_10.SortOrder = Enum.SortOrder.LayoutOrder

	World_2.Name = tab5
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
	TopBar_6.Text = tab5
	TopBar_6.TextColor3 = Color3.fromRGB(255, 255, 255)
	TopBar_6.TextScaled = true
	TopBar_6.TextSize = 14.000
	TopBar_6.TextWrapped = true

	Frame_6.Name = "Frame"
	Frame_6.Parent = World_2
	Frame_6.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	Frame_6.ClipsDescendants = true
	Frame_6.Position = UDim2.new(0.00324675324, 0, 0.134099618, 0)
	Frame_6.Selectable = false
	Frame_6.Size = UDim2.new(0, 153, 0, 219)
	Frame_6.CanvasSize = UDim2.new(0, 0, 10, 0)
	Frame_6.ScrollBarThickness = 5

	UICorner_12.Parent = Frame_6

	UIListLayout_12.Parent = Frame_6
	UIListLayout_12.SortOrder = Enum.SortOrder.LayoutOrder

	function MainAPI:CreateButton(argstable)
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
		API2.Value = callback

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
		
		local clicked = 0
		local valid = true
		BindText.MouseButton1Down:Connect(function()
			valid = true
			clicked += 1
			local detect
			wait(0.1)
			
			detect = UIS.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.Keyboard then
					if valid then
						BindValue = input.Name
						BindText.Text = input.KeyCode.Name
						InputBind2 = input.KeyCode
						detect:Disconnect()
						UpdateSettings()
						valid = false
						wait(0.1)
						valid = true
						clicked = 0
					end
				end
			end)
			local function Disconnect()
				detect:Disconnect()
			end
			if clicked == 2 then
				InputBind2 = InputBind
				BindText.Text = ""
				valid = false
				Disconnect()
			end
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
			if input.KeyCode == InputBind2 and valid then
				API2:Toggle()
			end
		end)
		
		function API2:CreateTextBox(argstable)
			local Name1 = argstable["Name"]
			local Default1 = argstable["Default"] 
			local callback1 = Default1
			
			local TextBox = Instance.new("Frame")
			TextBox.Visible = false
			local UIListLayout = Instance.new("UIListLayout")
			local Name3 = Instance.new("TextLabel")
			local Value = Instance.new("TextBox")
			local UICorner = Instance.new("UICorner")
			TextBox.Name = Name1
			TextBox.Parent = Eclipse[Tab].Frame
			TextBox.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
			TextBox.Position = UDim2.new(0, 0, 0.159817278, 0)
			TextBox.Size = UDim2.new(0, 153, 0, 35)
			children[Name] = TextBox

			UIListLayout.Parent = TextBox
			UIListLayout.FillDirection = Enum.FillDirection.Horizontal
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

			Name3.Name = Name1
			Name3.Parent = TextBox
			Name3.Active = true
			Name3.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
			Name3.BorderColor3 = Color3.fromRGB(42, 42, 42)
			Name3.BorderSizePixel = 0
			Name3.Selectable = true
			Name3.Size = UDim2.new(0, 98, 0, 35)
			Name3.Font = Enum.Font.SourceSans
			Name3.Text = Name1
			Name3.TextColor3 = Color3.fromRGB(255, 255, 255)
			Name3.TextSize = 20.000
			Name3.TextWrapped = true

			Value.Name = "Value"
			Value.Parent = TextBox
			Value.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
			Value.Position = UDim2.new(0.640522897, 0, 0, 0)
			Value.Size = UDim2.new(0, 49, 0, 28)
			Value.Font = Enum.Font.SourceSans
			Value.Text = callback1
			Value.TextColor3 = Color3.fromRGB(255, 255, 255)
			Value.TextSize = 14.000
			Value.TextScaled = true

			Value.FocusLost:Connect(function(enterPressed)
				if enterPressed then

				end
			end)

			UICorner.CornerRadius = UDim.new(0, 6)
			UICorner.Parent = Value
			
			return Value
		end
		
		function API2:CreateButton(argstable)
			local API3 = {}
			local Name1 = argstable["Name"]
			local Function1 = argstable["Function"]
			local Default1 = argstable["Default"]
			local callback1 = Default1

			local OptionsButton1 = Instance.new("TextButton")
			local UICorner1 = Instance.new("UICorner")
			OptionsButton1.Name = Name1
			OptionsButton1.Parent = Eclipse[Tab].Frame
			OptionsButton1.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
			OptionsButton1.BorderColor3 = Color3.fromRGB(42, 42, 42)
			OptionsButton1.BorderSizePixel = 0
			OptionsButton1.Size = UDim2.new(0, 153, 0, 35)
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
					OptionsButton1.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
					Function1(callback1)
				else
					callback1 = true
					OptionsButton1.BackgroundColor3 = Color3.fromRGB(120,24,255)
					Function1(callback1)
				end
			end

			OptionsButton1.MouseButton1Down:Connect(function()
				API3:Toggle()
			end)
			return API3
		end
		
		function API2:CreateSlider(argstable)
			local Name1 = argstable["Name"]
			local Max1 = argstable["Max"]
			local Default1 = argstable["Default"]
			local Value = Instance.new("IntValue")
			Value.Value = Default1
			
			local Slider = Instance.new("Frame")
			local Slider_2 = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local Name = Instance.new("TextLabel")
			local TextBox = Instance.new("TextBox")
			local SliderHead = Instance.new("ImageButton")
			local UICorner_2 = Instance.new("UICorner")
			Slider.Name = "Slider"
			Slider.Parent = Eclipse[Tab].Frame
			Slider.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
			Slider.Position = UDim2.new(0, 0, 0.159817278, 0)
			Slider.Size = UDim2.new(0, 153, 0, 35)
			children[Name1] = Slider
			Slider.Visible = false

			Slider_2.Name = Name1
			Slider_2.Parent = Slider
			Slider_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Slider_2.Position = UDim2.new(0.111111112, 0, 0.728571415, 0)
			Slider_2.Size = UDim2.new(0, 98, 0, 1)

			UICorner.CornerRadius = UDim.new(0, 1)
			UICorner.Parent = Slider_2

			Name.Name = "Name"
			Name.Parent = Slider
			Name.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
			Name.BackgroundTransparency = 1.000
			Name.BorderSizePixel = 0
			Name.Position = UDim2.new(0, 0, 0.171428576, 0)
			Name.Size = UDim2.new(0, 98, 0, 19)
			Name.Font = Enum.Font.SourceSans
			Name.TextColor3 = Color3.fromRGB(255, 255, 255)
			Name.TextSize = 14.000
			Name.Text = Name1

			TextBox.Parent = Slider
			TextBox.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
			TextBox.Position = UDim2.new(0.790849686, 0, 0.200000003, 0)
			TextBox.Size = UDim2.new(0, 32, 0, 24)
			TextBox.Font = Enum.Font.SourceSans
			TextBox.Text = Value.Value
			TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextBox.TextSize = 14.000

			SliderHead.Name = "SliderHead"
			SliderHead.Parent = Slider_2
			SliderHead.Active = false
			SliderHead.BackgroundColor3 = Color3.fromRGB(120, 24, 255)
			SliderHead.Position = UDim2.new(0, 0, 0, 0)
			SliderHead.AnchorPoint = Vector2.new(0.5,0.5)
			SliderHead.Selectable = false
			SliderHead.Size = UDim2.new(0, 12, 0, 12)

			UICorner_2.Parent = SliderHead
			
			Value.Value = Slide(Slider, Slider_2, SliderHead, TextBox, Max1, Default1).Value
			
			return TextBox
		end

		return API2
	end

	return MainAPI
end

return shared.GuiLibrary
