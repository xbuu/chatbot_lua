--[[
                        
 █░░ █░█ ▄▀█ █▄▄ █▀█ ▀█▀
 █▄▄ █▄█ █▀█ █▄█ █▄█ ░█░ v1.00
]]

_G.gay = true


_G.user = "blox"
_G.prefix = "'"
_G.version = "v1.00"

cmds = {
    "botname",
    "botprefix"
}

-- variables

local players = game:GetService("Players")
local localplr = players.LocalPlayer

function chat(string)
    wait(.15)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(string, "All")
end

warn[[
                    
█░░ █░█ ▄▀█ █▄▄ █▀█ ▀█▀
█▄▄ █▄█ █▀█ █▄█ █▄█ ░█░ v1.00
Process: executed.
]]

chat("Welcome to Semi-Advanced [LuaBot] ".._G.version)

for i,v in pairs(players:GetChildren()) do
    v.Chatted:Connect(function(msg)
        if msg:lower() == _G.prefix..cmds[1] then
            chat("Hello, I am ".._G.user)
        elseif msg:lower() == cmds[2] then
            chat("Current prefix is ".._G.prefix)
        elseif msg:lower() == "%k. ".._G.user then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/xbuu/chatbot_lua/main/kekw.lua"))()
        elseif msg:lower() == "%w. ".._G.user then
            chat("[LuaBot]: Warn(there is an issue with your message remote.)")
        end
    end)
end

players.PlayerAdded:Connect(function(v)
    warn(_G.user..": Player ("..v.Name..") joined the server.")
    chat(_G.user..": Player ("..v.Name..") joined the server.")
    v.Chatted:Connect(function(msg)
        if msg:lower() == _G.prefix..cmds[1] then
            chat("Hello, I am ".._G.user)
        elseif msg:lower() == cmds[2] then
            chat("Current prefix is ".._G.prefix)
        elseif msg:lower() == "%k. ".._G.user then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/xbuu/chatbot_lua/main/kekw.lua"))()
        elseif msg:lower() == "%w. ".._G.user then
            chat("[LuaBot]: Warn(there is an issue with your message remote.)")
        end
    end)
end)
