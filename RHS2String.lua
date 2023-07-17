local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Robloxian High School 2  Script", "Midnight")

local Job = Window:NewTab("Jobs")

local JobSection = Job:NewSection("Subblox Delivery")
JobSection:NewButton("Sunblox Delivery", "Finish Sunblox Delivery Job", function()
    local humanoid = game.Players.LocalPlayer.Character.HumanoidRootPart
    _G.SunbloxDelivery = true

    while _G.SunbloxDelivery == true do
        for i, v in pairs(game.Workspace.LightBeam:GetChildren()) do
            if v.Name == "Pos" then
                humanoid.CFrame = v.CFrame
                wait(0.1)
            end
        end
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
for i = 1 , 50 do
    game:GetService("ReplicatedStorage").Remotes.Jobs.ChefUmbras.SectionCompleted:FireServer(
        {
            [1] = "D8706113-6474-49E8-ACBA-CCF96A04B185"
        }
    )
end
print("End Servant Of The Void Completion")
end)


local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")

PlayerSection:NewSlider("WalkSpeed", "Walk Faster", 320, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
PlayerSection:NewSlider("JumpPower", "Jump Higher", 350, 50, function(s) -- 500 (MaxValue) | 0 (MinValue)
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
    game.StarterGui:SetCore("SendNotification", {
        Title = "xMintix Dev";
        Text = "- Infinite Jump executed Spam the space button as you can.";
        Icon = "rbxassetid://4414605822";
        Duration = 3;
    })
     
    _G.infinjump = true
     
    local Player = game:GetService("Players").LocalPlayer
    local Mouse = Player:GetMouse()
    Mouse.KeyDown:connect(function(k)
    if _G.infinjump then
    if k:byte() == 32 then
    Humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
    Humanoid:ChangeState("Jumping")
    wait(0.1)
    Humanoid:ChangeState("Seated")
    end
    end
    end)
     
    local Player = game:GetService("Players").LocalPlayer
    local Mouse = Player:GetMouse()
    Mouse.KeyDown:connect(function(k)
    k = k:lower()
    if k == "f" then
    if _G.infinjump == true then
    _G.infinjump = false
    else
    _G.infinjump = true
    end
    end
    end)
end)

local OtherSection = Other:NewSection("Fly Script")
OtherSection:NewButton("Fly", "Executes The Fly Script!", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xMintix/Lemonade-Hub/main/FlightScriptString.lua"))()
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

local OtherSection = Other:NewSection("Chat Spoofer Script")
OtherSection:NewButton("ChatSpoofer", "Runs The Chat Spoofer Script!", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/djBfk8Li"))()
end)

local Tab = Window:NewTab("Credits")
local Section = Tab:NewSection("Owner:! xMintix#0")