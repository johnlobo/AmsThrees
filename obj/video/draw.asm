;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.5 #9498 (Mac OS X x86_64)
;--------------------------------------------------------
	.module draw
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _clearGameScreen
	.globl _clearWindow
	.globl _cpct_getRandom_mxor_u8
	.globl _cpct_getScreenPtr
	.globl _cpct_drawSolidBox
	.globl _cpct_drawSprite
	.globl _cpct_px2byteM0
	.globl _drawFrame
	.globl _drawStar
	.globl _drawStars
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_drawStars_starsCycles_1_119:
	.ds 1
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
;src/video/draw.c:97: static u8 starsCycles = 1;
	ld	iy,#_drawStars_starsCycles_1_119
	ld	0 (iy),#0x01
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;src/video/draw.c:24: void clearGameScreen() {
;	---------------------------------
; Function clearGameScreen
; ---------------------------------
_clearGameScreen::
;src/video/draw.c:26: u8* pvideo = cpct_getScreenPtr(CPCT_VMEM_START, MIN_X, MIN_Y);
	ld	hl,#0x0509
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/video/draw.c:28: cpct_drawSolidBox(pvideo, 0, MAX_X - MIN_X + 1, MAX_Y - MIN_Y);
	ld	hl,#0xF144
	push	hl
	xor	a, a
	push	af
	inc	sp
	push	bc
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
	ret
;src/video/draw.c:33: void drawFrame(u8 x1, u8 y1, u8 x2, u8 y2) {
;	---------------------------------
; Function drawFrame
; ---------------------------------
_drawFrame::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-9
	add	hl,sp
	ld	sp,hl
;src/video/draw.c:38: frame_w = x2 - x1;
	ld	a,6 (ix)
	sub	a, 4 (ix)
	ld	b,a
	ld	-1 (ix),b
;src/video/draw.c:41: clearWindow(x1, y1, x2 - x1, y2 - y1);
	ld	a,7 (ix)
	sub	a, 5 (ix)
	ld	d,a
	push	de
	inc	sp
	push	bc
	inc	sp
	ld	h,5 (ix)
	ld	l,4 (ix)
	push	hl
	call	_clearWindow
	pop	af
	pop	af
;src/video/draw.c:44: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, x1, y1);
	ld	h,5 (ix)
	ld	l,4 (ix)
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/video/draw.c:45: cpct_drawSprite(g_tile_border_0,  pvideo, 2, 4);
	ld	e, c
	ld	d, b
	push	bc
	ld	hl,#0x0402
	push	hl
	push	de
	ld	hl,#_g_tile_border_0
	push	hl
	call	_cpct_drawSprite
	pop	bc
;src/video/draw.c:49: for (x = x1 + 2; x < (x2 - 2); x = x + 2) {
	ld	a,4 (ix)
	add	a, #0x02
	ld	-2 (ix), a
	ld	-3 (ix),a
	ld	de,#_g_tile_border_4+0
00105$:
	ld	a, 6 (ix)
	ld	h, #0x00
	add	a,#0xFE
	ld	-5 (ix),a
	ld	a,h
	adc	a,#0xFF
	ld	-4 (ix),a
	ld	l,-3 (ix)
	ld	h,#0x00
;src/video/draw.c:51: cpct_drawSprite(g_tile_border_4,  pvideo + (x - x1), 2, 4);
	ld	a,4 (ix)
	ld	-7 (ix),a
	ld	-6 (ix),#0x00
;src/video/draw.c:49: for (x = x1 + 2; x < (x2 - 2); x = x + 2) {
	ld	a,l
	sub	a, -5 (ix)
	ld	a,h
	sbc	a, -4 (ix)
	jp	PO, 00142$
	xor	a, #0x80
00142$:
	jp	P,00101$
;src/video/draw.c:51: cpct_drawSprite(g_tile_border_4,  pvideo + (x - x1), 2, 4);
	ld	a,l
	sub	a, -7 (ix)
	ld	l,a
	ld	a,h
	sbc	a, -6 (ix)
	ld	h,a
	add	hl,bc
	push	hl
	pop	iy
	push	bc
	push	de
	ld	hl,#0x0402
	push	hl
	push	iy
	ld	hl,#_g_tile_border_4
	push	hl
	call	_cpct_drawSprite
	pop	de
	pop	bc
;src/video/draw.c:49: for (x = x1 + 2; x < (x2 - 2); x = x + 2) {
	inc	-3 (ix)
	inc	-3 (ix)
	jr	00105$
00101$:
;src/video/draw.c:55: cpct_drawSprite(g_tile_border_1,  pvideo + (frame_w - 2), 2,4);
	ld	e,-1 (ix)
	ld	d,#0x00
	dec	de
	dec	de
	ld	l, e
	ld	h, d
	add	hl,bc
	ld	c, l
	ld	b, h
	push	de
	ld	hl,#0x0402
	push	hl
	push	bc
	ld	hl,#_g_tile_border_1
	push	hl
	call	_cpct_drawSprite
	pop	de
;src/video/draw.c:59: for (x = y1 + 4; x < (y2 - 4); x = x + 4) {
	ld	a,5 (ix)
	add	a, #0x04
	ld	-3 (ix),a
00108$:
	ld	c,7 (ix)
	ld	b,#0x00
	ld	a,c
	add	a,#0xFC
	ld	c,a
	ld	a,b
	adc	a,#0xFF
	ld	b,a
	ld	a, -3 (ix)
	ld	h, #0x00
	sub	a, c
	ld	a,h
	sbc	a, b
	jp	PO, 00143$
	xor	a, #0x80
00143$:
	jp	P,00102$
;src/video/draw.c:61: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, x1, x);
	push	de
	ld	h,-3 (ix)
	ld	l,4 (ix)
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	pop	de
;src/video/draw.c:62: cpct_drawSprite(g_tile_border_5,  pvideo, 2, 4);
	push	bc
	pop	iy
	push	bc
	push	de
	ld	hl,#0x0402
	push	hl
	push	iy
	ld	hl,#_g_tile_border_5
	push	hl
	call	_cpct_drawSprite
	pop	de
;src/video/draw.c:63: cpct_drawSprite(g_tile_border_6,  pvideo + (frame_w - 2), 2, 4);
	pop	hl
	add	hl,de
	ld	c, l
	ld	b, h
	push	de
	ld	hl,#0x0402
	push	hl
	push	bc
	ld	hl,#_g_tile_border_6
	push	hl
	call	_cpct_drawSprite
	pop	de
;src/video/draw.c:59: for (x = y1 + 4; x < (y2 - 4); x = x + 4) {
	inc	-3 (ix)
	inc	-3 (ix)
	inc	-3 (ix)
	inc	-3 (ix)
	jr	00108$
00102$:
;src/video/draw.c:67: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, x1, y2 - 4);
	ld	a,7 (ix)
	add	a,#0xFC
	ld	b,a
	push	de
	push	bc
	inc	sp
	ld	a,4 (ix)
	push	af
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
	pop	de
;src/video/draw.c:70: cpct_drawSprite(g_tile_border_2,  pvideo, 2, 4);
	inc	sp
	inc	sp
	push	bc
	push	bc
	push	de
	ld	hl,#0x0402
	push	hl
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	push	hl
	ld	hl,#_g_tile_border_2
	push	hl
	call	_cpct_drawSprite
	pop	de
	pop	bc
;src/video/draw.c:74: for (x = x1 + 2; x < (x2 - 2); x = x + 2) {
	ld	a,-2 (ix)
	ld	-9 (ix),a
00111$:
	ld	l,-9 (ix)
	ld	h,#0x00
	ld	a,l
	sub	a, -5 (ix)
	ld	a,h
	sbc	a, -4 (ix)
	jp	PO, 00144$
	xor	a, #0x80
00144$:
	jp	P,00103$
;src/video/draw.c:76: cpct_drawSprite(g_tile_border_7,  pvideo + (x - x1), 2, 4);
	ld	a,l
	sub	a, -7 (ix)
	ld	l,a
	ld	a,h
	sbc	a, -6 (ix)
	ld	h,a
	add	hl,bc
	push	hl
	pop	iy
	push	bc
	push	de
	ld	hl,#0x0402
	push	hl
	push	iy
	ld	hl,#_g_tile_border_7
	push	hl
	call	_cpct_drawSprite
	pop	de
	pop	bc
;src/video/draw.c:74: for (x = x1 + 2; x < (x2 - 2); x = x + 2) {
	inc	-9 (ix)
	inc	-9 (ix)
	jr	00111$
00103$:
;src/video/draw.c:80: cpct_drawSprite(g_tile_border_3,  pvideo + (frame_w - 2), 2, 4);
	ld	l, c
	ld	h, b
	add	hl,de
	ld	c, l
	ld	b, h
	ld	hl,#0x0402
	push	hl
	push	bc
	ld	hl,#_g_tile_border_3
	push	hl
	call	_cpct_drawSprite
	ld	sp, ix
	pop	ix
	ret
;src/video/draw.c:84: void drawStar(u8 color1, u8 color2, u8 xPos, u8 yPos) {
;	---------------------------------
; Function drawStar
; ---------------------------------
_drawStar::
;src/video/draw.c:86: u8* pvideo = cpct_getScreenPtr(CPCT_VMEM_START, xPos, yPos);
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
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
;src/video/draw.c:87: cpct_drawSolidBox(pvideo, cpct_px2byteM0(color1, color2), 1, 1);
	push	hl
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
	call	_cpct_px2byteM0
	ld	d,l
	pop	bc
	ld	hl,#0x0101
	push	hl
	push	de
	inc	sp
	push	bc
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
	ret
;src/video/draw.c:92: void drawStars(Coords *stars) {
;	---------------------------------
; Function drawStars
; ---------------------------------
_drawStars::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	dec	sp
;src/video/draw.c:99: for (x = 0; x < MAX_STARS + MAX_COLOR_STARS; x++) {
	ld	-3 (ix),#0x00
00114$:
;src/video/draw.c:105: drawStar(1, 0, stars[x].xPos, stars[x].yPos);
	ld	l,-3 (ix)
	ld	h,#0x00
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	a,4 (ix)
	add	a, c
	ld	c,a
	ld	a,5 (ix)
	adc	a, b
	ld	b,a
	ld	a,(bc)
	ld	-1 (ix),a
	ld	e, c
	ld	d, b
	inc	de
	ld	a,(de)
	ld	-2 (ix),a
;src/video/draw.c:101: if (x < MAX_STARS) {
	ld	a,-3 (ix)
	sub	a, #0x08
	jr	NC,00109$
;src/video/draw.c:103: if (starsCycles == 2) {
	ld	a,(#_drawStars_starsCycles_1_119 + 0)
	sub	a, #0x02
	jr	NZ,00104$
;src/video/draw.c:105: drawStar(1, 0, stars[x].xPos, stars[x].yPos);
	push	bc
	ld	h,-2 (ix)
	ld	l,-1 (ix)
	push	hl
	ld	hl,#0x0001
	push	hl
	call	_drawStar
	pop	af
	pop	af
	pop	bc
;src/video/draw.c:106: stars[x].xPos--;
	ld	a,(bc)
	ld	e,a
	dec	e
	ld	a,e
	ld	(bc),a
;src/video/draw.c:108: if (stars[x].xPos < MIN_X) {
	ld	a,e
	sub	a, #0x09
	jr	NC,00115$
;src/video/draw.c:110: stars[x].xPos = MAX_X;
	ld	a,#0x4C
	ld	(bc),a
	jr	00115$
00104$:
;src/video/draw.c:116: drawStar(0, 1, stars[x].xPos, stars[x].yPos);
	ld	h,-2 (ix)
	ld	l,-1 (ix)
	push	hl
	ld	hl,#0x0100
	push	hl
	call	_drawStar
	pop	af
	pop	af
	jr	00115$
00109$:
;src/video/draw.c:122: pvideo = cpct_getScreenPtr(CPCT_VMEM_START,  stars[x].xPos, stars[x].yPos);
	push	bc
	push	de
	ld	h,-2 (ix)
	ld	l,-1 (ix)
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	pop	de
	pop	bc
;src/video/draw.c:124: cpct_drawSprite(G_bluestar, pvideo, COLOR_STAR_W, COLOR_STAR_H);
	push	hl
	pop	iy
	push	bc
	push	de
	ld	hl,#0x0702
	push	hl
	push	iy
	ld	hl,#_G_bluestar
	push	hl
	call	_cpct_drawSprite
	pop	de
	pop	bc
;src/video/draw.c:126: stars[x].xPos--;
	ld	a,(bc)
	add	a,#0xFF
	ld	-2 (ix), a
	ld	(bc),a
;src/video/draw.c:128: if (stars[x].xPos < MIN_X) {
	ld	a,-2 (ix)
	sub	a, #0x09
	jr	NC,00115$
;src/video/draw.c:130: stars[x].xPos = MAX_X - COLOR_STAR_W;
	ld	a,#0x4A
	ld	(bc),a
;src/video/draw.c:131: stars[x].yPos = MIN_Y + cpct_rand() % (MAX_Y - COLOR_STAR_H - MIN_Y);
	push	de
	call	_cpct_getRandom_mxor_u8
	ld	b,l
	ld	a,#0xEA
	push	af
	inc	sp
	push	bc
	inc	sp
	call	__moduchar
	pop	af
	pop	de
	ld	a,l
	add	a, #0x05
	ld	(de),a
00115$:
;src/video/draw.c:99: for (x = 0; x < MAX_STARS + MAX_COLOR_STARS; x++) {
	inc	-3 (ix)
	ld	a,-3 (ix)
	sub	a, #0x0B
	jp	C,00114$
;src/video/draw.c:140: if (starsCycles++ == 2) starsCycles = 1;
	ld	hl,#_drawStars_starsCycles_1_119 + 0
	ld	c, (hl)
	ld	hl, #_drawStars_starsCycles_1_119+0
	inc	(hl)
	ld	a,c
	sub	a, #0x02
	jr	NZ,00116$
	ld	hl,#_drawStars_starsCycles_1_119 + 0
	ld	(hl), #0x01
00116$:
	ld	sp, ix
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
