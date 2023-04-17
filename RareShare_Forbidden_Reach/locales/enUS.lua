local AddonName, Addon = ...

--if (GetLocale() == "enUS") then
	Addon.Loc = {
		Title = "Forbidden Reach",
		Events = {
			["Prefix"] = "Event started for",
			--[183953] = "rises to serve Cartel Xy once more.",
		},
		Rares = {
			[200681] = "Bonesifter Marwak",
			[200610] = "Duzalgor",
			[200537] = "Gahz'raxes",
			[200717] = "Galakhad",
			[200721] = "Grugoth the Hullcrusher",
			[200579] = "Ishyra",
			[200885] = "Lady Shaz'ra",
			[201181] = "Mad-Eye Carrey",
			[200956] = "Ookbeard",
			[200978] = "Pyrachniss",
			[200600] = "Reisa the Drowned",
			[200904] = "Veltrax",
			[200911] = "Volcanakk",
			[200584] = "Vraken the Hunter",
			[200960] = "Warden Entrix",
			[201013] = "Wyrmslayer Angvardi",
			-- Profession Rares
			[200740] = "Agni Blazehoof",    -- Alchemy
			[200730] = "Tidesmith Zarviss", -- Blacksmithing
			[200742] = "Luttrok",           -- Cooking
			[200261] = "Manathema",         -- Enchanting
			[200739] = "Fimbol",            -- Engineering
			[200620] = "Sir Pinchalot",     -- Fishing
			[200737] = "Arcantrix",         -- Inscription
			[200738] = "Kangalo",           -- Jewelcrafting
			[200622] = "Snarfang",          -- Leatherworking
			[200619] = "Tectonus",          -- Mining
			[200725] = "Faunos",            -- Skinning
			[200722] = "Gareed",            -- Tailoring
		},
		Config = {
			["Events"] = {
				"Enable Event Announcements",
				"Enables/Disables notifying of newly spawned events",
			},
			["EventSounds"] = {
				"Enable Event Sounds",
				"Enables/Disables sounds for newly spawned events"
			},
			["EventWaypoints"] = {
				"Enable Event TomTom Waypoints",
				"Enables/Disables automatic TomTom waypoints to newly spawned events",
			}
		},
	}
--end