local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Robloxian High School 2 Script", "Midnight")

local function CreatePotionButton(potionName)
    return JobSection:NewButton(potionName, "Get " .. potionName .. " For Club Red Potioneer", function()
        local args = {[1] = potionName}
        game:GetService("ReplicatedStorage").Remotes.Jobs.ClubRed.MakePotion:FireServer(unpack(args))
    end)
end

local Job = Window:NewTab("Jobs")

local JobSection = Job:NewSection("Subblox Delivery")
JobSection:NewButton("Sunblox Delivery", "Finish Sunblox Delivery Job", function()
    local humanoid = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
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
CreatePotionButton("BloxyCola")
CreatePotionButton("WitchesBrew")
CreatePotionButton("GhastlyBrew")
CreatePotionButton("RedSpice")
CreatePotionButton("GreenSpice")
CreatePotionButton("DragonFire")
CreatePotionButton("GoldenChalice")


local Tab = Window:NewTab("Credits")
local Section = Tab:NewSection("Owner: xMintix#0")