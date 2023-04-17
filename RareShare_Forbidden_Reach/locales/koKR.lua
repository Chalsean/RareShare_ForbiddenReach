local AddonName, Addon = ...

if (GetLocale() == "koKR") then
	Addon.Loc = {
		Title = "Forbidden Reach",
		Events = {
			["Prefix"] = "Event started for",
			--[183953] = "rises to serve Cartel Xy once more.",
		},
		Rares = {
			[200681] = "뼈선별자 마르와크 (내부)",
			[200610] = "두잘고르 (내부)(독소정화제)",
			[200537] = "가즈락세스 (수중 내부)",
			[200717] = "갈라카드",
			[200721] = "그루고스",
			[200579] = "이쉬이라",
			[200885] = "여군주 샤즈라 (내부)",
			[201181] = "광기의 눈 캐리 (내부)",
			[200956] = "우끼비어드",
			[200978] = "파이라크니스 (내부)",
			[200600] = "익사자 레이사",
			[200904] = "벨트락스 (내부) ",
			[200911] = "볼카나크 (내부)",
			[200584] = "사냥꾼 브라켄",
			[200960] = "감시자 엔트릭스 (내부)",
			[201013] = "앙그바르디",
			-- Profession Rares
			[200740] = "아그니 블레이즈후프",    -- 연금술
			[200730] = "파도장이 자르비스", -- 대장기술
			[200742] = "루트로크",           -- 요리
			[200261] = "마나의 저주",         -- 마법부여
			[200739] = "핌볼",            -- 기계공학
			[200620] = "꼬집쟁이 경",     -- 낚시
			[200737] = "아르칸트릭스",         -- 주문각인
			[200738] = "캉갈로",           -- 약초채집
			[200622] = "으르렁송곳니",          -- 가죽세공
			[200619] = "텍토누스",          -- 채광
			[200725] = "파우노스",            -- 무두질
			[200722] = "가리드",            -- 재봉술
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
end