local Players = game:GetService("Players")

local function onPlayerAdded(player)
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    
    local function regenerateHealth()
        while true do
            wait(5)
            if humanoid.Health < humanoid.MaxHealth then
                humanoid.Health = humanoid.Health + 1
            end
        end
    end
    
    coroutine.wrap(regenerateHealth)()
end

Players.PlayerAdded:Connect(onPlayerAdded)