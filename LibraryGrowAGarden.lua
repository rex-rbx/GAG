local v_u_1 = game:service("TweenService")
local v2 = game.Players.LocalPlayer
local v_u_3 = game:GetService("UserInputService")
v2:GetMouse()
local _ = game.Players.LocalPlayer.PlayerGui
local v4 = {}
local v_u_5 = {
	["UiStroke"] = Color3.fromRGB(144, 238, 144),
	["LogoHub"] = "http://www.roblox.com/asset/?id="
}
function makedraggable(p6, p_u_7)
	-- upvalues: (ref) v_u_3
	local v_u_8 = false
	local v_u_9 = nil
	local v_u_10 = nil
	local v_u_11 = nil
	local function v_u_14(p12)
		-- upvalues: (ref) v_u_10, (ref) v_u_11, (ref) p_u_7
		local v13 = p12.Position - v_u_10
		p_u_7.Position = UDim2.new(v_u_11.X.Scale, v_u_11.X.Offset + v13.X, v_u_11.Y.Scale, v_u_11.Y.Offset + v13.Y)
	end
	p6.InputBegan:Connect(function(p_u_15)
		-- upvalues: (ref) v_u_8, (ref) v_u_10, (ref) v_u_11, (ref) p_u_7
		if p_u_15.UserInputType == Enum.UserInputType.MouseButton1 or p_u_15.UserInputType == Enum.UserInputType.Touch then
			v_u_8 = true
			v_u_10 = p_u_15.Position
			v_u_11 = p_u_7.Position
			p_u_15.Changed:Connect(function()
				-- upvalues: (ref) p_u_15, (ref) v_u_8
				if p_u_15.UserInputState == Enum.UserInputState.End then
					v_u_8 = false
				end
			end)
		end
	end)
	p6.InputChanged:Connect(function(p16)
		-- upvalues: (ref) v_u_9
		if p16.UserInputType == Enum.UserInputType.MouseMovement or p16.UserInputType == Enum.UserInputType.Touch then
			v_u_9 = p16
		end
	end)
	v_u_3.InputChanged:Connect(function(p17)
		-- upvalues: (ref) v_u_9, (ref) v_u_8, (ref) v_u_14
		if p17 == v_u_9 and v_u_8 then
			v_u_14(p17)
		end
	end)
end
function v4.AddNotify(_, p18)
	-- upvalues: (ref) v_u_1
	local v_u_19 = p18 or {}
	v_u_19.Title = v_u_19.Title or "Notification"
	v_u_19.Content = v_u_19.Content or "This Is Notification"
	v_u_19.Time = v_u_19.Time or 5
	spawn(function()
		-- upvalues: (ref) v_u_1, (ref) v_u_19
		if not game.Players.LocalPlayer.PlayerGui:FindFirstChild("NotifyGay") then
			local v20 = Instance.new("ScreenGui")
			v20.Name = "NotifyGay"
			v20.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
			v20.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		end
		if not game.Players.LocalPlayer.PlayerGui:WaitForChild("NotifyGay"):FindFirstChild("NotifyLayout") then
			local v21 = Instance.new("Frame")
			v21.Name = "NotifyLayout"
			v21.Parent = game.Players.LocalPlayer.PlayerGui:WaitForChild("NotifyGay")
			v21.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			v21.BackgroundTransparency = 1
			v21.BorderColor3 = Color3.fromRGB(0, 0, 0)
			v21.BorderSizePixel = 0
			v21.Position = UDim2.new(1, 200, 1, -100)
			v21.Size = UDim2.new(0, 200, 0, 63)
			local v_u_22 = 0
			game.Players.LocalPlayer.PlayerGui:WaitForChild("NotifyGay").NotifyLayout.ChildRemoved:Connect(function()
				-- upvalues: (ref) v_u_1, (ref) v_u_22
				local v23 = next
				local v24, v25 = game.Players.LocalPlayer.PlayerGui:WaitForChild("NotifyGay").NotifyLayout:GetChildren()
				while true do
					local v26
					v25, v26 = v23(v24, v25)
					if v25 == nil then
						break
					end
					v_u_1:Create(v26, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
						["Position"] = UDim2.new(0, 0, 1, -((v26.Size.Y.Offset + 12) * v_u_22))
					}):Play()
					v_u_22 = v_u_22 + 1
				end
			end)
		end
		local v27, v28, v29 = game.Players.LocalPlayer.PlayerGui:WaitForChild("NotifyGay").NotifyLayout:GetChildren()
		local v30 = 0
		while true do
			local v31
			v29, v31 = v27(v28, v29)
			if v29 == nil then
				break
			end
			v30 = -v31.Position.Y.Offset + v31.Size.Y.Offset + 12
		end
		local v_u_32 = Instance.new("Frame")
		local v33 = Instance.new("UICorner")
		local v34 = Instance.new("TextLabel")
		local v35 = Instance.new("UIPadding")
		local v36 = Instance.new("TextLabel")
		local v37 = Instance.new("UIPadding")
		local v38 = Instance.new("Frame")
		local v39 = Instance.new("Frame")
		local v40 = Instance.new("ImageLabel")
		local v41 = Instance.new("TextButton")
		local v42 = Instance.new("Frame")
		local v43 = Instance.new("ImageLabel")
		local v_u_44 = {}
		v_u_32.Name = "NotifyReal"
		v_u_32.Parent = game.Players.LocalPlayer.PlayerGui:WaitForChild("NotifyGay"):FindFirstChild("NotifyLayout")
		v_u_32.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
		v_u_32.BorderColor3 = Color3.fromRGB(0, 0, 0)
		v_u_32.BorderSizePixel = 0
		v_u_32.Position = UDim2.new(0, 0, 0, -v30)
		v_u_32.Size = UDim2.new(0, 200, 0, 66)
		v33.CornerRadius = UDim.new(0, 4)
		v33.Parent = v_u_32
		v34.Name = "Title"
		v34.Parent = v_u_32
		v34.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		v34.BackgroundTransparency = 1
		v34.BorderColor3 = Color3.fromRGB(0, 0, 0)
		v34.BorderSizePixel = 0
		v34.Size = UDim2.new(1, 0, 0, 20)
		v34.Font = Enum.Font.GothamBold
		v34.Text = v_u_19.Title
		v34.TextColor3 = Color3.fromRGB(255, 255, 255)
		v34.TextSize = 14
		v34.TextXAlignment = Enum.TextXAlignment.Left
		v35.Parent = v34
		v35.PaddingLeft = UDim.new(0, 12)
		v35.PaddingTop = UDim.new(0, 7)
		v36.Name = "Desc"
		v36.Parent = v_u_32
		v36.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		v36.BackgroundTransparency = 1
		v36.BorderColor3 = Color3.fromRGB(0, 0, 0)
		v36.BorderSizePixel = 0
		v36.Position = UDim2.new(0, 0, 0, 23)
		v36.Size = UDim2.new(1, 0, 1, -23)
		v36.Font = Enum.Font.GothamBold
		v36.Text = v_u_19.Content
		v36.TextColor3 = Color3.fromRGB(144, 144, 144)
		v36.TextSize = 12
		v36.TextWrapped = true
		v36.TextXAlignment = Enum.TextXAlignment.Left
		v36.TextYAlignment = Enum.TextYAlignment.Top
		v37.Parent = v36
		v37.PaddingLeft = UDim.new(0, 12)
		v37.PaddingTop = UDim.new(0, 2)
		v38.Name = "Time"
		v38.Parent = v_u_32
		v38.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		v38.BorderColor3 = Color3.fromRGB(0, 0, 0)
		v38.BorderSizePixel = 0
		v38.Size = UDim2.new(1, 0, 0, 1)
		v39.Name = "Close"
		v39.Parent = v_u_32
		v39.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		v39.BackgroundTransparency = 1
		v39.BorderColor3 = Color3.fromRGB(0, 0, 0)
		v39.BorderSizePixel = 0
		v39.Position = UDim2.new(1, -20, 0, 0)
		v39.Size = UDim2.new(0, 20, 0, 20)
		v40.Name = "Logo"
		v40.Parent = v39
		v40.AnchorPoint = Vector2.new(0.5, 0.5)
		v40.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		v40.BackgroundTransparency = 1
		v40.BorderColor3 = Color3.fromRGB(0, 0, 0)
		v40.BorderSizePixel = 0
		v40.Position = UDim2.new(0.5, 0, 0.5, 0)
		v40.Size = UDim2.new(0, 30, 0, 30)
		v40.Image = "http://www.roblox.com/asset/?id=107756350055378"
		v41.Name = "Click"
		v41.Parent = v39
		v41.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		v41.BackgroundTransparency = 1
		v41.BorderColor3 = Color3.fromRGB(0, 0, 0)
		v41.BorderSizePixel = 0
		v41.Size = UDim2.new(1, 0, 1, 0)
		v41.Font = Enum.Font.SourceSans
		v41.Text = ""
		v41.TextColor3 = Color3.fromRGB(0, 0, 0)
		v41.TextSize = 14
		v42.Name = "DropShadowHolder"
		v42.Parent = NotifyFrame
		v42.BackgroundTransparency = 1
		v42.BorderSizePixel = 0
		v42.Size = UDim2.new(1, 0, 1, 0)
		v42.ZIndex = 0
		v43.Name = "DropShadow"
		v43.Parent = v42
		v43.AnchorPoint = Vector2.new(0.5, 0.5)
		v43.BackgroundTransparency = 1
		v43.BorderSizePixel = 0
		v43.Position = UDim2.new(0.5, 0, 0.5, 0)
		v43.Size = UDim2.new(1, 50, 1, 50)
		v43.ZIndex = 0
		v43.Image = "rbxassetid://6015897843"
		v43.ImageColor3 = Color3.fromRGB(106, 117, 135)
		v43.ImageTransparency = 0.5
		v43.ScaleType = Enum.ScaleType.Slice
		v43.SliceCenter = Rect.new(49, 49, 450, 450)
		local v_u_45 = false
		function v_u_44.Close(_)
			-- upvalues: (ref) v_u_45, (ref) v_u_1, (ref) v_u_32, (ref) v_u_19
			if v_u_45 then
				return false
			end
			v_u_45 = true
			v_u_1:Create(v_u_32, TweenInfo.new(tonumber(0.2), Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {
				["Position"] = UDim2.new(0, 400, 0, 0)
			}):Play()
			task.wait(tonumber(v_u_19.Time) / 1.2)
			game.Players.LocalPlayer.PlayerGui.NotifyGay.NotifyLayout:Destroy()
		end
		v41.MouseButton1Click:Connect(function()
			-- upvalues: (ref) v_u_44
			v_u_44:Close()
		end)
		v_u_1:Create(v_u_32, TweenInfo.new(tonumber(0.2), Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {
			["Position"] = UDim2.new(0, -444, 1, -v30 - 20)
		}):Play()
		v38:TweenSize(UDim2.new(0, 0, 0, 1), "Out", "Quad", tonumber(v_u_19.Time), true)
		task.wait(tonumber(v_u_19.Time))
		v_u_1:Create(v_u_32, TweenInfo.new(tonumber(0.2), Enum.EasingStyle.Back, Enum.EasingDirection.InOut), {
			["Position"] = UDim2.new(1, 0, 1, -v30 - 20)
		}):Play()
		task.wait(tonumber(2))
		local v46 = v_u_44
		v_u_44.Close(v46)
		return v_u_44
	end)
end
function v4.AddWindows(_)
	-- upvalues: (ref) v_u_5, (ref) v_u_1, (ref) v_u_3
	local v47 = Instance.new("ScreenGui")
	local v_u_48 = Instance.new("Frame")
	local v49 = Instance.new("UICorner")
	local v50 = Instance.new("ImageLabel")
	local v51 = Instance.new("Frame")
	local v52 = Instance.new("UICorner")
	local v_u_53 = Instance.new("ScrollingFrame")
	local v54 = Instance.new("UIPadding")
	local v_u_55 = Instance.new("UIListLayout")
	local v56 = Instance.new("Frame")
	local v57 = Instance.new("Frame")
	local v_u_58 = Instance.new("Folder")
	local v_u_59 = Instance.new("UIPageLayout")
	local v60 = Instance.new("Frame")
	local v61 = Instance.new("UIStroke")
	local v62 = Instance.new("Frame")
	local v63 = Instance.new("UICorner")
	local v64 = Instance.new("ImageLabel")
	local v65 = Instance.new("TextButton")
	v47.Name = "ScreenShit"
	v47.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	v_u_48.Name = "AnDzGUI"
	v_u_48.Parent = v47
	v_u_48.AnchorPoint = Vector2.new(0.5, 0.5)
	v_u_48.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
	v_u_48.BorderColor3 = Color3.fromRGB(0, 0, 0)
	v_u_48.BorderSizePixel = 0
	v_u_48.Position = UDim2.new(0.584039748, 0, 0.5, 0)
	v_u_48.Size = UDim2.new(0, 481, 0, 332)
	v_u_48.ClipsDescendants = true
	v49.Parent = v_u_48
	v60.Name = "TOP"
	v60.Parent = v_u_48
	v60.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	v60.BackgroundTransparency = 1
	v60.BorderColor3 = Color3.fromRGB(0, 0, 0)
	v60.BorderSizePixel = 0
	v60.Size = UDim2.new(1, 0, 0, 75)
	v61.Parent = v_u_48
	v61.Color = v_u_5.UiStroke
	v61.Transparency = 0.21
	v61.Thickness = 1.2
	v50.Name = "LogoHut"
	v50.Parent = v_u_48
	v50.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	v50.BackgroundTransparency = 1
	v50.BorderColor3 = Color3.fromRGB(0, 0, 0)
	v50.BorderSizePixel = 0
	v50.Position = UDim2.new(0.0222222228, 0, 0.0149999997, 0)
	v50.Size = UDim2.new(0, 55, 0, 55)
	v50.Image = v_u_5.LogoHub
	v51.Name = "Tab List"
	v51.Parent = v_u_48
	v51.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	v51.BorderColor3 = Color3.fromRGB(0, 0, 0)
	v51.BorderSizePixel = 0
	v51.Position = UDim2.new(0.162222117, 0, 0.0350000001, 0)
	v51.Size = UDim2.new(0, 502, 0, 39)
	v52.CornerRadius = UDim.new(0, 4)
	v52.Parent = v51
	v_u_53.Name = "AnNigga"
	v_u_53.Parent = v51
	v_u_53.AnchorPoint = Vector2.new(0.5, 0.5)
	v_u_53.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	v_u_53.BackgroundTransparency = 1
	v_u_53.BorderColor3 = Color3.fromRGB(0, 0, 0)
	v_u_53.BorderSizePixel = 0
	v_u_53.Position = UDim2.new(0.5, 0, 0.5, 0)
	v_u_53.Size = UDim2.new(1, -7, 1, -7)
	v_u_53.CanvasSize = UDim2.new(2, 0, 0, 0)
	v_u_53.ScrollBarThickness = 0
	game:GetService("RunService").Stepped:Connect(function()
		-- upvalues: (ref) v_u_53, (ref) v_u_55
		v_u_53.CanvasSize = UDim2.new(0, v_u_55.AbsoluteContentSize.X + 100, 0, 0)
	end)
	v54.Parent = v_u_53
	v54.PaddingBottom = UDim.new(0, 2)
	v54.PaddingLeft = UDim.new(0, 3)
	v54.PaddingRight = UDim.new(0, 3)
	v54.PaddingTop = UDim.new(0, 4)
	v_u_55.Parent = v_u_53
	v_u_55.FillDirection = Enum.FillDirection.Horizontal
	v_u_55.SortOrder = Enum.SortOrder.LayoutOrder
	v_u_55.Padding = UDim.new(0, 12)
	v56.Name = "Layout"
	v56.Parent = v_u_58
	v56.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	v56.BackgroundTransparency = 1
	v56.BorderColor3 = Color3.fromRGB(0, 0, 0)
	v56.BorderSizePixel = 0
	v56.Position = UDim2.new(0.0222222917, 0, 0.170000002, 0)
	v56.Size = UDim2.new(1, 0, 0, 332)
	v57.Name = "LayoutReal"
	v57.Parent = v_u_48
	v57.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	v57.BackgroundTransparency = 1
	v57.BorderColor3 = Color3.fromRGB(0, 0, 0)
	v57.BorderSizePixel = 0
	v57.Size = UDim2.new(1, 0, 1, 0)
	v57.ClipsDescendants = true
	v_u_58.Name = "CCC"
	v_u_58.Parent = v57
	v_u_59.Parent = v_u_58
	v_u_59.SortOrder = Enum.SortOrder.LayoutOrder
	v_u_59.TweenTime = 0.35
	v_u_59.GamepadInputEnabled = false
	v_u_59.ScrollWheelInputEnabled = false
	v_u_59.TouchInputEnabled = false
	v62.Name = "CloseUI"
	v62.Parent = v47
	v62.BackgroundColor3 = Color3.fromRGB(19, 19, 19)
	v62.BorderColor3 = Color3.fromRGB(0, 0, 0)
	v62.BorderSizePixel = 0
	v62.Position = UDim2.new(0.130987287, 0, 0.10569106, 0)
	v62.Size = UDim2.new(0, 45, 0, 45)
	v62.Draggable = true
	v62.Active = true
	v63.Parent = v62
	v64.Name = "LogoHut"
	v64.Parent = v62
	v64.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	v64.BackgroundTransparency = 1
	v64.BorderColor3 = Color3.fromRGB(0, 0, 0)
	v64.BorderSizePixel = 0
	v64.Position = UDim2.new(0.0222222228, 0, 0.0149999997, 0)
	v64.Size = UDim2.new(1, 0, 1, 0)
	v64.Image = v_u_5.LogoHub
	v65.Name = "Click"
	v65.Parent = v62
	v65.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	v65.BackgroundTransparency = 1
	v65.BorderColor3 = Color3.fromRGB(0, 0, 0)
	v65.BorderSizePixel = 0
	v65.Size = UDim2.new(1, 0, 1, 0)
	v65.Font = Enum.Font.SourceSans
	v65.Text = ""
	v65.TextColor3 = Color3.fromRGB(0, 0, 0)
	v65.TextSize = 14
	v65.Activated:Connect(function()
		-- upvalues: (ref) v_u_48
		if v_u_48.Visible == true then
			v_u_48.Visible = false
		else
			v_u_48.Visible = true
		end
	end)
	makedraggable(v65, v62)
	makedraggable(v60, v_u_48)
	local v_u_66 = 1
	return {
		["AddTab"] = function(_, p67)
			-- upvalues: (ref) v_u_53, (ref) v_u_58, (ref) v_u_66, (ref) v_u_59, (ref) v_u_1, (ref) v_u_3
			local v68 = p67 or {}
			v68.Name = v68.Name or "Tab 1"
			local v_u_69 = Instance.new("Frame")
			local v70 = Instance.new("UICorner")
			local v71 = Instance.new("TextLabel")
			local v72 = Instance.new("TextButton")
			local v_u_73 = Instance.new("Frame")
			local v74 = Instance.new("Frame")
			local v75 = Instance.new("UICorner")
			local v_u_76 = Instance.new("ScrollingFrame")
			local v_u_77 = Instance.new("UIListLayout")
			local v78 = Instance.new("UIPadding")
			local v79 = Instance.new("Frame")
			local v80 = Instance.new("UICorner")
			local v_u_81 = Instance.new("ScrollingFrame")
			local v_u_82 = Instance.new("UIListLayout")
			local v83 = Instance.new("UIPadding")
			v_u_69.Name = "Tab Disable"
			v_u_69.Parent = v_u_53
			v_u_69.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
			v_u_69.BorderColor3 = Color3.fromRGB(0, 0, 0)
			v_u_69.BorderSizePixel = 0
			v_u_69.Size = UDim2.new(0, 100, 1, -2)
			v70.CornerRadius = UDim.new(0, 6)
			v70.Parent = v_u_69
			v71.Name = "NameTab"
			v71.Parent = v_u_69
			v71.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			v71.BackgroundTransparency = 1
			v71.BorderColor3 = Color3.fromRGB(0, 0, 0)
			v71.BorderSizePixel = 0
			v71.Size = UDim2.new(1, 0, 1, 0)
			v71.Font = Enum.Font.GothamBold
			v71.Text = v68.Name
			v71.TextColor3 = Color3.fromRGB(255, 255, 255)
			v71.TextSize = 13
			v72.Name = "Click"
			v72.Parent = v_u_69
			v72.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			v72.BackgroundTransparency = 1
			v72.BorderColor3 = Color3.fromRGB(0, 0, 0)
			v72.BorderSizePixel = 0
			v72.Size = UDim2.new(1, 0, 1, 0)
			v72.Font = Enum.Font.SourceSans
			v72.Text = ""
			v72.TextColor3 = Color3.fromRGB(0, 0, 0)
			v72.TextSize = 14
			v_u_73.Name = "Channel"
			v_u_73.Parent = v_u_58
			v_u_73.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			v_u_73.BackgroundTransparency = 1
			v_u_73.BorderColor3 = Color3.fromRGB(0, 0, 0)
			v_u_73.BorderSizePixel = 0
			v_u_73.LayoutOrder = v_u_66
			v_u_73.Size = UDim2.new(1, 0, 1, 0)
			v74.Name = "Left"
			v74.Parent = v_u_73
			v74.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
			v74.BorderColor3 = Color3.fromRGB(0, 0, 0)
			v74.Position = UDim2.new(0, 15, 0, 65)
			v74.BorderSizePixel = 0
			v74.Size = UDim2.new(0.468006402, 0, 1, -75)
			v75.Parent = v74
			v_u_76.Name = "ChannelLeft"
			v_u_76.Parent = v74
			v_u_76.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			v_u_76.BackgroundTransparency = 1
			v_u_76.BorderColor3 = Color3.fromRGB(0, 0, 0)
			v_u_76.BorderSizePixel = 0
			v_u_76.Size = UDim2.new(1, 0, 1, 0)
			v_u_76.ScrollBarThickness = 0
			game:GetService("RunService").Stepped:Connect(function()
				-- upvalues: (ref) v_u_76, (ref) v_u_77
				v_u_76.CanvasSize = UDim2.new(0, 0, 0, v_u_77.AbsoluteContentSize.Y + 20)
			end)
			v_u_77.Parent = v_u_76
			v_u_77.SortOrder = Enum.SortOrder.LayoutOrder
			v_u_77.Padding = UDim.new(0, 12)
			v78.Parent = v_u_76
			v78.PaddingBottom = UDim.new(0, 6)
			v78.PaddingLeft = UDim.new(0, 6)
			v78.PaddingRight = UDim.new(0, 6)
			v78.PaddingTop = UDim.new(0, 8)
			v79.Name = "Right"
			v79.Parent = v_u_73
			v79.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
			v79.BorderColor3 = Color3.fromRGB(0, 0, 0)
			v79.BorderSizePixel = 0
			v79.Position = UDim2.new(0.515, 0, 0, 65)
			v79.Size = UDim2.new(0.468006402, 0, 1, -75)
			v80.Parent = v79
			v_u_81.Name = "ChannelLeft"
			v_u_81.Parent = v79
			v_u_81.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			v_u_81.BackgroundTransparency = 1
			v_u_81.BorderColor3 = Color3.fromRGB(0, 0, 0)
			v_u_81.BorderSizePixel = 0
			v_u_81.Size = UDim2.new(1, 0, 1, 0)
			v_u_81.ScrollBarThickness = 0
			game:GetService("RunService").Stepped:Connect(function()
				-- upvalues: (ref) v_u_81, (ref) v_u_82
				v_u_81.CanvasSize = UDim2.new(0, 0, 0, v_u_82.AbsoluteContentSize.Y + 20)
			end)
			v_u_82.Parent = v_u_81
			v_u_82.SortOrder = Enum.SortOrder.LayoutOrder
			v_u_82.Padding = UDim.new(0, 12)
			v83.Parent = v_u_81
			v83.PaddingBottom = UDim.new(0, 6)
			v83.PaddingLeft = UDim.new(0, 6)
			v83.PaddingRight = UDim.new(0, 6)
			v83.PaddingTop = UDim.new(0, 8)
			v_u_59:JumpToIndex(1)
			v72.Activated:Connect(function()
				-- upvalues: (ref) v_u_53, (ref) v_u_69, (ref) v_u_59, (ref) v_u_73
				local v84 = next
				local v85, v86 = v_u_53:GetChildren()
				while true do
					local v87
					v86, v87 = v84(v85, v86)
					if v86 == nil then
						break
					end
					if v87.Name == "Tab Disable" then
						v87.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
					end
				end
				v_u_69.BackgroundColor3 = Color3.fromRGB(130, 130, 130)
				v_u_59:JumpToIndex(v_u_73.LayoutOrder)
			end)
			v_u_66 = v_u_66 + 1
			return {
				["AddSection"] = function(_, p88, p89)
					-- upvalues: (ref) v_u_76, (ref) v_u_81, (ref) v_u_1, (ref) v_u_3
					local v90 = p89 or {}
					v90.Name = v90.Name
					if p88 == "Left" or typeof(p88) ~= "string" then
						Nigga = v_u_76
					elseif p88 == "Right" then
						Nigga = v_u_81
					end
					local v_u_91 = Instance.new("Frame")
					local v92 = Instance.new("UICorner")
					local v93 = Instance.new("TextLabel")
					local v_u_94 = Instance.new("Frame")
					local v_u_95 = Instance.new("UIListLayout")
					local v96 = Instance.new("UIPadding")
					local v97 = Instance.new("UIStroke")
					local v98 = Instance.new("Frame")
					v98.Name = "Line"
					v98.Parent = v_u_91
					v98.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					v98.BackgroundTransparency = 0.9
					v98.BorderColor3 = Color3.fromRGB(0, 0, 0)
					v98.BorderSizePixel = 0
					v98.Position = UDim2.new(0, 5, 0, 30)
					v98.Size = UDim2.new(1, -10, 0, 1)
					v97.Parent = v_u_91
					v97.Color = Color3.fromRGB(255, 255, 255)
					v97.Transparency = 0.97
					v_u_91.Name = "Section"
					v_u_91.Parent = Nigga
					v_u_91.BackgroundColor3 = Color3.fromRGB(19, 19, 19)
					v_u_91.BorderColor3 = Color3.fromRGB(0, 0, 0)
					v_u_91.BorderSizePixel = 0
					v_u_91.Size = UDim2.new(1, 0, 0, 400)
					v92.Parent = v_u_91
					v93.Name = "NameSection"
					v93.Parent = v_u_91
					v93.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					v93.BackgroundTransparency = 1
					v93.BorderColor3 = Color3.fromRGB(0, 0, 0)
					v93.BorderSizePixel = 0
					v93.Size = UDim2.new(1, 0, 0, 30)
					v93.Font = Enum.Font.GothamBold
					v93.Text = v90.Name
					v93.TextColor3 = Color3.fromRGB(193, 193, 193)
					v93.TextSize = 13
					v_u_94.Name = "Listed"
					v_u_94.Parent = v_u_91
					v_u_94.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					v_u_94.BackgroundTransparency = 1
					v_u_94.BorderColor3 = Color3.fromRGB(0, 0, 0)
					v_u_94.BorderSizePixel = 0
					v_u_94.Position = UDim2.new(0, 0, 0, 35)
					v_u_94.Size = UDim2.new(1, 0, 1, -35)
					v_u_95.Parent = v_u_94
					v_u_95.SortOrder = Enum.SortOrder.LayoutOrder
					v_u_95.Padding = UDim.new(0, 5)
					v96.Parent = v_u_94
					v96.PaddingBottom = UDim.new(0, 6)
					v96.PaddingLeft = UDim.new(0, 6)
					v96.PaddingRight = UDim.new(0, 6)
					v96.PaddingTop = UDim.new(0, 8)
					game:GetService("RunService").Stepped:Connect(function()
						-- upvalues: (ref) v_u_91, (ref) v_u_95
						v_u_91.Size = UDim2.new(1, 0, 0, v_u_95.AbsoluteContentSize.Y + 100)
					end)
					return {
						["AddButton"] = function(_, p99)
							-- upvalues: (ref) v_u_94, (ref) v_u_1
							local v_u_100 = p99 or {}
							v_u_100.Name = v_u_100.Name or "Button"
							v_u_100.Callback = v_u_100.Callback or function() end
							local v_u_101 = Instance.new("Frame")
							local v102 = Instance.new("UICorner")
							local v103 = Instance.new("UIStroke")
							local v104 = Instance.new("TextLabel")
							local v105 = Instance.new("TextButton")
							v_u_101.Name = "Button"
							v_u_101.Parent = v_u_94
							v_u_101.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
							v_u_101.BorderColor3 = Color3.fromRGB(0, 0, 0)
							v_u_101.BorderSizePixel = 0
							v_u_101.Size = UDim2.new(1, 0, 0, 35)
							v102.CornerRadius = UDim.new(0, 4)
							v102.Parent = v_u_101
							v103.Parent = v_u_101
							v103.Color = Color3.fromRGB(255, 255, 255)
							v103.Transparency = 0.97
							v104.Name = "Title"
							v104.Parent = v_u_101
							v104.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							v104.BackgroundTransparency = 1
							v104.BorderColor3 = Color3.fromRGB(0, 0, 0)
							v104.BorderSizePixel = 0
							v104.Size = UDim2.new(1, 0, 1, 0)
							v104.Font = Enum.Font.ArialBold
							v104.Text = v_u_100.Name
							v104.TextColor3 = Color3.fromRGB(144, 144, 144)
							v104.TextSize = 13
							v105.Name = "Clicked"
							v105.Parent = v_u_101
							v105.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							v105.BackgroundTransparency = 1
							v105.BorderColor3 = Color3.fromRGB(0, 0, 0)
							v105.BorderSizePixel = 0
							v105.Size = UDim2.new(1, 0, 1, 0)
							v105.Font = Enum.Font.SourceSans
							v105.Text = ""
							v105.TextColor3 = Color3.fromRGB(0, 0, 0)
							v105.TextSize = 14
							v105.Activated:Connect(function()
								-- upvalues: (ref) v_u_101, (ref) v_u_1, (ref) v_u_100
								v_u_101.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
								v_u_1:Create(v_u_101, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
									["BackgroundColor3"] = Color3.fromRGB(35, 35, 35)
								}):Play()
								v_u_100.Callback()
							end)
						end,
						["AddToggle"] = function(_, p106)
							-- upvalues: (ref) v_u_94, (ref) v_u_1
							local v_u_107 = p106 or {}
							v_u_107.Name = v_u_107.Name or "Toggle"
							v_u_107.Default = v_u_107.Default or false
							v_u_107.Callback = v_u_107.Callback or function() end
							local v108 = Instance.new("Frame")
							local v109 = Instance.new("UICorner")
							local v110 = Instance.new("UIStroke")
							local v_u_111 = Instance.new("TextLabel")
							local v112 = Instance.new("TextButton")
							local v113 = Instance.new("Frame")
							local v114 = Instance.new("UICorner")
							local v115 = Instance.new("UIStroke")
							local v_u_116 = Instance.new("Frame")
							local v117 = Instance.new("UICorner")
							local v_u_118 = Instance.new("ImageLabel")
							local v_u_119 = {}
							v108.Name = "Toggle"
							v108.Parent = v_u_94
							v108.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
							v108.BorderColor3 = Color3.fromRGB(0, 0, 0)
							v108.BorderSizePixel = 0
							v108.Size = UDim2.new(1, 0, 0, 35)
							v109.CornerRadius = UDim.new(0, 4)
							v109.Parent = v108
							v110.Parent = v108
							v110.Color = Color3.fromRGB(255, 255, 255)
							v110.Transparency = 0.98
							v_u_111.Name = "Title"
							v_u_111.Parent = v108
							v_u_111.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							v_u_111.BackgroundTransparency = 1
							v_u_111.BorderColor3 = Color3.fromRGB(0, 0, 0)
							v_u_111.BorderSizePixel = 0
							v_u_111.Position = UDim2.new(0, 10, 0, 0)
							v_u_111.Size = UDim2.new(1, -40, 1, 0)
							v_u_111.Font = Enum.Font.ArialBold
							v_u_111.Text = v_u_107.Name
							v_u_111.TextColor3 = Color3.fromRGB(144, 144, 144)
							v_u_111.TextSize = 13
							v_u_111.TextXAlignment = Enum.TextXAlignment.Left
							v112.Name = "Clicked"
							v112.Parent = v108
							v112.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							v112.BackgroundTransparency = 1
							v112.BorderColor3 = Color3.fromRGB(0, 0, 0)
							v112.BorderSizePixel = 0
							v112.Size = UDim2.new(1, 0, 1, 0)
							v112.Font = Enum.Font.SourceSans
							v112.Text = ""
							v112.TextColor3 = Color3.fromRGB(0, 0, 0)
							v112.TextSize = 14
							v113.Name = "Check"
							v113.Parent = v108
							v113.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
							v113.BorderColor3 = Color3.fromRGB(0, 0, 0)
							v113.BorderSizePixel = 0
							v113.Position = UDim2.new(0.858953297, 0, 0.200000003, 0)
							v113.Size = UDim2.new(0, 21, 0, 21)
							v114.CornerRadius = UDim.new(1, 0)
							v114.Parent = v113
							v115.Parent = v113
							v115.Color = Color3.fromRGB(255, 255, 255)
							v115.Transparency = 0.87
							v_u_116.Name = "Check"
							v_u_116.Parent = v113
							v_u_116.AnchorPoint = Vector2.new(0.5, 0.5)
							v_u_116.BackgroundColor3 = Color3.fromRGB(58, 147, 255)
							v_u_116.BorderColor3 = Color3.fromRGB(0, 0, 0)
							v_u_116.BorderSizePixel = 0
							v_u_116.Position = UDim2.new(0.5, 0, 0.5, 0)
							v_u_116.Size = UDim2.new(0, 0, 0, 0)
							v117.CornerRadius = UDim.new(1, 0)
							v117.Parent = v_u_116
							v_u_118.Parent = v_u_116
							v_u_118.AnchorPoint = Vector2.new(0.5, 0.5)
							v_u_118.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							v_u_118.BackgroundTransparency = 1
							v_u_118.BorderColor3 = Color3.fromRGB(0, 0, 0)
							v_u_118.BorderSizePixel = 0
							v_u_118.Position = UDim2.new(0.5, 0, 0.5, 0)
							v_u_118.Size = UDim2.new(0, 0, 0, 0)
							v_u_118.Image = "http://www.roblox.com/asset/?id="
							v_u_118.ImageColor3 = Color3.fromRGB(45, 45, 45)
							Toggled = false
							function v_u_119.Set(_, p120)
								-- upvalues: (ref) v_u_1, (ref) v_u_111, (ref) v_u_116, (ref) v_u_118, (ref) v_u_107
								if p120 then
									v_u_1:Create(v_u_111, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
										["TextColor3"] = Color3.fromRGB(255, 255, 255)
									}):Play()
									v_u_1:Create(v_u_116, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
										["Size"] = UDim2.new(0, 19, 0, 19)
									}):Play()
									v_u_1:Create(v_u_118, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
										["Size"] = UDim2.new(1, -5, 1, -5)
									}):Play()
								else
									v_u_1:Create(v_u_111, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
										["TextColor3"] = Color3.fromRGB(144, 144, 144)
									}):Play()
									v_u_1:Create(v_u_116, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
										["Size"] = UDim2.new(0, 0, 0, 0)
									}):Play()
									v_u_1:Create(v_u_118, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
										["Size"] = UDim2.new(0, 0, 0, 0)
									}):Play()
								end
								Toggled = p120
								v_u_107.Callback(Toggled)
							end
							if v_u_107.Default then
								v_u_119:Set(true)
							end
							v112.Activated:Connect(function()
								-- upvalues: (ref) v_u_119
								Toggled = not Toggled
								v_u_119:Set(Toggled)
							end)
						end,
						["AddDropdown"] = function(_, p121)
							-- upvalues: (ref) v_u_94, (ref) v_u_1
							local v_u_122 = p121 or {}
							v_u_122.Name = v_u_122.Name or "Dropdown"
							v_u_122.Options = v_u_122.Options or {}
							v_u_122.Default = v_u_122.Default or ""
							v_u_122.Callback = v_u_122.Callback or function() end
							local v123 = Instance.new("Frame")
							local v124 = Instance.new("UICorner")
							local v125 = Instance.new("TextLabel")
							local v126 = Instance.new("Frame")
							local v127 = Instance.new("UICorner")
							local v128 = Instance.new("UIStroke")
							local v_u_129 = Instance.new("TextLabel")
							local v_u_130 = Instance.new("Frame")
							local v131 = Instance.new("UICorner")
							local v_u_132 = Instance.new("ScrollingFrame")
							local v_u_133 = Instance.new("UIListLayout")
							local v134 = Instance.new("UIPadding")
							local v135 = Instance.new("TextButton")
							local v_u_136 = {}
							v135.Name = "Clicked"
							v135.Parent = v123
							v135.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							v135.BackgroundTransparency = 1
							v135.BorderColor3 = Color3.fromRGB(0, 0, 0)
							v135.BorderSizePixel = 0
							v135.Size = UDim2.new(1, 0, 1, 0)
							v135.Font = Enum.Font.SourceSans
							v135.Text = ""
							v135.TextColor3 = Color3.fromRGB(0, 0, 0)
							v135.TextSize = 14
							v123.Name = "Dropdown"
							v123.Parent = v_u_94
							v123.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
							v123.BorderColor3 = Color3.fromRGB(0, 0, 0)
							v123.BorderSizePixel = 0
							v123.Size = UDim2.new(1, 0, 0, 35)
							v124.CornerRadius = UDim.new(0, 4)
							v124.Parent = v123
							v125.Name = "Title"
							v125.Parent = v123
							v125.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							v125.BackgroundTransparency = 1
							v125.BorderColor3 = Color3.fromRGB(0, 0, 0)
							v125.BorderSizePixel = 0
							v125.Position = UDim2.new(0, 10, 0, 0)
							v125.Size = UDim2.new(1, -92, 1, 0)
							v125.Font = Enum.Font.ArialBold
							v125.Text = v_u_122.Name
							v125.TextColor3 = Color3.fromRGB(144, 144, 144)
							v125.TextSize = 13
							v125.TextXAlignment = Enum.TextXAlignment.Left
							v126.Name = "SelectFrame"
							v126.Parent = v123
							v126.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							v126.BackgroundTransparency = 1
							v126.BorderColor3 = Color3.fromRGB(0, 0, 0)
							v126.BorderSizePixel = 0
							v126.Position = UDim2.new(0.488148302, 0, 0.200000003, 0)
							v126.Size = UDim2.new(0, 100, 0, 22)
							v127.CornerRadius = UDim.new(0, 4)
							v127.Parent = v126
							v128.Parent = v126
							v128.Color = Color3.fromRGB(255, 255, 255)
							v128.Transparency = 0.87
							v_u_129.Name = "SelectText"
							v_u_129.Parent = v126
							v_u_129.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							v_u_129.BackgroundTransparency = 1
							v_u_129.BorderColor3 = Color3.fromRGB(0, 0, 0)
							v_u_129.BorderSizePixel = 0
							v_u_129.Position = UDim2.new(0, 10, 0, 0)
							v_u_129.Size = UDim2.new(1, 0, 1, 0)
							v_u_129.FontFace = Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
							v_u_129.Text = v_u_122.Default
							v_u_129.TextColor3 = Color3.fromRGB(188, 188, 188)
							v_u_129.TextSize = 14
							v_u_129.TextWrapped = true
							v_u_129.TextXAlignment = Enum.TextXAlignment.Left
							v_u_130.Name = "DropList"
							v_u_130.Parent = v_u_94
							v_u_130.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
							v_u_130.BorderColor3 = Color3.fromRGB(0, 0, 0)
							v_u_130.BorderSizePixel = 0
							v_u_130.Size = UDim2.new(1, 0, 0, 121)
							v_u_130.Visible = false
							v131.CornerRadius = UDim.new(0, 4)
							v131.Parent = v_u_130
							v_u_132.Name = "Listed"
							v_u_132.Parent = v_u_130
							v_u_132.AnchorPoint = Vector2.new(0.5, 0.5)
							v_u_132.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							v_u_132.BackgroundTransparency = 1
							v_u_132.BorderColor3 = Color3.fromRGB(0, 0, 0)
							v_u_132.BorderSizePixel = 0
							v_u_132.Position = UDim2.new(0.5, 0, 0.5, 0)
							v_u_132.Size = UDim2.new(1, -5, 1, -5)
							v_u_132.ScrollBarThickness = 0
							v_u_133.Parent = v_u_132
							v_u_133.SortOrder = Enum.SortOrder.LayoutOrder
							v_u_133.Padding = UDim.new(0, 7)
							v134.Parent = v_u_132
							v134.PaddingBottom = UDim.new(0, 4)
							v134.PaddingLeft = UDim.new(0, 4)
							v134.PaddingRight = UDim.new(0, 4)
							v134.PaddingTop = UDim.new(0, 4)
							game:GetService("RunService").Stepped:Connect(function()
								-- upvalues: (ref) v_u_132, (ref) v_u_133
								v_u_132.CanvasSize = UDim2.new(0, 0, 0, v_u_133.AbsoluteContentSize.Y + 20)
							end)
							v135.Activated:Connect(function()
								-- upvalues: (ref) v_u_130
								if v_u_130.Visible ~= false then
									v_u_130.Visible = false
								else
									v_u_130.Visible = true
								end
							end)
							function v_u_136.Add(_, p137)
								-- upvalues: (ref) v_u_132, (ref) v_u_1, (ref) v_u_122, (ref) v_u_129
								local v138 = next
								local v139 = nil
								while true do
									local v140
									v139, v140 = v138(p137, v139)
									if v139 == nil then
										break
									end
									local v_u_141 = Instance.new("Frame")
									local v142 = Instance.new("UICorner")
									local v_u_143 = Instance.new("TextLabel")
									local v_u_144 = Instance.new("Frame")
									local v145 = Instance.new("UICorner")
									local v146 = Instance.new("TextButton")
									v_u_141.Name = "Options"
									v_u_141.Parent = v_u_132
									v_u_141.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
									v_u_141.BorderColor3 = Color3.fromRGB(0, 0, 0)
									v_u_141.BorderSizePixel = 0
									v_u_141.Size = UDim2.new(1, 0, 0, 25)
									v142.CornerRadius = UDim.new(0, 4)
									v142.Parent = v_u_141
									v_u_143.Name = "Title"
									v_u_143.Parent = v_u_141
									v_u_143.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
									v_u_143.BackgroundTransparency = 1
									v_u_143.BorderColor3 = Color3.fromRGB(0, 0, 0)
									v_u_143.BorderSizePixel = 0
									v_u_143.Position = UDim2.new(0, 15, 0, 0)
									v_u_143.Size = UDim2.new(1, 0, 1, 0)
									v_u_143.Font = Enum.Font.GothamBold
									v_u_143.Text = tostring(v140)
									v_u_143.TextColor3 = Color3.fromRGB(255, 255, 255)
									v_u_143.TextSize = 13
									v_u_143.TextXAlignment = Enum.TextXAlignment.Left
									v_u_144.Name = "Circle"
									v_u_144.Parent = v_u_141
									v_u_144.BackgroundColor3 = Color3.fromRGB(252, 255, 48)
									v_u_144.BorderColor3 = Color3.fromRGB(0, 0, 0)
									v_u_144.BorderSizePixel = 0
									v_u_144.Position = UDim2.new(0, -7, 0, 3)
									v_u_144.Size = UDim2.new(0, 4, 0, 18)
									v145.CornerRadius = UDim.new(0, 4)
									v145.Parent = v_u_144
									v146.Parent = v_u_141
									v146.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
									v146.BackgroundTransparency = 1
									v146.BorderColor3 = Color3.fromRGB(0, 0, 0)
									v146.BorderSizePixel = 0
									v146.Size = UDim2.new(1, 0, 1, 0)
									v146.Font = Enum.Font.SourceSans
									v146.Text = ""
									v146.TextColor3 = Color3.fromRGB(0, 0, 0)
									v146.TextSize = 14
									v146.Activated:Connect(function()
										-- upvalues: (ref) v_u_132, (ref) v_u_1, (ref) v_u_141, (ref) v_u_144, (ref) v_u_143, (ref) v_u_122, (ref) v_u_129
										local v147 = next
										local v148, v149 = v_u_132:GetChildren()
										while true do
											local v150
											v149, v150 = v147(v148, v149)
											if v149 == nil then
												break
											end
											if v150.Name == "Options" then
												v150.BackgroundTransparency = 1
											end
										end
										local v151 = next
										local v152, v153 = v_u_132:GetChildren()
										while true do
											local v154
											v153, v154 = v151(v152, v153)
											if v153 == nil then
												break
											end
											if v154.Name == "Options" then
												v154.Title.TextColor3 = Color3.fromRGB(177, 177, 177)
											end
										end
										local v155 = next
										local v156, v157 = v_u_132:GetChildren()
										while true do
											local v158
											v157, v158 = v155(v156, v157)
											if v157 == nil then
												break
											end
											if v158.Name == "Options" then
												v_u_1:Create(v158.Circle, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
													["Position"] = UDim2.new(0, -12, 0, 3)
												}):Play()
											end
										end
										v_u_141.BackgroundTransparency = 0
										v_u_1:Create(v_u_144, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
											["Position"] = UDim2.new(0, 0, 0, 3)
										}):Play()
										v_u_143.TextColor3 = Color3.fromRGB(255, 255, 255)
										v_u_122.Callback(v_u_143.Text)
										v_u_129.Text = v_u_143.Text
									end)
								end
							end
							function v_u_136.Set(_, p159)
								-- upvalues: (ref) v_u_132, (ref) v_u_1, (ref) v_u_129, (ref) v_u_122
								local v160 = v_u_132
								local v161, v162, v163 = pairs(v160:GetChildren())
								while true do
									local v164
									v163, v164 = v161(v162, v163)
									if v163 == nil then
										break
									end
									if v164.Name == "Options" and v164.Title.Text == p159 then
										local v165 = next
										local v166, v167 = v_u_132:GetChildren()
										while true do
											local v168
											v167, v168 = v165(v166, v167)
											if v167 == nil then
												break
											end
											if v168.Name == "Options" then
												v168.BackgroundTransparency = 1
											end
										end
										local v169 = next
										local v170, v171 = v_u_132:GetChildren()
										while true do
											local v172
											v171, v172 = v169(v170, v171)
											if v171 == nil then
												break
											end
											if v172.Name == "Options" then
												v172.Title.TextColor3 = Color3.fromRGB(177, 177, 177)
											end
										end
										local v173 = next
										local v174, v175 = v_u_132:GetChildren()
										while true do
											local v176
											v175, v176 = v173(v174, v175)
											if v175 == nil then
												break
											end
											if v176.Name == "Options" then
												v_u_1:Create(v176.Circle, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
													["Position"] = UDim2.new(0, -12, 0, 1)
												}):Play()
											end
										end
										v_u_1:Create(v164.Circle, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
											["Position"] = UDim2.new(0, 0, 0, 3)
										}):Play()
										v164.BackgroundTransparency = 0
										v164.Title.TextColor3 = Color3.fromRGB(255, 255, 255)
										v_u_129.Text = v164.Title.Text
										v_u_122.Callback(v164.Title.Text)
									end
								end
							end
							function v_u_136.Refresh(_, p177)
								-- upvalues: (ref) v_u_132, (ref) v_u_136, (ref) v_u_129
								local v178 = v_u_132
								local v179, v180, v181 = pairs(v178:GetChildren())
								while true do
									local v182
									v181, v182 = v179(v180, v181)
									if v181 == nil then
										break
									end
									if v182.Name == "Options" then
										v182:Destroy()
									end
								end
								v_u_136:Add(p177)
								v_u_129.Text = ""
							end
							local v183 = v_u_136
							v_u_136.Refresh(v183, v_u_122.Options)
							local v184 = v_u_136
							v_u_136.Set(v184, v_u_122.Default)
							v_u_122.Callback(v_u_122.Default)
							return v_u_136
						end,
						["AddSlider"] = function(_, p185)
							-- upvalues: (ref) v_u_94, (ref) v_u_1, (ref) v_u_3
							local v_u_186 = p185 or {}
							v_u_186.Name = v_u_186.Name or "Slider"
							v_u_186.Max = v_u_186.Max or 100
							v_u_186.Min = v_u_186.Min or 10
							v_u_186.Default = v_u_186.Default or 50
							v_u_186.Callback = v_u_186.Callback or function() end
							local v187 = Instance.new("Frame")
							local v188 = Instance.new("TextLabel")
							local v_u_189 = Instance.new("Frame")
							local v190 = Instance.new("UICorner")
							local v_u_191 = Instance.new("Frame")
							local v192 = Instance.new("UICorner")
							local v193 = Instance.new("Frame")
							local v194 = Instance.new("UICorner")
							local v_u_195 = Instance.new("TextLabel")
							v187.Name = "Slider"
							v187.Parent = v_u_94
							v187.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
							v187.BackgroundTransparency = 1
							v187.BorderColor3 = Color3.fromRGB(0, 0, 0)
							v187.BorderSizePixel = 0
							v187.Size = UDim2.new(1, 0, 0, 52)
							v188.Name = "Title"
							v188.Parent = v187
							v188.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							v188.BackgroundTransparency = 1
							v188.BorderColor3 = Color3.fromRGB(0, 0, 0)
							v188.BorderSizePixel = 0
							v188.Position = UDim2.new(0, 10, 0, -5)
							v188.Size = UDim2.new(0, 125, 0, 30)
							v188.Font = Enum.Font.GothamBold
							v188.Text = v_u_186.Name
							v188.TextColor3 = Color3.fromRGB(144, 144, 144)
							v188.TextSize = 13
							v188.TextWrapped = true
							v188.TextXAlignment = Enum.TextXAlignment.Left
							v_u_189.Name = "SlideFrame"
							v_u_189.Parent = v187
							v_u_189.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
							v_u_189.BorderColor3 = Color3.fromRGB(0, 0, 0)
							v_u_189.BorderSizePixel = 0
							v_u_189.Position = UDim2.new(0.0374391638, 0, 0.480769217, 0)
							v_u_189.Size = UDim2.new(1, -40, 0, 8)
							v190.CornerRadius = UDim.new(0, 3)
							v190.Parent = v_u_189
							v_u_191.Name = "SliderDraggable"
							v_u_191.Parent = v_u_189
							v_u_191.BackgroundColor3 = Color3.fromRGB(193, 255, 193)
							v_u_191.BorderColor3 = Color3.fromRGB(0, 0, 0)
							v_u_191.BorderSizePixel = 0
							v_u_191.Size = UDim2.new(0, 100, 1, 0)
							v192.CornerRadius = UDim.new(0, 3)
							v192.Parent = v_u_191
							v193.Name = "Circle"
							v193.Parent = v_u_191
							v193.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							v193.BorderColor3 = Color3.fromRGB(0, 0, 0)
							v193.BorderSizePixel = 0
							v193.Position = UDim2.new(1, -8, 0, -4)
							v193.Size = UDim2.new(0, 8, 0, 15)
							v194.CornerRadius = UDim.new(0, 3)
							v194.Parent = v193
							v_u_195.Name = "ValueSlider"
							v_u_195.Parent = v187
							v_u_195.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							v_u_195.BackgroundTransparency = 1
							v_u_195.BorderColor3 = Color3.fromRGB(0, 0, 0)
							v_u_195.BorderSizePixel = 0
							v_u_195.Position = UDim2.new(0.808685958, 0, 0, 0)
							v_u_195.Size = UDim2.new(0, 63, 0, 21)
							v_u_195.Font = Enum.Font.GothamBold
							v_u_195.Text = v_u_186.Default
							v_u_195.TextColor3 = Color3.fromRGB(144, 144, 144)
							v_u_195.TextSize = 13
							local v_u_196 = {
								["Value"] = v_u_186.Default
							}
							local function v_u_200(p197, p198)
								local v199 = math.floor(p197 / p198 + math.sign(p197) * 0.5) * p198
								if v199 < 0 then
									v199 = v199 + p198
								end
								return v199
							end
							function v_u_196.Set(_, p201)
								-- upvalues: (ref) v_u_200, (ref) v_u_186, (ref) v_u_196, (ref) v_u_195, (ref) v_u_1, (ref) v_u_191
								local v202 = math.clamp(v_u_200(p201, 1), v_u_186.Min, v_u_186.Max)
								v_u_196.Value = v202
								v_u_195.Text = tostring(v202)
								v_u_186.Callback(v_u_196.Value)
								v_u_1:Create(v_u_191, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
									["Size"] = UDim2.fromScale((v202 - v_u_186.Min) / (v_u_186.Max - v_u_186.Min), 1)
								}):Play()
							end
							v_u_189.InputBegan:Connect(function(p203)
								if p203.UserInputType == Enum.UserInputType.Touch or p203.UserInputType == Enum.UserInputType.MouseButton1 then
									dragging = true
								end
							end)
							v_u_3.InputEnded:Connect(function(p204)
								if p204.UserInputType == Enum.UserInputType.Touch or p204.UserInputType == Enum.UserInputType.MouseButton1 then
									dragging = false
								end
							end)
							v_u_3.InputChanged:Connect(function(p205)
								-- upvalues: (ref) v_u_189, (ref) v_u_196, (ref) v_u_186
								if dragging then
									local v206 = math.clamp((p205.Position.X - v_u_189.AbsolutePosition.X) / v_u_189.AbsoluteSize.X, 0, 1)
									v_u_196:Set(v_u_186.Min + (v_u_186.Max - v_u_186.Min) * v206)
								end
							end)
							local v207 = v_u_196
							v_u_196.Set(v207, v_u_186.Default)
							return v_u_196
						end,
						["AddParagraph"] = function(_, p208)
							-- upvalues: (ref) v_u_94
							local v209 = p208 or {}
							v209.Name = v209.Name or "Paragraph"
							v209.Description = v209.Description or ""
							local v210 = Instance.new("Frame")
							local v_u_211 = Instance.new("TextLabel")
							local v_u_212 = Instance.new("TextLabel")
							local v213 = Instance.new("UIPadding")
							local v214 = {}
							v210.Name = "Paragraph"
							v210.Parent = v_u_94
							v210.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							v210.BackgroundTransparency = 1
							v210.BorderColor3 = Color3.fromRGB(0, 0, 0)
							v210.BorderSizePixel = 0
							v210.Size = UDim2.new(1, 0, 0, 55)
							v_u_211.Name = "Title"
							v_u_211.Parent = v210
							v_u_211.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							v_u_211.BackgroundTransparency = 1
							v_u_211.BorderColor3 = Color3.fromRGB(0, 0, 0)
							v_u_211.BorderSizePixel = 0
							v_u_211.Position = UDim2.new(0, 0, 0, 7)
							v_u_211.Size = UDim2.new(1, 0, 0, 20)
							v_u_211.Font = Enum.Font.ArialBold
							v_u_211.Text = v209.Name
							v_u_211.TextColor3 = Color3.fromRGB(255, 255, 255)
							v_u_211.TextSize = 13
							v_u_212.Name = "Desc"
							v_u_212.Parent = v210
							v_u_212.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							v_u_212.BackgroundTransparency = 1
							v_u_212.BorderColor3 = Color3.fromRGB(0, 0, 0)
							v_u_212.BorderSizePixel = 0
							v_u_212.Position = UDim2.new(0, 0, 0, 27)
							v_u_212.Size = UDim2.new(1, 0, 1, -7)
							v_u_212.Font = Enum.Font.ArialBold
							v_u_212.Text = v209.Description
							v_u_212.TextColor3 = Color3.fromRGB(144, 144, 144)
							v_u_212.TextSize = 12
							v_u_212.TextWrapped = true
							v_u_212.TextYAlignment = Enum.TextYAlignment.Top
							v213.Parent = v_u_212
							v213.PaddingTop = UDim.new(0, 3)
							function v214.Set(_, p215)
								-- upvalues: (ref) v_u_211, (ref) v_u_212
								local v216 = p215 or {}
								v216.Name = v216.Name
								v216.Description = v216.Description
								if v216.Name ~= "" and v216.Name ~= nil then
									v_u_211.Text = v216.Name
								end
								if v216.Description ~= "" and v216.Description ~= nil then
									v_u_212.Text = v216.Name
								end
							end
							return v214
						end,
						["AddInput"] = function(_, p217)
							-- upvalues: (ref) v_u_94, (ref) v_u_91
							local v_u_218 = p217 or {}
							v_u_218.Name = v_u_218.Name or "Input"
							v_u_218.PlaceHolderText = v_u_218.PlaceHolderText or "Input Here"
							v_u_218.Default = v_u_218.Default or ""
							v_u_218.Callback = v_u_218.Callback or function() end
							local v219 = Instance.new("Frame")
							local v220 = Instance.new("UICorner")
							local v221 = Instance.new("TextLabel")
							local v222 = Instance.new("Frame")
							local v223 = Instance.new("UICorner")
							local v224 = Instance.new("UIStroke")
							local v_u_225 = Instance.new("TextBox")
							local v226 = Instance.new("UIPadding")
							local v227 = Instance.new("UIStroke")
							v219.Name = "Input"
							v219.Parent = v_u_94
							v219.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
							v219.BorderColor3 = Color3.fromRGB(0, 0, 0)
							v219.BorderSizePixel = 0
							v219.Size = UDim2.new(1, 0, 0, 55)
							v220.CornerRadius = UDim.new(0, 4)
							v220.Parent = v219
							v221.Name = "Title"
							v221.Parent = v219
							v221.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							v221.BackgroundTransparency = 1
							v221.BorderColor3 = Color3.fromRGB(0, 0, 0)
							v221.BorderSizePixel = 0
							v221.Position = UDim2.new(0, 10, 0, 2)
							v221.Size = UDim2.new(1, 0, 0, 20)
							v221.Font = Enum.Font.ArialBold
							v221.Text = v_u_218.Name
							v221.TextColor3 = Color3.fromRGB(144, 144, 144)
							v221.TextSize = 13
							v221.TextXAlignment = Enum.TextXAlignment.Left
							v222.Name = "InputFrame"
							v222.Parent = v219
							v222.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
							v222.BorderColor3 = Color3.fromRGB(0, 0, 0)
							v222.BorderSizePixel = 0
							v222.Position = UDim2.new(0.0370000005, 0, 0.398000002, 4)
							v222.Size = UDim2.new(0, 185, 0, 24)
							v223.CornerRadius = UDim.new(0, 3)
							v223.Parent = v222
							v224.Parent = v222
							v224.Color = Color3.fromRGB(255, 255, 255)
							v224.Transparency = 0.97
							v_u_225.Name = "FreeFire"
							v_u_225.Parent = v222
							v_u_225.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
							v_u_225.BackgroundTransparency = 1
							v_u_225.BorderColor3 = Color3.fromRGB(0, 0, 0)
							v_u_225.BorderSizePixel = 0
							v_u_225.Size = UDim2.new(1, 0, 1, 0)
							v_u_225.Font = Enum.Font.ArialBold
							v_u_225.PlaceholderColor3 = Color3.fromRGB(144, 144, 144)
							v_u_225.PlaceholderText = v_u_218.PlaceHolderText
							v_u_225.Text = v_u_218.Default
							v_u_225.TextColor3 = Color3.fromRGB(255, 255, 255)
							v_u_225.TextSize = 13
							v_u_225.TextXAlignment = Enum.TextXAlignment.Left
							v226.Parent = v_u_225
							v226.PaddingLeft = UDim.new(0, 12)
							v227.Parent = v_u_91
							v227.Color = Color3.fromRGB(255, 255, 255)
							v227.Transparency = 0.97
							v_u_225.FocusLost:Connect(function()
								-- upvalues: (ref) v_u_218, (ref) v_u_225
								v_u_218.Callback(v_u_225.Text)
							end)
						end
					}
				end
			}
		end
	}
end
return v4
