--[[

Anti Diplay Name v5.lua

]]--
while true do
local AntiDisplayName = loadstring(game:HttpGet('https://raw.githubusercontent.com/AreexYT/Random-Scripts/main/AntiDisplayNameV6.lua'))(function()
    getgenv().Preferences = {}
end)

Preferences = {
    RetroNaming = true,
    ShowOriginalName = true,
    ApplyToLeaderboard = true,
    IdentifyFriends = {Toggle = true, Identifier = '[Friend]'},
    IdentifyBlocked = {Toggle = true, Identifier = '[Blocked]'},
    IdentifyPremium = {Toggle = true, Identifier = '[Premium]'},
    IdentifyDeveloper = {Toggle = true, Identifier = '[Game Dev]'},
    SpoofLocalPlayer = {Toggle = false, UseRandomName = true, NewName = 'Random Name Lol'},
    Orientation = 'Vertical'
}
wait(5)
  end
