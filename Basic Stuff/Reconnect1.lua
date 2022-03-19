--[[

Reconnect.lua

]]--

game:GetService("GuiService").ErrorMessageChanged:Connect(function()
wait () game:GetService("TeleportService"):Teleport(game.PlaceId)
end); 