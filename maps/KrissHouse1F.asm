const_value set 2
	const KRISSHOUSE1F_MOM

KrissHouse1F_MapScriptHeader:
.SceneScripts:
	db 2
	scene_script .DummyScene0
	scene_script .DummyScene1

.MapCallbacks:
	db 0

.DummyScene0:
	end

.DummyScene1:
	end


TVScript:
	jumptext TVText

StoveScript:
	jumptext StoveText

SinkScript:
	jumptext SinkText

FridgeScript:
	jumptext FridgeText

StoveText:
	text "Mom's specialty!"

	para "CINNABAR VOLCANO"
	line "BURGER!"
	done

SinkText:
	text "The sink is spot-"
	line "less. Mom likes it"
	cont "clean."
	done

FridgeText:
	text "Let's see what's"
	line "in the fridge…"

	para "FRESH WATER and"
	line "tasty LEMONADE!"
	done

TVText:
	text "There's a show on"
	line "TV: two guys are"
	cont "riding on a"
	cont "scooter."
	
	para "…"
	
	para "And then everyone"
	line "else is too."
	done

KrissHouse1F_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 3
	warp_def 6, 7, 1, NEW_BARK_TOWN
	warp_def 7, 7, 1, NEW_BARK_TOWN
	warp_def 9, 0, 1, KRISS_HOUSE_2F

.CoordEvents:
	db 0; 2
	;coord_event 8, 4, 0, UnknownScript_0x7a4d8
	;coord_event 9, 4, 0, UnknownScript_0x7a4db

.BGEvents:
	db 4
	bg_event 0, 1, BGEVENT_READ, StoveScript
	bg_event 1, 1, BGEVENT_READ, SinkScript
	bg_event 2, 1, BGEVENT_READ, FridgeScript
	bg_event 4, 1, BGEVENT_READ, TVScript

.ObjectEvents:
	db 1
	object_event 7, 4, SPRITE_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
