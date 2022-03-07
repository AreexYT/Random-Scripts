--[[

Notify.lua

]]--

function Notify(NT, NTT)
game.StarterGui:SetCore('SendNotification', {
Title = NT, 
Text = NTT
})
end
