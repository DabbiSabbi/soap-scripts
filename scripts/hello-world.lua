local billboard = Instance.new("BillboardGui")
local text = Instance.new("TextLabel")
local part = Instance.new("Part")

part.Anchored = true
part.Parent = workspace
text.Parent = billboard
billboard.Parent = part
billboard.Adornee = part
billboard.AlwaysOnTop = true
billboard.Size = UDim2.fromOffset(200, 50)

text.Text = "Hello, I am part."
text.Size = Udim2.fromScale(1, 1)
