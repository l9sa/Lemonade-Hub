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

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Robloxian High School 2  Script", "Midnight")

local Job = Window:NewTab("Jobs")

local JobSection = Job:NewSection("Subblox Delivery")
JobSection:NewButton("Sunblox Delivery", "Finish Sunblox Delivery Job", function()
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local humanoid = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

if humanoid then
    getgenv().SunbloxDelivery = true

    while getgenv().SunbloxDelivery do
        for _, v in pairs(game.Workspace.LightBeam:GetChildren()) do
            if v.Name == "Pos" then
                local success, errorInfo = pcall(function()
                    humanoid.CFrame = v.CFrame
                end)
                if not success then
                    warn("Error while setting CFrame:", errorInfo)
                end
                wait(0.1)
            end
        end
    end
else
    warn("HumanoidRootPart not found")
end

end)

local JobSection = Job:NewSection("Club Red Potioneer")
JobSection:NewButton("BloxyCola", "Get BloxyCola For Club Red Potioneer", function()
local args = {
    [1] = "BloxyCola"
}
game:GetService("ReplicatedStorage").Remotes.Jobs.ClubRed.MakePotion:FireServer(unpack(args))
end)

JobSection:NewButton("WitchesBrew", "Get WitchesBrew For Club Red Potioneer", function()
local args = {
    [1] = "WitchesBrew"
}
game:GetService("ReplicatedStorage").Remotes.Jobs.ClubRed.MakePotion:FireServer(unpack(args))
end)

JobSection:NewButton("GhastlyBrew", "Get GhastleyBrew For Club Red Potioneer", function()
local args = {
    [1] = "GhastlyBrew"
}
game:GetService("ReplicatedStorage").Remotes.Jobs.ClubRed.MakePotion:FireServer(unpack(args))
end)

JobSection:NewButton("RedSpice", "Get RedSpice For Club Red Potioneer", function()
local args = {
    [1] = "RedSpice"
}
game:GetService("ReplicatedStorage").Remotes.Jobs.ClubRed.MakePotion:FireServer(unpack(args))
end)

JobSection:NewButton("GreenSpice", "Get GreenSpice For Club Red Potioneer", function()
local args = {
    [1] = "GreenSpice"
}
game:GetService("ReplicatedStorage").Remotes.Jobs.ClubRed.MakePotion:FireServer(unpack(args))
end)

JobSection:NewButton("DragonFire", "Get DragonFire For Club Red Potioneer", function()
local args = {
    [1] = "DragonFire"
}

game:GetService("ReplicatedStorage").Remotes.Jobs.ClubRed.MakePotion:FireServer(unpack(args))
end)

JobSection:NewButton("GoldenChalice", "Get GoldenChalice For Club Red Potioneer", function()
local args = {
    [1] = "GoldenChalice"
}
game:GetService("ReplicatedStorage").Remotes.Jobs.ClubRed.MakePotion:FireServer(unpack(args))
end)


local JobSection = Job:NewSection("Servant Of The Void")
JobSection:NewButton("Finish Job", "Gets Parkour Checkpoint Orbs To AutoComplete", function()
print("Begin Servant Of The Void Completion")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local SectionCompleted = ReplicatedStorage.Remotes.Jobs.ChefUmbras.SectionCompleted

local jobId = "D8706113-6474-49E8-ACBA-CCF96A04B185"
local totalIterations = 150

for i = 1, totalIterations do
    local success, errorInfo = pcall(function()
        SectionCompleted:FireServer({
            [1] = jobId
        })
        print("Completed iteration", i)
    end)
    if not success then
        warn("Error in iteration", i, ":", errorInfo)
    end
end
print("End Servant Of The Void Completion")
end)


local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")

PlayerSection:NewSlider("WalkSpeed", "Walk Faster", 320, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
PlayerSection:NewSlider("JumpPower", "Jump Higher", 350, 50, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumPower = s
end)

PlayerSection:NewButton("Reset WS/JP", "Resets JumpPower And WalkSpeed To Default", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    game.Players.LocalPlayer.Character.Humanoid.JumPower = 50
end)


local Other = Window:NewTab("Other")

local OtherSection = Other:NewSection("Infinite Yield [Admin] Script")
OtherSection:NewButton("Infinite Yield", "Runs Infinite Yield [Admin] Script!", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

local OtherSection = Other:NewSection("Infinite Jump Script")
OtherSection:NewButton("InfiniteJump", "Runs Infinite Jump Script!", function()
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

local OtherSection = Other:NewSection("Fly Script")
OtherSection:NewButton("Fly", "Executes The Fly Script!", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xMintix/Lemonade-Hub/main/Flight.lua"))()
end)

local OtherSection = Other:NewSection("Rejoin Game Script")
OtherSection:NewButton("Rejoin", "Rejoins The Game Using The Same Server", function()
local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Rejoin = coroutine.create(function()
    local Success, ErrorMessage = pcall(function()
        TeleportService:Teleport(game.PlaceId, LocalPlayer)
    end)
    if ErrorMessage and not Success then
        warn(ErrorMessage)
    end
end)

coroutine.resume(Rejoin)
end)

local Tab = Window:NewTab("Credits")
local Section = Tab:NewSection("Owner:! xMintix#0")