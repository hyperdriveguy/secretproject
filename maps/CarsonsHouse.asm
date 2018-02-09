const_value set 2
	const CARSONSHOUSE_CARSONSMOM

CarsonsHouse_MapScriptHeader:
.SceneScripts:
	db 0

.MapCallbacks:
	db 0

CarsonsMom:
	jumptextfaceplayer CarsonsMomText

CarsonsHouseBookshelf:
	jumpstd magazinebookshelf
	
CarsonsHousePC:
	opentext
	writetext CarsonsHousePCText
	waitbutton
	closetext
	end

CarsonsHousePCText:
	text "The screen reads:"
	
	para "Property of"
	line "<YOU>"
	
	para "ENTER PASSWORD"
	done

CarsonsMomText:
	text "You're <PLAYER>,"
	line "right?"
	
	para "<YOU> has been"
	line "looking for you."
	
	para "I think he wanted"
	line "ask you something."
	done

CarsonsHouse_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def 4, 11, 2, NEW_BARK_TOWN
	warp_def 5, 11, 2, NEW_BARK_TOWN

.CoordEvents:
	db 0

.BGEvents:
	db 3
	bg_event 0, 1, BGEVENT_READ, CarsonsHouseBookshelf
	bg_event 1, 1, BGEVENT_READ, CarsonsHouseBookshelf
	bg_event 6, 1, BGEVENT_UP, CarsonsHousePC

.ObjectEvents:
	db 1
	object_event 2, 6, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CarsonsMom, -1
