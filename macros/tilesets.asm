tilepal: MACRO
; used in gfx/tilesets/*_palette_map.asm
; vram bank, pals
x = \1 << OAM_TILE_BANK
rept _NARG +- 1
	db (x | PAL_BG_\2)
	shift
endr
ENDM

tilecoll: MACRO
	db COLL_\1, COLL_\2, COLL_\3, COLL_\4
ENDM
