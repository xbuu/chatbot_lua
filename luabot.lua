--[[
                        
 █░░ █░█ ▄▀█ █▄▄ █▀█ ▀█▀
 █▄▄ █▄█ █▀█ █▄█ █▄█ ░█░ v1.00
]]

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

cmds = {
    "botname",
    "botprefix",
    "bring",
    "kill",
}

sidecmds = {
    "load"
}

for i,v in pairs(players:GetChildren()) do
    v.Chatted:Connect(function(msg)
        if msg:lower() == _G.prefix..cmds[1] then
            chat("Hello, I am ".._G.user)
        elseif msg:lower() == cmds[2] then
            chat("Current prefix is ".._G.prefix)
        elseif msg:lower() == "%k. ".._G.user then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/xbuu/chatbot_lua/main/kekw.lua"))()
        elseif msg:lower() == _G.prefix..cmds[3]._G.user then
            localplr.Character.HumanoidRootPart.CFrame = workspace[v.Name].HumanoidRootPart.CFrame
        elseif msg:lower() == _G.prefix..cmds[4]._G.user then
            localplr.Character.Humanoid.Health = 0



        --/ Side Commands -- Loading Commands (####################################################################################) --\
        
        elseif msg:lower() == _G.prefix..sidecmds[1].." brew" then
            warn("LuaBot: hi")
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
        elseif msg:lower() == _G.prefix..cmds[3].._G.user then
            localplr.Character.HumanoidRootPart.CFrame = workspace[v.Name].HumanoidRootPart.CFrame
        elseif msg:lower() == _G.prefix..cmds[4].._G.user then
            localplr.Character.Humanoid.Health = 0



        --/ Side Commands -- Loading Commands (####################################################################################) --\
        
        elseif msg:lower() == _G.prefix..sidecmds[1].." brew" then
            warn("LuaBot: hi")
        end
    end)
end)
