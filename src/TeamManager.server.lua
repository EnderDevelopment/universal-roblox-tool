local Players = game:GetService("Players")
local Teams = game:GetService("Teams")

local function onPlayerAdded(player)
    local team = Teams:GetChildren()[math.random(1, #Teams:GetChildren())]
    player.Team = team
end

Players.PlayerAdded:Connect(onPlayerAdded)