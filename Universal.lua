local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextBox = Instance.new("TextBox")
local Flight = Instance.new("TextButton")
local InfJump = Instance.new("TextButton")
local AntiAFK = Instance.new("TextButton")


ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(66, 67, 66)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0107361963, 0, 0.0633333623, 0)
Frame.Size = UDim2.new(0, 162, 0, 153)
Frame.Active = true
Frame.Draggable = true

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = Frame

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(66, 67, 66)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.0213006139, 0, 0.06333334, 0)
TextBox.Size = UDim2.new(0, 92, 0, 30)
TextBox.Font = Enum.Font.SourceSansBold
TextBox.Text = "Combat"
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextSize = 14.000

Flight.Name = "Flight"
Flight.Parent = Frame
Flight.BackgroundColor3 = Color3.fromRGB(66, 67, 66)
Flight.BorderColor3 = Color3.fromRGB(0, 0, 0)
Flight.BorderSizePixel = 0
Flight.Position = UDim2.new(0.0230818391, 0, 0.247516364, 0)
Flight.Size = UDim2.new(0, 153, 0, 35)
Flight.Font = Enum.Font.SourceSans
Flight.Text = "Flight                                                         "
Flight.TextColor3 = Color3.fromRGB(255, 255, 255)
Flight.TextSize = 14.000
Flight.MouseButton1Down:connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xMintix/Lemonade-Hub/main/Flight.lua"))()
end)

InfJump.Name = "InfJump"
InfJump.Parent = Frame
InfJump.BackgroundColor3 = Color3.fromRGB(66, 67, 66)
InfJump.BorderColor3 = Color3.fromRGB(0, 0, 0)
InfJump.BorderSizePixel = 0
InfJump.Position = UDim2.new(0.0027820447, 0, 0.699673235, 0)
InfJump.Size = UDim2.new(0, 158, 0, 33)
InfJump.Font = Enum.Font.SourceSans
InfJump.Text = "InfJump                                                       "
InfJump.TextColor3 = Color3.fromRGB(255, 255, 255)
InfJump.TextSize = 14.000
InfJump.MouseButton1Down:connect(function()
    local Players = game:GetService("Players")
    local UserInputService = game:GetService("UserInputService")

    local LocalPlayer = Players.LocalPlayer
    local Humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    local Mouse = LocalPlayer:GetMouse()

    if Humanoid then
        getgenv().infinjump = true

        local function onKeyPress(input)
            if getgenv().infinjump and input.KeyCode == Enum.KeyCode.Space then
                Humanoid:ChangeState("Jumping")
                wait(0.075)
                Humanoid:ChangeState("Seated")
            end
        end
        UserInputService.InputBegan:Connect(onKeyPress)
    else
        warn("Humanoid not found")
    end
end)

AntiAFK.Name = "AntiAFK"
AntiAFK.Parent = Frame
AntiAFK.BackgroundColor3 = Color3.fromRGB(66, 67, 66)
AntiAFK.BorderColor3 = Color3.fromRGB(0, 0, 0)
AntiAFK.BorderSizePixel = 0
AntiAFK.Position = UDim2.new(0.00456331996, 0, 0.477450997, 0)
AntiAFK.Size = UDim2.new(0, 159, 0, 34)
AntiAFK.Font = Enum.Font.SourceSans
AntiAFK.Text = "AntiAFK                                                       "
AntiAFK.TextColor3 = Color3.fromRGB(255, 255, 255)
AntiAFK.TextSize = 14.000
AntiAFK.MouseButton1Down:connect(function()
    local VirtualUser = game:service'VirtualUser'
	game:service'Players'.LocalPlayer.Idled:connect(function()
		VirtualUser:CaptureController()
		VirtualUser:ClickButton2(Vector2.new())
	end)

	print("Anti afk working.")
end)