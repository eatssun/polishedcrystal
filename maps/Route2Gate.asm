Route2Gate_MapScriptHeader:
	db 0 ; map triggers

	db 0 ; map callbacks

Route2Gate_MapEventHeader:
	db 4 ; warps
	warp_def 0, 4, 2, ROUTE_2_NORTH
	warp_def 0, 5, 3, ROUTE_2_NORTH
	warp_def 7, 4, 1, ROUTE_2_SOUTH
	warp_def 7, 5, 1, ROUTE_2_SOUTH

	db 0 ; xy triggers

	db 0 ; signposts

	db 1 ; person events
	person_event SPRITE_SCIENTIST, 4, 6, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_COMMAND, jumptextfaceplayer, UnknownText_0x9b955, -1

UnknownText_0x9b955:
	text "Are you <PLAYER>?"

	para "I work as Prof."
	line "Oak's Aide."

	para "I had no idea that"
	line "you were out here."

	para "Prof.Oak's Lab is"
	line "nearby in Pallet"
	cont "Town."
	done
