game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "Speed Run Simulator",
    Text = "Made by DINO#1390",
    Button1 = "Ok",
    Duration = 5
    })

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("Speed Run Simulator | Made By DINO#1390", "BloodTheme")

local Tab = Window:NewTab("Main Stuff")

local Section = Tab:NewSection("Main Stuff")

Section:NewToggle("Auto Speed", "Toggle Auto Speed", function(state)
    if state then
        _G.AutoSpeed = true
while _G.AutoSpeed do
wait(.000000000000000000000000000000000001)
game:GetService("ReplicatedStorage").Remotes.AddSpeed:FireServer()
end
    else
        _G.AutoSpeed = false
    end
end)

Section:NewToggle("Auto Orb", "Auto Collects Orbs", function(Tool)
    if Tool then
        _G.AutoOrb = true
while _G.AutoOrb do
wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"),game:GetService("Workspace").GameAssets.Maps.Medieval.Map.Interactables.Orbs.Orb,0) 
end
    else
        _G.AutoOrb = false
    end
end)

Section:NewToggle("Auto Orb 2", "Auto Collects Orbs But Better", function(Fool)
    if Fool then
        _G.AutoOrb2 = true
while _G.AutoOrb2 do
wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"),game:GetService("Workspace").GameAssets.Maps.Medieval.Map.Interactables.Orbs.PurpleOrb,0) 
end
    else
        _G.AutoOrb2 = false
    end
end)

Section:NewToggle("Auto Rebirth", "Auto Rebirths For You", function(Zool)
    if Zool then
        _G.AutoRebirth = true
while _G.AutoRebirth do
wait()
 game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer()
end
    else
        _G.AutoRebirth = false
    end
end)


Section:NewToggle("Auto Hatch OP Pet", "Toggle Auto Hatch OP Pets", function(state)
    if state then
_G.AutoPet = true -- Change To False If You Want To Turn It Off And True On
while _G.AutoPet do
wait(.0000000000000000000000001)
local args = {
    [1] = "Heart Dominus",
    [2] = false
}

game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
end
    else
        _G.AutoPet = false
    end
end)

Section:NewToggle("Auto Hatch VIP Pet", "Toggle Auto Hatch VIP Pets", function(Bool)
    if Bool then
_G.AutoPet2 = true
while _G.AutoPet2 do
wait(.00000000000000000000000000000001)
local args = {
    [1] = "Alien.exe",
    [2] = false
}

game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
end
    else
        _G.AutoPet2 = false
    end
end)


local Tab = Window:NewTab("Local Player")

local Section = Tab:NewSection("Local Player")

Section:NewSlider("WalkSpeed", "Sets Your WalkSpeed To Your Choice", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewSlider("JumpPower", "Sets Your WJumpPower To Your Choice", 500, 0, function(jp) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = jp
end)
