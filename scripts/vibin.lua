
local Players = game:GetService("Players")

local function restore(player)
    player.CameraMode = Enum.CameraMode.Classic

    local character = player.Character
    if not character then return end

    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if not humanoid then return end

    humanoid.WalkSpeed = 16
    humanoid.JumpPower = 50
    humanoid.AutoRotate = true
    humanoid.PlatformStand = false
    humanoid.Sit = false

    humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
end

for _, player in Players:GetPlayers() do
    restore(player)
end

Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        task.wait(0.2)
        restore(player)
    end)
end)
