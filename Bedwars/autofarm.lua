repeat
	wait()
until game:IsLoaded()

--Anti AFK
local Players = game:GetService("Players")
local connections = getconnections or get_signal_cons
if connections then
	for i,v in pairs(connections(Players.LocalPlayer.Idled)) do
		if v["Disable"] then
			v["Disable"](v)
		elseif v["Disconnect"] then
			v["Disconnect"](v)
		end
	end
else
    Players.LocalPlayer.Idled:Connect(function()
        local VirtualUser = game:GetService("VirtualUser")
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
    end)
end

local httpservice = game:GetService('HttpService')
local queueonteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
queueonteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/carl-s-r/Roblox-Tools/main/Bedwars/autofarm.lua'))()")

while wait(10) do
	local redTeam = game:GetService("Teams")["Red"]:GetPlayers()
	local blueTeam = game:GetService("Teams")["Blue"]:GetPlayers()
	if #redTeam == 0 or #blueTeam == 0 or game.Players.LocalPlayer.Team.Name == "Spectators" then
		local A_1 = 
			{
				["queueType"] = "bedwars_20v20"
			}
		local Event = game:GetService("ReplicatedStorage")["events-@easy-games/lobby:shared/event/lobby-events@getEvents.Events"].joinQueue
		Event:FireServer(A_1)
		local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequestEvent:FireServer("Match Ended", "All")
        else
		local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequestEvent:FireServer("Match Ongoing", "All")
	end
end
