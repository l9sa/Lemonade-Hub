local Players = game:GetService("Players")
local ReplicatedFirst = game:GetService("ReplicatedFirst")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Create loading screen
local screenGui = Instance.new("ScreenGui")
local textLabel = Instance.new("TextLabel")
screenGui.IgnoreGuiInset = true
screenGui.Parent = playerGui

textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.BackgroundColor3 = Color3.fromRGB(0, 20, 40)
textLabel.Font = Enum.Font.GothamMedium
textLabel.TextColor3 = Color3.new(0.8, 0.8, 0.8)
textLabel.Text = "Waiting For Game\n To Load"
textLabel.TextSize = 28
textLabel.Parent = screenGui

-- Remove default loading screen
ReplicatedFirst:RemoveDefaultLoadingScreen()

-- Wait for game to load
repeat
    wait()
until game:IsLoaded()

-- Destroy loading screen
screenGui:Destroy()

-- Show key information
local GetKey = Drawing.new("Text")
GetKey.Visible = true
GetKey.Text = "Key Is In Discord Server .gg/aGG9rYNMJA"
GetKey.Transparency = 2
GetKey.Font = 14
GetKey.Size = 33
GetKey.Color = Color3.new(255, 0, 0)
RunService.RenderStepped:Connect(function()
    GetKey.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X/2 - 100, workspace.CurrentCamera.ViewportSize.Y/2)
end)
wait(1)
GetKey:Destroy()

-- Create key unlock GUI
getgenv().KeyUnlocked = false
local Gui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local PasswordHolder = Instance.new("TextBox")
local LoginButton = Instance.new("TextButton")

Gui.Name = "KeyGUI"
Gui.Parent = playerGui

Frame.Name = "MainFrame"
Frame.Parent = Gui
Frame.Size = UDim2.new(0, 200, 0, 150)
Frame.Position = UDim2.new(0.5, -100, 0.5, -75)
Frame.BackgroundTransparency = 0.5
Frame.BackgroundColor3 = Color3.new(0, 0, 0)

PasswordHolder.Name = "PasswordHolder"
PasswordHolder.Parent = Frame
PasswordHolder.Size = UDim2.new(1, -20, 0, 25)
PasswordHolder.Position = UDim2.new(0, 10, 0, 90)
PasswordHolder.PlaceholderText = "Password"
PasswordHolder.Text = ""
PasswordHolder.TextWrapped = false

LoginButton.Name = "LoginButton"
LoginButton.Parent = Frame
LoginButton.Size = UDim2.new(1, 0, 0, 30)
LoginButton.Position = UDim2.new(0, 0, 0, 120)
LoginButton.BackgroundColor3 = Color3.new(0, 0.5, 0.5)
LoginButton.Text = "Login"
LoginButton.FontSize = Enum.FontSize.Size14
LoginButton.MouseButton1Click:Connect(function()
    local password = PasswordHolder.Text
    if password == "lCYehIdOnTEdatPZnumbers" then
        getgenv().KeyUnlocked = true
    else
        -- Display invalid key message
        local InvalidKey = Drawing.new("Text")
        InvalidKey.Visible = true
        InvalidKey.Text = "Key Is Invalid"
        InvalidKey.Transparency = 2
        InvalidKey.Font = 14
        InvalidKey.Size = 33
        InvalidKey.Color = Color3.new(255, 0, 0)
        RunService.RenderStepped:Connect(function()
            InvalidKey.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X/2 - 100, workspace.CurrentCamera.ViewportSize.Y/2)
        end)
        wait(1.5)
        InvalidKey:Remove()
    end
end)


while not getgenv().KeyUnlocked do
    wait()
end

local Gui = Drawing.new("Text")
Gui.Visible = true
Gui.Text = "https://discord.gg/aGG9rYNMJA"
Gui.Transparency = 2
Gui.Font = 14
Gui.Size = 33
Gui.Color = Color3.new(255, 0, 0)
RunService.RenderStepped:Connect(function()
    Gui.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X/2 - 100, workspace.CurrentCamera.ViewportSize.Y/2)
end)
wait(2)
Gui:Remove()

if game.PlaceId == RHS2GameId then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xMintix/Lemonade-Hub/main/RHS2String.lua"))()
elseif game.PlaceId == TreasureHuntSimGameId then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xMintix/Lemonade-Hub/main/Treasure%20Hunt%20Sim/TreasureHuntString.lua"))()
elseif game.PlaceId == BigPaintBallGameId then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xMintix/Lemonade-Hub/main/BigPaintballString.lua"))
else
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xMintix/Lemonade-Hub/main/Universal.lua"))()
end