local Players = game:GetService("Players")

local function onPlayerAdded(player)
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    
    local function onJumping()
        humanoid.WalkSpeed = 20
    end
    
    humanoid.Jumping:Connect(onJumping)
end

Players.PlayerAdded:Connect(onPlayerAdded)