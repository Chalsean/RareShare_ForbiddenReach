-- Rare Share ForbiddenReach module v0.6.1 based on v0.6.1 core module

local AddonName, Addon = ... 

RareShare:LoadModule({
    ID = 2151,  -- UiMapID
    Title = Addon.Loc.Title,
    Colour = "|cff33937f",
    Events = {
		CHAT_MSG_MONSTER_YELL = function(self, text, name, ...)
			RareShare:CheckForbiddenReachEvent(text, name)
        end,
		CHAT_MSG_MONSTER_EMOTE = function(self, text, name, ...)
			RareShare:CheckForbiddenReachEvent(text, name)
        end,
		BEHAVIORAL_NOTIFICATION = function(self, text, name, ...)
			RareShare:CheckForbiddenReachEvent(text, name)
        end,
	},
    Rares = {
        [200681] = {Addon.Loc.Rares[200681], 1, false, false, 73150, 42.7, 60.9},
        [200610] = {Addon.Loc.Rares[200610], 1, false, false, 73118, 37.0, 31.8},
        [200537] = {Addon.Loc.Rares[200537], 1, false, false, 73095, 26.7, 41.4},
        [200717] = {Addon.Loc.Rares[200717], 1, false, false, 73152, 44.7, 79.1},
        [200721] = {Addon.Loc.Rares[200717], 1, false, false, 73154, 43.7, 90.7},
        [200579] = {Addon.Loc.Rares[200579], 1, false, false, 73100, 41.3, 14.3},
        [200885] = {Addon.Loc.Rares[200885], 1, false, false, 73222, 61.2, 58.1},
        [201181] = {Addon.Loc.Rares[201181], 1, false, false, 74283, 69.3, 46.2},
        [200956] = {Addon.Loc.Rares[200956], 1, false, false, 73366, 36.7, 11.8},
        [200978] = {Addon.Loc.Rares[200978], 1, false, false, 73385, 51.9, 59.7},
        [200600] = {Addon.Loc.Rares[200600], 1, false, false, 73117, 46.7, 19.2},
        [200904] = {Addon.Loc.Rares[200904], 1, false, false, 73229, 72.8, 67.5},
        [200911] = {Addon.Loc.Rares[200911], 1, false, false, 73225, 74.4, 54.6},
        [200584] = {Addon.Loc.Rares[200584], 1, false, false, 73111, 59.1, 49.7},
        [200960] = {Addon.Loc.Rares[200960], 1, false, false, 73367, 43.0, 84.5},
        [201013] = {Addon.Loc.Rares[201013], 1, false, false, 73409, 61.8, 30.0},
        -- Profession Rares
        [200740] = {Addon.Loc.Rares[200740], 1, false, false, 65579, 56.3, 39.0},
        [200730] = {Addon.Loc.Rares[200730], 1, false, false, 65579, 80.0, 58.8},
        [200742] = {Addon.Loc.Rares[200742], 1, false, false, 65579, 55.6, 51.5},
        [200261] = {Addon.Loc.Rares[200261], 1, false, false, 65579, 61.1, 26.8},
        [200739] = {Addon.Loc.Rares[200739], 1, false, false, 65579, 49.2, 41.7},
        [200620] = {Addon.Loc.Rares[200620], 1, false, false, 65579, 28.9, 57.0},
        [200737] = {Addon.Loc.Rares[200737], 1, false, false, 65579, 37.1, 47.1},
        [200738] = {Addon.Loc.Rares[200738], 1, false, false, 65579, 31.1, 53.4},
        [200622] = {Addon.Loc.Rares[200622], 1, false, false, 65579, 23.0, 67.0},
        [200619] = {Addon.Loc.Rares[200619], 1, false, false, 65579, 56.4, 59.1},
        [200725] = {Addon.Loc.Rares[200725], 1, false, false, 65579, 43.2, 48.8},
        [200722] = {Addon.Loc.Rares[200722], 1, false, false, 65579, 45.0, 36.5},
    },
	Config = function(self)
        if RareShareDB_ForbiddenReach                               == nil then RareShareDB_ForbiddenReach                               = {}    end
        if RareShareDB_ForbiddenReach["Config"]                     == nil then RareShareDB_ForbiddenReach["Config"]                     = {}    end

        if RareShareDB_ForbiddenReach["Config"]["Events"]           == nil then RareShareDB_ForbiddenReach["Config"]["Events"]           = true  end

        if RareShareDB_ForbiddenReach["Config"]["Sound"]            == nil then RareShareDB_ForbiddenReach["Config"]["Sound"]            = {}    end
        if RareShareDB_ForbiddenReach["Config"]["Sound"]["Events"]  == nil then RareShareDB_ForbiddenReach["Config"]["Sound"]["Events"]  = true  end

        if RareShareDB_ForbiddenReach["Config"]["TomTom"]           == nil then RareShareDB_ForbiddenReach["Config"]["TomTom"]           = {}    end
        if RareShareDB_ForbiddenReach["Config"]["TomTom"]["Events"] == nil then RareShareDB_ForbiddenReach["Config"]["TomTom"]["Events"] = true  end
    end,
})

function RareShare:CheckForbiddenReachEvent(inText, inSourceName)
    if (RareShareDB_ForbiddenReach["Config"]["Events"]) then
        local Module = RareShare:GetModule(1970)
        local Msg = Addon.Loc.Events.Prefix .. " "
        local X, Y, Rare, RareID, QuestID
		
		for id, text in pairs (Addon.Loc.Events) do
			if(string.find(inText, text)) then
				RareID = id
				Rare = Addon.Loc.Rares[RareID]
				QuestID = Module.Rares[RareID][5]
				x = Module.Rares[RareID][6]
				y = Module.Rares[RareID][7]
				break
			end
		end
        
        if Rare == nil then return end
        --if Rare == nil or QuestID == nil then return end		
		--if C_QuestLog.IsQuestFlaggedCompleted(QuestID) == true then return end
		
		Msg = Msg .. Rare .. " (" .. x .. ", " .. y .. ")"
		
		-- Set hyperlink
		local hyperlink = RareShare:GetPinHyperlink(x, y)
		if hyperlink ~= nil then
			Msg = Msg .. " " .. hyperlink
		end
        RareShare:Log(Msg, 3, 1970)
		
		-- Play standard Rare Share sound
        if (RareShareDB["Config"]["Sound"]["Master"] == true) then
            RareShare:PlaySound()
        end
		
		-- Set TomTom
        if (RareShare.TomTom == true) and (RareShareDB["Config"]["TomTom"]["Master"] == true) then
            RareShare:CreateTomTomWaypoint(x/100, y/100, Rare)
        end				
	end
end