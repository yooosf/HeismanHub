
getgenv().Variables = {}

Variables.Players = game:GetService("Players")
Variables.ReplicatedStorage = game:GetService("ReplicatedStorage")
Variables.UserInputService = game:GetService("UserInputService")
Variables.Client = Variables.Players.LocalPlayer
Variables.Character = Variables.Client.Character or Variables.Client.CharacterAdded:Wait()

Variables.Client.CharacterAdded:Connect(function(Character)
    Variables.Character = Character 
end)

Variables.Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/yoo123fd/f/master/ui.lua"))()
Variables.Window = Variables.Library:AddWindow({
    title = {
        "Heisman Hub",
        "Football Fusion 2"
    },
    default = true,
    theme = {
        Accent = Color3.fromRGB(255, 89, 89),
		TopbarColor = Color3.fromRGB(20, 20, 20),
		SidebarColor = Color3.fromRGB(15, 15, 15),
		BackgroundColor = Color3.fromRGB(10, 10, 10),
		SectionColor = Color3.fromRGB(20, 20, 20),
		TextColor = Color3.fromRGB(255, 255, 255),
		Objects = {},
    }
})

Variables.CatchingTab = Variables.Window:AddTab("Catching")
Variables.Physics = Variables.Window:AddTab("Physics")
Variables.Kicking = Variables.Window:AddTab("Kicking")
-- // Bootup

Variables.Mags = loadstring(game:HttpGet("https://raw.githubusercontent.com/yooosf/F2F/main/Modules/Catching/Mags.lua"))()
Variables.Grapher = loadstring(game:HttpGet("https://raw.githubusercontent.com/yooosf/F2F/main/Modules/Catching/Grapher.lua"))()
Variables.Aimbot = loadstring(game:HttpGet("https://raw.githubusercontent.com/yooosf/F2F/main/Modules/Kicking/Aimbot.lua"))()
Variables.Boost = loadstring(game:HttpGet("https://raw.githubusercontent.com/yooosf/F2F/main/Modules/Physics/Boost.lua"))()
Variables.DynamicJump = loadstring(game:HttpGet("https://raw.githubusercontent.com/yooosf/F2F/main/Modules/Physics/DynamicJump.lua"))()
Variables.Tracer = loadstring(game:HttpGet("https://raw.githubusercontent.com/yooosf/F2F/main/Modules/Catching/Tracer.lua"))()
