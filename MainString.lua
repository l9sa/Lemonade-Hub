if player.Character.HumanoidRootPart.BrickColor == BrickColor.new("Brown") then
    play:Kick("You are not allowed to use this script using that skin color.")
end
if player.Character.HumanoidRootPart.BrickColor == BrickColor.new("Black") then
    play:Kick("You are not allowed to use this script using that skin color.")
end

local a=Drawing.new("Text")
a.Visible=true
a.Text="Brought to you by @xMintix#0 on discord"
a.Transparency=2
a.Font=14
a.Size=33
a.Color=Color3.new(255,0,0)
game:GetService("RunService").RenderStepped:Connect(function()a.Position=Vector2.new(workspace.CurrentCamera.ViewportSize.X/2-100
,workspace.CurrentCamera.ViewportSize.Y/2)end)
wait(3)
a:Remove()


if game.PlaceId == 2098516465 then --Execute RobloxianHighSchool2 Script If You Join RHS2 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xMintix/Lemonade-Hub/main/RHS2String"))()
elseif game.PlaceId == 1 then --Execute Game2 Script If You Join Game2 
    print('Game Script 2')
else -- Universal Script
    print('Game Script 3')
end
