--[[

C P U   C O U N T E R

]]--

--/////////////////// [ Text Display ] ////////////////////////////////--
        local textlab = Instance.new("TextLabel")
    textlab.Size = UDim2.new(0, 200, 0, 28)
    textlab.BackgroundTransparency = 1
    textlab.TextColor3 = Color3.new(1, 1, 1)
    textlab.TextStrokeTransparency = 0
    textlab.TextStrokeColor3 = Color3.new(0.24, 0.24, 0.24)
    textlab.Font = Enum.Font.SourceSans
    textlab.TextSize = 30
    textlab.Text = "nil"
    textlab.BackgroundColor3 = Color3.new(0, 0, 0)
    textlab.Position = UDim2.new(0.89, 0, 0.580, 0)
    textlab.TextXAlignment = Enum.TextXAlignment.Right
    textlab.BorderSizePixel = 0
    textlab.Parent = game.CoreGui.RobloxGui
    textlab.Visible = true

--/////////////////// [ CPU Calculator ] ////////////////////////////////--
    spawn(function()
    repeat
    wait(0)
    local ping = tonumber(game:GetService("Stats"):FindFirstChild("PerformanceStats").CPU:GetValue())
    ping = math.floor(ping)
    textlab.Text = ping.."ms  -  CPU"
    
    -- [ Text Color ] --
    if ping > 75 then
    textlab.TextColor3 = Color3.new(0, 0, 0)
    elseif ping > 50 then
    textlab.TextColor3 = Color3.new(100, 0, 0)
    elseif ping > 25 then
    textlab.TextColor3 = Color3.new(100, 100, 0)
    else
    textlab.TextColor3 = Color3.new(0, 100, 0)
    end
    
    until textlab == nil
    end)