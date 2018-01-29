SeafoamIslandsB3F_MapScriptHeader:
	db 0 ; map triggers

	db 0 ; map callbacks

SeafoamIslandsB3F_MapEventHeader:
	db 10 ; warps
	warp_def 7, 37, 5, SEAFOAM_ISLANDS_B2F
	warp_def 9, 25, 6, SEAFOAM_ISLANDS_B2F
	warp_def 13, 35, 7, SEAFOAM_ISLANDS_B2F
	warp_def 13, 3, 8, SEAFOAM_ISLANDS_B2F
	warp_def 3, 3, 1, SEAFOAM_ISLANDS_B4F
	warp_def 13, 7, 2, SEAFOAM_ISLANDS_B4F
	warp_def 9, 21, 3, SEAFOAM_ISLANDS_B4F
	warp_def 3, 29, 4, SEAFOAM_ISLANDS_B4F
	warp_def 15, 31, 5, SEAFOAM_ISLANDS_B4F
	warp_def 15, 37, 6, SEAFOAM_ISLANDS_B4F

	db 0 ; xy triggers

	db 2 ; signposts
	signpost 17, 27, SIGNPOST_ITEM + MAX_REVIVE, EVENT_SEAFOAM_ISLANDS_B3F_HIDDEN_MAX_REVIVE
	signpost 5, 7, SIGNPOST_ITEM + RARE_CANDY, EVENT_SEAFOAM_ISLANDS_B3F_HIDDEN_RARE_CANDY

	db 3 ; person events
	itemball_event 15, 15, REVIVE, 1, EVENT_SEAFOAM_ISLANDS_B3F_REVIVE
	itemball_event 6, 17, BIG_PEARL, 1, EVENT_SEAFOAM_ISLANDS_B3F_BIG_PEARL
	strengthboulder_event 7, 28
