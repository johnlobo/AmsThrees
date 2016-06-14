;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.5 #9498 (Mac OS X x86_64)
;--------------------------------------------------------
	.module numbers_big
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _G_numbers_big
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
_G_numbers_big:
	.db #0xE4	; 228
	.db #0xCC	; 204
	.db #0xF0	; 240
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xD8	; 216
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xD8	; 216
	.db #0xE4	; 228
	.db #0xD8	; 216
	.db #0xD8	; 216
	.db #0xE4	; 228
	.db #0xD8	; 216
	.db #0xD8	; 216
	.db #0xD8	; 216
	.db #0xD8	; 216
	.db #0xD8	; 216
	.db #0xD8	; 216
	.db #0xD8	; 216
	.db #0xCC	; 204
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xCC	; 204
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xE4	; 228
	.db #0xCC	; 204
	.db #0xF0	; 240
	.db #0xE4	; 228
	.db #0xCC	; 204
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xE4	; 228
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xD8	; 216
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xD8	; 216
	.db #0xE4	; 228
	.db #0xCC	; 204
	.db #0xF0	; 240
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xD8	; 216
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xE4	; 228
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xCC	; 204
	.db #0xF0	; 240
	.db #0xE4	; 228
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xCC	; 204
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xD8	; 216
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xD8	; 216
	.db #0xE4	; 228
	.db #0xCC	; 204
	.db #0xF0	; 240
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xD8	; 216
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xCC	; 204
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xCC	; 204
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xE4	; 228
	.db #0xCC	; 204
	.db #0xF0	; 240
	.db #0xE4	; 228
	.db #0xCC	; 204
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xE4	; 228
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xCC	; 204
	.db #0xD8	; 216
	.db #0xE4	; 228
	.db #0xD8	; 216
	.db #0xD8	; 216
	.db #0xE4	; 228
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xD8	; 216
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xD8	; 216
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xD8	; 216
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xF0	; 240
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xE4	; 228
	.db #0xCC	; 204
	.db #0xF0	; 240
	.db #0xE4	; 228
	.db #0xCC	; 204
	.db #0xF0	; 240
	.db #0xE4	; 228
	.db #0xCC	; 204
	.db #0xD8	; 216
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xD8	; 216
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xF0	; 240
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xE4	; 228
	.db #0xCC	; 204
	.db #0xF0	; 240
	.db #0xE4	; 228
	.db #0xCC	; 204
	.db #0xF0	; 240
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xD8	; 216
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xD8	; 216
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xE4	; 228
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xE4	; 228
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xCC	; 204
	.db #0xF0	; 240
	.db #0xE4	; 228
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xE4	; 228
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xE4	; 228
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xE4	; 228
	.db #0xF0	; 240
	.db #0xF0	; 240
	.db #0xE4	; 228
	.db #0xCC	; 204
	.db #0xF0	; 240
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xD8	; 216
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xD8	; 216
	.db #0xE4	; 228
	.db #0xCC	; 204
	.db #0xF0	; 240
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xD8	; 216
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xE4	; 228
	.db #0xCC	; 204
	.db #0xF0	; 240
	.db #0xE4	; 228
	.db #0xCC	; 204
	.db #0xF0	; 240
	.db #0xE4	; 228
	.db #0xCC	; 204
	.db #0xF0	; 240
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xD8	; 216
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xD8	; 216
	.db #0xCC	; 204
	.db #0xCC	; 204
	.db #0xD8	; 216
	.db #0xE4	; 228
	.db #0xCC	; 204
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xE4	; 228
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xE4	; 228
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xCC	; 204
	.db #0xF0	; 240
	.db #0xE4	; 228
	.db #0xD8	; 216
	.db #0xF0	; 240
	.db #0xE4	; 228
	.db #0xF0	; 240
	.db #0xF0	; 240
	.area _INITIALIZER
	.area _CABS (ABS)
