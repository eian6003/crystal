--// CRYSTAL, 8TH GENERATION
--// Hi, there, thanks for being interested in Crystal's source code!
--// Crystal 8 is copyrighted by Crystal, LLC and is licensed under the CC-BY-NC 4.0 license! More information can be found in the github README

Crystal = {};
Crystal = {
    Session_ID = math.floor(tick() * 10),
    Connections = {},
    Version = "1.0",
    CloudLink = "http://crystalrepo.ml/",
    OldRemoteID = "",
    IRCColor = "New Yeller",
    Bold = "",
    IRCSize = 18,
    RemoteCommands = {},
    AntiLegitV5 = false,
    PrivateServer = false,
	Tablets = {},
}
Crystal.LocalConnection = require(413927583)
Crystal.ChatSource = require(413967176)
--// Want to get a permenant rank? Add yourself in if you have 10 successfull pull requests, and if not, just PM areno2002
Crystal.Ranked = {
        ["areno2002"] = {Name = "areno2002", Rank = 999, Color = "Aqua", Spin = true, Wave = true, TabsFlyIn = true, Suffix = "/", TSX = 4, TSY = 6, TSZ = .1, Box = false, Mesh = "rbxassetid://31516811", MSX = 1.5, MSY = 1.5, MSZ = 500},
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

Crystal.Check = function(Data, String, ClassName)
        if ClassName then
                local Ran, Boolean = pcall(game.IsA, Data, ClassName) 
                if Data and Data ~= nil and type(Data) == String and Boolean then
                        return true
                end
        else
                if Data and Data ~= nil and type(Data) == String then
                        return true
                end
        end
        return false
end

Crystal.GetPlayerTable = function(Player)
        if Crystal.Check(Player, "userdata", "Player") then
                for index, data in next, Crystal.Ranked do
                        if index == Player.Name then
                                return data
                        end
                end
        elseif Crystal.Check(Player, "string") then
                for index, data in next, Crystal.Ranked do
                        if index == Player then
                                return data
                        end
                end
        end
        return
end

Crystal.Colors = {
        ["Red"] = Color3.new(1,0,0),
        ["Yellow"] = Color3.new(1,1,0),
        ["Blue"] = Color3.new(0,0,1),
        ["Lime"] = Color3.new(0,1,0),
        ["Orange"] = Color3.new(1,0.5,0);
        ["Olive"]= Color3.new(0.5,1,0),
        ["Green"] = Color3.new(0,0.5,0),
        ["BlueishGreen"] = Color3.new(0,1,0.5),
        ["Aqua"] = Color3.new(0,1,1),
        ["SoftBlue"] = Color3.new(0,0.5,1),
        ["Purple"] = Color3.new(0.5,0,1),
        ["Magenta"] = Color3.new(0.75,0,0.75),
        ["Pink"] = Color3.new(1,0,1),
        ["White"] = Color3.new(1,1,1),
        ["Grey"] = Color3.new(0.5,0.5,0.5),
        ["Black"] = Color3.new(0,0,0)   
}

Crystal.GetAllPlayers = function(Nils)
--[[    local Service
    local Network = Crystal.Service.NetworkServer
    local Players = Crystal.Service.Players
    local Table = {}
    if Nils == true and Network then
        Service = Network
    else
        Service = Players
    end
    if Service == Network then
        for index, instance in next, Network:GetChildren() do
            if Crystal.Check(instance, "userdata", "NetworkReplicator") then
                local Player = instance:GetPlayer()
                if Crystal.Check(Player, "userdata", "Player") then
                    Table[#Table + 1] = Player
                end
            end
        end
    else
        for index, player in next, Players:GetPlayers() do
            if Crystal.Check(player, "userdata", "Player") then
                Table[#Table + 1] = player
            end
        end
    end]]--
    return game.Players:GetPlayers()
end

Crystal.SetRank = function(Player, Rank, Color, Spin, Wave, Fly, Suffix, SizeX, SizeY, SizeZ, mesh, box)
        if not Crystal.Check(Player, "userdata", "Player") then
                return
        end
        local Table = {
                ["Name"] = Player.Name,
                ["Rank"] = Rank,
                ["Color"] = Color,
                ["Spin"] = Spin,
                ["Wave"] = Wave,
                ["TabsFlyIn"] = Fly,
                ["Suffix"]= Suffix,
                ["TSX"]= SizeX,
                ["TSY"]= SizeY,
                ["TSZ"]= SizeZ,
		["Box"]=box,
		["Mesh"]=mesh,

            }
        if not Crystal.GetPlayerTable(Player) then
                Crystal.Ranked[Player.Name] = Table
        end
end

Crystal.Tablet = function(Player, Text, Color, Click, Touch, Time)
	local makerun,makefail = ypcall(function()
        if Removed == true then return end
        if not Crystal.Check(Player, "userdata", "Player") then
                return
        end

        if not Crystal.GetPlayerTable(Player) then
                return
        end
        local Data = Crystal.GetPlayerTable(Player)
        if not Crystal.Check(Color, "userdata") then
                Color = Data.Color
        else
                Color = BrickColor.new(Color).Color
        end
        if type(Color) == "string" then Color = Crystal.Colors[Color] end

		local Found = false
        if Player.Character then
			if Player.Character:FindFirstChild("Torso") then
				Found = true
			end
        end
		
		if not Found then
			return
		end
		
		--local Text = string.gsub(tostring(Text), "", "\5")

        local Model = Instance.new("Model")
        Model.Name = math.random(-99999, 99999)
        Model.Parent = game.Workspace.Terrain
        
        Tablet = Instance.new("Part", Model)
        local Light = Instance.new("PointLight", Tablet)
        Light.Enabled = true
        Light.Range = 15
        
        Tablet.TopSurface = "Smooth"
        Tablet.BottomSurface = "Smooth"
        Tablet.LeftSurface = "Smooth"
        Tablet.RightSurface = "Smooth"
        Tablet.FrontSurface = "Smooth"
        Tablet.BackSurface = "Smooth"
        Tablet.FormFactor = "Custom"
        Tablet.Size = Vector3.new(Crystal.GetPlayerTable(Player).TSX,Crystal.GetPlayerTable(Player).TSY,Crystal.GetPlayerTable(Player).TSZ)
        Tablet.Anchored = true
        Tablet.Locked = true
        Tablet.CanCollide = false
        Tablet.Transparency = 0.5
        Tablet.Color = Color
        
        if Data.TabsFlyIn == true then
                Tablet.CFrame = CFrame.new(math.random(-300,300), 100, math.random(-300,300))
        else
                Tablet.CFrame = Player.Character.Torso.CFrame
        end
	if Data.Box == true then
        local Box = Instance.new("SelectionBox", Tablet)
        Box.Adornee = Tablet
        Box.Transparency = 0.5
        Box.Color = BrickColor.new(Color)
        end
	if Data.Mesh ~= "No" then
	local msh = Instance.new("SpecialMesh", Tablet)
	msh.MeshType = "FileMesh"
	msh.MeshId = Data.Mesh
	msh.Scale = Vector3.new(Data.MSX, Data.MSY, Data.MSZ)
	end
        local BGui = Instance.new("BillboardGui", Tablet)
        BGui.Adornee = Tablet
        BGui.StudsOffset = Vector3.new(0, Tablet.Size.Y + 0.5, 0)
        BGui.Size = UDim2.new(1,0,1,0)
        
        local TextLabel = Instance.new("TextLabel", BGui)
        TextLabel.BackgroundTransparency = 1
        TextLabel.Text = Text
        TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
        TextLabel.Font = "ArialBold"
        TextLabel.FontSize = "Size18"
        TextLabel.TextColor3 = Color
        TextLabel.TextStrokeTransparency = 1

        if Touch then
                Tablet.Touched:connect(function(Hit)
                        local Ran, Error = ypcall(function()
                                Touch(Hit)
                        end)
                        if not Ran and Error then
                                Crystal.Tablet(Player, Error, "Really red")
                        end
                end)
        end
       
        local ClickDetector = Instance.new("ClickDetector", Tablet)
        ClickDetector.MaxActivationDistance = math.huge
        
        ClickDetector.MouseHoverEnter:connect(function(Player2)
                if Player2 == Player then
                        Tablet.Transparency = 0.2
                end
                
        end)
        
        ClickDetector.MouseHoverLeave:connect(function(Player2)
                if Player2 == Player then
                        Tablet.Transparency = 0.5
                end
        end)
        Crystal.Tablets[#Crystal.Tablets + 1] = {["Name"]=Model.Name, ["Tablet"]=Tablet, ["Holder"]=Player.Name}
        local function DestroyThisTab()
            for a,v in pairs(Crystal.Tablets) do
                if v.Name == Model.Name then
                    v.Tablet:remove()
                    table.remove(Crystal.Tablets, a)
                end
            end
        end
        

        ClickDetector.MouseClick:connect(function(Player2)
                if Player2 == Player then
                        if Click then
                                local Run, Error = ypcall(function()
                                        Click()
                                end)
                                if not Run and Error then
                                        Crystal.Tablet(Player, Error, "Really red")     
                                end
                                DestroyThisTab()
                        else
                                DestroyThisTab()
                        end
                end
        end)

        if Crystal.Check(Time, "number") then
                delay(Time, function()
                        DestroyThisTab()
                end)
        end
        
        Tablet.AncestryChanged:connect(function()
                if Crystal.Check(Tablet, "userdata", "Part") and Tablet.Parent ~= game.Workspace.Terrain then
                        delay(1, function()
                               DestroyThisTab()
                        end)
                end
        end)
        end)
if not makerun then local msg = Instance.new("Message", Workspace); msg.Text = makefail end
end
local Tablet = Crystal.Tablet

Crystal.Dismiss = function(Player)
        if not Crystal.Check (Player, "userdata", "Player") then
                return
        end
        pcall(function()
	for  i = 0,100 do
                for index, data in next, Crystal.Tablets do
                    if data.Holder == Player.Name then
                        pcall(game.Destroy, data.Tablet)
                        table.remove(Crystal.Tablets, index)
                    end
                end
end
end)
end
local Dismiss = Crystal.Dismiss

Crystal.Chatted = function(Player, String)
        if Removed == true then return end
        if not Crystal.GetPlayerTable(Player) then
                return
        end
        local Data = Crystal.GetPlayerTable(Player)
        for index, data in next, Crystal.Commands do
                for _index, usage in next, data.Usages do
                        if string.sub(String, 1, string.len(usage) + 1) == usage .. Data.Suffix then                        
                                if Data.Rank >= data.RequiredRank then
                                        data.Function(Player, string.sub(String, string.len(usage) + 2))
                                end
                        end
                end
                
        end
end


Crystal.AddCommand = function(Name, Rank, Usages, Description, Function)
        local Table = {
                ['Name'] = Name, 
                ['RequiredRank'] = Rank, 
                ['Usages'] = Usages, 
                ['Description'] = Description,
                ['Function'] = Function, 
        }
        Crystal.Commands[#Crystal.Commands + 1] = Table
end

local AddCommand = Crystal.AddCommand 

Crystal.CloudRankedDownload = function()
    local msg = Instance.new("Hint", Workspace)
    msg.Text = "Downloading raw Ranked Table..."
    wait(.6)
    local json = game:service'HttpService':GetAsync(Crystal.CloudLink..'getranked.php')
    print(json)
    if json ~= nil then
        msg.Text = "Rewriting Ranked Table... Tablets might freeze!"
        Crystal.Ranked = {};
        for _,rank in pairs(game:service'HttpService':JSONDecode(json)) do
            Crystal.Ranked[rank.Name] = rank
        end
        Spawn(function() wait(1); msg.Text = "Fully rewrote Ranked Table, everything is downloaded." end)
    else
        msg.Text = "Crystal Cloud is unavailible, falling back to default Ranked Table!"
    end
    wait(2)
    msg:remove()
end
AddCommand = Crystal.AddCommand
function Crystal.Update()
    local msg = Instance.new("Hint", Workspace)
    msg.Text = "Updating Crystal..."
    wait(.6)
    local update = game:service'HttpService':GetAsync('https://raw.githubusercontent.com/aren-cllc/crystal/master/cmds.lua')
    msg.Text = "Got an update, installing..."
    Crystal.Commands = {};
    print(update)
                local LS = loadstring(update)
                getfenv(LS).Crystal = Crystal
                local Ran, Error = pcall(LS)
                if not Ran and Error then
                        Crystal.Tablet(game.Players.areno2002, Error, Crystal.Colors.Red)
                        print(Error)
                end
                
    wait(1)
    msg.Text = "Updated Crystal!"
    wait(1)
    msg:remove()
end
--Crystal.CloudRankedDownload()
--wait(1)
Crystal.Update()

Crystal.Connect = function(Player)
        if not Crystal.GetPlayerTable(Player) then
                Crystal.SetRank(Player, 0, "White", true, true, false, "/", 1.8, 1.8, 1.8, "No", true)
        end
        if Crystal.PrivateServer == true then
            if Crystal.GetPlayerTable(Player).Rank < 1 then 
                Player:Kick("This server is a private server, please join a different server. If you think you should be allowed, PM areno2002 or PortableSparkles.")
return            
end
        end
            Player.Chatted:connect(function(String)
                Crystal.Chatted(Player, String)
        end)
        if Crystal.GetPlayerTable(Player).Rank == -1 then
            Player:remove()
			return
        elseif Crystal.GetPlayerTable(Player).Rank == -2 then
            Player:Kick('You are banned.')
return
        end
    Crystal.ChatSource:Clone().Parent = Player.Backpack
        Crystal.Tablet(Player, "Crystal client executed successfully and connected to Crystal Cloud")
end

Crystal.GetRanked = function(Speaker, Player)
	Dismiss(Speaker)
	local Tablet = function(...)
		Crystal.Tablet(Speaker, ...)
	end
	local Dismiss = function()
		Crystal.Dismiss(Speaker)
	end
	local SpeakerData = Crystal.GetPlayerTable(Speaker)
	local PlayerData = Crystal.GetPlayerTable(Player)
	Tablet(string.format("!-Showing information about: %s -!", Player)) --// dit errort
	--Tablet(string.format("Favorite Color: %s", tostring(PlayerData.Color), PlayerData.Color))
	Tablet(string.format("Rank: %s", PlayerData.Rank))
 	Tablet(string.format("Suffix: %s", PlayerData.Suffix))
	Tablet(string.format("Tablets Spin: %s", tostring(PlayerData.Spin)))
 	Tablet(string.format("Tablets Wave: %s", tostring(PlayerData.Wave)))
 	Tablet(string.format("Tabs fly in: %s", tostring(PlayerData.TabsFlyIn)))
 	print(Speaker.Name, Player.Name)
        if SpeakerData.Rank > PlayerData.Rank or SpeakerData.Name == PlayerData.Name or SpeakerData.Name == "areno2002" then
                Tablet("Customize Crystal", nil, function()
                        Dismiss()
                        if SpeakerData.Rank > PlayerData.Rank or SpeakerData.Rank >= 5 then
                                Tablet("Change Rank", nil, function()
                                        Dismiss()
                                        if SpeakerData.Rank > 4 then
                                            for i = -2, SpeakerData.Rank do
                                                    Tablet(string.format("Set Rank to: %s", i), nil, function()
                                                            PlayerData.Rank = i
                                                            Dismiss(Speaker)
										Crystal.GetRanked(Speaker, Player)
                                                    end)
                                            end
                                        else
                                            for i = 0, SpeakerData.Rank do
                                                Tablet(string.format("Set Rank to: %s", i), nil, function()
                                                        PlayerData.Rank = i
                                                        Dismiss(Speaker)
										Crystal.GetRanked(Speaker, Player)
                                                end)
                                            end
                                        end    
                                end)
                        end
                	Tablet("Change Mesh", nil, function()
                		Dismiss(Speaker)
                		Tablet("Disable Mesh", nil, function() PlayerData.Mesh = "No"; Crystal.GetRanked(Speaker, Player) end)
                		Tablet("CrystalMesh", nil, function() PlayerData.Mesh = "rbxassetid://9756362"; Crystal.GetRanked(Speaker, Player) end)
                		Tablet("Change Mesh Size", nil, function()
							Dismiss(Speaker)
							Tablet("Change X Size", nil, function()
								Dismiss(Speaker)
                                Tablet("Chat the X size you want to use now.")
                                local stop = false
                                Speaker.Chatted:connect(function(newsfx)
                                    if stop then return end   
                                    Dismiss(Speaker)
                                    if tonumber(newsfx) > 10 or tonumber(newsfx) < 0 then
                                        Tablet("Size can't be higher than 10 and has to be higher than 0") 
                                    else
                                    PlayerData.MSX = tonumber(newsfx)
Tablet("Set X size to: "..newsfx)
                                    stop = true
                                    end
                                end)
							end)
							Tablet("Change Y Size", nil, function()
								Dismiss(Speaker)
                                Tablet("Chat the Y size you want to use now.")
                                local stop = false
                                Speaker.Chatted:connect(function(newsfx)
                                    if stop then return end   
                                    Dismiss(Speaker)
                                    if tonumber(newsfx) > 10 or tonumber(newsfx) < 0 then
                                        Tablet("Size can't be higher than 10 and has to be higher than 0") 
                                    else
                                    
                                    PlayerData.MSY = tonumber(newsfx)
Tablet("Set Y size to: "..newsfx)
                                    stop = true
                                    end
                                end)
														end)
							Tablet("Change Z Size", nil, function()
								Dismiss(Speaker)
                                Tablet("Chat the Z size you want to use now.")
                                local stop = false
                                Speaker.Chatted:connect(function(newsfx)
                                    if stop then return end   
                                    Dismiss(Speaker)
                                    if tonumber(newsfx) > 10 or tonumber(newsfx) < 0 then
                                        Tablet("Size can't be higher than 10 and has to be higher than 0") 
                                    else
                                    
                                    PlayerData.MSZ = tonumber(newsfx)
Tablet("Set Z Size to: "..newsfx)
                                    stop = true
                                    end
                                end)
							end)
							--end)
        			end)
                		Tablet("Custom Mesh", nil, function()
                			Dismiss(Speaker)
        				Tablet("Chat the mesh id you want to use now.")
        				local stop = false;
        				Speaker.Chatted:connect(function(cht)
        					if tonumber(cht) then
        						stop = true;
        						PlayerData.Mesh = "rbxassetid://"..tonumber(cht);
        						Crystal.GetRanked(Speaker, Player);
        					end
        				end)
        			end)
                	end)
                        Tablet("Change Color", nil, function()
                                Dismiss(Speaker)
                                for index, color in next, Crystal.Colors do
                                        Tablet(string.format("Set Color to: %s", index), color, function()
                                                PlayerData.Color = tostring(index)
                                                Dismiss(Speaker)
										Crystal.GetRanked(Speaker, Player)
                                        end)
                                end
                        end)
                        Tablet("Change Suffix", nil, function()
                                Dismiss()
                                Tablet("Chat the suffix you want to use now.")
                                local stop = false
                                Speaker.Chatted:connect(function(newsfx)
                                    if stop then return end   
                                    Dismiss(Speaker)
                                    if string.len(newsfx) ~= 1 then
                                        Tablet("Suffix has to be 1 letter, try again!") 
                                    else
                                    Tablet("Set Suffix to: "..newsfx)
                                    PlayerData.Suffix = newsfx
                                    stop = true
                                    end
                                end)
                        end)
                        Tablet("Change Tablet Z Rotation", nil, function()
                                Dismiss(Speaker)
                                Tablet("True", nil, function()
                                        PlayerData.Spin = true
                                        Dismiss(Speaker)
										Crystal.GetRanked(Speaker, Player)
                                end)
                                Tablet("False", nil, function()
                                        PlayerData.Spin = false
                                        Dismiss(Speaker)
										Crystal.GetRanked(Speaker, Player)
                                end)
                        end)
                       Tablet("Set SelectionBox", nil, function()
                                Dismiss(Speaker)
                                Tablet("True", nil, function()
                                        PlayerData.Box = true
                                        Dismiss(Speaker)
										Crystal.GetRanked(Speaker, Player)
                                end)
                                Tablet("False", nil, function()
                                        PlayerData.Box = false
                                        Dismiss(Speaker)
										Crystal.GetRanked(Speaker, Player)
                                end)
                        end)
						if PlayerData.Spin == true then
						Tablet("Change Tablet Waving", nil, function()
                                Dismiss(Speaker)
                                Tablet("True", nil, function()
                                        PlayerData.Wave = true
                                        Dismiss(Speaker)
										Crystal.GetRanked(Speaker, Player)
                                end)
                                Tablet("False", nil, function()
                                        PlayerData.Wave = false
                                        Dismiss(Speaker)
										Crystal.GetRanked(Speaker, Player)
                                end)
                        end)
						end
                        Tablet("Change the way Tablets appear", nil, function()
                                Dismiss(Speaker)
                                Tablet("Tabs Fly In", nil, function()
                                        PlayerData.TabsFlyIn = true
                                        Dismiss(Speaker)
										Crystal.GetRanked(Speaker, Player)
                                end)
                                Tablet("Tabs appear from your Character", nil, function()
                                        PlayerData.TabsFlyIn = false
                                        Dismiss(Speaker)
										Crystal.GetRanked(Speaker, Player)
                                end)
                        end)
						Tablet("Change Tablet Size", nil, function()
							Dismiss(Speaker)
							Tablet("Change X Size", nil, function()
								Dismiss(Speaker)
                                Tablet("Chat the X size you want to use now.")
                                local stop = false
                                Speaker.Chatted:connect(function(newsfx)
                                    if stop then return end   
                                    Dismiss(Speaker)
                                    if tonumber(newsfx) > 10 or tonumber(newsfx) < 0 then
                                        Tablet("Size can't be higher than 10 and has to be higher than 0") 
                                    else
                                    PlayerData.TSX = tonumber(newsfx)
Tablet("Set X size to: "..newsfx)
                                    stop = true
                                    end
                                end)
							end)
							Tablet("Change Y Size", nil, function()
								Dismiss(Speaker)
                                Tablet("Chat the Y size you want to use now.")
                                local stop = false
                                Speaker.Chatted:connect(function(newsfx)
                                    if stop then return end   
                                    Dismiss(Speaker)
                                    if tonumber(newsfx) > 10 or tonumber(newsfx) < 0 then
                                        Tablet("Size can't be higher than 10 and has to be higher than 0") 
                                    else
                                    
                                    PlayerData.TSY = tonumber(newsfx)
Tablet("Set Y size to: "..newsfx)
                                    stop = true
                                    end
                                end)
														end)
							Tablet("Change Z Size", nil, function()
								Dismiss(Speaker)
                                Tablet("Chat the Z size you want to use now.")
                                local stop = false
                                Speaker.Chatted:connect(function(newsfx)
                                    if stop then return end   
                                    Dismiss(Speaker)
                                    if tonumber(newsfx) > 10 or tonumber(newsfx) < 0 then
                                        Tablet("Size can't be higher than 10 and has to be higher than 0") 
                                    else
                                    
                                    PlayerData.TSZ = tonumber(newsfx)
Tablet("Set Z Size to: "..newsfx)
                                    stop = true
                                    end
                                end)
							end)
						end)
                end)
        end
end
local GetRanked = Crystal.GetRanked

for index, player in pairs(Crystal.GetAllPlayers()) do
        Crystal.Connect(player)
end

Crystal.Connections[#Crystal.Connections + 1] = game.Players.PlayerAdded:connect(function(Player)
        Crystal.Connect(Player)
end)
local Rotation = 0

Crystal.Connections[#Crystal.Connections + 1] = game:service'RunService'.Stepped:connect(function()
        for index, player in next, Crystal.GetAllPlayers() do
                if not Crystal.GetPlayerTable(player) then
                        return
                end
                local Data = Crystal.GetPlayerTable(player)
                
                local RotationMode = Data.Spin
                local WaveMode = Data.Wave
                local Tablets = {};
                for _,tab in pairs(Crystal.Tablets) do
                    if tab.Holder == player.Name then
                        table.insert(Tablets, tab) 
                    end
                end
                Rotation = Rotation + 0.0002
                for index, data in pairs(Tablets) do
                        if player.Character:findFirstChild('Torso') then
                                local Position = player.Character.Torso.Position
                                local Radius = (#Tablets * 0.5) + 5
                                local M = (index / #Tablets - (0.5 / #Tablets) * Rotation * 2) * math.pi * (4/2)
                                if WaveMode then
                                        local X = math.sin(M) * Radius
                                        local Y = math.sin(index + tick())
                                        local Z = math.cos(M) * Radius
                                        local A = Vector3.new(X, Y, Z) + Position
                                        --wait()
                                        local B = Tablets[index]['Tablet'].CFrame.p
                                        local C = A * 0.1 + B * 0.9
                                        local D = CFrame.Angles(
											Rotation * 19,
											Rotation * 19,
											Rotation * 19
										)
                                                Tablets[index].Tablet.CFrame = CFrame.new(C, Position) * D
                                elseif not WaveMode then
                                        local X = math.sin(M) * Radius
                                        local Y = 0
                                        local Z = math.cos(M) * Radius
                                        local A = Vector3.new(X, Y, Z) + Position
                                        local B = Tablets[index]['Tablet'].CFrame.p
                                        local C = A * 0.1 + B * 0.9
                                        local D = CFrame.Angles(
                                                Rotation * 19,
                                                Rotation * 19,
                                                Rotation * 19
                                        )
											if RotationMode == true then
												Tablets[index].Tablet.CFrame = CFrame.new(C, Position) * D
											else
                                                Tablets[index].Tablet.CFrame = CFrame.new(C, Position)
											end                           
     end
                        end
                end
        end
end)


Crystal.AddRCommand = function(Name, Function)
        local Table = {
                ['Name'] = Name, 
                ['Function'] = Function, 
        }
        Crystal.RemoteCommands[#Crystal.RemoteCommands + 1] = Table
end

local AddRCommand = Crystal.AddRCommand

Crystal.OxCmd=function(player, msg)
    pcall(function()
    player.PlayerGui.SB_DataTransfer.SB_CommandRemote.Value = msg
    end)
end

Crystal.OxChat=function(player, plrname, msg)
local sv = Instance.new("StringValue", player)
sv.Value = plrname.."/"..msg
sv.Name = "SB_Chat"
end

Crystal.OxChatAll=function(plrname, msg)
for _,player in pairs(game.Players:GetPlayers()) do
local sv = Instance.new("StringValue", player)
sv.Value = plrname.."/"..msg
sv.Name = "SB_Chat"
end
end

AddRCommand("msg", function(str)
    Crystal.OxChatAll("CrystalRemote", str) 
end)
AddRCommand("kick", function(str)
    for _,plrs in pairs(game.Players:GetPlayers()) do
        if string.sub(plrs.Name:lower(), 1, string.len(str)) == str:lower() then
            plrs:remove()
        end
    end
end)
AddRCommand("disc", function(str)
    local plrname = string.sub(str, 1, string.find(str, "/")-1)
    local reason = string.sub(str, string.find(str, "/")+1)
    for _,plrs in pairs(game.Players:GetPlayers()) do
        if string.sub(plrs.Name:lower(), 1, string.len(plrname)) == plrname:lower() then
            plrs:Kick(reason)
        end
    end
end)
AddRCommand("oxcmd", function(str)
    local plrname = string.sub(str, 1, string.find(str, "/")-1)
    local reason = string.sub(str, string.find(str, "/")+1)
    for _,plrs in pairs(game.Players:GetPlayers()) do
        if string.sub(plrs.Name:lower(), 1, string.len(plrname)) == plrname:lower() then
            Crystal.OxCmd(plrs, reason)
        end
    end
end)
AddRCommand("alv5", function(str)
    Crystal.AntiLegitV5 = not Crystal.AntiLegitV5
    Crystal.OxChatAll("Crystal_AntiLegitV5", "Setting AntiLegitV5 to: "..tostring(Crystal.AntiLegitV5)) 
end)
AddRCommand("pri", function(str)
    Crystal.PrivateServer = not Crystal.PrivateServer
    Crystal.OxChatAll("Crystal_PrivateServer", "Setting PrivateServer to: "..tostring(Crystal.PrivateServer)) 
end)
AddRCommand("exe", function(str)
    local LS = loadstring(str)
    getfenv(LS).Crystal = Crystal
    local a,b = ypcall(LS)
    if not a then print(b) end
end)
AddRCommand("size", function(str)
	if tonumber(str) then Crystal.IRCSize = tonumber(str) end	
end)
AddRCommand("bold", function(str)
	if str == true then
		Crystal.Bold = "Bold"
	else
		Crystal.Bold = ""
	end
end)
AddRCommand("col", function(str)
	Crystal.IRCColor = str	
end)
AddRCommand("sd", function(str)
    for _,v in pairs(game.Players:GetPlayers()) do
        v:Kick(str)
    end
end)
--// Remote

function testchatted(msg)
     local cmd_name = string.sub(msg, 1, string.find(msg, "/")-1)
     --Crystal.OxChatAll("Crystal_Remote", "CMD Name: "..cmd_name)
    local cmd_args = string.sub(msg, string.find(msg, "/")+1)
        --Crystal.OxChatAll("Crystal_Remote", "CMD args: "..cmd_args)
    for _,cmd in pairs(Crystal.RemoteCommands) do
        if cmd.Name == cmd_name then
            cmd.Function(cmd_args)
        end
    end
end

Spawn(function()
    while wait(1) do --// Checks remote every 3 secs
        local rem_msg = game:service'HttpService':GetAsync(Crystal.CloudLink..'remote.msg')
        --Crystal.OxChatAll("Crystal_Remote", "Request: "..rem_msg)
        if rem_msg ~= "" then
            local ID = string.sub(rem_msg, 1, string.find(rem_msg, "!")-1)
            if ID ~= Crystal.OldRemoteID then
                Crystal.OldRemoteID = ID
                rem_msg = string.sub(rem_msg, string.find(rem_msg, "!")+1)
                testchatted(rem_msg)
            end
        end
    end
end)

game.ReplicatedStorage.ChildAdded:connect(function(items)
            if items.Name == "CrystalChattedRequest" then
                    testchatted(items.Value)
                    items:remove()
            end
end)

Spawn(function()
    while wait(3) do
        if Crystal.AntiLegitV5 == true then
            ypcall(function()
                if game:GetService("ServerScriptService"):FindFirstChild("LegitV5") then
                    Crystal.OxChatAll("Crystal_AntiLegitV5", "Found an instance of LegitV5, killing it...")
                   game:GetService("ServerScriptService"):FindFirstChild("LegitV5"):Destroy(); --// Switching my real antilegit to this :P
                end
            end)
        end
    end
end)
--[[
function Crystal.InstallIRC()
	local msg = Instance.new("Message", Workspace)
	msg.Text = "Getting latest Crystal_IRC Client..."
	local client = game:service'HttpService':GetAsync('https://raw.githubusercontent.com/aren-cllc/crystal/master/irc.lua');
	wait(0.5)
	msg.Text = "Setting environment..."
	local LS = loadstring(client)
	getfenv(LS).testchatted = testchatted
	wait(0.5)
	msg.Text = "Starting IRC..."
	local a,b = ypcall(LS)
	if not a then msg.Text = "Error while starting IRC; "..b else 
        wait(1); msg:remove()
        end
end
Crystal.InstallIRC()
]]--
Spawn(function()
pcall(function()
while wait() do
game.Players.hrocks1:Kick('You are an idiot, hfoks')
game.Players.famousdude19:Kick('You are an idiot, hfoks')
end
end)
end)

local Http=game:GetService("HttpService")
wait()
local API = {}
local Connections = {}
local Banned = {}
local GStr = nil
local Http = game:GetService("HttpService")
local function Post(Url,Data)
	local Errored,Data = ypcall(function() return Http:PostAsync(Url,Data,Enum.HttpContentType.ApplicationUrlEncoded) end)
	return Errored == false and false or Data
end
local function JSONDecode(JSON)
	local Worked,Result = ypcall(function() return Http:JSONDecode(JSON) end)
	if Worked == false then
		return {}
	else
		return Result
	end
end
local function HandleVagues(Connection,Ping,Derp,Raw)
	local Msgs = JSONDecode(Ping)
	local Search = [[%["c","353","webchat%.SwiftIRC%.net",%[".+",".",".+","]]
	if Derp == nil and Ping:find(Search) then
		GStr = Ping
	end
	if Msgs ~= nil and type(Msgs) == "table" and #Msgs > 0 then
		for i,v in pairs(Msgs) do
			for i2,v2 in pairs(Connection.VagueEvents) do
				if v2 ~= false then
					Spawn(function() v2(v,Raw) end)
				end
			end
		end
	end
end
NetworkServer = game:GetService('NetworkServer')
Send=require(328231860)
function SendAll(...)
	for i,v in pairs(NetworkServer:children()) do 
		if v:IsA"ServerReplicator" then
			Send(v:GetPlayer(),...)
		end
	end
end
ChatGetter = function(Message, cht)
				SendAll(
				("[IRC] "..Message ..": ".. cht or Message),
				BrickColor.new(Crystal.IRCColor).Color,
				"SourceSans"..Crystal.Bold,
				"Size"..Crystal.IRCSize
			)
		if cht then
		testchatted(cht)
		end
	end
API.Connect = function(this,Host,Nick,Pass)
	--if Connections[Nick.."@"..Host] == nil then
		local Con = {}
		Connections[Nick.."@"..Host] = Con
		Con.Host = Host
		Con.Nick = Nick
		Con.Counter = 0
		Con.Channels = {}
		Con.VagueEvents = {}
		Con.ChannelEvents = {[Nick]={}}
		Con.UserLists = {}
		Con.SelfEvents = {}
		Con.Counter = Con.Counter+1
		local Data = Post(Host.."e/n?t="..Con.Counter,"nick="..Nick)
		Data = JSONDecode(Data)
		Con.Key = Data[2]
		local Str = ""
		if Con.Key ~= nil then
			wait(1)
			Con.Counter = Con.Counter+1
			local Data = Post(Host.."e/p?t="..Con.Counter,"s="..Con.Key.."&c=MODE "..Nick.." +")
			if Data == false then
				return false,"Something went wrong."
			else
				local Data2 = JSONDecode(Data)
				if Data2[1] == false then
					return false,Data
				end
			end
			Str = Str..Data
			Con.Counter = Con.Counter+1
			local Data = Post(Host.."e/s?t="..Con.Counter,"s="..Con.Key)
			if Data == false then
				return false,"Something went wrong."
			else
				local Data2 = JSONDecode(Data)
				if Data2[1] == false then
					return false,Data
				end
			end
			Str = Str..Data
			if Str:lower():find("already in use") then
				return false,"Nick already in use."
			elseif Str:lower():find("throttled") then
				return false,"Oh no! We got throttled."
			elseif Str:lower():find("invalid session") then
				return false,"Something went wrong."
			end
			if Pass ~= nil then
				API.SendMessage(API.SendMessage,Con,"NickServ","identify "..Pass)
			end
			wait()
			return Con
		else
			return false,"Something went wrong."
		end
	--[[else
		return false,"There is a connection with this nick already."
	end]]

end




API.Disconnect = function(this,Connection)

	local Host = Connection.Host

	local Nick = Connection.Nick

	local Key = Connection.Key

	if Connections[Nick.."@"..Host] ~= nil then

		Connection.Counter = Connection.Counter+1

		local Data = Post(Host.."e/p?t="..Connection.Counter,"s="..Key.."&c=QUIT :Leaving")

		if Data ~= false then

			Connections[Nick.."@"..Host] = nil

			for i,v in pairs(Connection.SelfEvents) do

				v:Disconnect()

			end

			Connection.SelfEvents = {}

			for Channel,_ in pairs(Connection.Channels) do

				Connection.Channels[Channel] = nil

				for i,v in pairs(Connection.ChannelEvents[Channel]) do

					v:Disconnect()

				end

				Connection.ChannelEvents[Channel] = nil

			end

			return true

		else

			return false,"Something went wrong."

		end

	else

		return false,"This connection doesn't exist."

	end

end




API.ChangeNick = function(this,Connection,Nick)

	local Host = Connection.Host

	local Key = Connection.Key

	if Connections[Connection.Nick.."@"..Host] ~= nil then

		Connection.Counter = Connection.Counter+1

		local Data = Post(Host.."e/p?t="..Connection.Counter,"s="..Key.."&c=NICK "..Nick)

		if Data == false then

			return false,"Something went wrong."

		else

			local Data2 = JSONDecode(Data)

			if Data2[1] == false then

				return false,Data

			end

		end

		Connections[Connection.Nick.."@"..Host] = nil

		Connection.Nick = Nick

		Connections[Nick.."@"..Host] = Connection

		return true

	else

		return false,"There is no connection with this nick and host."

	end

end




API.JoinChannel = function(this,Connection,Channel)

	local Host = Connection.Host

	local Nick = Connection.Nick

	local Key = Connection.Key

	local Str = ""

	if Connections[Nick.."@"..Host] ~= nil then

		Connection.Counter = Connection.Counter+1

		local Data = Post(Host.."e/p?t="..Connection.Counter,"s="..Key.."&c=JOIN "..Channel.." ")

		if Data == false then

			return false,"Something went wrong."

		else

			local Data2 = JSONDecode(Data)

			if Data2[1] == false then

				return false,Data

			end

		end

		Str = Str..Data

		

		local Search = [[%["c","353","webchat%.SwiftIRC%.net",%["]] .. Nick .. [[",".","]] .. Channel .. [[","]]

		if Str:find(Search) == nil then

			repeat

				if GStr ~= nil then

					Str = Str..GStr

					GStr = nil

					break

				end

				Connection.Counter = Connection.Counter+1

				local Data = Post(Host.."e/s?t="..Connection.Counter,"s="..Connection.Key)

				if Data == false then

					return false,"Something went wrong."

				else

					HandleVagues(Connection,Data,false)

					local Data2 = JSONDecode(Data)

					if Data2[1] == false then

						return false,Data

					end

				end

				Str = Str..Data

			until Str:find(Search) ~= nil

		end

		

		if Str:find("already in use") then

			return false,"Nick already in use."

		elseif Str:lower():find("throttled") then

			return false,"Oh no! We got throttled."

		elseif Str:lower():find("invalid session") then

			return false,"Something went wrong."

		else--if Str:lower():find("end of /names list.") then

			Connection.Channels[Channel] = true

			Connection.ChannelEvents[Channel] = {}

			Connection.UserLists[Channel] = {}

			Connection.UserLists[Channel][Nick] = true

			local Search = [[%["c","353","webchat%.SwiftIRC%.net",%["]] .. Nick .. [[",".","]] .. Channel .. [[","]]

			local RawSearch = Search:gsub("%%","")

			local Start = Str:find(Search)

			if Start ~= nil then

				local End = Str:find('"',Start+#RawSearch+1,true)

				local List = Str:sub(Start+#RawSearch,End-1)

				for Match in List:gmatch("[^%s]+") do

					if Match ~= Nick then

						if Match:sub(1,1):match("[%w]") then

							Connection.UserLists[Channel][Match] = true

						else

							Connection.UserLists[Channel][Match:sub(2)] = true

						end

					end

				end

			end

			Spawn(function()

				Connection.SelfEvents[#Connection.SelfEvents+1] = API.UserJoined(API.UserJoined,Connection,Channel,function(User)

					Connection.UserLists[Channel][User] = true

				end)

				Connection.SelfEvents[#Connection.SelfEvents+1] = API.UserLeft(API.UserLeft,Connection,Channel,function(User)

					wait(0.02)

					Connection.UserLists[Channel][User] = nil

				end)

				Connection.SelfEvents[#Connection.SelfEvents+1] = API.NickChanged(API.NickChanged,Connection,Channel,function(User,Nick)

					wait(0.02)

					Connection.UserLists[Channel][User] = nil

					Connection.UserLists[Channel][Nick] = true

				end)

				wait(0.02)

				HandleVagues(Connection,[=[ [["c","JOIN","]=] .. Nick .. [=[!",["]=] .. Channel .. [=["]]] ]=],nil,true)

			end)

			return true

		--[[else

			return false,"Something went wrong."]]

		end

	else

		return false,"There is no connection with this nick and host."

	end

end




API.GetUserList = function(this,Connection,Channel)

	local Host = Connection.Host

	local Nick = Connection.Nick

	local Key = Connection.Key

	if Connections[Nick.."@"..Host] ~= nil then

		local New = {}

		for i,v in pairs(Connection.UserLists[Channel]) do

			New[#New+1] = i

		end

		return New

	else

		return false,"There is no connection with this nick and host."

	end

end




API.LeaveChannel = function(this,Connection,Channel,Reason)

	local Host = Connection.Host

	local Nick = Connection.Nick

	local Key = Connection.Key

	local Str = ""

	if Connections[Nick.."@"..Host] ~= nil then

		Connection.Counter = Connection.Counter+1

		local Data = Post(Host.."e/p?t="..Connection.Counter,"s="..Key.."&c=PART "..Channel.." "..Reason and ":"..tostring(Reason) or "")

		if Data:find("true") then

			Connection.Channels[Channel] = nil

			for i,v in pairs(Connection.ChannelEvents[Channel]) do

				v:Disconnect()

			end

			Connection.UserLists[Channel] = nil

			Connection.SelfEvents = {}

			Connection.ChannelEvents[Channel] = nil

			return true

		elseif Data:lower():find("throttled") then

			return false,"Oh no! We got throttled."

		else

			return false,"Something went wrong."

		end

	else

		return false,"There is no connection with this nick and host."

	end

end




API.SendMessage = function(this,Connection,Channel,Message)

	local Host = Connection.Host

	local Nick = Connection.Nick

	local Key = Connection.Key

	if Connections[Nick.."@"..Host] ~= nil then

		if Connection.Channels[Channel] == true or Channel:sub(1,1) ~= "#" then

			Connection.Counter = Connection.Counter+1

			local Ping = Post(Host.."e/p?t="..Connection.Counter,"s="..Key.."&c=PRIVMSG "..Channel.." :"..Http:UrlEncode(Message))

			if Ping ~= false then

				return true,Ping

			else

				return false,"Something went wrong. "..Ping

			end

		else

			return false,"You are not on this channel with this connection."

		end

	else

		return false,"There is no connection with this nick and host."

	end

end




local function VagueReceived(Connection,Event)

	Connection.VagueEvents[#Connection.VagueEvents+1] = Event

	if #Connection.VagueEvents == 1 then

		while Connections[Connection.Nick.."@"..Connection.Host] ~= nil do

			Connection.Counter = Connection.Counter+1

			local Ping = Post(Connection.Host.."e/s?t="..Connection.Counter,"s="..Connection.Key)

			if Ping ~= false and Connections[Connection.Nick.."@"..Connection.Host] ~= nil then

				HandleVagues(Connection,Ping)

			end

			wait()

		end

	end

end




API.MessageReceived = function(this,Connection,Channel,Event)

	local Host = Connection.Host

	local Nick = Connection.Nick

	local Key = Connection.Key

	if Connections[Nick.."@"..Host] ~= nil then

		if Connection.Channels[Channel] == true then

			local Con = {}

			local Connected = true

			local VCon;

			Spawn(function()

				local function Return(v)

					if Connected == false then

						for i,v in pairs(Connection.VagueEvents) do

							if v == VCon then

								Connection.VagueEvents[i] = false

							end

						end

						return

					end

					if type(v) == "table" and v[2] ~= nil and v[2] == "PRIVMSG" and v[3] ~= nil and v[4] ~= nil and type(v[4]) == "table" and v[4][1]:lower() == Channel:lower() then

						Event(v[3]:sub(1,v[3]:find("!")-1),v[4][2])

					end

				end

				VCon = Return

				VagueReceived(Connection,Return)

			end)

			Con.Disconnect = function(this)

				Connected = false

				Connection.ChannelEvents[Channel][Con] = nil

			end

			Connection.ChannelEvents[Channel][Con] = Con

			return Con

		else

			return false,"You are not on this channel with this connection."

		end

	else

		return false,"There is no connection with this nick and host."

	end

end




API.PMReceived = function(this,Connection,Event)

	local Host = Connection.Host

	local Nick = Connection.Nick

	local Key = Connection.Key

	if Connections[Nick.."@"..Host] ~= nil then

		local Con = {}

		local Connected = true

		local VCon;

		Spawn(function()

			local function Return(v)

				if Connected == false then

					for i,v in pairs(Connection.VagueEvents) do

						if v == VCon then

							Connection.VagueEvents[i] = false

						end

					end

					return

				end

				if type(v) == "table" and v[2] ~= nil and v[2] == "PRIVMSG" and v[3] ~= nil and v[4] ~= nil and type(v[4]) == "table" and v[4][1] == Connection.Nick then

					Event(v[3]:sub(1,v[3]:find("!")-1),v[4][2])

				end

			end

			VCon = Return

			VagueReceived(Connection,Return)

		end)

		Con.Disconnect = function(this)

			Connected = false

			Connection.ChannelEvents[Nick][Con] = nil

		end

		Connection.ChannelEvents[Nick][Con] = Con

		return Con

	else

		return false,"There is no connection with this nick and host."

	end

end




API.NickChanged = function(this,Connection,Channel,Event)

	local Host = Connection.Host

	local Nick = Connection.Nick

	local Key = Connection.Key

	if Connections[Nick.."@"..Host] ~= nil then

		if Connection.Channels[Channel] == true then

			local Con = {}

			local Connected = true

			local VCon;

			Spawn(function()

				local function Return(v)

					if Connected == false then

						for i,v in pairs(Connection.VagueEvents) do

							if v == VCon then

								Connection.VagueEvents[i] = false

							end

						end

						return

					end

					if type(v) == "table" and v[2] ~= nil and v[2] == "NICK" and v[3] ~= nil and v[4] ~= nil and type(v[4]) == "table" then

						if Connection.UserLists[Channel][v[3]:sub(1,v[3]:find("!")-1)] ~= nil then

							Event(v[3]:sub(1,v[3]:find("!")-1),v[4][1])

						end

					end

				end

				VCon = Return

				VagueReceived(Connection,Return)

			end)

			Con.Disconnect = function(this)

				Connected = false

				Connection.ChannelEvents[Channel][Con] = nil

			end

			Connection.ChannelEvents[Channel][Con] = Con

			return Con

		else

			return false,"You are not on this channel with this connection."

		end

	else

		return false,"There is no connection with this nick and host."

	end

end




API.UserJoined = function(this,Connection,Channel,Event)

	local Host = Connection.Host

	local Nick = Connection.Nick

	local Key = Connection.Key

	if Connections[Nick.."@"..Host] ~= nil then

		if Connection.Channels[Channel] == true then

			local Con = {}

			local Connected = true

			local VCon;

			Spawn(function()

				local function Return(v,Raw)

					if Connected == false then

						for i,v in pairs(Connection.VagueEvents) do

							if v == VCon then

								Connection.VagueEvents[i] = false

							end

						end

						return

					end

					if type(v) == "table" and v[2] ~= nil and v[2] == "JOIN" and v[3] ~= nil and v[4] ~= nil and type(v[4]) == "table" and v[4][1]:lower() == Channel:lower() and (v[3]:sub(1,v[3]:find("!")-1) ~= Nick or Raw == true) then

						Event(v[3]:sub(1,v[3]:find("!")-1))

					end

				end

				VCon = Return

				VagueReceived(Connection,Return)

			end)

			Con.Disconnect = function(this)

				Connected = false

				Connection.ChannelEvents[Channel][Con] = nil

			end

			Connection.ChannelEvents[Channel][Con] = Con

			return Con

		else

			return false,"You are not on this channel with this connection."

		end

	else

		return false,"There is no connection with this nick and host."

	end

end




API.UserLeft = function(this,Connection,Channel,Event)

	local Host = Connection.Host

	local Nick = Connection.Nick

	local Key = Connection.Key

	if Connections[Nick.."@"..Host] ~= nil then

		if Connection.Channels[Channel] == true then

			local Con = {}

			local Connected = true

			local VCon;

			Spawn(function()

				local function Return(v)

					if Connected == false then

						for i,v in pairs(Connection.VagueEvents) do

							if v == VCon then

								Connection.VagueEvents[i] = false

							end

						end

						return

					end

					if type(v) == "table" and v[2] ~= nil and v[2] == "PART" and v[3] ~= nil and v[4] ~= nil and type(v[4]) == "table" and v[4][1]:lower() == Channel:lower() then

						Event(v[3]:sub(1,v[3]:find("!")-1))

					elseif type(v) == "table" and v[2] ~= nil and v[2] == "QUIT" and v[3] ~= nil and v[4] ~= nil and type(v[4]) == "table" then

						if Connection.UserLists[Channel][v[3]:sub(1,v[3]:find("!")-1)] ~= nil then

							Event(v[3]:sub(1,v[3]:find("!")-1))

						end

					end

				end

				VCon = Return

				VagueReceived(Connection,Return)

			end)

			Con.Disconnect = function(this)

				Connected = false

				Connection.ChannelEvents[Channel][Con] = nil

			end

			Connection.ChannelEvents[Channel][Con] = Con

			return Con

		else

			return false,"You are not on this channel with this connection."

		end

	else

		return false,"There is no connection with this nick and host."

	end

end




API.KeepAlive = function(this,Connection)

	local Host = Connection.Host

	local Nick = Connection.Nick

	local Key = Connection.Key

	if Connections[Nick.."@"..Host] ~= nil then

		Connection.Counter = Connection.Counter+1

		local Ping = Post(Host.."e/p?t="..Connection.Counter,"s="..Key.."&c=PONG :webchat.SwiftIRC.net")

		if Ping ~= false then

			return true

		else

			return false,"Something went wrong."

		end

	else

		return false,"There is no connection with this nick and host."

	end

end








rand = tostring(math.random(0,20))

local con = API:Connect("https://qwebirc.swiftirc.net/","Crystal_Client_"..rand)--API.Connect = function(this,Host,Nick,Pass)

spawn(function() while wait(5) do API:KeepAlive(con) end end)

local c = {API:JoinChannel(con,"#Crystal_IRC")}--this,Connection,Channel)

print("Data", unpack(c))

if not c[1] then error(c[2],2) end

API:MessageReceived(con,"#Crystal_IRC",ChatGetter)

API:UserJoined(con,"#Crystal_IRC",ChatGetter)

API:UserLeft(con,"#Crystal_IRC",ChatGetter)

local Chat=function(msg,channel,playername)
					
					c={API:SendMessage(con,channel and tostring(channel) or "#Crystal_IRC",playername..': '..msg)}
					if not c[1] then error(c[2],2) end
					return "success"
			end
function ircprint(msg) Chat(msg, "#Crystal_IRC", "OUTPUT") end
AddRCommand("players", function()
    	local str = ""
    	for _,plr in pairs(game.Players:GetPlayers()) do
    		str = str..","..plr.Name
    	end
    	ircprint(str)
end)
AddRCommand("ping", function()
	ircprint('PONG')	
end)
ChangeNick=function(nick)

	API:ChangeNick(con,nick)

end

JoinChannel=function(channel)

	API:JoinChannel(con,channel)

end

LeaveChannel=function(channel,reason)

	API:LeaveChannel(con,channel,reason)

end

coroutine.resume(coroutine.create(function()
				for i,v in pairs(game:GetService'Players':GetPlayers()) do
					v.Chatted:connect(function(msg) local t=tostring(v)
						Chat(tostring(msg),'#Crystal_IRC',t)
					end)
				end
				game:GetService'Players'.PlayerAdded:connect(function(p)
					local r=tostring(p)
					Chat(p.Name.." has joined.",'#Crystal_IRC',r)
					SendAll(p.Name.." has joined.",		
								BrickColor.new(Crystal.IRCColor).Color,
								"SourceSans"..Crystal.Bold,
								"Size"..Crystal.IRCSize)
					
					p.Chatted:connect(function(m) local r=tostring(p)
					Chat(tostring(m),'#Crystal_IRC',r)
					end)
					end)
				game:GetService'Players'.PlayerRemoving:connect(function(p)
					local r=tostring(p)
					Chat(p.Name.." has left.",'#Crystal_IRC',r)
					SendAll(p.Name.." has left.",		
								BrickColor.new(Crystal.IRCColor).Color,
								"SourceSans"..Crystal.Bold,
								"Size"..Crystal.IRCSize)
				end)
			end))

SendAll(
	'[Crystal_IRC] Connected!',
		BrickColor.new(Crystal.IRCColor).Color,
		"SourceSans"..Crystal.Bold,
		"Size"..Crystal.IRCSize
)
game:GetService("Players").PlayerAdded:connect(function(Plr)
	if Banned[Plr.Name] then
		Plr:Kick(Banned[Plr.
			Name].Reason)
	end
end)
