--[[

Murder Mystery 2 Utilities.lua
Made by: zzerexx#3970

]]--

getgenv().Settings = {
	Enabled = true,
	Notifications = true,       -- Receive notifications upon toggling features
	RemoveRagdolls = true,      -- Removes player ragdolls
	RemoveBlackScreen = true,   -- Removes the annoying black screen when you die/respawn
	RemoveBarriers = true,      -- Removes all invisible barriers
	Fullbright = false,
	AutoPickupGun = false,      -- Automatically picks up the gun when its dropped
	UnlockEmotes = false,
	-- Player
	WalkSpeed = 18,             -- Default: 16
	JumpPower = 60,             -- Default: 50
	FieldOfView = 80,           -- Default: 70
	CameraMode = "Invisicam",   -- "Zoom" or "Invisicam"
	MaxZoom = 100,              -- Default: 15
	CtrlClickTP = false,         -- Hold "Ctrl" and click to teleport
	Noclip = true,              -- Press "R" to toggle
	Xray = true,                -- Press "T" to toggle
	XrayTransparency = 0.9,     -- Default: 0.9
	InfiniteJump = true,
	-- Aimbot
	Aimbot = false,              -- Press "Y" to toggle
	AimbotAsSheriff = false,     -- Uses Aimbot as the Sheriff
	AimbotAsMurderer = false,   -- Uses Aimbot as the Murderer
	-- Esp
	NameEsp = true,
	AvoidInnocents = false,     -- Name Esp will avoid Innocents
	NameFont = "SourceSans",    -- Fonts: https://developer.roblox.com/en-us/api-reference/enum/Font
	NameTextTransparency = 0.1, -- 0 = Opaque, 1 = Transparent
	MurdererColor = Color3.fromRGB(255,0,0),
	SheriffColor = Color3.fromRGB(0,0,255),
	InnocentColor = Color3.fromRGB(255,255,255),
	GunEsp = true,
	GunEspColor = Color3.fromRGB(0,255,0),
	GunNameEsp = true,
	GunNameTransparency = 0.1,  -- 0 = Opaque, 1 = Transparent
	GunNameColor = Color3.fromRGB(0,255,0),
	-- Theme | Tutorial: https://imgur.com/a/1Ge2FWW
	PresetTheme = "Carbon",                  -- "Carbon" or "Strawberry" or "SkyBlue" or "Emerald", Set to "None" if you want to use a custom theme
	-- NOTE: PresetTheme overrides all customizations below (except for TextFont)
	Color1 = Color3.fromRGB(19,19,19),     -- Topbar Color
	Color2 = Color3.fromRGB(19,19,19),     -- Buttons Color
	Color3 = Color3.fromRGB(24,24,24),     -- Background Color
	MColor1 = Color3.fromRGB(255,0,0),     -- Murderer Text Color
	MColor2 = Color3.fromRGB(255,100,100), -- Murderer Button Text Color
	SColor1 = Color3.fromRGB(0,0,255),     -- Sheriff Text Color
	SColor2 = Color3.fromRGB(100,100,255), -- Sheriff Button Text Color
	GColor1 = Color3.fromRGB(0,255,0),     -- Gun Drop Text Color
	GColorT = Color3.fromRGB(100,255,100), -- Gun Drop Button Text Color when it says "True"
	GColorF = Color3.fromRGB(255,100,100), -- Gun Drop Button Text Color when it says "False"
	TextFont = "GothamBold",               -- Fonts: https://developer.roblox.com/en-us/api-reference/enum/Font
	MainTextColor = Color3.fromRGB(255,255,255), -- Title and Credit Text Color
} -- v1.0.3
loadstring(game:HttpGet("https://raw.githubusercontent.com/zzerexx/scripts/main/MM2%20Utilities.lua", true))()
