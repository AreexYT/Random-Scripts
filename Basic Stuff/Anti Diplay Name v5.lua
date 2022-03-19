--[[

Anti Diplay Name v5.lua

]]--

repeat wait() until game:IsLoaded()

while true do

	local AntiDisplayName = loadstring(game:HttpGet('https://pastebin.com/raw/hCMXnKWa'))(function()
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
	SpoofLocalPlayer = {Toggle = true, UseRandomName = true, NewName = 'Random Name Lol'},
	Orientation = 'Horizontal'}
	
	wait()
end