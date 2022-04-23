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
    IdentifyFriends = {Toggle = true, Identifier = '[💚]'},
    IdentifyBlocked = {Toggle = true, Identifier = '[❤️]'},
    IdentifyPremium = {Toggle = true, Identifier = '[💜]'},
    IdentifyDeveloper = {Toggle = true, Identifier = '[💛]'},
    SpoofLocalPlayer = {Toggle = false, UseRandomName = true, NewName = 'Random Name Lol'},
    Orientation = 'Vertical'
}
wait(.5)
  end
