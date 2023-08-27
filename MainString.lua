local Players = game:GetService("Players")
local ReplicatedFirst = game:GetService("ReplicatedFirst")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
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

ReplicatedFirst:RemoveDefaultLoadingScreen()
repeat
  wait()
until game:IsLoaded()
screenGui:Destroy()

local Gui = Drawing.new("Text")
Gui.Visible=true
Gui.Text="Brought to you by @xMintix on discord"
Gui.Transparency=2
Gui.Font=14
Gui.Size=33
Gui.Color=Color3.new(255,0,0)
game:GetService("RunService").RenderStepped:Connect(function()a.Position=Vector2.new(workspace.CurrentCamera.ViewportSize.X/2-100
,workspace.CurrentCamera.ViewportSize.Y/2)end)
wait(3)
Gui:Remove()

local RHS2GameId = 2098516465
local TreasureHuntSimGameId = 1345139196
local BigPaintBallGameId = 3527629287

if game.PlaceId == RHS2GameId then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xMintix/Lemonade-Hub/main/RHS2String.lua"))()
elseif game.PlaceId == TreasureHuntSimGameId then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xMintix/Lemonade-Hub/main/Treasure%20Hunt%20Sim/TreasureHuntString.lua"))()
elseif game.PlaceId == BigPaintBallGameId then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xMintix/Lemonade-Hub/main/BigPaintballString.lua"))
else
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xMintix/Lemonade-Hub/main/Universal.lua"))()
end
