local billboard = Instance.new("BillboardGui")
local text = Instance.new("TextLabel")
local part = Instance.new("Part")

part.Anchored = true
part.Parent = workspace
text.Parent = billboard

billboard.Adornee = part
billboard.AlwaysOnTop = true

text.Text = "Hello, I am part."
