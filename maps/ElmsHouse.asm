const_value set 2
	const ELMSHOUSE_OLD_LADY

ElmsHouse_MapScriptHeader:
.SceneScripts:
	db 0

.MapCallbacks:
	db 0

OldLadyScript:
	faceplayer
	opentext
	writetext OldLadyShouldIHealText
	yesorno
	iffalse .HaveANiceDay
	closetext
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	playmusic MUSIC_HEAL
	special TrainerRankings_Healings
	special HealParty
	pause 60
	special Special_FadeInQuickly
	special RestartMapMusic
	opentext
	
.HaveANiceDay:
	writetext OldLadayHaveANiceDayText
	waitbutton
	closetext
	end

ElmsHouseBookshelf:
	jumpstd difficultbookshelf
	
ElmsHouseOldTVShowScript:
	jumptext ElmsHouseOldTVShowText

OldLadyShouldIHealText:
	text "Well hello there"
	line "<PLAYER>!"
	
	para "Your #MON look"
	line "tired."
	
	para "Do you want me to"
	line "heal them for you?"
	done
	
OldLadayHaveANiceDayText:
	text "You have a good"
	line "one sweetie."
	done
	
ElmsHouseOldTVShowText:
	text "It's a really old"
	line "television show."
	done

ElmsHouse_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def 2, 7, 3, NEW_BARK_TOWN
	warp_def 3, 7, 3, NEW_BARK_TOWN

.CoordEvents:
	db 0

.BGEvents:
	db 3
	bg_event 4, 1, BGEVENT_READ, ElmsHouseOldTVShowScript
	bg_event 6, 1, BGEVENT_READ, ElmsHouseBookshelf
	bg_event 7, 1, BGEVENT_READ, ElmsHouseBookshelf

.ObjectEvents:
	db 1
	object_event 2, 4, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, OldLadyScript, -1
