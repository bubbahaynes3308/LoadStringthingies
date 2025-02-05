local HatPack = _G.K1
local ExtraValue =  _G.K2
local ExtraValue2 = _G.K3
local SaveOutfit = _G.K5
local Z = game:GetObjects("rbxasset://GeodesHatting.Rbxm")[1]:Clone()
local X = Z.XHat
local Plr = _G.K4
local HatPackage = X[HatPack]:Clone()
local HiddenLimbs = Z.HiddenLimbs
local Player = Plr.Character
local HatsResized = {}
local Connections = {}


------------------------------------------Below Is What Welds The Hats Together--------------------------------------------------------------

function weldAttachments(attach1, attach2)
	local weld = Instance.new("Weld")
	weld.Part0 = attach1.Parent
	weld.Part1 = attach2.Parent
	weld.C0 = attach1.CFrame
	weld.C1 = attach2.CFrame
	weld.Parent = attach1.Parent
	weld.Name = "AccessoryWeld".. weld.Parent.Name
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

function addAccoutrement(character, accoutrement)  
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

function RemoveHatsAndRecolor()
if HatPack == "FoodDemons" then
	NewHats = HatPackage[tostring(ExtraValue)]:Clone()
elseif HatPack == "WolframNightstalker" then
	NewHats = HatPackage["NewHats".. ExtraValue2]:Clone()
else
	NewHats = HatPackage["NewHats"]:Clone()
end

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
			local BodyColors = NewHats:WaitForChild("Body Colors", 2.5)
			local HeadColor = BodyColors.HeadColor3
			local TorsoColor = BodyColors.TorsoColor3
			local LeftArmColor = BodyColors.LeftArmColor3
			local LeftLegColor = BodyColors.LeftLegColor3
			local RightArmColor = BodyColors.RightArmColor3
			local RightLegColor = BodyColors.RightLegColor3
			Player["Head"].Color = Color3.fromRGB(HeadColor.R, HeadColor.G, HeadColor.B)
			Player["Torso"].Color = Color3.fromRGB(TorsoColor.R, TorsoColor.G, TorsoColor.B)
			Player["Left Arm"].Color = Color3.fromRGB(LeftArmColor.R, LeftArmColor.G, LeftArmColor.B)
			Player["Left Leg"].Color = Color3.fromRGB(LeftLegColor.R, LeftLegColor.G, LeftLegColor.B)
			Player["Right Arm"].Color = Color3.fromRGB(RightArmColor.R, RightArmColor.G, RightArmColor.B)
			Player["Right Leg"].Color = Color3.fromRGB(RightLegColor.R, RightLegColor.G, RightLegColor.B)
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

if HatPackage:HasTag("UseBodyColors") then --i Used Tags To Differ Them From Getting set Without one
	local BodyColors = NewHats:WaitForChild("Body Colors", 2.5)
	local HeadColor = BodyColors.HeadColor3
	local TorsoColor = BodyColors.TorsoColor3
	local LeftArmColor = BodyColors.LeftArmColor3
	local LeftLegColor = BodyColors.LeftLegColor3
	local RightArmColor = BodyColors.RightArmColor3
	local RightLegColor = BodyColors.RightLegColor3
	Player["Head"].Color = Color3.fromRGB(HeadColor.R, HeadColor.G, HeadColor.B)
	Player["Torso"].Color = Color3.fromRGB(TorsoColor.R, TorsoColor.G, TorsoColor.B)
	Player["Left Arm"].Color = Color3.fromRGB(LeftArmColor.R, LeftArmColor.G, LeftArmColor.B)
	Player["Left Leg"].Color = Color3.fromRGB(LeftLegColor.R, LeftLegColor.G, LeftLegColor.B)
	Player["Right Arm"].Color = Color3.fromRGB(RightArmColor.R, RightArmColor.G, RightArmColor.B)
	Player["Right Leg"].Color = Color3.fromRGB(RightLegColor.R, RightLegColor.G, RightLegColor.B)
end

--------------------------------------------------------------------------------------------------------

function AddNewHats()
	for _, Prt in pairs(NewHats:GetChildren()) do
		Prt.Parent = Player
		if HatPackage:HasTag("HeadMesh") then
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

function Execute()
	spawn(function()
		RemoveHatsAndRecolor()
	end)
	wait(0.025)
	AddNewHats()
	wait(0.025)
	processCharacterAccessories(Player)
	if Player:GetScale() ~= 1 then 	Player["Torso"]:WaitForChild("AccessoryWeldTorso").C1 = CFrame.new(Player["Torso"]:WaitForChild("AccessoryWeldTorso").C1.X, Player["Torso"]:WaitForChild("AccessoryWeldTorso").C1.Y, Player["Torso"]:WaitForChild("AccessoryWeldTorso").C1.Z*1.5)
		for _,v in pairs(Player:GetDescendants()) do
			if v:IsA("Weld") and v.Name == "AccessoryWeldLeft Arm" or v.Name ==  "AccessoryWeldRight Arm" or v.Name ==  "AccessoryWeldLeft Leg" or v.Name ==  "AccessoryWeldRight Leg" then
				v.C1 = CFrame.new(0, -1 * Player:GetScale(), -0.05)
			end
		end
	end
end

Execute()

Plr.CharacterAdded:Connect(function()
	if SaveOutfit == true then
		task.wait(0.1)
		Player = Plr.Character
		spawn(function()
			Execute()
		end)
	end
end)
task.spawn(function()
	while task.wait(0.5) do
		local BreakerObject = game:GetService("ReplicatedStorage"):FindFirstChild(Plr.Name.."DeleteValue")
		if BreakerObject then
			SaveOutfit = false
			game:GetService("ReplicatedStorage"):FindFirstChild(Plr.Name.."DeleteValue"):Destroy()
		end
	end
end)
