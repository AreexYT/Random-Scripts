
-- [[ HamstaGang on V3RM | Last updated 08/21/2022 ]] --

-- Services
local ReplicatedStorage = game:GetService("ReplicatedStorage");
local CoreGui = game:GetService("CoreGui");
local Players = game:GetService("Players");
local Workspace = game:GetService("Workspace");
local Lighting = game:GetService("Lighting");
local VirtualInputManager = game:GetService("VirtualInputManager");
local UIS = game:service('UserInputService')


-- Remote Stuff
local Events = ReplicatedStorage:WaitForChild("Events", 1337)

-- Local Player
local Player = Players.LocalPlayer;
local Character = Player.Character or Player.CharacterAdded:Wait()
local pHum = Character:WaitForChild('Humanoid')
local humRoot = Character:WaitForChild('HumanoidRootPart')
local WorkspacePlayers = game:GetService("Workspace").Game.Players

-- Keys / Mouse
local Mouse = game.Players.LocalPlayer:GetMouse()

-- API / Loadstring
local Esp = loadstring(game:HttpGet("https://raw.githubusercontent.com/9Strew/roblox/main/proc/kiriotesp"))()


-- Toggles
getgenv().AI_ESP = true
getgenv().autojumpmpt = false
getgenv().GodMode_Enabled = false
getgenv().No_CamShake = true
Esp.Enabled = true
Esp.Tracers = false
Esp.Boxes = false



-- ////////////////////////////////////////////////// [ ESP ] ////////////////////////////////////////////////// --

    local GetDownedPlr = function()
        for i,v in pairs(WorkspacePlayers:GetChildren()) do
            if v:GetAttribute("Downed") then
                return v
            end
        end
    end

    --Tysm CJStylesOrg
    Esp.Overrides.GetColor = function(char)
    local GetPlrFromChar = Esp:GetPlrFromChar(char)
    if GetPlrFromChar then
        if GetPlrFromChar.Character:GetAttribute("Downed") then
            return Color3.fromRGB(100,55,255)
        end
    end
        return Color3.fromRGB(255,0,255)
    end
-- -------------------------------------------------- [ ESP ] -------------------------------------------------- --


-- //////////////////////////////////////////////// [ BOT ESP ] //////////////////////////////////////////////// --

    -- Simple Text ESP
    function Simple_Create(base, name, trackername, studs)
        local bb = Instance.new('BillboardGui', game.CoreGui)
        bb.Adornee = base
        bb.ExtentsOffset = Vector3.new(0,1,0)
        bb.AlwaysOnTop = true
        bb.Size = UDim2.new(0,6,0,6)
        bb.StudsOffset = Vector3.new(0,1,0)
        bb.Name = trackername

        local frame = Instance.new('Frame', bb)
        frame.ZIndex = 10
        frame.BackgroundTransparency = 0.3
        frame.Size = UDim2.new(1,0,1,0)
        frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)

        local txtlbl = Instance.new('TextLabel', bb)
        txtlbl.ZIndex = 10
        txtlbl.BackgroundTransparency = 1
        txtlbl.Position = UDim2.new(0,0,0,-48)
        txtlbl.Size = UDim2.new(1,0,10,0)
        txtlbl.Font = 'ArialBold'
        txtlbl.FontSize = 'Size12'
        txtlbl.Text = name
        txtlbl.TextStrokeTransparency = 0.5
        txtlbl.TextColor3 = Color3.fromRGB(255, 0, 0)

        local txtlblstud = Instance.new('TextLabel', bb)
        txtlblstud.ZIndex = 10
        txtlblstud.BackgroundTransparency = 1
        txtlblstud.Position = UDim2.new(0,0,0,-35)
        txtlblstud.Size = UDim2.new(1,0,10,0)
        txtlblstud.Font = 'ArialBold'
        txtlblstud.FontSize = 'Size12'
        txtlblstud.Text = tostring(studs) .. " Studs"
        txtlblstud.TextStrokeTransparency = 0.5
        txtlblstud.TextColor3 = Color3.new(255,255,255)
    end

    -- Clear ESP
    function ClearESP(espname)
        for _,v in pairs(game.CoreGui:GetChildren()) do
            if v.Name == espname and v:isA('BillboardGui') then
                v:Destroy()
            end
        end
    end

    -- ESP AI
    task.spawn(function()
        while task.wait(0.05) do
            if AI_ESP then
                pcall(function()
                    ClearESP("AI_Tracker")
                    local GamePlayers = Workspace:WaitForChild("Game", 1337).Players;
                    for i,v in pairs(GamePlayers:GetChildren()) do
                        if not game.Players:FindFirstChild(v.Name) then -- Is AI
                            local studs = Player:DistanceFromCharacter(v.PrimaryPart.Position)
                            Simple_Create(v.HumanoidRootPart, v.Name, "AI_Tracker", math.floor(studs + 0.5))
                        end
                    end
                end)
            else
                ClearESP("AI_Tracker");
            end
        end
    end)

    -- Camera Shake
    task.spawn(function()
        while task.wait() do
            if No_CamShake then
                Player.PlayerScripts:WaitForChild("CameraShake", 1234).Value = CFrame.new(0,0,0) * CFrame.Angles(0,0,0);
            end
        end
    end)
-- ------------------------------------------------ [ BOT ESP ] ------------------------------------------------ --



-- ///////////////////////////////////////////////// [ B-HOP ] ///////////////////////////////////////////////// --

    game:GetService("UserInputService").InputBegan:Connect(function(InputObject, GameProcessedEvent)
        -- if GameProcessedEvent then return end
        if InputObject.KeyCode == Enum.KeyCode.LeftShift then

            getgenv().autojumpmpt = true

            function autojump()
            local plr = game:GetService'Players'.LocalPlayer
            repeat wait() until plr.Character ~= nil
            plr.Character:WaitForChild'Humanoid'.StateChanged:Connect(function(old,new)
            if new == Enum.HumanoidStateType.Landed and autojumpmpt then
            plr.Character:WaitForChild'Humanoid':ChangeState("Jumping")
            end
            end)
            end
            autojump()
            
            
            print'B-HOP = ON'
        end
    end)

    game:GetService("UserInputService").InputEnded:Connect(function(InputObject, GameProcessedEvent)
        -- if GameProcessedEvent then return end
        if InputObject.KeyCode == Enum.KeyCode.LeftShift then

            getgenv().autojumpmpt = false

            print'B-HOP = OFF'
        end
    end)

    game:GetService("UserInputService").InputBegan:Connect(function(InputObject, GameProcessedEvent)
        -- if GameProcessedEvent then return end
        if InputObject.KeyCode == Enum.KeyCode.F13 then
            game:GetService("ReplicatedStorage").Events.UseUsable:FireServer("Cola")
        end
    end)
-- ------------------------------------------------- [ B-HOP ] ------------------------------------------------- --


-- ///////////////////////////////////////////////// [ Speed ] ///////////////////////////////////////////////// --

    local old
    old = hookmetamethod(game,"__namecall",newcclosure(function(self,...)
        local Args = {...}
        local method = getnamecallmethod()
        if tostring(self) == 'Communicator' and method == "InvokeServer" and Args[1] == "update" then
            return 1812.5, 3
        end
        return old(self,...)
    end))
-- ------------------------------------------------- [ Speed ] ------------------------------------------------- --


-- //////////////////////////////////////////////// [ Keybind ] //////////////////////////////////////////////// --

    game:GetService("UserInputService").InputBegan:Connect(function(InputObject, GameProcessedEvent)
        -- if GameProcessedEvent then return end
        if InputObject.KeyCode == Enum.KeyCode.F5 then

            local Reset = Events:FindFirstChild("Reset")
            local Respawn = Events:FindFirstChild("Respawn")
        
            if Reset and Respawn then
                Reset:FireServer();
                task.wait(2)
                Respawn:FireServer();
            end
        end
    end)
-- ------------------------------------------------ [ Keybind ] ------------------------------------------------ --




