;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.5 #9498 (Mac OS X x86_64)
;--------------------------------------------------------
	.module border
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _g_tile_border_7
	.globl _g_tile_border_6
	.globl _g_tile_border_5
	.globl _g_tile_border_4
	.globl _g_tile_border_3
	.globl _g_tile_border_2
	.globl _g_tile_border_1
	.globl _g_tile_border_0
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
_g_tile_border_0:
	.db #0xA4	; 164
	.db #0x1C	; 28
	.db #0x58	; 88	'X'
	.db #0x3C	; 60
	.db #0x1C	; 28
	.db #0xB4	; 180
	.db #0x1C	; 28
	.db #0x78	; 120	'x'
_g_tile_border_1:
	.db #0x3C	; 60
	.db #0x78	; 120	'x'
	.db #0x3C	; 60
	.db #0xB4	; 180
	.db #0x78	; 120	'x'
	.db #0x3C	; 60
	.db #0xB4	; 180
	.db #0x3C	; 60
_g_tile_border_2:
	.db #0x3C	; 60
	.db #0x78	; 120	'x'
	.db #0x3C	; 60
	.db #0xB4	; 180
	.db #0x78	; 120	'x'
	.db #0x3C	; 60
	.db #0xB4	; 180
	.db #0x3C	; 60
_g_tile_border_3:
	.db #0xB4	; 180
	.db #0x2C	; 44
	.db #0x78	; 120	'x'
	.db #0x2C	; 44
	.db #0x3C	; 60
	.db #0xA4	; 164
	.db #0x2C	; 44
	.db #0x58	; 88	'X'
_g_tile_border_4:
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xF0	; 240
	.db #0xF0	; 240
_g_tile_border_5:
	.db #0x3C	; 60
	.db #0x50	; 80	'P'
	.db #0x3C	; 60
	.db #0x50	; 80	'P'
	.db #0x3C	; 60
	.db #0x50	; 80	'P'
	.db #0x3C	; 60
	.db #0x50	; 80	'P'
_g_tile_border_6:
	.db #0xA0	; 160
	.db #0x3C	; 60
	.db #0xA0	; 160
	.db #0x3C	; 60
	.db #0xA0	; 160
	.db #0x3C	; 60
	.db #0xA0	; 160
	.db #0x3C	; 60
_g_tile_border_7:
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x3C	; 60
	.db #0x3C	; 60
	.area _INITIALIZER
	.area _CABS (ABS)
