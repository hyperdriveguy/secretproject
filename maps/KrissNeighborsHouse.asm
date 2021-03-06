const_value set 2
	const CARSONSHOUSE_CARSONSMOM

KrissNeighborsHouse_MapScriptHeader:
.SceneScripts:
	db 0

.MapCallbacks:
	db 0

CarsonsMom:
	jumptextfaceplayer CarsonsMomText

CarsonsHouseBookshelf:
	jumpstd magazinebookshelf

CarsonsMomText:
	text "PIKACHU is an"
	line "evolved #MON."

	para "I was amazed by"
	line "PROF.ELM's find-"
	cont "ings."

	para "He's so famous for"
	line "his research on"
	cont "#MON evolution."

	para "…sigh…"

	para "I wish I could be"
	line "a researcher like"
	cont "him…"
	done

KrissNeighborsHouse_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def 2, 7, 2, NEW_BARK_TOWN
	warp_def 3, 7, 2, NEW_BARK_TOWN

.CoordEvents:
	db 0

.BGEvents:
	db 2
	bg_event 0, 1, BGEVENT_READ, CarsonsHouseBookshelf
	bg_event 1, 1, BGEVENT_READ, CarsonsHouseBookshelf

.ObjectEvents:
	db 1
	object_event 2, 6, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CarsonsMom, -1
