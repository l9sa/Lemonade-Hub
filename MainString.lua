local Drawing=Drawing.new("Text")
Drawing.Visible=true
Drawing.Text="Brought to you by @xMintix#0 on discord"
Drawing.Transparency=0
Drawing.Font=32
Drawing.Size=32
Drawing.Color=Color3.new(255,0,0)
game:GetService("RunService").RenderStepped:Connect(function()Drawing.Position=Vector2.new(workspace.CurrentCamera.ViewportSize.X/2-100
,workspace.CurrentCamera.ViewportSize.Y/2)end)



wait(1)
a:Remove()

if game.PlaceId == 286090429 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fusiongreg/BoltsHubV5/main/Arsenal2"))()
elseif game.PlaceId == 8412573470 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fusiongreg/BoltsHubV5/main/ArsenalQuest"))()
elseif game.PlaceId == 301549746 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fusiongreg/BoltsHubV5/main/CBRO"))()
elseif game.PlaceId == 6172932937 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fusiongreg/BoltsHubV5/main/Energy%20Assault"))()
else
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AndrewDarkyy/NOWAY/main/darkyyware.lua"))()
end