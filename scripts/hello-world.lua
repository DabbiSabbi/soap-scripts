local billboard = Instance.new("BillboardGui")
local text = Instance.new("TextLabel")
local part = Instance.new("Part")

part.Anchored = true
part.Parent = workspace
part.Posistion = Vector3.new(0, 5, 0)
part.Size = Vector3.new(4, 1, 4)
text.Parent = billboard
billboard.Parent = part
billboard.Adornee = part
billboard.AlwaysOnTop = true
billboard.Size = UDim2.fromOffset(200, 50)

text.Text = "Hello, I am part."
text.Size = UDim2.fromScale(1, 1)
