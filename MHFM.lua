local Target = game:GetService("Players").LocalPlayer
local Player = Target.Character
local Furrything = game:GetObjects('rbxassetid://97685755805615')[1]:Clone() --game:GetObjects('rbxasset://FurrymodelThing.rbxm')[1]:Clone() if the asset ever Gets Deleted
Furrything.Parent = Player

local Head = Furrything.Welds["Head"]
local Torso = Furrything.Welds["Torso"]
local Left_Arm = Furrything.Welds["Left Arm"]
local Right_Arm = Furrything.Welds["Right Arm"]
local Left_Leg = Furrything.Welds["Left Leg"]
local Right_Leg = Furrything.Welds["Right Leg"]


Player["Head"].Transparency = 1
Player["Torso"].Transparency = 1
Player["Left Arm"].Transparency = 1
Player["Left Leg"].Transparency = 1
Player["Right Arm"].Transparency = 1
Player["Right Leg"].Transparency = 1

Player["Head"].Color = Color3.fromRGB(226, 154, 66)
Player["Torso"].Color = Color3.fromRGB(226, 154, 66)
Player["Left Arm"].Color = Color3.fromRGB(226, 154, 66)
Player["Left Leg"].Color = Color3.fromRGB(226, 154, 66)
Player["Right Arm"].Color = Color3.fromRGB(226, 154, 66)
Player["Right Leg"].Color = Color3.fromRGB(226, 154, 66)


for _, H in pairs(Head:GetChildren()) do
	H.Part0 = Player["Head"]
end

for _, T in pairs(Torso:GetChildren()) do
	T.Part0 = Player["Torso"]
end

for _, LA in pairs(Left_Arm:GetChildren()) do
	LA.Part0 = Player["Left Arm"]
end

for _, LL in pairs(Left_Leg:GetChildren()) do
	LL.Part0 = Player["Left Leg"]
end

for _, RA in pairs(Right_Arm:GetChildren()) do
	RA.Part0 = Player["Right Arm"]
end

for _, RL in pairs(Right_Leg:GetChildren()) do
	RL.Part0 = Player["Right Leg"]
end
