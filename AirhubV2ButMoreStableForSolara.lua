--[[

	AirHub V2 by Exunys © CC0 1.0 Universal (2023)
	https://github.com/Exunys

]]

--// Loaded Check

if AirHubV2Loaded or AirHubV2Loading or AirHub then
	return
end

getgenv().AirHubV2Loading = true

--// Cache

local game = game
local loadstring, typeof, select, next, pcall = loadstring, typeof, select, next, pcall
local tablefind, tablesort = table.find, table.sort
local mathfloor = math.floor
local stringgsub = string.gsub
local wait, delay, spawn = task.wait, task.delay, task.spawn
local osdate = os.date

--// Launching

loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Roblox-Functions-Library/main/Library.lua"))()

local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/AirHub-V2/main/src/UI%20Library.lua"))()
local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Exunys-ESP/main/src/ESP.lua"))()

--// Variables

local MainFrame = GUI:Load()

local ESP_DeveloperSettings = ESP.DeveloperSettings
local ESP_Settings = ESP.Settings
local ESP_Properties = ESP.Properties
local Crosshair = ESP_Properties.Crosshair
local CenterDot = Crosshair.CenterDot


ESP_Settings.LoadConfigOnLaunch = false
ESP_Settings.Enabled = false
Crosshair.Enabled = false

local Fonts = {"UI", "System", "Plex", "Monospace"}
local TracerPositions = {"Bottom", "Center", "Mouse"}
local HealthBarPositions = {"Top", "Bottom", "Left", "Right"}

--// Tabs

local General, GeneralSignal = MainFrame:Tab("General")
local _ESP = MainFrame:Tab("ESP")
local _Crosshair = MainFrame:Tab("Crosshair")
local Settings = MainFrame:Tab("Settings")

--// Functions

local AddValues = function(Section, Object, Exceptions, Prefix)
	local Keys, Copy = {}, {}

	for Index, _ in next, Object do
		Keys[#Keys + 1] = Index
	end

	tablesort(Keys, function(A, B)
		return A < B
	end)

	for _, Value in next, Keys do
		Copy[Value] = Object[Value]
	end

	for Index, Value in next, Copy do
		if typeof(Value) ~= "boolean" or (Exceptions and tablefind(Exceptions, Index)) then
			continue
		end

		Section:Toggle({
			Name = stringgsub(Index, "(%l)(%u)", function(...)
				return select(1, ...).." "..select(2, ...)
			end),
			Flag = Prefix..Index,
			Default = Value,
			Callback = function(_Value)
				Object[Index] = _Value
			end
		})
	end

	for Index, Value in next, Copy do
		if typeof(Value) ~= "Color3" or (Exceptions and tablefind(Exceptions, Index)) then
			continue
		end

		Section:Colorpicker({
			Name = stringgsub(Index, "(%l)(%u)", function(...)
				return select(1, ...).." "..select(2, ...)
			end),
			Flag = Index,
			Default = Value,
			Callback = function(_Value)
				Object[Index] = _Value
			end
		})
	end
end

--// General Tab

local ESPSection = General:Section({
	Name = "ESP Settings",
	Side = "Right"
})

local ESPDeveloperSection = General:Section({
	Name = "ESP Developer Settings",
	Side = "Right"
})

AddValues(ESPDeveloperSection, ESP_DeveloperSettings, {}, "ESP_DeveloperSettings_")

ESPDeveloperSection:Dropdown({
	Name = "Update Mode",
	Flag = "ESP_UpdateMode",
	Content = {"RenderStepped", "Stepped", "Heartbeat"},
	Default = ESP_DeveloperSettings.UpdateMode,
	Callback = function(Value)
		ESP_DeveloperSettings.UpdateMode = Value
	end
})

ESPDeveloperSection:Dropdown({
	Name = "Team Check Option",
	Flag = "ESP_TeamCheckOption",
	Content = {"TeamColor", "Team"},
	Default = ESP_DeveloperSettings.TeamCheckOption,
	Callback = function(Value)
		ESP_DeveloperSettings.TeamCheckOption = Value
	end
})

ESPDeveloperSection:Slider({
	Name = "Rainbow Speed",
	Flag = "ESP_RainbowSpeed",
	Default = ESP_DeveloperSettings.RainbowSpeed * 10,
	Min = 5,
	Max = 30,
	Callback = function(Value)
		ESP_DeveloperSettings.RainbowSpeed = Value / 10
	end
})

ESPDeveloperSection:Slider({
	Name = "Width Boundary",
	Flag = "ESP_WidthBoundary",
	Default = ESP_DeveloperSettings.WidthBoundary * 10,
	Min = 5,
	Max = 30,
	Callback = function(Value)
		ESP_DeveloperSettings.WidthBoundary = Value / 10
	end
})

ESPDeveloperSection:Button({
	Name = "Refresh",
	Callback = function()
		ESP:Restart()
	end
})

AddValues(ESPSection, ESP_Settings, {"LoadConfigOnLaunch", "PartsOnly"}, "ESPSettings_")

--// ESP Tab

local ESP_Properties_Section = _ESP:Section({
	Name = "ESP Properties",
	Side = "Left"
})

AddValues(ESP_Properties_Section, ESP_Properties.ESP, {}, "ESP_Propreties_")

ESP_Properties_Section:Dropdown({
	Name = "Text Font",
	Flag = "ESP_TextFont",
	Content = Fonts,
	Default = Fonts[ESP_Properties.ESP.Font + 1],
	Callback = function(Value)
		ESP_Properties.ESP.Font = Drawing.Fonts[Value]
	end
})

ESP_Properties_Section:Slider({
	Name = "Transparency",
	Flag = "ESP_TextTransparency",
	Default = ESP_Properties.ESP.Transparency * 10,
	Min = 1,
	Max = 10,
	Callback = function(Value)
		ESP_Properties.ESP.Transparency = Value / 10
	end
})

ESP_Properties_Section:Slider({
	Name = "Font Size",
	Flag = "ESP_FontSize",
	Default = ESP_Properties.ESP.Size,
	Min = 1,
	Max = 20,
	Callback = function(Value)
		ESP_Properties.ESP.Size = Value
	end
})

ESP_Properties_Section:Slider({
	Name = "Offset",
	Flag = "ESP_Offset",
	Default = ESP_Properties.ESP.Offset,
	Min = 10,
	Max = 30,
	Callback = function(Value)
		ESP_Properties.ESP.Offset = Value
	end
})

local Tracer_Properties_Section = _ESP:Section({
	Name = "Tracer Properties",
	Side = "Right"
})

AddValues(Tracer_Properties_Section, ESP_Properties.Tracer, {}, "Tracer_Properties_")

Tracer_Properties_Section:Dropdown({
	Name = "Position",
	Flag = "Tracer_Position",
	Content = TracerPositions,
	Default = TracerPositions[ESP_Properties.Tracer.Position],
	Callback = function(Value)
		ESP_Properties.Tracer.Position = tablefind(TracerPositions, Value)
	end
})

Tracer_Properties_Section:Slider({
	Name = "Transparency",
	Flag = "Tracer_Transparency",
	Default = ESP_Properties.Tracer.Transparency * 10,
	Min = 1,
	Max = 10,
	Callback = function(Value)
		ESP_Properties.Tracer.Transparency = Value / 10
	end
})

Tracer_Properties_Section:Slider({
	Name = "Thickness",
	Flag = "Tracer_Thickness",
	Default = ESP_Properties.Tracer.Thickness,
	Min = 1,
	Max = 5,
	Callback = function(Value)
		ESP_Properties.Tracer.Thickness = Value
	end
})

local HeadDot_Properties_Section = _ESP:Section({
	Name = "Head Dot Properties",
	Side = "Left"
})

AddValues(HeadDot_Properties_Section, ESP_Properties.HeadDot, {}, "HeadDot_Properties_")

HeadDot_Properties_Section:Slider({
	Name = "Transparency",
	Flag = "HeadDot_Transparency",
	Default = ESP_Properties.HeadDot.Transparency * 10,
	Min = 1,
	Max = 10,
	Callback = function(Value)
		ESP_Properties.HeadDot.Transparency = Value / 10
	end
})

HeadDot_Properties_Section:Slider({
	Name = "Thickness",
	Flag = "HeadDot_Thickness",
	Default = ESP_Properties.HeadDot.Thickness,
	Min = 1,
	Max = 5,
	Callback = function(Value)
		ESP_Properties.HeadDot.Thickness = Value
	end
})

HeadDot_Properties_Section:Slider({
	Name = "Sides",
	Flag = "HeadDot_Sides",
	Default = ESP_Properties.HeadDot.NumSides,
	Min = 3,
	Max = 30,
	Callback = function(Value)
		ESP_Properties.HeadDot.NumSides = Value
	end
})

local Box_Properties_Section = _ESP:Section({
	Name = "Box Properties",
	Side = "Left"
})

AddValues(Box_Properties_Section, ESP_Properties.Box, {}, "Box_Properties_")

Box_Properties_Section:Slider({
	Name = "Transparency",
	Flag = "Box_Transparency",
	Default = ESP_Properties.Box.Transparency * 10,
	Min = 1,
	Max = 10,
	Callback = function(Value)
		ESP_Properties.Box.Transparency = Value / 10
	end
})

Box_Properties_Section:Slider({
	Name = "Thickness",
	Flag = "Box_Thickness",
	Default = ESP_Properties.Box.Thickness,
	Min = 1,
	Max = 5,
	Callback = function(Value)
		ESP_Properties.Box.Thickness = Value
	end
})

local HealthBar_Properties_Section = _ESP:Section({
	Name = "Health Bar Properties",
	Side = "Right"
})

AddValues(HealthBar_Properties_Section, ESP_Properties.HealthBar, {}, "HealthBar_Properties_")

HealthBar_Properties_Section:Dropdown({
	Name = "Position",
	Flag = "HealthBar_Position",
	Content = HealthBarPositions,
	Default = HealthBarPositions[ESP_Properties.HealthBar.Position],
	Callback = function(Value)
		ESP_Properties.HealthBar.Position = tablefind(HealthBarPositions, Value)
	end
})

HealthBar_Properties_Section:Slider({
	Name = "Transparency",
	Flag = "HealthBar_Transparency",
	Default = ESP_Properties.HealthBar.Transparency * 10,
	Min = 1,
	Max = 10,
	Callback = function(Value)
		ESP_Properties.HealthBar.Transparency = Value / 10
	end
})

HealthBar_Properties_Section:Slider({
	Name = "Thickness",
	Flag = "HealthBar_Thickness",
	Default = ESP_Properties.HealthBar.Thickness,
	Min = 1,
	Max = 5,
	Callback = function(Value)
		ESP_Properties.HealthBar.Thickness = Value
	end
})

HealthBar_Properties_Section:Slider({
	Name = "Offset",
	Flag = "HealthBar_Offset",
	Default = ESP_Properties.HealthBar.Offset,
	Min = 4,
	Max = 12,
	Callback = function(Value)
		ESP_Properties.HealthBar.Offset = Value
	end
})

HealthBar_Properties_Section:Slider({
	Name = "Blue",
	Flag = "HealthBar_Blue",
	Default = ESP_Properties.HealthBar.Blue,
	Min = 0,
	Max = 255,
	Callback = function(Value)
		ESP_Properties.HealthBar.Blue = Value
	end
})

local Chams_Properties_Section = _ESP:Section({
	Name = "Chams Properties",
	Side = "Right"
})

AddValues(Chams_Properties_Section, ESP_Properties.Chams, {}, "Chams_Properties_")

Chams_Properties_Section:Slider({
	Name = "Transparency",
	Flag = "Chams_Transparency",
	Default = ESP_Properties.Chams.Transparency * 10,
	Min = 1,
	Max = 10,
	Callback = function(Value)
		ESP_Properties.Chams.Transparency = Value / 10
	end
})

Chams_Properties_Section:Slider({
	Name = "Thickness",
	Flag = "Chams_Thickness",
	Default = ESP_Properties.Chams.Thickness,
	Min = 1,
	Max = 5,
	Callback = function(Value)
		ESP_Properties.Chams.Thickness = Value
	end
})

--// Crosshair Tab

local Crosshair_Settings = _Crosshair:Section({
	Name = "Crosshair Settings (1 / 2)",
	Side = "Left"
})

Crosshair_Settings:Toggle({
	Name = "Enabled",
	Flag = "Crosshair_Enabled",
	Default = Crosshair.Enabled,
	Callback = function(Value)
		Crosshair.Enabled = Value
	end
})

Crosshair_Settings:Toggle({
	Name = "Enable ROBLOX Cursor",
	Flag = "Cursor_Enabled",
	Default = UserInputService.MouseIconEnabled,
	Callback = SetMouseIconVisibility
})

AddValues(Crosshair_Settings, Crosshair, {"Enabled"}, "Crosshair_")

Crosshair_Settings:Dropdown({
	Name = "Position",
	Flag = "Crosshair_Position",
	Content = {"Mouse", "Center"},
	Default = ({"Mouse", "Center"})[Crosshair.Position],
	Callback = function(Value)
		Crosshair.Position = Value == "Mouse" and 1 or 2
	end
})

Crosshair_Settings:Slider({
	Name = "Size",
	Flag = "Crosshair_Size",
	Default = Crosshair.Size,
	Min = 1,
	Max = 24,
	Callback = function(Value)
		Crosshair.Size = Value
	end
})

Crosshair_Settings:Slider({
	Name = "Gap Size",
	Flag = "Crosshair_GapSize",
	Default = Crosshair.GapSize,
	Min = 0,
	Max = 24,
	Callback = function(Value)
		Crosshair.GapSize = Value
	end
})

Crosshair_Settings:Slider({
	Name = "Rotation (Degrees)",
	Flag = "Crosshair_Rotation",
	Default = Crosshair.Rotation,
	Min = -180,
	Max = 180,
	Callback = function(Value)
		Crosshair.Rotation = Value
	end
})

Crosshair_Settings:Slider({
	Name = "Rotation Speed",
	Flag = "Crosshair_RotationSpeed",
	Default = Crosshair.RotationSpeed,
	Min = 1,
	Max = 20,
	Callback = function(Value)
		Crosshair.RotationSpeed = Value
	end
})

Crosshair_Settings:Slider({
	Name = "Pulsing Step",
	Flag = "Crosshair_PulsingStep",
	Default = Crosshair.PulsingStep,
	Min = 0,
	Max = 24,
	Callback = function(Value)
		Crosshair.PulsingStep = Value
	end
})

local _Crosshair_Settings = _Crosshair:Section({
	Name = "Crosshair Settings (2 / 2)",
	Side = "Left"
})

_Crosshair_Settings:Slider({
	Name = "Pulsing Speed",
	Flag = "Crosshair_PulsingSpeed",
	Default = Crosshair.PulsingSpeed,
	Min = 1,
	Max = 20,
	Callback = function(Value)
		Crosshair.PulsingSpeed = Value
	end
})

_Crosshair_Settings:Slider({
	Name = "Pulsing Boundary (Min)",
	Flag = "Crosshair_Pulse_Min",
	Default = Crosshair.PulsingBounds[1],
	Min = 0,
	Max = 24,
	Callback = function(Value)
		Crosshair.PulsingBounds[1] = Value
	end
})

_Crosshair_Settings:Slider({
	Name = "Pulsing Boundary (Max)",
	Flag = "Crosshair_Pulse_Max",
	Default = Crosshair.PulsingBounds[2],
	Min = 0,
	Max = 24,
	Callback = function(Value)
		Crosshair.PulsingBounds[2] = Value
	end
})

_Crosshair_Settings:Slider({
	Name = "Transparency",
	Flag = "Crosshair_Transparency",
	Default = Crosshair.Transparency * 10,
	Min = 1,
	Max = 10,
	Callback = function(Value)
		Crosshair.Transparency = Value / 10
	end
})

_Crosshair_Settings:Slider({
	Name = "Thickness",
	Flag = "Crosshair_Thickness",
	Default = Crosshair.Thickness,
	Min = 1,
	Max = 5,
	Callback = function(Value)
		Crosshair.Thickness = Value
	end
})

local Crosshair_CenterDot = _Crosshair:Section({
	Name = "Center Dot Settings",
	Side = "Right"
})

Crosshair_CenterDot:Toggle({
	Name = "Enabled",
	Flag = "Crosshair_CenterDot_Enabled",
	Default = CenterDot.Enabled,
	Callback = function(Value)
		CenterDot.Enabled = Value
	end
})

AddValues(Crosshair_CenterDot, CenterDot, {"Enabled"}, "Crosshair_CenterDot_")

Crosshair_CenterDot:Slider({
	Name = "Size / Radius",
	Flag = "Crosshair_CenterDot_Radius",
	Default = CenterDot.Radius,
	Min = 2,
	Max = 8,
	Callback = function(Value)
		CenterDot.Radius = Value
	end
})

Crosshair_CenterDot:Slider({
	Name = "Sides",
	Flag = "Crosshair_CenterDot_Sides",
	Default = CenterDot.NumSides,
	Min = 3,
	Max = 30,
	Callback = function(Value)
		CenterDot.NumSides = Value
	end
})

Crosshair_CenterDot:Slider({
	Name = "Transparency",
	Flag = "Crosshair_CenterDot_Transparency",
	Default = CenterDot.Transparency * 10,
	Min = 1,
	Max = 10,
	Callback = function(Value)
		CenterDot.Transparency = Value / 10
	end
})

Crosshair_CenterDot:Slider({
	Name = "Thickness",
	Flag = "Crosshair_CenterDot_Thickness",
	Default = CenterDot.Thickness,
	Min = 1,
	Max = 5,
	Callback = function(Value)
		CenterDot.Thickness = Value
	end
})

--// Settings Tab

local SettingsSection = Settings:Section({
	Name = "Settings",
	Side = "Left"
})

local ProfilesSection = Settings:Section({
	Name = "Profiles",
	Side = "Left"
})

local InformationSection = Settings:Section({
	Name = "Information",
	Side = "Right"
})

SettingsSection:Keybind({
	Name = "Show / Hide GUI",
	Flag = "UI Toggle",
	Default = Enum.KeyCode.RightShift,
	Blacklist = {Enum.UserInputType.MouseButton1, Enum.UserInputType.MouseButton2, Enum.UserInputType.MouseButton3},
	Callback = function(_, NewKeybind)
		if not NewKeybind then
			GUI:Close()
		end
	end
})

SettingsSection:Button({
	Name = "Unload Script",
	Callback = function()
		GUI:Unload()
		ESP:Exit()
		getgenv().AirHubV2Loaded = nil
	end
})

local ConfigList = ProfilesSection:Dropdown({
	Name = "Configurations",
	Flag = "Config Dropdown",
	Content = GUI:GetConfigs()
})

ProfilesSection:Box({
	Name = "Configuration Name",
	Flag = "Config Name",
	Placeholder = "Config Name"
})

ProfilesSection:Button({
	Name = "Load Configuration",
	Callback = function()
		GUI:LoadConfig(GUI.flags["Config Dropdown"])
	end
})

ProfilesSection:Button({
	Name = "Delete Configuration",
	Callback = function()
		GUI:DeleteConfig(GUI.flags["Config Dropdown"])
		ConfigList:Refresh(GUI:GetConfigs())
	end
})

ProfilesSection:Button({
	Name = "Save Configuration",
	Callback = function()
		GUI:SaveConfig(GUI.flags["Config Dropdown"] or GUI.flags["Config Name"])
		ConfigList:Refresh(GUI:GetConfigs())
	end
})

InformationSection:Label("Made by Exunys")

InformationSection:Button({
	Name = "Copy GitHub",
	Callback = function()
		setclipboard("https://github.com/Exunys")
	end
})

InformationSection:Label("AirTeam © 2022 - "..osdate("%Y"))

InformationSection:Button({
	Name = "Copy Discord Invite",
	Callback = function()
		setclipboard("https://discord.gg/Ncz3H3quUZ")
	end
})

--[=[
local MiscellaneousSection = Settings:Section({
	Name = "Miscellaneous",
	Side = "Right"
})

local TimeLabel = MiscellaneousSection:Label("...")
local FPSLabel = MiscellaneousSection:Label("...")
local PlayersLabel = MiscellaneousSection:Label("...")

MiscellaneousSection:Button({
	Name = "Rejoin",
	Callback = Rejoin
})

delay(2, function()
	spawn(function()
		while wait(1) do
			TimeLabel:Set(osdate("%c"))
			PlayersLabel:Set(#Players:GetPlayers())
		end
	end)

	RunService.RenderStepped:Connect(function(FPS)
		FPSLabel:Set("FPS: "..mathfloor(1 / FPS))
	end)
end)
]=]

--//

ESP.Load()
getgenv().AirHubV2Loaded = true
getgenv().AirHubV2Loading = nil

GeneralSignal:Fire()
GUI:Close()