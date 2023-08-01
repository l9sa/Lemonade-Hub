-- Movement Tab: Inf Jump, WalkSpeed, JumpPower, Fly, NoClip

-- Combat Tab: KillAura, Reach, Aimbot

getgenv().SecureMode = false
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfeild'))()

local Window = Rayfield:CreateWindow({
    Name = "Lemonade Hub -- Universal",
    LoadingTitle = "Lemonade Hub Loading",
    LoadingSubtitle = "By @xMintix On Discord"
    ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "" -- Do when you get home
    },
    Discord = {
      Enabled = true,
      Invite = "" -- To be done
      RememberJoins = true
    },
    KeySystem = false,
    KeySettings = {
      Title = "LemondeHub Key",
      Subtitle = "Key System",
      Note = "Join Discord To Get The Key | .gg/invite",
      FileName = "LemonadeHub-Key",
      SaveKey = true,
      GrabKeyFromSite = true,
      Key = {"https://pastebin.com/"}
    }
  })

local CombatTab = Window:CreateTab("Tab 1", 0)
local CombatSection = Tab:CreateSection("Section 1")
