local Library = {}

function MakeNotification(title,desc,duration)
	if game:GetService("CoreGui"):FindFirstChild("Notifications") then
		local Notification = Instance.new("Frame")
		local Title = Instance.new("TextLabel")
		local Description = Instance.new("TextLabel")
		local UICorner = Instance.new("UICorner")
		
		print("Why")
		
		Notification.Name = "Notification"
		Notification.Parent = game:GetService("CoreGui"):FindFirstChild("Notifications"):FindFirstChild("Holder")
		Notification.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
		Notification.BorderSizePixel = 0
		Notification.Position = UDim2.new(1, 0, 0.86500001, 0)
		Notification.Size = UDim2.new(0.187330037, 0, 0.086390771, 0)

		Title.Name = "Title"
		Title.Parent = Notification
		Title.BackgroundColor3 = Color3.new(1, 1, 1)
		Title.BackgroundTransparency = 1
		Title.Position = UDim2.new(0, 0, 0.136816427, 0)
		Title.Size = UDim2.new(0.356446445, 0, 0.161098674, 0)
		Title.Font = Enum.Font.ArialBold
		Title.Text = "PH Title"
		Title.TextColor3 = Color3.new(1, 1, 1)
		Title.TextScaled = true
		Title.TextSize = 14
		Title.TextWrapped = true

		Description.Name = "Description"
		Description.Parent = Notification
		Description.BackgroundColor3 = Color3.new(1, 1, 1)
		Description.BackgroundTransparency = 1
		Description.BorderSizePixel = 0
		Description.Position = UDim2.new(0, 0, 0.4455809, 0)
		Description.Size = UDim2.new(1.00000012, 0, 0.434840143, 0)
		Description.Font = Enum.Font.Arial
		Description.Text = "PH Desc"
		Description.TextColor3 = Color3.new(1, 1, 1)
		Description.TextScaled = true
		Description.TextSize = 14
		Description.TextWrapped = true

		UICorner.Parent = Notification
		UICorner.CornerRadius = UDim.new(0, 10)
		
		local MoveTweenInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		local MoveTweenPosition = UDim2.new(0.798, 0,0.865, 0)

		game:GetService("TweenService"):Create(Notification, MoveTweenInfo, {Position = MoveTweenPosition}):Play()
		
		task.wait(duration)
		
		Notification:Destroy()
	else
		CheckHolder(title,desc,duration)
	end
end

function CheckHolder(title, desc, duration)
	if not game:GetService("CoreGui"):FindFirstChild("Notifications") then
		local Notifications = Instance.new("ScreenGui")
		Notifications.Name = "Notifications"
		Notifications.Parent = game:GetService("CoreGui")
		
		local Holder = Instance.new("Frame")
		Holder.Name = "Holder"
		Holder.Parent = Notifications
		Holder.BackgroundColor3 = Color3.new(0.231373, 0.231373, 0.231373)
		Holder.BackgroundTransparency = 1
		Holder.BorderSizePixel = 0
		Holder.Position = UDim2.new(0.798123062, 0, 0.865399837, 0)
		Holder.Size = UDim2.new(0.187330037, 0, 0.086390771, 0)
		
		local UIListLayout = Instance.new("UIListLayout")
		UIListLayout.Parent = Holder
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
		UIListLayout.Padding = UDim.new(0, 5)
		MakeNotification(title,duration,desc)
		print("Noob")
	else
		MakeNotification(title,duration,desc)
		print("Awesome")
	end
end

function Library:MakeNotification(title, description, duration)
	if not game:GetService("CoreGui"):FindFirstChild("Notifications") then
		CheckHolder(title,description,duration)
		print("Hi")
	else
		MakeNotification(title,description,duration)
	end
	return Library
end

return Library
