local engine = loadstring(game:HttpGet("https://raw.githubusercontent.com/Singularity5490/rbimgui-2/main/rbimgui-2.lua"))()

local Materials = {
	[Enum.Material.SmoothPlastic] = 'Smooth Plastic';
	[Enum.Material.Plastic] = 'Plastic';
	[Enum.Material.Brick] = 'Brick';
	[Enum.Material.Cobblestone] = 'Cobblestone';
	[Enum.Material.Concrete] = 'Concrete';
	[Enum.Material.CorrodedMetal] = 'Corroded Metal';
	[Enum.Material.DiamondPlate] = 'Diamond Plate';
	[Enum.Material.Fabric] = 'Fabric';
	[Enum.Material.Foil] = 'Foil';
	[Enum.Material.ForceField] = 'ForceField';
	[Enum.Material.Granite] = 'Granite';
	[Enum.Material.Grass] = 'Grass';
	[Enum.Material.Ice] = 'Ice';
	[Enum.Material.Marble] = 'Marble';
	[Enum.Material.Metal] = 'Metal';
	[Enum.Material.Neon] = 'Neon';
	[Enum.Material.Pebble] = 'Pebble';
	[Enum.Material.Sand] = 'Sand';
	[Enum.Material.Slate] = 'Slate';
	[Enum.Material.Wood] = 'Wood';
	[Enum.Material.WoodPlanks] = 'Wood Planks';
	[Enum.Material.Glass] = 'Glass';
};

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
	"LeftLowerLeg",
	"RightLowerLeg",
	"LeftLowerLeg",
	"RightFoot",
	"LeftFoot",
};


_G.SpectrumWingsRespawn = true
_G.ILWingsRespawn = true
-------------------Spectrum Wings Settings
_G.Color = true --Enable Color
_G.RGB = false --Enable RGB
_G.M = "Neon" --Material
_G.RV = 0 --Red Color
_G.GV = 0 --Green Color
_G.BV = 0 --Blue Color
_G.WaitTime = 0.01
-------------------ILWings
_G.WaitTime2 = 0.017
-------------------HBE
_G.HS = 10 --Hitbox Size
_G.Enabled = true
_G.HBP = "Head" --HitBox Part
_G.T = 0.75 --Transparency

local SpectrumWings = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/bubbahaynes3308/LoadStringthingies/main/SpectrumStarWings.lua",true))()
end

local ILWings = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/bubbahaynes3308/LoadStringthingies/main/ILWings.lua",true))()
end

local HBE = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/bubbahaynes3308/LoadStringthingies/main/HBE",true))()
end

local BothWings = function()
	spawn(function(parameters)
		ILWings()
	end)
	SpectrumWings()
end

game.Players.LocalPlayer.CharacterAdded:Connect(function()
	task.wait(0.01)
	if _G.SpectrumWingsRespawn == true and _G.ILWingsRespawn == true then
		BothWings()
	elseif _G.ILWingsRespawn == true and _G.SpectrumWingsRespawn == false then
		ILWings()
	elseif _G.SpectrumWingsRespawn == true and _G.ILWingsRespawn == false  then
		SpectrumWings()
	end
end)



local window1 = engine.new({
	text = "X Gui",
	size = UDim2.new(300, 200),
})

window1.open()
---------------------Tab1
local tab1 = window1.new({
	text = "Spectrum Wings",
})

local button1 = tab1.new("button", {
	text = "Execute",
})
button1.event:Connect(function()
	print("Spectrum Wings Executed")
	SpectrumWings()
end)

local label1 = tab1.new("label", {
	text = "Spectrum Star Wings Settings",
	color = Color3.new(1, 1, 1),
})

local switch1 = tab1.new("switch", {
	text = "RGB";
})
switch1.set(false)
switch1.event:Connect(function(bool)
	print("RGB set to: ", bool)
	_G.RGB = bool
end)

local switch2 = tab1.new("switch", {
	text = "On Respawn Re Execute?";
})
switch2.set(true)
switch2.event:Connect(function(bool)
	print("Re Execute on Respawn set to: ", bool)
	_G.SpectrumWingsRespawn = bool
end)

local slider1 = tab1.new("slider", {
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

local color1 = tab1.new("color", {
	color = Color3.fromRGB(255, 255, 255),
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

local dropdown1 = tab1.new("dropdown", {
	text = "Material",
})

table.sort(Materials)
for i, v in pairs(Materials) do
	dropdown1.new(v)
end


dropdown1.event:Connect(function(name)
	print("i chose " .. name .. " For the Material")
	_G.M = name
end)

--------------------Tab2
local tab2 = window1.new({
	text = "IL Wings",
})

local button2 = tab2.new("button", {
	text = "Execute",
})
button2.event:Connect(function()
	print("Immortality Lord's Wings Executed")
	ILWings()
end)

local label2 = tab2.new("label", {
	text = "IL Wings Settings",
	color = Color3.new(1, 1, 1),
})

local switch3 = tab2.new("switch", {
	text = "On Respawn Re Execute?";
})
switch3.set(true)
switch3.event:Connect(function(bool)
	print("Re Execute on Respawn set to: ", bool)
	_G.ILWingsRespawn = bool
end)

local slider2 = tab2.new("slider", {
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
slider2.set(0.017)

--Tab 3
local tab3 = window1.new({
	text = "Other",
})
local button3 = tab3.new("button", {
	text = "Execute RC",
})
button3.event:Connect(function()
	print("RoClothes Executed")
	loadstring(game:HttpGet("https://raw.githubusercontent.com/bubbahaynes3308/LoadStringthingies/main/RC.lua",true))()
end)

local button5 = tab3.new("button", {
	text = "Execute IY",
})
button5.event:Connect(function()
	print("Infinity Yeild Executed")
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

local label2 = tab3.new("label", {
	text = "HBE",
	color = Color3.new(1, 1, 1),
})
--HBE
local dock1 = tab3.new("dock")

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

local dropdown2 = tab3.new("dropdown", {
	text = "Body Part",
})

for i, v in pairs(BodyParts) do
	dropdown2.new(v)
end


dropdown2.event:Connect(function(name)
	print("i chose " .. name .. " For the Body Part")
	_G.HBP = name
end)

local slider3 = tab3.new("slider", {
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
