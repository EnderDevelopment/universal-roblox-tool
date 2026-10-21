local Players = game:GetService("Players")
local leaderstats = Instance.new("Folder")
leaderstats.Name = "leaderstats"

local function onPlayerAdded(player)
    local stats = Instance.new("IntValue")
    stats.Name = "Score"
    stats.Value = 0
    stats.Parent = leaderstats
    leaderstats.Parent = player
end

Players.PlayerAdded:Connect(onPlayerAdded)