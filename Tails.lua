_G.RTailValue = 255
_G.GTailValue = 255
_G.BTailValue = 255
_G.TailValue = 4
_G.Trans7 = 0
_G.Reflect7 = 0
_G.M3 = "Neon"
_G.XRGB = false
_G.TorsoColorValue = true
_G.UseTorsoColor = _G.TorsoColorValue
_G.NumberOfTails = _G.TailValue
_G.RTValue = _G.RTailValue
_G.GTValue = _G.GTailValue
_G.BTValue = _G.BTailValue
_G.Rxinbxw = _G.XRGB
_G.Material3 = _G.M3
_G.Reflecance3 = _G.Reflect7
_G.Transparency3 = _G.Trans7
local Player = game.Players:GetPlayerFromCharacter(script.Parent)
local Character = Player.Character
local Torso = Character.Torso
local RootPart = Character.HumanoidRootPart
local Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local angles = CFrame.Angles
function clerp(a, b, t)
	local qa = {QuaternionFromCFrame(a)}
	local qb = {QuaternionFromCFrame(b)}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
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
			local recip = 0.5 / s
			return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
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
	return CFrame.new(
		px,
		py,
		pz,
		1 - (yy + zz),
		xy - wz,
		xz + wy,
		xy + wz,
		1 - (xx + zz),
		yz - wx,
		xz - wy,
		yz + wx,
		1 - (xx + yy)
	)
end

function QuaternionSlerp(a, b, t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp, finishInterp
	if cosTheta >= 0.0001 then
		if (1 - cosTheta) > 0.0001 then
			local theta = math.acos(cosTheta)
			local invSinTheta = 1 / math.sin(theta)
			startInterp = math.sin((1 - t) * theta) * invSinTheta
			finishInterp = math.sin(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	else
		if (1 + cosTheta) > 0.0001 then
			local theta = math.acos(-cosTheta)
			local invSinTheta = 1 / math.sin(theta)
			startInterp = math.sin((t - 1) * theta) * invSinTheta
			finishInterp = math.sin(t * theta) * invSinTheta
		else
			startInterp = t - 1
			finishInterp = t
		end
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp +
		b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end

local r = 255
local g = 0
local b = 0
coroutine.resume(
	coroutine.create(
		function()
			while wait() do
				for i = 0, 254 / 5 do
					task.wait(0.01)
					g = g + 5
				end
				for i = 0, 254 / 5 do
					task.wait(0.01)
					r = r - 5
				end
				for i = 0, 254 / 5 do
					task.wait(0.01)
					b = b + 5
				end
				for i = 0, 254 / 5 do
					task.wait(0.01)
					g = g - 5
				end
				for i = 0, 254 / 5 do
					task.wait(0.01)
					r = r + 5
				end
				for i = 0, 254 / 5 do
					task.wait(0.01)
					b = b - 5
				end
			end
		end
	)
)

rayCast = function(Position, Direction, Range, Ignore)
	return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
end
wait(0)
local p = Instance.new("Folder", Character)
p.Name = "Tails"
local pn5 = Instance.new("Part", Character.Tails)
pn5.Name = "Tail1"
pn5.Transparency = 1
pn5.Color = Color3.new(_G.RTValue, _G.GTValue, _G.BTValue)
pn5.Material = _G.Material3
pn5.CanCollide = false
pn5.Massless = true
pn5.TopSurface = 0
pn5.BottomSurface = 0
pn5.Size = Vector3.new(0.2, 0.2, 0.2)
pn5.CustomPhysicalProperties = PhysicalProperties.new(0.01, 0, 0, 0, 0)
local mshn5 = Instance.new("SpecialMesh", pn5)
mshn5.Scale = Vector3.new(2, 2, 2)
mshn5.MeshId = "http://www.roblox.com/asset/?id=188635159"
local pn7 = Instance.new("Part", Character.Tails)
pn7.Name = "Tail2"
pn7.Transparency = 1
pn7.Color = Color3.new(_G.RTValue, _G.GTValue, _G.BTValue)
pn7.Material = _G.Material3
pn7.CanCollide = false
pn7.Massless = true
pn7.TopSurface = 0
pn7.BottomSurface = 0
pn7.Size = Vector3.new(0.2, 0.2, 0.2)
pn7.CustomPhysicalProperties = PhysicalProperties.new(0.01, 0, 0, 0, 0)
local mshn7 = Instance.new("SpecialMesh", pn7)
mshn7.Scale = Vector3.new(2, 2, 2)
mshn7.MeshId = "http://www.roblox.com/asset/?id=188635159"
local pn8 = Instance.new("Part", Character.Tails)
pn8.Name = "Tail3"
pn8.Transparency = 1
pn8.Color = Color3.new(_G.RTValue, _G.GTValue, _G.BTValue)
pn8.Material = _G.Material3
pn8.CanCollide = false
pn8.Massless = true
pn8.TopSurface = 0
pn8.BottomSurface = 0
pn8.Size = Vector3.new(0.2, 0.2, 0.2)
pn8.CustomPhysicalProperties = PhysicalProperties.new(0.01, 0, 0, 0, 0)
local mshn8 = Instance.new("SpecialMesh", pn8)
mshn8.Scale = Vector3.new(2, 2, 2)
mshn8.MeshId = "http://www.roblox.com/asset/?id=188635159"
local pn9 = Instance.new("Part", Character.Tails)
pn9.Name = "Tail4"
pn9.Transparency = 1
pn9.Color = Color3.new(_G.RTValue, _G.GTValue, _G.BTValue)
pn9.Material = _G.Material3
pn9.CanCollide = false
pn9.Massless = true
pn9.TopSurface = 0
pn9.BottomSurface = 0
pn9.Size = Vector3.new(0.2, 0.2, 0.2)
pn9.CustomPhysicalProperties = PhysicalProperties.new(0.01, 0, 0, 0, 0)
local mshn9 = Instance.new("SpecialMesh", pn9)
mshn9.Scale = Vector3.new(2, 2, 2)
mshn9.MeshId = "http://www.roblox.com/asset/?id=188635159"
local motor5 = Instance.new("Weld", pn5)
motor5.Part0 = pn5
motor5.Part1 = Torso
motor5.C0 = CFrame.new(-2.36, -1.8, -0.87) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
motor5.C1 = CFrame.new(0, -1, 0.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
local motor7 = Instance.new("Weld", pn7)
motor7.Part0 = pn7
motor7.Part1 = Torso
motor7.C0 = CFrame.new(-2.36, -1.8, -0.87) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
motor7.C1 = CFrame.new(0, -1, 0.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
local motor8 = Instance.new("Weld", pn8)
motor8.Part0 = pn8
motor8.Part1 = Torso
motor8.C0 = CFrame.new(2.36, -1.8, -0.87) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
motor8.C1 = CFrame.new(0, -1, 0.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
local motor9 = Instance.new("Weld", pn9)
motor9.Part0 = pn9
motor9.Part1 = Torso
motor9.C0 = CFrame.new(2.36, -1.8, -0.87) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
motor9.C1 = CFrame.new(0, -1, 0.5) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
game:GetService("RunService").Stepped:connect(
	function()
		if _G.Rxinbxw == true then
			for _, v in pairs(p:GetChildren()) do
				if v:IsA("Part") then
					v.Color = Color3.new(r / 255, g / 255, b / 255)
				end
			end
		end
		if _G.UseTorsoColor == true then
			for _, v in pairs(p:GetChildren()) do
				if v:IsA("Part") then
					v.Color = Color3.new(Torso.Color.R, Torso.Color.G, Torso.Color.B)
				end
			end
		end
		Torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
		velocity = RootPart.Velocity.y
		sine = sine + change
		local hit, pos =
			rayCast(
				RootPart.Position,
				CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector,
				4,
				Character
			)
		if RootPart.Velocity.y > 1 and hit == nil then
			motor5.C0 =
				clerp(
					motor5.C0,
					CFrame.new(-2.36, -1.8, -0.87) *
					angles(
						math.rad(-60 + 0 * math.cos(sine / 10)),
						math.rad(90 + 0 * math.cos(sine / 10)),
						math.rad(-80 + 0 * math.cos(sine / 25))
					),
					0.1
				)

			motor7.C0 =
				clerp(
					motor7.C0,
					CFrame.new(-2.36, -1.8, -0.87) *
					angles(
						math.rad(-60 + 0 * math.cos(sine / 10)),
						math.rad(90 + 0 * math.cos(sine / 10)),
						math.rad(-80 + 0 * math.cos(sine / 25))
					),
					0.1
				)
			motor8.C0 =
				clerp(
					motor8.C0,
					CFrame.new(-2.36, -1.8, -0.87) *
					angles(
						math.rad(120 + 0 * math.cos(sine / -30)),
						math.rad(110 + 0 * math.cos(sine / 20)),
						math.rad(115 + 0 * math.cos(sine / 10))
					),
					0.1
				)
			motor9.C0 =
				clerp(
					motor9.C0,
					CFrame.new(-2.36, -1.8, -0.87) *
					angles(
						math.rad(120 + 0 * math.cos(sine / -30)),
						math.rad(110 + 0 * math.cos(sine / 20)),
						math.rad(115 + 0 * math.cos(sine / 10))
					),
					0.1
				)
		end
		if RootPart.Velocity.y < -1 and hit == nil then
			motor5.C0 =
				clerp(
					motor5.C0,
					CFrame.new(-2.36, -1.8, -0.87) *
					angles(
						math.rad(-45 + 0 * math.cos(sine / 10)),
						math.rad(0 + 0 * math.cos(sine / 10)),
						math.rad(-70 + 0 * math.cos(sine / 25))
					),
					0.1
				)

			motor7.C0 =
				clerp(
					motor7.C0,
					CFrame.new(-2.36, -1.8, -0.87) *
					angles(
						math.rad(-45 + 0 * math.cos(sine / 10)),
						math.rad(0 + 0 * math.cos(sine / 10)),
						math.rad(-70 + 0 * math.cos(sine / 25))
					),
					0.1
				)
			motor8.C0 =
				clerp(
					motor8.C0,
					CFrame.new(-2.36, -1.8, -0.87) *
					angles(
						math.rad(120 + 0 * math.cos(sine / -30)),
						math.rad(180 + 0 * math.cos(sine / 20)),
						math.rad(115 + 0 * math.cos(sine / 10))
					),
					0.1
				)
			motor9.C0 =
				clerp(
					motor9.C0,
					CFrame.new(-2.36, -1.8, -0.87) *
					angles(
						math.rad(120 + 0 * math.cos(sine / -30)),
						math.rad(180 + 0 * math.cos(sine / 20)),
						math.rad(115 + 0 * math.cos(sine / 10))
					),
					0.1
				)
		end
		if Torsovelocity < 1 and hit ~= nil then
			change = 1

			motor5.C0 =
				clerp(
					motor5.C0,
					CFrame.new(-2.36, -1.8, -0.87) *
					angles(
						math.rad(-50 + 5 * math.cos(sine / 60)),
						math.rad(0 + 5 * math.cos(sine / 65)),
						math.rad(10 + 0 * math.cos(sine / 25))
					),
					0.1
				)

			motor7.C0 =
				clerp(
					motor7.C0,
					CFrame.new(-2.36, -1.8, -0.87) *
					angles(
						math.rad(-50 + 5 * math.cos(sine / 70)),
						math.rad(0 + 5 * math.cos(sine / 35)),
						math.rad(-45 + 0 * math.cos(sine / 25))
					),
					0.1
				)
			motor8.C0 =
				clerp(
					motor8.C0,
					CFrame.new(-2.36, -1.8, -0.87) *
					angles(
						math.rad(-10 + 5 * math.cos(sine / 55)),
						math.rad(0 + 5 * math.cos(sine / 55)),
						math.rad(-150 + 0 * math.cos(sine / 25))
					),
					0.1
				)
			motor9.C0 =
				clerp(
					motor9.C0,
					CFrame.new(-2.36, -1.8, -0.87) *
					angles(
						math.rad(-20 + 5 * math.cos(sine / 65)),
						math.rad(0 + 5 * math.cos(sine / 60)),
						math.rad(-100 + 0 * math.cos(sine / 25))
					),
					0.1
				)
		end
		if Torsovelocity > 2 and hit ~= nil then
			motor5.C0 =
				clerp(
					motor5.C0,
					CFrame.new(-2.36, -1.8, -0.87) *
					angles(
						math.rad(-60 + 10 * math.cos(sine / 30)),
						math.rad(45 + 10 * math.cos(sine / 20)),
						math.rad(-45 + 0 * math.cos(sine / 10))
					),
					0.1
				)

			motor7.C0 =
				clerp(
					motor7.C0,
					CFrame.new(-2.36, -1.8, -0.87) *
					angles(
						math.rad(-60 + 10 * math.cos(sine / 30)),
						math.rad(45 + 10 * math.cos(sine / 20)),
						math.rad(-45 + 0 * math.cos(sine / 10))
					),
					0.1
				)
			motor8.C0 =
				clerp(
					motor8.C0,
					CFrame.new(-2.36, -1.8, -0.87) *
					angles(
						math.rad(120 + 10 * math.cos(sine / -30)),
						math.rad(135 + -10 * math.cos(sine / 20)),
						math.rad(115 + 0 * math.cos(sine / 10))
					),
					0.1
				)
			motor9.C0 =
				clerp(
					motor9.C0,
					CFrame.new(-2.36, -1.8, -0.87) *
					angles(
						math.rad(120 + 10 * math.cos(sine / -30)),
						math.rad(135 + -10 * math.cos(sine / 20)),
						math.rad(115 + 0 * math.cos(sine / 10))
					),
					0.1
				)
		end
	end
)


if _G.NumberOfTails == 1 then
	pn5.Transparency = _G.Transparency3
	pn7.Transparency = 1
	pn8.Transparency = 1
	pn9.Transparency = 1
elseif _G.NumberOfTails == 2 then
	pn5.Transparency = _G.Transparency3
	pn7.Transparency = _G.Transparency3
	pn8.Transparency = 1
	pn9.Transparency = 1
elseif _G.NumberOfTails == 3 then
	pn5.Transparency = _G.Transparency3
	pn7.Transparency = _G.Transparency3
	pn8.Transparency = _G.Transparency3
	pn9.Transparency = 1
elseif _G.NumberOfTails == 4 then
	pn5.Transparency = _G.Transparency3
	pn7.Transparency = _G.Transparency3
	pn8.Transparency = _G.Transparency3
	pn9.Transparency = _G.Transparency3
end
