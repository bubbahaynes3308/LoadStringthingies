local Tween = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local SService = game:GetService("SoundService")
local CoreUi = game:GetService("CoreGui")
local Cam = workspace.CurrentCamera
local Player = game.Players.LocalPlayer
local TInfo = TweenInfo.new(3, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut)
local ChorusFX = Instance.new("ChorusSoundEffect")
local FlangeFX = Instance.new("FlangeSoundEffect")
local EchoFX = Instance.new("EchoSoundEffect")
local ReverbFX = Instance.new("ReverbSoundEffect")
local EqualizerFX = Instance.new("EqualizerSoundEffect")
local EqualizerFX2 = Instance.new("EqualizerSoundEffect")
local ColorCorrect = Instance.new("ColorCorrectionEffect")
local ANXIETY = Instance.new("ScreenGui")
ANXIETY.Name = "ANXIETY"
ANXIETY.Enabled = false
ANXIETY.ResetOnSpawn = false
ANXIETY.IgnoreGuiInset = true
ANXIETY.DisplayOrder = -50000
ANXIETY.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ANXIETY.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets

local fearMusic = Instance.new("Sound")
fearMusic.Name = "fearMusic"
fearMusic.Looped = true
fearMusic.RollOffMaxDistance = 50
fearMusic.Volume = 0.20000000298023224
fearMusic.SoundId = "rbxasset://9059983211.ogg"
fearMusic.RollOffMinDistance = 2
fearMusic.Parent = ANXIETY

local Heartbeat = Instance.new("Sound")
Heartbeat.Name = "Heartbeat"
Heartbeat.Looped = true
Heartbeat.RollOffMaxDistance = 20
Heartbeat.Volume = 1
Heartbeat.SoundId = "rbxassetid://6556968450"
Heartbeat.RollOffMinDistance = 20
Heartbeat.Parent = ANXIETY

local Calmed = Instance.new("Sound")
Calmed.Name = "Calmed"
Calmed.PlayOnRemove = true
Calmed.PlaybackSpeed = 0.8999999761581421
Calmed.RollOffMaxDistance = 800
Calmed.Volume = 1
Calmed.SoundId = "rbxassetid://9114395810"
Calmed.Parent = ANXIETY

local bg = Instance.new("ImageLabel")
bg.Name = "bg"
bg.ImageColor3 = Color3.new(0.00, 0.00, 0.00)
bg.BorderSizePixel = 0
bg.BackgroundColor3 = Color3.new(0.00, 0.00, 0.00)
bg.ImageTransparency = 0.17000000178813934
bg.AnchorPoint = Vector2.new(0.50, 0.50)
bg.Image = "rbxassetid://12293670156"
bg.TileSize = UDim2.new(0.05, 0.00, 0.10, 0.00)
bg.Size = UDim2.new(1.00, 0.00, 1.00, 0.00)
bg.BorderColor3 = Color3.new(0.00, 0.00, 0.00)
bg.BackgroundTransparency = 1
bg.Position = UDim2.new(0.50, 0.00, 0.50, 0.00)
bg.Parent = ANXIETY
local Gui = ANXIETY:Clone()
Gui.Enabled = true
		ColorCorrect.Name = "AnxietyCC"
		Gui.bg.ImageTransparency = 1
		EchoFX.Delay = 0.345
		EchoFX.Feedback = 0.5
		EchoFX.WetLevel = -80
		FlangeFX.Depth = 1
		FlangeFX.Rate = 0.4
		FlangeFX.Mix = 0
		EqualizerFX.LowGain = 0
		EqualizerFX.MidGain = 0
		EqualizerFX.HighGain = 0
		EqualizerFX2.LowGain = 0
		EqualizerFX2.MidGain = 0
		EqualizerFX2.HighGain = 0
		ChorusFX.Depth = 0.15
		ChorusFX.Rate = 0.5
		ChorusFX.Mix = 0
		ReverbFX.DecayTime = 20
		ReverbFX.Density = 0
		ReverbFX.Diffusion = 1
		ReverbFX.DryLevel = 0
		ReverbFX.WetLevel = -80
        Gui.Parent = CoreUi
		ColorCorrect.Parent = Lighting
		if game.PlaceId == 4972273297 then --Regretevator
		ChorusFX.Parent = SService.MASTER
		EchoFX.Parent = SService.MASTER
		EqualizerFX.Parent = SService.MASTER
		ReverbFX.Parent = SService.MASTER
		EqualizerFX2.Parent = SService.MASTER.MUSIC
		FlangeFX.Parent = SService.MASTER.MUSIC
		elseif game.PlaceId == 9391468976 then --Jujustu Sheinanigans
		ChorusFX.Parent = SService.Effect
		EchoFX.Parent = SService.Effect
		EqualizerFX.Parent = SService.Effect
		ReverbFX.Parent = SService.Effect
		EqualizerFX2.Parent = SService.Music
		FlangeFX.Parent = SService.Music
		else
			ChorusFX.Parent = SService
			EchoFX.Parent = SService
			EqualizerFX.Parent = SService
			ReverbFX.Parent = SService
			--EqualizerFX2.Parent = SService
			FlangeFX.Parent = SService
		end

Tween:Create(Gui.bg, TInfo, {
	["ImageTransparency"] = 0.3
}):Play()
Tween:Create(ColorCorrect, TInfo, {
	["Brightness"] = -0.02,
	["Saturation"] = -0.6
}):Play()
Tween:Create(ChorusFX, TInfo, {
	["Mix"] = 0.5
}):Play()
Tween:Create(FlangeFX, TInfo, {
	["Mix"] = 0.5
}):Play()
Tween:Create(EchoFX, TInfo, {
	["WetLevel"] = -10
}):Play()
Tween:Create(ReverbFX, TInfo, {
	["WetLevel"] = -7
}):Play()
Tween:Create(EqualizerFX, TInfo, {
	["HighGain"] = -11,
	["LowGain"] = -10,
	["MidGain"] = 0.1
}):Play()
Tween:Create(EqualizerFX2, TInfo, {
	["HighGain"] = -80,
	["LowGain"] = -22,
	["MidGain"] = -5
}):Play()
Gui.Heartbeat:Play()
Gui.fearMusic:Play()
