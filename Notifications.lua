local Library = {}

function Library:MakeNotification(title, description, duration)
	if game:GetService("CoreGui"):FindFirstChild("VX-Notification") then
		local Notification = Instance.new("ScreenGui")
		local NotifFrame = Instance.new("Frame")
		local Title = Instance.new("TextLabel")
		local Description = Instance.new("TextLabel")

		Notification.Name = "Notification"
		Notification.Parent = game:GetService("CoreGui"):FindFirstChild("VX-Notification")
		Notification.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

		NotifFrame.Name = "NotifFrame"
		NotifFrame.Parent = Notification
		NotifFrame.BackgroundColor3 = Color3.new(0.113725, 0.113725, 0.113725)
		NotifFrame.BackgroundTransparency = 0.10000000149011612
		NotifFrame.BorderSizePixel = 0
		NotifFrame.Position = UDim2.new(1, 0, 0.906000018, 0)
		NotifFrame.Size = UDim2.new(0.122907765, 0, 0.0482093729, 0)
		NotifFrame.Visible = true

		Title.Name = "Title"
		Title.Parent = NotifFrame
		Title.BackgroundColor3 = Color3.new(1, 1, 1)
		Title.BackgroundTransparency = 1
		Title.Position = UDim2.new(0.0467702597, 0, 0, 0)
		Title.Size = UDim2.new(0.898664176, 0, 0.408163309, 0)
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
		Description.Position = UDim2.new(0.0467702597, 0, 0.408163846, 0)
		Description.Size = UDim2.new(0.898664176, 0, 0.59183687, 0)
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

		Notification:Destroy()
	else
		warn("error, no holder found - please load the holder with loadstring(game:HttpGet('https://raw.githubusercontent.com/justasimplebotg/CustomNotifications/main/Holder.lua'))()")
	end
	return Library
end

return Library
