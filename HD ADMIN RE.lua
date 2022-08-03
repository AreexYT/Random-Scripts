local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("RE") -- Creates the window

local b = w:CreateFolder("Spam Respawn") -- Creates the folder(U will put here your buttons,etc)

b:Bind("On",Enum.KeyCode.F1,function() --Default bind
getgenv().Ks = true
while Ks == true do
game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";re")
wait(0.7)

end

end)

b:Bind("Off",Enum.KeyCode.F2,function() --Default bind
getgenv().Ks = false
end)
