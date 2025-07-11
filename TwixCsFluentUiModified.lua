local L_1_, L_2_, L_3_ = {}, {
	{
		1,
		'ModuleScript',
		{
			'MainModule'
		},
		{
			{
				18,
				'ModuleScript',
				{
					'Creator'
				}
			},
			{
				28,
				'ModuleScript',
				{
					'Icons'
				}
			},
			{
				47,
				'ModuleScript',
				{
					'Themes'
				},
				{
					{
						50,
						'ModuleScript',
						{
							'Dark'
						}
					},
					{
						52,
						'ModuleScript',
						{
							'Light'
						}
					},
					{
						51,
						'ModuleScript',
						{
							'Darker'
						}
					},
					{
						53,
						'ModuleScript',
						{
							'Rose'
						}
					},
					{
						54,
						'ModuleScript',
						{
							'Typewriter'
						}
					},
					{
						55,
						'ModuleScript',
						{
							'Dark Typewriter'
						}
					},
					{
						56,
						'ModuleScript',
						{
							'VSC Light High Contrast'
						}
					},
					{
						57,
						'ModuleScript',
						{
							'VSC Dark High Contrast'
						}
					},
					{
						58,
						'ModuleScript',
						{
							'Dracula'
						}
					},
					{
						59,
						'ModuleScript',
						{
							'Monokai Pro Dark'
						}
					},
					{
						60,
						'ModuleScript',
						{
							'Aura Dark'
						}
					},
					{
						61,
						'ModuleScript',
						{
							'Primary Dark'
						}
					},
					{
						62,
						'ModuleScript',
						{
							'AnuPuccin Material Mint'
						}
					},
					{
						49,
						'ModuleScript',
						{
							'Aqua'
						}
					},
					{
						48,
						'ModuleScript',
						{
							'Amethyst'
						}
					}
				}
			},
			{
				19,
				'ModuleScript',
				{
					'Elements'
				},
				{
					{
						21,
						'ModuleScript',
						{
							'Colorpicker'
						}
					},
					{
						27,
						'ModuleScript',
						{
							'Toggle'
						}
					},
					{
						23,
						'ModuleScript',
						{
							'Input'
						}
					},
					{
						20,
						'ModuleScript',
						{
							'Button'
						}
					},
					{
						25,
						'ModuleScript',
						{
							'Paragraph'
						}
					},
					{
						22,
						'ModuleScript',
						{
							'Dropdown'
						}
					},
					{
						26,
						'ModuleScript',
						{
							'Slider'
						}
					},
					{
						24,
						'ModuleScript',
						{
							'Keybind'
						}
					}
				}
			},
			{
				29,
				'Folder',
				{
					'Packages'
				},
				{
					{
						30,
						'ModuleScript',
						{
							'Flipper'
						},
						{
							{
								33,
								'ModuleScript',
								{
									'GroupMotor'
								}
							},
							{
								46,
								'ModuleScript',
								{
									'isMotor.spec'
								}
							},
							{
								39,
								'ModuleScript',
								{
									'Signal'
								}
							},
							{
								40,
								'ModuleScript',
								{
									'Signal.spec'
								}
							},
							{
								45,
								'ModuleScript',
								{
									'isMotor'
								}
							},
							{
								36,
								'ModuleScript',
								{
									'Instant.spec'
								}
							},
							{
								44,
								'ModuleScript',
								{
									'Spring.spec'
								}
							},
							{
								42,
								'ModuleScript',
								{
									'SingleMotor.spec'
								}
							},
							{
								38,
								'ModuleScript',
								{
									'Linear.spec'
								}
							},
							{
								31,
								'ModuleScript',
								{
									'BaseMotor'
								}
							},
							{
								43,
								'ModuleScript',
								{
									'Spring'
								}
							},
							{
								35,
								'ModuleScript',
								{
									'Instant'
								}
							},
							{
								37,
								'ModuleScript',
								{
									'Linear'
								}
							},
							{
								41,
								'ModuleScript',
								{
									'SingleMotor'
								}
							},
							{
								34,
								'ModuleScript',
								{
									'GroupMotor.spec'
								}
							},
							{
								32,
								'ModuleScript',
								{
									'BaseMotor.spec'
								}
							}
						}
					}
				}
			},
			{
				2,
				'ModuleScript',
				{
					'Acrylic'
				},
				{
					{
						3,
						'ModuleScript',
						{
							'AcrylicBlur'
						}
					},
					{
						5,
						'ModuleScript',
						{
							'CreateAcrylic'
						}
					},
					{
						6,
						'ModuleScript',
						{
							'Utils'
						}
					},
					{
						4,
						'ModuleScript',
						{
							'AcrylicPaint'
						}
					}
				}
			},
			{
				7,
				'Folder',
				{
					'Components'
				},
				{
					{
						9,
						'ModuleScript',
						{
							'Button'
						}
					},
					{
						12,
						'ModuleScript',
						{
							'Notification'
						}
					},
					{
						13,
						'ModuleScript',
						{
							'Section'
						}
					},
					{
						17,
						'ModuleScript',
						{
							'Window'
						}
					},
					{
						14,
						'ModuleScript',
						{
							'Tab'
						}
					},
					{
						10,
						'ModuleScript',
						{
							'Dialog'
						}
					},
					{
						8,
						'ModuleScript',
						{
							'Assets'
						}
					},
					{
						16,
						'ModuleScript',
						{
							'TitleBar'
						}
					},
					{
						15,
						'ModuleScript',
						{
							'Textbox'
						}
					},
					{
						11,
						'ModuleScript',
						{
							'Element'
						}
					}
				}
			}
		}
	}
}
local L_4_ = {
	function()
		local L_5_, L_6_, L_7_, L_8_, L_9_ = L_3_(1)
		local L_10_, L_11_, L_12_, L_13_, L_14_ = game:GetService'Lighting', game:GetService'Players'.LocalPlayer, game:GetService'UserInputService', game:GetService'TweenService', game:GetService'Workspace'.CurrentCamera
		local L_15_, L_16_ = L_11_:GetMouse(), L_6_
		local L_17_, L_18_, L_19_, L_20_ = L_7_(L_16_.Creator), L_7_(L_16_.Elements), L_7_(L_16_.Acrylic), L_16_.Components
		local L_21_, L_22_, L_23_ = L_7_(L_20_.Notification), L_17_.New, protectui or protect_ui or protectgui or protect_gui or syn and syn.protect_gui or function()
		end
		local L_24_ = L_22_('ScreenGui', {})
		xpcall(function()
			L_24_.Parent = gethui and gethui() or gethiddenui and gethiddenui() or gethiddengui and gethiddengui() or get_hidden_ui and get_hidden_ui() or get_hidden_gui and get_hidden_gui() or game:GetService'CoreGui':WaitForChild('RobloxGui', math.huge)
		end, function()
			L_24_.DisplayOrder = 10
			L_24_.Parent = L_11_:WaitForChild('PlayerGui', math.huge)
		end)
		L_23_(L_24_)
		L_21_:Init(L_24_)
		local L_25_ = {
			Version = '2.0',
			OpenFrames = {},
			Options = {},
			Themes = L_7_(L_16_.Themes).Names,
			Window = nil,
			WindowFrame = nil,
			Unloaded = false,
			Theme = 'Dark',
			DialogOpen = false,
			UseAcrylic = false,
			Acrylic = false,
			Transparency = true,
			MinimizeKeybind = nil,
			MinimizeKey = Enum.KeyCode.LeftControl,
			ShowNotifications = true,
			ShowCallbackErrors = true,
			['Address'] = '36420775',
			GUI = L_24_
		}
		function L_25_.SafeCallback(L_28_arg0, L_29_arg1, ...)
			if not L_29_arg1 then
				return
			end
			local L_30_, L_31_ = pcall(L_29_arg1, ...)
			if not L_30_ then
				local L_32_, L_33_ = L_31_:find':%d+: '
				if not L_33_ then
					return L_25_.ShowCallbackErrors and L_25_:Notify{
						Title = 'Interface',
						Content = 'Callback error',
						SubContent = L_31_,
						Duration = 5
					} or {}
				end
				return L_25_.ShowCallbackErrors and L_25_:Notify{
					Title = 'Interface',
					Content = 'Callback error',
					SubContent = L_31_:sub(L_33_ + 1),
					Duration = 5
				} or {}
			end
		end
		function L_25_.Round(L_34_arg0, L_35_arg1, L_36_arg2)
			if L_36_arg2 == 0 then
				return math.floor(L_35_arg1)
			end
			L_35_arg1 = tostring(L_35_arg1)
			return L_35_arg1:find'%.' and tonumber(L_35_arg1:sub(1, L_35_arg1:find'%.' + L_36_arg2)) or tonumber(L_35_arg1)
		end
		local L_26_ = L_7_(L_16_.Icons).assets
		function L_25_.GetIcon(L_37_arg0, L_38_arg1)
			if L_38_arg1 ~= nil and L_26_['lucide-' .. L_38_arg1] then
				return L_26_['lucide-' .. L_38_arg1]
			end
			return nil
		end
		local L_27_ = {}
		L_27_.__index = L_27_
		L_27_.__namecall = function(L_39_arg0, L_40_arg1, ...)
			return L_27_[L_40_arg1](...)
		end
		for L_41_forvar0, L_42_forvar1 in ipairs(L_18_) do
			L_27_['Add' .. L_42_forvar1.__type] = function(L_43_arg0, L_44_arg1, L_45_arg2)
				L_42_forvar1.Container = L_43_arg0.Container
				L_42_forvar1.Type = L_43_arg0.Type
				L_42_forvar1.ScrollFrame = L_43_arg0.ScrollFrame
				L_42_forvar1.Library = L_25_
				return L_42_forvar1:New(L_44_arg1, L_45_arg2)
			end
		end
		L_25_.Elements = L_27_
		function L_25_.CreateWindow(L_46_arg0, L_47_arg1)
			assert(L_47_arg1.Title, 'Window - Missing Title')
			if L_25_.Window then
				print'You cannot create more than one window.'
				return
			end
			L_25_.MinimizeKey = L_47_arg1.MinimizeKey
			L_25_.UseAcrylic = L_47_arg1.Acrylic
			if L_47_arg1.Acrylic then
				L_19_.init()
			end
			local L_48_ = L_7_(L_20_.Window){
				Parent = L_24_,
				Size = L_47_arg1.Size,
				Title = L_47_arg1.Title,
				SubTitle = L_47_arg1.SubTitle,
				TabWidth = L_47_arg1.TabWidth
			}
			L_25_.Window = L_48_
			L_25_:SetTheme(L_47_arg1.Theme)
			return L_48_
		end
		function L_25_.SetTheme(L_49_arg0, L_50_arg1)
			if L_25_.Window and table.find(L_25_.Themes, L_50_arg1) then
				L_25_.Theme = L_50_arg1
				L_17_.UpdateTheme()
			end
		end
		function L_25_.Destroy(L_51_arg0)
			if L_25_.Window then
				L_25_.Unloaded = true
				if L_25_.UseAcrylic then
					L_25_.Window.AcrylicPaint.Model:Destroy()
				end
				L_17_.Disconnect()
				L_25_.GUI:Destroy()
			end
		end
		function L_25_.ToggleAcrylic(L_52_arg0, L_53_arg1)
			if L_25_.Window then
				if L_25_.UseAcrylic then
					L_25_.Acrylic = L_53_arg1
					L_25_.Window.AcrylicPaint.Model.Transparency = L_53_arg1 and 0.98 or 1
					if L_53_arg1 then
						L_19_.Enable()
					else
						L_19_.Disable()
					end
				end
			end
		end
		function L_25_.ToggleTransparency(L_54_arg0, L_55_arg1)
			if L_25_.Window then
				L_25_.Window.AcrylicPaint.Frame.Background.BackgroundTransparency = L_55_arg1 and 0.35 or 0
			end
		end
		function L_25_.Notify(L_56_arg0, L_57_arg1)
			return (L_25_.ShowNotifications or L_57_arg1.InterfaceToggle) and L_21_:New(L_57_arg1) or {}
		end
		return L_25_
	end,
	function()
		local L_58_, L_59_, L_60_, L_61_, L_62_ = L_3_(2)
		local L_63_ = {
			AcrylicBlur = L_60_(L_59_.AcrylicBlur),
			CreateAcrylic = L_60_(L_59_.CreateAcrylic),
			AcrylicPaint = L_60_(L_59_.AcrylicPaint)
		}
		function L_63_.init()
			local L_64_ = Instance.new'DepthOfFieldEffect'
			L_64_.FarIntensity = 0
			L_64_.InFocusRadius = 0.1
			L_64_.NearIntensity = 1
			local L_65_ = {}
			function L_63_.Enable()
				for L_67_forvar0, L_68_forvar1 in pairs(L_65_) do
					L_68_forvar1.Enabled = false
				end
				L_64_.Parent = game:GetService'Lighting'
			end
			function L_63_.Disable()
				for L_69_forvar0, L_70_forvar1 in pairs(L_65_) do
					L_70_forvar1.Enabled = L_70_forvar1.enabled
				end
				L_64_.Parent = nil
			end
			local L_66_ = function()
				local L_71_ = function(L_72_arg0)
					if L_72_arg0:IsA'DepthOfFieldEffect' then
						L_65_[L_72_arg0] = {
							enabled = L_72_arg0.Enabled
						}
					end
				end
				for L_73_forvar0, L_74_forvar1 in pairs(game:GetService'Lighting':GetChildren()) do
					L_71_(L_74_forvar1)
				end
				if game:GetService'Workspace'.CurrentCamera then
					for L_75_forvar0, L_76_forvar1 in pairs(game:GetService'Workspace'.CurrentCamera:GetChildren()) do
						L_71_(L_76_forvar1)
					end
				end
			end
			L_66_()
			L_63_.Enable()
		end
		return L_63_
	end,
	function()
		local L_77_, L_78_, L_79_, L_80_, L_81_ = L_3_(3)
		local L_82_, L_83_, L_84_, L_85_ = L_79_(L_78_.Parent.Parent.Creator), L_79_(L_78_.Parent.CreateAcrylic), unpack(L_79_(L_78_.Parent.Utils))
		local L_86_ = function(L_87_arg0)
			local L_88_ = {}
			L_87_arg0 = L_87_arg0 or 0.001
			local L_89_, L_90_ = {
				topLeft = Vector2.new(),
				topRight = Vector2.new(),
				bottomRight = Vector2.new()
			}, L_83_()
			L_90_.Parent = workspace
			local L_91_, L_92_ = function(L_95_arg0, L_96_arg1)
				L_89_.topLeft = L_96_arg1
				L_89_.topRight = L_96_arg1 + Vector2.new(L_95_arg0.X, 0)
				L_89_.bottomRight = L_96_arg1 + L_95_arg0
			end, function()
				local L_97_ = game:GetService'Workspace'.CurrentCamera
				if L_97_ then
					L_97_ = L_97_.CFrame
				end
				local L_98_ = L_97_
				if not L_98_ then
					L_98_ = CFrame.new()
				end
				local L_99_, L_100_, L_101_, L_102_ = L_98_, L_89_.topLeft, L_89_.topRight, L_89_.bottomRight
				local L_103_, L_104_, L_105_ = L_84_(L_100_, L_87_arg0), L_84_(L_101_, L_87_arg0), L_84_(L_102_, L_87_arg0)
				local L_106_, L_107_ = (L_104_ - L_103_).Magnitude, (L_104_ - L_105_).Magnitude
				L_90_.CFrame = CFrame.fromMatrix((L_103_ + L_105_) / 2, L_99_.XVector, L_99_.YVector, L_99_.ZVector)
				L_90_.Mesh.Scale = Vector3.new(L_106_, L_107_, 0)
			end
			local L_93_, L_94_ = function(L_108_arg0)
				local L_109_ = L_85_()
				local L_110_, L_111_ = L_108_arg0.AbsoluteSize - Vector2.new(L_109_, L_109_), L_108_arg0.AbsolutePosition + Vector2.new(L_109_ / 2, L_109_ / 2)
				L_91_(L_110_, L_111_)
				task.spawn(L_92_)
			end, function()
				local L_112_ = game:GetService'Workspace'.CurrentCamera
				if not L_112_ then
					return
				end
				table.insert(L_88_, L_112_:GetPropertyChangedSignal'CFrame':Connect(L_92_))
				table.insert(L_88_, L_112_:GetPropertyChangedSignal'ViewportSize':Connect(L_92_))
				table.insert(L_88_, L_112_:GetPropertyChangedSignal'FieldOfView':Connect(L_92_))
				task.spawn(L_92_)
			end
			L_90_.Destroying:Connect(function()
				for L_113_forvar0, L_114_forvar1 in L_88_ do
					pcall(function()
						L_114_forvar1:Disconnect()
					end)
				end
			end)
			L_94_()
			return L_93_, L_90_
		end
		return function(L_115_arg0)
			local L_116_, L_117_, L_118_ = {}, L_86_(L_115_arg0)
			local L_119_ = L_82_.New('Frame', {
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1)
			})
			L_82_.AddSignal(L_119_:GetPropertyChangedSignal'AbsolutePosition', function()
				L_117_(L_119_)
			end)
			L_82_.AddSignal(L_119_:GetPropertyChangedSignal'AbsoluteSize', function()
				L_117_(L_119_)
			end)
			L_116_.AddParent = function(L_120_arg0)
				L_82_.AddSignal(L_120_arg0:GetPropertyChangedSignal'Visible', function()
					L_116_.SetVisibility(L_120_arg0.Visible)
				end)
			end
			L_116_.SetVisibility = function(L_121_arg0)
				L_118_.Transparency = L_121_arg0 and 0.98 or 1
			end
			L_116_.Frame = L_119_
			L_116_.Model = L_118_
			return L_116_
		end
	end,
	function()
		local L_122_, L_123_, L_124_, L_125_, L_126_ = L_3_(4)
		local L_127_, L_128_ = L_124_(L_123_.Parent.Parent.Creator), L_124_(L_123_.Parent.AcrylicBlur)
		local L_129_ = L_127_.New
		return function(L_130_arg0)
			local L_131_ = {}
			L_131_.Frame = L_129_('Frame', {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 0.9,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BorderSizePixel = 0
			}, {
				L_129_('ImageLabel', {
					Image = 'rbxassetid://8992230677',
					ScaleType = 'Slice',
					SliceCenter = Rect.new(Vector2.new(99, 99), Vector2.new(99, 99)),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Size = UDim2.new(1, 120, 1, 116),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					BackgroundTransparency = 1,
					ImageColor3 = Color3.fromRGB(0, 0, 0),
					ImageTransparency = 0.7
				}),
				L_129_('UICorner', {
					CornerRadius = UDim.new(0, 8)
				}),
				L_129_('Frame', {
					BackgroundTransparency = 0.45,
					Size = UDim2.fromScale(1, 1),
					Name = 'Background',
					ThemeTag = {
						BackgroundColor3 = 'AcrylicMain'
					}
				}, {
					L_129_('UICorner', {
						CornerRadius = UDim.new(0, 8)
					})
				}),
				L_129_('Frame', {
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 0.4,
					Size = UDim2.fromScale(1, 1)
				}, {
					L_129_('UICorner', {
						CornerRadius = UDim.new(0, 8)
					}),
					L_129_('UIGradient', {
						Rotation = 90,
						ThemeTag = {
							Color = 'AcrylicGradient'
						}
					})
				}),
				L_129_('ImageLabel', {
					Image = 'rbxassetid://9968344105',
					ImageTransparency = 0.98,
					ScaleType = Enum.ScaleType.Tile,
					TileSize = UDim2.new(0, 128, 0, 128),
					Size = UDim2.fromScale(1, 1),
					BackgroundTransparency = 1
				}, {
					L_129_('UICorner', {
						CornerRadius = UDim.new(0, 8)
					})
				}),
				L_129_('ImageLabel', {
					Image = 'rbxassetid://9968344227',
					ImageTransparency = 0.9,
					ScaleType = Enum.ScaleType.Tile,
					TileSize = UDim2.new(0, 128, 0, 128),
					Size = UDim2.fromScale(1, 1),
					BackgroundTransparency = 1,
					ThemeTag = {
						ImageTransparency = 'AcrylicNoise'
					}
				}, {
					L_129_('UICorner', {
						CornerRadius = UDim.new(0, 8)
					})
				}),
				L_129_('Frame', {
					BackgroundTransparency = 1,
					Size = UDim2.fromScale(1, 1),
					ZIndex = 2
				}, {
					L_129_('UICorner', {
						CornerRadius = UDim.new(0, 8)
					}),
					L_129_('UIStroke', {
						Transparency = 0.5,
						Thickness = 1,
						ThemeTag = {
							Color = 'AcrylicBorder'
						}
					})
				})
			})
			local L_132_
			if L_124_(L_123_.Parent.Parent).UseAcrylic then
				L_132_ = L_128_()
				L_132_.Frame.Parent = L_131_.Frame
				L_131_.Model = L_132_.Model
				L_131_.AddParent = L_132_.AddParent
				L_131_.SetVisibility = L_132_.SetVisibility
			end
			return L_131_
		end
	end,
	function()
		local L_133_, L_134_, L_135_, L_136_, L_137_ = L_3_(5)
		local L_138_ = L_134_.Parent.Parent
		local L_139_ = L_135_(L_138_.Creator)
		local L_140_ = function()
			local L_141_ = L_139_.New('Part', {
				Name = 'Body',
				Color = Color3.new(0, 0, 0),
				Material = Enum.Material.Glass,
				Size = Vector3.new(1, 1, 0),
				Anchored = true,
				CanCollide = false,
				Locked = true,
				CastShadow = false,
				Transparency = 0.98
			}, {
				L_139_.New('SpecialMesh', {
					MeshType = Enum.MeshType.Brick,
					Offset = Vector3.new(0, 0, -1)
				})
			})
			return L_141_
		end
		return L_140_
	end,
	function()
		local L_142_, L_143_, L_144_, L_145_, L_146_ = L_3_(6)
		local L_147_, L_148_ = function(L_150_arg0, L_151_arg1, L_152_arg2, L_153_arg3, L_154_arg4)
			return (L_150_arg0 - L_151_arg1) * (L_154_arg4 - L_153_arg3) / (L_152_arg2 - L_151_arg1) + L_153_arg3
		end, function(L_155_arg0, L_156_arg1)
			local L_157_ = game:GetService'Workspace'.CurrentCamera:ScreenPointToRay(L_155_arg0.X, L_155_arg0.Y)
			return L_157_.Origin + L_157_.Direction * L_156_arg1
		end
		local L_149_ = function()
			local L_158_ = game:GetService'Workspace'.CurrentCamera.ViewportSize.Y
			return L_147_(L_158_, 0, 2560, 8, 56)
		end
		return {
			L_148_,
			L_149_
		}
	end,
	[8] = function()
		local L_159_, L_160_, L_161_, L_162_, L_163_ = L_3_(8)
		return {
			Close = 'rbxassetid://9886659671',
			Min = 'rbxassetid://9886659276',
			Max = 'rbxassetid://9886659406',
			Restore = 'rbxassetid://9886659001'
		}
	end,
	[9] = function()
		local L_164_, L_165_, L_166_, L_167_, L_168_ = L_3_(9)
		local L_169_ = L_165_.Parent.Parent
		local L_170_, L_171_ = L_166_(L_169_.Packages.Flipper), L_166_(L_169_.Creator)
		local L_172_, L_173_ = L_171_.New, L_170_.Spring.new
		return function(L_174_arg0, L_175_arg1, L_176_arg2)
			L_176_arg2 = L_176_arg2 or false
			local L_177_ = {}
			L_177_.Title = L_172_('TextLabel', {
				FontFace = Font.new'rbxasset://fonts/families/GothamSSm.json',
				TextColor3 = Color3.fromRGB(200, 200, 200),
				TextSize = 14,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Center,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
				ThemeTag = {
					TextColor3 = 'Text'
				}
			})
			L_177_.HoverFrame = L_172_('Frame', {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
				ThemeTag = {
					BackgroundColor3 = 'Hover'
				}
			}, {
				L_172_('UICorner', {
					CornerRadius = UDim.new(0, 4)
				})
			})
			L_177_.Frame = L_172_('TextButton', {
				Size = UDim2.new(0, 0, 0, 32),
				Parent = L_175_arg1,
				ThemeTag = {
					BackgroundColor3 = 'DialogButton'
				}
			}, {
				L_172_('UICorner', {
					CornerRadius = UDim.new(0, 4)
				}),
				L_172_('UIStroke', {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Transparency = 0.65,
					ThemeTag = {
						Color = 'DialogButtonBorder'
					}
				}),
				L_177_.HoverFrame,
				L_177_.Title
			})
			local L_178_, L_179_ = L_171_.SpringMotor(1, L_177_.HoverFrame, 'BackgroundTransparency', L_176_arg2)
			L_171_.AddSignal(L_177_.Frame.MouseEnter, function()
				L_179_(0.97)
			end)
			L_171_.AddSignal(L_177_.Frame.MouseLeave, function()
				L_179_(1)
			end)
			L_171_.AddSignal(L_177_.Frame.MouseButton1Down, function()
				L_179_(1)
			end)
			L_171_.AddSignal(L_177_.Frame.MouseButton1Up, function()
				L_179_(0.97)
			end)
			return L_177_
		end
	end,
	[10] = function()
		local L_180_, L_181_, L_182_, L_183_, L_184_ = L_3_(10)
		local L_185_, L_186_, L_187_, L_188_ = game:GetService'UserInputService', game:GetService'Players'.LocalPlayer:GetMouse(), game:GetService'Workspace'.CurrentCamera, L_181_.Parent.Parent
		local L_189_, L_190_ = L_182_(L_188_.Packages.Flipper), L_182_(L_188_.Creator)
		local L_191_, L_192_, L_193_, L_194_ = L_189_.Spring.new, L_189_.Instant.new, L_190_.New, {
			Window = nil
		}
		function L_194_.Init(L_195_arg0, L_196_arg1)
			L_194_.Window = L_196_arg1
			return L_194_
		end
		function L_194_.Create(L_197_arg0)
			local L_198_ = {
				Buttons = 0
			}
			L_198_.TintFrame = L_193_('TextButton', {
				Text = '',
				Size = UDim2.fromScale(1, 1),
				BackgroundColor3 = Color3.fromRGB(0, 0, 0),
				BackgroundTransparency = 1,
				Parent = L_194_.Window.Root
			}, {
				L_193_('UICorner', {
					CornerRadius = UDim.new(0, 8)
				})
			})
			local L_199_, L_200_ = L_190_.SpringMotor(1, L_198_.TintFrame, 'BackgroundTransparency', true)
			L_198_.ButtonHolder = L_193_('Frame', {
				Size = UDim2.new(1, -40, 1, -40),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				BackgroundTransparency = 1
			}, {
				L_193_('UIListLayout', {
					Padding = UDim.new(0, 10),
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder
				})
			})
			L_198_.ButtonHolderFrame = L_193_('Frame', {
				Size = UDim2.new(1, 0, 0, 70),
				Position = UDim2.new(0, 0, 1, -70),
				ThemeTag = {
					BackgroundColor3 = 'DialogHolder'
				}
			}, {
				L_193_('Frame', {
					Size = UDim2.new(1, 0, 0, 1),
					ThemeTag = {
						BackgroundColor3 = 'DialogHolderLine'
					}
				}),
				L_198_.ButtonHolder
			})
			L_198_.Title = L_193_('TextLabel', {
				FontFace = Font.new('rbxasset://fonts/families/GothamSSm.json', Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
				Text = 'Dialog',
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 22,
				TextXAlignment = Enum.TextXAlignment.Left,
				Size = UDim2.new(1, 0, 0, 22),
				Position = UDim2.fromOffset(20, 25),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				ThemeTag = {
					TextColor3 = 'Text'
				}
			})
			L_198_.Scale = L_193_('UIScale', {
				Scale = 1
			})
			local L_201_, L_202_ = L_190_.SpringMotor(1.1, L_198_.Scale, 'Scale')
			L_198_.Root = L_193_('CanvasGroup', {
				Size = UDim2.fromOffset(300, 165),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				GroupTransparency = 1,
				Parent = L_198_.TintFrame,
				ThemeTag = {
					BackgroundColor3 = 'Dialog'
				}
			}, {
				L_193_('UICorner', {
					CornerRadius = UDim.new(0, 8)
				}),
				L_193_('UIStroke', {
					Transparency = 0.5,
					ThemeTag = {
						Color = 'DialogBorder'
					}
				}),
				L_198_.Scale,
				L_198_.Title,
				L_198_.ButtonHolderFrame
			})
			local L_203_, L_204_ = L_190_.SpringMotor(1, L_198_.Root, 'GroupTransparency')
			function L_198_.Open(L_205_arg0)
				L_182_(L_188_).DialogOpen = true
				L_198_.Scale.Scale = 1.1
				L_200_(0.75)
				L_204_(0)
				L_202_(1)
			end
			function L_198_.Close(L_206_arg0)
				L_182_(L_188_).DialogOpen = false
				L_200_(1)
				L_204_(1)
				L_202_(1.1)
				L_198_.Root.UIStroke:Destroy()
				task.wait(0.15)
				L_198_.TintFrame:Destroy()
			end
			function L_198_.Button(L_207_arg0, L_208_arg1, L_209_arg2)
				L_198_.Buttons = L_198_.Buttons + 1
				L_208_arg1 = L_208_arg1 or 'Button'
				L_209_arg2 = L_209_arg2 or function()
				end
				local L_210_ = L_182_(L_188_.Components.Button)('', L_198_.ButtonHolder, true)
				L_210_.Title.Text = L_208_arg1
				for L_211_forvar0, L_212_forvar1 in next, L_198_.ButtonHolder:GetChildren() do
					if L_212_forvar1:IsA'TextButton' then
						L_212_forvar1.Size = UDim2.new(1 / L_198_.Buttons, -(((L_198_.Buttons - 1) * 10) / L_198_.Buttons), 0, 32)
					end
				end
				L_190_.AddSignal(L_210_.Frame.MouseButton1Click, function()
					L_182_(L_188_):SafeCallback(L_209_arg2)
					pcall(function()
						L_198_:Close()
					end)
				end)
				return L_210_
			end
			return L_198_
		end
		return L_194_
	end,
	[11] = function()
		local L_213_, L_214_, L_215_, L_216_, L_217_ = L_3_(11)
		local L_218_ = L_214_.Parent.Parent
		local L_219_, L_220_ = L_215_(L_218_.Packages.Flipper), L_215_(L_218_.Creator)
		local L_221_, L_222_ = L_220_.New, L_219_.Spring.new
		return function(L_223_arg0, L_224_arg1, L_225_arg2, L_226_arg3)
			local L_227_ = {}
			L_227_.TitleLabel = L_221_('TextLabel', {
				FontFace = Font.new('rbxasset://fonts/families/GothamSSm.json', Enum.FontWeight.Medium, Enum.FontStyle.Normal),
				Text = L_223_arg0,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				Size = UDim2.new(1, 0, 0, 14),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				ThemeTag = {
					TextColor3 = 'Text'
				}
			})
			L_227_.DescLabel = L_221_('TextLabel', {
				FontFace = Font.new'rbxasset://fonts/families/GothamSSm.json',
				Text = L_224_arg1,
				TextColor3 = Color3.fromRGB(200, 200, 200),
				TextSize = 12,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 14),
				ThemeTag = {
					TextColor3 = 'SubText'
				}
			})
			L_227_.LabelHolder = L_221_('Frame', {
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				Position = UDim2.fromOffset(10, 0),
				Size = UDim2.new(1, -28, 0, 0)
			}, {
				L_221_('UIListLayout', {
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					Padding = UDim.new(0, 3)
				}),
				L_221_('UIPadding', {
					PaddingBottom = UDim.new(0, 13),
					PaddingTop = UDim.new(0, 13)
				}),
				L_227_.TitleLabel,
				L_227_.DescLabel
			})
			L_227_.Border = L_221_('UIStroke', {
				Transparency = 0.5,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				Color = Color3.fromRGB(0, 0, 0),
				ThemeTag = {
					Color = 'ElementBorder'
				}
			})
			L_227_.Frame = L_221_('TextButton', {
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundTransparency = 0.89,
				BackgroundColor3 = Color3.fromRGB(130, 130, 130),
				Parent = L_225_arg2,
				AutomaticSize = Enum.AutomaticSize.Y,
				Text = '',
				LayoutOrder = 7,
				ThemeTag = {
					BackgroundColor3 = 'Element',
					BackgroundTransparency = 'ElementTransparency'
				}
			}, {
				L_221_('UICorner', {
					CornerRadius = UDim.new(0, 4)
				}),
				L_227_.Border,
				L_227_.LabelHolder
			})
			function L_227_.SetTitle(L_228_arg0, L_229_arg1)
				L_227_.TitleLabel.Text = L_229_arg1
			end
			function L_227_.SetDesc(L_230_arg0, L_231_arg1)
				if L_231_arg1 == nil then
					L_231_arg1 = ''
				end
				if L_231_arg1 == '' then
					L_227_.DescLabel.Visible = false
				else
					L_227_.DescLabel.Visible = true
				end
				L_227_.DescLabel.Text = L_231_arg1
			end
			function L_227_.Destroy(L_232_arg0)
				L_227_.Frame:Destroy()
			end
			L_227_:SetTitle(L_223_arg0)
			L_227_:SetDesc(L_224_arg1)
			if L_226_arg3 then
				local L_233_, L_234_, L_235_ = L_218_.Themes, L_220_.SpringMotor(L_220_.GetThemeProperty'ElementTransparency', L_227_.Frame, 'BackgroundTransparency', false, true)
				L_220_.AddSignal(L_227_.Frame.MouseEnter, function()
					L_235_(L_220_.GetThemeProperty'ElementTransparency' - L_220_.GetThemeProperty'HoverChange')
				end)
				L_220_.AddSignal(L_227_.Frame.MouseLeave, function()
					L_235_(L_220_.GetThemeProperty'ElementTransparency')
				end)
				L_220_.AddSignal(L_227_.Frame.MouseButton1Down, function()
					L_235_(L_220_.GetThemeProperty'ElementTransparency' + L_220_.GetThemeProperty'HoverChange')
				end)
				L_220_.AddSignal(L_227_.Frame.MouseButton1Up, function()
					L_235_(L_220_.GetThemeProperty'ElementTransparency' - L_220_.GetThemeProperty'HoverChange')
				end)
			end
			return L_227_
		end
	end,
	[12] = function()
		local L_236_, L_237_, L_238_, L_239_, L_240_ = L_3_(12)
		local L_241_ = L_237_.Parent.Parent
		local L_242_, L_243_, L_244_ = L_238_(L_241_.Packages.Flipper), L_238_(L_241_.Creator), L_238_(L_241_.Acrylic)
		local L_245_, L_246_, L_247_, L_248_ = L_242_.Spring.new, L_242_.Instant.new, L_243_.New, {}
		function L_248_.Init(L_249_arg0, L_250_arg1)
			L_248_.Holder = L_247_('Frame', {
				Position = UDim2.new(1, -30, 1, -30),
				Size = UDim2.new(0, 310, 1, -30),
				AnchorPoint = Vector2.new(1, 1),
				BackgroundTransparency = 1,
				Parent = L_250_arg1
			}, {
				L_247_('UIListLayout', {
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Bottom,
					Padding = UDim.new(0, 20)
				})
			})
		end
		function L_248_.New(L_251_arg0, L_252_arg1)
			L_252_arg1.Title = L_252_arg1.Title or 'Title'
			L_252_arg1.Content = L_252_arg1.Content or 'Content'
			L_252_arg1.SubContent = L_252_arg1.SubContent or ''
			L_252_arg1.Duration = L_252_arg1.Duration or nil
			L_252_arg1.Buttons = L_252_arg1.Buttons or {}
			local L_253_ = {
				Closed = false
			}
			L_253_.AcrylicPaint = L_244_.AcrylicPaint()
			L_253_.Title = L_247_('TextLabel', {
				Position = UDim2.new(0, 14, 0, 17),
				Text = L_252_arg1.Title,
				RichText = true,
				TextColor3 = Color3.fromRGB(255, 255, 255),
				TextTransparency = 0,
				FontFace = Font.new'rbxasset://fonts/families/GothamSSm.json',
				TextSize = 13,
				TextXAlignment = 'Left',
				TextYAlignment = 'Center',
				Size = UDim2.new(1, -12, 0, 12),
				TextWrapped = true,
				BackgroundTransparency = 1,
				ThemeTag = {
					TextColor3 = 'Text'
				}
			})
			L_253_.ContentLabel = L_247_('TextLabel', {
				FontFace = Font.new'rbxasset://fonts/families/GothamSSm.json',
				Text = L_252_arg1.Content,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left,
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = UDim2.new(1, 0, 0, 14),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				TextWrapped = true,
				ThemeTag = {
					TextColor3 = 'Text'
				}
			})
			L_253_.SubContentLabel = L_247_('TextLabel', {
				FontFace = Font.new'rbxasset://fonts/families/GothamSSm.json',
				Text = L_252_arg1.SubContent,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left,
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = UDim2.new(1, 0, 0, 14),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				TextWrapped = true,
				ThemeTag = {
					TextColor3 = 'SubText'
				}
			})
			L_253_.LabelHolder = L_247_('Frame', {
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				Position = UDim2.fromOffset(14, 40),
				Size = UDim2.new(1, -28, 0, 0)
			}, {
				L_247_('UIListLayout', {
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					Padding = UDim.new(0, 3)
				}),
				L_253_.ContentLabel,
				L_253_.SubContentLabel
			})
			L_253_.CloseButton = L_247_('TextButton', {
				Text = '',
				Position = UDim2.new(1, -14, 0, 13),
				Size = UDim2.fromOffset(20, 20),
				AnchorPoint = Vector2.new(1, 0),
				BackgroundTransparency = 1
			}, {
				L_247_('ImageLabel', {
					Image = L_238_(L_237_.Parent.Assets).Close,
					Size = UDim2.fromOffset(16, 16),
					Position = UDim2.fromScale(0.5, 0.5),
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 1,
					ThemeTag = {
						ImageColor3 = 'Text'
					}
				})
			})
			L_253_.Root = L_247_('Frame', {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.fromScale(1, 0)
			}, {
				L_253_.AcrylicPaint.Frame,
				L_253_.Title,
				L_253_.CloseButton,
				L_253_.LabelHolder
			})
			if L_252_arg1.Content == '' then
				L_253_.ContentLabel.Visible = false
			end
			if L_252_arg1.SubContent == '' then
				L_253_.SubContentLabel.Visible = false
			end
			L_253_.Holder = L_247_('Frame', {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 200),
				Parent = L_248_.Holder
			}, {
				L_253_.Root
			})
			local L_254_ = L_242_.GroupMotor.new{
				Scale = 1,
				Offset = 60
			}
			L_254_:onStep(function(L_255_arg0)
				L_253_.Root.Position = UDim2.new(L_255_arg0.Scale, L_255_arg0.Offset, 0, 0)
			end)
			L_243_.AddSignal(L_253_.CloseButton.MouseButton1Click, function()
				L_253_:Close()
			end)
			function L_253_.Open(L_256_arg0)
				local L_257_ = L_253_.LabelHolder.AbsoluteSize.Y
				L_253_.Holder.Size = UDim2.new(1, 0, 0, 58 + L_257_)
				L_254_:setGoal{
					Scale = L_245_(0, {
						frequency = 5
					}),
					Offset = L_245_(0, {
						frequency = 5
					})
				}
			end
			function L_253_.Close(L_258_arg0)
				if not L_253_.Closed then
					L_253_.Closed = true
					task.spawn(function()
						L_254_:setGoal{
							Scale = L_245_(1, {
								frequency = 5
							}),
							Offset = L_245_(60, {
								frequency = 5
							})
						}
						task.wait(0.4)
						if L_238_(L_241_).UseAcrylic then
							L_253_.AcrylicPaint.Model:Destroy()
						end
						L_253_.Holder:Destroy()
					end)
					if L_252_arg1.InterfaceToggle then
						L_1_.Minimized = not L_1_.Minimized
						L_1_.Root.Visible = not L_1_.Minimized
					end
				end
			end
			L_253_:Open()
			if L_252_arg1.Duration then
				task.delay(L_252_arg1.Duration, function()
					L_253_:Close()
				end)
			end
			return L_253_
		end
		return L_248_
	end,
	[13] = function()
		local L_259_, L_260_, L_261_, L_262_, L_263_ = L_3_(13)
		local L_264_ = L_260_.Parent.Parent
		local L_265_ = L_261_(L_264_.Creator)
		local L_266_ = L_265_.New
		return function(L_267_arg0, L_268_arg1)
			local L_269_ = {}
			L_269_.Layout = L_266_('UIListLayout', {
				Padding = UDim.new(0, 5)
			})
			L_269_.Container = L_266_('Frame', {
				Size = UDim2.new(1, 0, 0, 26),
				Position = UDim2.fromOffset(0, 24),
				BackgroundTransparency = 1
			}, {
				L_269_.Layout
			})
			L_269_.Root = L_266_('Frame', {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 26),
				LayoutOrder = 7,
				Parent = L_268_arg1
			}, {
				L_266_('TextLabel', {
					RichText = true,
					Text = L_267_arg0,
					TextTransparency = 0,
					FontFace = Font.new('rbxassetid://12187365364', Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
					TextSize = 18,
					TextXAlignment = 'Left',
					TextYAlignment = 'Center',
					Size = UDim2.new(1, -16, 0, 18),
					Position = UDim2.fromOffset(0, 2),
					ThemeTag = {
						TextColor3 = 'Text'
					}
				}),
				L_269_.Container
			})
			L_265_.AddSignal(L_269_.Layout:GetPropertyChangedSignal'AbsoluteContentSize', function()
				L_269_.Container.Size = UDim2.new(1, 0, 0, L_269_.Layout.AbsoluteContentSize.Y)
				L_269_.Root.Size = UDim2.new(1, 0, 0, L_269_.Layout.AbsoluteContentSize.Y + 25)
			end)
			return L_269_
		end
	end,
	[14] = function()
		local L_270_, L_271_, L_272_, L_273_, L_274_ = L_3_(14)
		local L_275_ = L_271_.Parent.Parent
		local L_276_, L_277_ = L_272_(L_275_.Packages.Flipper), L_272_(L_275_.Creator)
		local L_278_, L_279_, L_280_, L_281_, L_282_ = L_277_.New, L_276_.Spring.new, L_276_.Instant.new, L_275_.Components, {
			Window = nil,
			Tabs = {},
			Containers = {},
			SelectedTab = 0,
			TabCount = 0
		}
		function L_282_.Init(L_283_arg0, L_284_arg1)
			L_282_.Window = L_284_arg1
			return L_282_
		end
		function L_282_.GetCurrentTabPos(L_285_arg0)
			local L_286_, L_287_ = L_282_.Window.TabHolder.AbsolutePosition.Y, L_282_.Tabs[L_282_.SelectedTab].Frame.AbsolutePosition.Y
			return L_287_ - L_286_
		end
		function L_282_.New(L_288_arg0, L_289_arg1, L_290_arg2, L_291_arg3)
			local L_292_, L_293_ = L_272_(L_275_), L_282_.Window
			local L_294_ = L_292_.Elements
			L_282_.TabCount = L_282_.TabCount + 1
			local L_295_, L_296_ = L_282_.TabCount, {
				Selected = false,
				Name = L_289_arg1,
				Type = 'Tab'
			}
			if L_292_:GetIcon(L_290_arg2) then
				L_290_arg2 = L_292_:GetIcon(L_290_arg2)
			end
			if L_290_arg2 == '' or nil then
				L_290_arg2 = nil
			end
			L_296_.Frame = L_278_('TextButton', {
				Size = UDim2.new(1, 0, 0, 34),
				BackgroundTransparency = 1,
				Parent = L_291_arg3,
				ThemeTag = {
					BackgroundColor3 = 'Tab'
				}
			}, {
				L_278_('UICorner', {
					CornerRadius = UDim.new(0, 6)
				}),
				L_278_('TextLabel', {
					AnchorPoint = Vector2.new(0, 0.5),
					Position = L_290_arg2 and UDim2.new(0, 30, 0.5, 0) or UDim2.new(0, 12, 0.5, 0),
					Text = L_289_arg1,
					RichText = true,
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextTransparency = 0,
					FontFace = Font.new('rbxasset://fonts/families/GothamSSm.json', Enum.FontWeight.Regular, Enum.FontStyle.Normal),
					TextSize = 12,
					TextXAlignment = 'Left',
					TextYAlignment = 'Center',
					Size = UDim2.new(1, -12, 1, 0),
					BackgroundTransparency = 1,
					ThemeTag = {
						TextColor3 = 'Text'
					}
				}),
				L_278_('ImageLabel', {
					AnchorPoint = Vector2.new(0, 0.5),
					Size = UDim2.fromOffset(16, 16),
					Position = UDim2.new(0, 8, 0.5, 0),
					BackgroundTransparency = 1,
					Image = L_290_arg2 and L_290_arg2 or nil,
					ThemeTag = {
						ImageColor3 = 'Text'
					}
				})
			})
			local L_297_ = L_278_('UIListLayout', {
				Padding = UDim.new(0, 5),
				SortOrder = Enum.SortOrder.LayoutOrder
			})
			L_296_.ContainerFrame = L_278_('ScrollingFrame', {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
				Parent = L_293_.ContainerHolder,
				Visible = false,
				BottomImage = 'rbxassetid://6889812791',
				MidImage = 'rbxassetid://6889812721',
				TopImage = 'rbxassetid://6276641225',
				ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255),
				ScrollBarImageTransparency = 0.95,
				ScrollBarThickness = 3,
				BorderSizePixel = 0,
				CanvasSize = UDim2.fromScale(0, 0),
				ScrollingDirection = Enum.ScrollingDirection.Y
			}, {
				L_297_,
				L_278_('UIPadding', {
					PaddingRight = UDim.new(0, 10),
					PaddingLeft = UDim.new(0, 1),
					PaddingTop = UDim.new(0, 1),
					PaddingBottom = UDim.new(0, 1)
				})
			})
			L_277_.AddSignal(L_297_:GetPropertyChangedSignal'AbsoluteContentSize', function()
				L_296_.ContainerFrame.CanvasSize = UDim2.new(0, 0, 0, L_297_.AbsoluteContentSize.Y + 2)
			end)
			L_296_.Motor, L_296_.SetTransparency = L_277_.SpringMotor(1, L_296_.Frame, 'BackgroundTransparency')
			L_277_.AddSignal(L_296_.Frame.MouseEnter, function()
				L_296_.SetTransparency(L_296_.Selected and 0.85 or 0.89)
			end)
			L_277_.AddSignal(L_296_.Frame.MouseLeave, function()
				L_296_.SetTransparency(L_296_.Selected and 0.89 or 1)
			end)
			L_277_.AddSignal(L_296_.Frame.MouseButton1Down, function()
				L_296_.SetTransparency(0.92)
			end)
			L_277_.AddSignal(L_296_.Frame.MouseButton1Up, function()
				L_296_.SetTransparency(L_296_.Selected and 0.85 or 0.89)
			end)
			L_277_.AddSignal(L_296_.Frame.MouseButton1Click, function()
				L_282_:SelectTab(L_295_)
			end)
			L_282_.Containers[L_295_] = L_296_.ContainerFrame
			L_282_.Tabs[L_295_] = L_296_
			L_296_.Container = L_296_.ContainerFrame
			L_296_.ScrollFrame = L_296_.Container
			function L_296_.AddSection(L_298_arg0, L_299_arg1)
				local L_300_, L_301_ = {
					Type = 'Section'
				}, L_272_(L_281_.Section)(L_299_arg1, L_296_.Container)
				L_300_.Container = L_301_.Container
				L_300_.ScrollFrame = L_296_.Container
				setmetatable(L_300_, L_294_)
				return L_300_
			end
			setmetatable(L_296_, L_294_)
			return L_296_
		end
		function L_282_.SelectTab(L_302_arg0, L_303_arg1)
			local L_304_ = L_282_.Window
			L_282_.SelectedTab = L_303_arg1
			for L_305_forvar0, L_306_forvar1 in next, L_282_.Tabs do
				L_306_forvar1.SetTransparency(1)
				L_306_forvar1.Selected = false
			end
			L_282_.Tabs[L_303_arg1].SetTransparency(0.89)
			L_282_.Tabs[L_303_arg1].Selected = true
			L_304_.TabDisplay.Text = L_282_.Tabs[L_303_arg1].Name
			L_304_.SelectorPosMotor:setGoal(L_279_(L_282_:GetCurrentTabPos(), {
				frequency = 6
			}))
			task.spawn(function()
				L_304_.ContainerPosMotor:setGoal(L_279_(110, {
					frequency = 10
				}))
				L_304_.ContainerBackMotor:setGoal(L_279_(1, {
					frequency = 10
				}))
				task.wait(0.15)
				for L_307_forvar0, L_308_forvar1 in next, L_282_.Containers do
					L_308_forvar1.Visible = false
				end
				L_282_.Containers[L_303_arg1].Visible = true
				L_304_.ContainerPosMotor:setGoal(L_279_(94, {
					frequency = 5
				}))
				L_304_.ContainerBackMotor:setGoal(L_279_(0, {
					frequency = 8
				}))
			end)
		end
		return L_282_
	end,
	[15] = function()
		local L_309_, L_310_, L_311_, L_312_, L_313_ = L_3_(15)
		local L_314_, L_315_ = game:GetService'TextService', L_310_.Parent.Parent
		local L_316_, L_317_ = L_311_(L_315_.Packages.Flipper), L_311_(L_315_.Creator)
		local L_318_ = L_317_.New
		return function(L_319_arg0, L_320_arg1)
			L_320_arg1 = L_320_arg1 or false
			local L_321_ = {}
			L_321_.Input = L_318_('TextBox', {
				FontFace = Font.new'rbxasset://fonts/families/GothamSSm.json',
				TextColor3 = Color3.fromRGB(200, 200, 200),
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
				Position = UDim2.fromOffset(10, 0),
				ThemeTag = {
					TextColor3 = 'Text',
					PlaceholderColor3 = 'SubText'
				}
			})
			L_321_.Container = L_318_('Frame', {
				BackgroundTransparency = 1,
				ClipsDescendants = true,
				Position = UDim2.new(0, 6, 0, 0),
				Size = UDim2.new(1, -12, 1, 0)
			}, {
				L_321_.Input
			})
			L_321_.Indicator = L_318_('Frame', {
				Size = UDim2.new(1, -4, 0, 1),
				Position = UDim2.new(0, 2, 1, 0),
				AnchorPoint = Vector2.new(0, 1),
				BackgroundTransparency = L_320_arg1 and 0.5 or 0,
				ThemeTag = {
					BackgroundColor3 = L_320_arg1 and 'InputIndicator' or 'DialogInputLine'
				}
			})
			L_321_.Frame = L_318_('Frame', {
				Size = UDim2.new(0, 0, 0, 30),
				BackgroundTransparency = L_320_arg1 and 0.9 or 0,
				Parent = L_319_arg0,
				ThemeTag = {
					BackgroundColor3 = L_320_arg1 and 'Input' or 'DialogInput'
				}
			}, {
				L_318_('UICorner', {
					CornerRadius = UDim.new(0, 4)
				}),
				L_318_('UIStroke', {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Transparency = L_320_arg1 and 0.5 or 0.65,
					ThemeTag = {
						Color = L_320_arg1 and 'InElementBorder' or 'DialogButtonBorder'
					}
				}),
				L_321_.Indicator,
				L_321_.Container
			})
			local L_322_ = function()
				local L_323_, L_324_ = 2, L_321_.Container.AbsoluteSize.X
				if not L_321_.Input:IsFocused() or L_321_.Input.TextBounds.X <= L_324_ - 2 * L_323_ then
					L_321_.Input.Position = UDim2.new(0, L_323_, 0, 0)
				else
					local L_325_ = L_321_.Input.CursorPosition
					if L_325_ ~= -1 then
						local L_326_ = string.sub(L_321_.Input.Text, 1, L_325_ - 1)
						local L_327_ = L_314_:GetTextSize(L_326_, L_321_.Input.TextSize, L_321_.Input.Font, Vector2.new(math.huge, math.huge)).X
						local L_328_ = L_321_.Input.Position.X.Offset + L_327_
						if L_328_ < L_323_ then
							L_321_.Input.Position = UDim2.fromOffset(L_323_ - L_327_, 0)
						elseif L_328_ > L_324_ - L_323_ - 1 then
							L_321_.Input.Position = UDim2.fromOffset(L_324_ - L_327_ - L_323_ - 1, 0)
						end
					end
				end
			end
			task.spawn(L_322_)
			L_317_.AddSignal(L_321_.Input:GetPropertyChangedSignal'Text', L_322_)
			L_317_.AddSignal(L_321_.Input:GetPropertyChangedSignal'CursorPosition', L_322_)
			L_317_.AddSignal(L_321_.Input.Focused, function()
				L_322_()
				L_321_.Indicator.Size = UDim2.new(1, -2, 0, 2)
				L_321_.Indicator.Position = UDim2.new(0, 1, 1, 0)
				L_321_.Indicator.BackgroundTransparency = 0
				L_317_.OverrideTag(L_321_.Frame, {
					BackgroundColor3 = L_320_arg1 and 'InputFocused' or 'DialogHolder'
				})
				L_317_.OverrideTag(L_321_.Indicator, {
					BackgroundColor3 = 'Accent'
				})
			end)
			L_317_.AddSignal(L_321_.Input.FocusLost, function()
				L_322_()
				L_321_.Indicator.Size = UDim2.new(1, -4, 0, 1)
				L_321_.Indicator.Position = UDim2.new(0, 2, 1, 0)
				L_321_.Indicator.BackgroundTransparency = 0.5
				L_317_.OverrideTag(L_321_.Frame, {
					BackgroundColor3 = L_320_arg1 and 'Input' or 'DialogInput'
				})
				L_317_.OverrideTag(L_321_.Indicator, {
					BackgroundColor3 = L_320_arg1 and 'InputIndicator' or 'DialogInputLine'
				})
			end)
			return L_321_
		end
	end,
	[16] = function()
		local L_329_, L_330_, L_331_, L_332_, L_333_ = L_3_(16)
		local L_334_, L_335_ = L_330_.Parent.Parent, L_331_(L_330_.Parent.Assets)
		local L_336_, L_337_ = L_331_(L_334_.Creator), L_331_(L_334_.Packages.Flipper)
		local L_338_, L_339_ = L_336_.New, L_336_.AddSignal
		return function(L_340_arg0)
			local L_341_, L_342_, L_343_ = {}, L_331_(L_334_), function(L_344_arg0, L_345_arg1, L_346_arg2, L_347_arg3)
				local L_348_ = {
					Callback = L_347_arg3 or function()
					end
				}
				L_348_.Frame = L_338_('TextButton', {
					Size = UDim2.new(0, 34, 1, -8),
					AnchorPoint = Vector2.new(1, 0),
					BackgroundTransparency = 1,
					Parent = L_346_arg2,
					Position = L_345_arg1,
					Text = '',
					ThemeTag = {
						BackgroundColor3 = 'Text'
					}
				}, {
					L_338_('UICorner', {
						CornerRadius = UDim.new(0, 7)
					}),
					L_338_('ImageLabel', {
						Image = L_344_arg0,
						Size = UDim2.fromOffset(16, 16),
						Position = UDim2.fromScale(0.5, 0.5),
						AnchorPoint = Vector2.new(0.5, 0.5),
						BackgroundTransparency = 1,
						Name = 'Icon',
						ThemeTag = {
							ImageColor3 = 'Text'
						}
					})
				})
				local L_349_, L_350_ = L_336_.SpringMotor(1, L_348_.Frame, 'BackgroundTransparency')
				L_339_(L_348_.Frame.MouseEnter, function()
					L_350_(0.94)
				end)
				L_339_(L_348_.Frame.MouseLeave, function()
					L_350_(1, true)
				end)
				L_339_(L_348_.Frame.MouseButton1Down, function()
					L_350_(0.96)
				end)
				L_339_(L_348_.Frame.MouseButton1Up, function()
					L_350_(0.94)
				end)
				L_339_(L_348_.Frame.MouseButton1Click, L_348_.Callback)
				L_348_.SetCallback = function(L_351_arg0)
					L_348_.Callback = L_351_arg0
				end
				return L_348_
			end
			L_341_.Frame = L_338_('Frame', {
				Size = UDim2.new(1, 0, 0, 42),
				BackgroundTransparency = 1,
				Parent = L_340_arg0.Parent
			}, {
				L_338_('Frame', {
					Size = UDim2.new(1, -16, 1, 0),
					Position = UDim2.new(0, 16, 0, 0),
					BackgroundTransparency = 1
				}, {
					L_338_('UIListLayout', {
						Padding = UDim.new(0, 5),
						FillDirection = Enum.FillDirection.Horizontal,
						SortOrder = Enum.SortOrder.LayoutOrder
					}),
					L_338_('TextLabel', {
						RichText = true,
						Text = L_340_arg0.Title,
						FontFace = Font.new('rbxasset://fonts/families/GothamSSm.json', Enum.FontWeight.Regular, Enum.FontStyle.Normal),
						TextSize = 12,
						TextXAlignment = 'Left',
						TextYAlignment = 'Center',
						Size = UDim2.fromScale(0, 1),
						AutomaticSize = Enum.AutomaticSize.X,
						BackgroundTransparency = 1,
						ThemeTag = {
							TextColor3 = 'Text'
						}
					}),
					L_338_('TextLabel', {
						RichText = true,
						Text = L_340_arg0.SubTitle,
						TextTransparency = 0.4,
						FontFace = Font.new('rbxasset://fonts/families/GothamSSm.json', Enum.FontWeight.Regular, Enum.FontStyle.Normal),
						TextSize = 12,
						TextXAlignment = 'Left',
						TextYAlignment = 'Center',
						Size = UDim2.fromScale(0, 1),
						AutomaticSize = Enum.AutomaticSize.X,
						BackgroundTransparency = 1,
						ThemeTag = {
							TextColor3 = 'Text'
						}
					})
				}),
				L_338_('Frame', {
					BackgroundTransparency = 0.5,
					Size = UDim2.new(1, 0, 0, 1),
					Position = UDim2.new(0, 0, 1, 0),
					ThemeTag = {
						BackgroundColor3 = 'TitleBarLine'
					}
				})
			})
			L_341_.CloseButton = L_343_(L_335_.Close, UDim2.new(1, -4, 0, 4), L_341_.Frame, function()
				L_342_.Window:Dialog{
					Title = 'Close',
					Content = 'Are you sure you want to unload the interface?',
					Buttons = {
						{
							Title = 'Yes',
							Callback = function()
								L_342_:Destroy()
							end
						},
						{
							Title = 'No'
						}
					}
				}
			end)
			L_341_.MaxButton = L_343_(L_335_.Max, UDim2.new(1, -40, 0, 4), L_341_.Frame, function()
				L_340_arg0.Window.Maximize(not L_340_arg0.Window.Maximized)
			end)
			L_341_.MinButton = L_343_(L_335_.Min, UDim2.new(1, -80, 0, 4), L_341_.Frame, function()
				L_342_.Window:Minimize()
			end)
			return L_341_
		end
	end,
	[17] = function()
		local L_352_, L_353_, L_354_, L_355_, L_356_ = L_3_(17)
		local L_357_, L_358_, L_359_, L_360_ = game:GetService'UserInputService', game:GetService'Players'.LocalPlayer:GetMouse(), game:GetService'Workspace'.CurrentCamera, L_353_.Parent.Parent
		local L_361_, L_362_, L_363_, L_364_, L_365_ = L_354_(L_360_.Packages.Flipper), L_354_(L_360_.Creator), L_354_(L_360_.Acrylic), L_354_(L_353_.Parent.Assets), L_353_.Parent
		local L_366_, L_367_, L_368_ = L_361_.Spring.new, L_361_.Instant.new, L_362_.New
		return function(L_369_arg0)
			local L_370_, L_371_, L_372_, L_373_, L_374_, L_375_ = L_354_(L_360_), {
				Minimized = false,
				Maximized = false,
				Size = L_369_arg0.Size,
				CurrentPos = 0,
				Position = UDim2.fromOffset(L_359_.ViewportSize.X / 2 - L_369_arg0.Size.X.Offset / 2, L_359_.ViewportSize.Y / 2 - L_369_arg0.Size.Y.Offset / 2)
			}, false
			local L_376_, L_377_ = false
			local L_378_ = false
			L_371_.AcrylicPaint = L_363_.AcrylicPaint()
			local L_379_, L_380_ = L_368_('Frame', {
				Size = UDim2.fromOffset(4, 0),
				BackgroundColor3 = Color3.fromRGB(76, 194, 255),
				Position = UDim2.fromOffset(0, 17),
				AnchorPoint = Vector2.new(0, 0.5),
				ThemeTag = {
					BackgroundColor3 = 'Accent'
				}
			}, {
				L_368_('UICorner', {
					CornerRadius = UDim.new(0, 2)
				})
			}), L_368_('Frame', {
				Size = UDim2.fromOffset(20, 20),
				BackgroundTransparency = 1,
				Position = UDim2.new(1, -20, 1, -20)
			})
			L_371_.TabHolder = L_368_('ScrollingFrame', {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
				ScrollBarImageTransparency = 1,
				ScrollBarThickness = 0,
				BorderSizePixel = 0,
				CanvasSize = UDim2.fromScale(0, 0),
				ScrollingDirection = Enum.ScrollingDirection.Y
			}, {
				L_368_('UIListLayout', {
					Padding = UDim.new(0, 4)
				})
			})
			local L_381_ = L_368_('Frame', {
				Size = UDim2.new(0, L_369_arg0.TabWidth, 1, -66),
				Position = UDim2.new(0, 12, 0, 54),
				BackgroundTransparency = 1,
				ClipsDescendants = true
			}, {
				L_371_.TabHolder,
				L_379_
			})
			L_371_.TabDisplay = L_368_('TextLabel', {
				RichText = true,
				Text = 'Tab',
				TextTransparency = 0,
				FontFace = Font.new('rbxassetid://12187365364', Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
				TextSize = 28,
				TextXAlignment = 'Left',
				TextYAlignment = 'Center',
				Size = UDim2.new(1, -16, 0, 28),
				Position = UDim2.fromOffset(L_369_arg0.TabWidth + 26, 56),
				BackgroundTransparency = 1,
				ThemeTag = {
					TextColor3 = 'Text'
				}
			})
			L_371_.ContainerHolder = L_368_('CanvasGroup', {
				Size = UDim2.new(1, -L_369_arg0.TabWidth - 32, 1, -102),
				Position = UDim2.fromOffset(L_369_arg0.TabWidth + 26, 90),
				BackgroundTransparency = 1
			})
			L_371_.Root = L_368_('Frame', {
				BackgroundTransparency = 1,
				Size = L_371_.Size,
				Position = L_371_.Position,
				Parent = L_369_arg0.Parent
			}, {
				L_371_.AcrylicPaint.Frame,
				L_371_.TabDisplay,
				L_371_.ContainerHolder,
				L_381_,
				L_380_
			})
			L_371_.TitleBar = L_354_(L_353_.Parent.TitleBar){
				Title = L_369_arg0.Title,
				SubTitle = L_369_arg0.SubTitle,
				Parent = L_371_.Root,
				Window = L_371_
			}
			if L_354_(L_360_).UseAcrylic then
				L_371_.AcrylicPaint.AddParent(L_371_.Root)
			end
			local L_382_, L_383_ = L_361_.GroupMotor.new{
				X = L_371_.Size.X.Offset,
				Y = L_371_.Size.Y.Offset
			}, L_361_.GroupMotor.new{
				X = L_371_.Position.X.Offset,
				Y = L_371_.Position.Y.Offset
			}
			L_371_.SelectorPosMotor = L_361_.SingleMotor.new(17)
			L_371_.SelectorSizeMotor = L_361_.SingleMotor.new(0)
			L_371_.ContainerBackMotor = L_361_.SingleMotor.new(0)
			L_371_.ContainerPosMotor = L_361_.SingleMotor.new(94)
			L_382_:onStep(function(L_390_arg0)
				L_371_.Root.Size = UDim2.new(0, L_390_arg0.X, 0, L_390_arg0.Y)
			end)
			L_383_:onStep(function(L_391_arg0)
				L_371_.Root.Position = UDim2.new(0, L_391_arg0.X, 0, L_391_arg0.Y)
			end)
			local L_384_, L_385_ = 0, 0
			L_371_.SelectorPosMotor:onStep(function(L_392_arg0)
				L_379_.Position = UDim2.new(0, 0, 0, L_392_arg0 + 17)
				local L_393_ = tick()
				local L_394_ = L_393_ - L_385_
				if L_384_ ~= nil then
					L_371_.SelectorSizeMotor:setGoal(L_366_((math.abs(L_392_arg0 - L_384_) / (L_394_ * 60)) + 16))
					L_384_ = L_392_arg0
				end
				L_385_ = L_393_
			end)
			L_371_.SelectorSizeMotor:onStep(function(L_395_arg0)
				L_379_.Size = UDim2.new(0, 4, 0, L_395_arg0)
			end)
			L_371_.ContainerBackMotor:onStep(function(L_396_arg0)
				L_371_.ContainerHolder.GroupTransparency = L_396_arg0
			end)
			L_371_.ContainerPosMotor:onStep(function(L_397_arg0)
				L_371_.ContainerHolder.Position = UDim2.fromOffset(L_369_arg0.TabWidth + 26, L_397_arg0)
			end)
			local L_386_, L_387_
			L_371_.Maximize = function(L_398_arg0, L_399_arg1, L_400_arg2)
				L_371_.Maximized = L_398_arg0
				L_371_.TitleBar.MaxButton.Frame.Icon.Image = L_398_arg0 and L_364_.Restore or L_364_.Max
				if L_398_arg0 then
					L_386_ = L_371_.Size.X.Offset
					L_387_ = L_371_.Size.Y.Offset
				end
				local L_401_, L_402_ = L_398_arg0 and L_359_.ViewportSize.X or L_386_, L_398_arg0 and L_359_.ViewportSize.Y or L_387_
				L_382_:setGoal{
					X = L_361_[L_400_arg2 and 'Instant' or 'Spring'].new(L_401_, {
						frequency = 6
					}),
					Y = L_361_[L_400_arg2 and 'Instant' or 'Spring'].new(L_402_, {
						frequency = 6
					})
				}
				L_371_.Size = UDim2.fromOffset(L_401_, L_402_)
				if not L_399_arg1 then
					L_383_:setGoal{
						X = L_366_(L_398_arg0 and 0 or L_371_.Position.X.Offset, {
							frequency = 6
						}),
						Y = L_366_(L_398_arg0 and 0 or L_371_.Position.Y.Offset, {
							frequency = 6
						})
					}
				end
			end
			L_362_.AddSignal(L_371_.TitleBar.Frame.InputBegan, function(L_403_arg0)
				if L_403_arg0.UserInputType == Enum.UserInputType.MouseButton1 or L_403_arg0.UserInputType == Enum.UserInputType.Touch then
					L_372_ = true
					L_374_ = L_403_arg0.Position
					L_375_ = L_371_.Root.Position
					if L_371_.Maximized then
						L_375_ = UDim2.fromOffset(L_358_.X - (L_358_.X * ((L_386_ - 100) / L_371_.Root.AbsoluteSize.X)), L_358_.Y - (L_358_.Y * (L_387_ / L_371_.Root.AbsoluteSize.Y)))
					end
					L_403_arg0.Changed:Connect(function()
						if L_403_arg0.UserInputState == Enum.UserInputState.End then
							L_372_ = false
						end
					end)
				end
			end)
			L_362_.AddSignal(L_371_.TitleBar.Frame.InputChanged, function(L_404_arg0)
				if L_404_arg0.UserInputType == Enum.UserInputType.MouseMovement or L_404_arg0.UserInputType == Enum.UserInputType.Touch then
					L_373_ = L_404_arg0
				end
			end)
			L_362_.AddSignal(L_380_.InputBegan, function(L_405_arg0)
				if L_405_arg0.UserInputType == Enum.UserInputType.MouseButton1 or L_405_arg0.UserInputType == Enum.UserInputType.Touch then
					L_376_ = true
					L_377_ = L_405_arg0.Position
				end
			end)
			L_362_.AddSignal(L_357_.InputChanged, function(L_406_arg0)
				if L_406_arg0 == L_373_ and L_372_ then
					local L_407_ = L_406_arg0.Position - L_374_
					L_371_.Position = UDim2.fromOffset(L_375_.X.Offset + L_407_.X, L_375_.Y.Offset + L_407_.Y)
					L_383_:setGoal{
						X = L_367_(L_371_.Position.X.Offset),
						Y = L_367_(L_371_.Position.Y.Offset)
					}
					if L_371_.Maximized then
						L_371_.Maximize(false, true, true)
					end
				end
				if (L_406_arg0.UserInputType == Enum.UserInputType.MouseMovement or L_406_arg0.UserInputType == Enum.UserInputType.Touch) and L_376_ then
					local L_408_, L_409_ = L_406_arg0.Position - L_377_, L_371_.Size
					local L_410_ = Vector3.new(L_409_.X.Offset, L_409_.Y.Offset, 0) + Vector3.new(1, 1, 0) * L_408_
					local L_411_ = Vector2.new(math.clamp(L_410_.X, 470, 2048), math.clamp(L_410_.Y, 380, 2048))
					L_382_:setGoal{
						X = L_361_.Instant.new(L_411_.X),
						Y = L_361_.Instant.new(L_411_.Y)
					}
				end
			end)
			L_362_.AddSignal(L_357_.InputEnded, function(L_412_arg0)
				if L_376_ == true or L_412_arg0.UserInputType == Enum.UserInputType.Touch then
					L_376_ = false
					L_371_.Size = UDim2.fromOffset(L_382_:getValue().X, L_382_:getValue().Y)
				end
			end)
			L_362_.AddSignal(L_371_.TabHolder.UIListLayout:GetPropertyChangedSignal'AbsoluteContentSize', function()
				L_371_.TabHolder.CanvasSize = UDim2.new(0, 0, 0, L_371_.TabHolder.UIListLayout.AbsoluteContentSize.Y)
			end)
			L_362_.AddSignal(L_357_.InputBegan, function(L_413_arg0)
				if type(L_370_.MinimizeKeybind) == 'table' and L_370_.MinimizeKeybind.Type == 'Keybind' and (L_413_arg0.KeyCode.Name == L_370_.MinimizeKeybind.Value or L_370_.MinimizeKeybind.Value == 'RMB' and L_413_arg0.UserInputType == Enum.UserInputType.MouseButton2) and not L_357_:GetFocusedTextBox() then
					L_371_:Minimize()
				elseif (L_413_arg0.KeyCode == L_370_.MinimizeKey or type(L_370_.MinimizeKeybind) == 'table' and L_370_.MinimizeKeybind.Type == 'Keybind' and L_370_.MinimizeKeybind.Value == 'RMB' and L_413_arg0.UserInputType == Enum.UserInputType.MouseButton2) and not L_357_:GetFocusedTextBox() then
					L_371_:Minimize()
				end
			end)
			function L_371_.Minimize(L_414_arg0)
				L_371_.Minimized = not L_371_.Minimized
				L_371_.Root.Visible = not L_371_.Minimized
				if not L_378_ then
					L_378_ = L_357_.KeyboardEnabled and L_357_.MouseEnabled
					local L_415_ = L_370_.MinimizeKeybind and L_370_.MinimizeKeybind.Value or L_370_.MinimizeKey.Name
					L_370_:Notify(L_378_ and {
						Title = 'Interface',
						Content = 'Press ' .. L_415_ .. ' to toggle the interface.',
						Duration = 6
					} or {
						Title = 'Interface',
						Content = 'Close this to toggle the interface.',
						InterfaceToggle = true
					})
				end
			end
			function L_371_.Destroy(L_416_arg0)
				if L_354_(L_360_).UseAcrylic then
					L_371_.AcrylicPaint.Model:Destroy()
				end
				L_371_.Root:Destroy()
			end
			local L_388_ = L_354_(L_365_.Dialog):Init(L_371_)
			function L_371_.Dialog(L_417_arg0, L_418_arg1)
				local L_419_ = L_388_:Create()
				L_419_.Title.Text = L_418_arg1.Title
				local L_420_ = L_368_('TextLabel', {
					FontFace = Font.new'rbxasset://fonts/families/GothamSSm.json',
					Text = L_418_arg1.Content,
					TextColor3 = Color3.fromRGB(240, 240, 240),
					TextSize = 14,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Top,
					Size = UDim2.new(1, -40, 1, 0),
					Position = UDim2.fromOffset(20, 60),
					BackgroundTransparency = 1,
					Parent = L_419_.Root,
					ClipsDescendants = false,
					ThemeTag = {
						TextColor3 = 'Text'
					}
				})
				L_368_('UISizeConstraint', {
					MinSize = Vector2.new(300, 165),
					MaxSize = Vector2.new(620, math.huge),
					Parent = L_419_.Root
				})
				L_419_.Root.Size = UDim2.fromOffset(L_420_.TextBounds.X + 40, 165)
				if L_420_.TextBounds.X + 40 > L_371_.Size.X.Offset - 120 then
					L_419_.Root.Size = UDim2.fromOffset(L_371_.Size.X.Offset - 120, 165)
					L_420_.TextWrapped = true
					L_419_.Root.Size = UDim2.fromOffset(L_371_.Size.X.Offset - 120, L_420_.TextBounds.Y + 150)
				end
				for L_421_forvar0, L_422_forvar1 in next, L_418_arg1.Buttons do
					L_419_:Button(L_422_forvar1.Title, L_422_forvar1.Callback)
				end
				L_419_:Open()
			end
			local L_389_ = L_354_(L_365_.Tab):Init(L_371_)
			function L_371_.AddTab(L_423_arg0, L_424_arg1)
				return L_389_:New(L_424_arg1.Title, L_424_arg1.Icon, L_371_.TabHolder)
			end
			function L_371_.SelectTab(L_425_arg0, L_426_arg1)
				L_389_:SelectTab(L_426_arg1)
			end
			L_362_.AddSignal(L_371_.TabHolder:GetPropertyChangedSignal'CanvasPosition', function()
				L_384_ = L_389_:GetCurrentTabPos() + 16
				L_385_ = 0
				L_371_.SelectorPosMotor:setGoal(L_367_(L_389_:GetCurrentTabPos()))
			end)
			L_1_ = L_371_
			return L_371_
		end
	end,
	[18] = function()
		local L_427_, L_428_, L_429_, L_430_, L_431_ = L_3_(18)
		local L_432_ = L_428_.Parent
		local L_433_, L_434_, L_435_ = L_429_(L_432_.Themes), L_429_(L_432_.Packages.Flipper), {
			Registry = {},
			Signals = {},
			TransparencyMotors = {},
			DefaultProperties = {
				ScreenGui = {
					ResetOnSpawn = false,
					ZIndexBehavior = Enum.ZIndexBehavior.Sibling
				},
				Frame = {
					BackgroundColor3 = Color3.new(1, 1, 1),
					BorderColor3 = Color3.new(0, 0, 0),
					BorderSizePixel = 0
				},
				ScrollingFrame = {
					BackgroundColor3 = Color3.new(1, 1, 1),
					BorderColor3 = Color3.new(0, 0, 0),
					ScrollBarImageColor3 = Color3.new(0, 0, 0)
				},
				TextLabel = {
					BackgroundColor3 = Color3.new(1, 1, 1),
					BorderColor3 = Color3.new(0, 0, 0),
					Font = Enum.Font.SourceSans,
					Text = '',
					TextColor3 = Color3.new(0, 0, 0),
					BackgroundTransparency = 1,
					TextSize = 14
				},
				TextButton = {
					BackgroundColor3 = Color3.new(1, 1, 1),
					BorderColor3 = Color3.new(0, 0, 0),
					AutoButtonColor = false,
					Font = Enum.Font.SourceSans,
					Text = '',
					TextColor3 = Color3.new(0, 0, 0),
					TextSize = 14
				},
				TextBox = {
					BackgroundColor3 = Color3.new(1, 1, 1),
					BorderColor3 = Color3.new(0, 0, 0),
					ClearTextOnFocus = false,
					Font = Enum.Font.SourceSans,
					Text = '',
					TextColor3 = Color3.new(0, 0, 0),
					TextSize = 14
				},
				ImageLabel = {
					BackgroundTransparency = 1,
					BackgroundColor3 = Color3.new(1, 1, 1),
					BorderColor3 = Color3.new(0, 0, 0),
					BorderSizePixel = 0
				},
				ImageButton = {
					BackgroundColor3 = Color3.new(1, 1, 1),
					BorderColor3 = Color3.new(0, 0, 0),
					AutoButtonColor = false
				},
				CanvasGroup = {
					BackgroundColor3 = Color3.new(1, 1, 1),
					BorderColor3 = Color3.new(0, 0, 0),
					BorderSizePixel = 0
				}
			}
		}
		local L_436_ = function(L_437_arg0, L_438_arg1)
			if L_438_arg1.ThemeTag then
				L_435_.AddThemeObject(L_437_arg0, L_438_arg1.ThemeTag)
			end
		end
		function L_435_.AddSignal(L_439_arg0, L_440_arg1)
			table.insert(L_435_.Signals, L_439_arg0:Connect(L_440_arg1))
		end
		function L_435_.Disconnect()
			for L_441_forvar0 = #L_435_.Signals, 1, -1 do
				local L_442_ = table.remove(L_435_.Signals, L_441_forvar0)
				L_442_:Disconnect()
			end
		end
		function L_435_.GetThemeProperty(L_443_arg0)
			if L_433_[L_429_(L_432_).Theme][L_443_arg0] then
				return L_433_[L_429_(L_432_).Theme][L_443_arg0]
			end
			return L_433_.Dark[L_443_arg0]
		end
		function L_435_.UpdateTheme()
			for L_444_forvar0, L_445_forvar1 in next, L_435_.Registry do
				for L_446_forvar0, L_447_forvar1 in next, L_445_forvar1.Properties do
					L_444_forvar0[L_446_forvar0] = L_435_.GetThemeProperty(L_447_forvar1)
				end
			end
			for L_448_forvar0, L_449_forvar1 in next, L_435_.TransparencyMotors do
				L_449_forvar1:setGoal(L_434_.Instant.new(L_435_.GetThemeProperty'ElementTransparency'))
			end
		end
		function L_435_.AddThemeObject(L_450_arg0, L_451_arg1)
			local L_452_ = #L_435_.Registry + 1
			local L_453_ = {
				Object = L_450_arg0,
				Properties = L_451_arg1,
				Idx = L_452_
			}
			L_435_.Registry[L_450_arg0] = L_453_
			L_435_.UpdateTheme()
			return L_450_arg0
		end
		function L_435_.OverrideTag(L_454_arg0, L_455_arg1)
			L_435_.Registry[L_454_arg0].Properties = L_455_arg1
			L_435_.UpdateTheme()
		end
		function L_435_.New(L_456_arg0, L_457_arg1, L_458_arg2)
			local L_459_ = Instance.new(L_456_arg0)
			for L_460_forvar0, L_461_forvar1 in next, L_435_.DefaultProperties[L_456_arg0] or {} do
				L_459_[L_460_forvar0] = L_461_forvar1
			end
			for L_462_forvar0, L_463_forvar1 in next, L_457_arg1 or {} do
				if L_462_forvar0 ~= 'ThemeTag' then
					L_459_[L_462_forvar0] = L_463_forvar1
				end
			end
			for L_464_forvar0, L_465_forvar1 in next, L_458_arg2 or {} do
				L_465_forvar1.Parent = L_459_
			end
			L_436_(L_459_, L_457_arg1)
			return L_459_
		end
		function L_435_.SpringMotor(L_466_arg0, L_467_arg1, L_468_arg2, L_469_arg3, L_470_arg4)
			L_469_arg3 = L_469_arg3 or false
			L_470_arg4 = L_470_arg4 or false
			local L_471_ = L_434_.SingleMotor.new(L_466_arg0)
			L_471_:onStep(function(L_473_arg0)
				L_467_arg1[L_468_arg2] = L_473_arg0
			end)
			if L_470_arg4 then
				table.insert(L_435_.TransparencyMotors, L_471_)
			end
			local L_472_ = function(L_474_arg0, L_475_arg1)
				L_475_arg1 = L_475_arg1 or false
				if not L_469_arg3 then
					if not L_475_arg1 then
						if L_468_arg2 == 'BackgroundTransparency' and L_429_(L_432_).DialogOpen then
							return
						end
					end
				end
				L_471_:setGoal(L_434_.Spring.new(L_474_arg0, {
					frequency = 8
				}))
			end
			return L_471_, L_472_
		end
		return L_435_
	end,
	[19] = function()
		local L_476_, L_477_, L_478_, L_479_, L_480_ = L_3_(19)
		local L_481_ = {}
		for L_482_forvar0, L_483_forvar1 in next, L_477_:GetChildren() do
			table.insert(L_481_, L_478_(L_483_forvar1))
		end
		return L_481_
	end,
	[20] = function()
		local L_484_, L_485_, L_486_, L_487_, L_488_ = L_3_(20)
		local L_489_ = L_485_.Parent.Parent
		local L_490_ = L_486_(L_489_.Creator)
		local L_491_, L_492_, L_493_ = L_490_.New, L_489_.Components, {}
		L_493_.__index = L_493_
		L_493_.__type = 'Button'
		function L_493_.New(L_494_arg0, L_495_arg1)
			assert(L_495_arg1.Title, 'Button - Missing Title')
			L_495_arg1.Callback = L_495_arg1.Callback or function()
			end
			local L_496_ = L_486_(L_492_.Element)(L_495_arg1.Title, L_495_arg1.Description, L_494_arg0.Container, true)
			local L_497_ = L_491_('ImageLabel', {
				Image = 'rbxassetid://10709791437',
				Size = UDim2.fromOffset(16, 16),
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(1, -10, 0.5, 0),
				BackgroundTransparency = 1,
				Parent = L_496_.Frame,
				ThemeTag = {
					ImageColor3 = 'Text'
				}
			})
			L_490_.AddSignal(L_496_.Frame.MouseButton1Click, function()
				L_494_arg0.Library:SafeCallback(L_495_arg1.Callback)
			end)
			return L_496_
		end
		return L_493_
	end,
	[21] = function()
		local L_498_, L_499_, L_500_, L_501_, L_502_ = L_3_(21)
		local L_503_, L_504_, L_505_, L_506_ = game:GetService'UserInputService', game:GetService'TouchInputService', game:GetService'RunService', game:GetService'Players'
		local L_507_, L_508_ = L_505_.RenderStepped, L_506_.LocalPlayer
		local L_509_, L_510_ = L_508_:GetMouse(), L_499_.Parent.Parent
		local L_511_ = L_500_(L_510_.Creator)
		local L_512_, L_513_, L_514_ = L_511_.New, L_510_.Components, {}
		L_514_.__index = L_514_
		L_514_.__type = 'Colorpicker'
		function L_514_.New(L_515_arg0, L_516_arg1, L_517_arg2)
			local L_518_ = L_515_arg0.Library
			assert(L_517_arg2.Title, 'Colorpicker - Missing Title')
			assert(L_517_arg2.Default, 'AddColorPicker: Missing default value.')
			local L_519_ = {
				Value = L_517_arg2.Default,
				Transparency = L_517_arg2.Transparency or 0,
				Type = 'Colorpicker',
				Title = type(L_517_arg2.Title) == 'string' and L_517_arg2.Title or 'Colorpicker',
				Callback = L_517_arg2.Callback or function(L_524_arg0)
				end
			}
			function L_519_.SetHSVFromRGB(L_525_arg0, L_526_arg1)
				local L_527_, L_528_, L_529_ = L_526_arg1:ToHSV()
				L_519_.Hue = L_527_
				L_519_.Sat = L_528_
				L_519_.Vib = L_529_
			end
			L_519_:SetHSVFromRGB(L_519_.Value)
			local L_520_ = L_500_(L_513_.Element)(L_517_arg2.Title, L_517_arg2.Description, L_515_arg0.Container, true)
			L_519_.SetTitle = L_520_.SetTitle
			L_519_.SetDesc = L_520_.SetDesc
			local L_521_ = L_512_('Frame', {
				Size = UDim2.fromScale(1, 1),
				BackgroundColor3 = L_519_.Value,
				Parent = L_520_.Frame
			}, {
				L_512_('UICorner', {
					CornerRadius = UDim.new(0, 4)
				})
			})
			local L_522_, L_523_ = L_512_('ImageLabel', {
				Size = UDim2.fromOffset(26, 26),
				Position = UDim2.new(1, -10, 0.5, 0),
				AnchorPoint = Vector2.new(1, 0.5),
				Parent = L_520_.Frame,
				Image = 'rbxassetid://14204231522',
				ImageTransparency = 0.45,
				ScaleType = Enum.ScaleType.Tile,
				TileSize = UDim2.fromOffset(40, 40)
			}, {
				L_512_('UICorner', {
					CornerRadius = UDim.new(0, 4)
				}),
				L_521_
			}), function()
				local L_530_ = L_500_(L_513_.Dialog):Create()
				L_530_.Title.Text = L_519_.Title
				L_530_.Root.Size = UDim2.fromOffset(430, 330)
				local L_531_, L_532_, L_533_, L_534_, L_535_, L_536_ = L_519_.Hue, L_519_.Sat, L_519_.Vib, L_519_.Transparency, function()
					local L_558_ = L_500_(L_513_.Textbox)()
					L_558_.Frame.Parent = L_530_.Root
					L_558_.Frame.Size = UDim2.new(0, 90, 0, 32)
					return L_558_
				end, function(L_559_arg0, L_560_arg1)
					return L_512_('TextLabel', {
						FontFace = Font.new('rbxasset://fonts/families/GothamSSm.json', Enum.FontWeight.Medium, Enum.FontStyle.Normal),
						Text = L_559_arg0,
						TextColor3 = Color3.fromRGB(240, 240, 240),
						TextSize = 13,
						TextXAlignment = Enum.TextXAlignment.Left,
						Size = UDim2.new(1, 0, 0, 32),
						Position = L_560_arg1,
						BackgroundTransparency = 1,
						Parent = L_530_.Root,
						ThemeTag = {
							TextColor3 = 'Text'
						}
					})
				end
				local L_537_, L_538_ = function()
					local L_561_ = Color3.fromHSV(L_531_, L_532_, L_533_)
					return {
						R = math.floor(L_561_.r * 255),
						G = math.floor(L_561_.g * 255),
						B = math.floor(L_561_.b * 255)
					}
				end, L_512_('ImageLabel', {
					Size = UDim2.new(0, 18, 0, 18),
					ScaleType = Enum.ScaleType.Fit,
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 1,
					Image = 'rbxassetid://4805639000'
				})
				local L_539_, L_540_ = L_512_('ImageLabel', {
					Size = UDim2.fromOffset(180, 160),
					Position = UDim2.fromOffset(20, 55),
					Image = 'rbxassetid://4155801252',
					BackgroundColor3 = L_519_.Value,
					BackgroundTransparency = 0,
					Parent = L_530_.Root
				}, {
					L_512_('UICorner', {
						CornerRadius = UDim.new(0, 4)
					}),
					L_538_
				}), L_512_('Frame', {
					BackgroundColor3 = L_519_.Value,
					Size = UDim2.fromScale(1, 1),
					BackgroundTransparency = L_519_.Transparency
				}, {
					L_512_('UICorner', {
						CornerRadius = UDim.new(0, 4)
					})
				})
				local L_541_, L_542_ = L_512_('ImageLabel', {
					Image = 'rbxassetid://14204231522',
					ImageTransparency = 0.45,
					ScaleType = Enum.ScaleType.Tile,
					TileSize = UDim2.fromOffset(40, 40),
					BackgroundTransparency = 1,
					Position = UDim2.fromOffset(112, 220),
					Size = UDim2.fromOffset(88, 24),
					Parent = L_530_.Root
				}, {
					L_512_('UICorner', {
						CornerRadius = UDim.new(0, 4)
					}),
					L_512_('UIStroke', {
						Thickness = 2,
						Transparency = 0.75
					}),
					L_540_
				}), L_512_('Frame', {
					BackgroundColor3 = L_519_.Value,
					Size = UDim2.fromScale(1, 1),
					BackgroundTransparency = 0
				}, {
					L_512_('UICorner', {
						CornerRadius = UDim.new(0, 4)
					})
				})
				local L_543_, L_544_ = L_512_('ImageLabel', {
					Image = 'rbxassetid://14204231522',
					ImageTransparency = 0.45,
					ScaleType = Enum.ScaleType.Tile,
					TileSize = UDim2.fromOffset(40, 40),
					BackgroundTransparency = 1,
					Position = UDim2.fromOffset(20, 220),
					Size = UDim2.fromOffset(88, 24),
					Parent = L_530_.Root
				}, {
					L_512_('UICorner', {
						CornerRadius = UDim.new(0, 4)
					}),
					L_512_('UIStroke', {
						Thickness = 2,
						Transparency = 0.75
					}),
					L_542_
				}), {}
				for L_562_forvar0 = 0, 1, 0.1 do
					table.insert(L_544_, ColorSequenceKeypoint.new(L_562_forvar0, Color3.fromHSV(L_562_forvar0, 1, 1)))
				end
				local L_545_, L_546_ = L_512_('UIGradient', {
					Color = ColorSequence.new(L_544_),
					Rotation = 90
				}), L_512_('Frame', {
					Size = UDim2.new(1, 0, 1, -10),
					Position = UDim2.fromOffset(0, 5),
					BackgroundTransparency = 1
				})
				local L_547_, L_548_, L_549_ = L_512_('ImageLabel', {
					Size = UDim2.fromOffset(14, 14),
					Image = 'rbxassetid://12266946128',
					Parent = L_546_,
					ThemeTag = {
						ImageColor3 = 'DialogInput'
					}
				}), L_512_('Frame', {
					Size = UDim2.fromOffset(12, 190),
					Position = UDim2.fromOffset(210, 55),
					Parent = L_530_.Root
				}, {
					L_512_('UICorner', {
						CornerRadius = UDim.new(1, 0)
					}),
					L_545_,
					L_546_
				}), L_535_()
				L_549_.Frame.Position = UDim2.fromOffset(L_517_arg2.Transparency and 260 or 240, 55)
				L_536_('Hex', UDim2.fromOffset(L_517_arg2.Transparency and 360 or 340, 55))
				local L_550_ = L_535_()
				L_550_.Frame.Position = UDim2.fromOffset(L_517_arg2.Transparency and 260 or 240, 95)
				L_536_('Red', UDim2.fromOffset(L_517_arg2.Transparency and 360 or 340, 95))
				local L_551_ = L_535_()
				L_551_.Frame.Position = UDim2.fromOffset(L_517_arg2.Transparency and 260 or 240, 135)
				L_536_('Green', UDim2.fromOffset(L_517_arg2.Transparency and 360 or 340, 135))
				local L_552_ = L_535_()
				L_552_.Frame.Position = UDim2.fromOffset(L_517_arg2.Transparency and 260 or 240, 175)
				L_536_('Blue', UDim2.fromOffset(L_517_arg2.Transparency and 360 or 340, 175))
				local L_553_
				if L_517_arg2.Transparency then
					L_553_ = L_535_()
					L_553_.Frame.Position = UDim2.fromOffset(260, 215)
					L_536_('Alpha', UDim2.fromOffset(360, 215))
				end
				local L_554_, L_555_, L_556_
				if L_517_arg2.Transparency then
					local L_563_ = L_512_('Frame', {
						Size = UDim2.new(1, 0, 1, -10),
						Position = UDim2.fromOffset(0, 5),
						BackgroundTransparency = 1
					})
					L_555_ = L_512_('ImageLabel', {
						Size = UDim2.fromOffset(14, 14),
						Image = 'rbxassetid://12266946128',
						Parent = L_563_,
						ThemeTag = {
							ImageColor3 = 'DialogInput'
						}
					})
					L_556_ = L_512_('Frame', {
						Size = UDim2.fromScale(1, 1)
					}, {
						L_512_('UIGradient', {
							Transparency = NumberSequence.new{
								NumberSequenceKeypoint.new(0, 0),
								NumberSequenceKeypoint.new(1, 1)
							},
							Rotation = 270
						}),
						L_512_('UICorner', {
							CornerRadius = UDim.new(1, 0)
						})
					})
					L_554_ = L_512_('Frame', {
						Size = UDim2.fromOffset(12, 190),
						Position = UDim2.fromOffset(230, 55),
						Parent = L_530_.Root,
						BackgroundTransparency = 1
					}, {
						L_512_('UICorner', {
							CornerRadius = UDim.new(1, 0)
						}),
						L_512_('ImageLabel', {
							Image = 'rbxassetid://14204231522',
							ImageTransparency = 0.45,
							ScaleType = Enum.ScaleType.Tile,
							TileSize = UDim2.fromOffset(40, 40),
							BackgroundTransparency = 1,
							Size = UDim2.fromScale(1, 1),
							Parent = L_530_.Root
						}, {
							L_512_('UICorner', {
								CornerRadius = UDim.new(1, 0)
							})
						}),
						L_556_,
						L_563_
					})
				end
				local L_557_ = function()
					L_539_.BackgroundColor3 = Color3.fromHSV(L_531_, 1, 1)
					L_547_.Position = UDim2.new(0, -1, L_531_, -6)
					L_538_.Position = UDim2.new(L_532_, 0, 1 - L_533_, 0)
					L_542_.BackgroundColor3 = Color3.fromHSV(L_531_, L_532_, L_533_)
					L_549_.Input.Text = '#' .. Color3.fromHSV(L_531_, L_532_, L_533_):ToHex()
					L_550_.Input.Text = L_537_().R
					L_551_.Input.Text = L_537_().G
					L_552_.Input.Text = L_537_().B
					if L_517_arg2.Transparency then
						L_556_.BackgroundColor3 = Color3.fromHSV(L_531_, L_532_, L_533_)
						L_542_.BackgroundTransparency = L_534_
						L_555_.Position = UDim2.new(0, -1, 1 - L_534_, -6)
						L_553_.Input.Text = L_500_(L_510_):Round((1 - L_534_) * 100, 0) .. '%'
					end
				end
				L_511_.AddSignal(L_549_.Input.FocusLost, function(L_564_arg0)
					if L_564_arg0 then
						local L_565_, L_566_ = pcall(Color3.fromHex, L_549_.Input.Text)
						if L_565_ and typeof(L_566_) == 'Color3' then
							L_531_, L_532_, L_533_ = L_566_:ToHSV()
						end
					end
					L_557_()
				end)
				L_511_.AddSignal(L_550_.Input.FocusLost, function(L_567_arg0)
					if L_567_arg0 then
						local L_568_ = L_537_()
						local L_569_, L_570_ = pcall(Color3.fromRGB, L_550_.Input.Text, L_568_.G, L_568_.B)
						if L_569_ and typeof(L_570_) == 'Color3' then
							if tonumber(L_550_.Input.Text) <= 255 then
								L_531_, L_532_, L_533_ = L_570_:ToHSV()
							end
						end
					end
					L_557_()
				end)
				L_511_.AddSignal(L_551_.Input.FocusLost, function(L_571_arg0)
					if L_571_arg0 then
						local L_572_ = L_537_()
						local L_573_, L_574_ = pcall(Color3.fromRGB, L_572_.R, L_551_.Input.Text, L_572_.B)
						if L_573_ and typeof(L_574_) == 'Color3' then
							if tonumber(L_551_.Input.Text) <= 255 then
								L_531_, L_532_, L_533_ = L_574_:ToHSV()
							end
						end
					end
					L_557_()
				end)
				L_511_.AddSignal(L_552_.Input.FocusLost, function(L_575_arg0)
					if L_575_arg0 then
						local L_576_ = L_537_()
						local L_577_, L_578_ = pcall(Color3.fromRGB, L_576_.R, L_576_.G, L_552_.Input.Text)
						if L_577_ and typeof(L_578_) == 'Color3' then
							if tonumber(L_552_.Input.Text) <= 255 then
								L_531_, L_532_, L_533_ = L_578_:ToHSV()
							end
						end
					end
					L_557_()
				end)
				if L_517_arg2.Transparency then
					L_511_.AddSignal(L_553_.Input.FocusLost, function(L_579_arg0)
						if L_579_arg0 then
							pcall(function()
								local L_580_ = tonumber(L_553_.Input.Text)
								if L_580_ >= 0 and L_580_ <= 100 then
									L_534_ = 1 - L_580_ * 0.01
								end
							end)
						end
						L_557_()
					end)
				end
				L_511_.AddSignal(L_539_.InputBegan, function(L_581_arg0)
					if L_581_arg0.UserInputType == Enum.UserInputType.MouseButton1 or L_581_arg0.UserInputType == Enum.UserInputType.Touch then
						while L_503_:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
							local L_582_ = L_539_.AbsolutePosition.X
							local L_583_ = L_582_ + L_539_.AbsoluteSize.X
							local L_584_, L_585_ = math.clamp(L_509_.X, L_582_, L_583_), L_539_.AbsolutePosition.Y
							local L_586_ = L_585_ + L_539_.AbsoluteSize.Y
							local L_587_ = math.clamp(L_509_.Y, L_585_, L_586_)
							L_532_ = (L_584_ - L_582_) / (L_583_ - L_582_)
							L_533_ = 1 - ((L_587_ - L_585_) / (L_586_ - L_585_))
							L_557_()
							L_507_:Wait()
						end
					end
				end)
				L_511_.AddSignal(L_548_.InputBegan, function(L_588_arg0)
					if L_588_arg0.UserInputType == Enum.UserInputType.MouseButton1 or L_588_arg0.UserInputType == Enum.UserInputType.Touch then
						while L_503_:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
							local L_589_ = L_548_.AbsolutePosition.Y
							local L_590_ = L_589_ + L_548_.AbsoluteSize.Y
							local L_591_ = math.clamp(L_509_.Y, L_589_, L_590_)
							L_531_ = ((L_591_ - L_589_) / (L_590_ - L_589_))
							L_557_()
							L_507_:Wait()
						end
					end
				end)
				if L_517_arg2.Transparency then
					L_511_.AddSignal(L_554_.InputBegan, function(L_592_arg0)
						if L_592_arg0.UserInputType == Enum.UserInputType.MouseButton1 then
							while L_503_:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
								local L_593_ = L_554_.AbsolutePosition.Y
								local L_594_ = L_593_ + L_554_.AbsoluteSize.Y
								local L_595_ = math.clamp(L_509_.Y, L_593_, L_594_)
								L_534_ = 1 - ((L_595_ - L_593_) / (L_594_ - L_593_))
								L_557_()
								L_507_:Wait()
							end
						end
					end)
				end
				L_557_()
				L_530_:Button('Done', function()
					L_519_:SetValue({
						L_531_,
						L_532_,
						L_533_
					}, L_534_)
				end)
				L_530_:Button'Cancel'
				L_530_:Open()
			end
			function L_519_.Display(L_596_arg0)
				L_519_.Value = Color3.fromHSV(L_519_.Hue, L_519_.Sat, L_519_.Vib)
				L_521_.BackgroundColor3 = L_519_.Value
				L_521_.BackgroundTransparency = L_519_.Transparency
				L_514_.Library:SafeCallback(L_519_.Callback, L_519_.Value)
				L_514_.Library:SafeCallback(L_519_.Changed, L_519_.Value)
			end
			function L_519_.SetValue(L_597_arg0, L_598_arg1, L_599_arg2)
				local L_600_ = Color3.fromHSV(L_598_arg1[1], L_598_arg1[2], L_598_arg1[3])
				L_519_.Transparency = L_599_arg2 or 0
				L_519_:SetHSVFromRGB(L_600_)
				L_519_:Display()
			end
			function L_519_.SetValueRGB(L_601_arg0, L_602_arg1, L_603_arg2)
				L_519_.Transparency = L_603_arg2 or 0
				L_519_:SetHSVFromRGB(L_602_arg1)
				L_519_:Display()
			end
			function L_519_.OnChanged(L_604_arg0, L_605_arg1)
				L_519_.Changed = L_605_arg1
				L_605_arg1(L_519_.Value)
			end
			function L_519_.Destroy(L_606_arg0)
				L_520_:Destroy()
				L_518_.Options[L_516_arg1] = nil
			end
			L_511_.AddSignal(L_520_.Frame.MouseButton1Click, function()
				L_523_()
			end)
			L_519_:Display()
			L_518_.Options[L_516_arg1] = L_519_
			return L_519_
		end
		return L_514_
	end,
	[22] = function()
		local L_607_, L_608_, L_609_, L_610_, L_611_ = L_3_(22)
		local L_612_, L_613_, L_614_, L_615_, L_616_ = game:GetService'TweenService', game:GetService'UserInputService', game:GetService'Players'.LocalPlayer:GetMouse(), game:GetService'Workspace'.CurrentCamera, L_608_.Parent.Parent
		local L_617_, L_618_ = L_609_(L_616_.Creator), L_609_(L_616_.Packages.Flipper)
		local L_619_, L_620_, L_621_ = L_617_.New, L_616_.Components, {}
		L_621_.__index = L_621_
		L_621_.__type = 'Dropdown'
		function L_621_.New(L_622_arg0, L_623_arg1, L_624_arg2)
			local L_625_, L_626_, L_627_ = L_622_arg0.Library, {
				Values = L_624_arg2.Values,
				Value = L_624_arg2.Default,
				Multi = L_624_arg2.Multi,
				Buttons = {},
				Opened = false,
				Type = 'Dropdown',
				Callback = L_624_arg2.Callback or function() end,
				-- New fields for auto-refresh:

		ValuesProvider = Config.ValuesProvider, -- Optional function to provide table of values

		_autoRefreshConnection = nil,

		_lastValuesHash = nil,
			}, L_609_(L_620_.Element)(L_624_arg2.Title, L_624_arg2.Description, L_622_arg0.Container, false)
			L_627_.DescLabel.Size = UDim2.new(1, -170, 0, 14)
			L_626_.SetTitle = L_627_.SetTitle
			L_626_.SetDesc = L_627_.SetDesc
			local L_628_, L_629_ = L_619_('TextLabel', {
				FontFace = Font.new('rbxasset://fonts/families/GothamSSm.json', Enum.FontWeight.Regular, Enum.FontStyle.Normal),
				Text = 'Value',
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				Size = UDim2.new(1, -30, 0, 14),
				Position = UDim2.new(0, 8, 0.5, 0),
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				TextTruncate = Enum.TextTruncate.AtEnd,
				ThemeTag = {
					TextColor3 = 'Text'
				}
			}), L_619_('ImageLabel', {
				Image = 'rbxassetid://10709790948',
				Size = UDim2.fromOffset(16, 16),
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(1, -8, 0.5, 0),
				BackgroundTransparency = 1,
				ThemeTag = {
					ImageColor3 = 'SubText'
				}
			})
			local L_630_, L_631_ = L_619_('TextButton', {
				Size = UDim2.fromOffset(160, 30),
				Position = UDim2.new(1, -10, 0.5, 0),
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundTransparency = 0.9,
				Parent = L_627_.Frame,
				ThemeTag = {
					BackgroundColor3 = 'DropdownFrame'
				}
			}, {
				L_619_('UICorner', {
					CornerRadius = UDim.new(0, 5)
				}),
				L_619_('UIStroke', {
					Transparency = 0.5,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					ThemeTag = {
						Color = 'InElementBorder'
					}
				}),
				L_629_,
				L_628_
			}), L_619_('UIListLayout', {
				Padding = UDim.new(0, 3)
			})
			local L_632_ = L_619_('ScrollingFrame', {
				Size = UDim2.new(1, -5, 1, -10),
				Position = UDim2.fromOffset(5, 5),
				BackgroundTransparency = 1,
				BottomImage = 'rbxassetid://6889812791',
				MidImage = 'rbxassetid://6889812721',
				TopImage = 'rbxassetid://6276641225',
				ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255),
				ScrollBarImageTransparency = 0.95,
				ScrollBarThickness = 4,
				BorderSizePixel = 0,
				CanvasSize = UDim2.fromScale(0, 0)
			}, {
				L_631_
			})
			local L_633_ = L_619_('Frame', {
				Size = UDim2.fromScale(1, 0.6),
				ThemeTag = {
					BackgroundColor3 = 'DropdownHolder'
				}
			}, {
				L_632_,
				L_619_('UICorner', {
					CornerRadius = UDim.new(0, 7)
				}),
				L_619_('UIStroke', {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					ThemeTag = {
						Color = 'DropdownBorder'
					}
				}),
				L_619_('ImageLabel', {
					BackgroundTransparency = 1,
					Image = 'rbxassetid://5554236805',
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(23, 23, 277, 277),
					Size = UDim2.fromScale(1, 1) + UDim2.fromOffset(30, 30),
					Position = UDim2.fromOffset(-15, -15),
					ImageColor3 = Color3.fromRGB(0, 0, 0),
					ImageTransparency = 0.1
				})
			})
			local L_634_ = L_619_('Frame', {
				BackgroundTransparency = 1,
				Size = UDim2.fromOffset(170, 300),
				Parent = L_622_arg0.Library.GUI,
				Visible = false
			}, {
				L_633_,
				L_619_('UISizeConstraint', {
					MinSize = Vector2.new(170, 0)
				})
			})
			table.insert(L_625_.OpenFrames, L_634_)
			local L_635_, L_636_ = function()
				local L_641_ = 0
				if L_615_.ViewportSize.Y - L_630_.AbsolutePosition.Y < L_634_.AbsoluteSize.Y - 5 then
					L_641_ = L_634_.AbsoluteSize.Y - 5 - (L_615_.ViewportSize.Y - L_630_.AbsolutePosition.Y) + 40
				end
				L_634_.Position = UDim2.fromOffset(L_630_.AbsolutePosition.X - 1, L_630_.AbsolutePosition.Y - 5 - L_641_)
			end, 0
			local L_637_, L_638_ = function()
				if #L_626_.Values > 10 then
					L_634_.Size = UDim2.fromOffset(L_636_, 392)
				else
					L_634_.Size = UDim2.fromOffset(L_636_, L_631_.AbsoluteContentSize.Y + 10)
				end
			end, function()
				L_632_.CanvasSize = UDim2.fromOffset(0, L_631_.AbsoluteContentSize.Y)
			end
			L_635_()
			L_637_()
			L_617_.AddSignal(L_630_:GetPropertyChangedSignal'AbsolutePosition', L_635_)
			L_617_.AddSignal(L_630_.MouseButton1Click, function()
				L_626_:Open()
			end)
			L_617_.AddSignal(L_613_.InputBegan, function(L_642_arg0)
				if L_642_arg0.UserInputType == Enum.UserInputType.MouseButton1 or L_642_arg0.UserInputType == Enum.UserInputType.Touch then
					local L_643_, L_644_ = L_633_.AbsolutePosition, L_633_.AbsoluteSize
					if L_614_.X < L_643_.X or L_614_.X > L_643_.X + L_644_.X or L_614_.Y < (L_643_.Y - 20 - 1) or L_614_.Y > L_643_.Y + L_644_.Y then
						L_626_:Close()
					end
				end
			end)
			local L_639_ = L_622_arg0.ScrollFrame
			function L_626_.Open(L_645_arg0)
				L_626_.Opened = true
				L_639_.ScrollingEnabled = false
				L_634_.Visible = true
				L_612_:Create(L_633_, TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
					Size = UDim2.fromScale(1, 1)
				}):Play()
			end
			function L_626_.Close(L_646_arg0)
				L_626_.Opened = false
				L_639_.ScrollingEnabled = true
				L_633_.Size = UDim2.fromScale(1, 0.6)
				L_634_.Visible = false
			end
			function L_626_.Display(L_647_arg0)
				local L_648_, L_649_ = L_626_.Values, ''
				if L_624_arg2.Multi then
					for L_650_forvar0, L_651_forvar1 in next, L_648_ do
						if L_626_.Value[L_651_forvar1] then
							L_649_ = L_649_ .. L_651_forvar1 .. ', '
						end
					end
					L_649_ = L_649_:sub(1, #L_649_ - 2)
				else
					L_649_ = L_626_.Value or ''
				end
				L_628_.Text = (L_649_ == '' and '--' or L_649_)
			end
			function L_626_.GetActiveValues(L_652_arg0)
				if L_624_arg2.Multi then
					local L_653_ = {}
					for L_654_forvar0, L_655_forvar1 in next, L_626_.Value do
						table.insert(L_653_, L_654_forvar0)
					end
					return L_653_
				else
					return L_626_.Value and 1 or 0
				end
			end
			function L_626_.BuildDropdownList(L_656_arg0)
				local L_657_, L_658_ = L_626_.Values, {}
				for L_660_forvar0, L_661_forvar1 in next, L_632_:GetChildren() do
					if not L_661_forvar1:IsA'UIListLayout' then
						L_661_forvar1:Destroy()
					end
				end
				local L_659_ = 0
				for L_662_forvar0, L_663_forvar1 in next, L_657_ do
					local L_664_ = {}
					L_659_ = L_659_ + 1
					local L_665_, L_666_ = L_619_('Frame', {
						Size = UDim2.fromOffset(4, 14),
						BackgroundColor3 = Color3.fromRGB(76, 194, 255),
						Position = UDim2.fromOffset(-1, 16),
						AnchorPoint = Vector2.new(0, 0.5),
						ThemeTag = {
							BackgroundColor3 = 'Accent'
						}
					}, {
						L_619_('UICorner', {
							CornerRadius = UDim.new(0, 2)
						})
					}), L_619_('TextLabel', {
						FontFace = Font.new'rbxasset://fonts/families/GothamSSm.json',
						Text = L_663_forvar1,
						TextColor3 = Color3.fromRGB(200, 200, 200),
						TextSize = 13,
						TextXAlignment = Enum.TextXAlignment.Left,
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						AutomaticSize = Enum.AutomaticSize.Y,
						BackgroundTransparency = 1,
						Size = UDim2.fromScale(1, 1),
						Position = UDim2.fromOffset(10, 0),
						Name = 'ButtonLabel',
						ThemeTag = {
							TextColor3 = 'Text'
						}
					})
					local L_667_, L_668_ = (L_619_('TextButton', {
						Size = UDim2.new(1, -5, 0, 32),
						BackgroundTransparency = 1,
						ZIndex = 23,
						Text = '',
						Parent = L_632_,
						ThemeTag = {
							BackgroundColor3 = 'DropdownOption'
						}
					}, {
						L_665_,
						L_666_,
						L_619_('UICorner', {
							CornerRadius = UDim.new(0, 6)
						})
					}))
					if L_624_arg2.Multi then
						L_668_ = L_626_.Value[L_663_forvar1]
					else
						L_668_ = L_626_.Value == L_663_forvar1
					end
					local L_669_, L_670_ = L_617_.SpringMotor(1, L_667_, 'BackgroundTransparency')
					local L_671_, L_672_ = L_617_.SpringMotor(1, L_665_, 'BackgroundTransparency')
					local L_673_ = L_618_.SingleMotor.new(6)
					L_673_:onStep(function(L_674_arg0)
						L_665_.Size = UDim2.new(0, 4, 0, L_674_arg0)
					end)
					L_617_.AddSignal(L_667_.MouseEnter, function()
						L_670_(L_668_ and 0.85 or 0.89)
					end)
					L_617_.AddSignal(L_667_.MouseLeave, function()
						L_670_(L_668_ and 0.89 or 1)
					end)
					L_617_.AddSignal(L_667_.MouseButton1Down, function()
						L_670_(0.92)
					end)
					L_617_.AddSignal(L_667_.MouseButton1Up, function()
						L_670_(L_668_ and 0.85 or 0.89)
					end)
					function L_664_.UpdateButton(L_675_arg0)
						if L_624_arg2.Multi then
							L_668_ = L_626_.Value[L_663_forvar1]
							if L_668_ then
								L_670_(0.89)
							end
						else
							L_668_ = L_626_.Value == L_663_forvar1
							L_670_(L_668_ and 0.89 or 1)
						end
						L_673_:setGoal(L_618_.Spring.new(L_668_ and 14 or 6, {
							frequency = 6
						}))
						L_672_(L_668_ and 0 or 1)
					end
					L_666_.InputBegan:Connect(function(L_676_arg0)
						if L_676_arg0.UserInputType == Enum.UserInputType.MouseButton1 or L_676_arg0.UserInputType == Enum.UserInputType.Touch then
							local L_677_ = not L_668_
							if L_626_:GetActiveValues() == 1 and not L_677_ and not L_624_arg2.AllowNull then
							else
								if L_624_arg2.Multi then
									L_668_ = L_677_
									L_626_.Value[L_663_forvar1] = L_668_ and true or nil
								else
									L_668_ = L_677_
									L_626_.Value = L_668_ and L_663_forvar1 or nil
									for L_678_forvar0, L_679_forvar1 in next, L_658_ do
										L_679_forvar1:UpdateButton()
									end
								end
								L_664_:UpdateButton()
								L_626_:Display()
								L_625_:SafeCallback(L_626_.Callback, L_626_.Value)
								L_625_:SafeCallback(L_626_.Changed, L_626_.Value)
							end
						end
					end)
					L_664_:UpdateButton()
					L_626_:Display()
					L_658_[L_667_] = L_664_
				end
				L_636_ = 0
				for L_680_forvar0, L_681_forvar1 in next, L_658_ do
					if L_680_forvar0.ButtonLabel then
						if L_680_forvar0.ButtonLabel.TextBounds.X > L_636_ then
							L_636_ = L_680_forvar0.ButtonLabel.TextBounds.X
						end
					end
				end
				L_636_ = L_636_ + 30
				L_638_()
				L_637_()
			end
			-- new: helper to compute a simple hash (string) from values array

	local function hashValuesArray(array)

		if type(array) ~= "table" then return "" end

		local key = ""

		for i, v in array do

			key = key .. tostring(v) .. "|"

		end

		return key

	end
			function L_626_.SetValues(L_682_arg0, L_683_arg1)
				if L_683_arg1 then
					L_626_.Values = L_683_arg1
				end
				L_626_:BuildDropdownList()
					L_626_:Display()

	end



	-- new: force-refresh method

	function L_626_:Refresh()

		local values = L_626_.Values

		if L_626_.ValuesProvider and type(L_626_.ValuesProvider) == "function" then

			values = L_626_.ValuesProvider()

		end

		-- only update if values have changed

		local hash = hashValuesArray(values)

		if hash ~= L_626_._lastValuesHash then

			L_626_.Values = values

			L_626_._lastValuesHash = hash

			L_626_:BuildDropdownList()

			L_626_:Display()

		end

	end



	-- new: start auto-refreshing if ValuesProvider is supplied

	if L_626_.ValuesProvider and type(L_626_.ValuesProvider) == "function" then

		task.spawn(function()

			while true do

				if L_626_.Destroyed then break end

				L_626_:Refresh()

				task.wait(0.5)

			end

		end)
			end
			function L_626_.OnChanged(L_684_arg0, L_685_arg1)
				L_626_.Changed = L_685_arg1
				L_685_arg1(L_626_.Value)
			end
			function L_626_.SetValue(L_686_arg0, L_687_arg1)
				if L_626_.Multi then
					local L_688_ = {}
					for L_689_forvar0, L_690_forvar1 in next, L_687_arg1 do
						if table.find(L_626_.Values, L_689_forvar0) then
							L_688_[L_689_forvar0] = true
						end
					end
					L_626_.Value = L_688_
				else
					if not L_687_arg1 then
						L_626_.Value = nil
					elseif table.find(L_626_.Values, L_687_arg1) then
						L_626_.Value = L_687_arg1
					end
				end
				L_626_:BuildDropdownList()
				L_625_:SafeCallback(L_626_.Callback, L_626_.Value)
				L_625_:SafeCallback(L_626_.Changed, L_626_.Value)
			end
			function L_626_.Destroy(L_691_arg0)
				L_627_:Destroy()
				L_625_.Options[L_623_arg1] = nil
				L_626_.Destroyed = true
			end
			L_626_:BuildDropdownList()
			L_626_:Display()
			local L_640_ = {}
			if type(L_624_arg2.Default) == 'string' then
				local L_692_ = table.find(L_626_.Values, L_624_arg2.Default)
				if L_692_ then
					table.insert(L_640_, L_692_)
				end
			elseif type(L_624_arg2.Default) == 'table' then
				for L_693_forvar0, L_694_forvar1 in next, L_624_arg2.Default do
					local L_695_ = table.find(L_626_.Values, L_694_forvar1)
					if L_695_ then
						table.insert(L_640_, L_695_)
					end
				end
			elseif type(L_624_arg2.Default) == 'number' and L_626_.Values[L_624_arg2.Default] ~= nil then
				table.insert(L_640_, L_624_arg2.Default)
			end
			if next(L_640_) then
				for L_696_forvar0 = 1, #L_640_ do
					local L_697_ = L_640_[L_696_forvar0]
					if L_624_arg2.Multi then
						L_626_.Value[L_626_.Values[L_697_]] = true
					else
						L_626_.Value = L_626_.Values[L_697_]
					end
					if not L_624_arg2.Multi then
						break
					end
				end
				L_626_:BuildDropdownList()
				L_626_:Display()
			end
			L_625_.Options[L_623_arg1] = L_626_
			return L_626_
		end
		return L_621_
	end,
	[23] = function()
		local L_698_, L_699_, L_700_, L_701_, L_702_ = L_3_(23)
		local L_703_ = L_699_.Parent.Parent
		local L_704_ = L_700_(L_703_.Creator)
		local L_705_, L_706_, L_707_, L_708_ = L_704_.New, L_704_.AddSignal, L_703_.Components, {}
		L_708_.__index = L_708_
		L_708_.__type = 'Input'
		function L_708_.New(L_709_arg0, L_710_arg1, L_711_arg2)
			local L_712_ = L_709_arg0.Library
			assert(L_711_arg2.Title, 'Input - Missing Title')
			L_711_arg2.Callback = L_711_arg2.Callback or function()
			end
			local L_713_, L_714_ = {
				Value = L_711_arg2.Default or '',
				Numeric = L_711_arg2.Numeric or false,
				Finished = L_711_arg2.Finished or false,
				Callback = L_711_arg2.Callback or function(L_717_arg0)
				end,
				Type = 'Input'
			}, L_700_(L_707_.Element)(L_711_arg2.Title, L_711_arg2.Description, L_709_arg0.Container, false)
			L_713_.SetTitle = L_714_.SetTitle
			L_713_.SetDesc = L_714_.SetDesc
			local L_715_ = L_700_(L_707_.Textbox)(L_714_.Frame, true)
			L_715_.Frame.Position = UDim2.new(1, -10, 0.5, 0)
			L_715_.Frame.AnchorPoint = Vector2.new(1, 0.5)
			L_715_.Frame.Size = UDim2.fromOffset(160, 30)
			L_715_.Input.Text = L_711_arg2.Default or ''
			L_715_.Input.PlaceholderText = L_711_arg2.Placeholder or ''
			local L_716_ = L_715_.Input
			function L_713_.SetValue(L_718_arg0, L_719_arg1)
				if L_711_arg2.MaxLength and #L_719_arg1 > L_711_arg2.MaxLength then
					L_719_arg1 = L_719_arg1:sub(1, L_711_arg2.MaxLength)
				end
				if L_713_.Numeric then
					if (not tonumber(L_719_arg1)) and L_719_arg1:len() > 0 then
						L_719_arg1 = L_713_.Value
					end
				end
				L_713_.Value = L_719_arg1
				L_716_.Text = L_719_arg1
				L_712_:SafeCallback(L_713_.Callback, L_713_.Value)
				L_712_:SafeCallback(L_713_.Changed, L_713_.Value)
			end
			if L_713_.Finished then
				L_706_(L_716_.FocusLost, function(L_720_arg0)
					if not L_720_arg0 then
						return
					end
					L_713_:SetValue(L_716_.Text)
				end)
			else
				L_706_(L_716_:GetPropertyChangedSignal'Text', function()
					L_713_:SetValue(L_716_.Text)
				end)
			end
			function L_713_.OnChanged(L_721_arg0, L_722_arg1)
				L_713_.Changed = L_722_arg1
				L_722_arg1(L_713_.Value)
			end
			function L_713_.Destroy(L_723_arg0)
				L_714_:Destroy()
				L_712_.Options[L_710_arg1] = nil
			end
			L_712_.Options[L_710_arg1] = L_713_
			return L_713_
		end
		return L_708_
	end,
	[24] = function()
		local L_724_, L_725_, L_726_, L_727_, L_728_ = L_3_(24)
		local L_729_, L_730_ = game:GetService'UserInputService', L_725_.Parent.Parent
		local L_731_ = L_726_(L_730_.Creator)
		local L_732_, L_733_, L_734_ = L_731_.New, L_730_.Components, {}
		L_734_.__index = L_734_
		L_734_.__type = 'Keybind'
		function L_734_.New(L_735_arg0, L_736_arg1, L_737_arg2)
			local L_738_ = L_735_arg0.Library
			assert(L_737_arg2.Title, 'KeyBind - Missing Title')
			assert(L_737_arg2.Default, 'KeyBind - Missing default value.')
			local L_739_, L_740_, L_741_ = {
				Value = L_737_arg2.Default,
				Toggled = false,
				Mode = L_737_arg2.Mode or 'Toggle',
				Type = 'Keybind',
				Callback = L_737_arg2.Callback or function(L_744_arg0)
				end,
				ChangedCallback = L_737_arg2.ChangedCallback or function(L_745_arg0)
				end
			}, false, L_726_(L_733_.Element)(L_737_arg2.Title, L_737_arg2.Description, L_735_arg0.Container, true)
			L_739_.SetTitle = L_741_.SetTitle
			L_739_.SetDesc = L_741_.SetDesc
			local L_742_ = L_732_('TextLabel', {
				FontFace = Font.new('rbxasset://fonts/families/GothamSSm.json', Enum.FontWeight.Regular, Enum.FontStyle.Normal),
				Text = L_737_arg2.Default,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Center,
				Size = UDim2.new(0, 0, 0, 14),
				Position = UDim2.new(0, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				AutomaticSize = Enum.AutomaticSize.X,
				BackgroundTransparency = 1,
				ThemeTag = {
					TextColor3 = 'Text'
				}
			})
			local L_743_ = L_732_('TextButton', {
				Size = UDim2.fromOffset(0, 30),
				Position = UDim2.new(1, -10, 0.5, 0),
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundTransparency = 0.9,
				Parent = L_741_.Frame,
				AutomaticSize = Enum.AutomaticSize.X,
				ThemeTag = {
					BackgroundColor3 = 'Keybind'
				}
			}, {
				L_732_('UICorner', {
					CornerRadius = UDim.new(0, 5)
				}),
				L_732_('UIPadding', {
					PaddingLeft = UDim.new(0, 8),
					PaddingRight = UDim.new(0, 8)
				}),
				L_732_('UIStroke', {
					Transparency = 0.5,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					ThemeTag = {
						Color = 'InElementBorder'
					}
				}),
				L_742_
			})
			function L_739_.GetState(L_746_arg0)
				if L_729_:GetFocusedTextBox() and L_739_.Mode ~= 'Always' then
					return false
				end
				if L_739_.Mode == 'Always' then
					return true
				elseif L_739_.Mode == 'Hold' then
					local L_747_ = L_739_.Value
					if L_747_ == 'None' then
						return false
					end
					if L_747_ == 'RMB' then
						return L_729_:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)
					else
						return L_729_:IsKeyDown(Enum.KeyCode[L_747_])
					end
				else
					return L_739_.Toggled
				end
			end
			function L_739_.SetValue(L_748_arg0, L_749_arg1, L_750_arg2)
				L_749_arg1 = L_749_arg1 or L_739_.Key
				L_750_arg2 = L_750_arg2 or L_739_.Mode
				L_742_.Text = L_749_arg1
				L_739_.Value = L_749_arg1
				L_739_.Mode = L_750_arg2
			end
			function L_739_.OnClick(L_751_arg0, L_752_arg1)
				L_739_.Clicked = L_752_arg1
			end
			function L_739_.OnChanged(L_753_arg0, L_754_arg1)
				L_739_.Changed = L_754_arg1
				L_754_arg1(L_739_.Value)
			end
			function L_739_.DoClick(L_755_arg0)
				L_738_:SafeCallback(L_739_.Callback, L_739_.Toggled)
				L_738_:SafeCallback(L_739_.Clicked, L_739_.Toggled)
			end
			function L_739_.Destroy(L_756_arg0)
				L_741_:Destroy()
				L_738_.Options[L_736_arg1] = nil
			end
			L_731_.AddSignal(L_743_.InputBegan, function(L_757_arg0)
				if L_757_arg0.UserInputType == Enum.UserInputType.MouseButton1 or L_757_arg0.UserInputType == Enum.UserInputType.Touch then
					L_740_ = true
					L_742_.Text = '...'
					task.wait(0.2)
					local L_758_
					L_758_ = L_729_.InputBegan:Connect(function(L_759_arg0)
						local L_760_
						if L_759_arg0.UserInputType == Enum.UserInputType.Keyboard then
							L_760_ = L_759_arg0.KeyCode.Name
						elseif L_759_arg0.UserInputType == Enum.UserInputType.MouseButton2 then
							L_760_ = 'RMB'
						end
						local L_761_
						L_761_ = L_729_.InputEnded:Connect(function(L_762_arg0)
							if L_762_arg0.KeyCode.Name == L_760_ or L_760_ == 'RMB' and L_762_arg0.UserInputType == Enum.UserInputType.MouseButton2 then
								L_740_ = false
								L_742_.Text = L_760_
								L_739_.Value = L_760_
								L_738_:SafeCallback(L_739_.ChangedCallback, L_762_arg0.KeyCode ~= Enum.KeyCode.Unknown and L_762_arg0.KeyCode or L_762_arg0.UserInputType)
								L_738_:SafeCallback(L_739_.Changed, L_762_arg0.KeyCode ~= Enum.KeyCode.Unknown and L_762_arg0.KeyCode or L_762_arg0.UserInputType)
								L_758_:Disconnect()
								L_761_:Disconnect()
							end
						end)
					end)
				end
			end)
			L_731_.AddSignal(L_729_.InputBegan, function(L_763_arg0)
				if not L_740_ and not L_729_:GetFocusedTextBox() and L_739_.Mode == 'Toggle' then
					local L_764_ = L_739_.Value
					if L_764_ == 'RMB' and L_763_arg0.UserInputType == Enum.UserInputType.MouseButton2 then
						L_739_.Toggled = not L_739_.Toggled
						L_739_:DoClick()
					elseif L_763_arg0.UserInputType == Enum.UserInputType.Keyboard and L_763_arg0.KeyCode.Name == L_764_ then
						L_739_.Toggled = not L_739_.Toggled
						L_739_:DoClick()
					end
				end
			end)
			L_738_.Options[L_736_arg1] = L_739_
			return L_739_
		end
		return L_734_
	end,
	[25] = function()
		local L_765_, L_766_, L_767_, L_768_, L_769_ = L_3_(25)
		local L_770_ = L_766_.Parent.Parent
		local L_771_, L_772_, L_773_, L_774_ = L_770_.Components, L_767_(L_770_.Packages.Flipper), L_767_(L_770_.Creator), {}
		L_774_.__index = L_774_
		L_774_.__type = 'Paragraph'
		function L_774_.New(L_775_arg0, L_776_arg1)
			assert(L_776_arg1.Title, 'Paragraph - Missing Title')
			L_776_arg1.Content = L_776_arg1.Content or ''
			local L_777_ = L_767_(L_771_.Element)(L_776_arg1.Title, L_776_arg1.Content, L_774_.Container, false)
			L_777_.Frame.BackgroundTransparency = 0.92
			L_777_.Border.Transparency = 0.6
			return L_777_
		end
		return L_774_
	end,
	[26] = function()
		local L_778_, L_779_, L_780_, L_781_, L_782_ = L_3_(26)
		local L_783_, L_784_ = game:GetService'UserInputService', L_779_.Parent.Parent
		local L_785_ = L_780_(L_784_.Creator)
		local L_786_, L_787_, L_788_ = L_785_.New, L_784_.Components, {}
		L_788_.__index = L_788_
		L_788_.__type = 'Slider'
		function L_788_.New(L_789_arg0, L_790_arg1, L_791_arg2)
			local L_792_ = L_789_arg0.Library
			assert(L_791_arg2.Title, 'Slider - Missing Title.')
			assert(L_791_arg2.Default, 'Slider - Missing default value.')
			assert(L_791_arg2.Min, 'Slider - Missing minimum value.')
			assert(L_791_arg2.Max, 'Slider - Missing maximum value.')
			assert(L_791_arg2.Rounding, 'Slider - Missing rounding value.')
			local L_793_, L_794_, L_795_ = {
				Value = nil,
				Min = L_791_arg2.Min,
				Max = L_791_arg2.Max,
				Rounding = L_791_arg2.Rounding,
				Callback = L_791_arg2.Callback or function(L_801_arg0)
				end,
				Type = 'Slider'
			}, false, L_780_(L_787_.Element)(L_791_arg2.Title, L_791_arg2.Description, L_789_arg0.Container, false)
			L_795_.DescLabel.Size = UDim2.new(1, -170, 0, 14)
			L_793_.SetTitle = L_795_.SetTitle
			L_793_.SetDesc = L_795_.SetDesc
			local L_796_ = L_786_('ImageLabel', {
				AnchorPoint = Vector2.new(0, 0.5),
				Position = UDim2.new(0, -7, 0.5, 0),
				Size = UDim2.fromOffset(14, 14),
				Image = 'rbxassetid://12266946128',
				ThemeTag = {
					ImageColor3 = 'Accent'
				}
			})
			local L_797_, L_798_, L_799_ = L_786_('Frame', {
				BackgroundTransparency = 1,
				Position = UDim2.fromOffset(7, 0),
				Size = UDim2.new(1, -14, 1, 0)
			}, {
				L_796_
			}), L_786_('Frame', {
				Size = UDim2.new(0, 0, 1, 0),
				ThemeTag = {
					BackgroundColor3 = 'Accent'
				}
			}, {
				L_786_('UICorner', {
					CornerRadius = UDim.new(1, 0)
				})
			}), L_786_('TextLabel', {
				FontFace = Font.new'rbxasset://fonts/families/GothamSSm.json',
				Text = 'Value',
				TextSize = 12,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Right,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				Size = UDim2.new(0, 100, 0, 14),
				Position = UDim2.new(0, -4, 0.5, 0),
				AnchorPoint = Vector2.new(1, 0.5),
				ThemeTag = {
					TextColor3 = 'SubText'
				}
			})
			local L_800_ = L_786_('Frame', {
				Size = UDim2.new(1, 0, 0, 4),
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(1, -10, 0.5, 0),
				BackgroundTransparency = 0.4,
				Parent = L_795_.Frame,
				ThemeTag = {
					BackgroundColor3 = 'SliderRail'
				}
			}, {
				L_786_('UICorner', {
					CornerRadius = UDim.new(1, 0)
				}),
				L_786_('UISizeConstraint', {
					MaxSize = Vector2.new(150, math.huge)
				}),
				L_799_,
				L_798_,
				L_797_
			})
			L_785_.AddSignal(L_796_.InputBegan, function(L_802_arg0)
				if L_802_arg0.UserInputType == Enum.UserInputType.MouseButton1 or L_802_arg0.UserInputType == Enum.UserInputType.Touch then
					L_794_ = true
				end
			end)
			L_785_.AddSignal(L_796_.InputEnded, function(L_803_arg0)
				if L_803_arg0.UserInputType == Enum.UserInputType.MouseButton1 or L_803_arg0.UserInputType == Enum.UserInputType.Touch then
					L_794_ = false
				end
			end)
			L_785_.AddSignal(L_783_.InputChanged, function(L_804_arg0)
				if L_794_ and (L_804_arg0.UserInputType == Enum.UserInputType.MouseMovement or L_804_arg0.UserInputType == Enum.UserInputType.Touch) then
					local L_805_ = math.clamp((L_804_arg0.Position.X - L_797_.AbsolutePosition.X) / L_797_.AbsoluteSize.X, 0, 1)
					L_793_:SetValue(L_793_.Min + ((L_793_.Max - L_793_.Min) * L_805_))
				end
			end)
			function L_793_.OnChanged(L_806_arg0, L_807_arg1)
				L_793_.Changed = L_807_arg1
				L_807_arg1(L_793_.Value)
			end
			function L_793_.SetValue(L_808_arg0, L_809_arg1)
				L_808_arg0.Value = L_792_:Round(math.clamp(L_809_arg1, L_793_.Min, L_793_.Max), L_793_.Rounding)
				L_796_.Position = UDim2.new((L_808_arg0.Value - L_793_.Min) / (L_793_.Max - L_793_.Min), -7, 0.5, 0)
				L_798_.Size = UDim2.fromScale((L_808_arg0.Value - L_793_.Min) / (L_793_.Max - L_793_.Min), 1)
				L_799_.Text = tostring(L_808_arg0.Value)
				L_792_:SafeCallback(L_793_.Callback, L_808_arg0.Value)
				L_792_:SafeCallback(L_793_.Changed, L_808_arg0.Value)
			end
			function L_793_.Destroy(L_810_arg0)
				L_795_:Destroy()
				L_792_.Options[L_790_arg1] = nil
			end
			L_793_:SetValue(L_791_arg2.Default)
			L_792_.Options[L_790_arg1] = L_793_
			return L_793_
		end
		return L_788_
	end,
	[27] = function()
		local L_811_, L_812_, L_813_, L_814_, L_815_ = L_3_(27)
		local L_816_, L_817_ = game:GetService'TweenService', L_812_.Parent.Parent
		local L_818_ = L_813_(L_817_.Creator)
		local L_819_, L_820_, L_821_ = L_818_.New, L_817_.Components, {}
		L_821_.__index = L_821_
		L_821_.__type = 'Toggle'
		function L_821_.New(L_822_arg0, L_823_arg1, L_824_arg2)
			local L_825_ = L_822_arg0.Library
			assert(L_824_arg2.Title, 'Toggle - Missing Title')
			local L_826_, L_827_ = {
				Value = L_824_arg2.Default or false,
				Callback = L_824_arg2.Callback or function(L_831_arg0)
				end,
				Type = 'Toggle'
			}, L_813_(L_820_.Element)(L_824_arg2.Title, L_824_arg2.Description, L_822_arg0.Container, true)
			L_827_.DescLabel.Size = UDim2.new(1, -54, 0, 14)
			L_826_.SetTitle = L_827_.SetTitle
			L_826_.SetDesc = L_827_.SetDesc
			local L_828_, L_829_ = L_819_('ImageLabel', {
				AnchorPoint = Vector2.new(0, 0.5),
				Size = UDim2.fromOffset(14, 14),
				Position = UDim2.new(0, 2, 0.5, 0),
				Image = 'rbxassetid://12266946128',
				ImageTransparency = 0.5,
				ThemeTag = {
					ImageColor3 = 'ToggleSlider'
				}
			}), L_819_('UIStroke', {
				Transparency = 0.5,
				ThemeTag = {
					Color = 'ToggleSlider'
				}
			})
			local L_830_ = L_819_('Frame', {
				Size = UDim2.fromOffset(36, 18),
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(1, -10, 0.5, 0),
				Parent = L_827_.Frame,
				BackgroundTransparency = 1,
				ThemeTag = {
					BackgroundColor3 = 'Accent'
				}
			}, {
				L_819_('UICorner', {
					CornerRadius = UDim.new(0, 9)
				}),
				L_829_,
				L_828_
			})
			function L_826_.OnChanged(L_832_arg0, L_833_arg1)
				L_826_.Changed = L_833_arg1
				L_833_arg1(L_826_.Value)
			end
			function L_826_.SetValue(L_834_arg0, L_835_arg1)
				L_835_arg1 = not not L_835_arg1
				L_826_.Value = L_835_arg1
				L_818_.OverrideTag(L_829_, {
					Color = L_826_.Value and 'Accent' or 'ToggleSlider'
				})
				L_818_.OverrideTag(L_828_, {
					ImageColor3 = L_826_.Value and 'ToggleToggled' or 'ToggleSlider'
				})
				L_816_:Create(L_828_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
					Position = UDim2.new(0, L_826_.Value and 19 or 2, 0.5, 0)
				}):Play()
				L_816_:Create(L_830_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
					BackgroundTransparency = L_826_.Value and 0 or 1
				}):Play()
				L_828_.ImageTransparency = L_826_.Value and 0 or 0.5
				L_825_:SafeCallback(L_826_.Callback, L_826_.Value)
				L_825_:SafeCallback(L_826_.Changed, L_826_.Value)
			end
			function L_826_.Destroy(L_836_arg0)
				L_827_:Destroy()
				L_825_.Options[L_823_arg1] = nil
			end
			L_818_.AddSignal(L_827_.Frame.MouseButton1Click, function()
				L_826_:SetValue(not L_826_.Value)
			end)
			L_826_:SetValue(L_826_.Value)
			L_825_.Options[L_823_arg1] = L_826_
			return L_826_
		end
		return L_821_
	end,
	[28] = function()
		local L_837_, L_838_, L_839_, L_840_, L_841_ = L_3_(28)
		return {
			assets = {['lucide-accessibility'] = 'rbxassetid://10709751939',['lucide-activity'] = 'rbxassetid://10709752035',['lucide-air-vent'] = 'rbxassetid://10709752131',['lucide-airplay'] = 'rbxassetid://10709752254',['lucide-alarm-check'] = 'rbxassetid://10709752405',['lucide-alarm-clock'] = 'rbxassetid://10709752630',['lucide-alarm-clock-off'] = 'rbxassetid://10709752508',['lucide-alarm-minus'] = 'rbxassetid://10709752732',['lucide-alarm-plus'] = 'rbxassetid://10709752825',['lucide-album'] = 'rbxassetid://10709752906',['lucide-alert-circle'] = 'rbxassetid://10709752996',['lucide-alert-octagon'] = 'rbxassetid://10709753064',['lucide-alert-triangle'] = 'rbxassetid://10709753149',['lucide-align-center'] = 'rbxassetid://10709753570',['lucide-align-center-horizontal'] = 'rbxassetid://10709753272',['lucide-align-center-vertical'] = 'rbxassetid://10709753421',['lucide-align-end-horizontal'] = 'rbxassetid://10709753692',['lucide-align-end-vertical'] = 'rbxassetid://10709753808',['lucide-align-horizontal-distribute-center'] = 'rbxassetid://10747779791',['lucide-align-horizontal-distribute-end'] = 'rbxassetid://10747784534',['lucide-align-horizontal-distribute-start'] = 'rbxassetid://10709754118',['lucide-align-horizontal-justify-center'] = 'rbxassetid://10709754204',['lucide-align-horizontal-justify-end'] = 'rbxassetid://10709754317',['lucide-align-horizontal-justify-start'] = 'rbxassetid://10709754436',['lucide-align-horizontal-space-around'] = 'rbxassetid://10709754590',['lucide-align-horizontal-space-between'] = 'rbxassetid://10709754749',['lucide-align-justify'] = 'rbxassetid://10709759610',['lucide-align-left'] = 'rbxassetid://10709759764',['lucide-align-right'] = 'rbxassetid://10709759895',['lucide-align-start-horizontal'] = 'rbxassetid://10709760051',['lucide-align-start-vertical'] = 'rbxassetid://10709760244',['lucide-align-vertical-distribute-center'] = 'rbxassetid://10709760351',['lucide-align-vertical-distribute-end'] = 'rbxassetid://10709760434',['lucide-align-vertical-distribute-start'] = 'rbxassetid://10709760612',['lucide-align-vertical-justify-center'] = 'rbxassetid://10709760814',['lucide-align-vertical-justify-end'] = 'rbxassetid://10709761003',['lucide-align-vertical-justify-start'] = 'rbxassetid://10709761176',['lucide-align-vertical-space-around'] = 'rbxassetid://10709761324',['lucide-align-vertical-space-between'] = 'rbxassetid://10709761434',['lucide-anchor'] = 'rbxassetid://10709761530',['lucide-angry'] = 'rbxassetid://10709761629',['lucide-annoyed'] = 'rbxassetid://10709761722',['lucide-aperture'] = 'rbxassetid://10709761813',['lucide-apple'] = 'rbxassetid://10709761889',['lucide-archive'] = 'rbxassetid://10709762233',['lucide-archive-restore'] = 'rbxassetid://10709762058',['lucide-armchair'] = 'rbxassetid://10709762327',['lucide-arrow-big-down'] = 'rbxassetid://10747796644',['lucide-arrow-big-left'] = 'rbxassetid://10709762574',['lucide-arrow-big-right'] = 'rbxassetid://10709762727',['lucide-arrow-big-up'] = 'rbxassetid://10709762879',['lucide-arrow-down'] = 'rbxassetid://10709767827',['lucide-arrow-down-circle'] = 'rbxassetid://10709763034',['lucide-arrow-down-left'] = 'rbxassetid://10709767656',['lucide-arrow-down-right'] = 'rbxassetid://10709767750',['lucide-arrow-left'] = 'rbxassetid://10709768114',['lucide-arrow-left-circle'] = 'rbxassetid://10709767936',['lucide-arrow-left-right'] = 'rbxassetid://10709768019',['lucide-arrow-right'] = 'rbxassetid://10709768347',['lucide-arrow-right-circle'] = 'rbxassetid://10709768226',['lucide-arrow-up'] = 'rbxassetid://10709768939',['lucide-arrow-up-circle'] = 'rbxassetid://10709768432',['lucide-arrow-up-down'] = 'rbxassetid://10709768538',['lucide-arrow-up-left'] = 'rbxassetid://10709768661',['lucide-arrow-up-right'] = 'rbxassetid://10709768787',['lucide-asterisk'] = 'rbxassetid://10709769095',['lucide-at-sign'] = 'rbxassetid://10709769286',['lucide-award'] = 'rbxassetid://10709769406',['lucide-axe'] = 'rbxassetid://10709769508',['lucide-axis-3d'] = 'rbxassetid://10709769598',['lucide-baby'] = 'rbxassetid://10709769732',['lucide-backpack'] = 'rbxassetid://10709769841',['lucide-baggage-claim'] = 'rbxassetid://10709769935',['lucide-banana'] = 'rbxassetid://10709770005',['lucide-banknote'] = 'rbxassetid://10709770178',['lucide-bar-chart'] = 'rbxassetid://10709773755',['lucide-bar-chart-2'] = 'rbxassetid://10709770317',['lucide-bar-chart-3'] = 'rbxassetid://10709770431',['lucide-bar-chart-4'] = 'rbxassetid://10709770560',['lucide-bar-chart-horizontal'] = 'rbxassetid://10709773669',['lucide-barcode'] = 'rbxassetid://10747360675',['lucide-baseline'] = 'rbxassetid://10709773863',['lucide-bath'] = 'rbxassetid://10709773963',['lucide-battery'] = 'rbxassetid://10709774640',['lucide-battery-charging'] = 'rbxassetid://10709774068',['lucide-battery-full'] = 'rbxassetid://10709774206',['lucide-battery-low'] = 'rbxassetid://10709774370',['lucide-battery-medium'] = 'rbxassetid://10709774513',['lucide-beaker'] = 'rbxassetid://10709774756',['lucide-bed'] = 'rbxassetid://10709775036',['lucide-bed-double'] = 'rbxassetid://10709774864',['lucide-bed-single'] = 'rbxassetid://10709774968',['lucide-beer'] = 'rbxassetid://10709775167',['lucide-bell'] = 'rbxassetid://10709775704',['lucide-bell-minus'] = 'rbxassetid://10709775241',['lucide-bell-off'] = 'rbxassetid://10709775320',['lucide-bell-plus'] = 'rbxassetid://10709775448',['lucide-bell-ring'] = 'rbxassetid://10709775560',['lucide-bike'] = 'rbxassetid://10709775894',['lucide-binary'] = 'rbxassetid://10709776050',['lucide-bitcoin'] = 'rbxassetid://10709776126',['lucide-bluetooth'] = 'rbxassetid://10709776655',['lucide-bluetooth-connected'] = 'rbxassetid://10709776240',['lucide-bluetooth-off'] = 'rbxassetid://10709776344',['lucide-bluetooth-searching'] = 'rbxassetid://10709776501',['lucide-bold'] = 'rbxassetid://10747813908',['lucide-bomb'] = 'rbxassetid://10709781460',['lucide-bone'] = 'rbxassetid://10709781605',['lucide-book'] = 'rbxassetid://10709781824',['lucide-book-open'] = 'rbxassetid://10709781717',['lucide-bookmark'] = 'rbxassetid://10709782154',['lucide-bookmark-minus'] = 'rbxassetid://10709781919',['lucide-bookmark-plus'] = 'rbxassetid://10709782044',['lucide-bot'] = 'rbxassetid://10709782230',['lucide-box'] = 'rbxassetid://10709782497',['lucide-box-select'] = 'rbxassetid://10709782342',['lucide-boxes'] = 'rbxassetid://10709782582',['lucide-briefcase'] = 'rbxassetid://10709782662',['lucide-brush'] = 'rbxassetid://10709782758',['lucide-bug'] = 'rbxassetid://10709782845',['lucide-building'] = 'rbxassetid://10709783051',['lucide-building-2'] = 'rbxassetid://10709782939',['lucide-bus'] = 'rbxassetid://10709783137',['lucide-cake'] = 'rbxassetid://10709783217',['lucide-calculator'] = 'rbxassetid://10709783311',['lucide-calendar'] = 'rbxassetid://10709789505',['lucide-calendar-check'] = 'rbxassetid://10709783474',['lucide-calendar-check-2'] = 'rbxassetid://10709783392',['lucide-calendar-clock'] = 'rbxassetid://10709783577',['lucide-calendar-days'] = 'rbxassetid://10709783673',['lucide-calendar-heart'] = 'rbxassetid://10709783835',['lucide-calendar-minus'] = 'rbxassetid://10709783959',['lucide-calendar-off'] = 'rbxassetid://10709788784',['lucide-calendar-plus'] = 'rbxassetid://10709788937',['lucide-calendar-range'] = 'rbxassetid://10709789053',['lucide-calendar-search'] = 'rbxassetid://10709789200',['lucide-calendar-x'] = 'rbxassetid://10709789407',['lucide-calendar-x-2'] = 'rbxassetid://10709789329',['lucide-camera'] = 'rbxassetid://10709789686',['lucide-camera-off'] = 'rbxassetid://10747822677',['lucide-car'] = 'rbxassetid://10709789810',['lucide-carrot'] = 'rbxassetid://10709789960',['lucide-cast'] = 'rbxassetid://10709790097',['lucide-charge'] = 'rbxassetid://10709790202',['lucide-check'] = 'rbxassetid://10709790644',['lucide-check-circle'] = 'rbxassetid://10709790387',['lucide-check-circle-2'] = 'rbxassetid://10709790298',['lucide-check-square'] = 'rbxassetid://10709790537',['lucide-chef-hat'] = 'rbxassetid://10709790757',['lucide-cherry'] = 'rbxassetid://10709790875',['lucide-chevron-down'] = 'rbxassetid://10709790948',['lucide-chevron-first'] = 'rbxassetid://10709791015',['lucide-chevron-last'] = 'rbxassetid://10709791130',['lucide-chevron-left'] = 'rbxassetid://10709791281',['lucide-chevron-right'] = 'rbxassetid://10709791437',['lucide-chevron-up'] = 'rbxassetid://10709791523',['lucide-chevrons-down'] = 'rbxassetid://10709796864',['lucide-chevrons-down-up'] = 'rbxassetid://10709791632',['lucide-chevrons-left'] = 'rbxassetid://10709797151',['lucide-chevrons-left-right'] = 'rbxassetid://10709797006',['lucide-chevrons-right'] = 'rbxassetid://10709797382',['lucide-chevrons-right-left'] = 'rbxassetid://10709797274',['lucide-chevrons-up'] = 'rbxassetid://10709797622',['lucide-chevrons-up-down'] = 'rbxassetid://10709797508',['lucide-chrome'] = 'rbxassetid://10709797725',['lucide-circle'] = 'rbxassetid://10709798174',['lucide-circle-dot'] = 'rbxassetid://10709797837',['lucide-circle-ellipsis'] = 'rbxassetid://10709797985',['lucide-circle-slashed'] = 'rbxassetid://10709798100',['lucide-citrus'] = 'rbxassetid://10709798276',['lucide-clapperboard'] = 'rbxassetid://10709798350',['lucide-clipboard'] = 'rbxassetid://10709799288',['lucide-clipboard-check'] = 'rbxassetid://10709798443',['lucide-clipboard-copy'] = 'rbxassetid://10709798574',['lucide-clipboard-edit'] = 'rbxassetid://10709798682',['lucide-clipboard-list'] = 'rbxassetid://10709798792',['lucide-clipboard-signature'] = 'rbxassetid://10709798890',['lucide-clipboard-type'] = 'rbxassetid://10709798999',['lucide-clipboard-x'] = 'rbxassetid://10709799124',['lucide-clock'] = 'rbxassetid://10709805144',['lucide-clock-1'] = 'rbxassetid://10709799535',['lucide-clock-10'] = 'rbxassetid://10709799718',['lucide-clock-11'] = 'rbxassetid://10709799818',['lucide-clock-12'] = 'rbxassetid://10709799962',['lucide-clock-2'] = 'rbxassetid://10709803876',['lucide-clock-3'] = 'rbxassetid://10709803989',['lucide-clock-4'] = 'rbxassetid://10709804164',['lucide-clock-5'] = 'rbxassetid://10709804291',['lucide-clock-6'] = 'rbxassetid://10709804435',['lucide-clock-7'] = 'rbxassetid://10709804599',['lucide-clock-8'] = 'rbxassetid://10709804784',['lucide-clock-9'] = 'rbxassetid://10709804996',['lucide-cloud'] = 'rbxassetid://10709806740',['lucide-cloud-cog'] = 'rbxassetid://10709805262',['lucide-cloud-drizzle'] = 'rbxassetid://10709805371',['lucide-cloud-fog'] = 'rbxassetid://10709805477',['lucide-cloud-hail'] = 'rbxassetid://10709805596',['lucide-cloud-lightning'] = 'rbxassetid://10709805727',['lucide-cloud-moon'] = 'rbxassetid://10709805942',['lucide-cloud-moon-rain'] = 'rbxassetid://10709805838',['lucide-cloud-off'] = 'rbxassetid://10709806060',['lucide-cloud-rain'] = 'rbxassetid://10709806277',['lucide-cloud-rain-wind'] = 'rbxassetid://10709806166',['lucide-cloud-snow'] = 'rbxassetid://10709806374',['lucide-cloud-sun'] = 'rbxassetid://10709806631',['lucide-cloud-sun-rain'] = 'rbxassetid://10709806475',['lucide-cloudy'] = 'rbxassetid://10709806859',['lucide-clover'] = 'rbxassetid://10709806995',['lucide-code'] = 'rbxassetid://10709810463',['lucide-code-2'] = 'rbxassetid://10709807111',['lucide-codepen'] = 'rbxassetid://10709810534',['lucide-codesandbox'] = 'rbxassetid://10709810676',['lucide-coffee'] = 'rbxassetid://10709810814',['lucide-cog'] = 'rbxassetid://10709810948',['lucide-coins'] = 'rbxassetid://10709811110',['lucide-columns'] = 'rbxassetid://10709811261',['lucide-command'] = 'rbxassetid://10709811365',['lucide-compass'] = 'rbxassetid://10709811445',['lucide-component'] = 'rbxassetid://10709811595',['lucide-concierge-bell'] = 'rbxassetid://10709811706',['lucide-connection'] = 'rbxassetid://10747361219',['lucide-contact'] = 'rbxassetid://10709811834',['lucide-contrast'] = 'rbxassetid://10709811939',['lucide-cookie'] = 'rbxassetid://10709812067',['lucide-copy'] = 'rbxassetid://10709812159',['lucide-copyleft'] = 'rbxassetid://10709812251',['lucide-copyright'] = 'rbxassetid://10709812311',['lucide-corner-down-left'] = 'rbxassetid://10709812396',['lucide-corner-down-right'] = 'rbxassetid://10709812485',['lucide-corner-left-down'] = 'rbxassetid://10709812632',['lucide-corner-left-up'] = 'rbxassetid://10709812784',['lucide-corner-right-down'] = 'rbxassetid://10709812939',['lucide-corner-right-up'] = 'rbxassetid://10709813094',['lucide-corner-up-left'] = 'rbxassetid://10709813185',['lucide-corner-up-right'] = 'rbxassetid://10709813281',['lucide-cpu'] = 'rbxassetid://10709813383',['lucide-croissant'] = 'rbxassetid://10709818125',['lucide-crop'] = 'rbxassetid://10709818245',['lucide-cross'] = 'rbxassetid://10709818399',['lucide-crosshair'] = 'rbxassetid://10709818534',['lucide-crown'] = 'rbxassetid://10709818626',['lucide-cup-soda'] = 'rbxassetid://10709818763',['lucide-curly-braces'] = 'rbxassetid://10709818847',['lucide-currency'] = 'rbxassetid://10709818931',['lucide-database'] = 'rbxassetid://10709818996',['lucide-delete'] = 'rbxassetid://10709819059',['lucide-diamond'] = 'rbxassetid://10709819149',['lucide-dice-1'] = 'rbxassetid://10709819266',['lucide-dice-2'] = 'rbxassetid://10709819361',['lucide-dice-3'] = 'rbxassetid://10709819508',['lucide-dice-4'] = 'rbxassetid://10709819670',['lucide-dice-5'] = 'rbxassetid://10709819801',['lucide-dice-6'] = 'rbxassetid://10709819896',['lucide-dices'] = 'rbxassetid://10723343321',['lucide-diff'] = 'rbxassetid://10723343416',['lucide-disc'] = 'rbxassetid://10723343537',['lucide-divide'] = 'rbxassetid://10723343805',['lucide-divide-circle'] = 'rbxassetid://10723343636',['lucide-divide-square'] = 'rbxassetid://10723343737',['lucide-dollar-sign'] = 'rbxassetid://10723343958',['lucide-download'] = 'rbxassetid://10723344270',['lucide-download-cloud'] = 'rbxassetid://10723344088',['lucide-droplet'] = 'rbxassetid://10723344432',['lucide-droplets'] = 'rbxassetid://10734883356',['lucide-drumstick'] = 'rbxassetid://10723344737',['lucide-edit'] = 'rbxassetid://10734883598',['lucide-edit-2'] = 'rbxassetid://10723344885',['lucide-edit-3'] = 'rbxassetid://10723345088',['lucide-egg'] = 'rbxassetid://10723345518',['lucide-egg-fried'] = 'rbxassetid://10723345347',['lucide-electricity'] = 'rbxassetid://10723345749',['lucide-electricity-off'] = 'rbxassetid://10723345643',['lucide-equal'] = 'rbxassetid://10723345990',['lucide-equal-not'] = 'rbxassetid://10723345866',['lucide-eraser'] = 'rbxassetid://10723346158',['lucide-euro'] = 'rbxassetid://10723346372',['lucide-expand'] = 'rbxassetid://10723346553',['lucide-external-link'] = 'rbxassetid://10723346684',['lucide-eye'] = 'rbxassetid://10723346959',['lucide-eye-off'] = 'rbxassetid://10723346871',['lucide-factory'] = 'rbxassetid://10723347051',['lucide-fan'] = 'rbxassetid://10723354359',['lucide-fast-forward'] = 'rbxassetid://10723354521',['lucide-feather'] = 'rbxassetid://10723354671',['lucide-figma'] = 'rbxassetid://10723354801',['lucide-file'] = 'rbxassetid://10723374641',['lucide-file-archive'] = 'rbxassetid://10723354921',['lucide-file-audio'] = 'rbxassetid://10723355148',['lucide-file-audio-2'] = 'rbxassetid://10723355026',['lucide-file-axis-3d'] = 'rbxassetid://10723355272',['lucide-file-badge'] = 'rbxassetid://10723355622',['lucide-file-badge-2'] = 'rbxassetid://10723355451',['lucide-file-bar-chart'] = 'rbxassetid://10723355887',['lucide-file-bar-chart-2'] = 'rbxassetid://10723355746',['lucide-file-box'] = 'rbxassetid://10723355989',['lucide-file-check'] = 'rbxassetid://10723356210',['lucide-file-check-2'] = 'rbxassetid://10723356100',['lucide-file-clock'] = 'rbxassetid://10723356329',['lucide-file-code'] = 'rbxassetid://10723356507',['lucide-file-cog'] = 'rbxassetid://10723356830',['lucide-file-cog-2'] = 'rbxassetid://10723356676',['lucide-file-diff'] = 'rbxassetid://10723357039',['lucide-file-digit'] = 'rbxassetid://10723357151',['lucide-file-down'] = 'rbxassetid://10723357322',['lucide-file-edit'] = 'rbxassetid://10723357495',['lucide-file-heart'] = 'rbxassetid://10723357637',['lucide-file-image'] = 'rbxassetid://10723357790',['lucide-file-input'] = 'rbxassetid://10723357933',['lucide-file-json'] = 'rbxassetid://10723364435',['lucide-file-json-2'] = 'rbxassetid://10723364361',['lucide-file-key'] = 'rbxassetid://10723364605',['lucide-file-key-2'] = 'rbxassetid://10723364515',['lucide-file-line-chart'] = 'rbxassetid://10723364725',['lucide-file-lock'] = 'rbxassetid://10723364957',['lucide-file-lock-2'] = 'rbxassetid://10723364861',['lucide-file-minus'] = 'rbxassetid://10723365254',['lucide-file-minus-2'] = 'rbxassetid://10723365086',['lucide-file-output'] = 'rbxassetid://10723365457',['lucide-file-pie-chart'] = 'rbxassetid://10723365598',['lucide-file-plus'] = 'rbxassetid://10723365877',['lucide-file-plus-2'] = 'rbxassetid://10723365766',['lucide-file-question'] = 'rbxassetid://10723365987',['lucide-file-scan'] = 'rbxassetid://10723366167',['lucide-file-search'] = 'rbxassetid://10723366550',['lucide-file-search-2'] = 'rbxassetid://10723366340',['lucide-file-signature'] = 'rbxassetid://10723366741',['lucide-file-spreadsheet'] = 'rbxassetid://10723366962',['lucide-file-symlink'] = 'rbxassetid://10723367098',['lucide-file-terminal'] = 'rbxassetid://10723367244',['lucide-file-text'] = 'rbxassetid://10723367380',['lucide-file-type'] = 'rbxassetid://10723367606',['lucide-file-type-2'] = 'rbxassetid://10723367509',['lucide-file-up'] = 'rbxassetid://10723367734',['lucide-file-video'] = 'rbxassetid://10723373884',['lucide-file-video-2'] = 'rbxassetid://10723367834',['lucide-file-volume'] = 'rbxassetid://10723374172',['lucide-file-volume-2'] = 'rbxassetid://10723374030',['lucide-file-warning'] = 'rbxassetid://10723374276',['lucide-file-x'] = 'rbxassetid://10723374544',['lucide-file-x-2'] = 'rbxassetid://10723374378',['lucide-files'] = 'rbxassetid://10723374759',['lucide-film'] = 'rbxassetid://10723374981',['lucide-filter'] = 'rbxassetid://10723375128',['lucide-fingerprint'] = 'rbxassetid://10723375250',['lucide-flag'] = 'rbxassetid://10723375890',['lucide-flag-off'] = 'rbxassetid://10723375443',['lucide-flag-triangle-left'] = 'rbxassetid://10723375608',['lucide-flag-triangle-right'] = 'rbxassetid://10723375727',['lucide-flame'] = 'rbxassetid://10723376114',['lucide-flashlight'] = 'rbxassetid://10723376471',['lucide-flashlight-off'] = 'rbxassetid://10723376365',['lucide-flask-conical'] = 'rbxassetid://10734883986',['lucide-flask-round'] = 'rbxassetid://10723376614',['lucide-flip-horizontal'] = 'rbxassetid://10723376884',['lucide-flip-horizontal-2'] = 'rbxassetid://10723376745',['lucide-flip-vertical'] = 'rbxassetid://10723377138',['lucide-flip-vertical-2'] = 'rbxassetid://10723377026',['lucide-flower'] = 'rbxassetid://10747830374',['lucide-flower-2'] = 'rbxassetid://10723377305',['lucide-focus'] = 'rbxassetid://10723377537',['lucide-folder'] = 'rbxassetid://10723387563',['lucide-folder-archive'] = 'rbxassetid://10723384478',['lucide-folder-check'] = 'rbxassetid://10723384605',['lucide-folder-clock'] = 'rbxassetid://10723384731',['lucide-folder-closed'] = 'rbxassetid://10723384893',['lucide-folder-cog'] = 'rbxassetid://10723385213',['lucide-folder-cog-2'] = 'rbxassetid://10723385036',['lucide-folder-down'] = 'rbxassetid://10723385338',['lucide-folder-edit'] = 'rbxassetid://10723385445',['lucide-folder-heart'] = 'rbxassetid://10723385545',['lucide-folder-input'] = 'rbxassetid://10723385721',['lucide-folder-key'] = 'rbxassetid://10723385848',['lucide-folder-lock'] = 'rbxassetid://10723386005',['lucide-folder-minus'] = 'rbxassetid://10723386127',['lucide-folder-open'] = 'rbxassetid://10723386277',['lucide-folder-output'] = 'rbxassetid://10723386386',['lucide-folder-plus'] = 'rbxassetid://10723386531',['lucide-folder-search'] = 'rbxassetid://10723386787',['lucide-folder-search-2'] = 'rbxassetid://10723386674',['lucide-folder-symlink'] = 'rbxassetid://10723386930',['lucide-folder-tree'] = 'rbxassetid://10723387085',['lucide-folder-up'] = 'rbxassetid://10723387265',['lucide-folder-x'] = 'rbxassetid://10723387448',['lucide-folders'] = 'rbxassetid://10723387721',['lucide-form-input'] = 'rbxassetid://10723387841',['lucide-forward'] = 'rbxassetid://10723388016',['lucide-frame'] = 'rbxassetid://10723394389',['lucide-framer'] = 'rbxassetid://10723394565',['lucide-frown'] = 'rbxassetid://10723394681',['lucide-fuel'] = 'rbxassetid://10723394846',['lucide-function-square'] = 'rbxassetid://10723395041',['lucide-gamepad'] = 'rbxassetid://10723395457',['lucide-gamepad-2'] = 'rbxassetid://10723395215',['lucide-gauge'] = 'rbxassetid://10723395708',['lucide-gavel'] = 'rbxassetid://10723395896',['lucide-gem'] = 'rbxassetid://10723396000',['lucide-ghost'] = 'rbxassetid://10723396107',['lucide-gift'] = 'rbxassetid://10723396402',['lucide-gift-card'] = 'rbxassetid://10723396225',['lucide-git-branch'] = 'rbxassetid://10723396676',['lucide-git-branch-plus'] = 'rbxassetid://10723396542',['lucide-git-commit'] = 'rbxassetid://10723396812',['lucide-git-compare'] = 'rbxassetid://10723396954',['lucide-git-fork'] = 'rbxassetid://10723397049',['lucide-git-merge'] = 'rbxassetid://10723397165',['lucide-git-pull-request'] = 'rbxassetid://10723397431',['lucide-git-pull-request-closed'] = 'rbxassetid://10723397268',['lucide-git-pull-request-draft'] = 'rbxassetid://10734884302',['lucide-glass'] = 'rbxassetid://10723397788',['lucide-glass-2'] = 'rbxassetid://10723397529',['lucide-glass-water'] = 'rbxassetid://10723397678',['lucide-glasses'] = 'rbxassetid://10723397895',['lucide-globe'] = 'rbxassetid://10723404337',['lucide-globe-2'] = 'rbxassetid://10723398002',['lucide-grab'] = 'rbxassetid://10723404472',['lucide-graduation-cap'] = 'rbxassetid://10723404691',['lucide-grape'] = 'rbxassetid://10723404822',['lucide-grid'] = 'rbxassetid://10723404936',['lucide-grip-horizontal'] = 'rbxassetid://10723405089',['lucide-grip-vertical'] = 'rbxassetid://10723405236',['lucide-hammer'] = 'rbxassetid://10723405360',['lucide-hand'] = 'rbxassetid://10723405649',['lucide-hand-metal'] = 'rbxassetid://10723405508',['lucide-hard-drive'] = 'rbxassetid://10723405749',['lucide-hard-hat'] = 'rbxassetid://10723405859',['lucide-hash'] = 'rbxassetid://10723405975',['lucide-haze'] = 'rbxassetid://10723406078',['lucide-headphones'] = 'rbxassetid://10723406165',['lucide-heart'] = 'rbxassetid://10723406885',['lucide-heart-crack'] = 'rbxassetid://10723406299',['lucide-heart-handshake'] = 'rbxassetid://10723406480',['lucide-heart-off'] = 'rbxassetid://10723406662',['lucide-heart-pulse'] = 'rbxassetid://10723406795',['lucide-help-circle'] = 'rbxassetid://10723406988',['lucide-hexagon'] = 'rbxassetid://10723407092',['lucide-highlighter'] = 'rbxassetid://10723407192',['lucide-history'] = 'rbxassetid://10723407335',['lucide-home'] = 'rbxassetid://10723407389',['lucide-hourglass'] = 'rbxassetid://10723407498',['lucide-ice-cream'] = 'rbxassetid://10723414308',['lucide-image'] = 'rbxassetid://10723415040',['lucide-image-minus'] = 'rbxassetid://10723414487',['lucide-image-off'] = 'rbxassetid://10723414677',['lucide-image-plus'] = 'rbxassetid://10723414827',['lucide-import'] = 'rbxassetid://10723415205',['lucide-inbox'] = 'rbxassetid://10723415335',['lucide-indent'] = 'rbxassetid://10723415494',['lucide-indian-rupee'] = 'rbxassetid://10723415642',['lucide-infinity'] = 'rbxassetid://10723415766',['lucide-info'] = 'rbxassetid://10723415903',['lucide-inspect'] = 'rbxassetid://10723416057',['lucide-italic'] = 'rbxassetid://10723416195',['lucide-japanese-yen'] = 'rbxassetid://10723416363',['lucide-joystick'] = 'rbxassetid://10723416527',['lucide-key'] = 'rbxassetid://10723416652',['lucide-keyboard'] = 'rbxassetid://10723416765',['lucide-lamp'] = 'rbxassetid://10723417513',['lucide-lamp-ceiling'] = 'rbxassetid://10723416922',['lucide-lamp-desk'] = 'rbxassetid://10723417016',['lucide-lamp-floor'] = 'rbxassetid://10723417131',['lucide-lamp-wall-down'] = 'rbxassetid://10723417240',['lucide-lamp-wall-up'] = 'rbxassetid://10723417356',['lucide-landmark'] = 'rbxassetid://10723417608',['lucide-languages'] = 'rbxassetid://10723417703',['lucide-laptop'] = 'rbxassetid://10723423881',['lucide-laptop-2'] = 'rbxassetid://10723417797',['lucide-lasso'] = 'rbxassetid://10723424235',['lucide-lasso-select'] = 'rbxassetid://10723424058',['lucide-laugh'] = 'rbxassetid://10723424372',['lucide-layers'] = 'rbxassetid://10723424505',['lucide-layout'] = 'rbxassetid://10723425376',['lucide-layout-dashboard'] = 'rbxassetid://10723424646',['lucide-layout-grid'] = 'rbxassetid://10723424838',['lucide-layout-list'] = 'rbxassetid://10723424963',['lucide-layout-template'] = 'rbxassetid://10723425187',['lucide-leaf'] = 'rbxassetid://10723425539',['lucide-library'] = 'rbxassetid://10723425615',['lucide-life-buoy'] = 'rbxassetid://10723425685',['lucide-lightbulb'] = 'rbxassetid://10723425852',['lucide-lightbulb-off'] = 'rbxassetid://10723425762',['lucide-line-chart'] = 'rbxassetid://10723426393',['lucide-link'] = 'rbxassetid://10723426722',['lucide-link-2'] = 'rbxassetid://10723426595',['lucide-link-2-off'] = 'rbxassetid://10723426513',['lucide-list'] = 'rbxassetid://10723433811',['lucide-list-checks'] = 'rbxassetid://10734884548',['lucide-list-end'] = 'rbxassetid://10723426886',['lucide-list-minus'] = 'rbxassetid://10723426986',['lucide-list-music'] = 'rbxassetid://10723427081',['lucide-list-ordered'] = 'rbxassetid://10723427199',['lucide-list-plus'] = 'rbxassetid://10723427334',['lucide-list-start'] = 'rbxassetid://10723427494',['lucide-list-video'] = 'rbxassetid://10723427619',['lucide-list-x'] = 'rbxassetid://10723433655',['lucide-loader'] = 'rbxassetid://10723434070',['lucide-loader-2'] = 'rbxassetid://10723433935',['lucide-locate'] = 'rbxassetid://10723434557',['lucide-locate-fixed'] = 'rbxassetid://10723434236',['lucide-locate-off'] = 'rbxassetid://10723434379',['lucide-lock'] = 'rbxassetid://10723434711',['lucide-log-in'] = 'rbxassetid://10723434830',['lucide-log-out'] = 'rbxassetid://10723434906',['lucide-luggage'] = 'rbxassetid://10723434993',['lucide-magnet'] = 'rbxassetid://10723435069',['lucide-mail'] = 'rbxassetid://10734885430',['lucide-mail-check'] = 'rbxassetid://10723435182',['lucide-mail-minus'] = 'rbxassetid://10723435261',['lucide-mail-open'] = 'rbxassetid://10723435342',['lucide-mail-plus'] = 'rbxassetid://10723435443',['lucide-mail-question'] = 'rbxassetid://10723435515',['lucide-mail-search'] = 'rbxassetid://10734884739',['lucide-mail-warning'] = 'rbxassetid://10734885015',['lucide-mail-x'] = 'rbxassetid://10734885247',['lucide-mails'] = 'rbxassetid://10734885614',['lucide-map'] = 'rbxassetid://10734886202',['lucide-map-pin'] = 'rbxassetid://10734886004',['lucide-map-pin-off'] = 'rbxassetid://10734885803',['lucide-maximize'] = 'rbxassetid://10734886735',['lucide-maximize-2'] = 'rbxassetid://10734886496',['lucide-medal'] = 'rbxassetid://10734887072',['lucide-megaphone'] = 'rbxassetid://10734887454',['lucide-megaphone-off'] = 'rbxassetid://10734887311',['lucide-meh'] = 'rbxassetid://10734887603',['lucide-menu'] = 'rbxassetid://10734887784',['lucide-message-circle'] = 'rbxassetid://10734888000',['lucide-message-square'] = 'rbxassetid://10734888228',['lucide-mic'] = 'rbxassetid://10734888864',['lucide-mic-2'] = 'rbxassetid://10734888430',['lucide-mic-off'] = 'rbxassetid://10734888646',['lucide-microscope'] = 'rbxassetid://10734889106',['lucide-microwave'] = 'rbxassetid://10734895076',['lucide-milestone'] = 'rbxassetid://10734895310',['lucide-minimize'] = 'rbxassetid://10734895698',['lucide-minimize-2'] = 'rbxassetid://10734895530',['lucide-minus'] = 'rbxassetid://10734896206',['lucide-minus-circle'] = 'rbxassetid://10734895856',['lucide-minus-square'] = 'rbxassetid://10734896029',['lucide-monitor'] = 'rbxassetid://10734896881',['lucide-monitor-off'] = 'rbxassetid://10734896360',['lucide-monitor-speaker'] = 'rbxassetid://10734896512',['lucide-moon'] = 'rbxassetid://10734897102',['lucide-more-horizontal'] = 'rbxassetid://10734897250',['lucide-more-vertical'] = 'rbxassetid://10734897387',['lucide-mountain'] = 'rbxassetid://10734897956',['lucide-mountain-snow'] = 'rbxassetid://10734897665',['lucide-mouse'] = 'rbxassetid://10734898592',['lucide-mouse-pointer'] = 'rbxassetid://10734898476',['lucide-mouse-pointer-2'] = 'rbxassetid://10734898194',['lucide-mouse-pointer-click'] = 'rbxassetid://10734898355',['lucide-move'] = 'rbxassetid://10734900011',['lucide-move-3d'] = 'rbxassetid://10734898756',['lucide-move-diagonal'] = 'rbxassetid://10734899164',['lucide-move-diagonal-2'] = 'rbxassetid://10734898934',['lucide-move-horizontal'] = 'rbxassetid://10734899414',['lucide-move-vertical'] = 'rbxassetid://10734899821',['lucide-music'] = 'rbxassetid://10734905958',['lucide-music-2'] = 'rbxassetid://10734900215',['lucide-music-3'] = 'rbxassetid://10734905665',['lucide-music-4'] = 'rbxassetid://10734905823',['lucide-navigation'] = 'rbxassetid://10734906744',['lucide-navigation-2'] = 'rbxassetid://10734906332',['lucide-navigation-2-off'] = 'rbxassetid://10734906144',['lucide-navigation-off'] = 'rbxassetid://10734906580',['lucide-network'] = 'rbxassetid://10734906975',['lucide-newspaper'] = 'rbxassetid://10734907168',['lucide-octagon'] = 'rbxassetid://10734907361',['lucide-option'] = 'rbxassetid://10734907649',['lucide-outdent'] = 'rbxassetid://10734907933',['lucide-package'] = 'rbxassetid://10734909540',['lucide-package-2'] = 'rbxassetid://10734908151',['lucide-package-check'] = 'rbxassetid://10734908384',['lucide-package-minus'] = 'rbxassetid://10734908626',['lucide-package-open'] = 'rbxassetid://10734908793',['lucide-package-plus'] = 'rbxassetid://10734909016',['lucide-package-search'] = 'rbxassetid://10734909196',['lucide-package-x'] = 'rbxassetid://10734909375',['lucide-paint-bucket'] = 'rbxassetid://10734909847',['lucide-paintbrush'] = 'rbxassetid://10734910187',['lucide-paintbrush-2'] = 'rbxassetid://10734910030',['lucide-palette'] = 'rbxassetid://10734910430',['lucide-palmtree'] = 'rbxassetid://10734910680',['lucide-paperclip'] = 'rbxassetid://10734910927',['lucide-party-popper'] = 'rbxassetid://10734918735',['lucide-pause'] = 'rbxassetid://10734919336',['lucide-pause-circle'] = 'rbxassetid://10735024209',['lucide-pause-octagon'] = 'rbxassetid://10734919143',['lucide-pen-tool'] = 'rbxassetid://10734919503',['lucide-pencil'] = 'rbxassetid://10734919691',['lucide-percent'] = 'rbxassetid://10734919919',['lucide-person-standing'] = 'rbxassetid://10734920149',['lucide-phone'] = 'rbxassetid://10734921524',['lucide-phone-call'] = 'rbxassetid://10734920305',['lucide-phone-forwarded'] = 'rbxassetid://10734920508',['lucide-phone-incoming'] = 'rbxassetid://10734920694',['lucide-phone-missed'] = 'rbxassetid://10734920845',['lucide-phone-off'] = 'rbxassetid://10734921077',['lucide-phone-outgoing'] = 'rbxassetid://10734921288',['lucide-pie-chart'] = 'rbxassetid://10734921727',['lucide-piggy-bank'] = 'rbxassetid://10734921935',['lucide-pin'] = 'rbxassetid://10734922324',['lucide-pin-off'] = 'rbxassetid://10734922180',['lucide-pipette'] = 'rbxassetid://10734922497',['lucide-pizza'] = 'rbxassetid://10734922774',['lucide-plane'] = 'rbxassetid://10734922971',['lucide-play'] = 'rbxassetid://10734923549',['lucide-play-circle'] = 'rbxassetid://10734923214',['lucide-plus'] = 'rbxassetid://10734924532',['lucide-plus-circle'] = 'rbxassetid://10734923868',['lucide-plus-square'] = 'rbxassetid://10734924219',['lucide-podcast'] = 'rbxassetid://10734929553',['lucide-pointer'] = 'rbxassetid://10734929723',['lucide-pound-sterling'] = 'rbxassetid://10734929981',['lucide-power'] = 'rbxassetid://10734930466',['lucide-power-off'] = 'rbxassetid://10734930257',['lucide-printer'] = 'rbxassetid://10734930632',['lucide-puzzle'] = 'rbxassetid://10734930886',['lucide-quote'] = 'rbxassetid://10734931234',['lucide-radio'] = 'rbxassetid://10734931596',['lucide-radio-receiver'] = 'rbxassetid://10734931402',['lucide-rectangle-horizontal'] = 'rbxassetid://10734931777',['lucide-rectangle-vertical'] = 'rbxassetid://10734932081',['lucide-recycle'] = 'rbxassetid://10734932295',['lucide-redo'] = 'rbxassetid://10734932822',['lucide-redo-2'] = 'rbxassetid://10734932586',['lucide-refresh-ccw'] = 'rbxassetid://10734933056',['lucide-refresh-cw'] = 'rbxassetid://10734933222',['lucide-refrigerator'] = 'rbxassetid://10734933465',['lucide-regex'] = 'rbxassetid://10734933655',['lucide-repeat'] = 'rbxassetid://10734933966',['lucide-repeat-1'] = 'rbxassetid://10734933826',['lucide-reply'] = 'rbxassetid://10734934252',['lucide-reply-all'] = 'rbxassetid://10734934132',['lucide-rewind'] = 'rbxassetid://10734934347',['lucide-rocket'] = 'rbxassetid://10734934585',['lucide-rocking-chair'] = 'rbxassetid://10734939942',['lucide-rotate-3d'] = 'rbxassetid://10734940107',['lucide-rotate-ccw'] = 'rbxassetid://10734940376',['lucide-rotate-cw'] = 'rbxassetid://10734940654',['lucide-rss'] = 'rbxassetid://10734940825',['lucide-ruler'] = 'rbxassetid://10734941018',['lucide-russian-ruble'] = 'rbxassetid://10734941199',['lucide-sailboat'] = 'rbxassetid://10734941354',['lucide-save'] = 'rbxassetid://10734941499',['lucide-scale'] = 'rbxassetid://10734941912',['lucide-scale-3d'] = 'rbxassetid://10734941739',['lucide-scaling'] = 'rbxassetid://10734942072',['lucide-scan'] = 'rbxassetid://10734942565',['lucide-scan-face'] = 'rbxassetid://10734942198',['lucide-scan-line'] = 'rbxassetid://10734942351',['lucide-scissors'] = 'rbxassetid://10734942778',['lucide-screen-share'] = 'rbxassetid://10734943193',['lucide-screen-share-off'] = 'rbxassetid://10734942967',['lucide-scroll'] = 'rbxassetid://10734943448',['lucide-search'] = 'rbxassetid://10734943674',['lucide-send'] = 'rbxassetid://10734943902',['lucide-separator-horizontal'] = 'rbxassetid://10734944115',['lucide-separator-vertical'] = 'rbxassetid://10734944326',['lucide-server'] = 'rbxassetid://10734949856',['lucide-server-cog'] = 'rbxassetid://10734944444',['lucide-server-crash'] = 'rbxassetid://10734944554',['lucide-server-off'] = 'rbxassetid://10734944668',['lucide-settings'] = 'rbxassetid://10734950309',['lucide-settings-2'] = 'rbxassetid://10734950020',['lucide-share'] = 'rbxassetid://10734950813',['lucide-share-2'] = 'rbxassetid://10734950553',['lucide-sheet'] = 'rbxassetid://10734951038',['lucide-shield'] = 'rbxassetid://10734951847',['lucide-shield-alert'] = 'rbxassetid://10734951173',['lucide-shield-check'] = 'rbxassetid://10734951367',['lucide-shield-close'] = 'rbxassetid://10734951535',['lucide-shield-off'] = 'rbxassetid://10734951684',['lucide-shirt'] = 'rbxassetid://10734952036',['lucide-shopping-bag'] = 'rbxassetid://10734952273',['lucide-shopping-cart'] = 'rbxassetid://10734952479',['lucide-shovel'] = 'rbxassetid://10734952773',['lucide-shower-head'] = 'rbxassetid://10734952942',['lucide-shrink'] = 'rbxassetid://10734953073',['lucide-shrub'] = 'rbxassetid://10734953241',['lucide-shuffle'] = 'rbxassetid://10734953451',['lucide-sidebar'] = 'rbxassetid://10734954301',['lucide-sidebar-close'] = 'rbxassetid://10734953715',['lucide-sidebar-open'] = 'rbxassetid://10734954000',['lucide-sigma'] = 'rbxassetid://10734954538',['lucide-signal'] = 'rbxassetid://10734961133',['lucide-signal-high'] = 'rbxassetid://10734954807',['lucide-signal-low'] = 'rbxassetid://10734955080',['lucide-signal-medium'] = 'rbxassetid://10734955336',['lucide-signal-zero'] = 'rbxassetid://10734960878',['lucide-siren'] = 'rbxassetid://10734961284',['lucide-skip-back'] = 'rbxassetid://10734961526',['lucide-skip-forward'] = 'rbxassetid://10734961809',['lucide-skull'] = 'rbxassetid://10734962068',['lucide-slack'] = 'rbxassetid://10734962339',['lucide-slash'] = 'rbxassetid://10734962600',['lucide-slice'] = 'rbxassetid://10734963024',['lucide-sliders'] = 'rbxassetid://10734963400',['lucide-sliders-horizontal'] = 'rbxassetid://10734963191',['lucide-smartphone'] = 'rbxassetid://10734963940',['lucide-smartphone-charging'] = 'rbxassetid://10734963671',['lucide-smile'] = 'rbxassetid://10734964441',['lucide-smile-plus'] = 'rbxassetid://10734964188',['lucide-snowflake'] = 'rbxassetid://10734964600',['lucide-sofa'] = 'rbxassetid://10734964852',['lucide-sort-asc'] = 'rbxassetid://10734965115',['lucide-sort-desc'] = 'rbxassetid://10734965287',['lucide-speaker'] = 'rbxassetid://10734965419',['lucide-sprout'] = 'rbxassetid://10734965572',['lucide-square'] = 'rbxassetid://10734965702',['lucide-star'] = 'rbxassetid://10734966248',['lucide-star-half'] = 'rbxassetid://10734965897',['lucide-star-off'] = 'rbxassetid://10734966097',['lucide-stethoscope'] = 'rbxassetid://10734966384',['lucide-sticker'] = 'rbxassetid://10734972234',['lucide-sticky-note'] = 'rbxassetid://10734972463',['lucide-stop-circle'] = 'rbxassetid://10734972621',['lucide-stretch-horizontal'] = 'rbxassetid://10734972862',['lucide-stretch-vertical'] = 'rbxassetid://10734973130',['lucide-strikethrough'] = 'rbxassetid://10734973290',['lucide-subscript'] = 'rbxassetid://10734973457',['lucide-sun'] = 'rbxassetid://10734974297',['lucide-sun-dim'] = 'rbxassetid://10734973645',['lucide-sun-medium'] = 'rbxassetid://10734973778',['lucide-sun-moon'] = 'rbxassetid://10734973999',['lucide-sun-snow'] = 'rbxassetid://10734974130',['lucide-sunrise'] = 'rbxassetid://10734974522',['lucide-sunset'] = 'rbxassetid://10734974689',['lucide-superscript'] = 'rbxassetid://10734974850',['lucide-swiss-franc'] = 'rbxassetid://10734975024',['lucide-switch-camera'] = 'rbxassetid://10734975214',['lucide-sword'] = 'rbxassetid://10734975486',['lucide-swords'] = 'rbxassetid://10734975692',['lucide-syringe'] = 'rbxassetid://10734975932',['lucide-table'] = 'rbxassetid://10734976230',['lucide-table-2'] = 'rbxassetid://10734976097',['lucide-tablet'] = 'rbxassetid://10734976394',['lucide-tag'] = 'rbxassetid://10734976528',['lucide-tags'] = 'rbxassetid://10734976739',['lucide-target'] = 'rbxassetid://10734977012',['lucide-tent'] = 'rbxassetid://10734981750',['lucide-terminal'] = 'rbxassetid://10734982144',['lucide-terminal-square'] = 'rbxassetid://10734981995',['lucide-text-cursor'] = 'rbxassetid://10734982395',['lucide-text-cursor-input'] = 'rbxassetid://10734982297',['lucide-thermometer'] = 'rbxassetid://10734983134',['lucide-thermometer-snowflake'] = 'rbxassetid://10734982571',['lucide-thermometer-sun'] = 'rbxassetid://10734982771',['lucide-thumbs-down'] = 'rbxassetid://10734983359',['lucide-thumbs-up'] = 'rbxassetid://10734983629',['lucide-ticket'] = 'rbxassetid://10734983868',['lucide-timer'] = 'rbxassetid://10734984606',['lucide-timer-off'] = 'rbxassetid://10734984138',['lucide-timer-reset'] = 'rbxassetid://10734984355',['lucide-toggle-left'] = 'rbxassetid://10734984834',['lucide-toggle-right'] = 'rbxassetid://10734985040',['lucide-tornado'] = 'rbxassetid://10734985247',['lucide-toy-brick'] = 'rbxassetid://10747361919',['lucide-train'] = 'rbxassetid://10747362105',['lucide-trash'] = 'rbxassetid://10747362393',['lucide-trash-2'] = 'rbxassetid://10747362241',['lucide-tree-deciduous'] = 'rbxassetid://10747362534',['lucide-tree-pine'] = 'rbxassetid://10747362748',['lucide-trees'] = 'rbxassetid://10747363016',['lucide-trending-down'] = 'rbxassetid://10747363205',['lucide-trending-up'] = 'rbxassetid://10747363465',['lucide-triangle'] = 'rbxassetid://10747363621',['lucide-trophy'] = 'rbxassetid://10747363809',['lucide-truck'] = 'rbxassetid://10747364031',['lucide-tv'] = 'rbxassetid://10747364593',['lucide-tv-2'] = 'rbxassetid://10747364302',['lucide-type'] = 'rbxassetid://10747364761',['lucide-umbrella'] = 'rbxassetid://10747364971',['lucide-underline'] = 'rbxassetid://10747365191',['lucide-undo'] = 'rbxassetid://10747365484',['lucide-undo-2'] = 'rbxassetid://10747365359',['lucide-unlink'] = 'rbxassetid://10747365771',['lucide-unlink-2'] = 'rbxassetid://10747397871',['lucide-unlock'] = 'rbxassetid://10747366027',['lucide-upload'] = 'rbxassetid://10747366434',['lucide-upload-cloud'] = 'rbxassetid://10747366266',['lucide-usb'] = 'rbxassetid://10747366606',['lucide-user'] = 'rbxassetid://10747373176',['lucide-user-check'] = 'rbxassetid://10747371901',['lucide-user-cog'] = 'rbxassetid://10747372167',['lucide-user-minus'] = 'rbxassetid://10747372346',['lucide-user-plus'] = 'rbxassetid://10747372702',['lucide-user-x'] = 'rbxassetid://10747372992',['lucide-users'] = 'rbxassetid://10747373426',['lucide-utensils'] = 'rbxassetid://10747373821',['lucide-utensils-crossed'] = 'rbxassetid://10747373629',['lucide-venetian-mask'] = 'rbxassetid://10747374003',['lucide-verified'] = 'rbxassetid://10747374131',['lucide-vibrate'] = 'rbxassetid://10747374489',['lucide-vibrate-off'] = 'rbxassetid://10747374269',['lucide-video'] = 'rbxassetid://10747374938',['lucide-video-off'] = 'rbxassetid://10747374721',['lucide-view'] = 'rbxassetid://10747375132',['lucide-voicemail'] = 'rbxassetid://10747375281',['lucide-volume'] = 'rbxassetid://10747376008',['lucide-volume-1'] = 'rbxassetid://10747375450',['lucide-volume-2'] = 'rbxassetid://10747375679',['lucide-volume-x'] = 'rbxassetid://10747375880',['lucide-wallet'] = 'rbxassetid://10747376205',['lucide-wand'] = 'rbxassetid://10747376565',['lucide-wand-2'] = 'rbxassetid://10747376349',['lucide-watch'] = 'rbxassetid://10747376722',['lucide-waves'] = 'rbxassetid://10747376931',['lucide-webcam'] = 'rbxassetid://10747381992',['lucide-wifi'] = 'rbxassetid://10747382504',['lucide-wifi-off'] = 'rbxassetid://10747382268',['lucide-wind'] = 'rbxassetid://10747382750',['lucide-wrap-text'] = 'rbxassetid://10747383065',['lucide-wrench'] = 'rbxassetid://10747383470',['lucide-x'] = 'rbxassetid://10747384394',['lucide-x-circle'] = 'rbxassetid://10747383819',['lucide-x-octagon'] = 'rbxassetid://10747384037',['lucide-x-square'] = 'rbxassetid://10747384217',['lucide-zoom-in'] = 'rbxassetid://10747384552',['lucide-zoom-out'] = 'rbxassetid://10747384679'}
		}
	end,
	[30] = function()
		local L_842_, L_843_, L_844_, L_845_, L_846_ = L_3_(30)
		local L_847_ = {
			SingleMotor = L_844_(L_843_.SingleMotor),
			GroupMotor = L_844_(L_843_.GroupMotor),
			Instant = L_844_(L_843_.Instant),
			Linear = L_844_(L_843_.Linear),
			Spring = L_844_(L_843_.Spring),
			isMotor = L_844_(L_843_.isMotor)
		}
		return L_847_
	end,
	[31] = function()
		local L_848_, L_849_, L_850_, L_851_, L_852_ = L_3_(31)
		local L_853_, L_854_, L_855_, L_856_ = game:GetService'RunService', L_850_(L_849_.Parent.Signal), function()
		end, {}
		L_856_.__index = L_856_
		function L_856_.new()
			return setmetatable({
				_onStep = L_854_.new(),
				_onStart = L_854_.new(),
				_onComplete = L_854_.new()
			}, L_856_)
		end
		function L_856_.onStep(L_857_arg0, L_858_arg1)
			return L_857_arg0._onStep:connect(L_858_arg1)
		end
		function L_856_.onStart(L_859_arg0, L_860_arg1)
			return L_859_arg0._onStart:connect(L_860_arg1)
		end
		function L_856_.onComplete(L_861_arg0, L_862_arg1)
			return L_861_arg0._onComplete:connect(L_862_arg1)
		end
		function L_856_.start(L_863_arg0)
			if not L_863_arg0._connection then
				L_863_arg0._connection = L_853_.RenderStepped:Connect(function(L_864_arg0)
					L_863_arg0:step(L_864_arg0)
				end)
			end
		end
		function L_856_.stop(L_865_arg0)
			if L_865_arg0._connection then
				L_865_arg0._connection:Disconnect()
				L_865_arg0._connection = nil
			end
		end
		L_856_.destroy = L_856_.stop
		L_856_.step = L_855_
		L_856_.getValue = L_855_
		L_856_.setGoal = L_855_
		function L_856_.__tostring(L_866_arg0)
			return 'Motor'
		end
		return L_856_
	end,
	[32] = function()
		local L_867_, L_868_, L_869_, L_870_, L_871_ = L_3_(32)
		return function()
			local L_872_, L_873_ = game:GetService'RunService', L_869_(L_868_.Parent.BaseMotor)
			describe('connection management', function()
				local L_874_ = L_873_.new()
				it('should hook up connections on :start()', function()
					L_874_:start()
					expect(typeof(L_874_._connection)).to.equal'RBXScriptConnection'
				end)
				it('should remove connections on :stop() or :destroy()', function()
					L_874_:stop()
					expect(L_874_._connection).to.equal(nil)
				end)
			end)
			it('should call :step() with deltaTime', function()
				local L_875_, L_876_ = (L_873_.new())
				function L_875_.step(L_878_arg0, ...)
					L_876_ = {
						...
					}
					L_875_:stop()
				end
				L_875_:start()
				local L_877_ = L_872_.RenderStepped:Wait()
				L_872_.RenderStepped:Wait()
				expect(L_876_).to.be.ok()
				expect(L_876_[1]).to.equal(L_877_)
			end)
		end
	end,
	[33] = function()
		local L_879_, L_880_, L_881_, L_882_, L_883_ = L_3_(33)
		local L_884_, L_885_, L_886_ = L_881_(L_880_.Parent.BaseMotor), L_881_(L_880_.Parent.SingleMotor), L_881_(L_880_.Parent.isMotor)
		local L_887_ = setmetatable({}, L_884_)
		L_887_.__index = L_887_
		local L_888_ = function(L_889_arg0)
			if L_886_(L_889_arg0) then
				return L_889_arg0
			end
			local L_890_ = typeof(L_889_arg0)
			if L_890_ == 'number' then
				return L_885_.new(L_889_arg0, false)
			elseif L_890_ == 'table' then
				return L_887_.new(L_889_arg0, false)
			end
			error(('Unable to convert %q to motor; type %s is unsupported'):format(L_889_arg0, L_890_), 2)
		end
		function L_887_.new(L_891_arg0, L_892_arg1)
			assert(L_891_arg0, 'Missing argument #1: initialValues')
			assert(typeof(L_891_arg0) == 'table', 'initialValues must be a table!')
			assert(not L_891_arg0.step, [[initialValues contains disallowed property "step". Did you mean to put a table of values here?]])
			local L_893_ = setmetatable(L_884_.new(), L_887_)
			if L_892_arg1 ~= nil then
				L_893_._useImplicitConnections = L_892_arg1
			else
				L_893_._useImplicitConnections = true
			end
			L_893_._complete = true
			L_893_._motors = {}
			for L_894_forvar0, L_895_forvar1 in pairs(L_891_arg0) do
				L_893_._motors[L_894_forvar0] = L_888_(L_895_forvar1)
			end
			return L_893_
		end
		function L_887_.step(L_896_arg0, L_897_arg1)
			if L_896_arg0._complete then
				return true
			end
			local L_898_ = true
			for L_899_forvar0, L_900_forvar1 in pairs(L_896_arg0._motors) do
				local L_901_ = L_900_forvar1:step(L_897_arg1)
				if not L_901_ then
					L_898_ = false
				end
			end
			L_896_arg0._onStep:fire(L_896_arg0:getValue())
			if L_898_ then
				if L_896_arg0._useImplicitConnections then
					L_896_arg0:stop()
				end
				L_896_arg0._complete = true
				L_896_arg0._onComplete:fire()
			end
			return L_898_
		end
		function L_887_.setGoal(L_902_arg0, L_903_arg1)
			assert(not L_903_arg1.step, [[goals contains disallowed property "step". Did you mean to put a table of goals here?]])
			L_902_arg0._complete = false
			L_902_arg0._onStart:fire()
			for L_904_forvar0, L_905_forvar1 in pairs(L_903_arg1) do
				local L_906_ = assert(L_902_arg0._motors[L_904_forvar0], ('Unknown motor for key %s'):format(L_904_forvar0))
				L_906_:setGoal(L_905_forvar1)
			end
			if L_902_arg0._useImplicitConnections then
				L_902_arg0:start()
			end
		end
		function L_887_.getValue(L_907_arg0)
			local L_908_ = {}
			for L_909_forvar0, L_910_forvar1 in pairs(L_907_arg0._motors) do
				L_908_[L_909_forvar0] = L_910_forvar1:getValue()
			end
			return L_908_
		end
		function L_887_.__tostring(L_911_arg0)
			return 'Motor(Group)'
		end
		return L_887_
	end,
	[34] = function()
		local L_912_, L_913_, L_914_, L_915_, L_916_ = L_3_(34)
		return function()
			local L_917_, L_918_, L_919_ = L_914_(L_913_.Parent.GroupMotor), L_914_(L_913_.Parent.Instant), L_914_(L_913_.Parent.Spring)
			it('should complete when all child motors are complete', function()
				local L_920_ = L_917_.new({
					A = 1,
					B = 2
				}, false)
				expect(L_920_._complete).to.equal(true)
				L_920_:setGoal{
					A = L_918_.new(3),
					B = L_919_.new(4, {
						frequency = 7.5,
						dampingRatio = 1
					})
				}
				expect(L_920_._complete).to.equal(false)
				L_920_:step(1.6666666666666665E-2)
				expect(L_920_._complete).to.equal(false)
				for L_921_forvar0 = 1, 30 do
					L_920_:step(1.6666666666666665E-2)
				end
				expect(L_920_._complete).to.equal(true)
			end)
			it('should start when the goal is set', function()
				local L_922_, L_923_ = L_917_.new({
					A = 0
				}, false), false
				L_922_:onStart(function()
					L_923_ = not L_923_
				end)
				L_922_:setGoal{
					A = L_918_.new(1)
				}
				expect(L_923_).to.equal(true)
				L_922_:setGoal{
					A = L_918_.new(1)
				}
				expect(L_923_).to.equal(false)
			end)
			it('should properly return all values', function()
				local L_924_ = L_917_.new({
					A = 1,
					B = 2
				}, false)
				local L_925_ = L_924_:getValue()
				expect(L_925_.A).to.equal(1)
				expect(L_925_.B).to.equal(2)
			end)
			it('should error when a goal is given to GroupMotor.new', function()
				local L_926_ = pcall(function()
					L_917_.new(L_918_.new(0))
				end)
				expect(L_926_).to.equal(false)
			end)
			it([[should error when a single goal is provided to GroupMotor:step]], function()
				local L_927_ = pcall(function()
					L_917_.new{
						a = 1
					}:setGoal(L_918_.new(0))
				end)
				expect(L_927_).to.equal(false)
			end)
		end
	end,
	[35] = function()
		local L_928_, L_929_, L_930_, L_931_, L_932_ = L_3_(35)
		local L_933_ = {}
		L_933_.__index = L_933_
		function L_933_.new(L_934_arg0)
			return setmetatable({
				_targetValue = L_934_arg0
			}, L_933_)
		end
		function L_933_.step(L_935_arg0)
			return {
				complete = true,
				value = L_935_arg0._targetValue
			}
		end
		return L_933_
	end,
	[36] = function()
		local L_936_, L_937_, L_938_, L_939_, L_940_ = L_3_(36)
		return function()
			local L_941_ = L_938_(L_937_.Parent.Instant)
			it('should return a completed state with the provided value', function()
				local L_942_ = L_941_.new(1.23)
				local L_943_ = L_942_:step(0.1, {
					value = 0,
					complete = false
				})
				expect(L_943_.complete).to.equal(true)
				expect(L_943_.value).to.equal(1.23)
			end)
		end
	end,
	[37] = function()
		local L_944_, L_945_, L_946_, L_947_, L_948_ = L_3_(37)
		local L_949_ = {}
		L_949_.__index = L_949_
		function L_949_.new(L_950_arg0, L_951_arg1)
			assert(L_950_arg0, 'Missing argument #1: targetValue')
			L_951_arg1 = L_951_arg1 or {}
			return setmetatable({
				_targetValue = L_950_arg0,
				_velocity = L_951_arg1.velocity or 1
			}, L_949_)
		end
		function L_949_.step(L_952_arg0, L_953_arg1, L_954_arg2)
			local L_955_, L_956_, L_957_ = L_953_arg1.value, L_952_arg0._velocity, L_952_arg0._targetValue
			local L_958_ = L_954_arg2 * L_956_
			local L_959_ = L_958_ >= math.abs(L_957_ - L_955_)
			L_955_ = L_955_ + L_958_ * (L_957_ > L_955_ and 1 or -1)
			if L_959_ then
				L_955_ = L_952_arg0._targetValue
				L_956_ = 0
			end
			return {
				complete = L_959_,
				value = L_955_,
				velocity = L_956_
			}
		end
		return L_949_
	end,
	[38] = function()
		local L_960_, L_961_, L_962_, L_963_, L_964_ = L_3_(38)
		return function()
			local L_965_, L_966_ = L_962_(L_961_.Parent.SingleMotor), L_962_(L_961_.Parent.Linear)
			describe('completed state', function()
				local L_967_, L_968_ = L_965_.new(0, false), L_966_.new(1, {
					velocity = 1
				})
				L_967_:setGoal(L_968_)
				for L_969_forvar0 = 1, 60 do
					L_967_:step(1.6666666666666665E-2)
				end
				it('should complete', function()
					expect(L_967_._state.complete).to.equal(true)
				end)
				it('should be exactly the goal value when completed', function()
					expect(L_967_._state.value).to.equal(1)
				end)
			end)
			describe('uncompleted state', function()
				local L_970_, L_971_ = L_965_.new(0, false), L_966_.new(1, {
					velocity = 1
				})
				L_970_:setGoal(L_971_)
				for L_972_forvar0 = 1, 59 do
					L_970_:step(1.6666666666666665E-2)
				end
				it('should be uncomplete', function()
					expect(L_970_._state.complete).to.equal(false)
				end)
			end)
			describe('negative velocity', function()
				local L_973_, L_974_ = L_965_.new(1, false), L_966_.new(0, {
					velocity = 1
				})
				L_973_:setGoal(L_974_)
				for L_975_forvar0 = 1, 60 do
					L_973_:step(1.6666666666666665E-2)
				end
				it('should complete', function()
					expect(L_973_._state.complete).to.equal(true)
				end)
				it('should be exactly the goal value when completed', function()
					expect(L_973_._state.value).to.equal(0)
				end)
			end)
		end
	end,
	[39] = function()
		local L_976_, L_977_, L_978_, L_979_, L_980_ = L_3_(39)
		local L_981_ = {}
		L_981_.__index = L_981_
		function L_981_.new(L_983_arg0, L_984_arg1)
			return setmetatable({
				signal = L_983_arg0,
				connected = true,
				_handler = L_984_arg1
			}, L_981_)
		end
		function L_981_.disconnect(L_985_arg0)
			if L_985_arg0.connected then
				L_985_arg0.connected = false
				for L_986_forvar0, L_987_forvar1 in pairs(L_985_arg0.signal._connections) do
					if L_987_forvar1 == L_985_arg0 then
						table.remove(L_985_arg0.signal._connections, L_986_forvar0)
						return
					end
				end
			end
		end
		local L_982_ = {}
		L_982_.__index = L_982_
		function L_982_.new()
			return setmetatable({
				_connections = {},
				_threads = {}
			}, L_982_)
		end
		function L_982_.fire(L_988_arg0, ...)
			for L_989_forvar0, L_990_forvar1 in pairs(L_988_arg0._connections) do
				L_990_forvar1._handler(...)
			end
			for L_991_forvar0, L_992_forvar1 in pairs(L_988_arg0._threads) do
				coroutine.resume(L_992_forvar1, ...)
			end
			L_988_arg0._threads = {}
		end
		function L_982_.connect(L_993_arg0, L_994_arg1)
			local L_995_ = L_981_.new(L_993_arg0, L_994_arg1)
			table.insert(L_993_arg0._connections, L_995_)
			return L_995_
		end
		function L_982_.wait(L_996_arg0)
			table.insert(L_996_arg0._threads, coroutine.running())
			return coroutine.yield()
		end
		return L_982_
	end,
	[40] = function()
		local L_997_, L_998_, L_999_, L_1000_, L_1001_ = L_3_(40)
		return function()
			local L_1002_ = L_999_(L_998_.Parent.Signal)
			it('should invoke all connections, instantly', function()
				local L_1003_, L_1004_, L_1005_ = (L_1002_.new())
				L_1003_:connect(function(L_1006_arg0)
					L_1004_ = L_1006_arg0
				end)
				L_1003_:connect(function(L_1007_arg0)
					L_1005_ = L_1007_arg0
				end)
				L_1003_:fire'hello'
				expect(L_1004_).to.equal'hello'
				expect(L_1005_).to.equal'hello'
			end)
			it('should return values when :wait() is called', function()
				local L_1008_ = L_1002_.new()
				task.spawn(function()
					L_1008_:fire(123, 'hello')
				end)
				local L_1009_, L_1010_ = L_1008_:wait()
				expect(L_1009_).to.equal(123)
				expect(L_1010_).to.equal'hello'
			end)
			it('should properly handle disconnections', function()
				local L_1011_, L_1012_ = L_1002_.new(), false
				local L_1013_ = L_1011_:connect(function()
					L_1012_ = true
				end)
				L_1013_:disconnect()
				L_1011_:fire()
				expect(L_1012_).to.equal(false)
			end)
		end
	end,
	[41] = function()
		local L_1014_, L_1015_, L_1016_, L_1017_, L_1018_ = L_3_(41)
		local L_1019_ = L_1016_(L_1015_.Parent.BaseMotor)
		local L_1020_ = setmetatable({}, L_1019_)
		L_1020_.__index = L_1020_
		function L_1020_.new(L_1021_arg0, L_1022_arg1)
			assert(L_1021_arg0, 'Missing argument #1: initialValue')
			assert(typeof(L_1021_arg0) == 'number', 'initialValue must be a number!')
			local L_1023_ = setmetatable(L_1019_.new(), L_1020_)
			if L_1022_arg1 ~= nil then
				L_1023_._useImplicitConnections = L_1022_arg1
			else
				L_1023_._useImplicitConnections = true
			end
			L_1023_._goal = nil
			L_1023_._state = {
				complete = true,
				value = L_1021_arg0
			}
			return L_1023_
		end
		function L_1020_.step(L_1024_arg0, L_1025_arg1)
			if L_1024_arg0._state.complete then
				return true
			end
			local L_1026_ = L_1024_arg0._goal:step(L_1024_arg0._state, L_1025_arg1)
			L_1024_arg0._state = L_1026_
			L_1024_arg0._onStep:fire(L_1026_.value)
			if L_1026_.complete then
				if L_1024_arg0._useImplicitConnections then
					L_1024_arg0:stop()
				end
				L_1024_arg0._onComplete:fire()
			end
			return L_1026_.complete
		end
		function L_1020_.getValue(L_1027_arg0)
			return L_1027_arg0._state.value
		end
		function L_1020_.setGoal(L_1028_arg0, L_1029_arg1)
			L_1028_arg0._state.complete = false
			L_1028_arg0._goal = L_1029_arg1
			L_1028_arg0._onStart:fire()
			if L_1028_arg0._useImplicitConnections then
				L_1028_arg0:start()
			end
		end
		function L_1020_.__tostring(L_1030_arg0)
			return 'Motor(Single)'
		end
		return L_1020_
	end,
	[42] = function()
		local L_1031_, L_1032_, L_1033_, L_1034_, L_1035_ = L_3_(42)
		return function()
			local L_1036_, L_1037_ = L_1033_(L_1032_.Parent.SingleMotor), L_1033_(L_1032_.Parent.Instant)
			it('should assign new state on step', function()
				local L_1038_ = L_1036_.new(0, false)
				L_1038_:setGoal(L_1037_.new(5))
				L_1038_:step(1.6666666666666665E-2)
				expect(L_1038_._state.complete).to.equal(true)
				expect(L_1038_._state.value).to.equal(5)
			end)
			it([[should invoke onComplete listeners when the goal is completed]], function()
				local L_1039_, L_1040_ = L_1036_.new(0, false), false
				L_1039_:onComplete(function()
					L_1040_ = true
				end)
				L_1039_:setGoal(L_1037_.new(5))
				L_1039_:step(1.6666666666666665E-2)
				expect(L_1040_).to.equal(true)
			end)
			it('should start when the goal is set', function()
				local L_1041_, L_1042_ = L_1036_.new(0, false), false
				L_1041_:onStart(function()
					L_1042_ = not L_1042_
				end)
				L_1041_:setGoal(L_1037_.new(5))
				expect(L_1042_).to.equal(true)
				L_1041_:setGoal(L_1037_.new(5))
				expect(L_1042_).to.equal(false)
			end)
		end
	end,
	[43] = function()
		local L_1043_, L_1044_, L_1045_, L_1046_, L_1047_ = L_3_(43)
		local L_1048_, L_1049_, L_1050_, L_1051_ = 0.001, 0.001, 0.0001, {}
		L_1051_.__index = L_1051_
		function L_1051_.new(L_1052_arg0, L_1053_arg1)
			assert(L_1052_arg0, 'Missing argument #1: targetValue')
			L_1053_arg1 = L_1053_arg1 or {}
			return setmetatable({
				_targetValue = L_1052_arg0,
				_frequency = L_1053_arg1.frequency or 4,
				_dampingRatio = L_1053_arg1.dampingRatio or 1
			}, L_1051_)
		end
		function L_1051_.step(L_1054_arg0, L_1055_arg1, L_1056_arg2)
			local L_1057_, L_1058_, L_1059_, L_1060_, L_1061_ = L_1054_arg0._dampingRatio, L_1054_arg0._frequency * 2 * math.pi, L_1054_arg0._targetValue, L_1055_arg1.value, L_1055_arg1.velocity or 0
			local L_1062_, L_1063_, L_1064_, L_1065_ = L_1060_ - L_1059_, (math.exp(-L_1057_ * L_1058_ * L_1056_arg2))
			if L_1057_ == 1 then
				L_1064_ = (L_1062_ * (1 + L_1058_ * L_1056_arg2) + L_1061_ * L_1056_arg2) * L_1063_ + L_1059_
				L_1065_ = (L_1061_ * (1 - L_1058_ * L_1056_arg2) - L_1062_ * (L_1058_ * L_1058_ * L_1056_arg2)) * L_1063_
			elseif L_1057_ < 1 then
				local L_1067_ = math.sqrt(1 - L_1057_ * L_1057_)
				local L_1068_, L_1069_, L_1070_ = math.cos(L_1058_ * L_1067_ * L_1056_arg2), (math.sin(L_1058_ * L_1067_ * L_1056_arg2))
				if L_1067_ > L_1050_ then
					L_1070_ = L_1069_ / L_1067_
				else
					local L_1072_ = L_1056_arg2 * L_1058_
					L_1070_ = L_1072_ + ((L_1072_ * L_1072_) * (L_1067_ * L_1067_) * (L_1067_ * L_1067_) / 20 - L_1067_ * L_1067_) * (L_1072_ * L_1072_ * L_1072_) / 6
				end
				local L_1071_
				if L_1058_ * L_1067_ > L_1050_ then
					L_1071_ = L_1069_ / (L_1058_ * L_1067_)
				else
					local L_1073_ = L_1058_ * L_1067_
					L_1071_ = L_1056_arg2 + ((L_1056_arg2 * L_1056_arg2) * (L_1073_ * L_1073_) * (L_1073_ * L_1073_) / 20 - L_1073_ * L_1073_) * (L_1056_arg2 * L_1056_arg2 * L_1056_arg2) / 6
				end
				L_1064_ = (L_1062_ * (L_1068_ + L_1057_ * L_1070_) + L_1061_ * L_1071_) * L_1063_ + L_1059_
				L_1065_ = (L_1061_ * (L_1068_ - L_1070_ * L_1057_) - L_1062_ * (L_1070_ * L_1058_)) * L_1063_
			else
				local L_1074_ = math.sqrt(L_1057_ * L_1057_ - 1)
				local L_1075_, L_1076_ = -L_1058_ * (L_1057_ - L_1074_), -L_1058_ * (L_1057_ + L_1074_)
				local L_1077_ = (L_1061_ - L_1062_ * L_1075_) / (2 * L_1058_ * L_1074_)
				local L_1078_ = L_1062_ - L_1077_
				local L_1079_, L_1080_ = L_1078_ * math.exp(L_1075_ * L_1056_arg2), L_1077_ * math.exp(L_1076_ * L_1056_arg2)
				L_1064_ = L_1079_ + L_1080_ + L_1059_
				L_1065_ = L_1079_ * L_1075_ + L_1080_ * L_1076_
			end
			local L_1066_ = math.abs(L_1065_) < L_1048_ and math.abs(L_1064_ - L_1059_) < L_1049_
			return {
				complete = L_1066_,
				value = L_1066_ and L_1059_ or L_1064_,
				velocity = L_1065_
			}
		end
		return L_1051_
	end,
	[44] = function()
		local L_1081_, L_1082_, L_1083_, L_1084_, L_1085_ = L_3_(44)
		return function()
			local L_1086_, L_1087_ = L_1083_(L_1082_.Parent.SingleMotor), L_1083_(L_1082_.Parent.Spring)
			describe('completed state', function()
				local L_1088_, L_1089_ = L_1086_.new(0, false), L_1087_.new(1, {
					frequency = 2,
					dampingRatio = 0.75
				})
				L_1088_:setGoal(L_1089_)
				for L_1090_forvar0 = 1, 100 do
					L_1088_:step(1.6666666666666665E-2)
				end
				it('should complete', function()
					expect(L_1088_._state.complete).to.equal(true)
				end)
				it('should be exactly the goal value when completed', function()
					expect(L_1088_._state.value).to.equal(1)
				end)
			end)
			it('should inherit velocity', function()
				local L_1091_ = L_1086_.new(0, false)
				L_1091_._state = {
					complete = false,
					value = 0,
					velocity = -5
				}
				local L_1092_ = L_1087_.new(1, {
					frequency = 2,
					dampingRatio = 1
				})
				L_1091_:setGoal(L_1092_)
				L_1091_:step(1.6666666666666665E-2)
				expect(L_1091_._state.velocity < 0).to.equal(true)
			end)
		end
	end,
	[45] = function()
		local L_1093_, L_1094_, L_1095_, L_1096_, L_1097_ = L_3_(45)
		local L_1098_ = function(L_1099_arg0)
			local L_1100_ = tostring(L_1099_arg0):match'^Motor%((.+)%)$'
			if L_1100_ then
				return true, L_1100_
			else
				return false
			end
		end
		return L_1098_
	end,
	[46] = function()
		local L_1101_, L_1102_, L_1103_, L_1104_, L_1105_ = L_3_(46)
		return function()
			local L_1106_, L_1107_, L_1108_ = L_1103_(L_1102_.Parent.isMotor), L_1103_(L_1102_.Parent.SingleMotor), L_1103_(L_1102_.Parent.GroupMotor)
			local L_1109_, L_1110_ = L_1107_.new(0), L_1108_.new{}
			it('should properly detect motors', function()
				expect(L_1106_(L_1109_)).to.equal(true)
				expect(L_1106_(L_1110_)).to.equal(true)
			end)
			it("shouldn't detect things that aren't motors", function()
				expect(L_1106_{}).to.equal(false)
			end)
			it('should return the proper motor type', function()
				local L_1111_, L_1112_ = L_1106_(L_1109_)
				local L_1113_, L_1114_ = L_1106_(L_1110_)
				expect(L_1112_).to.equal'Single'
				expect(L_1114_).to.equal'Group'
			end)
		end
	end,
	[47] = function()
		local L_1115_, L_1116_, L_1117_, L_1118_, L_1119_ = L_3_(47)
		local L_1120_ = {
			Names = {
				'Dark',
				'Darker',
				'Light',
				'Aqua',
				'Amethyst',
				'Rose',
				'Typewriter',
				'Dark Typewriter',
				'VSC Light High Contrast',
				'VSC Dark High Contrast',
				'Dracula',
				'Monokai Pro Dark',
				'Aura Dark',
				'Primary Dark',
				'AnuPuccin Material Mint',
			}
		}
		
		for L_1121_forvar0, L_1122_forvar1 in next, L_1116_:GetChildren() do
			local L_1123_ = L_1117_(L_1122_forvar1)
			L_1120_[L_1123_.Name] = L_1123_
		end
		return L_1120_
	end,
	[48] = function()
		local L_1124_, L_1125_, L_1126_, L_1127_, L_1128_ = L_3_(48)
		return {
			Name = 'Amethyst',
			Accent = Color3.fromRGB(97, 62, 167),
			AcrylicMain = Color3.fromRGB(20, 20, 20),
			AcrylicBorder = Color3.fromRGB(110, 90, 130),
			AcrylicGradient = ColorSequence.new(Color3.fromRGB(85, 57, 139), Color3.fromRGB(40, 25, 65)),
			AcrylicNoise = 0.92,
			TitleBarLine = Color3.fromRGB(95, 75, 110),
			Tab = Color3.fromRGB(160, 140, 180),
			Element = Color3.fromRGB(140, 120, 160),
			ElementBorder = Color3.fromRGB(60, 50, 70),
			InElementBorder = Color3.fromRGB(100, 90, 110),
			ElementTransparency = 0.87,
			ToggleSlider = Color3.fromRGB(140, 120, 160),
			ToggleToggled = Color3.fromRGB(0, 0, 0),
			SliderRail = Color3.fromRGB(140, 120, 160),
			DropdownFrame = Color3.fromRGB(170, 160, 200),
			DropdownHolder = Color3.fromRGB(60, 45, 80),
			DropdownBorder = Color3.fromRGB(50, 40, 65),
			DropdownOption = Color3.fromRGB(140, 120, 160),
			Keybind = Color3.fromRGB(140, 120, 160),
			Input = Color3.fromRGB(140, 120, 160),
			InputFocused = Color3.fromRGB(20, 10, 30),
			InputIndicator = Color3.fromRGB(170, 150, 190),
			Dialog = Color3.fromRGB(60, 45, 80),
			DialogHolder = Color3.fromRGB(45, 30, 65),
			DialogHolderLine = Color3.fromRGB(40, 25, 60),
			DialogButton = Color3.fromRGB(60, 45, 80),
			DialogButtonBorder = Color3.fromRGB(95, 80, 110),
			DialogBorder = Color3.fromRGB(85, 70, 100),
			DialogInput = Color3.fromRGB(70, 55, 85),
			DialogInputLine = Color3.fromRGB(175, 160, 190),
			Text = Color3.fromRGB(240, 240, 240),
			SubText = Color3.fromRGB(170, 170, 170),
			Hover = Color3.fromRGB(140, 120, 160),
			HoverChange = 0.04
		}
	end,
	[49] = function()
		local L_1129_, L_1130_, L_1131_, L_1132_, L_1133_ = L_3_(49)
		return {
			Name = 'Aqua',
			Accent = Color3.fromRGB(60, 165, 165),
			AcrylicMain = Color3.fromRGB(20, 20, 20),
			AcrylicBorder = Color3.fromRGB(50, 100, 100),
			AcrylicGradient = ColorSequence.new(Color3.fromRGB(60, 140, 140), Color3.fromRGB(40, 80, 80)),
			AcrylicNoise = 0.92,
			TitleBarLine = Color3.fromRGB(60, 120, 120),
			Tab = Color3.fromRGB(140, 180, 180),
			Element = Color3.fromRGB(110, 160, 160),
			ElementBorder = Color3.fromRGB(40, 70, 70),
			InElementBorder = Color3.fromRGB(80, 110, 110),
			ElementTransparency = 0.84,
			ToggleSlider = Color3.fromRGB(110, 160, 160),
			ToggleToggled = Color3.fromRGB(0, 0, 0),
			SliderRail = Color3.fromRGB(110, 160, 160),
			DropdownFrame = Color3.fromRGB(160, 200, 200),
			DropdownHolder = Color3.fromRGB(40, 80, 80),
			DropdownBorder = Color3.fromRGB(40, 65, 65),
			DropdownOption = Color3.fromRGB(110, 160, 160),
			Keybind = Color3.fromRGB(110, 160, 160),
			Input = Color3.fromRGB(110, 160, 160),
			InputFocused = Color3.fromRGB(20, 10, 30),
			InputIndicator = Color3.fromRGB(130, 170, 170),
			Dialog = Color3.fromRGB(40, 80, 80),
			DialogHolder = Color3.fromRGB(30, 60, 60),
			DialogHolderLine = Color3.fromRGB(25, 50, 50),
			DialogButton = Color3.fromRGB(40, 80, 80),
			DialogButtonBorder = Color3.fromRGB(80, 110, 110),
			DialogBorder = Color3.fromRGB(50, 100, 100),
			DialogInput = Color3.fromRGB(45, 90, 90),
			DialogInputLine = Color3.fromRGB(130, 170, 170),
			Text = Color3.fromRGB(240, 240, 240),
			SubText = Color3.fromRGB(170, 170, 170),
			Hover = Color3.fromRGB(110, 160, 160),
			HoverChange = 0.04
		}
	end,
	[50] = function()
		local L_1134_, L_1135_, L_1136_, L_1137_, L_1138_ = L_3_(50)
		return {
			Name = 'Dark',
			Accent = Color3.fromRGB(96, 205, 255),
			AcrylicMain = Color3.fromRGB(60, 60, 60),
			AcrylicBorder = Color3.fromRGB(90, 90, 90),
			AcrylicGradient = ColorSequence.new(Color3.fromRGB(40, 40, 40), Color3.fromRGB(40, 40, 40)),
			AcrylicNoise = 0.9,
			TitleBarLine = Color3.fromRGB(75, 75, 75),
			Tab = Color3.fromRGB(120, 120, 120),
			Element = Color3.fromRGB(120, 120, 120),
			ElementBorder = Color3.fromRGB(35, 35, 35),
			InElementBorder = Color3.fromRGB(90, 90, 90),
			ElementTransparency = 0.87,
			ToggleSlider = Color3.fromRGB(120, 120, 120),
			ToggleToggled = Color3.fromRGB(0, 0, 0),
			SliderRail = Color3.fromRGB(120, 120, 120),
			DropdownFrame = Color3.fromRGB(160, 160, 160),
			DropdownHolder = Color3.fromRGB(45, 45, 45),
			DropdownBorder = Color3.fromRGB(35, 35, 35),
			DropdownOption = Color3.fromRGB(120, 120, 120),
			Keybind = Color3.fromRGB(120, 120, 120),
			Input = Color3.fromRGB(160, 160, 160),
			InputFocused = Color3.fromRGB(10, 10, 10),
			InputIndicator = Color3.fromRGB(150, 150, 150),
			Dialog = Color3.fromRGB(45, 45, 45),
			DialogHolder = Color3.fromRGB(35, 35, 35),
			DialogHolderLine = Color3.fromRGB(30, 30, 30),
			DialogButton = Color3.fromRGB(45, 45, 45),
			DialogButtonBorder = Color3.fromRGB(80, 80, 80),
			DialogBorder = Color3.fromRGB(70, 70, 70),
			DialogInput = Color3.fromRGB(55, 55, 55),
			DialogInputLine = Color3.fromRGB(160, 160, 160),
			Text = Color3.fromRGB(240, 240, 240),
			SubText = Color3.fromRGB(170, 170, 170),
			Hover = Color3.fromRGB(120, 120, 120),
			HoverChange = 0.07
		}
	end,
	[51] = function()
		local L_1139_, L_1140_, L_1141_, L_1142_, L_1143_ = L_3_(51)
		return {
			Name = 'Darker',
			Accent = Color3.fromRGB(72, 138, 182),
			AcrylicMain = Color3.fromRGB(30, 30, 30),
			AcrylicBorder = Color3.fromRGB(60, 60, 60),
			AcrylicGradient = ColorSequence.new(Color3.fromRGB(25, 25, 25), Color3.fromRGB(15, 15, 15)),
			AcrylicNoise = 0.94,
			TitleBarLine = Color3.fromRGB(65, 65, 65),
			Tab = Color3.fromRGB(100, 100, 100),
			Element = Color3.fromRGB(70, 70, 70),
			ElementBorder = Color3.fromRGB(25, 25, 25),
			InElementBorder = Color3.fromRGB(55, 55, 55),
			ElementTransparency = 0.82,
			DropdownFrame = Color3.fromRGB(120, 120, 120),
			DropdownHolder = Color3.fromRGB(35, 35, 35),
			DropdownBorder = Color3.fromRGB(25, 25, 25),
			Dialog = Color3.fromRGB(35, 35, 35),
			DialogHolder = Color3.fromRGB(25, 25, 25),
			DialogHolderLine = Color3.fromRGB(20, 20, 20),
			DialogButton = Color3.fromRGB(35, 35, 35),
			DialogButtonBorder = Color3.fromRGB(55, 55, 55),
			DialogBorder = Color3.fromRGB(50, 50, 50),
			DialogInput = Color3.fromRGB(45, 45, 45),
			DialogInputLine = Color3.fromRGB(120, 120, 120)
		}
	end,
	[52] = function()
		local L_1144_, L_1145_, L_1146_, L_1147_, L_1148_ = L_3_(52)
		return {
			Name = 'Light',
			Accent = Color3.fromRGB(0, 103, 192),
			AcrylicMain = Color3.fromRGB(200, 200, 200),
			AcrylicBorder = Color3.fromRGB(120, 120, 120),
			AcrylicGradient = ColorSequence.new(Color3.fromRGB(255, 255, 255), Color3.fromRGB(255, 255, 255)),
			AcrylicNoise = 0.96,
			TitleBarLine = Color3.fromRGB(160, 160, 160),
			Tab = Color3.fromRGB(90, 90, 90),
			Element = Color3.fromRGB(255, 255, 255),
			ElementBorder = Color3.fromRGB(180, 180, 180),
			InElementBorder = Color3.fromRGB(150, 150, 150),
			ElementTransparency = 0.65,
			ToggleSlider = Color3.fromRGB(40, 40, 40),
			ToggleToggled = Color3.fromRGB(255, 255, 255),
			SliderRail = Color3.fromRGB(40, 40, 40),
			DropdownFrame = Color3.fromRGB(200, 200, 200),
			DropdownHolder = Color3.fromRGB(240, 240, 240),
			DropdownBorder = Color3.fromRGB(200, 200, 200),
			DropdownOption = Color3.fromRGB(150, 150, 150),
			Keybind = Color3.fromRGB(120, 120, 120),
			Input = Color3.fromRGB(200, 200, 200),
			InputFocused = Color3.fromRGB(100, 100, 100),
			InputIndicator = Color3.fromRGB(80, 80, 80),
			Dialog = Color3.fromRGB(255, 255, 255),
			DialogHolder = Color3.fromRGB(240, 240, 240),
			DialogHolderLine = Color3.fromRGB(228, 228, 228),
			DialogButton = Color3.fromRGB(255, 255, 255),
			DialogButtonBorder = Color3.fromRGB(190, 190, 190),
			DialogBorder = Color3.fromRGB(140, 140, 140),
			DialogInput = Color3.fromRGB(250, 250, 250),
			DialogInputLine = Color3.fromRGB(160, 160, 160),
			Text = Color3.fromRGB(0, 0, 0),
			SubText = Color3.fromRGB(40, 40, 40),
			Hover = Color3.fromRGB(50, 50, 50),
			HoverChange = 0.16
		}
	end,
	[53] = function()
		local L_1149_, L_1150_, L_1151_, L_1152_, L_1153_ = L_3_(53)
		return {
			Name = 'Rose',
			Accent = Color3.fromRGB(180, 55, 90),
			AcrylicMain = Color3.fromRGB(40, 40, 40),
			AcrylicBorder = Color3.fromRGB(130, 90, 110),
			AcrylicGradient = ColorSequence.new(Color3.fromRGB(190, 60, 135), Color3.fromRGB(165, 50, 70)),
			AcrylicNoise = 0.92,
			TitleBarLine = Color3.fromRGB(140, 85, 105),
			Tab = Color3.fromRGB(180, 140, 160),
			Element = Color3.fromRGB(200, 120, 170),
			ElementBorder = Color3.fromRGB(110, 70, 85),
			InElementBorder = Color3.fromRGB(120, 90, 90),
			ElementTransparency = 0.86,
			ToggleSlider = Color3.fromRGB(200, 120, 170),
			ToggleToggled = Color3.fromRGB(0, 0, 0),
			SliderRail = Color3.fromRGB(200, 120, 170),
			DropdownFrame = Color3.fromRGB(200, 160, 180),
			DropdownHolder = Color3.fromRGB(120, 50, 75),
			DropdownBorder = Color3.fromRGB(90, 40, 55),
			DropdownOption = Color3.fromRGB(200, 120, 170),
			Keybind = Color3.fromRGB(200, 120, 170),
			Input = Color3.fromRGB(200, 120, 170),
			InputFocused = Color3.fromRGB(20, 10, 30),
			InputIndicator = Color3.fromRGB(170, 150, 190),
			Dialog = Color3.fromRGB(120, 50, 75),
			DialogHolder = Color3.fromRGB(95, 40, 60),
			DialogHolderLine = Color3.fromRGB(90, 35, 55),
			DialogButton = Color3.fromRGB(120, 50, 75),
			DialogButtonBorder = Color3.fromRGB(155, 90, 115),
			DialogBorder = Color3.fromRGB(100, 70, 90),
			DialogInput = Color3.fromRGB(135, 55, 80),
			DialogInputLine = Color3.fromRGB(190, 160, 180),
			Text = Color3.fromRGB(240, 240, 240),
			SubText = Color3.fromRGB(170, 170, 170),
			Hover = Color3.fromRGB(200, 120, 170),
			HoverChange = 0.04
		}
	end,
	[54] = function()
		local L_1154_, L_1155_, L_1156_, L_1157_, L_1158_ = L_3_(54)
		return {
			Name = 'Typewriter',
			Accent = Color3.fromRGB(97, 161, 107),
			AcrylicMain = Color3.fromRGB(252, 245, 228),
			AcrylicBorder = Color3.fromRGB(189, 189, 189),
			AcrylicGradient = ColorSequence.new(Color3.fromRGB(252, 245, 228), Color3.fromRGB(228, 220, 200)),
			AcrylicNoise = 1,
			TitleBarLine = Color3.fromRGB(189, 189, 189),
			Tab = Color3.fromRGB(109, 180, 120),
			Element = Color3.fromRGB(255, 255, 255),
			ElementBorder = Color3.fromRGB(200, 200, 200),
			InElementBorder = Color3.fromRGB(191, 191, 193),
			ElementTransparency = 1,
			ToggleSlider = Color3.fromRGB(97, 161, 107),
			ToggleToggled = Color3.fromRGB(255, 255, 255),
			SliderRail = Color3.fromRGB(230, 230, 230),
			DropdownFrame = Color3.fromRGB(217, 218, 220),
			DropdownHolder = Color3.fromRGB(226, 220, 205),
			DropdownBorder = Color3.fromRGB(185, 182, 172),
			DropdownOption = Color3.fromRGB(27, 129, 229),
			Keybind = Color3.fromRGB(233, 227, 211),
			Input = Color3.fromRGB(255, 255, 255),
			InputFocused = Color3.fromRGB(20, 10, 30),
			InputIndicator = Color3.fromRGB(170, 150, 190),
			Dialog = Color3.fromRGB(252, 245, 228),
			DialogHolder = Color3.fromRGB(228, 220, 200),
			DialogHolderLine = Color3.fromRGB(189, 189, 189),
			DialogButton = Color3.fromRGB(242, 243, 245),
			DialogButtonBorder = Color3.fromRGB(213, 213, 215),
			DialogBorder = Color3.fromRGB(189, 189, 189),
			DialogInput = Color3.fromRGB(252, 245, 228),
			DialogInputLine = Color3.fromRGB(190, 160, 180),
			Text = Color3.fromRGB(38, 38, 38),
			SubText = Color3.fromRGB(170, 170, 170),
			Hover = Color3.fromRGB(149, 149, 149),
			HoverChange = 0.04
		}
	end,
	[55] = function()
		local L_1159_, L_1160_, L_1161_, L_1162_, L_1163_ = L_3_(55)
		return {
			Name = 'Dark Typewriter',
			Accent = Color3.fromRGB(109, 180, 120),
			AcrylicMain = Color3.fromRGB(38, 38, 38),
			AcrylicBorder = Color3.fromRGB(85, 85, 85),
			AcrylicGradient = ColorSequence.new(Color3.fromRGB(38, 38, 38), Color3.fromRGB(38, 38, 38)),
			AcrylicNoise = 1,
			TitleBarLine = Color3.fromRGB(189, 189, 189),
			Tab = Color3.fromRGB(109, 180, 120),
			Element = Color3.fromRGB(42, 42, 42),
			ElementBorder = Color3.fromRGB(51, 51, 51),
			InElementBorder = Color3.fromRGB(51, 51, 51),
			ElementTransparency = 0,
			ToggleSlider = Color3.fromRGB(103, 169, 113),
			ToggleToggled = Color3.fromRGB(255, 255, 255),
			SliderRail = Color3.fromRGB(51, 51, 51),
			DropdownFrame = Color3.fromRGB(68, 68, 68),
			DropdownHolder = Color3.fromRGB(68, 68, 68),
			DropdownBorder = Color3.fromRGB(38, 38, 38),
			DropdownOption = Color3.fromRGB(153, 200, 255),
			Keybind = Color3.fromRGB(54, 54, 54),
			Input = Color3.fromRGB(27, 27, 27),
			InputFocused = Color3.fromRGB(51, 51, 51),
			InputIndicator = Color3.fromRGB(197, 184, 161),
			Dialog = Color3.fromRGB(38, 38, 38),
			DialogHolder = Color3.fromRGB(58, 52, 46),
			DialogHolderLine = Color3.fromRGB(40, 40, 40),
			DialogButton = Color3.fromRGB(42, 42, 42),
			DialogButtonBorder = Color3.fromRGB(51, 51, 51),
			DialogBorder = Color3.fromRGB(189, 189, 189),
			DialogInput = Color3.fromRGB(27, 27, 27),
			DialogInputLine = Color3.fromRGB(197, 184, 161),
			Text = Color3.fromRGB(197, 184, 161),
			SubText = Color3.fromRGB(158, 158, 158),
			Hover = Color3.fromRGB(149, 149, 149),
			HoverChange = 0.04
		}
	end,
	[56] = function()
		local L_1164_, L_1165_, L_1166_, L_1167_, L_1168_ = L_3_(56)
		return {
			Name = 'VSC Light High Contrast',
			Accent = Color3.fromRGB(0, 107, 189),
			AcrylicMain = Color3.fromRGB(255, 255, 255),
			AcrylicBorder = Color3.fromRGB(15, 74, 133),
			AcrylicGradient = ColorSequence.new(Color3.fromRGB(255, 255, 255), Color3.fromRGB(255, 255, 255)),
			AcrylicNoise = 1,
			TitleBarLine = Color3.fromRGB(15, 74, 133),
			Tab = Color3.fromRGB(0, 107, 189),
			Element = Color3.fromRGB(255, 255, 255),
			ElementBorder = Color3.fromRGB(15, 74, 133),
			InElementBorder = Color3.fromRGB(15, 74, 133),
			ElementTransparency = 1,
			ToggleSlider = Color3.fromRGB(15, 74, 133),
			ToggleToggled = Color3.fromRGB(0, 0, 0),
			SliderRail = Color3.fromRGB(15, 74, 133),
			DropdownFrame = Color3.fromRGB(255, 255, 255),
			DropdownHolder = Color3.fromRGB(255, 255, 255),
			DropdownBorder = Color3.fromRGB(15, 74, 133),
			DropdownOption = Color3.fromRGB(0, 107, 189),
			Keybind = Color3.fromRGB(255, 255, 255),
			Input = Color3.fromRGB(255, 255, 255),
			InputFocused = Color3.fromRGB(255, 255, 255),
			InputIndicator = Color3.fromRGB(170, 150, 190),
			Dialog = Color3.fromRGB(255, 255, 255),
			DialogHolder = Color3.fromRGB(255, 255, 255),
			DialogHolderLine = Color3.fromRGB(0, 107, 189),
			DialogButton = Color3.fromRGB(255, 255, 255),
			DialogButtonBorder = Color3.fromRGB(0, 107, 189),
			DialogBorder = Color3.fromRGB(15, 74, 133),
			DialogInput = Color3.fromRGB(255, 255, 255),
			DialogInputLine = Color3.fromRGB(15, 74, 133),
			Text = Color3.fromRGB(41, 41, 41),
			SubText = Color3.fromRGB(56, 56, 56),
			Hover = Color3.fromRGB(255, 120, 170),
			HoverChange = 0.04
		}
	end,
	[57] = function()
		local L_1169_, L_1170_, L_1171_, L_1172_, L_1173_ = L_3_(57)
		return {
			Name = 'VSC Dark High Contrast',
			Accent = Color3.fromRGB(111, 195, 223),
			AcrylicMain = Color3.fromRGB(0, 0, 0),
			AcrylicBorder = Color3.fromRGB(111, 195, 223),
			AcrylicGradient = ColorSequence.new(Color3.fromRGB(0, 0, 0), Color3.fromRGB(0, 0, 0)),
			AcrylicNoise = 1,
			TitleBarLine = Color3.fromRGB(111, 195, 223),
			Tab = Color3.fromRGB(243, 133, 24),
			Element = Color3.fromRGB(0, 0, 0),
			ElementBorder = Color3.fromRGB(243, 133, 24),
			InElementBorder = Color3.fromRGB(111, 195, 223),
			ElementTransparency = 0,
			ToggleSlider = Color3.fromRGB(111, 195, 223),
			ToggleToggled = Color3.fromRGB(0, 0, 0),
			SliderRail = Color3.fromRGB(111, 195, 223),
			DropdownFrame = Color3.fromRGB(0, 0, 0),
			DropdownHolder = Color3.fromRGB(0, 0, 0),
			DropdownBorder = Color3.fromRGB(111, 195, 223),
			DropdownOption = Color3.fromRGB(243, 133, 24),
			Keybind = Color3.fromRGB(0, 0, 0),
			Input = Color3.fromRGB(0, 0, 0),
			InputFocused = Color3.fromRGB(0, 0, 0),
			InputIndicator = Color3.fromRGB(170, 150, 190),
			Dialog = Color3.fromRGB(11, 18, 28),
			DialogHolder = Color3.fromRGB(11, 18, 28),
			DialogHolderLine = Color3.fromRGB(255, 255, 255),
			DialogButton = Color3.fromRGB(0, 0, 0),
			DialogButtonBorder = Color3.fromRGB(111, 195, 223),
			DialogBorder = Color3.fromRGB(111, 195, 223),
			DialogInput = Color3.fromRGB(0, 0, 0),
			DialogInputLine = Color3.fromRGB(111, 195, 223),
			Text = Color3.fromRGB(255, 255, 255),
			SubText = Color3.fromRGB(220, 220, 220),
			Hover = Color3.fromRGB(255, 120, 170),
			HoverChange = 0.04
		}
	end,
	[58] = function()
		local L_1174_, L_1175_, L_1176_, L_1177_, L_1178_ = L_3_(58)
		return {
			Name = 'Dracula',
			Accent = Color3.fromRGB(255, 184, 108),
			AcrylicMain = Color3.fromRGB(40, 42, 54),
			AcrylicBorder = Color3.fromRGB(189, 147, 249),
			AcrylicGradient = ColorSequence.new(Color3.fromRGB(40, 42, 54)),
			AcrylicNoise = 1,
			TitleBarLine = Color3.fromRGB(87, 68, 116),
			Tab = Color3.fromRGB(255, 184, 108),
			Element = Color3.fromRGB(42, 42, 42),
			ElementBorder = Color3.fromRGB(248, 248, 242),
			InElementBorder = Color3.fromRGB(138, 139, 136),
			ElementTransparency = 1,
			ToggleSlider = Color3.fromRGB(255, 184, 108),
			ToggleToggled = Color3.fromRGB(255, 255, 255),
			SliderRail = Color3.fromRGB(51, 51, 51),
			DropdownFrame = Color3.fromRGB(40, 42, 54),
			DropdownHolder = Color3.fromRGB(40, 42, 54),
			DropdownBorder = Color3.fromRGB(87, 68, 116),
			DropdownOption = Color3.fromRGB(255, 184, 108),
			Keybind = Color3.fromRGB(72, 76, 97),
			Input = Color3.fromRGB(27, 27, 27),
			InputFocused = Color3.fromRGB(51, 51, 51),
			InputIndicator = Color3.fromRGB(255, 184, 108),
			Dialog = Color3.fromRGB(51, 54, 68),
			DialogHolder = Color3.fromRGB(40, 42, 54),
			DialogHolderLine = Color3.fromRGB(87, 68, 116),
			DialogButton = Color3.fromRGB(200, 144, 85),
			DialogButtonBorder = Color3.fromRGB(51, 51, 51),
			DialogBorder = Color3.fromRGB(189, 147, 249),
			DialogInput = Color3.fromRGB(40, 42, 54),
			DialogInputLine = Color3.fromRGB(255, 184, 108),
			Text = Color3.fromRGB(248, 248, 242),
			SubText = Color3.fromRGB(228, 229, 224),
			Hover = Color3.fromRGB(149, 149, 149),
			HoverChange = 0.04
		}
	end,
	[59] = function()
		local L_1179_, L_1180_, L_1181_, L_1182_, L_1183_ = L_3_(59)
		return {
			Name = 'Monokai Pro Dark',
			Accent = Color3.fromRGB(252, 229, 102),
			AcrylicMain = Color3.fromRGB(25, 25, 25),
			AcrylicBorder = Color3.fromRGB(105, 103, 108),
			AcrylicGradient = ColorSequence.new(Color3.fromRGB(25, 25, 25)),
			AcrylicNoise = 1,
			TitleBarLine = Color3.fromRGB(252, 229, 102),
			Tab = Color3.fromRGB(252, 229, 102),
			Element = Color3.fromRGB(54, 53, 55),
			ElementBorder = Color3.fromRGB(105, 103, 108),
			InElementBorder = Color3.fromRGB(51, 51, 51),
			ElementTransparency = 1,
			ToggleSlider = Color3.fromRGB(252, 229, 102),
			ToggleToggled = Color3.fromRGB(255, 255, 255),
			SliderRail = Color3.fromRGB(54, 53, 55),
			DropdownFrame = Color3.fromRGB(54, 53, 55),
			DropdownHolder = Color3.fromRGB(54, 53, 55),
			DropdownBorder = Color3.fromRGB(38, 38, 38),
			DropdownOption = Color3.fromRGB(153, 200, 255),
			Keybind = Color3.fromRGB(70, 70, 70),
			Input = Color3.fromRGB(54, 53, 55),
			InputFocused = Color3.fromRGB(51, 51, 51),
			InputIndicator = Color3.fromRGB(252, 229, 102),
			Dialog = Color3.fromRGB(34, 34, 34),
			DialogHolder = Color3.fromRGB(25, 25, 25),
			DialogHolderLine = Color3.fromRGB(252, 229, 102),
			DialogButton = Color3.fromRGB(54, 53, 55),
			DialogButtonBorder = Color3.fromRGB(51, 51, 51),
			DialogBorder = Color3.fromRGB(105, 103, 108),
			DialogInput = Color3.fromRGB(54, 53, 55),
			DialogInputLine = Color3.fromRGB(252, 229, 102),
			Text = Color3.fromRGB(252, 229, 102),
			SubText = Color3.fromRGB(226, 220, 233),
			Hover = Color3.fromRGB(252, 229, 102),
			HoverChange = 0.04
		}
	end,
	[60] = function()
		local L_1184_, L_1185_, L_1186_, L_1187_, L_1188_ = L_3_(60)
		return {
			Name = 'Aura Dark',
			Accent = Color3.fromRGB(162, 119, 255),
			AcrylicMain = Color3.fromRGB(21, 20, 27),
			AcrylicBorder = Color3.fromRGB(50, 46, 70),
			AcrylicGradient = ColorSequence.new(Color3.fromRGB(21, 20, 27)),
			AcrylicNoise = 1,
			TitleBarLine = Color3.fromRGB(97, 255, 202),
			Tab = Color3.fromRGB(97, 255, 202),
			Element = Color3.fromRGB(54, 53, 55),
			ElementBorder = Color3.fromRGB(50, 46, 70),
			InElementBorder = Color3.fromRGB(51, 51, 51),
			ElementTransparency = 1,
			ToggleSlider = Color3.fromRGB(162, 119, 255),
			ToggleToggled = Color3.fromRGB(255, 255, 255),
			SliderRail = Color3.fromRGB(54, 53, 55),
			DropdownFrame = Color3.fromRGB(21, 20, 27),
			DropdownHolder = Color3.fromRGB(21, 20, 27),
			DropdownBorder = Color3.fromRGB(38, 38, 38),
			DropdownOption = Color3.fromRGB(162, 119, 255),
			Keybind = Color3.fromRGB(70, 70, 70),
			Input = Color3.fromRGB(54, 53, 55),
			InputFocused = Color3.fromRGB(51, 51, 51),
			InputIndicator = Color3.fromRGB(162, 119, 255),
			Dialog = Color3.fromRGB(21, 20, 27),
			DialogHolder = Color3.fromRGB(17, 15, 24),
			DialogHolderLine = Color3.fromRGB(97, 255, 202),
			DialogButton = Color3.fromRGB(21, 20, 27),
			DialogButtonBorder = Color3.fromRGB(50, 46, 70),
			DialogBorder = Color3.fromRGB(50, 46, 70),
			DialogInput = Color3.fromRGB(21, 20, 27),
			DialogInputLine = Color3.fromRGB(162, 119, 255),
			Text = Color3.fromRGB(231, 231, 231),
			SubText = Color3.fromRGB(201, 199, 202),
			Hover = Color3.fromRGB(162, 119, 255),
			HoverChange = 0.04
		}
	end,
	[61] = function()
		local L_1189_, L_1190_, L_1191_, L_1192_, L_1193_ = L_3_(61)
		return {
			Name = 'Primary Dark',
			Accent = Color3.fromRGB(218, 154, 27),
			AcrylicMain = Color3.fromRGB(46, 38, 31),
			AcrylicBorder = Color3.fromRGB(68, 54, 41),
			AcrylicGradient = ColorSequence.new(Color3.fromRGB(46, 38, 31)),
			AcrylicNoise = 1,
			TitleBarLine = Color3.fromRGB(59, 48, 38),
			Tab = Color3.fromRGB(218, 154, 27),
			Element = Color3.fromRGB(54, 53, 55),
			ElementBorder = Color3.fromRGB(59, 48, 38),
			InElementBorder = Color3.fromRGB(59, 48, 38),
			ElementTransparency = 1,
			ToggleSlider = Color3.fromRGB(252, 229, 102),
			ToggleToggled = Color3.fromRGB(255, 255, 255),
			SliderRail = Color3.fromRGB(38, 33, 28),
			DropdownFrame = Color3.fromRGB(46, 38, 31),
			DropdownHolder = Color3.fromRGB(46, 38, 31),
			DropdownBorder = Color3.fromRGB(59, 48, 38),
			DropdownOption = Color3.fromRGB(218, 154, 27),
			Keybind = Color3.fromRGB(70, 70, 70),
			Input = Color3.fromRGB(54, 53, 55),
			InputFocused = Color3.fromRGB(51, 51, 51),
			InputIndicator = Color3.fromRGB(218, 154, 27),
			Dialog = Color3.fromRGB(46, 38, 31),
			DialogHolder = Color3.fromRGB(38, 33, 28),
			DialogHolderLine = Color3.fromRGB(59, 48, 38),
			DialogButton = Color3.fromRGB(90, 69, 51),
			DialogButtonBorder = Color3.fromRGB(40, 31, 23),
			DialogBorder = Color3.fromRGB(68, 54, 41),
			DialogInput = Color3.fromRGB(42, 36, 30),
			DialogInputLine = Color3.fromRGB(218, 154, 27),
			Text = Color3.fromRGB(215, 192, 163),
			SubText = Color3.fromRGB(163, 137, 102),
			Hover = Color3.fromRGB(218, 154, 27),
			HoverChange = 0.04
		}
	end,
	[62] = function()
		local L_1194_, L_1195_, L_1196_, L_1197_, L_1198_ = L_3_(62)
		return {
			Name = 'AnuPuccin Material Mint',
			Accent = Color3.fromRGB(71, 123, 133),
			AcrylicMain = Color3.fromRGB(189, 214, 219),
			AcrylicBorder = Color3.fromRGB(109, 165, 176),
			AcrylicGradient = ColorSequence.new(Color3.fromRGB(189, 214, 219)),
			AcrylicNoise = 1,
			TitleBarLine = Color3.fromRGB(165, 196, 202),
			Tab = Color3.fromRGB(71, 123, 133),
			Element = Color3.fromRGB(54, 53, 55),
			ElementBorder = Color3.fromRGB(86, 147, 159),
			InElementBorder = Color3.fromRGB(44, 76, 83),
			ElementTransparency = 1,
			ToggleSlider = Color3.fromRGB(71, 123, 133),
			ToggleToggled = Color3.fromRGB(255, 255, 255),
			SliderRail = Color3.fromRGB(86, 147, 159),
			DropdownFrame = Color3.fromRGB(162, 198, 205),
			DropdownHolder = Color3.fromRGB(162, 198, 205),
			DropdownBorder = Color3.fromRGB(109, 165, 176),
			DropdownOption = Color3.fromRGB(71, 123, 133),
			Keybind = Color3.fromRGB(189, 214, 219),
			Input = Color3.fromRGB(189, 214, 219),
			InputFocused = Color3.fromRGB(189, 214, 219),
			InputIndicator = Color3.fromRGB(71, 123, 133),
			Dialog = Color3.fromRGB(189, 214, 219),
			DialogHolder = Color3.fromRGB(162, 198, 205),
			DialogHolderLine = Color3.fromRGB(165, 196, 202),
			DialogButton = Color3.fromRGB(109, 165, 176),
			DialogButtonBorder = Color3.fromRGB(96, 145, 155),
			DialogBorder = Color3.fromRGB(109, 165, 176),
			DialogInput = Color3.fromRGB(175, 199, 204),
			DialogInputLine = Color3.fromRGB(71, 123, 133),
			Text = Color3.fromRGB(5, 9, 10),
			SubText = Color3.fromRGB(5, 9, 10),
			Hover = Color3.fromRGB(71, 123, 133),
			HoverChange = 0.04
		}
	end
}
do
	local L_1199_, L_1200_, L_1201_, L_1202_, L_1203_, L_1204_, L_1205_, L_1206_, L_1207_, L_1208_, L_1209_, L_1210_, L_1211_, L_1212_, L_1213_, L_1214_ = task, setmetatable, error, newproxy, getmetatable, next, table, unpack, coroutine, script, type, require, pcall, getfenv, setfenv, rawget
	local L_1215_, L_1216_, L_1217_, L_1218_, L_1219_, L_1220_, L_1221_, L_1222_, L_1223_, L_1224_, L_1225_ = L_1205_.insert, L_1205_.remove, L_1205_.freeze or function(L_1232_arg0)
		return L_1232_arg0
	end, L_1199_ and L_1199_.defer or function(L_1233_arg0, ...)
		local L_1234_ = L_1207_.create(L_1233_arg0)
		L_1207_.resume(L_1234_, ...)
		return L_1234_
	end, '0.0.0-venv', {}, {}, {}, {}, {}, {}
	local L_1226_, L_1227_ = {
		GetChildren = function(L_1235_arg0)
			local L_1236_, L_1237_ = L_1225_[L_1235_arg0], {}
			for L_1238_forvar0 in L_1204_, L_1236_ do
				L_1215_(L_1237_, L_1238_forvar0)
			end
			return L_1237_
		end,
		FindFirstChild = function(L_1239_arg0, L_1240_arg1)
			if not L_1240_arg1 then
				L_1201_('Argument 1 missing or nil', 2)
			end
			for L_1241_forvar0 in L_1204_, L_1225_[L_1239_arg0] do
				if L_1241_forvar0.Name == L_1240_arg1 then
					return L_1241_forvar0
				end
			end
			return
		end,
		GetFullName = function(L_1242_arg0)
			local L_1243_, L_1244_ = L_1242_arg0.Name, L_1242_arg0.Parent
			while L_1244_ do
				L_1243_ = L_1244_.Name .. '.' .. L_1243_
				L_1244_ = L_1244_.Parent
			end
			return 'VirtualEnv.' .. L_1243_
		end
	}, {}
	for L_1245_forvar0, L_1246_forvar1 in L_1204_, L_1226_ do
		L_1227_[L_1245_forvar0] = function(L_1247_arg0, ...)
			if not L_1225_[L_1247_arg0] then
				L_1201_("Expected ':' not '.' calling member function " .. L_1245_forvar0, 1)
			end
			return L_1246_forvar1(L_1247_arg0, ...)
		end
	end
	local L_1228_ = function(L_1248_arg0, L_1249_arg1, L_1250_arg2)
		local L_1251_, L_1252_, L_1253_, L_1254_, L_1255_ = L_1200_({}, {
			__mode = 'k'
		}), function(L_1257_arg0)
			L_1201_(L_1257_arg0 .. ' is not a valid (virtual) member of ' .. L_1248_arg0 .. ' "' .. L_1249_arg1 .. '"', 1)
		end, function(L_1258_arg0)
			L_1201_('Unable to assign (virtual) property ' .. L_1258_arg0 .. '. Property is read only', 1)
		end, (L_1202_(true))
		local L_1256_ = L_1203_(L_1254_)
		L_1256_.__index = function(L_1259_arg0, L_1260_arg1)
			if L_1260_arg1 == 'ClassName' then
				return L_1248_arg0
			elseif L_1260_arg1 == 'Name' then
				return L_1249_arg1
			elseif L_1260_arg1 == 'Parent' then
				return L_1250_arg2
			elseif L_1248_arg0 == 'StringValue' and L_1260_arg1 == 'Value' then
				return L_1255_
			else
				local L_1261_ = L_1227_[L_1260_arg1]
				if L_1261_ then
					return L_1261_
				end
			end
			for L_1262_forvar0 in L_1204_, L_1251_ do
				if L_1262_forvar0.Name == L_1260_arg1 then
					return L_1262_forvar0
				end
			end
			L_1252_(L_1260_arg1)
		end
		L_1256_.__newindex = function(L_1263_arg0, L_1264_arg1, L_1265_arg2)
			if L_1264_arg1 == 'ClassName' then
				L_1253_(L_1264_arg1)
			elseif L_1264_arg1 == 'Name' then
				L_1249_arg1 = L_1265_arg2
			elseif L_1264_arg1 == 'Parent' then
				if L_1265_arg2 == L_1254_ then
					return
				end
				if L_1250_arg2 ~= nil then
					L_1225_[L_1250_arg2][L_1254_] = nil
				end
				L_1250_arg2 = L_1265_arg2
				if L_1265_arg2 ~= nil then
					L_1225_[L_1265_arg2][L_1254_] = true
				end
			elseif L_1248_arg0 == 'StringValue' and L_1264_arg1 == 'Value' then
				L_1255_ = L_1265_arg2
			else
				L_1252_(L_1264_arg1)
			end
		end
		L_1256_.__tostring = function()
			return L_1249_arg1
		end
		L_1225_[L_1254_] = L_1251_
		if L_1250_arg2 ~= nil then
			L_1225_[L_1250_arg2][L_1254_] = true
		end
		return L_1254_
	end
	local function L_1229_func(L_1266_arg0, L_1267_arg1)
		local L_1268_, L_1269_, L_1270_, L_1271_ = L_1266_arg0[1], L_1266_arg0[2], L_1266_arg0[3], L_1266_arg0[4]
		local L_1272_ = L_1216_(L_1270_, 1)
		local L_1273_ = L_1228_(L_1269_, L_1272_, L_1267_arg1)
		L_1220_[L_1268_] = L_1273_
		if L_1270_ then
			for L_1274_forvar0, L_1275_forvar1 in L_1204_, L_1270_ do
				L_1273_[L_1274_forvar0] = L_1275_forvar1
			end
		end
		if L_1271_ then
			for L_1276_forvar0, L_1277_forvar1 in L_1204_, L_1271_ do
				L_1229_func(L_1277_forvar1, L_1273_)
			end
		end
		return L_1273_
	end
	local L_1230_ = {}
	for L_1278_forvar0, L_1279_forvar1 in L_1204_, L_2_ do
		L_1215_(L_1230_, L_1229_func(L_1279_forvar1))
	end
	for L_1280_forvar0, L_1281_forvar1 in L_1204_, L_4_ do
		local L_1282_ = L_1220_[L_1280_forvar0]
		L_1221_[L_1282_] = L_1281_forvar1
		local L_1283_ = L_1282_.ClassName
		if L_1283_ == 'LocalScript' or L_1283_ == 'Script' then
			L_1215_(L_1223_, L_1282_)
		end
	end
	local L_1231_ = function(L_1284_arg0)
		local L_1285_, L_1286_ = L_1284_arg0.ClassName, L_1222_[L_1284_arg0]
		if L_1286_ and L_1285_ == 'ModuleScript' then
			return L_1206_(L_1286_)
		end
		local L_1287_ = L_1221_[L_1284_arg0]
		if not L_1287_ then
			return
		end
		if L_1285_ == 'LocalScript' or L_1285_ == 'Script' then
			L_1287_()
			return
		else
			local L_1288_ = {
				L_1287_()
			}
			L_1222_[L_1284_arg0] = L_1288_
			return L_1206_(L_1288_)
		end
	end
	function L_3_(L_1289_arg0)
		local L_1290_ = L_1220_[L_1289_arg0]
		local L_1291_ = L_1221_[L_1290_]
		if not L_1291_ then
			return
		end
		local L_1292_, L_1293_, L_1294_, L_1295_, L_1296_, L_1297_, L_1298_ = false, L_1217_{
			Version = L_1219_,
			Script = L_1208_,
			Shared = L_1224_,
			GetScript = function()
				return L_1208_
			end,
			GetShared = function()
				return L_1224_
			end
		}, L_1290_, function(L_1301_arg0, ...)
			if L_1225_[L_1301_arg0] and L_1301_arg0.ClassName == 'ModuleScript' and L_1221_[L_1301_arg0] then
				return L_1231_(L_1301_arg0)
			end
			return L_1210_(L_1301_arg0, ...)
		end
		local L_1299_, L_1300_ = function(L_1302_arg0, ...)
			if not L_1292_ then
				L_1298_()
			end
			if L_1209_(L_1302_arg0) == 'number' and L_1302_arg0 >= 0 then
				if L_1302_arg0 == 0 then
					return L_1297_
				else
					L_1302_arg0 = L_1302_arg0 + 1
					local L_1303_, L_1304_ = L_1211_(L_1212_, L_1302_arg0)
					if L_1303_ and L_1304_ == L_1296_ then
						return L_1297_
					end
				end
			end
			return L_1212_(L_1302_arg0, ...)
		end, function(L_1305_arg0, L_1306_arg1, ...)
			if not L_1292_ then
				L_1298_()
			end
			if L_1209_(L_1305_arg0) == 'number' and L_1305_arg0 >= 0 then
				if L_1305_arg0 == 0 then
					return L_1213_(L_1297_, L_1306_arg1)
				else
					L_1305_arg0 = L_1305_arg0 + 1
					local L_1307_, L_1308_ = L_1211_(L_1212_, L_1305_arg0)
					if L_1307_ and L_1308_ == L_1296_ then
						return L_1213_(L_1297_, L_1306_arg1)
					end
				end
			end
			return L_1213_(L_1305_arg0, L_1306_arg1, ...)
		end
		function L_1298_()
			L_1296_ = L_1212_(0)
			local L_1309_ = {
				maui = L_1293_,
				script = L_1294_,
				require = L_1295_,
				getfenv = L_1299_,
				setfenv = L_1300_
			}
			L_1297_ = L_1200_({}, {
				__index = function(L_1310_arg0, L_1311_arg1)
					local L_1312_ = L_1214_(L_1297_, L_1311_arg1)
					if L_1312_ ~= nil then
						return L_1312_
					end
					local L_1313_ = L_1309_[L_1311_arg1]
					if L_1313_ ~= nil then
						return L_1313_
					end
					return L_1296_[L_1311_arg1]
				end
			})
			L_1213_(L_1291_, L_1297_)
			L_1292_ = true
		end
		return L_1293_, L_1294_, L_1295_, L_1299_, L_1300_
	end
	for L_1314_forvar0, L_1315_forvar1 in L_1204_, L_1223_ do
		L_1218_(L_1231_, L_1315_forvar1)
	end
	do
		local L_1316_
		for L_1317_forvar0, L_1318_forvar1 in L_1204_, L_1230_ do
			if L_1318_forvar1.ClassName == 'ModuleScript' and L_1318_forvar1.Name == 'MainModule' then
				L_1316_ = L_1318_forvar1
				break
			end
		end
		if L_1316_ then
			return L_1231_(L_1316_)
		end
	end
end