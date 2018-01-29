SaffronOrreSpeechHouse_MapScriptHeader:
	db 0 ; map triggers

	db 0 ; map callbacks

SaffronOrreSpeechHouse_MapEventHeader:
	db 2 ; warps
	warp_def 7, 2, 17, SAFFRON_CITY
	warp_def 7, 3, 17, SAFFRON_CITY

	db 0 ; xy triggers

	db 0 ; signposts

	db 2 ; person events
	person_event SPRITE_SILPH_EMPLOYEE, 4, 2, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, SaffronOrreSpeechHouseSilphEmployeeText, -1
	person_event SPRITE_COOLTRAINER_M, 4, 5, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_COMMAND, jumptextfaceplayer, SaffronOrreSpeechHouseCooltrainerMText, -1

SaffronOrreSpeechHouseSilphEmployeeText:
	text "I heard about a"
	line "method to seal off"
	cont "a #mon's heart"

	para "and force them to"
	line "attack people."

	para "How could anyone"
	line "do such a horrible"
	cont "thing to #mon?!"
	done

SaffronOrreSpeechHouseCooltrainerMText:
	text "We just got back"
	line "from seeing a"

	para "friend in another"
	line "region."

	para "They had a lot of"
	line "trouble from two"
	cont "criminal gangs,"

	para "but a talented"
	line "trainer stepped up"
	cont "to save them."
	done
