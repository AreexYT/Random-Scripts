-- Anti Kick.lua

for a,b in next, getconnections(game:FindService("Players").LocalPlayer.Idled) do
b:Disable()
end