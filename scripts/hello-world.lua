local ChatService = game:GetService("Chat")

local part = Instance.new("Part")

part.Anchored = true
part.Parent = workspace

ChatService:Chat(part, "Hello, I'm Part!", "Blue")