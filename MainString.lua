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


if game.PlaceId == 2098516465 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xMintix/Lemonade-Hub/main/RHS2String.lua"))()
    print("RHS2 Script Executed")
elseif game.PlaceId == 1345139196 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xMintix/Lemonade-Hub/main/Treasure%20Hunt%20Sim/TreasureHuntString.lua"))()
    print("Treasure Hunt Simulator Script Executed")
else
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xMintix/Lemonade-Hub/main/Universal"))()
end
