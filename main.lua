getgenv().cframespeedtoggle = false

game:GetService("RunService").Heartbeat:Connect(
    function()
        if cframespeedtoggle == true then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame +
                game.Players.LocalPlayer.Character.Humanoid.MoveDirection * speedvalue
end
end)

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/scripterhub/UILibraries/main/Void/Lib.lua"))()

local watermark = library:Watermark("fajkamacyce.lua - DEV")
-- watermark:Set("Watermark Set")
-- watermark:Hide() -- toggles watermark

local main = library:Load{
    Name = "fajkamacyce.lua",
    SizeX = 500,
    SizeY = 400,
    Theme = "Midnight",
    Extension = "cfg", -- config file extension
    Folder = "fajkamacyce.lua" -- config folder name
}



local tab3 = main:Tab("Misc")

local section3 = tab3:Section{
    Name = "Main",
    Side = "Left"
}





local toggle2 = section3:Toggle{
    Name = "speed",
    Flag = "speed",
    Default = false,
    Callback  = function(bool)
       getgenv().cframespeedtoggle = bool
    end
}
toggle2:Keybind{
    --Default = Enum.KeyCode.A,
    Blacklist = {Enum.UserInputType.MouseButton1},
    Flag = "Toggle 2 Keybind 1",
    Mode = "Toggle", -- mode to nil if u dont want it to toggle the toggle
    Callback = function()
    end
}



local slider = section3:Slider{
    Name = "SpeedValue",
    Text = "[value]/2",
    Default = 0.1,
    Min = 0.05,
    Max = 2,
    Float = 0.01,
    Flag = "Slider 1",
    Callback = function(value)
        getgenv().speedvalue = value
    end
}


section3:Button{
    Name = "Respawn",
    Callback  = function()
        for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") then
                v:Destroy()
            end
game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
    end
    end
}


