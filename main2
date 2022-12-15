getgenv().cframespeedtoggle = false

game:GetService("RunService").Heartbeat:Connect(
    function()
        if cframespeedtoggle == true then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame +
                game.Players.LocalPlayer.Character.Humanoid.MoveDirection * +speedvalue
end
end)
   
   
    local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/scripterhub/UILibraries/main/Xenon/Lib.lua", true))()
    local Window = library:CreateWindow("evade (.gg/KKMJvTadqy)",Enum.KeyCode.RightControl)
    local Tab = Window:CreateTab("main")
    local Sector1 = Tab:CreateSector("movement","left")
    local Sector2 = Tab:CreateSector("exploits","right")
    Sector1:AddToggle("SPEED TOGGLE",false,function(t)
       getgenv().cframespeedtoggle = t
    end)
    
    Sector1:AddSlider("Speed Value",1,1,5,1,function(x)
        getgenv().speedvalue = x
    end)
    Sector2:AddButton("RESPAWN EXPLOIT",function()
            for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") then
                v:Destroy()
            end
			game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
    end
    end)
