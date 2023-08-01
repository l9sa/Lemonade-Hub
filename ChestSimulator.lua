local PlayerHead = game.Players.LocalPlayer.Character.HumanoidRootPart

for i, v in pairs(workspace.GameObjects.Areas.Spawn.Items:GetDescendants()) do
if v.Name == "Hitbox" and v.Parent then
        mouseclick1()
        wait(2.75)
    end
end

