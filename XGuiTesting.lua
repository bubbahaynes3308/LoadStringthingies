
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

local Players = game:GetService("Players")

local XIIX =  game:GetObjects("rbxasset://XIIXPack.Rbxm")[1]:Clone()

local FullHatSetNames = {};

for I,V in pairs(XIIX.GeodesHatting.XHat:GetChildren()) do
	table.insert(FullHatSetNames, V.Name)
end


local ExtraValue2 = {
	"Normal",
	"UwU",	
}

local BodyParts = {
	"Head",
	"HumanoidRootPart",
	[[-R6-]],
	"Torso",
	"Left Arm",
	"Right Arm",
	"Right Leg",
	"Left Leg",
	[[-R15-]],
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
_G.TorsoCValue = false
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
_G.Target = Players.LocalPlayer  -- Players:WaitForChild("OtherPlayerName")
------------------GeodeHatting
_G.K1 = "Shork" 
_G.K2 = 1 
_G.K3 = "Normal"
_G.K4 = Players.LocalPlayer
_G.K5 = false

_G.ReAddArms = false

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
		loadstring(game:HttpGet("https://raw.githubusercontent.com/bubbahaynes3308/LoadStringthingies/main/HBE.lua",true))()
	end)
end

local GeodeHatting = function()
	spawn(function()
		--loadstring(game:HttpGet("https://raw.githubusercontent.com/bubbahaynes3308/LoadStringthingies/main/GeodeHatting.lua",true))()
		local HatPack = _G.K1
		local ExtraValue = _G.K2
		local ExtraValue2 = _G.K3
		local SaveOutfit = _G.K5
		local RX = XIIX.GeodesHatting
		local X = RX.XHat
		local Plr = _G.K4
		local HatPackage = X[HatPack]:Clone()
		local HiddenLimbs = RX.HiddenLimbs
		local Player = Plr.Character
		local HatsResized = {}
		local Connections = {}
		local AllConnect = {}

		------------------------------------------Below Is What Welds The Hats Together--------------------------------------------------------------

		local function weldAttachments(attach1, attach2)
			local weld = Instance.new("Weld")
			weld.Part0 = attach1.Parent
			weld.Part1 = attach2.Parent
			weld.C0 = attach1.CFrame
			weld.C1 = attach2.CFrame
			weld.Parent = attach1.Parent
			return weld
		end

		local function buildWeld(weldName, parent, part0, part1, c0, c1)
			local weld = Instance.new("Weld")
			weld.Name = weldName
			weld.Part0 = part0
			weld.Part1 = part1
			weld.C0 = c0
			weld.C1 = c1
			weld.Parent = parent
			return weld
		end

		local function findFirstMatchingAttachment(model, name)
			for _, child in pairs(model:GetChildren()) do
				if child:IsA("Attachment") and child.Name == name then
					return child
				elseif not child:IsA("Accoutrement") and not child:IsA("Tool") then -- Don't look in hats or tools in the character
					local foundAttachment = findFirstMatchingAttachment(child, name)
					if foundAttachment then
						return foundAttachment
					end
				end
			end
		end

		local function addAccoutrement(character, accoutrement)  
			accoutrement.Parent = character
			local handle = accoutrement:FindFirstChild("Handle")
			if handle then
				local accoutrementAttachment = handle:FindFirstChildOfClass("Attachment")
				if accoutrementAttachment then
					local characterAttachment = findFirstMatchingAttachment(character, accoutrementAttachment.Name)
					if characterAttachment then
						weldAttachments(characterAttachment, accoutrementAttachment)
					end
				else
					local head = character:FindFirstChild("Head")
					if head then
						local attachmentCFrame = CFrame.new(0, 0.5, 0)
						local hatCFrame = accoutrement.AttachmentPoint
						buildWeld("HeadWeld", head, head, handle, attachmentCFrame, hatCFrame)
					end
				end
			end
		end

		------------------------------------------Above Is What Welds The Hats Together--------------------------------------------------------------

		local function RemoveHatsAndRecolor()
			
			if HatPack == "FoodDemons" then
				NewHats = HatPackage[tostring(ExtraValue)]:Clone()
			elseif HatPack == "WolframNightstalker" then
				NewHats = HatPackage["NewHats".. ExtraValue2]:Clone()
			else
				NewHats = HatPackage["NewHats"]:Clone()
			end
			
			if not HatPackage:HasTag("UniverseTagentVarrient") then
			if game.PlaceId == 10449761463 then
				for _, PlrHats in pairs(Player:WaitForChild("FakeHead",50):GetChildren()) do
					if  PlrHats:IsA("Accessory") or 
						PlrHats:IsA("Hat")
					then
						PlrHats:Destroy()
					end
				end
			end

			for _, PlrHats in pairs(Player:GetChildren()) do

				if  PlrHats:IsA("Accessory") or 
					PlrHats:IsA("Hat") or 
					PlrHats:IsA("BodyColors") or 
					PlrHats:IsA("CharacterMesh") or 
					PlrHats:IsA("Pants") or 
					PlrHats:IsA("Shirt") or 
					PlrHats:IsA("ShirtGraphic")  
				then
					PlrHats:Destroy()
				end
				end
				end
			if HatPackage:HasTag("Headless") or  ExtraValue == "42" or ExtraValue == "41" or ExtraValue == "31" or ExtraValue == "30" or ExtraValue == "29" or ExtraValue == "66" or ExtraValue == "67" or ExtraValue == "68" or ExtraValue == "69" or ExtraValue == "70" or ExtraValue == "71" or ExtraValue == "72" or ExtraValue == "74" or ExtraValue == "73" then --Invisible Head
				HiddenLimbs.InvisibleHead:Clone().Parent = Player["Head"]

			end
			if HatPackage:HasTag("FullBody") or  ExtraValue == "42" or ExtraValue == "41" or ExtraValue == "31" or ExtraValue == "30" or ExtraValue == "29" or ExtraValue == "66" or ExtraValue == "67" or ExtraValue == "68" or ExtraValue == "69" or ExtraValue == "70" or ExtraValue == "71" or ExtraValue == "72" or ExtraValue == "74" or ExtraValue == "73" then --Invisible Full Body
				HiddenLimbs.HiddenTorso:Clone().Parent = Player["Torso"]
				HiddenLimbs.LA:Clone().Parent = Player["Left Arm"]
				HiddenLimbs.LL:Clone().Parent = Player["Left Leg"]
				HiddenLimbs.RA:Clone().Parent = Player["Right Arm"]
				HiddenLimbs.RL:Clone().Parent = Player["Right Leg"]
			end
			if HatPackage:HasTag("HiddenTopBody") then --Invisible Full Body
				HiddenLimbs.HiddenTorso:Clone().Parent = Player["Torso"]
				HiddenLimbs.LA:Clone().Parent = Player["Left Arm"]
				HiddenLimbs.RA:Clone().Parent = Player["Right Arm"]
			end
			
			if HatPackage:HasTag("UniverseIsR63d") then --Invisible Full Body
				HiddenLimbs.GirlTorso:Clone().Parent = Player["Torso"]
				HiddenLimbs.LL:Clone().Parent = Player["Left Leg"]
				HiddenLimbs.RL:Clone().Parent = Player["Right Leg"]
			end

			for _, PossibleDecal in pairs(Player["Head"]:GetChildren()) do
				if  PossibleDecal:IsA("Decal") and PossibleDecal.Name == "face" then
					if HatPackage:HasTag("FaceIncluded") then
						PossibleDecal.Texture = HatPackage:GetAttribute("Face")
					else
						PossibleDecal.Transparency = 1
					end
					if HatPackage:HasTag("FaceAnimated") then
						HatPackage["AnimatedFace"]:Clone().Parent = PossibleDecal
					end
				end
			end




			if HatPackage:HasTag("HasColors") then --i Used Tags To Differ Them From Getting set Without one
				if  HatPack == "FoodDemons" and ExtraValue ~= "42" or ExtraValue ~= "41" or ExtraValue ~= "31" or ExtraValue ~= "30" or ExtraValue ~= "29" or ExtraValue ~= "66" or ExtraValue ~= "67" or ExtraValue ~= "68" or ExtraValue ~= "69" or ExtraValue ~= "70" or ExtraValue ~= "71" or ExtraValue ~= "72" or ExtraValue ~= "74" or ExtraValue ~= "73" then			---These Extra Values in question Have no Body Color And Use Hidden Limbs 
					--[[local BodyColor = NewHats:FindFirstChildOfClass("Body Colors")
					Player["Head"].Color = BodyColor.HeadColor3
					Player["Torso"].Color = BodyColor.TorsoColor3
					Player["Left Arm"].Color = BodyColor.LeftArmColor3
					Player["Left Leg"].Color = BodyColor.LeftLegColor3
					Player["Right Arm"].Color = BodyColor.RightArmColor3
					Player["Right Leg"].Color = BodyColor.RightLegColor3]]
				else
					Player["Head"].Color = HatPackage:GetAttribute("Color")
					Player["Torso"].Color = HatPackage:GetAttribute("Color")
					Player["Left Arm"].Color = HatPackage:GetAttribute("Color")
					Player["Left Leg"].Color = HatPackage:GetAttribute("Color")
					Player["Right Arm"].Color = HatPackage:GetAttribute("Color")
					Player["Right Leg"].Color = HatPackage:GetAttribute("Color")
				end
			end
		end

		if HatPackage:HasTag("UseAttributesColors") then --i Used Tags To Differ Them From Getting set Without one
			Player["Head"].Color = HatPackage:GetAttribute("Color")
			Player["Torso"].Color = HatPackage:GetAttribute("Color")
			Player["Left Arm"].Color = HatPackage:GetAttribute("Color")
			Player["Left Leg"].Color = HatPackage:GetAttribute("Color")
			Player["Right Arm"].Color = HatPackage:GetAttribute("Color")
			Player["Right Leg"].Color = HatPackage:GetAttribute("Color")
		end

		if HatPackage:HasTag("UseBodyColors") then --i Used Tags To Differ Them From Getting set Without one
			--[[local BodyColor = HatPackage.NewHats:FindFirstChildOfClass("Body Colors")
			Player["Head"].Color = BodyColor.HeadColor3
			Player["Torso"].Color = BodyColor.TorsoColor3
			Player["Left Arm"].Color = BodyColor.LeftArmColor3
			Player["Left Leg"].Color = BodyColor.LeftLegColor3
			Player["Right Arm"].Color = BodyColor.RightArmColor3
			Player["Right Leg"].Color = BodyColor.RightLegColor3]]
		end



		--------------------------------------------------------------------------------------------------------

		local function AddNewHats()
			for _, Prt in pairs(NewHats:GetChildren()) do
				Prt.Parent = Player
				if HatPackage:HasTag("HeadMesh") then --i Used Tags To Differ Them From Getting set Without one
					Player["Head"]:FindFirstChildOfClass("SpecialMesh"):Destroy()
					HatPackage:WaitForChild("HeadMesh", 50):Clone().Parent = Player["Head"]
				end
				if Prt:IsA("Accessory") or Prt:IsA("Hat") then
					addAccoutrement(Player, Prt)
					Prt.Handle.CanCollide = false
					Prt.Handle.Massless = true
				end
			end

		end

		local function processCharacterAccessories(character)
			local humanoid = character:FindFirstChildOfClass("Humanoid")
			if not humanoid then
				warn("Humanoid not found in character")
				return
			end

			local scale = character:GetScale() -- Assuming uniform scaling, adjust as needed

			local headHats = {}
			local waistAccessories = {}
			local otherAccessories = {}

			for _, accessory in character:GetChildren() do
				if accessory:IsA("Accessory") then
					local handle = accessory:FindFirstChild("Handle")
					if handle and handle:IsA("BasePart") then
						-- Scale the handle and its descendants
						handle.Size = handle.Size * scale
						for _, descendant in handle:GetDescendants() do
							if descendant:IsA("BasePart") then
								descendant.Size = descendant.Size * scale
							elseif descendant:IsA("SpecialMesh") then
								descendant.Scale = descendant.Scale * scale
							end
						end

						-- Separate head hats, waist accessories, and other accessories
						local hatAttachment = handle:FindFirstChild("HatAttachment")
						local waistAttachment = handle:FindFirstChild("WaistAttachment")
						if hatAttachment then
							table.insert(headHats, accessory)
						elseif waistAttachment then
							table.insert(waistAccessories, accessory)
							-- Adjust waist accessory position
							local waistPosition = waistAttachment.Position * scale
							handle.Position = waistPosition
						else
							table.insert(otherAccessories, accessory)
						end
					end
				end
			end
		end

		local function Execute()
			spawn(function()
				RemoveHatsAndRecolor()
			end)
			wait(0.025)
			if Player:GetScale() ~= 1 then
				local SavedScale = Player:GetScale()
				Player:ScaleTo(1)
				AddNewHats()
				wait(0.025)
				processCharacterAccessories(Player)
				task.wait(0.025)
				Player:ScaleTo(SavedScale)
			else
				AddNewHats()
				wait(0.025)
				processCharacterAccessories(Player)
				wait(0.025)
				if HatPackage:HasTag("UniverseIsR63d") then
					local P1 = Player["Left LegAccessory"].Handle.L_Leg
					local P2 = Player["Right LegAccessory"].Handle.R_Leg
					local S = Player["TorsoAccessory"].Handle.B.Clothing
					local L1 = Player["Left LegAccessory"].Handle.Skin
					local L2 = Player["Right LegAccessory"].Handle.Clothes
					local T1 = Player["TorsoAccessory"].Handle.B.B1
					local T2 = Player["TorsoAccessory"].Handle.B.B2
					local Shirt = Player:FindFirstChildOfClass("Shirt")
					local Pants = Player:FindFirstChildOfClass("Pants")
				    L1.Color = Player["Left Leg"].Color
					L2.Color = Player["Right Leg"].Color
					T1.Color = Player["Torso"].Color
					T2.Color = Player["Torso"].Color
					if Shirt then
						S.TextureID = Shirt.ShirtTemplate
					end
					if Pants then
						P1.TextureID = Pants.PantsTemplate
						P2.TextureID = Pants.PantsTemplate
				end
							end
			end
		end

		Execute()


		local HatPackageS = HatPackage
		local ExtraValueSave = ExtraValue
		local ExtraValue2Save = ExtraValue2
		local PlrS = Plr


		local CharacterConnect = PlrS.CharacterAdded:Connect(function()
			if  SaveOutfit == true then
				repeat task.wait(0.5) until PlrS.Character.Parent ~= nil
				task.wait(0.1)
				HatPackage = HatPackageS
				ExtraValue = ExtraValueSave
				ExtraValue2 = ExtraValue2Save
				Player = PlrS.Character

				Execute()
			end
		end)

		table.insert(AllConnect, CharacterConnect)

		task.spawn(function()
			if  SaveOutfit == true then
				local BreakerObject = Instance.new("BoolValue")
				BreakerObject.Parent = game:GetService("ReplicatedStorage")
				BreakerObject.Name = Plr.Name.."DeleteValue"
                     BreakerObject.Destroying:Connect(function()
					SaveOutfit = false
					for _, Connect in pairs(AllConnect) do
						Connect:Disconnect()
					end
					print("AutoOutfitter Disabled")
					end)
				end
			end)
	end)
end

local GiveHeianArms = function()
	spawn(function()
local ReAddExtraArms = _G.ReAddArms
local Player = game:GetService("Players").LocalPlayer
local ExtraArmsX = XIIX.HeianArms
local function Execute()
local Character = Player.Character
local ExtraArms = ExtraArmsX:Clone()
local Shirt = Character:FindFirstChildWhichIsA("Shirt")
local SetAssets = Instance.new("Folder")
SetAssets.Name = "SetAssets"
SetAssets.Parent = Character
if Shirt then
	Shirt:Clone().Parent = ExtraArms
end
Character.ChildAdded:Connect(function(X)
	if not X:IsA("Shirt") then
	else
		local CopiedShirt = ExtraArms:FindFirstChildWhichIsA("Shirt")
		if CopiedShirt then
			CopiedShirt:Destroy()
		end
		X:Clone().Parent = ExtraArms
	end
end)
ExtraArms.Parent = SetAssets
ExtraArms.Clear.Handle.Value = script
ExtraArms.Clear.Enabled = true
local Torso = Character.Torso
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local NormalScale = 1
game:GetService("RunService").RenderStepped:Connect(function()
	ExtraArms.Torso.CFrame = Torso.CFrame
	ExtraArms["Left Arm"].Color = LeftArm.Color
	ExtraArms["Right Arm"].Color = RightArm.Color
	ExtraArms.Torso.CanCollide = false
	if Character:GetScale() ~= NormalScale then
		ExtraArms:ScaleTo(Character:GetScale())
		NormalScale = Character:GetScale()
	end
	end)
end

Execute()

if ReAddExtraArms == true then
	local Remote = Instance.new("BoolValue")
	Remote.Parent = game:GetService("ReplicatedStorage")
	Remote.Name = Player.Name .."ExtraArms"
	
	Remote.Destroying:Connect(function()
		ReAddExtraArms = false
		warn("ExtraArms Disabled")
	end)
end

Player.CharacterAdded:Connect(function()
repeat task.wait(0.5) until Player.Character.Parent ~= nil
	if ReAddExtraArms == true then
		Execute()
		end
		end)
	end)
	end

local MHF = function()
	spawn(function()
		local Target = game:GetService("Players").LocalPlayer
		local Player = Target.Character
		local Furrything = XIIX["FurryMorph"]:Clone() --game:GetObjects('rbxasset://FurrymodelThing.rbxm')[1]:Clone() if the asset ever Gets Deleted
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
		Player["Head"]:FindFirstChildOfClass("Decal").Transparency = 1

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
	end)
end

local Tails = function()
	spawn(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/bubbahaynes3308/LoadStringthingies/main/Tails.lua",true))()
	end)
end

local StopAutoOutfit = function()
	spawn(function()
		game:GetService("ReplicatedStorage")[_G.K4.Name.."DeleteValue"]:Destroy()
	end)
end

local StopExtraArms = function()
	spawn(function()
		game:GetService("ReplicatedStorage")[_G.K4.Name.."ExtraArms"]:Destroy()
	end)
end


Players.LocalPlayer.CharacterAdded:Connect(function()
	task.wait(_G.RespawnWaitTime)
	if _G.MHFRespawn == true then
		MHF()
	end
	if _G.TailsRespawn == true then
		Tails()
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

local Tswitch3 = MainTab.new("switch", {
	text = "Use Torso Color";
})
Tswitch3.set(false)
Tswitch3.event:Connect(function(bool)
	print("Use Torso Color has been set to: ", bool)
	_G.TorsoCValue = bool
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


local button10 = MorphingTab.new("button", {
	text = "Geode Hatting",
})
button10.event:Connect(function()
	print("Hatting Executed")
	GeodeHatting()
end)

local buttonDisabler = MorphingTab.new("button", {
	text = "Disable AutoOutfitter",
})
buttonDisabler.event:Connect(function()
	print("Attempted To Stop The Reoutfitting")
	StopAutoOutfit()
end)

local AutoOutfit = MorphingTab.new("switch", {
	text = "ReOutfit Target On Respawn";
})
AutoOutfit.set(false)
AutoOutfit.event:Connect(function(bool)
	print("ReOutfit Character Set to: ", bool)
	_G.K5 = bool
end)

---place player set here _G.K4 = game:GetService

local HattingPlayerdropdown = MorphingTab.new("dropdown", {
	text = "Player",
})

HattingPlayerdropdown.new("LocalPlayer")
for i, v in pairs(Players:GetPlayers()) do
	HattingPlayerdropdown.new(v.Name)
end
Players.PlayerAdded:Connect(function(Plr)
	HattingPlayerdropdown.new(Plr.Name)
end)

HattingPlayerdropdown.event:Connect(function(name)
	_G.K4 = Players[name]
	print("i chose " .. name)
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
HattingFDSlider.event:Connect(function(x)
	print("Food Demon #" .. x)
	_G.K2 = x
end)
HattingFDSlider.set(1)

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

local h5 = MorphingTab.new("label", {
	text = "--------Heian Arms---------",
	color = Color3.new(1, 1, 1),
})


local H3 = MorphingTab.new("button", {
	text = "Give Extra Arms",
})
H3.event:Connect(function()
	print("Given Extra Arms")
	GiveHeianArms()
end)

local H2 = MorphingTab.new("button", {
	text = "Disable AutoExtraArmsGiver",
})
H2.event:Connect(function()
	print("Attempted To Stop Giving the Extra Arms")
	StopExtraArms()
end)

local H1 = MorphingTab.new("switch", {
	text = "ReAdd Extra Arms on Respawn";
})
H1.set(false)
H1.event:Connect(function(bool)
	print("ReAddArms Set to: ", bool)
	_G.ReAddArms = bool
end)

local label3 = MorphingTab.new("label", {
	text = "----Morphs----",
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
for i, v in pairs(Players:GetPlayers()) do
	dropdown3.new(v.Name)
end
Players.PlayerAdded:Connect(function(Plr)
	dropdown3.new(Plr.Name)
end)

dropdown3.event:Connect(function(name)
	_G.Target = Players[name]
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
		loadstring(game:HttpGet("https://raw.githubusercontent.com/bubbahaynes3308/LoadStringthingies/main/Regretevator_Paranoia.lua",true))()
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
		loadstring(game:HttpGet('https://raw.githubusercontent.com/AlterX404/DarkDEX-V5/refs/heads/main/DarkDEX-V5'))()
	end)
end)

local buttonX = OthersTab.new("button", {
	text = "Execute Aimbot",
})
buttonX.event:Connect(function()
	print("Aimbot Executed")
	spawn(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/bubbahaynes3308/LoadStringthingies/main/FixedAimbot.lua",true))()
	end)
end)

local buttonZ = OthersTab.new("button", {
	text = "Execute Open Aimbot",
})
buttonZ.event:Connect(function()
	print("Open Aimbot Executed")
	spawn(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ttwizz/Open-Aimbot/master/source.lua",true))()
	end)
end)

local buttonZ = OthersTab.new("button", {
	text = "Execute Domain X",
})
buttonZ.event:Connect(function()
	print("X Executed")
	spawn(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/jensonhirst/domainx/refs/heads/main/source",true))()
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
slider3.set(5)
slider3.event:Connect(function(x)
	print("slider value: " .. x * 0.1)
	_G.T = x * 0.1
end)