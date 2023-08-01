local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "LemonadeHub -- Treasure Hunt Sim",
   LoadingTitle = "Lemonade Hub Loading",
   LoadingSubtitle = "by @xMintix On Discord",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "TreasureHuntSim",
      FileName = "SaveSettings"
   },
   Discord = {
      Enabled = true,
      Invite = "4nt3YVE8",
      RememberJoins = true
   },
   KeySystem = true,
   KeySettings = {
    Title = "Treasure Hunt Key",
    Subtitle = "Key System",
    Note = "Join Discord To Get The Key | discord.gg/4nt3YVE8",
    FileName = "TreasureHuntSimKey",
    SaveKey = true,
    GrabKeyFromSite = true,
    Key = {"https://pastebin.com/"}
   }
})

local MainTab = Window:CreateTab("Main Tab", 14272747940)
local AutoFarmSection = MainTab:CreateSection("Autofarm Chests")
local AutofarmChestButton = MainTab:CreateButton({
    Name = "On/Off",
    Callback = function()
        e
    end,
 })

local PlayerHead = game.Players.LocalPlayer.Character.HumanoidRootPart

for i, v in pairs(workspace.GameObjects.Areas.Spawn.Items:GetDescendants()) do
if v.Name == "Hitbox" and v.Parent then
        mouseclick1()
        wait(2.75)
    end
end

