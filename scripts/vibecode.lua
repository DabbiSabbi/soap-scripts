
local Players = game:GetService("Players")

local function restoreMovement(player)
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")

    humanoid.WalkSpeed = 16
    humanoid.JumpPower = 50
    humanoid.AutoRotate = true
    humanoid.PlatformStand = false
    humanoid.Sit = false
end

for _, player in Players:GetPlayers() do
    restoreMovement(player)
end

Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        restoreMovement(player)
    end)
end)
