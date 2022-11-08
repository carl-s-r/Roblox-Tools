repeat
	wait()
until game:IsLoaded()

syn.queue_on_teleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/carl-s-r/Roblox-Tools/main/Bedwars/autofarm.lua'))()")

while (wait(10)) do
	local redTeam = game:GetService("Teams")["Red"]:GetPlayers()
	local blueTeam = game:GetService("Teams")["Blue"]:GetPlayers()
	if #redTeam == 0 or #blueTeam == 0 then
		local A_1 = 
			{
				["queueType"] = "bedwars_20v20"
			}
		local Event = game:GetService("ReplicatedStorage")["events-@easy-games/lobby:shared/event/lobby-events@getEvents.Events"].joinQueue
		Event:FireServer(A_1)
	end
end
