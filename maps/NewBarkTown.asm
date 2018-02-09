const_value set 2
	const NEWBARKTOWN_TEACHER
	const NEWBARKTOWN_FISHER

NewBarkTown_MapScriptHeader:
.SceneScripts:
	db 0

.MapCallbacks:
	db 0


NewBarkTown_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 3
	warp_def 17, 7, 1, KRISS_HOUSE_1F
	warp_def 7, 19, 1, CARSONS_HOUSE
	warp_def 5, 9, 1, OLD_LADYS_HOUSE

.CoordEvents:
	db 0

.BGEvents:
	db 0

.ObjectEvents:
	db 3
	object_event 8, 13, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 19, 18, SPRITE_FISHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
