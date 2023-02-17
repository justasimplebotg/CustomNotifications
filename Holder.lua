local GUI = game:GetService("CoreGui"):FindFirstChild("VX-Notification")

if not GUI then
   local Nofitication = Instance.new("ScreenGui")
   local NofiticationUIListLayout = Instance.new("UIListLayout")
   Nofitication.Name = "VX-Notification"
   Nofitication.Parent = game.CoreGui
   Nofitication.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
   Nofitication.ResetOnSpawn = false
    
   NofiticationUIListLayout.Name = "VX-Notification-Layout"
   NofiticationUIListLayout.Parent = Nofitication
   NofiticationUIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
   NofiticationUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
   NofiticationUIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
end
