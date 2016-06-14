;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.5 #9498 (Mac OS X x86_64)
;--------------------------------------------------------
	.module video
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _cpct_getScreenPtr
	.globl _cpct_setPALColour
	.globl _cpct_setPalette
	.globl _cpct_fw2hw
	.globl _cpct_setVideoMode
	.globl _cpct_drawSolidBox
	.globl _cpct_px2byteM0
	.globl _cpct_memset
	.globl _cpct_disableFirmware
	.globl _G_graphics_palette
	.globl _setUpVideo
	.globl _clearScreen
	.globl _clearWindow
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
;src/video/video.c:34: void setUpVideo() {
;	---------------------------------
; Function setUpVideo
; ---------------------------------
_setUpVideo::
;src/video/video.c:37: cpct_disableFirmware();
	call	_cpct_disableFirmware
;src/video/video.c:39: cpct_fw2hw(G_graphics_palette, 16);
	ld	hl,#0x0010
	push	hl
	ld	hl,#_G_graphics_palette
	push	hl
	call	_cpct_fw2hw
;src/video/video.c:40: cpct_setPalette  (G_graphics_palette, 16);
	ld	hl,#0x0010
	push	hl
	ld	hl,#_G_graphics_palette
	push	hl
	call	_cpct_setPalette
;src/video/video.c:41: cpct_setBorder(G_graphics_palette[5]);
	ld	hl, #_G_graphics_palette + 5
	ld	b,(hl)
	push	bc
	inc	sp
	ld	a,#0x10
	push	af
	inc	sp
	call	_cpct_setPALColour
;src/video/video.c:42: cpct_setVideoMode(0);
	ld	l,#0x00
	call	_cpct_setVideoMode
;src/video/video.c:43: clearScreen();
	call	_clearScreen
	ret
_G_graphics_palette:
	.db #0x01	; 1
	.db #0x18	; 24
	.db #0x14	; 20
	.db #0x06	; 6
	.db #0x1A	; 26
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x0A	; 10
	.db #0x0C	; 12
	.db #0x0E	; 14
	.db #0x10	; 16
	.db #0x12	; 18
	.db #0x16	; 22
	.db #0x18	; 24
	.db #0x10	; 16
;src/video/video.c:55: void clearScreen() {
;	---------------------------------
; Function clearScreen
; ---------------------------------
_clearScreen::
;src/video/video.c:57: cpct_memset(CPCT_VMEM_START, cpct_px2byteM0(5,5), 0x4000);
	ld	hl,#0x0505
	push	hl
	call	_cpct_px2byteM0
	ld	b,l
	ld	hl,#0x4000
	push	hl
	push	bc
	inc	sp
	ld	h, #0xC0
	push	hl
	call	_cpct_memset
	ret
;src/video/video.c:68: void clearWindow(u8 xPos, u8 yPos, u8 width, u8 height) {
;	---------------------------------
; Function clearWindow
; ---------------------------------
_clearWindow::
;src/video/video.c:70: u8* pvideo = cpct_getScreenPtr(CPCT_VMEM_START, xPos, yPos);
	ld	hl, #3+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #3+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
;src/video/video.c:71: cpct_drawSolidBox(pvideo, cpct_px2byteM0(5,5), width, height);
	push	hl
	ld	hl,#0x0505
	push	hl
	call	_cpct_px2byteM0
	ld	d,l
	pop	bc
	ld	hl, #5+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #5+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	push	de
	inc	sp
	push	bc
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
