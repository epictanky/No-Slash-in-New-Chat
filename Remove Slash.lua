--paste this into a local script anywhere it will run like StarterPlayerScripts

local TextChatService = game:GetService("TextChatService")
local Players = game:GetService("Players")

TextChatService.OnIncomingMessage = function(message: TextChatMessage)
	local properties = Instance.new("TextChatMessageProperties")
	if message.TextSource and message.Text then
		if message.Text:sub(1,1) == "/" and message.Text:sub(2,2) ~= "/" then
			properties.Text = message.Text:sub(2,#message.Text)
		end
	end

	return properties
end
