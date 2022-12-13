repeat
	wait()
until game:IsLoaded()

warn("Auto Queue Loaded")

local queueonteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
local httprequest = (syn and syn.request) or http and http.request or http_request or (fluxus and fluxus.request) or request

queueonteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/carl-s-r/Roblox-Tools/main/Bedwars/autofarm.lua'))()")

if game.PlaceId == 6872265039 then
	local A_1 = 
	{
		["queueType"] = "bedwars_20v20"
	}
local Event = game:GetService("ReplicatedStorage")["events-@easy-games/lobby:shared/event/lobby-events@getEvents.Events"].joinQueue
Event:FireServer(A_1)
end
if game.PlaceId == 8444591321 then
	local vu = game:GetService("VirtualUser")
	game:GetService("Players").LocalPlayer.Idled:connect(function()
	   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	   wait(1)
	   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)
	while wait(5) do
		if game.Players.LocalPlayer.Team == "Spectators" or #game.Teams.Blue:GetPlayers() == 0 or #game.Teams.Red:GetPlayers() == 0 then
			warn("match ended")
			local A_1 = 
			{
				["queueType"] = "bedwars_20v20"
			}
			local Event = game:GetService("ReplicatedStorage")["events-@easy-games/lobby:shared/event/lobby-events@getEvents.Events"].joinQueue
			Event:FireServer(A_1)
		else
			warn("ongoing match")
		end
	end
end
