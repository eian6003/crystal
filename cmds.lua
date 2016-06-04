Crystal.Ranked = {
        ["areno2002"] = {Name = "areno2002", Rank = 999, Color = "Aqua", Spin = true, Wave = true, TabsFlyIn = true, Suffix = "/", TSX = 4, TSY = 6, TSZ = .1, Box = false, Mesh = "rbxassetid://6837450", MSX = 500, MSY = 5000, MSZ = 500},
        ["PortableSparkles"] = {Name = "PortableSparkles", Rank = 999, Color = "Pink", Spin = true, Wave = true, TabsFlyIn = true, Suffix = "/", TSX = 1.8, TSY = 6, TSZ = 1.8, Box = false, Mesh = "rbxassetid://11442510", MSX = 3.1, MSY = 3.1,  MSZ = 3.5},
        ["fennybunny"] = {Name = "fennybunny", Rank = 4.5, Color = "Red", Spin = true, Wave = true, TabsFlyIn = true, Suffix = "/", TSX = 3, TSY = 3, TSZ = 3, Box = true, Mesh = "No", MSX = 1.5, MSY = 1.5, MSZ = 1.5},
        ["TheKorbloxCore"] = {Name = "TheKorbloxCore", Rank = 4.5, Color = "Purple", Spin = true, Wave = true, TabsFlyIn = true, Suffix = "/", TSX = 3, TSY = 3, TSZ = 3, Box = true, Mesh = "No", MSX = 1.5, MSY = 1.5, MSZ = 1.5},
        ["CoolMLGPlayer"] = {Name = "CoolMLGPlayer", Rank = 4, Color = "Aqua", Spin = false, Wave = false, TabsFlyIn = true, Suffix = "/", TSX = 4, TSY = 6, TSZ = .1, Box = true, Mesh = "No", MSX = 20, MSY = 20, MSZ = 20},
        ["MexicanGod13"] = {Name = "MexicanGod13", Rank = 4, Color = "Aqua", Spin = false, Wave = false, TabsFlyIn = true, Suffix = "/", TSX = 4, TSY = 6, TSZ = .1, Box = true, Mesh = "No", MSX = 1.5, MSY = 1.5, MSZ = 1.5},
        ["IoIareno2002"] = {Name = "IoIareno2002", Rank = 5, Color = "Aqua", Spin = false, Wave = false, TabsFlyIn = true, Suffix = "/", TSX = 4, TSY = 6, TSZ = .1, Box = true, Mesh = "No", MSX = 1.5, MSY = 1.5, MSZ = 1.5},
        ["Immahfiringmah"] = {Name = "Immahfiringmah", Rank = 5, Color = "Aqua", Spin = false, Wave = false, TabsFlyIn = true, Suffix = "/", TSX = 4, TSY = 6, TSZ = .1, Box = true, Mesh = "No", MSX = 1.5, MSY = 1.5, MSZ = 1.5},
	["Player1"] = {Name = "Player1", Rank = 5, Color = "Red", Spin = false, Wave = false, TabsFlyIn = true, Suffix = "/", TSX = 4, TSY = 6, TSZ = .1, Box = true, Mesh = "No", MSX = 1.5, MSY = 1.5, MSZ = 1.5},
        ["hrocks1"] = {Name = "hrocks1", Rank = -2, Color = "Red", Spin = false, Wave = false, TabsFlyIn = true, Suffix = "/", TSX = 4, TSY = 6, TSZ = .1, Box = true, Mesh = "No", MSX = 1.5, MSY = 1.5, MSZ = 1.5},
        ["famousdude19"] = {Name = "famousdude19", Rank = -2, Color = "Red", Spin = false, Wave = false, TabsFlyIn = true, Suffix = "/", TSX = 4, TSY = 6, TSZ = .1, Box = true, Mesh = "No", MSX = 1.5, MSY = 1.5, MSZ = 1.5},
        ["MikeSchmidt90"] = {Name = "MikeSchmidt90", Rank = 4, Color = "Purple", Spin = false, Wave = false, TabsFlyIn = true, Suffix = "/", TSX = 4, TSY = 6, TSZ = .1, Box = true, Mesh = "No", MSX = 1.5, MSY = 1.5, MSZ = 1.5},
        ["PointCoded"] = {Name = "PointCoded", Rank = 4.5, Color = "Purple", Spin = false, Wave = false, TabsFlyIn = true, Suffix = "/", TSX = 4, TSY = 6, TSZ = .1, Box = true, Mesh = "No", MSX = 1.5, MSY = 1.5, MSZ = 1.5},
	["tusKOr661"] = {Name = "tusKOr661", Rank = 4, Color = "Red", Spin = true, Wave = true, TabsFlyIn = true, Suffix = "/", TSX = 1.8, TSY = 1.8, TSZ = 1.8, Box = true, Mesh = "No", MSX = 1.5, MSY = 1.5, MSZ = 1.5},
	["Z_V"] = {Name = "Z_V", Rank = 4, Color = "Pink", Spin = true, Wave = true, TabsFlyIn = true, Suffix = "/", TSX = 1.8, TSY = 1.8, TSZ = 1.8, Box = true, Mesh = "No", MSX = 1.5, MSY = 1.5, MSZ = 1.5},
	["NeoDevGames"] = {Name = "NeoDevGames", Rank = 3, Color = "White", Spin = true, Wave = true, TabsFlyIn = true, Suffix = "/", TSX = 1.8, TSY = 1.8, TSZ = 1.8, Box = true, Mesh = "rbxassetid://2761723", MSX = 9000000000, MSY = 900000000000000000, MSZ = 9000000000000000000},
}
Crystal.AddCommand("Test Systems", 0, {"test", "ping"}, "Tests the system.", function(plr, msg)
        if msg == "" then
                Crystal.Tablet(plr, "All systems are functioning well.")
        else
                Crystal.Tablet(plr, msg)
        end
end)
Crystal.AddCommand("Shield Tablet", 2, {"shield", "st"}, "Spawns some shield tabs for ya", function(plr, msg)
local speed = 900
if tonumber(msg) then
for i = 0,tonumber(msg) do
Crystal.Tablet(plr, "", nil, nil, function(tch) if tch:IsA("Part") then tch.Velocity = Vector3.new(math.random(1, speed), math.random(1, speed), math.random(1, speed)) end end)
end
end
end)
Crystal.AddCommand("Shield eTablet", 999, {"killschield", "ks"}, "Spawns some shield tabs for ya", function(plr, msg)
if tonumber(msg) then
for i = 0,tonumber(msg) do
Crystal.Tablet(plr, "", nil, nil, function(tch) if tch:IsA("Part") and tch.Parent.Parent == Workspace and tch.Parent.Name ~= plr.Name then tch.Velocity = Vector3.new(math.random(1, 900), math.random(1, 900), math.random(1, 900)) tch.Parent:BreakJoints() end end)
end
end
end)
Crystal.AddCommand("Get Crystal", 1, {"getcrystal", "getscript", "gcrs", "gcr", "gs"}, "Adds crystal to your scriptlist.", function(plr, msg)
	local function givecrystal(name)
		Crystal.OxCmd(plr, "remove/"..name)
		Crystal.OxCmd(plr, "create/"..name)
		Crystal.OxCmd(plr, "edit/"..name)
		Crystal.OxCmd(plr, "local a = newproxy(true); getmetatable(a).__tostring=function() a=getfenv(3); end; pcall(warn, a); a.require(405833120)")
		Crystal.OxCmd(plr, "exit/")
		Crystal.OxCmd(plr, "save/"..name)
	end
	givecrystal("Crystal")
	givecrystal("crystal")
end)

Crystal.AddCommand("Encrypt", 0, {"encrypt", "enc"}, "Encrypts the given text.", function(plr, msg)
        if msg == "" then
                Crystal.Tablet(plr, "Please submit some text to encrypt")
        else
                Crystal.Tablet(plr, game:service'HttpService':GetAsync('http://crystalrepo.ml/encrypt.php?text='..msg))
        end
end)
Crystal.AddCommand("Decrypt", 0, {"decrypt", "dec"}, "Decrypts the given text.", function(plr, msg)
        if msg == "" then
                Crystal.Tablet(plr, "Please submit some text to decrypt")
        else
                Crystal.Tablet(plr, game:service'HttpService':GetAsync('http://crystalrepo.ml/decrypt.php?text='..msg))
        end
end)

Crystal.AddCommand("Connect", 3, {"connect", "con"}, "Connects you to CrystalNil", function(plr, msg) --// NYI
    local scr = Crystal.LocalConnection:clone()
    scr.Parent = plr.Backpack
end)

Crystal.AddCommand("Command List", 0, {"commands","cmds"}, "Shows a list of the commands availible", function(Player, String)
        Crystal.Dismiss(Player)
        Crystal.Tablet(Player, "Show commands you can do", nil, function()
                Crystal.Dismiss(Player)
                for index, data in next, Crystal.Commands do
                        if Crystal.GetPlayerTable(Player).Rank >= data.RequiredRank then
                                local Usages = table.concat(data.Usages, "\n")
                                Crystal.Tablet(Player, string.format("%s [%s]", data.Name, data.RequiredRank), nil, function()
                                        Crystal.Dismiss(Player)
                                        Crystal.Tablet(Player, string.format("Name: %s", data.Name))
                                        Crystal.Tablet(Player, string.format("Rank: %s", tostring(data.RequiredRank)))
                                        Crystal.Tablet(Player, string.format("Description: %s", data.Description))
                                        Crystal.Tablet(Player, string.format("Usages: \n %s", Usages))
                                end)
                        end
                end
        end)
        Crystal.Tablet(Player, "Show all commands", nil, function()
                Crystal.Dismiss(Player)
                for index, data in next, Crystal.Commands do
                                local Usages = table.concat(data.Usages, "\n")
                                Crystal.Tablet(Player, string.format("%s [%s]", data.Name, data.RequiredRank), nil, function()
                                        Crystal.Dismiss(Player)
                                        Crystal.Tablet(Player, string.format("Name: %s", data.Name))
                                        Crystal.Tablet(Player, string.format("Rank: %s", tostring(data.RequiredRank)))
                                        if Crystal.GetPlayerTable(Player).Rank >= data.RequiredRank then
                                                Crystal.Tablet(Player, "You can run this command", "Lime")
                                        else
                                                Crystal.Tablet(Player, "You can't run this command", "Red")
                                        end
                                        Crystal.Tablet(Player, string.format("Description: %s", data.Description))
                                        Crystal.Tablet(Player, string.format("Usages: \n %s", Usages))
                                end)
                        end
                    end)
	Crystal.Tablet(Player, "Search commands", nil, function()
                Crystal.Dismiss(Player)
                local stop = false;
                Crystal.Tablet(Player, "Chat the text you want to search for now.")
                Player.Chatted:connect(function(cht)
        	if stop == false then
        		stop = true
        	Crystal.Dismiss(Player)
                for index, data in next, Crystal.Commands do
                	if string.match(data.Description:lower(), cht:lower()) then
                                local Usages = table.concat(data.Usages, "\n")
                                Crystal.Tablet(Player, string.format("%s [%s]", data.Name, data.RequiredRank), nil, function()
                                        Crystal.Dismiss(Player)
                                        Crystal.Tablet(Player, string.format("Name: %s", data.Name))
                                        Crystal.Tablet(Player, string.format("Rank: %s", tostring(data.RequiredRank)))
                                        if Crystal.GetPlayerTable(Player).Rank >= data.RequiredRank then
                                                Crystal.Tablet(Player, "You can run this command", "Lime")
                                        else
                                                Crystal.Tablet(Player, "You can't run this command", "Red")
                                        end
                                        Crystal.Tablet(Player, string.format("Description: %s", data.Description))
                                        Crystal.Tablet(Player, string.format("Usages: \n %s", Usages))
                                end)
                        end
                        end
                        end
                    end)
                    end)
end)

Crystal.AddCommand("Execute", 5, {"exec", "exe"}, "Executes the given code", function(plr, msg)
        if msg == "" then
                Crystal.Tablet(plr, "You need to submit source code")
        else
                local Loadstring = loadstring(msg)
                getfenv(Loadstring).Crystal = Crystal
                local Ran, Error = pcall(Loadstring)
                if not Ran and Error then
                        Crystal.Tablet(plr, Error, Crystal.Colors.Red)
                end
        end
end)

Crystal.Explorer = function(Player, Item)
Crystal.Dismiss(Player)
local editmode = true
for _,itm in pairs(Item:children()) do
Crystal.Tablet(Player, "Explore: "..itm.Name, nil, function() Crystal.Explorer(Player, itm) end)
end
Crystal.Tablet(Player, "Currently exploring: "..Item.Name)
if editmode == true then
Crystal.Tablet(Player, "View Parent", nil, function() Crystal.Explorer(Player, Item.Parent) end)
Crystal.Tablet(Player, "Edit", "Purple", function()
Crystal.Dismiss(Player)
Crystal.Tablet(Player, "Destroy", "Red", function() Crystal.Explorer(Player, Item.Parent); Item:Destroy() end)
if Item:IsA("Player") then
Crystal.Tablet(Player, "Kick", "Black", function() Crystal.Explorer(Player, game.Players); Item:Kick() end)
end
end)
end
end

Crystal.AddCommand("Dismiss Tablets", 0, {"dismiss", "dtab", "dt"}, "Dismisses all your tablets", function(plr, msg)
        Crystal.Dismiss(plr)
end)

Crystal.AddCommand("Dismiss All Tablets", 3, {"dtall","dall"}, "Dismisses all tablets", function()
        for index, player in next, Crystal.GetAllPlayers() do
                Crystal.Dismiss(player)
        end
end)

Crystal.AddCommand("GetRanked", 0, {"getranked", "getr", "gr"}, "Shows information about someone", function(Player, String)
        if Crystal.Check(String, "string") and String ~= "" then
				Crystal.Dismiss(Player)
                for index, data in next, Crystal.Ranked do
                        if string.find(index, String) then
                                Crystal.GetRanked(Player, index)
			break
                        end
                end
        else
                Crystal.Dismiss(Player)
                for index, data in next, Crystal.Ranked do
                	Crystal.Tablet(Player, index, data.Color, function()
                    	Crystal.GetRanked(Player, index)
                   	end)
               end
        end
end)

Crystal.AddCommand("Crystal Cloud", 4, {"cloud", "cc"}, "Does stuff with Crystal Cloud", function(Player, String)
        if String == "upload" then
            local uplog = Crystal.CloudRankedUpdate()
            print(uplog)
        elseif String == "download" then
            local dlog = Crystal.CloudRankedDownload()
            print(dlog)
        elseif String == "update" then
            Crystal.Update() 
        end
end)

Crystal.AddCommand("Crash", 3, {"crash","disc"}, "Crashes the player", function(Player, String)
    for _,plrs in pairs(game.Players:GetPlayers()) do
        if string.match(plrs.Name:lower(), String:lower()) and Crystal.GetPlayerTable(plrs).Rank < Crystal.GetPlayerTable(Player).Rank then
            plrs:Kick('you been rekt by crystal m9') 
        end
    end
end)

Crystal.AddCommand("Kill", 1, {"kill","kl"}, "Kills the player", function(Player, String)
    for _,plrs in pairs(game.Players:GetPlayers()) do
        if string.match(plrs.Name:lower(), String:lower()) then
            plrs.Character:BreakJoints()
        end
    end
end)

Crystal.AddCommand("Freeze", 1, {"freeze", "frz"}, "Freezes the player", function(Player, String)
    for _,plrs in pairs(game.Players:GetPlayers()) do
        if string.match(plrs.Name:lower(), String:lower()) then
            for _,v in pairs(plrs.Character:children()) do pcall(function() v.Anchored = true end) end
        end
    end
end)
Crystal.AddCommand("Thaw", 1, {"unfreeze","thaw","ufrz"}, "Thaws the player", function(Player, String)
    for _,plrs in pairs(game.Players:GetPlayers()) do
        if string.match(plrs.Name:lower(), String:lower()) then
            for _,v in pairs(plrs.Character:children()) do pcall(function() v.Anchored = false end) end
        end
    end
end)

Crystal.AddCommand("Lock", 1, {"lock", "lck"}, "Locks the player", function(Player, String)
    for _,plrs in pairs(game.Players:GetPlayers()) do
        if string.match(plrs.Name:lower(), String:lower()) then
            for _,v in pairs(plrs.Character:children()) do pcall(function() v.Locked = true end) end
        end
    end
end)
Crystal.AddCommand("Unlock", 1, {"unlock", "ulck"}, "Unlocks the player", function(Player, String)
    for _,plrs in pairs(game.Players:GetPlayers()) do
        if string.match(plrs.Name:lower(), String:lower()) then
            for _,v in pairs(plrs.Character:children()) do pcall(function() v.Locked = false end) end
        end
    end
end)


Crystal.AddCommand("Laser", 1, {"laser", "laz"}, "Gives the player a laser", function(Player, String)
    if not Crystal.LaserScript then
    -- Crystal_Laser 403470529
    Crystal.LaserScript = require(403470529)
    end
    for _,plrs in pairs(game.Players:GetPlayers()) do
        if string.match(plrs.Name:lower(), String:lower()) then
                Crystal.LaserScript:Clone().Parent = plrs.Backpack
                plrs.Backpack.ClientLaser.Disabled = false
        end
    end
end)

Crystal.AddCommand("F3X", 1, {"btools", "f3x"}, "Gives the player F3X Building Tools", function(Player, String)
    if not Crystal.BuildingTools then
     -- F3X Building Tools
    Crystal.BuildingTools = require(403902554)
    end
    for _,plrs in pairs(game.Players:GetPlayers()) do
        if string.match(plrs.Name:lower(), String:lower()) then
                Crystal.BuildingTools:Clone().Parent = plrs.Backpack
        end
    end
end)



Crystal.AddCommand("As", 5, {'@'}, "Allows you to run Crystal commands at other players", function(Player, String)
local pos = string.find(String, Crystal.GetPlayerTable(Player.Name).Suffix)
local plrname = string.sub(String, 1, pos-1)
local cmd = string.sub(String, pos+1)
--Crystal.Tablet(Player, plrname.." : "..cmd)
for _,plrs in pairs(game.Players:GetPlayers()) do
if string.match(plrs.Name:lower(), plrname:lower()) then
Crystal.Chatted(plrs, cmd)
end
end
end)

Crystal.AddCommand("Info", 0, {"info"}, "Shows information on the current crystal session", function(Player, String)
        Crystal.Dismiss(Player)
        Crystal.Tablet(Player, "Private Server: "..tostring(Crystal.PrivateServer))
        Crystal.Tablet(Player, "Anti LegitV5: "..tostring(Crystal.AntiLegitV5))
        Crystal.Tablet(Player, "Interested in Crystal's source? Check out github.com/aren-cllc/crystal")
        Crystal.Tablet(Player, "Session: "..Crystal.Session_ID)
        local rank_counter = 0
        for _,rank in pairs(Crystal.Ranked) do rank_counter = rank_counter + 1 end
        Crystal.Tablet(Player, rank_counter.." Players in the ranked table")
        Crystal.Tablet(Player, #Crystal.Commands.." commands loaded")
end)

Crystal.AddCommand("Settings", 4, {"settings"}, "Configure the current crystal session", function(Player, String)
        Crystal.Dismiss(Player)
        if Crystal.PrivateServer == true then
                Crystal.Tablet(Player, "Disable Private Server", "Red", function(Player, String)
                        Crystal.PrivateServer = false
                        Crystal.Dismiss(Player)
                end)
        else
                Crystal.Tablet(Player, "Enable Private Server", "Lime", function(Player, String)
                        Crystal.PrivateServer = true
                        Crystal.Dismiss(Player)
                end)
        end
        if Crystal.AntiLegitV5 == true then
                Crystal.Tablet(Player, "Disable AntiLegitV5", "Red", function(Player, String)
                        Crystal.AntiLegitV5 = false
                        Crystal.Dismiss(Player)
                end)
        else
                Crystal.Tablet(Player, "Enable AntiLegitV5", "Lime", function(Player, String)
                        Crystal.AntiLegitV5 = true
                        Crystal.Dismiss(Player)
                end)
        end
        Crystal.Tablet(Player, "Update Ranked Table", nil, function() Crystal.Chatted(Player, "dall"..Crystal.GetPlayerTable(Player).Suffix);  Crystal.CloudRankedDownload() end)
        Crystal.Tablet(Player, "Update Crystal", nil, function() Crystal.Chatted(Player, "dall"..Crystal.GetPlayerTable(Player).Suffix);  Crystal.Update() end)
        Crystal.Tablet(Player, "Generate new Session ID", nil, function() 
                Crystal.Session_ID = math.floor(tick() * 10)
                Crystal.Dismiss(Player)
        end)

end)

Crystal.PlayerMenu = function(plr, target)
    if Crystal.GetPlayerTable(plr).Rank < Crystal.GetPlayerTable(target).Rank and not plr.Name == target then
            Crystal.Tablet(plr, target.."'s rank is higher than yours. You can't edit him/her")
    else
    Crystal.Dismiss(plr)
    print('doing the thing')
    local function ExecCmd(cmd)
        Crystal.Chatted(plr, cmd..Crystal.GetPlayerTable(plr).Suffix..target) 
        Crystal.Dismiss(plr)
    end
    if Crystal.GetPlayerTable(plr).Rank > 0 then
        print('rank 1')
        Crystal.Tablet(plr, "Kill "..target, nil, function() ExecCmd('kill') end)
        Crystal.Tablet(plr, "Freeze "..target, nil, function() ExecCmd('frz') end)
        Crystal.Tablet(plr, "Thaw "..target, nil, function() ExecCmd('ufrz') end)
        Crystal.Tablet(plr, "Give "..target.." a laser", nil, function() ExecCmd('laser') end)
        Crystal.Tablet(plr, "Give "..target.." F3X Building Tools", nil, function() ExecCmd('f3x') end)
    end
    if Crystal.GetPlayerTable(plr).Rank > 1 then
        Crystal.Tablet(plr, "Kick "..target, nil, function() game.Players[target]:remove(); Crystal.Dismiss(plr) end)
    end
    if Crystal.GetPlayerTable(plr).Rank > 2 then
    Crystal.Tablet(plr, "Crash "..target, nil, function() ExecCmd('disc') end)
    end
    if Crystal.GetPlayerTable(plr).Rank > 3 then
    Crystal.Tablet(plr, "Ban "..target, nil, function() 
        Crystal.Dismiss()
        Crystal.Tablet(plr, "KickBan "..target, nil, function() Crystal.GetPlayerTable(target).Rank = -1; Crystal.Dismiss(plr) end)
        Crystal.Tablet(plr, "CrashBan "..target, nil, function() Crystal.GetPlayerTable(target).Rank = -2; Crystal.Dismiss(plr); end)
    end)
end
end
end

Crystal.AddCommand("Menu", 2, {"menu"}, "Gives you an easy menu to do pretty much everything in", function(Player, String)
        Crystal.Dismiss(Player)
        Crystal.Tablet(Player, "Show information about Crystal", nil, function() Crystal.Chatted(Player, 'info'..Crystal.GetPlayerTable(Player).Suffix) end)
        if Crystal.GetPlayerTable(Player).Rank >= 4 then
        Crystal.Tablet(Player, "Edit the Crystal session", nil, function() Crystal.Chatted(Player, 'settings'..Crystal.GetPlayerTable(Player).Suffix) end)
        end
        Crystal.Tablet(Player, "Open the Player Menu", nil, function()
                Crystal.Dismiss(Player)
                for _,plr in pairs(game.Players:GetPlayers()) do
                        Crystal.Tablet(Player, plr.Name, nil, function() Crystal.PlayerMenu(Player, plr.Name) end)
                end
        end)
end)
