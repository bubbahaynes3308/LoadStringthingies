wait(0.1)
Player = game:GetService("Players").LocalPlayer
RS = game:GetService("RunService")
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = Player.Character
Humanoid = Character.Humanoid
RootPart = Character["HumanoidRootPart"]
Torso = Character["Torso"]
Head = Character["Head"]
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart["RootJoint"]
Neck = Torso["Neck"]
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]
local info = false
local TIME = 0
local Throttle = 0
local doe = 0
local LookUp = false
IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor
local alreadyfixing = false
local hue = 0;

--//=================================\\
--|| 	      USEFUL VALUES
--\\=================================//

Animation_Speed = 3
local FORCERESET = false
Frame_Speed = 1 / 60
local Speed = 50
local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local UNANCHOR = true
script.Parent = PlayerGui
local SINE = 5
local CHANGE = 2 / Animation_Speed
local mde = 0
local sine = 5
local Sine = 5
local ROOTC02 = CFrame.new(0,3,0 * math.cos(sine/15)) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(180))
local change = 1
local rc0 = CFrame.new() * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180))
local nc0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180))
local rscp = CFrame.new(-.5,0,0) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))
local lscp = CFrame.new(.5,0,0) * CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0))
local PotentialCFrame = Torso.Position
local random = math.random
local ocr=MRANDOM(0,255)
local orangecolorrandom=C3(ocr/255,ocr/355,0)
local bcr=MRANDOM(0,96)
local bluecolorrandom=C3(0,bcr/390,bcr/255)
local TEXTCOLOR = Color3.new(1, 1, 1)
if mde == 12 then
	if MRANDOM(1,2)==1 then	
		TEXTCOLOR = orangecolorrandom
	elseif MRANDOM(1,2)==2 then	
		TEXTCOLOR = bluecolorrandom
	elseif mde ~= 12 then
		Color3.new(1, 1, 1)
	end
end
local cn,euler,rad,v3,c3,sin,cos,clamp = CFrame.new,CFrame.fromEulerAnglesYXZ,math.rad,Vector3.new,Color3.fromRGB,math.sin,math.cos,math.clamp
local partexclusion = {}
local run = game:GetService("RunService")
local ts = game:GetService("TweenService")
local SIZEE = 1
function cn2(x,y,z)
	return cn(x*SIZEE,y*SIZEE,z*SIZEE)
end

--//=================================\\
--|| 	          WINGS
--\\=================================//


local LWing = Instance.new("Part")
LWing.Parent = Character
LWing.Size = Vector3.new(4, 1, 2)
LWing.Name = "LeftWing"
LWing.Anchored = false
LWing.Locked = true
LWing.Color = Color3.fromRGB(0,0,0)
LWing.CanCollide = false
LWing.CanTouch = false
LWing.CanQuery = false
local LWingMsh = Instance.new("SpecialMesh")
LWingMsh.Parent = LWing
LWingMsh.Offset = Vector3.new()
LWingMsh.Scale = Vector3.new(0.0480000004, 0.0480000004, 0.0480000004)
LWingMsh.MeshType = "FileMesh"
LWingMsh.MeshId = "rbxassetid://1553468234"
local RWing = Instance.new("Part")
RWing.Parent = Character
RWing.Size = Vector3.new(4, 1, 2)
RWing.Name = "RightWing"
RWing.Anchored = false
RWing.Locked = true
RWing.Color = Color3.fromRGB(0,0,0)
RWing.CanCollide = false
RWing.CanTouch = false
RWing.CanQuery = false
local RWingMsh = Instance.new("SpecialMesh")
RWingMsh.Parent = RWing
RWingMsh.Offset = Vector3.new()
RWingMsh.Scale = Vector3.new(0.0480000004, 0.0480000004, 0.0480000004)
RWingMsh.MeshType = "FileMesh"
RWingMsh.MeshId = "rbxassetid://1553468709"
local LWingWld = Instance.new("Motor6D")
LWingWld.Parent = LWing
LWingWld.Part0 = Torso
LWingWld.Part1 = LWing
LWingWld.C0 = CFrame.new(-0.25, 0.5, 0.5)*CFrame.fromEulerAnglesXYZ(0, 1.57, 0)
LWingWld.C1 = CFrame.new(1.1, 1, 0.95)
local RWingWld = Instance.new("Motor6D")
RWingWld.Parent = RWing
RWingWld.Part0 = Torso
RWingWld.Part1 = RWing
RWingWld.C0 = CFrame.new(0.25, 0.5, 0.5)*CFrame.fromEulerAnglesXYZ(0, 1.57, 0)
RWingWld.C1 = CFrame.new(1.1, 1, -0.95)

--//=================================\\
--|| SAZERENOS' ARTIFICIAL HEARTBEAT
--\\=================================//
--//=================================\\
--\\=================================//

--//=================================\\
--|| 	      SOME FUNCTIONS
--\\=================================//

function PositiveAngle(NUMBER)
	if NUMBER >= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function NegativeAngle(NUMBER)
	if NUMBER <= 0 then
		NUMBER = 0
	end
	return NUMBER
end



function CreateMesh(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
	local NEWMESH = IT(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = "http://www.roblox.com/asset/?id="..MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "http://www.roblox.com/asset/?id="..TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or VT(0, 0, 0)
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
end

function CreatePart(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
	local NEWPART = IT("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHOR == false then
		NEWPART.Anchored = false
	end
	NEWPART.BrickColor = BRICKC(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end

local function weldBetween(a, b)
	local weldd = Instance.new("ManualWeld")
	weldd.Part0 = a
	weldd.Part1 = b
	weldd.C0 = CFrame.new()
	weldd.C1 = b.CFrame:inverse() * a.CFrame
	weldd.Parent = a
	return weldd
end

function QuaternionFromCFrame(cf)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then 
		local s = math.sqrt(1 + trace)
		local recip = 0.5 / s
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
	else
		local i = 0
		if m11 > m00 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then
			i = 2
		end
		if i == 0 then
			local s = math.sqrt(m00 - m11 - m22 + 1)
			local recip = 0.5 / s
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5 / s
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5 / s return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
		end
	end
end

function QuaternionToCFrame(px, py, pz, x, y, z, w)
	local xs, ys, zs = x + x, y + y, z + z
	local wx, wy, wz = w * xs, w * ys, w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end

function tween(instance,properties,duration,easingdirection,easingstyle)
	spawn(function()
		if easingstyle == nil then easingstyle = Enum.EasingStyle.Quad end
		ts:Create(instance,TweenInfo.new(duration,easingstyle,easingdirection),properties):Play()
	end)
end

function QuaternionSlerp(a, b, t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp, finishInterp;
	if cosTheta >= 0.0001 then
		if (1 - cosTheta) > 0.0001 then
			local theta = ACOS(cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((1 - t) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	else
		if (1 + cosTheta) > 0.0001 then
			local theta = ACOS(-cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((t - 1) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = t - 1
			finishInterp = t
		end
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end

function Clerp(a, b, t)
	local qa = {QuaternionFromCFrame(a)}
	local qb = {QuaternionFromCFrame(b)}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end


function CreateWeldOrSnapOrMotor(TYPE, PARENT, PART0, PART1, C0, C1)
	local NEWWELD = IT(TYPE)
	NEWWELD.Part0 = PART0
	NEWWELD.Part1 = PART1
	NEWWELD.C0 = C0
	NEWWELD.C1 = C1
	NEWWELD.Parent = PARENT
	return NEWWELD
end
--[[
local S = IT("Sound")
function CreateSound(ID, PARENT, VOLUME, PITCH, DOESLOOP)
	local NEWSOUND = nil
	coroutine.resume(coroutine.create(function()
		NEWSOUND = S:Clone()
		NEWSOUND.Parent = PARENT
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.SoundId = "http://www.roblox.com/asset/?id="..ID
		NEWSOUND:play()
		if DOESLOOP == true then
			NEWSOUND.Looped = true
		else
			repeat wait(1) until NEWSOUND.Playing == false or NEWSOUND.Parent ~= PARENT
			NEWSOUND:remove()
		end
	end))
	return NEWSOUND
end
]]

--[[
local function SendMessage(StarterText,Text)
	for _,v in pairs(game:GetService("Players"):GetPlayers()) do
		local ClientMessage = script.Message:Clone()
		ClientMessage.Name = StarterText
		local ClientText = Instance.new("StringValue")
		ClientText.Value = Text
		ClientText.Parent = ClientMessage
		ClientMessage.Disabled = false
		ClientMessage.Parent = v:FindFirstChildOfClass("PlayerGui") or v:FindFirstChildOfClass("Backpack") or Instance.new("Backpack",v)
		game:GetService("Debris"):AddItem(ClientMessage,5)
	end
end



local Chatted = Player.Chatted:Connect(function(Message)
	SendMessage("『"..Player.Name.."』: ",Message)
		
end)
]]


function unanchor()
	if UNANCHOR == true then
		local g = Character:GetChildren()
		for i = 1, #g do
			if g[i].ClassName == "Part" then
				g[i].Anchored = false
			end
		end
	end
end


--//=================================\\
--||	WRAP THE WHOLE SCRIPT UP
--\\=================================//

while true do
task.wait(0.017)
	local sensitivity = 25
	SINE = SINE + CHANGE
	local TORSOVELOCITY = (RootPart.Velocity * Vector3.new(1,0,1)).Magnitude 
	local TORSOVERTICALVELOCITY = RootPart.Velocity.y
	sine = sine + change
	Sine = Sine + change
	SINE = SINE + CHANGE
	RWingWld.C0 = Clerp(RWingWld.C0,CFrame.new(.15,.5,.5)*CFrame.Angles(0,math.rad(105-25*math.cos(sine/25)),0),.25)
	LWingWld.C0 = Clerp(LWingWld.C0,CFrame.new(-.15,.5,.5)*CFrame.Angles(0,math.rad(75+25*math.cos(sine/25)),0),.25)
	task.wait(0.017)
end
unanchor()