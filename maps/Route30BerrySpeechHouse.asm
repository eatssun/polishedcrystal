Route30BerrySpeechHouse_MapScriptHeader:
	db 0 ; map triggers

	db 0 ; map callbacks

Route30BerrySpeechHouse_MapEventHeader:
	db 2 ; warps
	warp_def 7, 2, 1, ROUTE_30
	warp_def 7, 3, 1, ROUTE_30

	db 0 ; xy triggers

	db 0 ; signposts

	db 1 ; person events
	person_event SPRITE_POKEFAN_M, 3, 2, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, PokefanMScript_0x196d64, -1

PokefanMScript_0x196d64:
	faceplayer
	opentext
	checkevent EVENT_GOT_MULCH_FROM_ROUTE_30_HOUSE
	iftrue UnknownScript_0x196d79
	writetext UnknownText_0x196d82
	buttonsound
	verbosegiveitem MULCH
	iffalse UnknownScript_0x196d7d
	setevent EVENT_GOT_MULCH_FROM_ROUTE_30_HOUSE
UnknownScript_0x196d79:
	writetext UnknownText_0x196dec
	waitbutton
UnknownScript_0x196d7d:
	endtext

UnknownText_0x196d82:
	text "You know, #mon"
	line "eat Berries."

	para "They take time to"
	line "grow back when"
	cont "they're picked,"

	para "but using Mulch"
	line "on the soil really"
	cont "speeds that up!"

	para "Here. I'll share"
	line "some with you!"
	done

UnknownText_0x196dec:
	text "I buy top-quality"
	line "Mulch in Goldenrod"
	cont "City."
	done
