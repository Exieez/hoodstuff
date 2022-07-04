-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local lock = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local swag = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local UICorner_5 = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local Test = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(41, 41, 41)
Frame.BorderColor3 = Color3.fromRGB(41, 41, 41)
Frame.Position = UDim2.new(0.351421177, 0, 0.267415702, 0)
Frame.Size = UDim2.new(0, 230, 0, 207)

UICorner.Parent = Frame

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(41, 41, 41)
TextLabel.BorderColor3 = Color3.fromRGB(41, 41, 41)
TextLabel.Size = UDim2.new(0, 230, 0, 50)
TextLabel.Font = Enum.Font.SciFi
TextLabel.Text = "Exie's Hood Games Stuff"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 23.000

UICorner_2.Parent = TextLabel

lock.Name = "lock"
lock.Parent = Frame
lock.BackgroundColor3 = Color3.fromRGB(41, 41, 41)
lock.BorderColor3 = Color3.fromRGB(41, 41, 41)
lock.Position = UDim2.new(0, 0, 0.241545901, 0)
lock.Size = UDim2.new(0, 230, 0, 50)
lock.Font = Enum.Font.Sarpanch
lock.Text = "Cam Lock (Hella Good)"
lock.TextColor3 = Color3.fromRGB(255, 255, 255)
lock.TextSize = 26.000

UICorner_3.Parent = lock

swag.Name = "swag"
swag.Parent = Frame
swag.BackgroundColor3 = Color3.fromRGB(41, 41, 41)
swag.BorderColor3 = Color3.fromRGB(41, 41, 41)
swag.Position = UDim2.new(0, 0, 0.483091801, 0)
swag.Size = UDim2.new(0, 230, 0, 50)
swag.Font = Enum.Font.Sarpanch
swag.Text = "Swag Mode"
swag.TextColor3 = Color3.fromRGB(255, 255, 255)
swag.TextSize = 26.000

UICorner_4.Parent = swag

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(41, 41, 41)
TextLabel_2.BorderColor3 = Color3.fromRGB(41, 41, 41)
TextLabel_2.Position = UDim2.new(0, 0, 0.758454204, 0)
TextLabel_2.Size = UDim2.new(0, 230, 0, 50)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Check The Console For Keybinds."
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 11.000

UICorner_5.Parent = TextLabel_2

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(41, 41, 41)
TextButton.BorderColor3 = Color3.fromRGB(41, 41, 41)
TextButton.Position = UDim2.new(0.908695638, 0, 0, 0)
TextButton.Size = UDim2.new(0, 21, 0, 16)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "X"
TextButton.TextColor3 = Color3.fromRGB(252, 0, 6)
TextButton.TextSize = 14.000

UICorner_6.Parent = TextButton

Test.Name = "Test"
Test.Parent = ScreenGui
Test.BackgroundColor3 = Color3.fromRGB(41, 41, 41)
Test.BorderColor3 = Color3.fromRGB(41, 14, 41)
Test.Position = UDim2.new(0.922480583, 0, 0.466797084, 0)
Test.Size = UDim2.new(0, 119, 0, 37)
Test.Font = Enum.Font.SourceSans
Test.Text = "Open"
Test.TextColor3 = Color3.fromRGB(255, 255, 255)
Test.TextSize = 14.000

UICorner_7.Parent = Test

-- Scripts:

local function ZRCOYA_fake_script() -- lock.LocalScript 
	local script = Instance.new('LocalScript', lock)

	lock.MouseButton1Down:connect(function()
		getgenv().Prediction = 0.1248710929171	
		getgenv().AimPart = "HumanoidRootPart"	
		getgenv().Key = "Q"	
		getgenv().DisableKey = "P"	
	
		getgenv().FOV = true	
		getgenv().ShowFOV = false	
		getgenv().FOVSize = 55	
	
		--// Variables (Service)	
	
		local Players = game:GetService("Players")	
		local RS = game:GetService("RunService")	
		local WS = game:GetService("Workspace")	
		local GS = game:GetService("GuiService")	
		local SG = game:GetService("StarterGui")	
	
		--// Variables (regular)	
	
		local LP = Players.LocalPlayer	
		local Mouse = LP:GetMouse()	
		local Camera = WS.CurrentCamera	
		local GetGuiInset = GS.GetGuiInset	
	
		local AimlockState = true	
		local Locked	
		local Victim	
	
		local SelectedKey = getgenv().Key	
		local SelectedDisableKey = getgenv().DisableKey	
	
		--// Notification function	
	
		function Notify(tx)	
			SG:SetCore("SendNotification", {	
				Title = "Camlock ",	
				Text = tx,	
				Duration = 5	
			})	
		end	
	
		--// Check if aimlock is loaded	
	
		if getgenv().Loaded == true then	
			Notify("Aimlock has already been executed! If this problem presists rejoin the game")	
			return	
		end	
	
		getgenv().Loaded = true	
	
		--// FOV Circle	
	
		local fov = Drawing.new("Circle")	
		fov.Filled = false	
		fov.Transparency = 1	
		fov.Thickness = 1	
		fov.Color = Color3.fromRGB(255, 255, 0)	
		fov.NumSides = 1000	
	
		--// Functions	
	
		function update()	
			if getgenv().FOV == true then	
				if fov then	
					fov.Radius = getgenv().FOVSize * 2	
					fov.Visible = getgenv().ShowFOV	
					fov.Position = Vector2.new(Mouse.X, Mouse.Y + GetGuiInset(GS).Y)	
	
					return fov	
				end	
			end	
		end	
	
		function WTVP(arg)	
			return Camera:WorldToViewportPoint(arg)	
		end	
	
		function WTSP(arg)	
			return Camera.WorldToScreenPoint(Camera, arg)	
		end	
	
		function getClosest()	
			local closestPlayer	
			local shortestDistance = math.huge	
	
			for i, v in pairs(game.Players:GetPlayers()) do	
				local notKO = v.Character:WaitForChild("BodyEffects")["K.O"].Value ~= true	
				local notGrabbed = v.Character:FindFirstChild("GRABBING_COINSTRAINT") == nil	
	
				if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild(getgenv().AimPart) and notKO and notGrabbed then	
					local pos = Camera:WorldToViewportPoint(v.Character.PrimaryPart.Position)	
					local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).magnitude	
	
					if (getgenv().FOV) then	
						if (fov.Radius > magnitude and magnitude < shortestDistance) then	
							closestPlayer = v	
							shortestDistance = magnitude	
						end	
					else	
						if (magnitude < shortestDistance) then	
							closestPlayer = v	
							shortestDistance = magnitude	
						end	
					end	
				end	
			end	
			return closestPlayer	
		end	
	
		--// Checks if key is down	
	
		Mouse.KeyDown:Connect(function(k)	
			SelectedKey = SelectedKey:lower()	
			SelectedDisableKey = SelectedDisableKey:lower()	
			if k == SelectedKey then	
				if AimlockState == true then	
					Locked = not Locked	
					if Locked then	
						Victim = getClosest()	
	
						Notify("Locked onto: "..tostring(Victim.Character.Humanoid.DisplayName))	
					else	
						if Victim ~= nil then	
							Victim = nil	
	
							Notify("Unlocked!")	
						end	
					end	
				else	
					Notify("Aimlock is not enabled!")	
				end	
			end	
			if k == SelectedDisableKey then	
				AimlockState = not AimlockState	
			end	
		end)	
	
		--// Loop update FOV and loop camera lock onto target	
	
		RS.RenderStepped:Connect(function()	
			update()	
			if AimlockState == true then	
				if Victim ~= nil then	
					Camera.CFrame = CFrame.new(Camera.CFrame.p, Victim.Character[getgenv().AimPart].Position + Victim.Character[getgenv().AimPart].Velocity*getgenv().Prediction)	
				end	
			end	
		end)	
		while wait() do
			if getgenv().AutoPrediction == true then	
				local pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()	
				local split = string.split(pingvalue,'(')	
				local ping = tonumber(split[1])	
				if ping < 225 then	
					getgenv().Prediction = 1.4	
				elseif ping < 215 then	
					getgenv().Prediction = 1.2	
				elseif ping < 205 then
					getgenv().Prediction = 1.0	
				elseif ping < 190 then
					getgenv().Prediction = 0.10	
				elseif ping < 180 then	
					getgenv().Prediction = 0.12	
				elseif ping < 170 then
					getgenv().Prediction = 0.15	
				elseif ping < 160 then
					getgenv().Prediction = 0.18	
				elseif ping < 150 then
					getgenv().Prediction = 0.110	
				elseif ping < 140 then	
					getgenv().Prediction = 0.113	
				elseif ping < 130 then	
					getgenv().Prediction = 0.116	
				elseif ping < 120 then	
					getgenv().Prediction = 0.120	
				elseif ping < 110 then	
					getgenv().Prediction = 0.124	
				elseif ping < 105 then	
					getgenv().Prediction = 0.127	
				elseif ping < 90 then	
					getgenv().Prediction = 0.130	
				elseif ping < 80 then	
					getgenv().Prediction = 0.133	
				elseif ping < 70 then	
					getgenv().Prediction = 0.136	
				elseif ping < 60 then	
					getgenv().Prediction = 0.140	
				elseif ping < 50 then	
					getgenv().Prediction = 0.143	
				elseif ping < 40 then	
					getgenv().Prediction = 0.145	
				elseif ping < 30 then	
					getgenv().Prediction = 0.155	
				elseif ping < 20 then	
					getgenv().Prediction = 0.157	
				end	
			end	
		end
	end)
end
coroutine.wrap(ZRCOYA_fake_script)()
local function WFWHNQK_fake_script() -- swag.LocalScript 
	local script = Instance.new('LocalScript', swag)

	swag.MouseButton1Down:connect(function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/lerkermer/lua-projects/master/SwagModeV002'))()
	end)
end
coroutine.wrap(WFWHNQK_fake_script)()
local function QAYVC_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	print ("Keybinds for Camlock, Q to lock onto someone and P to disable the lock. Note: When you disable the lock and re-enable it you will be locked onto the same person.")
	
	print ("Swag Mode GUI Keybind is V.")
end
coroutine.wrap(QAYVC_fake_script)()
local function PQIUATW_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Visible = false
	end)
	
	
	
	
end
coroutine.wrap(PQIUATW_fake_script)()
local function NZGT_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end
	
	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
end
coroutine.wrap(NZGT_fake_script)()
local function KUJWJJR_fake_script() -- Test.LocalScript 
	local script = Instance.new('LocalScript', Test)

	local frame = script.Parent.Parent.Frame  -- change “Test” to the name of the frane
	local open = false
	
	script.Parent.MouseButton1Click:Connect(function()
		if frame.Visible == false then
			frame.Visible = true
		end
	end)
	
end
coroutine.wrap(KUJWJJR_fake_script)()

--- anti cheat bypass cause im too lazy to make my own 

coroutine.resume(coroutine.create(function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/ilovedogs1235/Testing/main/scp-3008-one'))()
end))
coroutine.resume(coroutine.create(function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/ilovedogs1235/Testing/main/scp-3008-two'))()
end))
