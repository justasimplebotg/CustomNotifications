local GUI = game:GetService("CoreGui"):FindFirstChild("VX-Notification")

if not GUI then
	local Notification = Instance.new("ScreenGui")
	local NotificationUIListLayout = Instance.new("UIListLayout")
	Notification.Name = "VX-Notification"
	Notification.Parent = game.CoreGui
	Notification.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	Notification.ResetOnSpawn = false

	NotificationUIListLayout.Name = "VX-Notification-Layout"
	NotificationUIListLayout.Parent = Notification
	NotificationUIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
	NotificationUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	NotificationUIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
	NotificationUIListLayout.Padding = UDim.new(0, 5)
end
