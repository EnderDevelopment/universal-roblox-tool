local ChatService = game:GetService("Chat")

local function onPlayerChatted(player, message)
    local filteredMessage = message:gsub("badword", "****")
    return filteredMessage
end

ChatService.Chatted:Connect(onPlayerChatted)