
local Main = loadstring(game:HttpGet("https://twix.cyou/Fluent.txt", true))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()


local Players = game:GetService("Players")

local XIIX = game:GetObjects("rbxasset://XIIXPack.Rbxm")[1]:Clone() --or getcustomasset("rbxasset://XIIXPack.Rbxm")

function SortTable(SelectedTable)
	table.sort(SelectedTable,function(a,b)
		return a < b
	end)
end

local Materials = {};
local FullHatSetNames = {};
local PlayersTable = {"LocalPlayer"}

for I,V in pairs(Enum.Material:GetEnumItems()) do
	table.insert(Materials, V.Name)
end
SortTable(Materials)

----------------------------------------

for I,V in pairs(XIIX.GeodesHatting.XHat:GetChildren()) do
	table.insert(FullHatSetNames, V.Name)
end
SortTable(FullHatSetNames)


----------------------------------------

for I,V in pairs(Players:GetPlayers()) do
	table.insert(PlayersTable, V.Name)
end

SortTable(PlayersTable)

function AddPlayer(Player)
	table.insert(PlayersTable, Player.Name)
	SortTable(PlayersTable)
end

function RemovePlayer(Player)
	table.remove(PlayersTable, table.find(PlayersTable,Player.Name))
	SortTable(PlayersTable)
end

Players.PlayerAdded:Connect(AddPlayer)
Players.PlayerRemoving:Connect(RemovePlayer)



local SX = {"Male", "Female"}

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

_G.ReAddArms = false
_G.ReAddNCWings = false
_G.AuraOnly = false
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

			if not HatPackage:HasTag("Addon") then
				if game.PlaceId == 10449761463 then
					for _, PlrHats in pairs(Player:WaitForChild("FakeHead",50):GetChildren()) do
						if  PlrHats:IsA("Accessory") or 
							PlrHats:IsA("Hat")
						then
							PlrHats:Destroy()
						end
					end
				end
				
				for _, Meshes in pairs(Player:GetDescendants()) do
					if  Meshes.Name == "GirlTorso" or 
						Meshes.Name == "HiddenTorso" or 
						Meshes.Name == "InvisibleHead" or 
						Meshes.Name == "LA" or 
						Meshes.Name == "LL" or 
						Meshes.Name == "RA" or 
						Meshes.Name == "RL"
					then
						Meshes:Destroy()
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
				if Prt:IsA("Accessory") or Prt:IsA("Hat") then
					addAccoutrement(Player, Prt)
					Prt.Handle.Anchored = false
					Prt.Handle.CanCollide = false
					Prt.Handle.Massless = true
				end
				if HatPackage:HasTag("HeadMesh") then --V1 Used Tags To Differ Them From Getting set Without one
					Player["Head"]:FindFirstChildOfClass("SpecialMesh"):Destroy()
					HatPackage:WaitForChild("HeadMesh", 50):Clone().Parent = Player["Head"]
				end
				if HatPackage:HasTag("CanHaveExtraArms") then
					for z,x in pairs(Prt:GetDescendants()) do
						if Player:FindFirstChild("SetAssets") then
							local P = Player:FindFirstChild("SetAssets"):WaitForChild("HeianArms")
							if x.Name == "LeftGripAttachment" or x.Name == "RightGripAttachment" or x.Name == "RightShoulderAttachment" or x.Name == "LeftShoulderAttachment" then
								x.Parent.Parent:Clone().Parent = P
							end
							if HatPackage:HasTag("HiddenTopBody") or HatPackage:HasTag("FullBody") then
								P["Left Arm"].Transparency = 1
								P["Right Arm"].Transparency = 1
							end
						end
					end
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
				if HatPackage:HasTag("AddonWithClothes") then
					script:FindFirstChildOfClass("Shirt"):Destroy()
					script:FindFirstChildOfClass("Pants"):Destroy()
				end
				AddNewHats()
				wait(0.025)
				processCharacterAccessories(Player)
				task.wait(0.025)
				Player:ScaleTo(SavedScale)
			else
				if HatPackage:HasTag("AddonWithClothes") then
					Player:FindFirstChildOfClass("Shirt"):Destroy()
					Player:FindFirstChildOfClass("Pants"):Destroy()
				end
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
					warn("AutoOutfitter Disabled")
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
			ExtraArms.Handle.Value = ExtraArms
			local Torso = Character.Torso
			local LeftArm = Character["Left Arm"]
			local RightArm = Character["Right Arm"]
			local NormalScale = 1
			
			ExtraArms.Handle.Value.Destroying:Connect(function()
				ExtraArms.Parent:Destroy()
			end)
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

local GiveNightChild = function()
	spawn(function()
		local ReAddWings = _G.ReAddNCWings
		local AuraOnly = _G.AuraOnly
		local Player = game:GetService("Players").LocalPlayer
		local NightChildX = XIIX.NightChild
		local TweenService = game:GetService("TweenService")
		local RunService = game:GetService("RunService")
		local function playKeyframes(rig : Model, keyframes : KeyframeSequence)
			local offset = {}

			local function getMotor6DFromPose(pose : Pose) : Motor6D		
				for i, v in rig:GetDescendants() do
					if v:IsA("Motor6D") and v.Part1.Name == pose.Name and v.Part0.Name == pose.Parent.Name then -- and v.Part0.Name == poseParentName
						return v
					end
				end
			end

			local children : {Keyframe}? = keyframes:GetKeyframes()

			table.sort(children, function(a, b)
				return a.Time < b.Time
			end)

			for nth, keyframe in children do
				local time = 0

				if children[nth + 1] then
					time = children[nth + 1].Time - keyframe.Time
				end

				for _, pose : Pose? in keyframe:GetDescendants() do
					local limb = getMotor6DFromPose(pose)

					if limb and pose.CFrame ~= CFrame.new() then
						offset[limb] = offset[limb] or limb.C0

						local EasingStyle, EasingDirection = 
							Enum.EasingStyle[pose.EasingStyle.Name], Enum.EasingDirection[pose.EasingDirection.Name]

						local ticked = tick()

						spawn(function()
							--transform
							while tick() - ticked < time do
								local cframe = limb.C0

								-- n / time
								limb.C0 = cframe:Lerp(offset[limb] * pose.CFrame, TweenService:GetValue((tick() - ticked) / time, EasingStyle, EasingDirection))
								RunService.PreSimulation:Wait()	
							end

							limb.C0 = offset[limb] * pose.CFrame
						end)
					end
				end

				wait(time)
			end
		end
		local function Execute()
			local Character = Player.Character
			local NightChild = NightChildX:Clone()
			local Wings = NightChild.GlitcherModel
			local MainWelds = Wings.MainWelds
			local humanoid = Character:FindFirstChildOfClass("Humanoid")
			local Torso = Character.Torso
			Wings.Parent = Character
			MainWelds["Aura(HRP)"].Part0 = Character["HumanoidRootPart"]
			if  AuraOnly == false then
				MainWelds.Primary.Part0 = Torso
				MainWelds.Primary.Parent = Torso
				playKeyframes(Character,NightChild.Animation)
			end
			local NormalScale = 1
			game:GetService("RunService").RenderStepped:Connect(function()
				if Character:GetScale() ~= NormalScale then
					Wings:ScaleTo(Character:GetScale())
					NormalScale = Character:GetScale()
				end
			end)
		end

		Execute()

		if ReAddWings == true then
			local Remote = Instance.new("BoolValue")
			Remote.Parent = game:GetService("ReplicatedStorage")
			Remote.Name = Player.Name .."NightChild"

			Remote.Destroying:Connect(function()
				ReAddWings = false
				warn("NightChild Disabled")
			end)
		end

		Player.CharacterAdded:Connect(function()
			repeat task.wait(0.5) until Player.Character.Parent ~= nil
			if ReAddWings == true then
				Execute()
			end
		end)
	end)
end

local MHF = function()
	spawn(function()
		local Target = Players.LocalPlayer
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

local StopNightChild = function()
	spawn(function()
		game:GetService("ReplicatedStorage")[_G.K4.Name.."NightChild"]:Destroy()
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



local window1 = Main:CreateWindow({
	Title = "X Gui: Fluent Edition",
	SubTitle = "by 『Ｘ』",
	TabWidth = 160,
	Size = UDim2.fromOffset(580, 460),
	Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
	Theme = "Dark",
	MinimizeKey = Enum.KeyCode.RightControl -- Used when theres no MinimizeKeybind
})


local Tabs = {
	MainTab = window1:AddTab({ Title = "Main", Icon = "box" }),
	MorphingTab = window1:AddTab({ Title = "Morphs/R15ToR6", Icon = "box" }),
	Other = window1:AddTab({ Title = "Other", Icon = "box" }),
	Settings = window1:AddTab({ Title = "Settings", Icon = "settings" })
}

do

-------------------------------------------------------------------------------------------------------------------MainTab
	
	local SSG = Tabs.MainTab:AddSection("Spectrum Star Wings")
	
	Tabs.MainTab:AddButton({
		Title = "Execute",
		Description = "Executes The Wings",
		Callback = function()
			Main:Notify({
				Title = "X Gui",
				Content = "Spectrum Wings Executed",
				Duration = 3
			})
			SpectrumWings()
		end
	})

	local label1 = Tabs.MainTab:AddParagraph({
		Title  = "Spectrum Star Wings Settings",
		color = Color3.new(1, 1, 1),
	})
	
	local SWR = Tabs.MainTab:AddToggle("SpectrumWingsRespawn", {Title = "On Respawn ReExecute", Default = false })
	
	SWR:OnChanged(function()
		_G.SpectrumWingsRespawn = Main.Options["SpectrumWingsRespawn"].Value
		Main:Notify({
			Title = "X Gui",
			Content = "SpectrumWingsRespawn Value: " .. tostring(Main.Options["SpectrumWingsRespawn"].Value),
			Duration = 3
		})
		
		
	end)
	
	local SWRGB = Tabs.MainTab:AddToggle("RGB", {Title = "RGB", Default = false })

	SWRGB:OnChanged(function()
		_G.RGB = Main.Options["RGB"].Value
		Main:Notify({
			Title = "X Gui",
			Content = "RGB Value: " .. tostring(Main.Options["RGB"].Value),
			Duration = 3
		})
	end)
	
	local SGTWS = Tabs.MainTab:AddSlider("Slider", {
		Title = "Task.Wait() Time",
		Description = "Animation Speed",
		Default = 1,
		Min = 1,
		Max = 1000,
		Rounding = 1
	})
	SGTWS:OnChanged(function(Value)
		warn("WaitTime value: " .. Value * 0.0001)
		_G.WaitTime = Value * 0.0001
	end)
	
	local SGWCPWT = Tabs.MainTab:AddColorpicker("TransparencyColorpicker", {
		Title = "Color and Transparency",
		Description = "Color and Transparency For the Wings",
		Transparency = 0,
		Default = Color3.fromRGB(255, 255, 255)
	})
	
	SGWCPWT:OnChanged(function()
		local r = SGWCPWT.Value.r * 255
		local g = SGWCPWT.Value.g * 255 
		local b = SGWCPWT.Value.b * 255
		warn(
			"Wing Color changed: (".. r .. ","..g ..",".. b.."),",
			"Wing Transparency:", SGWCPWT.Transparency * 0.01
		)
		_G.RV = r 
		_G.GV = g 
		_G.BV = b
		_G.TransZ = SGWCPWT.Transparency * 0.01
	end)
	
	local SGWReflect = Tabs.MainTab:AddSlider("Slider", {
		Title = "Reflectance",
		Description = "The Wings Reflectance",
		Default = 1,
		Min = 1,
		Max = 100,
		Rounding = 1
	})
	SGWReflect:OnChanged(function(Value)
		warn("ReflectZ value: " .. Value * 0.01)
		_G.ReflectZ = Value * 0.01
	end)
	
	table.sort(Materials)
	local SWM = Tabs.MainTab:AddDropdown("Dropdown", {
		Title = "Material Of Wings",
		Values = Materials,
		Multi = false,
		Default = "Neon",
	})
	SWM:SetValue("Neon")
	SWM:OnChanged(function(Value)
		Main:Notify({
			Title = "X Gui",
			Content = "Wing Material: " .. tostring(Value),
			Duration = 3
		})
		_G.M = Value
	end)
	
	--------------------------------------------------------
	
	local ILW = Tabs.MainTab:AddSection("Immortality Lord Wings")

	Tabs.MainTab:AddButton({
		Title = "Execute",
		Description = "Executes The Wings",
		Callback = function()
			Main:Notify({
				Title = "X Gui",
				Content = "Immortality Lord Wings Executed",
				Duration = 3
			})
			ILWings()
		end
	})

	local ILWlabel = Tabs.MainTab:AddParagraph({
		Title  = "Immortality Lord Wings Settings",
		color = Color3.new(1, 1, 1),
	})

	local ILR = Tabs.MainTab:AddToggle("ILWingsRespawn", {Title = "On Respawn ReExecute", Default = false })

	ILR:OnChanged(function()
		_G.ILWingsRespawn = Main.Options["ILWingsRespawn"].Value
		Main:Notify({
			Title = "X Gui",
			Content = "ILWingsRespawn Value: " .. tostring(Main.Options["ILWingsRespawn"].Value),
			Duration = 3
		})


	end)

	local ILRGB = Tabs.MainTab:AddToggle("ZRGB", {Title = "RGB", Default = false })

	ILRGB:OnChanged(function()
		_G.ZRGB = Main.Options["ZRGB"].Value
		Main:Notify({
			Title = "X Gui",
			Content = "ZRGB Value: " .. tostring(Main.Options["RGB"].Value),
			Duration = 3
		})
	end)
	
	local ILBodyColor = Tabs.MainTab:AddToggle("ILBC", {Title = "Use Body Color", Default = false })

	ILBodyColor:OnChanged(function()
		_G.TorsoCValue = Main.Options["ILBC"].Value
		Main:Notify({
			Title = "X Gui",
			Content = "IL Body Color Value: " .. tostring(Main.Options["RGB"].Value),
			Duration = 3
		})
	end)

	local ILTWS = Tabs.MainTab:AddSlider("Slider", {
		Title = "Task.Wait() Time",
		Description = "Animation Speed",
		Default = 1,
		Min = 1,
		Max = 1000,
		Rounding = 1
	})
	ILTWS:OnChanged(function(Value)
		warn("WaitTime value: " .. Value * 0.0001)
		_G.WaitTime2 = Value * 0.0001
	end)

	local ILWCPWT = Tabs.MainTab:AddColorpicker("TransparencyColorpicker", {
		Title = "Color and Transparency",
		Description = "Color and Transparency For the Wings",
		Transparency = 0,
		Default = Color3.fromRGB(255, 255, 255)
	})

	ILWCPWT:OnChanged(function()
		local r = ILWCPWT.Value.r * 255
		local g = ILWCPWT.Value.g * 255 
		local b = ILWCPWT.Value.b * 255
		warn(
			"Wing Color changed: (".. r .. ","..g ..",".. b.."),",
			"Wing Transparency:", ILWCPWT.Transparency * 0.01
		)
		_G.RV2 = r 
		_G.GV2 = g 
		_G.BV2 = b
		_G.TransX = ILWCPWT.Transparency * 0.01
	end)

	local ILWReflect = Tabs.MainTab:AddSlider("Slider", {
		Title = "Reflectance",
		Description = "The Wings Reflectance",
		Default = 1,
		Min = 1,
		Max = 100,
		Rounding = 1
	})
	ILWReflect:OnChanged(function(Value)
		warn("ReflectZ value: " .. Value * 0.01)
		_G.ReflectX = Value * 0.01
	end)

	table.sort(Materials)
	local ILM = Tabs.MainTab:AddDropdown("Dropdown", {
		Title = "Material Of Wings",
		Values = Materials,
		Multi = false,
		Default = "Neon",
	})
	ILM:SetValue("Neon")
	ILM:OnChanged(function(Value)
		Main:Notify({
			Title = "X Gui",
			Content = "Wing Material: " .. tostring(Value),
			Duration = 3
		})
		_G.M2 = Value
	end)
	
	
	------------------------------------------------------
	
	local Tail = Tabs.MainTab:AddSection("Tails")

	Tabs.MainTab:AddButton({
		Title = "Execute",
		Description = "Executes The Tails",
		Callback = function()
			Main:Notify({
				Title = "X Gui",
				Content = "Tails Executed",
				Duration = 3
			})
			Tails()
		end
	})

	local Taillabel = Tabs.MainTab:AddParagraph({
		Title  = "Tails Settings",
		color = Color3.new(1, 1, 1),
	})

	local TailR = Tabs.MainTab:AddToggle("TailsRespawn", {Title = "On Respawn ReExecute", Default = false })

	TailR:OnChanged(function()
		_G.TailsRespawn = Main.Options["TailsRespawn"].Value
		Main:Notify({
			Title = "X Gui",
			Content = "TailsRespawn Value: " .. tostring(Main.Options["TailsRespawn"].Value),
			Duration = 3
		})
	end)

	local TailRGB = Tabs.MainTab:AddToggle("XRGB", {Title = "RGB", Default = false })

	TailRGB:OnChanged(function()
		_G.XRGB = Main.Options["XRGB"].Value
		Main:Notify({
			Title = "X Gui",
			Content = "XRGB Value: " .. tostring(Main.Options["RGB"].Value),
			Duration = 3
		})
	end)

	local TailBodyColor = Tabs.MainTab:AddToggle("TailBC", {Title = "Use Body Color", Default = false })

	TailBodyColor:OnChanged(function()
		_G.TorsoCValue = Main.Options["TailBC"].Value
		Main:Notify({
			Title = "X Gui",
			Content = "Tail Body Color Value: " .. tostring(Main.Options["RGB"].Value),
			Duration = 3
		})
	end)

	local TailTWS = Tabs.MainTab:AddSlider("Slider", {
		Title = "Amount Of Tails",
		Description = "How Many Tails you want",
		Default = 1,
		Min = 1,
		Max = 4,
		Rounding = 0
	})
	TailTWS:OnChanged(function(Value)
		warn("Amount Of Tails: " .. Value)
		_G.TailValue = Value 
	end)

	local TailCPWT = Tabs.MainTab:AddColorpicker("TransparencyColorpicker", {
		Title = "Color and Transparency",
		Description = "Color and Transparency For the Wings",
		Transparency = 0,
		Default = Color3.fromRGB(255, 255, 255)
	})

	TailCPWT:OnChanged(function()
		local r = TailCPWT.Value.r * 255
		local g = TailCPWT.Value.g * 255 
		local b = TailCPWT.Value.b * 255
		warn(
			"Wing Color changed: (".. r .. ","..g ..",".. b.."),",
			"Wing Transparency:", TailCPWT.Transparency * 0.01
		)
		_G.RTailValue = r 
		_G.GTailValue = g 
		_G.BTailValue = b
		_G.Trans7 = TailCPWT.Transparency * 0.01
	end)

	local TailReflect = Tabs.MainTab:AddSlider("Slider", {
		Title = "Reflectance",
		Description = "The Wings Reflectance",
		Default = 1,
		Min = 1,
		Max = 100,
		Rounding = 1
	})
	TailReflect:OnChanged(function(Value)
		warn("ReflectZ value: " .. Value * 0.01)
		_G.Reflect7 = Value * 0.01
	end)

	table.sort(Materials)
	local TailM = Tabs.MainTab:AddDropdown("Dropdown", {
		Title = "Material Of Wings",
		Values = Materials,
		Multi = false,
		Default = "Neon",
	})
	TailM:SetValue("Neon")
	TailM:OnChanged(function(Value)
		Main:Notify({
			Title = "X Gui",
			Content = "Wing Material: " .. tostring(Value),
			Duration = 3
		})
		_G.M3 = Value
	end)

	------------------------------------------------------------------------------------------------- End Of MainTab
	
	
	
	local GH = Tabs.MorphingTab:AddSection("GeodesHatting")
	
	Tabs.MorphingTab:AddButton({
		Title = "Execute",
		Description = "Executes The Selected Hat Set",
		Callback = function()
			Main:Notify({
				Title = "X Gui",
				Content = "GeodesHatting Executed: ".. tostring(_G.K1),
				Duration = 3
			})
			GeodeHatting()
		end
	})
	
	Tabs.MorphingTab:AddButton({
		Title = "Stop AutoOutfitter",
		Description = "Deletes A Value In Replicated Storage To Stop The AutoOutfitting",
		Callback = function()
			Main:Notify({
				Title = "X Gui",
				Content = "Attempted To Stop AutoOutfitter For ".. tostring(_G.K4),
				Duration = 3
			})
			StopAutoOutfit()
		end
	})
	
	local GHHatset = Tabs.MorphingTab:AddDropdown("Dropdown", {
		Title = "Hat Set",
		Values = FullHatSetNames,
		Multi = false,
		Default = 1,
	})
	GHHatset:OnChanged(function(Value)
		Main:Notify({
			Title = "X Gui",
			Content = "Hat Set: " .. tostring(Value),
			Duration = 3
		})
		_G.K1 = Value
	end)
	
	local GHPlayer = Tabs.MorphingTab:AddDropdown("Dropdown", {
		Title = "Player",
		Values = PlayersTable,
		Multi = false,
		Default = 1,
	})
	GHPlayer:SetValue("LocalPlayer")
	GHPlayer:OnChanged(function(Value)
		Main:Notify({
			Title = "X Gui",
			Content = "Selected Player: " .. tostring(Value),
			Duration = 3
		})
		_G.K4 = Players[Value]
	end)
	
	local GHAutoOutfit = Tabs.MorphingTab:AddToggle("AutoOutfit", {Title = "ReOutfit On Respawn", Default = false })

	GHAutoOutfit:OnChanged(function()
		_G.K5 = Main.Options["AutoOutfit"].Value
		Main:Notify({
			Title = "X Gui",
			Content = "AutoOutfit Value: " .. tostring(Main.Options["AutoOutfit"].Value),
			Duration = 3
		})
	end)
	
	local GHE1 = Tabs.MorphingTab:AddSlider("Slider", {
		Title = "Extra Value 1",
		Description = "Food Demon Number",
		Default = 1,
		Min = 1,
		Max = 75,
		Rounding = 0
	})
	GHE1:OnChanged(function(Value)
		warn("Food Demon: " .. Value)
		_G.K2 = Value 
	end)
	
	local GHE2 = Tabs.MorphingTab:AddDropdown("Dropdown", {
		Title = "Extra Value 2",
		Values = ExtraValue2,
		Multi = false,
		Default = 1,
	})
	GHE2:OnChanged(function(Value)
		Main:Notify({
			Title = "X Gui",
			Content = "Extra Value 2: " .. tostring(Value),
			Duration = 3
		})
		_G.K3 = Value
	end)
	
	
	------------------------------------------------
	
	local Heian = Tabs.MorphingTab:AddSection("Heian Arms")

	Tabs.MorphingTab:AddButton({
		Title = "Execute",
		Description = "Gives 2 Extra Arms",
		Callback = function()
			Main:Notify({
				Title = "X Gui",
				Content = "Heian Arms Executed",
				Duration = 3
			})
			GiveHeianArms()
		end
	})

	Tabs.MorphingTab:AddButton({
		Title = "Stop Extra Amrs",
		Description = "Deletes A Value In Replicated Storage To Stop Giving you Extra Arms",
		Callback = function()
			Main:Notify({
				Title = "X Gui",
				Content = "Attempted To Stop AutoArmGiver",
				Duration = 3
			})
			StopExtraArms()
		end
	})
	
	local HeianAutoGiver = Tabs.MorphingTab:AddToggle("HeianAutoGiver", {Title = "ReGive Extra Arms On Respawn", Default = false })

	HeianAutoGiver:OnChanged(function()
		_G.ReAddArms = Main.Options["HeianAutoGiver"].Value
		Main:Notify({
			Title = "X Gui",
			Content = "HeianAutoGiver Value: " .. tostring(Main.Options["HeianAutoGiver"].Value),
			Duration = 3
		})
	end)
	
	--------------------------------------------------------
	
	
	local NC = Tabs.MorphingTab:AddSection("NightChild")

	Tabs.MorphingTab:AddButton({
		Title = "Execute",
		Description = "Gives NightChild",
		Callback = function()
			Main:Notify({
				Title = "X Gui",
				Content = "NightChild Executed",
				Duration = 3
			})
			GiveNightChild()
		end
	})

	Tabs.MorphingTab:AddButton({
		Title = "Stop Extra Amrs",
		Description = "Deletes A Value In Replicated Storage To Stop Giving you Extra Arms",
		Callback = function()
			Main:Notify({
				Title = "X Gui",
				Content = "Attempted To Stop AutoArmGiver",
				Duration = 3
			})
			StopNightChild()
		end
	})

	local NCAutoGiver = Tabs.MorphingTab:AddToggle("NCAutoGiver", {Title = "Give Nightchild On Respawn", Default = false })

	NCAutoGiver:OnChanged(function()
		_G.ReAddNCWings = Main.Options["NCAutoGiver"].Value
		Main:Notify({
			Title = "X Gui",
			Content = "NCAutoGiver Value: " .. tostring(Main.Options["NCAutoGiver"].Value),
			Duration = 3
		})
	end)
	
	local NCAuraOnly = Tabs.MorphingTab:AddToggle("NCAuraOnly", {Title = "Aura Only", Default = false })

	NCAuraOnly:OnChanged(function()
		_G.AuraOnly = Main.Options["NCAuraOnly"].Value
		Main:Notify({
			Title = "X Gui",
			Content = "NCAuraOnly Value: " .. tostring(Main.Options["NCAuraOnly"].Value),
			Duration = 3
		})
	end)
	
	
-------------------------------------------------------
	local MH = Tabs.MorphingTab:AddSection("Midnight Horrors Furry")
	
	Tabs.MorphingTab:AddButton({
		Title = "Execute Morph",
		Description = "Morphs You Into That One Furry From Midnight Horrors",
		Callback = function()
			Main:Notify({
				Title = "X Gui",
				Content = "Executed MHF",
				Duration = 3
			})
			MHF()
		end
	})

	local MHFAutoExecute = Tabs.MorphingTab:AddToggle("MHFAutoExecute", {Title = "Give Morph On Respawn", Default = false })

	MHFAutoExecute:OnChanged(function()
		_G.ReAddNCWings = Main.Options["MHFAutoExecute"].Value
		Main:Notify({
			Title = "X Gui",
			Content = "MHFAutoExecute Value: " .. tostring(Main.Options["MHFAutoExecute"].Value),
			Duration = 3
		})
	end)
	
	------------------------------------------
	
	local R15TR6 = Tabs.MorphingTab:AddSection("R15 To R6")
	
	Tabs.MorphingTab:AddButton({
		Title = "Execute Conversion",
		Description = "Converts a R15 To R6 Cliently",
		Callback = function()
			Main:Notify({
				Title = "X Gui",
				Content = "Executed Conversion",
				Duration = 3
			})
			R15ToR6()
		end
	})
	
	local R6M = Tabs.MorphingTab:AddSlider("Slider", {
		Title = "Method",
		Default = 1,
		Min = 1,
		Max = 2,
		Rounding = 0
	})
	R6M:OnChanged(function(Value)
		warn("Method: " .. Value)
		_G.Method = Value 
	end)
	
	local R6AC = Tabs.MorphingTab:AddToggle("R6AC", {Title = "Converter Avatar Clothes", Default = true })

	R6AC:OnChanged(function()
		_G.RobloxShirt = Main.Options["R6AC"].Value
		Main:Notify({
			Title = "X Gui",
			Content = "Roblox Avatar Clothes Value: " .. tostring(Main.Options["R6AC"].Value),
			Duration = 3
		})
	end)
	
	local R6SL = Tabs.MorphingTab:AddToggle("SL", {Title = "Converter Size Lock", Default = false })

	R6SL:OnChanged(function()
		_G.SizeLock = Main.Options["SL"].Value
		Main:Notify({
			Title = "X Gui",
			Content = "Roblox Avatar Clothes Value: " .. tostring(Main.Options["SL"].Value),
			Duration = 3
		})
	end)
	
	local R15T = Tabs.MorphingTab:AddToggle("R15T", {Title = "R15 Part Transparent", Default = true })

	R15T:OnChanged(function()
		_G.R15PT = Main.Options["R15T"].Value
		Main:Notify({
			Title = "X Gui",
			Content = "Roblox R15 Parts Transparant Value: " .. tostring(Main.Options["SL"].Value),
			Duration = 3
		})
	end)
	
	local R6T = Tabs.MorphingTab:AddToggle("R6T", {Title = "R6 Part Transparent", Default = false })

	R6T:OnChanged(function()
		_G.R6PT = Main.Options["R6T"].Value
		Main:Notify({
			Title = "X Gui",
			Content = "Roblox R6 Parts Transparant Value: " .. tostring(Main.Options["R6T"].Value),
			Duration = 3
		})
	end)
	
	local R6Player = Tabs.MorphingTab:AddDropdown("Dropdown", {
		Title = "Player",
		Values = PlayersTable,
		Multi = false,
		Default = 1,
	})
	R6Player:SetValue("LocalPlayer")
	R6Player:OnChanged(function(Value)
		Main:Notify({
			Title = "X Gui",
			Content = "Selected Player: " .. tostring(Value),
			Duration = 3
		})
		_G.Target = Players[Value]
	end)
	
	local R6Torso = Tabs.MorphingTab:AddDropdown("Dropdown", {
		Title = "R6 Torso Type",
		Values = SX,
		Multi = false,
		Default = 1,
	})
	R6Torso:OnChanged(function(Value)
		Main:Notify({
			Title = "X Gui",
			Content = "Selected Torso: " .. tostring(Value),
			Duration = 3
		})
		_G.TorsoType = Value
	end)
	
	------------------------------------------------------------------------------------------------- End Of Morphing Tab
	--[[Required Parts for OthersTab
	2Sliders(RespawnWaitTime Would Now Be In Settings)
	1 Buttons
	1 DropDown
	]]
	
	Tabs.Other:AddButton({
		Title = "Roclothes",
		Description = "This Is Modified",
		Callback = function()
			Main:Notify({
				Title = "X Gui",
				Content = "Executed Roclothes",
				Duration = 3
			})
			spawn(function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/bubbahaynes3308/LoadStringthingies/main/RC.lua",true))()
			end)
		end
	})
	
	Tabs.Other:AddButton({
		Title = "Client Regretevator Paranoia",
		Description = "Its Wierdly Cool I guess(Only Visual)",
		Callback = function()
			Main:Notify({
				Title = "X Gui",
				Content = "Executed Regretevator Paranoia",
				Duration = 3
			})
			spawn(function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/bubbahaynes3308/LoadStringthingies/main/Regretevator_Paranoia.lua",true))()
			end)
		end
	})
	
	Tabs.Other:AddButton({
		Title = "Infinite Yield",
		Description = "The Client Admin",
		Callback = function()
			Main:Notify({
				Title = "X Gui",
				Content = "Executed Infinite Yield",
				Duration = 3
			})
			spawn(function()
				loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
			end)
		end
	})
	
	Tabs.Other:AddButton({
		Title = "Domain X",
		Description = "The Client Taskbar",
		Callback = function()
			Main:Notify({
				Title = "X Gui",
				Content = "Executed Domain X",
				Duration = 3
			})
			spawn(function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/jensonhirst/domainx/refs/heads/main/source",true))()
			end)
		end
	})
	
	Tabs.Other:AddButton({
		Title = "Dex V1 Remastered",
		Description = "The Dex From Infinite Yield",
		Callback = function()
			Main:Notify({
				Title = "X Gui",
				Content = "Executed Dex V1R",
				Duration = 3
			})
			spawn(function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
			end)
		end
	})
	
	Tabs.Other:AddButton({
		Title = "Dark Dex V5",
		Description = "This Dex is For When V1R is Not Working",
		Callback = function()
			Main:Notify({
				Title = "X Gui",
				Content = "Executed Dex V5",
				Duration = 3
			})
			spawn(function()
				loadstring(game:HttpGet('https://raw.githubusercontent.com/AlterX404/DarkDEX-V5/refs/heads/main/DarkDEX-V5'))()
			end)
		end
	})
	
	Tabs.Other:AddButton({
		Title = "Aimbot",
		Description = "Some Aimbot That Its UI Was Broken",
		Callback = function()
			Main:Notify({
				Title = "X Gui",
				Content = "Executed Aimbot",
				Duration = 3
			})
			spawn(function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/bubbahaynes3308/LoadStringthingies/main/FixedAimbot.lua",true))()
			end)
		end
	})
	
	Tabs.Other:AddButton({
		Title = "Open Aimbot",
		Description = "Open Source Aimbot + Esp",
		Callback = function()
			Main:Notify({
				Title = "X Gui",
				Content = "Executed Open Aimbot",
				Duration = 3
			})
			spawn(function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/ttwizz/Open-Aimbot/master/source.lua",true))()
			end)
		end
	})
	
	local HBES = Tabs.Other:AddSection("Hitbox Expander")
	
	Tabs.Other:AddButton({
		Title = "Execute",
		Description = "Executes The Hitbox Expander",
		Callback = function()
			Main:Notify({
				Title = "X Gui",
				Content = "Executed HBE",
				Duration = 3
			})
			HBE()
		end
	})
	
	local HBESize = Tabs.Other:AddSlider("Slider", {
		Title = "Hitbox Size",
		Description = "Size Of Hitbox",
		Default = 1,
		Min = 1,
		Max = 30,
		Rounding = 1
	})
	HBESize:OnChanged(function(Value)
		warn("Size: " .. Value)
		_G.HS = Value 
	end)
	
	local HBET = Tabs.Other:AddSlider("Slider", {
		Title = "Hitbox Transparency",
		Description = "",
		Default = 1,
		Min = 0,
		Max = 10,
		Rounding = 1
	})
	HBET:OnChanged(function(Value)
		warn("Hitbox Transparency: " .. Value)
		_G.T = Value * 0.1
	end)

	local HBEBP = Tabs.Other:AddDropdown("Dropdown", {
		Title = "Body Part",
		Values = BodyParts,
		Multi = false,
		Default = 1,
	})
	HBEBP:OnChanged(function(Value)
		Main:Notify({
			Title = "X Gui",
			Content = "Selected Body Part: " .. tostring(Value),
			Duration = 3
		})
		_G.HBP = Value
	end)
	
	--------------------------------------------------------------------------
	
	local HBET = Tabs.Settings:AddSlider("Slider", {
		Title = "Respawn Wait Time",
		Description = "Time For Task.Wait To Trigger The ReExecution",
		Default = 1,
		Min = 0,
		Max = 1000,
		Rounding = 1
	})
	HBET:OnChanged(function(Value)
		warn("Respawn Wait Time: " .. Value * 0.001)
		_G.RespawnWaitTime = Value * 0.001
	end)
end

window1:SelectTab(1)
SaveManager:SetLibrary(Main)
InterfaceManager:SetLibrary(Main)

	SaveManager:IgnoreThemeSettings()

	SaveManager:SetIgnoreIndexes({})
	InterfaceManager:SetFolder("XGui")
	SaveManager:SetFolder("XGui/specific-game")

	InterfaceManager:BuildInterfaceSection(Tabs.Settings)
	SaveManager:BuildConfigSection(Tabs.Settings)



do
	Main:Notify({
		Title = "X Gui",
		Content = "X loaded.",
		Duration = 5
	})

SaveManager:LoadAutoloadConfig()
	
end