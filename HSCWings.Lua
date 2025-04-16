_G.CustomColor = _G.PColor
_G.Rainbow = _G.ZTRGB
_G.Material = _G.MT
_G.TZ = _G.TransZX
_G.RZ = _G.ReflectZX
_G.R= _G.RVX
_G.G= _G.GVX
_G.B= _G.BVX
_G.WT = _G.WaitTime

-- Script --
NewInstance = function(instance,parent,properties)
	local inst = Instance.new(instance)
	inst.Parent = parent
	if(properties)then
		for i,v in next, properties do
			pcall(function() inst[i] = v end)
		end
	end
	return inst;
end

plr = game:GetService("Players").LocalPlayer
Player = plr 
char = plr.Character
hum = char.Humanoid
t = char.Torso
h = char.Head
ra = char["Right Arm"]
la = char["Left Arm"]
rl = char["Right Leg"]
ll = char["Left Leg"]
tors = char.Torso
lleg = char["Left Leg"]
root = char.HumanoidRootPart
hed = char.Head
rleg = char["Right Leg"]
rarm = char["Right Arm"]
larm = char["Left Arm"]
radian = math.rad
random = math.random
Vec3 = Vector3.new
Inst = Instance.new
cFrame = CFrame.new
Euler = CFrame.fromEulerAnglesXYZ
vt = Vector3.new
bc = BrickColor.new
br = BrickColor.random
it = Instance.new
cf = CFrame.new
local Player_Size = 0
CF = CFrame.new
angles = CFrame.Angles
Euler = CFrame.fromEulerAnglesXYZ
Rad = math.rad
IT = Instance.new
BrickC = BrickColor.new
Cos = math.cos
Acos = math.acos
Sin = math.sin
Asin = math.asin
Abs = math.abs
Mrandom = math.random
Floor = math.floor
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
local SINE = 0
local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)
local ModeOfGlitch = 1
CF = CFrame.new
local hed = char.Head
local root = char.HumanoidRootPart
local rootj = root.RootJoint
local tors = char.Torso
Player_Size = 1
Cos = math.cos
Sin = math.sin
Rad = math.rad	
CF = CFrame.new
local rValue = 255
local gValue = 255
local bValue = 255
if _G.CustomColor == true then
	rValue = _G.R
	gValue =_G.G
	bValue = _G.B
else
end
local r = 255
local g = 0
local b = 0
coroutine.resume(coroutine.create(function()
	while wait() do
		for i = 0, 254/5 do
			task.wait(_G.WT)
			g = g + 5
		end
		for i = 0, 254/5 do
			task.wait(_G.WT)
			r = r - 5
		end
		for i = 0, 254/5 do
			task.wait(_G.WT)
			b = b + 5
		end
		for i = 0, 254/5 do
			task.wait(_G.WT)
			g = g - 5
		end
		for i = 0, 254/5 do
			task.wait(_G.WT)
			r = r + 5
		end
		for i = 0, 254/5 do
			task.wait(_G.WT)
			b = b - 5
		end
	end
end))

function lerp(object, newCFrame, alpha)
	return object:lerp(newCFrame, alpha)
end

local t = {}
local function Create_PrivImpl(objectType)
	if type(objectType) ~= 'string' then
		error("Argument of Create must be a string", 2)
	end
	return function(dat)
		dat = dat or {}
		local obj = Instance.new(objectType)
		local parent = nil
		local ctor = nil
		for k, v in pairs(dat) do
			if type(k) == 'string' then
				if k == 'Parent' then
					parent = v
				else
					obj[k] = v
				end
			elseif type(k) == 'number' then
				if type(v) ~= 'userdata' then
					error("Bad entry in Create body: Numeric keys must be paired with children, got a: "..type(v), 2)
				end
				v.Parent = obj
			elseif type(k) == 'table' and k.__eventname then
				if type(v) ~= 'function' then
					error("Bad entry in Create body: Key `[Create.E\'"..k.__eventname.."\']` must have a function value\
					       got: "..tostring(v), 2)
				end
				obj[k.__eventname]:connect(v)
			elseif k == t.Create then
				if type(v) ~= 'function' then
					error("Bad entry in Create body: Key `[Create]` should be paired with a constructor function, \
					       got: "..tostring(v), 2)
				elseif ctor then
					error("Bad entry in Create body: Only one constructor function is allowed", 2)
				end
				ctor = v


			else
				error("Bad entry ("..tostring(k).." => "..tostring(v)..") in Create body", 2)
			end
		end
		if ctor then
			ctor(obj)
		end

		if parent then
			obj.Parent = parent
		end
		return obj
	end
end
t.Create = setmetatable({}, {__call = function(tb, ...) return Create_PrivImpl(...) end})
t.Create.E = function(eventName)
	return {__eventname = eventName}
end
local Create = t.Create

CFuncs = {	
	["Part"] = {
		Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
			local Part = Create("Part"){
				Parent = Parent,
				Reflectance = Reflectance,
				Transparency = Transparency,
				CanCollide = false,
				Locked = true,
				BrickColor = BrickColor.new(tostring(BColor)),
				Name = Name,
				Size = Size,
				Material = Material,
			}
			RemoveOutlines(Part)
			return Part
		end;
	};

	["Mesh"] = {
		Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
			local Msh = Create(Mesh){
				Parent = Part,
				Offset = OffSet,
				Scale = Scale,
			}
			if Mesh == "SpecialMesh" then
				Msh.MeshType = MeshType
				Msh.MeshId = MeshId
			end
			return Msh
		end;
	};

	["Weld"] = {
		Create = function(Parent, Part0, Part1, C0, C1)
			local Weld = Create("Weld"){
				Parent = Parent,
				Part0 = Part0,
				Part1 = Part1,
				C0 = C0,
				C1 = C1,
			}
			return Weld
		end;
	};

	["Sound"] = {
		Create = function(id, par, vol, pit) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound"){
					Volume = vol,
					Name = "EffectSoundo",
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace,
				}
				wait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 10)
			end))
		end;
	};

	["TimeSound"] = {
		Create = function(id, par, vol, pit, timepos) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound"){
					Volume = vol,
					Name = "EffectSoundo",
					Pitch = pit or 1,
					SoundId = id,
					TimePosition = timepos,
					Parent = par or workspace,
				}
				wait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 10)
			end))
		end;
	};
	["EchoSound"] = {
		Create = function(id, par, vol, pit, timepos,delays,echodelay,fedb,dryl) 
			coroutine.resume(coroutine.create(function()
				local Sas = Create("Sound"){
					Volume = vol,
					Name = "EffectSoundo",
					Pitch = pit or 1,
					SoundId = id,
					TimePosition = timepos,
					Parent = par or workspace,
				}
				local E = Create("EchoSoundEffect"){
					Delay = echodelay,
					Name = "Echo",
					Feedback = fedb,
					DryLevel = dryl,
					Parent = Sas,
				}
				wait() 
				Sas:play() 
				game:GetService("Debris"):AddItem(Sas, delays)
			end))
		end;
	};

	["LongSound"] = {
		Create = function(id, par, vol, pit) 
			coroutine.resume(coroutine.create(function()
				local S = Create("Sound"){
					Volume = vol,
					Pitch = pit or 1,
					SoundId = id,
					Parent = par or workspace,
				}
				wait() 
				S:play() 
				game:GetService("Debris"):AddItem(S, 60)
			end))
		end;
	};

	["ParticleEmitter"] = {
		Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
			local fp = Create("ParticleEmitter"){
				Parent = Parent,
				Color = ColorSequence.new(Color1, Color2),
				LightEmission = LightEmission,
				Size = Size,
				Texture = Texture,
				Transparency = Transparency,
				ZOffset = ZOffset,
				Acceleration = Accel,
				Drag = Drag,
				LockedToPart = LockedToPart,
				VelocityInheritance = VelocityInheritance,
				EmissionDirection = EmissionDirection,
				Enabled = Enabled,
				Lifetime = LifeTime,
				Rate = Rate,
				Rotation = Rotation,
				RotSpeed = RotSpeed,
				Speed = Speed,
				VelocitySpread = VelocitySpread,
			}
			return fp
		end;
	};

	CreateTemplate = {

	};
}
New = function(Object, Parent, Name, Data)
	local Object = Instance.new(Object)
	for Index, Value in pairs(Data or {}) do
		Object[Index] = Value
	end
	Object.Parent = Parent
	Object.Name = Name
	return Object
end
local MAINRUINCOLOR = BrickColor.new("White")
local halocolor = BrickColor.new("White")
local halocolor2 = BrickColor.new("White")
local MAINCOLOR = BrickColor.new("White")
local Folder = Instance.new("Folder")
Folder.Name = "SakurinaWings"
Folder.Parent = char

function CreateParta(parent,transparency,reflectance,material,brickcolor)
	local p = Instance.new("Part")
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Parent = parent
	p.Size = Vector3.new(0.1,0.1,0.1)
	p.Transparency = transparency
	p.Reflectance = reflectance
	p.CanCollide = false
	p.Locked = true
	p.BrickColor = brickcolor
	p.Material = material
	return p
end

function CreateMesh(parent,meshtype,x1,y1,z1)
	local mesh = Instance.new("SpecialMesh",parent)
	mesh.MeshType = meshtype
	mesh.Scale = Vector3.new(x1*10,y1*10,z1*10)
	return mesh
end

function CreateSpecialMesh(parent,meshid,x1,y1,z1)
	local mesh = Instance.new("SpecialMesh",parent)
	mesh.MeshType = "FileMesh"
	mesh.MeshId = meshid
	mesh.Scale = Vector3.new(x1,y1,z1)
	return mesh
end


function CreateSpecialGlowMesh(parent,meshid,x1,y1,z1)
	local mesh = Instance.new("SpecialMesh",parent)
	mesh.MeshType = "FileMesh"
	mesh.MeshId = meshid
	mesh.TextureId = "http://www.roblox.com/asset/?id=269748808"
	mesh.Scale = Vector3.new(x1,y1,z1)
	mesh.VertexColor = Vector3.new(parent.BrickColor.r, parent.BrickColor.g, parent.BrickColor.b)
	return mesh
end

function CreateWeld(parent,part0,part1,C1X,C1Y,C1Z,C1Xa,C1Ya,C1Za,C0X,C0Y,C0Z,C0Xa,C0Ya,C0Za)
	local weld = Instance.new("Weld")
	weld.Parent = parent
	weld.Part0 = part0
	weld.Part1 = part1
	weld.C1 = CFrame.new(C1X,C1Y,C1Z)*CFrame.Angles(C1Xa,C1Ya,C1Za)
	weld.C0 = CFrame.new(C0X,C0Y,C0Z)*CFrame.Angles(C0Xa,C0Ya,C0Za)
	return weld
end
function CreateWelda(parent,part0,part1,C1X,C1Y,C1Z,C1Xa,C1Ya,C1Za,C0X,C0Y,C0Z,C0Xa,C0Ya,C0Za)
	local weld = Instance.new("Weld")
	weld.Parent = parent
	weld.Part0 = part0
	weld.Part1 = part1
	weld.C1 = CFrame.new(C1X,C1Y,C1Z)*CFrame.Angles(C1Xa,C1Ya,C1Za)
	weld.C0 = CFrame.new(C0X,C0Y,C0Z)*CFrame.Angles(C0Xa,C0Ya,C0Za)
	return weld
end
function CreateMeshXX(parent,meshtype,x1,y1,z1)
	local mesh = Instance.new("SpecialMesh",parent)
	mesh.MeshType = meshtype
	mesh.Scale = Vector3.new(x1*10,y1*10,z1*10)
	return mesh
end

function CreateSpecialMesha(parent,meshid,x1,y1,z1)
	local mesh = Instance.new("SpecialMesh",parent)
	mesh.MeshType = "FileMesh"
	mesh.MeshId = meshid
	mesh.Scale = Vector3.new(x1,y1,z1)
	return mesh
end

function CreateMesha(parent,meshtype,x1,y1,z1)
	local mesh = Instance.new("SpecialMesh",parent)
	mesh.MeshType = meshtype
	mesh.Scale = Vector3.new(x1*10,y1*10,z1*10)
	return mesh
end

function QuaternionFromCFrameX(cf)
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
function QuaternionToCFrameX(px, py, pz, x, y, z, w) 
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

function CLSKR(a, b, t)
	local qa = {QuaternionFromCFrameX(a)}
	local qb = {QuaternionFromCFrameX(b)}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrameX(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end



-- Wings 
		--[[
		Torso.LWing.C0 = CFrame.new(-0.25, 0.5, 0.5)*CFrame.fromEulerAnglesXYZ(0, 1.57, 0)
		Torso.LWing.C1 = CFrame.new(1.1, 1, 0.95)
		--
		Torso.RWing.C0 = CFrame.new(0.25, 0.5, 0.5)*CFrame.fromEulerAnglesXYZ(0, 1.57, 0)
Torso.RWing.C1 = CFrame.new(1.1, 1, -0.95)]]
-----------


local m = Instance.new("Model",Folder)
local m2 = Instance.new("Model",Folder)
local mw1 = Instance.new("Model",Folder)
local mw2 = Instance.new("Model",Folder)
local extrawingmod1 = Instance.new("Model",Folder)
local extrawingmod2 = Instance.new("Model",Folder)
m.Name = "m"
m2.Name = "m2"
mw1.Name = "mw1"
mw2.Name = "mw2"
extrawingmod1.Name = "extrawingmod1"
extrawingmod2.Name = "extrawingmod2"



local handle = CreateParta(m,1,1,"Neon",MAINCOLOR)
CreateMeshXX(handle,"Brick",0.5,0.5,0.5)
local handleweld = CreateWelda(handle,tors,handle,0,-1.5,-1.05,RAD(0),RAD(0),RAD(0),0,0,0,RAD(0),RAD(0),RAD(0))

local sorb = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
CreateWelda(sorb,RightArm,sorb,0,1,0,RAD(0),RAD(0),RAD(0),0,0,0,RAD(0),RAD(0),RAD(0))
local sorb2 = CreateParta(m,1,1,"SmoothPlastic",BrickColor.random())
CreateWelda(sorb2,LeftArm,sorb2,0,1,0,RAD(0),RAD(0),RAD(0),0,0,0,RAD(0),RAD(0),RAD(0))

local handlex = CreateParta(mw2,1,1,"Neon",MAINCOLOR)
CreateMeshXX(handle,"Brick",0,0,0)
local handlexweld = CreateWelda(handlex,tors,handlex,0,-1.5,-1.05,RAD(0),RAD(0),RAD(0),0,0,0,RAD(0),RAD(0),RAD(0))
local valuaring = 10
for i = 0, 49 do
	valuaring = valuaring + 10
	rn = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
	CreateMeshXX(rn,"Brick",0.25,0.1,0.1)
	CreateWelda(rn,handlex,rn,0,1,0,RAD(0),RAD(0),RAD(valuaring),0,0,0,RAD(0),RAD(0),RAD(0))
end
local refec = Instance.new("ParticleEmitter",handlex)
refec.Texture = "rbxassetid://249270319"
refec.LightEmission = 0.95
refec.Color = ColorSequence.new(Color3.new(rValue/255,gValue/255,bValue/255))
refec.Rate = 50
refec.Lifetime = NumberRange.new(0.5)
refec.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0.5,0),NumberSequenceKeypoint.new(0.5,0.75,0),NumberSequenceKeypoint.new(1,0.1,0)})
refec.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.5,0.25,0),NumberSequenceKeypoint.new(1,1,0)})
refec.Speed = NumberRange.new(0,2)
refec.Drag = 5
refec.LockedToPart = true
refec.Rotation = NumberRange.new(-500,500)
refec.VelocitySpread = 9000
refec.RotSpeed = NumberRange.new(-500,500)

local handle = CreateParta(m,1,1,"Neon",MAINCOLOR)
CreateMeshXX(handle,"Brick",0.5,0.5,0.5)
local handleweld = CreateWelda(handle,tors,handle,0,-1.5,-1.05,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

--- Bruh1

local lwing1 = CreateParta(m,1,1,"Neon",MAINCOLOR)
CreateMeshXX(handle,"Brick",0.5,0.5,0.5)
local lwing1weld = CreateWelda(lwing1,handle,lwing1,3,0,0,math.rad(5),math.rad(0),math.rad(12.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(mw1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,3,0.5)
CreateWelda(wed,lwing1,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,3,0.5)
CreateWelda(wed,lwing1,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25,0.25)
wed = CreateParta(mw1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,0.5,3)
CreateWelda(wed,lwing1,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,-0.25,-2)
wed = CreateParta(mw1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,3,0.5)
CreateWelda(wed,lwing1,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

tl1 = Instance.new('Trail',wed)
tl1.Attachment0 = A1
tl1.Attachment1 = A0
tl1.Texture = "rbxassetid://2108945559"
tl1.LightEmission = 1
tl1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tl1.Color = ColorSequence.new(BrickColor.new('White').Color)
tl1.Lifetime = 0.6


local lwing2 = CreateParta(m,1,1,"Neon",MAINCOLOR)
CreateMeshXX(handle,"Brick",0.5,0.5,0.5)
local lwing2weld = CreateWelda(lwing2,handle,lwing2,4,1,0,math.rad(10),math.rad(0),math.rad(25),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(mw1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Cylinder",0.05,0.5,0.5)
CreateWelda(wed,lwing2,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Cylinder",0.05,0.5,0.5)
CreateWelda(wed,lwing2,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Cylinder",0.05,0.5,0.5)
CreateWelda(wed,lwing2,wed,0,-0.5,0.25,math.rad(180),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Cylinder",0.05,0.5,0.5)
CreateWelda(wed,lwing2,wed,0,-0.5,0.25,math.rad(180),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Cylinder",0.05,0.5,0.5)
CreateWelda(wed,lwing2,wed,0,0.75,-0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Cylinder",0.05,0.5,0.5)
CreateWelda(wed,lwing2,wed,0,0.75,-0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Sphere",0.05,0.25,1.75)
CreateWelda(wed,lwing2,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Sphere",0.05,0.25,1.75)
CreateWelda(wed,lwing2,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Sphere",0.05,0.25,1.75)
CreateWelda(wed,lwing2,wed,0,-0.125,2.5,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,1.75,0.25)
CreateWelda(wed,lwing2,wed,0,-2.5,0.125,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

tl2 = Instance.new('Trail',wed)
tl2.Attachment0 = A1
tl2.Attachment1 = A0
tl2.Texture = "rbxassetid://2108945559"
tl2.LightEmission = 1
tl2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tl2.Color = ColorSequence.new(BrickColor.new('White').Color)
tl2.Lifetime = 0.6

local lwing3 = CreateParta(m,1,1,"Neon",MAINCOLOR)
CreateMeshXX(handle,"Brick",0.5,0.5,0.5)
local lwing3weld = CreateWelda(lwing3,handle,lwing3,5.75,2,0,math.rad(15),math.rad(0),math.rad(37.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(mw1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.025,0.25,0.25)
CreateWelda(wed,lwing3,wed,0,0,0.125,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(60))
wed = CreateParta(mw1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.025,0.25,0.25)
CreateWelda(wed,lwing3,wed,0,0,0.125,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(60))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25,0.25)
wed = CreateParta(mw1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.025,0.25,1.5)
CreateWelda(wed,lwing3,wed,0,-0.125,0.875,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(60))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,-0.25,-2)
wed = CreateParta(mw1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.025,1.5,0.25)
CreateWelda(wed,lwing3,wed,0,-0.875,0.125,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(60))

wed = CreateParta(mw1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.025,0.25,0.25)
CreateWelda(wed,lwing3,wed,0,0,0.125,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(-60))
wed = CreateParta(mw1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.025,0.25,0.25)
CreateWelda(wed,lwing3,wed,0,0,0.125,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(-60))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25,0.25)
wed = CreateParta(mw1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.025,0.25,1.5)
CreateWelda(wed,lwing3,wed,0,-0.125,0.875,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(-60))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,-0.25,-2)
wed = CreateParta(mw1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.025,1.5,0.25)
CreateWelda(wed,lwing3,wed,0,-0.875,0.125,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(-60))

wed = CreateParta(mw1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.025,0.25,0.25)
CreateWelda(wed,lwing3,wed,0,0,0.125,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(180))
wed = CreateParta(mw1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.025,0.25,0.25)
CreateWelda(wed,lwing3,wed,0,0,0.125,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(180))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25,0.25)
wed = CreateParta(mw1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.025,0.25,1.5)
CreateWelda(wed,lwing3,wed,0,-0.125,0.875,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(180))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,-0.25,-2)
wed = CreateParta(mw1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.025,1.5,0.25)
CreateWelda(wed,lwing3,wed,0,-0.875,0.125,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(180))

wed = CreateParta(mw1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,0.5,0.5)
CreateWelda(wed,lwing3,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,0.5,0.5)
CreateWelda(wed,lwing3,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,0.5,0.5)
CreateWelda(wed,lwing3,wed,0,-0.5,0.25,math.rad(180),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,0.5,0.5)
CreateWelda(wed,lwing3,wed,0,-0.5,0.25,math.rad(180),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,0.5,0.5)
CreateWelda(wed,lwing3,wed,0,0.75,-0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,0.5,0.5)
CreateWelda(wed,lwing3,wed,0,0.75,-0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,0.5,1.5)
CreateWelda(wed,lwing3,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,1.5,0.5)
CreateWelda(wed,lwing3,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,0.25,1.75)
CreateWelda(wed,lwing3,wed,0,-0.125,2.5,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,1.75,0.25)
CreateWelda(wed,lwing3,wed,0,-2.5,0.125,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

tl3 = Instance.new('Trail',wed)
tl3.Attachment0 = A1
tl3.Attachment1 = A0
tl3.Texture = "rbxassetid://2108945559"
tl3.LightEmission = 1
tl3.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tl3.Color = ColorSequence.new(BrickColor.new('White').Color)
tl3.Lifetime = 0.6
local lwing4 = CreateParta(m,1,1,"Neon",MAINCOLOR)
CreateMeshXX(handle,"Brick",0.5,0.5,0.5)
local lwing4weld = CreateWelda(lwing4,handle,lwing4,5.75,3,0,math.rad(20),math.rad(0),math.rad(50),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(extrawingmod1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05*2,0.5*2,0.5*2)
CreateWelda(wed,lwing4,wed,0,0,0.25*2,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05*2,0.5*2,0.5*2)
CreateWelda(wed,lwing4,wed,0,0,0.25*2,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25*2,0.25*2)
wed = CreateParta(extrawingmod1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05*2,0.5*2,3*2)
CreateWelda(wed,lwing4,wed,0,-0.25*2,1.75*2,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,-0.25*2,-2*2)
wed = CreateParta(extrawingmod1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.0*25,3*2,0.5*2)
CreateWelda(wed,lwing4,wed,0,-1.75*2,0.25*2,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

tl4 = Instance.new('Trail',wed)
tl4.Attachment0 = A1
tl4.Attachment1 = A0
tl4.Texture = "rbxassetid://2108945559"
tl4.LightEmission = 1
tl4.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tl4.Color = ColorSequence.new(BrickColor.new('White').Color)
tl4.Lifetime = 0.6
local lwing5 = CreateParta(m,1,1,"Neon",MAINCOLOR)
CreateMeshXX(handle,"Brick",0.5,0.5,0.5)
local lwing5weld = CreateWelda(lwing5,handle,lwing5,6.75,4,0,math.rad(25),math.rad(0),math.rad(62.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(extrawingmod1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05*2,0.5*2,0.5*2)
CreateWelda(wed,lwing5,wed,0,0,0.25*2,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05*2,0.5*2,0.5*2)
CreateWelda(wed,lwing5,wed,0,0,0.25*2,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25*2,0.25*2)
wed = CreateParta(extrawingmod1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05*2,0.5*2,3*2)
CreateWelda(wed,lwing5,wed,0,-0.25*2,1.75*2,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,-0.25*2,-2*2)
wed = CreateParta(extrawingmod1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05*2,3*2,0.5*2)
CreateWelda(wed,lwing5,wed,0,-1.75*2,0.25*2,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

tl5 = Instance.new('Trail',wed)
tl5.Attachment0 = A1
tl5.Attachment1 = A0
tl5.Texture = "rbxassetid://2108945559"
tl5.LightEmission = 1
tl5.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tl5.Color = ColorSequence.new(BrickColor.new('White').Color)
tl5.Lifetime = 0.6
local lwing6 = CreateParta(m,1,1,"Neon",MAINCOLOR)
CreateMeshXX(handle,"Brick",0.5,0.5,0.5)
local lwing6weld = CreateWelda(lwing6,handle,lwing6,7.75,5,0,math.rad(30),math.rad(0),math.rad(75),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(extrawingmod1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05*2,0.5*2,0.5*2)
CreateWelda(wed,lwing6,wed,0,0,0.25*2,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05*2,0.5*2,0.5*2)
CreateWelda(wed,lwing6,wed,0,0,0.25*2,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25*2,0.25*2)
wed = CreateParta(extrawingmod1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05*2,0.5*2,3*2)
CreateWelda(wed,lwing6,wed,0,-0.25*2,1.75*2,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,-0.25*2,-2*2)
wed = CreateParta(extrawingmod1,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05*2,3*2,0.5*2)
CreateWelda(wed,lwing6,wed,0,-1.75*2,0.25*2,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
tl6 = Instance.new('Trail',wed)
tl6.Attachment0 = A1
tl6.Attachment1 = A0
tl6.Texture = "rbxassetid://2108945559"
tl6.LightEmission = 1
tl6.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tl6.Color = ColorSequence.new(BrickColor.new('White').Color)
tl6.Lifetime = 0.6

tl1.Enabled = false
tl2.Enabled = false
tl3.Enabled = false
tl4.Enabled = false
tl5.Enabled = false
tl6.Enabled = false

-- Bruh2

local rwing1 = CreateParta(m,1,1,"Neon",MAINCOLOR)
CreateMeshXX(handle,"Brick",0.5,0.5,0.5)
local rwing1weld = CreateWelda(rwing1,handle,rwing1,-3,0,0,math.rad(5),math.rad(0),math.rad(-12.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,3,0.5)
CreateWelda(wed,rwing1,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25,0.25)
wed = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,3,0.5)
CreateWelda(wed,rwing1,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,0.5,3)
CreateWelda(wed,rwing1,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,3,0.5)
CreateWelda(wed,rwing1,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,2,0.25)

tr1 = Instance.new('Trail',wed)
tr1.Attachment0 = A1
tr1.Attachment1 = A0
tr1.Texture = "rbxassetid://2108945559"
tr1.LightEmission = 1
tr1.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tr1.Color = ColorSequence.new(BrickColor.new('White').Color)
tr1.Lifetime = 0.6

local rwing2 = CreateParta(m,1,1,"Neon",MAINCOLOR)
CreateMeshXX(handle,"Brick",0.5,0.5,0.5)
local rwing2weld = CreateWelda(rwing2,handle,rwing2,-4,1,0,math.rad(10),math.rad(0),math.rad(-25),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,0.5,0.5)
CreateWelda(wed,rwing2,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25,0.25)
wed = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,0.5,0.5)
CreateWelda(wed,rwing2,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,0.5,0.5)
CreateWelda(wed,rwing2,wed,0,-0.5,0.25,math.rad(180),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,0.5,0.5)
CreateWelda(wed,rwing2,wed,0,-0.5,0.25,math.rad(180),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,0.5,0.5)
CreateWelda(wed,rwing2,wed,0,0.75,-0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,0.5,0.5)
CreateWelda(wed,rwing2,wed,0,0.75,-0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,0.5,1.5)
CreateWelda(wed,rwing2,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,1.5,0.5)
CreateWelda(wed,rwing2,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,0.25,1.75)
CreateWelda(wed,rwing2,wed,0,-0.125,2.5,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,1.75,0.25)
CreateWelda(wed,rwing2,wed,0,-2.5,0.125,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,2,0.25)

tr2 = Instance.new('Trail',wed)
tr2.Attachment0 = A1
tr2.Attachment1 = A0
tr2.Texture = "rbxassetid://2108945559"
tr2.LightEmission = 1
tr2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tr2.Color = ColorSequence.new(BrickColor.new('White').Color)
tr2.Lifetime = 0.6

local rwing3 = CreateParta(m,1,1,"Neon",MAINCOLOR)
CreateMeshXX(handle,"Brick",0.5,0.5,0.5)
local rwing3weld = CreateWelda(rwing3,handle,rwing3,-5.75,2,0,math.rad(15),math.rad(0),math.rad(-37.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.025,0.25,0.25)
CreateWelda(wed,rwing3,wed,0,0,0.125,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(60))
wed = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.025,0.25,0.25)
CreateWelda(wed,rwing3,wed,0,0,0.125,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(60))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25,0.25)
wed = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.025,0.25,1.5)
CreateWelda(wed,rwing3,wed,0,-0.125,0.875,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(60))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,-0.25,-2)
wed = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.025,1.5,0.25)
CreateWelda(wed,rwing3,wed,0,-0.875,0.125,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(60))

wed = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.025,0.25,0.25)
CreateWelda(wed,rwing3,wed,0,0,0.125,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(-60))
wed = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.025,0.25,0.25)
CreateWelda(wed,rwing3,wed,0,0,0.125,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(-60))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25,0.25)
wed = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.025,0.25,1.5)
CreateWelda(wed,rwing3,wed,0,-0.125,0.875,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(-60))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,-0.25,-2)
wed = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.025,1.5,0.25)
CreateWelda(wed,rwing3,wed,0,-0.875,0.125,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(-60))

wed = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.025,0.25,0.25)
CreateWelda(wed,rwing3,wed,0,0,0.125,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(180))
wed = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.025,0.25,0.25)
CreateWelda(wed,rwing3,wed,0,0,0.125,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(180))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25,0.25)
wed = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.025,0.25,1.5)
CreateWelda(wed,rwing3,wed,0,-0.125,0.875,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(180))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,-0.25,-2)
wed = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.025,1.5,0.25)
CreateWelda(wed,rwing3,wed,0,-0.875,0.125,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(180))

wed = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,0.5,0.5)
CreateWelda(wed,rwing3,wed,0,0,0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,0.5,0.5)
CreateWelda(wed,rwing3,wed,0,0,0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,0.5,0.5)
CreateWelda(wed,rwing3,wed,0,-0.5,0.25,math.rad(180),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,0.5,0.5)
CreateWelda(wed,rwing3,wed,0,-0.5,0.25,math.rad(180),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,0.5,0.5)
CreateWelda(wed,rwing3,wed,0,0.75,-0.25,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,0.5,0.5)
CreateWelda(wed,rwing3,wed,0,0.75,-0.25,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,0.5,1.5)
CreateWelda(wed,rwing3,wed,0,-0.25,1.75,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,1.5,0.5)
CreateWelda(wed,rwing3,wed,0,-1.75,0.25,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,0.25,1.75)
CreateWelda(wed,rwing3,wed,0,-0.125,2.5,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(mw2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05,1.75,0.25)
CreateWelda(wed,rwing3,wed,0,-2.5,0.125,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

tr3 = Instance.new('Trail',wed)
tr3.Attachment0 = A1
tr3.Attachment1 = A0
tr3.Texture = "rbxassetid://2108945559"
tr3.LightEmission = 1
tr3.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tr3.Color = ColorSequence.new(BrickColor.new('White').Color)
tr3.Lifetime = 0.6


local rwing4 = CreateParta(m,1,1,"Neon",MAINCOLOR)
CreateMeshXX(handle,"Brick",0.5,0.5,0.5)
local rwing4weld = CreateWelda(rwing4,handle,rwing4,-5.75,3,0,math.rad(20),math.rad(0),math.rad(-50),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(extrawingmod2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05*2,0.5*2,0.5*2)
CreateWelda(wed,rwing4,wed,0,0,0.25*2,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25*2,0.25*2)
wed = CreateParta(extrawingmod2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05*2,0.5*2,0.5*2)
CreateWelda(wed,rwing4,wed,0,0,0.25*2,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05*2,0.5*2,3*2)
CreateWelda(wed,rwing4,wed,0,-0.25*2,1.75*2,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05*2,3*2,0.5*2)
CreateWelda(wed,rwing4,wed,0,-1.75*2,0.25*2,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,2,0.25)

tr4 = Instance.new('Trail',wed)
tr4.Attachment0 = A1
tr4.Attachment1 = A0
tr4.Texture = "rbxassetid://2108945559"
tr4.LightEmission = 1
tr4.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tr4.Color = ColorSequence.new(BrickColor.new('White').Color)
tr4.Lifetime = 0.6

local rwing5 = CreateParta(m,1,1,"Neon",MAINCOLOR)
CreateMeshXX(handle,"Brick",0.5,0.5,0.5)
local rwing5weld = CreateWelda(rwing5,handle,rwing5,-6.75,4,0,math.rad(25),math.rad(0),math.rad(-62.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(extrawingmod2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05*2,0.5*2,0.5*2)
CreateWelda(wed,rwing5,wed,0,0,0.25*2,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25*2,0.25*2)
wed = CreateParta(extrawingmod2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05*2,0.5*2,0.5*2)
CreateWelda(wed,rwing5,wed,0,0,0.25*2,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05*2,0.5*2,3*2)
CreateWelda(wed,rwing5,wed,0,-0.25*2,1.75*2,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05*2,3*2,0.5*2)
CreateWelda(wed,rwing5,wed,0,-1.75*2,0.25*2,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,2,0.25)

tr5 = Instance.new('Trail',wed)
tr5.Attachment0 = A1
tr5.Attachment1 = A0
tr5.Texture = "rbxassetid://2108945559"
tr5.LightEmission = 1
tr5.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tr5.Color = ColorSequence.new(BrickColor.new('White').Color)
tr5.Lifetime = 0.6

local rwing6 = CreateParta(m,1,1,"Neon",MAINCOLOR)
CreateMeshXX(handle,"Brick",0.5,0.5,0.5)
local rwing6weld = CreateWelda(rwing6,handle,rwing6,-7.75,3,0,math.rad(30),math.rad(0),math.rad(-75),0,0,0,math.rad(0),math.rad(0),math.rad(0))

wed = CreateParta(extrawingmod2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05*2,0.5*2,0.5*2)
CreateWelda(wed,rwing6,wed,0,0,0.25*2,math.rad(0),math.rad(90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
A0 = Instance.new('Attachment',wed)
A0.Position = vt(0,0.25*2,0.25*2)
wed = CreateParta(extrawingmod2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05*2,0.5*2,0.5*2)
CreateWelda(wed,rwing6,wed,0,0,0.25*2,math.rad(0),math.rad(-90),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05*2,0.5*2,3*2)
CreateWelda(wed,rwing6,wed,0,-0.25*2,1.75*2,math.rad(0),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))
wed = CreateParta(extrawingmod2,0,0,"Neon",MAINCOLOR)
CreateMeshXX(wed,"Wedge",0.05*2,3*2,0.5*2)
CreateWelda(wed,rwing6,wed,0,-1.75*2,0.25*2,math.rad(90),math.rad(90),math.rad(90),0,0,0,math.rad(0),math.rad(0),math.rad(0))

A1 = Instance.new('Attachment',wed)
A1.Position = vt(0,2,0.25)

tr6 = Instance.new('Trail',wed)
tr6.Attachment0 = A1
tr6.Attachment1 = A0
tr6.Texture = "rbxassetid://2108945559"
tr6.LightEmission = 1
tr6.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0),NumberSequenceKeypoint.new(1, 1)})
tr6.Color = ColorSequence.new(BrickColor.new('White').Color)
tr6.Lifetime = 0.6

tl1.Enabled = true
tl2.Enabled = true
tl3.Enabled = true
tl4.Enabled = true
tl5.Enabled = true
tl6.Enabled = true
tr1.Enabled = true
tr2.Enabled = true
tr3.Enabled = true
tr4.Enabled = true
tr5.Enabled = true
tr6.Enabled = true


local handlex2 = CreateParta(m2,1,1,"Neon",MAINCOLOR)
CreateMeshXX(handlex2,"Brick",0,0,0)
local handlex2weld = CreateWelda(handlex2,tors,handlex2,0,-2,-2.05,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))


local rotzo = CreateParta(m2,1,1,"Neon",MAINCOLOR)
CreateMeshXX(rotzo,"Brick",0,0,0)
local rotingweld = CreateWelda(rotzo,handlex2,rotzo,0,0,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))
local rotzo2 = CreateParta(m2,1,1,"Neon",MAINCOLOR)
CreateMeshXX(rotzo2,"Brick",0,0,0)
local rotingweld2 = CreateWelda(rotzo2,handlex2,rotzo2,0,0,0,math.rad(0),math.rad(0),math.rad(0),0,0,0,math.rad(0),math.rad(0),math.rad(0))

local roterval = 0
for i = 0, 7 do
	rn = CreateParta(mw2,0,0,"Neon",BrickColor.new("Alder"))
	CreateMeshXX(rn,"Wedge",0.15,1,0.15)
	CreateWelda(rn,rotzo,rn,0,-4.25,0.1,math.rad(0),math.rad(90),math.rad(roterval),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	rn = CreateParta(mw2,0,0,"Neon",BrickColor.new("Alder"))
	CreateMeshXX(rn,"Wedge",0.15,1,0.15)
	CreateWelda(rn,rotzo,rn,0,-4.25,0.1,math.rad(0),math.rad(-90),math.rad(roterval),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	rn = CreateParta(mw2,0,0,"Neon",BrickColor.new("Alder"))
	CreateMeshXX(rn,"Wedge",0.15,1,0.15)
	CreateWelda(rn,rotzo,rn,0,3.25,0.1,math.rad(0),math.rad(90),math.rad(roterval),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	rn = CreateParta(mw2,0,0,"Neon",BrickColor.new("Alder"))
	CreateMeshXX(rn,"Wedge",0.15,1,0.15)
	CreateWelda(rn,rotzo,rn,0,3.25,0.1,math.rad(0),math.rad(-90),math.rad(roterval),0,0,0,math.rad(0),math.rad(0),math.rad(0))

	rn = CreateParta(mw2,0,0,"Neon",BrickColor.new("Alder"))
	CreateMeshXX(rn,"Wedge",0.15,1,0.25)
	CreateWelda(rn,rotzo2,rn,0,1.5,0.2,math.rad(0),math.rad(90),math.rad(roterval + 22.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	rn = CreateParta(mw2,0,0,"Neon",BrickColor.new("Alder"))
	CreateMeshXX(rn,"Wedge",0.15,1,0.25)
	CreateWelda(rn,rotzo2,rn,0,1.5,0.2,math.rad(0),math.rad(-90),math.rad(roterval + 22.5),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	roterval = roterval + 45
end
local refec = Instance.new("ParticleEmitter",handlex2)
refec.Texture = "rbxassetid://284205403"
refec.LightEmission = 0.95
refec.Color = ColorSequence.new(BrickColor.new("Alder").Color)
refec.Rate = 50
refec.Lifetime = NumberRange.new(0.5)
refec.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0.5,0),NumberSequenceKeypoint.new(0.5,0.75,0),NumberSequenceKeypoint.new(1,0.1,0)})
refec.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.5,0.25,0),NumberSequenceKeypoint.new(1,1,0)})
refec.Speed = NumberRange.new(0,2)
refec.Drag = 5
refec.LockedToPart = true
refec.Rotation = NumberRange.new(-500,500)
refec.VelocitySpread = 9000
refec.RotSpeed = NumberRange.new(-500,500)
local refec2 = refec:Clone()
refec2.LightEmission = 0.75
refec2.Texture = "rbxassetid://2109052855"--2108979939 254287058 2109052855
refec2.Parent = handlex2
refec2.Rate = 15
refec2.Lifetime = NumberRange.new(0.75)
refec2.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2.15,0),NumberSequenceKeypoint.new(0.7,2.25,0),NumberSequenceKeypoint.new(0.8,2.15,0),NumberSequenceKeypoint.new(1,1.75,0)})
refec2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.5,0.65,0),NumberSequenceKeypoint.new(1,1,0)})
refec2.Speed = NumberRange.new(0)
local refec3 = refec:Clone()
refec3.LightEmission = 0.75
refec3.Texture = "rbxassetid://2092248396"
refec3.Parent = handlex2
refec3.Rate = 25
refec3.Lifetime = NumberRange.new(1)
refec3.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,2,0),NumberSequenceKeypoint.new(0.8,4,0),NumberSequenceKeypoint.new(1,15,0)})
refec3.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(0.5,0.65,0),NumberSequenceKeypoint.new(1,1,0)})
refec3.Speed = NumberRange.new(0)
refec3.RotSpeed = NumberRange.new(-50,50)
local valuaring = 10
for i = 0, 35 do
	valuaring = valuaring + 10
	rn = CreateParta(mw2,0,0,"Neon",BrickColor.new("Alder"))
	CreateMeshXX(rn,"Brick",0.25,0.1,0.1)
	CreateWelda(rn,handlex2,rn,0,2,0,math.rad(0),math.rad(0),math.rad(valuaring),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	rn = CreateParta(mw2,0,0,"Neon",BrickColor.new("Alder"))
	CreateMeshXX(rn,"Brick",0.725,0.045,0.045)
	CreateWelda(rn,handlex2,rn,0,3.8,0,math.rad(0),math.rad(0),math.rad(valuaring),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	rn = CreateParta(m2,0,0,"Brick",MAINCOLOR)
	CreateMeshXX(rn,"Brick",0.35,0.05,0.2)
	CreateWelda(rn,handlex2,rn,0,1.975,0,math.rad(0),math.rad(0),math.rad(valuaring + 5),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	rn = CreateParta(m2,0,0,"Brick",MAINCOLOR)
	CreateMeshXX(rn,"Torso",0.385,0.15,0.2)
	CreateWelda(rn,handlex2,rn,0,2.1,0,math.rad(0),math.rad(0),math.rad(valuaring),0,0,0,math.rad(0),math.rad(0),math.rad(0))
	rn = CreateParta(mw2,0,0,"Neon",BrickColor.new("Alder"))
	CreateMeshXX(rn,"Wedge",0.5,0.5,0.15)
	CreateWelda(rn,handlex2,rn,0,-2.25,0,math.rad(0),math.rad(0),math.rad(valuaring + 5),0,0,0,math.rad(0),math.rad(0),math.rad(0))
end
local Ring = Instance.new("Model", Folder)
Ring.Name = "Ring"



---

------


function RemoveOutlines(part)
	part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
function CreatePart(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
	local Part = Create("Part")({
		Parent = Parent,
		Reflectance = Reflectance,
		Transparency = Transparency,
		CanCollide = false,
		Locked = true,
		BrickColor = BrickColor.new(tostring(BColor)),
		Name = Name,
		Size = Size,
		Material = Material
	})
	Part.CustomPhysicalProperties = PhysicalProperties.new(0.001, 0.001, 0.001, 0.001, 0.001)
	RemoveOutlines(Part)
	return Part
end
function NoOutline(Part)
	Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end


Character=Player.Character 
PlayerGui=Player.PlayerGui 
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Face = Head.face
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
cloaked=false
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
local sine = 0
local change = 1
function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
	local fp=it("Part")
	fp.formFactor=formfactor 
	fp.Parent=parent
	fp.Reflectance=reflectance
	fp.Transparency=transparency
	fp.CanCollide=false 
	fp.Locked=true
	fp.BrickColor=brickcolor
	fp.Name=name
	fp.Size=size
	fp.Position=Torso.Position 
	NoOutline(fp)
	fp.Material="SmoothPlastic"
	fp:BreakJoints()
	return fp 
end 



function mesh(Mesh,part,meshtype,meshid,offset,scale)
	local mesh=it(Mesh) 
	mesh.Parent=part
	if Mesh=="SpecialMesh" then
		mesh.MeshType=meshtype
		if meshid~="nil" then
			mesh.MeshId="http://www.roblox.com/asset/?id="..meshid
		end
	end
	mesh.Offset=offset
	mesh.Scale=scale
	return mesh
end

function weld(parent,part0,part1,c0)
	local weld=it("Weld") 
	weld.Parent=parent
	weld.Part0=part0 
	weld.Part1=part1 
	weld.C0=c0
	return weld
end

local Color1=Torso.BrickColor

--------- SazEreno's Artificial HB --------------

------------------
function clerp(a,b,t) 
	local qa = {QuaternionFromCFrame(a)}
	local qb = {QuaternionFromCFrame(b)} 
	local ax, ay, az = a.x, a.y, a.z 
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1-t
	return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 

function aclerp(startCF,endCF,alpha)
	return startCF:lerp(endCF, alpha)
end

function QuaternionFromCFrame(cf) 
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
	local trace = m00 + m11 + m22 
	if trace > 0 then 
		local s = math.sqrt(1 + trace) 
		local recip = 0.5/s 
		return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
	else 
		local i = 0 
		if m11 > m00 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then 
			i = 2 
		end 
		if i == 0 then 
			local s = math.sqrt(m00-m11-m22+1) 
			local recip = 0.5/s 
			return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
		elseif i == 1 then 
			local s = math.sqrt(m11-m22-m00+1) 
			local recip = 0.5/s 
			return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
		elseif i == 2 then 
			local s = math.sqrt(m22-m00-m11+1) 
			local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
		end 
	end 
end

function QuaternionToCFrame(px, py, pz, x, y, z, w) 
	local xs, ys, zs = x + x, y + y, z + z 
	local wx, wy, wz = w*xs, w*ys, w*zs 
	local xx = x*xs 
	local xy = x*ys 
	local xz = x*zs 
	local yy = y*ys 
	local yz = y*zs 
	local zz = z*zs 
	return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end

function QuaternionSlerp(a, b, t) 
	local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
	local startInterp, finishInterp; 
	if cosTheta >= 0.0001 then 
		if (1 - cosTheta) > 0.0001 then 
			local theta = math.acos(cosTheta) 
			local invSinTheta = 1/math.sin(theta) 
			startInterp = math.sin((1-t)*theta)*invSinTheta 
			finishInterp = math.sin(t*theta)*invSinTheta  
		else 
			startInterp = 1-t 
			finishInterp = t 
		end 
	else 
		if (1+cosTheta) > 0.0001 then 
			local theta = math.acos(-cosTheta) 
			local invSinTheta = 1/math.sin(theta) 
			startInterp = math.sin((t-1)*theta)*invSinTheta 
			finishInterp = math.sin(t*theta)*invSinTheta 
		else 
			startInterp = t-1 
			finishInterp = t 
		end 
	end 
	return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

local function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CFrame.new(at.x, at.y, at.z,
		right.x, top.x, back.x,
		right.y, top.y, back.y,
		right.z, top.z, back.z)
end



refec.Color = ColorSequence.new(Color3.new(rValue/255,gValue/255,bValue/255))
refec2.Color = ColorSequence.new(Color3.new(rValue/255,gValue/255,bValue/255))
refec3.Color = ColorSequence.new(Color3.new(rValue/255,gValue/255,bValue/255))
tl1.Color = ColorSequence.new(Color3.new(rValue/255,gValue/255,bValue/255))
tl2.Color = ColorSequence.new(Color3.new(rValue/255,gValue/255,bValue/255))
tl3.Color = ColorSequence.new(Color3.new(rValue/255,gValue/255,bValue/255))
tl4.Color = ColorSequence.new(Color3.new(rValue/255,gValue/255,bValue/255))
tl5.Color = ColorSequence.new(Color3.new(rValue/255,gValue/255,bValue/255))
tl6.Color = ColorSequence.new(Color3.new(rValue/255,gValue/255,bValue/255))
tr1.Color = ColorSequence.new(Color3.new(rValue/255,gValue/255,bValue/255))
tr2.Color = ColorSequence.new(Color3.new(rValue/255,gValue/255,bValue/255))
tr3.Color = ColorSequence.new(Color3.new(rValue/255,gValue/255,bValue/255))
tr4.Color = ColorSequence.new(Color3.new(rValue/255,gValue/255,bValue/255))
tr5.Color = ColorSequence.new(Color3.new(rValue/255,gValue/255,bValue/255))
tr6.Color = ColorSequence.new(Color3.new(rValue/255,gValue/255,bValue/255))
m.Parent = Folder
m2.Parent = Folder
mw1.Parent = Folder
mw2.Parent = Folder


MAINRUINCOLOR = Color3.new(rValue/255,gValue/255,bValue/255)
for i, v in pairs(m:GetChildren()) do
	if v:IsA("Part") then
		v.Transparency = _G.TZ
		v.Reflectance = _G.RZ
		v.Color = Color3.new(rValue/255,gValue/255,bValue/255)
		v.Material = _G.Material
	end
end
for i, v in pairs(mw2:GetChildren()) do
	if v:IsA("Part") then
		v.Transparency = _G.TZ
		v.Reflectance = _G.RZ
		v.Color = Color3.new(rValue/255,gValue/255,bValue/255)
		v.Material = _G.Material
	end
end
for i, v in pairs(mw1:GetChildren()) do
	if v:IsA("Part") then
		v.Transparency = _G.TZ
		v.Reflectance = _G.RZ
		v.Color = Color3.new(rValue/255,gValue/255,bValue/255)
		v.Material = _G.Material
	end
end
for i, v in pairs(m2:GetChildren()) do
	if v:IsA("Part") then
		v.Transparency = _G.TZ
		v.Reflectance = _G.RZ
		v.Color = Color3.new(rValue/255,gValue/255,bValue/255)
		v.Material = _G.Material
	end
end
for i, v in pairs(extrawingmod1:GetChildren()) do
	if v:IsA("Part") then
		v.Transparency = _G.TZ
		v.Reflectance = _G.RZ
		v.Color = Color3.new(rValue/255,gValue/255,bValue/255)
		v.Material = _G.Material
	end
end
for i, v in pairs(extrawingmod2:GetChildren()) do
	if v:IsA("Part") then
		v.Transparency = _G.TZ
		v.Reflectance = _G.RZ
		v.Color = Color3.new(rValue/255,gValue/255,bValue/255)
		v.Material = _G.Material
	end
end


while true do
	task.wait(_G.WT)
	if _G.Rainbow == true then
		MAINRUINCOLOR = BrickColor.new(r/255,g/255,b/255)
		refec.Color = ColorSequence.new(Color3.new(rValue/255,gValue/255,bValue/255))
		refec2.Color = ColorSequence.new(Color3.new(rValue/255,gValue/255,bValue/255))
		refec3.Color = ColorSequence.new(Color3.new(rValue/255,gValue/255,bValue/255))
		tl1.Color = ColorSequence.new(Color3.new(rValue/255,gValue/255,bValue/255))
		tl2.Color = ColorSequence.new(Color3.new(rValue/255,gValue/255,bValue/255))
		tl3.Color = ColorSequence.new(Color3.new(rValue/255,gValue/255,bValue/255))
		tl4.Color = ColorSequence.new(Color3.new(rValue/255,gValue/255,bValue/255))
		tl5.Color = ColorSequence.new(Color3.new(rValue/255,gValue/255,bValue/255))
		tl6.Color = ColorSequence.new(Color3.new(rValue/255,gValue/255,bValue/255))
		tr1.Color = ColorSequence.new(Color3.new(rValue/255,gValue/255,bValue/255))
		tr2.Color = ColorSequence.new(Color3.new(rValue/255,gValue/255,bValue/255))
		tr3.Color = ColorSequence.new(Color3.new(rValue/255,gValue/255,bValue/255))
		tr4.Color = ColorSequence.new(Color3.new(rValue/255,gValue/255,bValue/255))
		tr5.Color = ColorSequence.new(Color3.new(rValue/255,gValue/255,bValue/255))
		tr6.Color = ColorSequence.new(Color3.new(rValue/255,gValue/255,bValue/255))
		for i, v in pairs(m:GetChildren()) do
			if v:IsA("Part") then
				v.Color = Color3.new(r/255,g/255,b/255)
			end
		end
		for i, v in pairs(mw2:GetChildren()) do
			if v:IsA("Part") then
				v.Color = Color3.new(r/255,g/255,b/255)
			end
		end
		for i, v in pairs(mw1:GetChildren()) do
			if v:IsA("Part") then
				v.Color = Color3.new(r/255,g/255,b/255)
			end
		end
		for i, v in pairs(extrawingmod1:GetChildren()) do
			if v:IsA("Part") then
				v.Color = Color3.new(r/255,g/255,b/255)
			end
		end
		for i, v in pairs(extrawingmod2:GetChildren()) do
			if v:IsA("Part") then
				v.Color = Color3.new(r/255,g/255,b/255)
			end
		end
	end
	handlexweld.C1 = CLSKR(handlexweld.C1,CFrame.new(0,-2,-2.05)*ANGLES(math.rad(0),math.rad(0),math.rad(0)),1)
	handlex2weld.C1 = CLSKR(handlex2weld.C1,CFrame.new(0,-2,-2.05)*angles(math.rad(0),math.rad(0),math.rad(0)),1)
	handlexweld.C0 = CLSKR(handlexweld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
	handlex2weld.C0 = CLSKR(handlex2weld.C0,CFrame.new(0 + 0.25 * math.cos(sine / 63),0 + 0.25 * math.cos(sine / 70),0 + 0.25 * math.cos(sine / 57))*angles(math.rad(0 + 5 * math.cos(sine / 55)),math.rad(0 + 5 * math.cos(sine / 46)),math.rad(0 + 5 * math.cos(sine / 32))),1)
	rotingweld.C0 = CLSKR(rotingweld.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(0 + 750 * math.cos(sine / 1000))),1)
	rotingweld2.C0 = CLSKR(rotingweld2.C0,CFrame.new(0,0,0)*ANGLES(math.rad(0),math.rad(0),math.rad(-0 - 750 * math.cos(sine / 1000))),1)
	lwing1weld.C1 = CLSKR(lwing1weld.C1,CFrame.new(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(90 + 3600 * COS(sine / 360))),.3)
	lwing2weld.C1 = CLSKR(lwing2weld.C1,CFrame.new(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(147.5 + 3600 * COS(sine / 360))),.3)
	lwing3weld.C1 = CLSKR(lwing3weld.C1,CFrame.new(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(32.5 + 3600 * COS(sine / 360))),.3)
	rwing1weld.C1 = CLSKR(rwing1weld.C1,CFrame.new(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 + 3600 * COS(sine / 360))),.3)
	rwing2weld.C1 = CLSKR(rwing2weld.C1,CFrame.new(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(-147.5 + 3600 * COS(sine / 360))),.3)
	rwing3weld.C1 = CLSKR(rwing3weld.C1,CFrame.new(0 + 2.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),0)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-32.5 + 3600 * COS(sine / 360))),.3)
	lwing4weld.C1 = CLSKR(lwing4weld.C1,CFrame.new(0 - 7.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),-1)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(90 - 3600 * COS(sine / 360))),.3)
	lwing5weld.C1 = CLSKR(lwing5weld.C1,CFrame.new(0 - 7.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),-1)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(147.5 - 3600 * COS(sine / 360))),.3)
	lwing6weld.C1 = CLSKR(lwing6weld.C1,CFrame.new(0 - 7.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),-1)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(32.5 - 3600 * COS(sine / 360))),.3)
	rwing4weld.C1 = CLSKR(rwing4weld.C1,CFrame.new(0 - 7.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),-1)*angles(RAD(0 + 1 * COS(sine / 50)),RAD(0 - 2 * COS(sine / 36)),RAD(-90 - 3600 * COS(sine / 360))),.3)
	rwing5weld.C1 = CLSKR(rwing5weld.C1,CFrame.new(0 - 7.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),-1)*angles(RAD(0 + 1 * COS(sine / 70)),RAD(0 - 2 * COS(sine / 37)),RAD(-147.5 - 3600 * COS(sine / 360))),.3)
	rwing6weld.C1 = CLSKR(rwing6weld.C1,CFrame.new(0 - 7.5 * COS(sine / 180),1.5 + 0.75 * COS(sine / 25),-1)*angles(RAD(0 + 1 * COS(sine / 60)),RAD(0 - 2 * COS(sine / 51)),RAD(-32.5 - 3600 * COS(sine / 360))),.3)
	sine = sine + change
	task.wait(_G.WT)
end
