local engine = loadstring(game:HttpGet("https://raw.githubusercontent.com/Singularity5490/rbimgui-2/main/rbimgui-2.lua"))() --loadstring(game:HttpGet("https://raw.githubusercontent.com/Eazvy/UILibs/refs/heads/main/Librarys/Elerium/Example"))()

local Materials = {
	[Enum.Material.Brick] = 'Brick';
	[Enum.Material.Cobblestone] = 'Cobblestone';
	[Enum.Material.Concrete] = 'Concrete';
	[Enum.Material.CorrodedMetal] = 'Corroded Metal';
	[Enum.Material.DiamondPlate] = 'Diamond Plate';
	[Enum.Material.Fabric] = 'Fabric';
	[Enum.Material.Foil] = 'Foil';
	[Enum.Material.ForceField] = 'ForceField';
	[Enum.Material.Glass] = 'Glass';
	[Enum.Material.Granite] = 'Granite';
	[Enum.Material.Grass] = 'Grass';
	[Enum.Material.Ice] = 'Ice';
	[Enum.Material.Marble] = 'Marble';
	[Enum.Material.Metal] = 'Metal';
	[Enum.Material.Neon] = 'Neon';
	[Enum.Material.Pebble] = 'Pebble';
	[Enum.Material.Plastic] = 'Plastic';
	[Enum.Material.Sand] = 'Sand';
	[Enum.Material.Slate] = 'Slate';
	[Enum.Material.SmoothPlastic] = 'Smooth Plastic';
	[Enum.Material.WoodPlanks] = 'Wood Planks';
	[Enum.Material.Wood] = 'Wood';
};
local FullHatSetNames = {
	"Fed",
	"FoodDemons",
	"GeodeIc3",
	"GeodeSn0w",
	"Gnarpy",
	"Hunter",
	"Maidify",
	"Melanie",
	"NewerMelanie",
	"WolframNightstalker",
};
local ExtraValue2 = {
"Normal",
"UwU",	
}

local BodyParts = {
	"Head",
	"HumanoidRootPart",

	[[-------R6------]],
	"Torso",
	"Left Arm",
	"Right Arm",
	"Right Leg",
	"Left Leg",

	[[-------R15------]],
	"UpperTorso",
	"LowerTorso",
	"LeftUpperArm",
	"RightUpperArm",
	"LeftHand",
	"RightHand",
	"RightLowerArm",
	"LeftLowerArm",
	"RightUpperLeg",
	"LeftUpperLeg",
	"RightLowerLeg",
	"LeftLowerLeg",
	"RightFoot",
	"LeftFoot",
};
_G.RespawnWaitTime = 0.025
_G.GeodeHattingRespawn = false
_G.MHFRespawn = false
_G.SpectrumWingsRespawn = false
_G.ILWingsRespawn = false
_G.TailsRespawn = false
-------------------Spectrum Wings Settings
_G.Color = true --Enable Color
_G.RGB = false --Enable RGB
_G.M = "Neon" --Material
_G.TransZ = 0
_G.ReflectZ = 0
_G.RV = 0 --Red Color
_G.GV = 0 --Green Color
_G.BV = 0 --Blue Color
_G.WaitTime = 0.01
-------------------ILWings
_G.ZRGB = false
_G.M2 = "Glass"
_G.TransX = 0
_G.ReflectX = 0
_G.RV2 = 0
_G.GV2 = 0
_G.BV2 = 0
_G.WaitTime2 = 0.017
-------------------HBE
_G.HS = 10 --Hitbox Size
_G.Enabled = true
_G.HBP = "Head" --HitBox Part
_G.T = 0.75 --Transparency
------------------Tails
_G.RTailValue = 0
_G.GTailValue = 0
_G.BTailValue = 0
_G.TailValue = 1
_G.Trans7 = 0
_G.Reflect7 = 0
_G.M3 = "Neon"
_G.XRGB = false
_G.TorsoColorValue = false
------------------R15ToR6
_G.Method = 1 -- 1/Maximum (2 is Maximum)
_G.TorsoType = "Male" -- Male/Female
_G.RobloxShirt = "true" -- true/false
_G.SizeLock = "false" -- true/false
_G.R15PT = "true" -- true/false
_G.R6PT = "false" -- true/false
_G.Target = game.Players.LocalPlayer  -- game.Players:WaitForChild("OtherPlayerName")
------------------GeodeHatting
_G.K1 = "Gnarpy" 
_G.K2 = 1 
_G.K3 = "Normal"

local SpectrumWings = function()
	spawn(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/bubbahaynes3308/LoadStringthingies/main/SpectrumStarWings.lua",true))()
	end)
end

local ILWings = function()
	spawn(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/bubbahaynes3308/LoadStringthingies/main/ILWings.lua",true))()
	end)
end

local R15ToR6 = function()
	spawn(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/bubbahaynes3308/LoadStringthingies/main/R15ToR6.lua",true))()
	end)
end

local HBE = function()
	spawn(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/bubbahaynes3308/LoadStringthingies/main/HBE",true))()
	end)
end

local GeodeHatting = function()
	spawn(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/bubbahaynes3308/LoadStringthingies/main/GeodeHatting",true))()
	end)
end

local MHF = function()
	spawn(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/bubbahaynes3308/LoadStringthingies/main/MHFM.lua",true))()
	end)
end

local Tails = function()
	spawn(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/bubbahaynes3308/LoadStringthingies/main/Tails.lua",true))()
	end)
end

game.Players.LocalPlayer.CharacterAdded:Connect(function()
	task.wait(_G.RespawnWaitTime)
	if _G.GeodeHattingRespawn == true then
		GeodeHatting()
	end
	if _G.TailsRespawn == true then
		Tails()
	end
	if _G.MHFRespawn == true then
		MHF()
	end
	if _G.ILWingsRespawn == true then
		ILWings()
	end
	if _G.SpectrumWingsRespawn == true then
		SpectrumWings()
	end
end)



local window1 = engine.new({
	text = "X Gui",
	size = UDim2.new(300, 200),
})

window1.open()
-------------------------------------------------------------------------------------------------------------------MainTab
local MainTab = window1.new({
	text = "Main",
})

local SGWingsLabel = MainTab.new("label", {
	text = "Spectrum Star Wings ",
	color = Color3.new(1, 1, 1),
})

local button1 = MainTab.new("button", {
	text = "Execute",
})
button1.event:Connect(function()
	print("Spectrum Wings Executed")
	SpectrumWings()
end)

local label1 = MainTab.new("label", {
	text = "Spectrum Star Wings Settings",
	color = Color3.new(1, 1, 1),
})

local switch2 = MainTab.new("switch", {
	text = "On Respawn Re Execute?";
})
switch2.set(false)
switch2.event:Connect(function(bool)
	print("Re Execute on Respawn set to: ", bool)
	_G.SpectrumWingsRespawn = bool
end)

local switch1 = MainTab.new("switch", {
	text = "RGB";
})
switch1.set(false)
switch1.event:Connect(function(bool)
	print("RGB set to: ", bool)
	_G.RGB = bool
end)

local slider1 = MainTab.new("slider", {
	text = "Task.Wait() Time",
	color = Color3.new(0.8, 0.5, 0),
	min = 1,
	max = 1000,
	value = 1,
	rounding = 1,
})
slider1.event:Connect(function(x)
	print("slider value: " .. x * 0.0001)
	_G.WaitTime = x * 0.0001
end)
slider1.set(0.01)

local color1 = MainTab.new("color", {
	color = Color3.fromRGB(0, 0, 0),
	text = "Color Of Wings",
})
color1.event:Connect(function(color)
	local r = color.r * 255
	local g = color.g * 255 
	local b = color.b * 255
	print("Wing Color is now (" .. r ..",".. g .."," .. b .. ")") 
	_G.RV = r 
	_G.GV = g 
	_G.BV = b
end)

local slider5 = MainTab.new("slider", { size = 150, text = "Transparency", min = 0, max = 100, })
slider5.event:Connect(function(x)
	print("Transparency: ", x * 0.01)
	_G.TransZ = x * 0.01
end)

local slider6 = MainTab.new("slider", { size = 150, text = "Reflectance", min = 0, max = 100, })
slider6.event:Connect(function(x)
	print("Reflectance: ", x * 0.01)
	_G.ReflectZ = x * 0.01
end)

local dropdown1 = MainTab.new("dropdown", {
	text = "Material",
})
for i, v in pairs(Materials) do
	table.sort(Materials)
	dropdown1.new(v)
end


dropdown1.event:Connect(function(name)
	print("i chose " .. name .. " For the Material")
	_G.M = name
end)

local TailsSlS = MainTab.new("label", {
	text = "                  ",
	color = Color3.new(1, 1, 1),
})

local ILWingsLabel = MainTab.new("label", {
	text = "Immortality Lord Wings ",
	color = Color3.new(1, 1, 1),
})

local button2 = MainTab.new("button", {
	text = "Execute",
})
button2.event:Connect(function()
	print("Immortality Lord's Wings Executed")
	ILWings()
end)

local label2 = MainTab.new("label", {
	text = "IL Wings Settings",
	color = Color3.new(1, 1, 1),
})

local switch3 = MainTab.new("switch", {
	text = "On Respawn Re Execute?";
})
switch3.set(false)
switch3.event:Connect(function(bool)
	print("Re Execute on Respawn set to: ", bool)
	_G.ILWingsRespawn = bool
end)

local switch3 = MainTab.new("switch", {
	text = "RGB";
})
switch3.set(false)
switch3.event:Connect(function(bool)
	print("RGB set to: ", bool)
	_G.ZRGB = bool
end)

local slider2 = MainTab.new("slider", {
	text = "Task.Wait() Time",
	color = Color3.new(0.8, 0.5, 0),
	min = 1,
	max = 1000,
	value = 1,
	rounding = 1,
})
slider2.event:Connect(function(x)
	print("slider value: " .. x * 0.0001)
	_G.WaitTime2 = x * 0.0001
end)
slider2.set(0.015)



local color2 = MainTab.new("color", {
	color = Color3.fromRGB(0, 0, 0),
	text = "Color Of Wings",
})
color2.event:Connect(function(color)
	local r = color.r * 255
	local g = color.g * 255 
	local b = color.b * 255
	print("Wing Color is now (" .. r ..",".. g .."," .. b .. ")") 
	_G.RV2 = r 
	_G.GV2 = g 
	_G.BV2 = b
end)

local slider7 = MainTab.new("slider", { size = 150, text = "Transparency", min = 0, max = 100, })
slider7.event:Connect(function(x)
	print("Transparency: ", x * 0.01)
	_G.TransX = x * 0.01
end)

local slider4 = MainTab.new("slider", { size = 150, text = "Reflectance", min = 0, max = 100, })
slider4.event:Connect(function(x)
	print("Reflectance: ", x * 0.01)
	_G.ReflectX = x * 0.01
end)

local dropdown2 = MainTab.new("dropdown", {
	text = "Material",
})
for i, v in pairs(Materials) do
	table.sort(Materials)
	dropdown2.new(v)
end

dropdown2.event:Connect(function(name)
	print("i chose " .. name .. " For the Material")
	_G.M2 = name
end)

local TailsSl = MainTab.new("label", {
	text = "                  ",
	color = Color3.new(1, 1, 1),
})

local TailsLabel = MainTab.new("label", {
	text = "Tails",
	color = Color3.new(1, 1, 1),
})

local Tailsbutton2 = MainTab.new("button", {
	text = "Execute",
})
Tailsbutton2.event:Connect(function()
	print("Tails Executed")
	Tails()
end)

local Tailslabel2 = MainTab.new("label", {
	text = "Tails Settings",
	color = Color3.new(1, 1, 1),
})

local Tailsswitch3 = MainTab.new("switch", {
	text = "On Respawn Re Execute?";
})
Tailsswitch3.set(false)
Tailsswitch3.event:Connect(function(bool)
	print("Re Execute on Respawn set to: ", bool)
	_G.TailsRespawn = bool
end)

local Tailsswitch3 = MainTab.new("switch", {
	text = "RGB";
})
Tailsswitch3.set(false)
Tailsswitch3.event:Connect(function(bool)
	print("RGB set to: ", bool)
	_G.XRGB = bool
end)

local Tailsswitch4 = MainTab.new("switch", {
	text = "Use Torso Color";
})
Tailsswitch4.set(false)
Tailsswitch4.event:Connect(function(bool)
	print("Use Torso Color set to: ", bool)
	_G.TorsoColorValue = bool
end)

local Tailsslider2 = MainTab.new("slider", {
	text = "Amount Of Tails",
	color = Color3.new(0.8, 0.5, 0),
	min = 1,
	max = 4,
	value = 1,
	rounding = 1,
})
Tailsslider2.event:Connect(function(x)
	print("Amount Of Tails: " .. x)
	_G.TailValue = x
end)
Tailsslider2.set(1)



local Tailscolor2 = MainTab.new("color", {
	color = Color3.fromRGB(0, 0, 0),
	text = "Color Of Tails",
})
Tailscolor2.event:Connect(function(color)
	local r = color.r * 255
	local g = color.g * 255 
	local b = color.b * 255
	print("Wing Color is now (" .. r ..",".. g .."," .. b .. ")") 
	_G.RTailValue = r 
	_G.GTailValue = g 
	_G.BTailValue = b
end)

local Tailsslider7 = MainTab.new("slider", { size = 150, text = "Transparency", min = 0, max = 100, })
Tailsslider7.event:Connect(function(x)
	print("Transparency: ", x * 0.01)
	_G.Trans7 = x * 0.01
end)

local Tailsslider4 = MainTab.new("slider", { size = 150, text = "Reflectance", min = 0, max = 100, })
Tailsslider4.event:Connect(function(x)
	print("Reflectance: ", x * 0.01)
	_G.Reflect7 = x * 0.01
end)

local Tailsdropdown2 = MainTab.new("dropdown", {
	text = "Material",
})
for i, v in pairs(Materials) do
	table.sort(Materials)
	Tailsdropdown2.new(v)
end

Tailsdropdown2.event:Connect(function(name)
	print("i chose " .. name .. " For the Material")
	_G.M3 = name
end)

-------------------------------------------------------------------------------------------------------------------Tab 4

local MorphingTab = window1.new({
	text = "R15TR6&Morphs",
})

local button7 = MorphingTab.new("button", {text = "R6ify"})
button7.event:Connect(function()
	print("Converted R15 to R6 Cliently")
	R15ToR6()
end)

local slider8 = MorphingTab.new("slider", {
	text = "Method",
	color = Color3.new(0.8, 0.5, 0),
	min = 1,
	max = 2,
	value = 1,
	rounding = 1,
})
slider8.event:Connect(function(x)
	print("Method: " .. x)
	_G.Method = x 
end)
slider8.set(1)

local switch4 = MorphingTab.new("switch", {
	text = "Roblox Shirt";
})
switch4.set(true)
switch4.event:Connect(function(bool)
	print("Roblox Shirt set to: ", bool)
	_G.RobloxShirt = bool
end)

local switch5 = MorphingTab.new("switch", {
	text = "Size Lock";
})
switch5.set(false)
switch5.event:Connect(function(bool)
	print("Size Lock set to: ", bool)
	_G.SizeLock = bool
end)

local switch6 = MorphingTab.new("switch", {
	text = "R15 Part Transparency";
})
switch6.set(true)
switch6.event:Connect(function(bool)
	print("R15PT set to: ", bool)
	_G.R15PT = bool
end)

local switch7 = MorphingTab.new("switch", {
	text = "R6 Part Transparency";
})
switch7.set(false)
switch7.event:Connect(function(bool)
	print("R6PT set to: ", bool)
	_G.R6PT = bool
end)

local dropdown3 = MorphingTab.new("dropdown", {
	text = "Target",
})

dropdown3.new("LocalPlayer")
for i, v in pairs(game:GetService("Players"):GetPlayers()) do
	dropdown3.new(v.Name)
end

dropdown3.event:Connect(function(name)
	_G.Target = game:GetService("Players")[name]
	print("i chose " .. name)
end)

local dropdown4 = MorphingTab.new("dropdown", {
	text = "Torso Type",
})
dropdown4.new("Male")
dropdown4.new("Female")
dropdown4.event:Connect(function(name)
	_G.TorsoType = name
	print("i chose " .. name)
end)

local label3 = MorphingTab.new("label", {
	text = "Morphs",
	color = Color3.new(1, 1, 1),
})

local button9 = MorphingTab.new("button", {
	text = "MidnightHorrorsFurry",
})
button9.event:Connect(function()
	print("Midnight Horrors Furry Executed")
	MHF()
end)

local switch9 = MorphingTab.new("switch", {
	text = "Reapply On Respawn";
})
switch9.set(false)
switch9.event:Connect(function(bool)
	print("Re Execute on Respawn set to: ", bool)
	_G.MHFRespawn = bool
end)


local label4 = MorphingTab.new("label", {
	text = "-----------------",
	color = Color3.new(1, 1, 1),
})


local button10 = MorphingTab.new("button", {
	text = "Geode Hatting",
})
button10.event:Connect(function()
	print("Hatting Executed")
	GeodeHatting()
end)

local switch8 = MorphingTab.new("switch", {
	text = "Reapply On Respawn";
})
switch8.set(false)
switch8.event:Connect(function(bool)
	print("Re Execute on Respawn set to: ", bool)
	_G.MMFDRespawn = bool
end)

local HattingDropdown1 = MorphingTab.new("dropdown", {
	text = "Hat Set",
})
for i, v in pairs(FullHatSetNames) do
	HattingDropdown1.new(v)
end

HattingDropdown1.event:Connect(function(name)
	print("i chose " .. name .. " As The Hat Set")
	_G.K1 = name
end)

local HattingFDSlider = MorphingTab.new("slider", {
	text = "Food Demon Number",
	color = Color3.new(0.8, 0.5, 0),
	min = 1,
	max = 76,
	value = 1,
	rounding = 5,
})
Tailsslider2.event:Connect(function(x)
	print("Amount Of Tails: " .. x)
	_G.TailValue = x
end)
Tailsslider2.set(1)

local HattingDropdown2 = MorphingTab.new("dropdown", {
	text = "2nd Extra Value",
})
for i, v in pairs(ExtraValue2) do
	HattingDropdown2.new(v)
end

HattingDropdown2.event:Connect(function(name)
	print("i chose " .. name .. " As The 2nd Extra Value")
	_G.K3 = name
end)




-------------------------------------------------------------------------------------------------------------------Tab 3
local OthersTab = window1.new({
	text = "Other",
})

local RespawnWaitTimeSlider = OthersTab.new("slider", {
	text = "Respawn Wait Time",
	color = Color3.new(0.8, 0.5, 0),
	min = 1,
	max = 1000,
	value = 1,
	rounding = 1,
})
RespawnWaitTimeSlider.event:Connect(function(x)
	print("slider value: " .. x * 0.001)
	_G.RespawnWaitTime = x * 0.001
end)
RespawnWaitTimeSlider.set(1)

local button3 = OthersTab.new("button", {
	text = "Execute RC",
})
button3.event:Connect(function()
	print("RoClothes Executed")
	spawn(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/bubbahaynes3308/LoadStringthingies/main/RC.lua",true))()
	end)
end)

local button5 = OthersTab.new("button", {
	text = "Execute IY",
})
button5.event:Connect(function()
	print("Infinity Yeild Executed")
	spawn(function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
	end)
end)

local button6 = OthersTab.new("button", {
	text = "Regret Paranoia",
})
button6.event:Connect(function()
	print("Regretevator Paranoia Executed")
	spawn(function()
		loadstring(game:HttpGet("https://github.com/bubbahaynes3308/LoadStringthingies/raw/refs/heads/main/Regretevator_Paranoia.lua",true))()
	end)

end)

local button7 = OthersTab.new("button", {
	text = "Execute IY Dex",
})
button7.event:Connect(function()
	print("IY Dex Executed")
	spawn(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
	end)
end)

local button8 = OthersTab.new("button", {
	text = "Execute Dark Dex V5",
})
button8.event:Connect(function()
	print("Dark Dex V5 Executed")
	spawn(function()
		loadstring(game:HttpGet('https://github.com/AlterX404/DarkDEX-V5/raw/refs/heads/main/DarkDEX-V5'))()
	end)
end)

--HBE
local label2 = OthersTab.new("label", {
	text = "HBE",
	color = Color3.new(1, 1, 1),
})

local dock1 = OthersTab.new("dock")

local button4 = dock1.new("button", {text = "Execute HBE"})
button4.event:Connect(function()
	print("HBE Executed")
	HBE()
end)

local slider2 = dock1.new("slider", { size = 75, text = "Size", min = 1, max = 30 })
slider2.event:Connect(function(x)
	print("HB Size: ", x)
	_G.HS = x
end)

local dropdown2 = OthersTab.new("dropdown", {
	text = "Body Part",
})

for i, v in pairs(BodyParts) do
	dropdown2.new(v)
end


dropdown2.event:Connect(function(name)
	print("i chose " .. name .. " For the Body Part")
	_G.HBP = name
end)

local slider3 = OthersTab.new("slider", {
	text = "Transparency",
	color = Color3.new(0.8, 0.5, 0),
	min = 0,
	max = 10,
	value = 1,
	rounding = 1,
})
slider3.event:Connect(function(x)
	print("slider value: " .. x * 0.1)
	_G.T = x * 0.1
end)
slider3.set(5)
