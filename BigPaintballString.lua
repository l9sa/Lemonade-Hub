if _G.active == nil then
    _G.active = true
end

local plr = game:GetService("Players").LocalPlayer
local round_type = game:GetService("Workspace")["__VARIABLES"].RoundType
local guns_folder = game:GetService("Workspace")["__DEBRIS"].Guns
local RS = game:GetService("RunService")

local function getPlayer()
    local char = plr.Character or plr.CharacterAdded:Wait()
    local humr = char:WaitForChild("HumanoidRootPart")
    return char, humr
end

local function get_target_players()
    local current_guns = guns_folder:GetChildren()
    local target_players = {}
    for i,v in next, current_guns do
        local player = game:GetService("Players"):FindFirstChild(v.Name)
        if player then
            if round_type.Value:lower():match("tdm") and player.Team ~= plr.Team then
                table.insert(target_players, player)
            elseif round_type.Value:lower():match("ffa") and player.UserId ~= plr.UserId then
                table.insert(target_players, player)
            end
        end
    end
    return target_players
end 

while RS.RenderStepped:Wait() and _G.active do
    local targets = get_target_players()
    for i,v in next, targets do
        local cam = workspace.CurrentCamera
        repeat
            local char, humr = getPlayer()
            local target_char = v.Character
            if not target_char then
                break
            end
            local target_humr = target_char:WaitForChild("HumanoidRootPart")
            humr.CFrame = target_humr.CFrame - target_humr.CFrame.lookVector * 5
            cam.CFrame = CFrame.new(cam.CFrame.p, target_humr.Position)
            RS.RenderStepped:Wait()
        until not guns_folder:FindFirstChild(v.Name) or not _G.active
    end
end