local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local Humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = LocalPlayer.PlayerGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local Frame = Instance.new("Frame")
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(66, 67, 66)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0107361963, 0, 0.0633333623, 0)
Frame.Size = UDim2.new(0, 162, 0, 153)
Frame.Active = true
Frame.Draggable = true

local UICorner = Instance.new("UICorner")
UICorner.Parent = Frame
UICorner.CornerRadius = UDim.new(0, 12)

local TextBox = Instance.new("TextBox")
TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(66, 67, 66)
-- (Other properties)

local function onKeyPress(input)
    if input.KeyCode == Enum.KeyCode.Space then
        Humanoid:ChangeState("Jumping")
        wait(0.075)
        Humanoid:ChangeState("Seated")
    end
end

local function enableInfJump()
    if Humanoid then
        UserInputService.InputBegan:Connect(onKeyPress)
    else
        warn("Humanoid not found")
    end
end

local Flight = Instance.new("TextButton")
Flight.Parent = Frame
Flight.BackgroundColor3 = Color3.fromRGB(66, 67, 66)
-- (Other properties)
Flight.MouseButton1Down:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xMintix/Lemonade-Hub/main/Flight.lua"))()
end)

local InfJump = Instance.new("TextButton")
InfJump.Parent = Frame
InfJump.BackgroundColor3 = Color3.fromRGB(66, 67, 66)
-- (Other properties)
InfJump.MouseButton1Down:Connect(enableInfJump)

local AntiAFK = Instance.new("TextButton")
AntiAFK.Parent = Frame
AntiAFK.BackgroundColor3 = Color3.fromRGB(66, 67, 66)
-- (Other properties)
AntiAFK.MouseButton1Down:Connect(function()
    local VirtualUser = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:Connect(function()
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
    end)
    print("Anti afk working.")
end)