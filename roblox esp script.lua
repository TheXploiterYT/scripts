-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.0903328061, 0, 0.357055217, 0)
Frame.Size = UDim2.new(0, 175, 0, 74)
Frame.Active = true
Frame.Draggable = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Position = UDim2.new(0.106719375, 0, 0.156211659, 0)
TextButton.Size = UDim2.new(0, 133, 0, 37)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Add/Remove ESP"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000

-- Scripts:

local function YNDEYW_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local toggle = false
	
	script.Parent.MouseButton1Down:Connect(function()
		if toggle == false then
			loadstring(game:HttpGet('https://pastebin.com/raw/gwN6fn2v'))()
			toggle = true
		else
			game.CoreGui.ESP:Remove()
			toggle = false
		end
	end)
end
coroutine.wrap(YNDEYW_fake_script)()
