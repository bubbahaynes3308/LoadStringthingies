_G.HeadSize = _G.HS
_G.Disabled = _G.Enabled
_G.HitboxPart = _G.HBP
_G.Transparency = _G.T
game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character[_G.HitboxPart].Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character[_G.HitboxPart].Transparency = _G.T
v.Character[_G.HitboxPart].BrickColor = BrickColor.new("Really black")
v.Character[_G.HitboxPart].Material = "Neon"
v.Character[_G.HitboxPart].CanCollide = false
v.Character[_G.HitboxPart].Massless = true
end)
end
end
end
end)
