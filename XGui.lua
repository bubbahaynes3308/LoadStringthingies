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
	[Enum.Material.ForceField] = 'Forcefield';
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


_G.Respawn = true
_G.Respawn2 = true
-------------Spectrum Wings Settings
_G.Color = true --Enable Color
_G.RGB = false --Enable RGB
_G.M = "Neon" --Material
_G.RV = 0 --Red Color
_G.GV = 0 --Green Color
_G.BV = 0 --Blue Color
_G.WaitTime = 0.01
-------------------ILWings
_G.WaitTime2 = 0.01

local ILWings = loadstring(game:HttpGet("https://github.com/bubbahaynes3308/LoadStringthingies/raw/refs/heads/main/ILWings.lua",true))()

local SpectrumWings = loadstring(game:HttpGet("https://raw.githubusercontent.com/bubbahaynes3308/LoadStringthingies/main/SpectrumStarWings.lua",true))()

game.Players.LocalPlayer.CharacterAdded:Connect(function()
	if _G.Respawn == true then
	task.wait(0.01)
	SpectrumWings()
	end
	if _G.Respawn2 == true then
		task.wait(0.01)
		ILWings()
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
	_G.Respawn = bool
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
	color = Color3.new(1, 1, 1),
	text = "Color Of Wings",
})
color1.event:Connect(function(color)
	local r = color.r
	local g = color.g
	local b = color.b
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
	print("i chose " .. name .. "For the Material")
	_G.M = name
end)

--------------------Tab2
local tab2 = window1.new({
	text = "IL Wings",
})

local button2 = tab2.new("button", {
	text = "Execute",
})
button1.event:Connect(function()
	print("Immortality Lord's Wings Executed")
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
	_G.Respawn2 = bool
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
slider2.set(0.01)
