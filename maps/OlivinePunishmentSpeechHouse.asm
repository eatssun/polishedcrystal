OlivinePunishmentSpeechHouse_MapScriptHeader:
	db 0 ; map triggers

	db 0 ; map callbacks

OlivinePunishmentSpeechHouse_MapEventHeader:
	db 2 ; warps
	warp_def 7, 2, 4, OLIVINE_CITY
	warp_def 7, 3, 4, OLIVINE_CITY

	db 0 ; xy triggers

	db 0 ; signposts

	db 2 ; person events
	person_event SPRITE_POKEFAN_M, 2, 1, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, OlivinePunishmentSpeechHouseDadText, -1
	person_event SPRITE_LASS, 5, 5, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, OlivinePunishmentSpeechHouseDaughterText, -1

OlivinePunishmentSpeechHouseDadText:
	text "Along the way to"
	line "Cianwood, there"

	para "are four deserted"
	line "islands."

	para "Bad kids are taken"
	line "to the islands as"
	cont "punishment!"
	done

OlivinePunishmentSpeechHouseDaughterText:
	text "Whenever I get in"
	line "trouble, Daddy"
	cont "always scares me."
	done
