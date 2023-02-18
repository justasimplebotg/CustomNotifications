local Library = {}

function Library:MakeNotification(title, description, duration)
	if game:GetService("CoreGui"):FindFirstChild("VX-Notification") then
		local NotifFrame = Instance.new("Frame")
		local Title = Instance.new("TextLabel")
		local Description = Instance.new("TextLabel")

		NotifFrame.Name = "NotifFrame"
		NotifFrame.Parent = game:GetService("CoreGui"):FindFirstChild("VX-Notification")
		NotifFrame.BackgroundColor3 = Color3.new(0.231373, 0.231373, 0.231373)
		NotifFrame.BorderSizePixel = 0
		NotifFrame.Position = UDim2.new(1, 0, 0.91900003, 0)
		NotifFrame.Size = UDim2.new(0.162392393, 0, 0.0809228718, 0)
		NotifFrame.Style = Enum.FrameStyle.DropShadow

		Title.Name = "Title"
		Title.Parent = NotifFrame
		Title.BackgroundColor3 = Color3.new(1, 1, 1)
		Title.BackgroundTransparency = 1
		Title.Position = UDim2.new(0.0516391322, 0, -0.0425531864, 0)
		Title.Size = UDim2.new(0.304807276, 0, 0.460047692, 0)
		Title.Font = Enum.Font.Jura
		Title.Text = title
		Title.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
		Title.TextScaled = true
		Title.TextSize = 14
		Title.TextStrokeTransparency = 0
		Title.TextWrapped = true

		Description.Name = "Description"
		Description.Parent = NotifFrame
		Description.BackgroundColor3 = Color3.new(1, 1, 1)
		Description.BackgroundTransparency = 1
		Description.BorderSizePixel = 0
		Description.Position = UDim2.new(0.0931700692, 0, 0.445581287, 0)
		Description.Size = UDim2.new(0.80666244, 0, 0.384206325, 0)
		Description.Font = Enum.Font.Jura
		Description.Text = description
		Description.TextColor3 = Color3.new(0.784314, 0.784314, 0.784314)
		Description.TextScaled = true
		Description.TextSize = 14
		Description.TextStrokeTransparency = 0
		Description.TextWrapped = true

		local MoveTweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		local MoveTweenPosition = UDim2.new(0.868, 0,0.906, 0)

		game:GetService("TweenService"):Create(NotifFrame, MoveTweenInfo, {Position = MoveTweenPosition}):Play()

		task.wait(duration)

		NotifFrame:Destroy()
	else
		warn("error, no holder found - please load the holder with loadstring(game:HttpGet('https://raw.githubusercontent.com/justasimplebotg/CustomNotifications/main/Holder.lua'))()")
	end
	return Library
end

return Library
