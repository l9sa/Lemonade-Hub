local Drawing=Drawing.new("Text")
Drawing.Visible=true
Drawing.Text="Brought to you by @xMintix#0 on discord"
Drawing.Transparency=0
Drawing.Font=32
Drawing.Size=32
Drawing.Color=Color3.new(255,0,0)
game:GetService("RunService").RenderStepped:Connect(function()Drawing.Position=Vector2.new(workspace.CurrentCamera.ViewportSize.X/2-100
,workspace.CurrentCamera.ViewportSize.Y/2)end)
wait(3)
Drawing:Remove()



if game.PlaceId == 2098516465 then --Execute RobloxianHighSchool2 Script If You Join RHS2 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xMintix/Lemonade-Hub/main/RobloxianHighSchool2"))()
elseif game.PlaceId == 1 then --Execute Game2 Script If You Join Game2 
    print('Game Script 2')
else -- Universal Script
    print('Game Script 3')
end
