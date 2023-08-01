if player.Character.HumanoidRootPart.BrickColor == BrickColor.new("Brown") then
    play:Kick("You are not allowed to use this script using that skin color.")
end
if player.Character.HumanoidRootPart.BrickColor == BrickColor.new("Black") then
    play:Kick("You are not allowed to use this script using that skin color.")
end

local a=Drawing.new("Text")
a.Visible=true
a.Text="Brought to you by @xMintix on discord"
a.Transparency=2
a.Font=14
a.Size=33
a.Color=Color3.new(255,0,0)
game:GetService("RunService").RenderStepped:Connect(function()a.Position=Vector2.new(workspace.CurrentCamera.ViewportSize.X/2-100
,workspace.CurrentCamera.ViewportSize.Y/2)end)
wait(3)
a:Remove()


if game.PlaceId == 2098516465 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xMintix/Lemonade-Hub/main/RHS2String"))()
    print("RHS2 Script Executed")
elseif game.PlaceId == 1345139196 then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xMintix/Lemonade-Hub/main/Treasure%20Hunt%20Sim/TreasureHuntString.lua"))()
    print("Treasure Hunt Simulator Script Executed")
else -- Universal Script
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xMintix/Lemonade-Hub/main/Universal"))()
end
