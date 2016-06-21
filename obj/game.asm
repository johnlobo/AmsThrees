;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.5 #9498 (Mac OS X x86_64)
;--------------------------------------------------------
	.module game
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _checkKeyboardMenu
	.globl _drawMenu
	.globl _game
	.globl _drawScoreBoard
	.globl _setHighScore
	.globl _getName
	.globl _drawScore
	.globl _printCells
	.globl _rotateCellsDown
	.globl _rotateCellsUp
	.globl _rotateCellsRight
	.globl _rotateCellsLeft
	.globl _initGame
	.globl _initCells
	.globl _addRandomCell
	.globl _addRandomCellTurn
	.globl _anyMovesLeft
	.globl _anyOfThisInAdjacents
	.globl _getAdjacents
	.globl _initAdjacents
	.globl _countZeroes
	.globl _delay
	.globl _renewTileBag
	.globl _myInterruptHandler
	.globl _redefineKey
	.globl _waitKeyUp
	.globl _wait4UserKeypress
	.globl _drawFrame
	.globl _drawFallingText
	.globl _drawText
	.globl _drawNumber
	.globl _clearScreen
	.globl _cpct_restoreState_mxor_u8
	.globl _cpct_setSeed_mxor
	.globl _cpct_getRandom_mxor_u8
	.globl _cpct_akp_stop
	.globl _cpct_akp_musicPlay
	.globl _cpct_akp_musicInit
	.globl _cpct_getScreenPtr
	.globl _cpct_waitVSYNC
	.globl _cpct_drawSolidBox
	.globl _cpct_drawSprite
	.globl _cpct_px2byteM0
	.globl _cpct_isAnyKeyPressed_f
	.globl _cpct_isKeyPressed
	.globl _cpct_scanKeyboard_f
	.globl _cpct_memset
	.globl _cpct_setInterruptHandler
	.globl _cpct_disableFirmware
	.globl _sprintf
	.globl _playing
	.globl _newNameHighScore
	.globl _maxTiles
	.globl _currentTile
	.globl _tileBag
	.globl _aux_txt
	.globl _selectedOption
	.globl _nextTile
	.globl _nameHallOfFame
	.globl _scoreHallOfFame
	.globl _score
	.globl _adjacents
	.globl _cells
	.globl _keys
	.globl _tiles
	.globl _scores
	.globl _values
	.globl _initialization
	.globl _threes
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_keys::
	.ds 14
_cells::
	.ds 16
_adjacents::
	.ds 5
_score::
	.ds 4
_scoreHallOfFame::
	.ds 32
_nameHallOfFame::
	.ds 120
_nextTile::
	.ds 1
_selectedOption::
	.ds 1
_aux_txt::
	.ds 2
_tileBag::
	.ds 12
_currentTile::
	.ds 1
_maxTiles::
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_newNameHighScore::
	.ds 15
_playing::
	.ds 1
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
;src/game.c:55: void myInterruptHandler() {
;	---------------------------------
; Function myInterruptHandler
; ---------------------------------
_myInterruptHandler::
;src/game.c:56: if (playing) {
	ld	a,(#_playing + 0)
	or	a, a
	ret	Z
;src/game.c:58: cpct_akp_musicPlay();
	jp  _cpct_akp_musicPlay
_values:
	.dw #0x0000
	.dw #0x0001
	.dw #0x0002
	.dw #0x0003
	.dw #0x0006
	.dw #0x000C
	.dw #0x0018
	.dw #0x0030
	.dw #0x0060
	.dw #0x00C0
	.dw #0x0180
	.dw #0x0300
	.dw #0x0600
	.dw #0x0C00
	.dw #0x1800
_scores:
	.byte #0x00,#0x00,#0x00,#0x00	; 0
	.byte #0x00,#0x00,#0x00,#0x00	; 0
	.byte #0x00,#0x00,#0x00,#0x00	; 0
	.byte #0x03,#0x00,#0x00,#0x00	; 3
	.byte #0x09,#0x00,#0x00,#0x00	; 9
	.byte #0x1B,#0x00,#0x00,#0x00	; 27
	.byte #0x51,#0x00,#0x00,#0x00	; 81
	.byte #0xF3,#0x00,#0x00,#0x00	; 243
	.byte #0xD9,#0x02,#0x00,#0x00	; 729
	.byte #0x8B,#0x08,#0x00,#0x00	; 2187
	.byte #0xA1,#0x19,#0x00,#0x00	; 6561
	.byte #0xE3,#0x4C,#0x00,#0x00	; 19683
	.byte #0xA9,#0xE6,#0x00,#0x00	; 59049
	.byte #0xFB,#0xB3,#0x02,#0x00	; 177147
	.byte #0xF1,#0x1B,#0x08,#0x00	; 531441
_tiles:
	.dw _tile_tiles_00
	.dw _tile_tiles_01
	.dw _tile_tiles_02
	.dw _tile_tiles_03
	.dw _tile_tiles_04
	.dw _tile_tiles_05
	.dw _tile_tiles_06
	.dw _tile_tiles_07
	.dw _tile_tiles_08
	.dw _tile_tiles_09
	.dw _tile_tiles_10
	.dw _tile_tiles_11
	.dw _tile_tiles_12
	.dw _tile_tiles_13
	.dw _tile_tiles_14
;src/game.c:70: void renewTileBag() {
;	---------------------------------
; Function renewTileBag
; ---------------------------------
_renewTileBag::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;src/game.c:75: counters[0] = 0;
	ld	hl,#0x0000
	add	hl,sp
	ld	c,l
	ld	b,h
	xor	a, a
	ld	(bc),a
;src/game.c:76: counters[1] = 0;
	ld	e, c
	ld	d, b
	inc	de
	xor	a, a
	ld	(de),a
;src/game.c:77: counters[2] = 0;
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	xor	a, a
	ld	(de),a
;src/game.c:80: do
	ld	-1 (ix),#0x00
00101$:
;src/game.c:81: currentValue = (cpct_rand() / 85) + 1;
	push	bc
	call	_cpct_getRandom_mxor_u8
	ld	d,l
	ld	a,#0x55
	push	af
	inc	sp
	push	de
	inc	sp
	call	__divuchar
	pop	af
	ld	e,l
	pop	bc
	inc	e
;src/game.c:82: while (counters[currentValue - 1] > 3);
	ld	d,e
	dec	d
	ld	l,d
	ld	h,#0x00
	add	hl,bc
	ld	d,(hl)
	ld	a,#0x03
	sub	a, d
	jr	C,00101$
;src/game.c:83: counters[currentValue - 1]++;
	inc	d
	ld	(hl),d
;src/game.c:84: tileBag[i] = currentValue;
	ld	a,#<(_tileBag)
	add	a, -1 (ix)
	ld	l,a
	ld	a,#>(_tileBag)
	adc	a, #0x00
	ld	h,a
	ld	(hl),e
;src/game.c:79: for (i = 0; i < 12; i++) {
	inc	-1 (ix)
	ld	a,-1 (ix)
	sub	a, #0x0C
	jr	C,00101$
;src/game.c:86: currentTile = 0;
	ld	hl,#_currentTile + 0
	ld	(hl), #0x00
	ld	sp, ix
	pop	ix
	ret
;src/game.c:97: void delay(u32 cycles) {
;	---------------------------------
; Function delay
; ---------------------------------
_delay::
;src/game.c:99: for (i = 0; i < cycles; i++) {
	ld	bc,#0x0000
	ld	de,#0x0000
00103$:
	ld	hl,#2
	add	hl,sp
	ld	a,c
	sub	a, (hl)
	ld	a,b
	inc	hl
	sbc	a, (hl)
	ld	a,e
	inc	hl
	sbc	a, (hl)
	ld	a,d
	inc	hl
	sbc	a, (hl)
	ret	NC
;src/game.c:102: __endasm;
	halt
;src/game.c:99: for (i = 0; i < cycles; i++) {
	inc	c
	jr	NZ,00103$
	inc	b
	jr	NZ,00103$
	inc	e
	jr	NZ,00103$
	inc	d
	jr	00103$
;src/game.c:114: u8 countZeroes() {
;	---------------------------------
; Function countZeroes
; ---------------------------------
_countZeroes::
;src/game.c:118: count = 0;
	ld	e,#0x00
;src/game.c:119: for (i = 0; i < 4; i++) {
	ld	c,#0x00
;src/game.c:120: for (j = 0; j < 4; j++) {
00112$:
	ld	b,e
	ld	e,#0x00
00105$:
;src/game.c:121: if (cells[i][j] == 0)
	ld	l,c
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	ld	a,#<(_cells)
	add	a, l
	ld	l,a
	ld	a,#>(_cells)
	adc	a, h
	ld	h,a
	ld	d,#0x00
	add	hl, de
	ld	a,(hl)
	or	a, a
	jr	NZ,00106$
;src/game.c:122: count++;
	inc	b
00106$:
;src/game.c:120: for (j = 0; j < 4; j++) {
	inc	e
	ld	a,e
	sub	a, #0x04
	jr	C,00105$
;src/game.c:119: for (i = 0; i < 4; i++) {
	ld	e,b
	inc	c
	ld	a,c
	sub	a, #0x04
	jr	C,00112$
;src/game.c:125: return count;
	ld	l,b
	ret
;src/game.c:138: void initAdjacents() {
;	---------------------------------
; Function initAdjacents
; ---------------------------------
_initAdjacents::
;src/game.c:141: for (i = 0; i < 4; i++) {
	ld	bc,#_adjacents + 1
	ld	e,#0x00
00102$:
;src/game.c:142: adjacents.values[i] = 255;
	ld	l,e
	ld	h,#0x00
	add	hl,bc
	ld	(hl),#0xFF
;src/game.c:141: for (i = 0; i < 4; i++) {
	inc	e
	ld	a,e
	sub	a, #0x04
	jr	C,00102$
;src/game.c:144: adjacents.count = 0;
	ld	hl,#_adjacents
	ld	(hl),#0x00
	ret
;src/game.c:155: void getAdjacents(u8 i, u8 j) {
;	---------------------------------
; Function getAdjacents
; ---------------------------------
_getAdjacents::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	dec	sp
;src/game.c:158: initAdjacents();
	call	_initAdjacents
;src/game.c:160: count = 0;
	ld	-3 (ix),#0x00
;src/game.c:162: adjacents.values[count] = cells [i - 1][j];
	ld	c,5 (ix)
;src/game.c:161: if (i != 0) {
	ld	a,4 (ix)
	or	a, a
	jr	Z,00102$
;src/game.c:162: adjacents.values[count] = cells [i - 1][j];
	ld	de,#_cells+0
	ld	l,4 (ix)
	dec	l
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	add	hl,de
	ld	e,c
	ld	d,#0x00
	add	hl,de
	ld	b,(hl)
	ld	hl,#(_adjacents + 0x0001)
	ld	(hl),b
;src/game.c:163: count++;
	ld	-3 (ix),#0x01
00102$:
;src/game.c:166: adjacents.values[count] = cells [i][j + 1];
	ld	l,4 (ix)
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	ld	-2 (ix),l
	ld	-1 (ix),h
;src/game.c:165: if (j != 3) {
	ld	a,5 (ix)
	sub	a, #0x03
	jr	Z,00104$
;src/game.c:166: adjacents.values[count] = cells [i][j + 1];
	ld	a,-3 (ix)
	add	a, #<((_adjacents + 0x0001))
	ld	e,a
	ld	a,#0x00
	adc	a, #>((_adjacents + 0x0001))
	ld	d,a
	ld	a,-2 (ix)
	add	a, #<(_cells)
	ld	l,a
	ld	a,-1 (ix)
	adc	a, #>(_cells)
	ld	h,a
	ld	b,5 (ix)
	inc	b
	ld	a,b
	add	a, l
	ld	l,a
	ld	a,#0x00
	adc	a, h
	ld	h,a
	ld	a,(hl)
	ld	(de),a
;src/game.c:167: count++;
	inc	-3 (ix)
00104$:
;src/game.c:169: if (i != 3) {
	ld	a,4 (ix)
	sub	a, #0x03
	jr	Z,00106$
;src/game.c:170: adjacents.values[count] = cells [i + 1][j];
	ld	a,-3 (ix)
	add	a, #<((_adjacents + 0x0001))
	ld	e,a
	ld	a,#0x00
	adc	a, #>((_adjacents + 0x0001))
	ld	d,a
	ld	l,4 (ix)
	inc	l
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	ld	a,#<(_cells)
	add	a, l
	ld	l,a
	ld	a,#>(_cells)
	adc	a, h
	ld	h,a
	ld	b,#0x00
	add	hl,bc
	ld	a,(hl)
	ld	(de),a
;src/game.c:171: count++;
	inc	-3 (ix)
00106$:
;src/game.c:173: if (j != 0) {
	ld	a,5 (ix)
	or	a, a
	jr	Z,00108$
;src/game.c:174: adjacents.values[count] = cells [i][j - 1];
	ld	a,-3 (ix)
	add	a, #<((_adjacents + 0x0001))
	ld	c,a
	ld	a,#0x00
	adc	a, #>((_adjacents + 0x0001))
	ld	b,a
	ld	de,#_cells+0
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	add	hl,de
	ld	e,5 (ix)
	dec	e
	ld	d,#0x00
	add	hl,de
	ld	a,(hl)
	ld	(bc),a
;src/game.c:175: count++;
	inc	-3 (ix)
00108$:
;src/game.c:178: adjacents.count = count;
	ld	hl,#_adjacents
	ld	a,-3 (ix)
	ld	(hl),a
	ld	sp, ix
	pop	ix
	ret
;src/game.c:189: u8 anyOfThisInAdjacents(u8 value) {
;	---------------------------------
; Function anyOfThisInAdjacents
; ---------------------------------
_anyOfThisInAdjacents::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/game.c:193: result = 0;
	ld	c,#0x00
;src/game.c:194: for (i = 0; i < adjacents.count; i++) {
	ld	e,#0x00
00105$:
	ld	hl, #_adjacents + 0
	ld	b,(hl)
	ld	a,e
	sub	a, b
	jr	NC,00103$
;src/game.c:195: if (adjacents.values[i] == value) {
	ld	hl,#(_adjacents + 0x0001)
	ld	d,#0x00
	add	hl, de
	ld	a,4 (ix)
	sub	a,(hl)
	jr	NZ,00106$
;src/game.c:196: result = 1;
	ld	c,#0x01
;src/game.c:197: break;
	jr	00103$
00106$:
;src/game.c:194: for (i = 0; i < adjacents.count; i++) {
	inc	e
	jr	00105$
00103$:
;src/game.c:200: return result;
	ld	l,c
	pop	ix
	ret
;src/game.c:211: u8 anyMovesLeft() {
;	---------------------------------
; Function anyMovesLeft
; ---------------------------------
_anyMovesLeft::
;src/game.c:215: movesLeft = 0;
	ld	c,#0x00
;src/game.c:217: if (countZeroes() == 0) {
	push	bc
	call	_countZeroes
	pop	bc
	ld	a,l
;src/game.c:218: for (i = 0; i < 4; i++) {
	or	a,a
	jp	NZ,00113$
	ld	b,a
;src/game.c:219: for (j = 0; j < 4; j++) {
00125$:
	ld	e,#0x00
00115$:
;src/game.c:220: getAdjacents(i, j);
	push	bc
	push	de
	ld	a,e
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_getAdjacents
	pop	af
	pop	de
	pop	bc
;src/game.c:221: if (((cells[i][j] == 1) && anyOfThisInAdjacents(2)) ||
	ld	l,b
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	ld	a,#<(_cells)
	add	a, l
	ld	l,a
	ld	a,#>(_cells)
	adc	a, h
	ld	h,a
	ld	d,#0x00
	add	hl, de
	ld	d,(hl)
	dec	d
	jr	NZ,00105$
	push	hl
	push	bc
	push	de
	ld	a,#0x02
	push	af
	inc	sp
	call	_anyOfThisInAdjacents
	inc	sp
	ld	a,l
	pop	de
	pop	bc
	pop	hl
	or	a, a
	jr	NZ,00101$
00105$:
;src/game.c:222: ((cells[i][j] == 2) && anyOfThisInAdjacents(1)) ||
	ld	a,(hl)
	sub	a, #0x02
	jr	NZ,00107$
	push	hl
	push	bc
	push	de
	ld	a,#0x01
	push	af
	inc	sp
	call	_anyOfThisInAdjacents
	inc	sp
	ld	a,l
	pop	de
	pop	bc
	pop	hl
	or	a, a
	jr	NZ,00101$
00107$:
;src/game.c:223: ((cells[i][j] > 2) && anyOfThisInAdjacents(cells[i][j]))) {
	ld	d,(hl)
	ld	a,#0x02
	sub	a, d
	jr	NC,00116$
	push	bc
	push	de
	push	de
	inc	sp
	call	_anyOfThisInAdjacents
	inc	sp
	pop	de
	pop	bc
	ld	a,l
	or	a, a
	jr	Z,00116$
00101$:
;src/game.c:224: movesLeft = 1;
	ld	c,#0x01
;src/game.c:225: break;
	jr	00108$
00116$:
;src/game.c:219: for (j = 0; j < 4; j++) {
	inc	e
	ld	a,e
	sub	a, #0x04
	jr	C,00115$
00108$:
;src/game.c:228: if (movesLeft)
	ld	a,c
	or	a, a
	jr	NZ,00114$
;src/game.c:218: for (i = 0; i < 4; i++) {
	inc	b
	ld	a,b
	sub	a, #0x04
	jr	C,00125$
	jr	00114$
00113$:
;src/game.c:233: movesLeft = 1;
	ld	c,#0x01
00114$:
;src/game.c:234: return movesLeft;
	ld	l,c
	ret
;src/game.c:245: void addRandomCellTurn(u8 dir) {
;	---------------------------------
; Function addRandomCellTurn
; ---------------------------------
_addRandomCellTurn::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;src/game.c:246: u8 i = 0;
	ld	-2 (ix),#0x00
;src/game.c:247: u8 j = 0;
	ld	c,#0x00
;src/game.c:250: switch (dir) {
	ld	a,#0x03
	sub	a, 4 (ix)
	jr	C,00105$
	ld	e,4 (ix)
	ld	d,#0x00
	ld	hl,#00146$
	add	hl,de
	add	hl,de
;src/game.c:251: case LEFT:
	jp	(hl)
00146$:
	jr	00101$
	jr	00102$
	jr	00103$
	jr	00104$
00101$:
;src/game.c:252: j = 3;
	ld	c,#0x03
;src/game.c:253: break;
	jr	00105$
;src/game.c:254: case RIGHT:
00102$:
;src/game.c:255: j = 0;
	ld	c,#0x00
;src/game.c:256: break;
	jr	00105$
;src/game.c:257: case UP:
00103$:
;src/game.c:258: i = 3;
	ld	-2 (ix),#0x03
;src/game.c:259: break;
	jr	00105$
;src/game.c:260: case DOWN:
00104$:
;src/game.c:261: i = 0;
	ld	-2 (ix),#0x00
;src/game.c:263: }
00105$:
;src/game.c:264: if ((dir == LEFT) || (dir == RIGHT))
	ld	a,4 (ix)
	dec	a
	jr	NZ,00147$
	ld	a,#0x01
	jr	00148$
00147$:
	xor	a,a
00148$:
	ld	b,a
	ld	a,4 (ix)
	or	a, a
	jr	Z,00106$
	ld	a,b
	or	a, a
	jr	Z,00107$
00106$:
;src/game.c:265: i = cpct_rand() / 64;
	push	bc
	call	_cpct_getRandom_mxor_u8
	pop	bc
	ld	a,l
	rlca
	rlca
	and	a,#0x03
	ld	-2 (ix),a
	jr	00126$
00107$:
;src/game.c:267: j = cpct_rand() / 64;
	push	bc
	call	_cpct_getRandom_mxor_u8
	pop	bc
	ld	a,l
	rlca
	rlca
	and	a,#0x03
	ld	c,a
;src/game.c:268: while (cells[i][j] != 0) {
00126$:
	ld	-1 (ix),b
00114$:
	ld	l,-2 (ix)
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	ld	de,#_cells
	add	hl,de
	ld	a,l
	add	a, c
	ld	e,a
	ld	a,h
	adc	a, #0x00
	ld	d,a
	ld	a,(de)
	or	a, a
	jr	Z,00116$
;src/game.c:269: if ((dir == LEFT) || (dir == RIGHT))
	ld	a,4 (ix)
	or	a, a
	jr	Z,00110$
	ld	a,-1 (ix)
	or	a, a
	jr	Z,00111$
00110$:
;src/game.c:270: i = cpct_rand() / 64;
	push	bc
	call	_cpct_getRandom_mxor_u8
	pop	bc
	ld	a,l
	rlca
	rlca
	and	a,#0x03
	ld	-2 (ix),a
	jr	00114$
00111$:
;src/game.c:272: j = cpct_rand() / 64;
	call	_cpct_getRandom_mxor_u8
	ld	a,l
	rlca
	rlca
	and	a,#0x03
	ld	c,a
	jr	00114$
00116$:
;src/game.c:276: cells[i][j] = tileBag[currentTile];
	ld	a,(#_currentTile + 0)
	add	a, #<(_tileBag)
	ld	c,a
	ld	a,#0x00
	adc	a, #>(_tileBag)
	ld	b,a
	ld	a,(bc)
	ld	(de),a
;src/game.c:277: if (currentTile < 11)
	ld	a,(#_currentTile + 0)
	sub	a, #0x0B
	jr	NC,00118$
;src/game.c:278: currentTile++;
	ld	hl, #_currentTile+0
	inc	(hl)
	jr	00120$
00118$:
;src/game.c:280: renewTileBag();
	call	_renewTileBag
00120$:
	ld	sp, ix
	pop	ix
	ret
;src/game.c:291: void addRandomCell() {
;	---------------------------------
; Function addRandomCell
; ---------------------------------
_addRandomCell::
;src/game.c:294: i = cpct_rand() / 64;
	call	_cpct_getRandom_mxor_u8
	ld	a,l
	rlca
	rlca
	and	a,#0x03
	ld	c,a
;src/game.c:295: j = cpct_rand() / 64;
	push	bc
	call	_cpct_getRandom_mxor_u8
	pop	bc
	ld	a,l
	rlca
	rlca
	and	a,#0x03
	ld	b,a
;src/game.c:296: while (cells[i][j] != 0) {
00101$:
	ld	l,c
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	ld	de,#_cells
	add	hl,de
	ld	a,l
	add	a, b
	ld	c,a
	ld	a,h
	adc	a, #0x00
	ld	b,a
	ld	a,(bc)
	or	a, a
	jr	Z,00103$
;src/game.c:297: i = cpct_rand() / 64;
	call	_cpct_getRandom_mxor_u8
	ld	a,l
	rlca
	rlca
	and	a,#0x03
	ld	c,a
;src/game.c:298: j = cpct_rand() / 64;
	push	bc
	call	_cpct_getRandom_mxor_u8
	pop	bc
	ld	a,l
	rlca
	rlca
	and	a,#0x03
	ld	b,a
	jr	00101$
00103$:
;src/game.c:303: cells[i][j] = (cpct_rand() / 85) + 1;
	push	bc
	call	_cpct_getRandom_mxor_u8
	ld	d,l
	ld	a,#0x55
	push	af
	inc	sp
	push	de
	inc	sp
	call	__divuchar
	pop	af
	pop	bc
	ld	a,l
	inc	a
	ld	(bc),a
	ret
;src/game.c:314: void initCells() {
;	---------------------------------
; Function initCells
; ---------------------------------
_initCells::
;src/game.c:317: for (i = 0; i < 4; i++) {
	ld	c,#0x00
;src/game.c:318: for (j = 0; j < 4; j++) {
00109$:
	ld	b,#0x00
00103$:
;src/game.c:319: cells[i][j] = 0;
	ld	l,c
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	ld	de,#_cells
	add	hl,de
	ld	e,b
	ld	d,#0x00
	add	hl,de
	ld	(hl),#0x00
;src/game.c:318: for (j = 0; j < 4; j++) {
	inc	b
	ld	a,b
	sub	a, #0x04
	jr	C,00103$
;src/game.c:317: for (i = 0; i < 4; i++) {
	inc	c
	ld	a,c
	sub	a, #0x04
	jr	C,00109$
	ret
;src/game.c:333: void initialization() {
;	---------------------------------
; Function initialization
; ---------------------------------
_initialization::
;src/game.c:337: cpct_akp_musicInit(G_Menu);
	ld	hl,#_G_Menu
	push	hl
	call	_cpct_akp_musicInit
;src/game.c:340: drawText("AMSTHREES IS READY", 31, 76, 1);
	ld	hl, #0x014C
	ex	(sp),hl
	ld	a,#0x1F
	push	af
	inc	sp
	ld	hl,#___str_0
	push	hl
	call	_drawText
	pop	af
;src/game.c:341: drawText("PRESS ANY KEY", 20, 90, 1);
	inc	sp
	ld	hl,#0x015A
	ex	(sp),hl
	ld	a,#0x14
	push	af
	inc	sp
	ld	hl,#___str_1
	push	hl
	call	_drawText
	pop	af
	pop	af
	inc	sp
;src/game.c:343: seed = wait4UserKeypress();
	call	_wait4UserKeypress
;src/game.c:345: if (!seed)
	ld	a,d
	or	a, e
	or	a, h
	or	a,l
	jr	NZ,00102$
;src/game.c:346: seed++;
	inc	l
	jr	NZ,00109$
	inc	h
	jr	NZ,00109$
	inc	e
	jr	NZ,00109$
	inc	d
00109$:
00102$:
;src/game.c:347: cpct_srand(seed);
	call	_cpct_setSeed_mxor
	call	_cpct_restoreState_mxor_u8
;src/game.c:349: scoreHallOfFame[0] = 6000;
	ld	hl,#0x1770
	ld	(_scoreHallOfFame), hl
	ld	hl,#0x0000
	ld	(_scoreHallOfFame+2), hl
;src/game.c:350: scoreHallOfFame[1] = 5000;
	ld	hl,#0x1388
	ld	((_scoreHallOfFame + 0x0004)), hl
	ld	hl,#0x0000
	ld	((_scoreHallOfFame + 0x0004)+2), hl
;src/game.c:351: scoreHallOfFame[2] = 4000;
	ld	hl,#0x0FA0
	ld	((_scoreHallOfFame + 0x0008)), hl
	ld	hl,#0x0000
	ld	((_scoreHallOfFame + 0x0008)+2), hl
;src/game.c:352: scoreHallOfFame[3] = 3000;
	ld	hl,#0x0BB8
	ld	((_scoreHallOfFame + 0x000c)), hl
	ld	hl,#0x0000
	ld	((_scoreHallOfFame + 0x000c)+2), hl
;src/game.c:353: scoreHallOfFame[4] = 1500;
	ld	hl,#0x05DC
	ld	((_scoreHallOfFame + 0x0010)), hl
	ld	hl,#0x0000
	ld	((_scoreHallOfFame + 0x0010)+2), hl
;src/game.c:354: scoreHallOfFame[5] = 1000;
	ld	hl,#0x03E8
	ld	((_scoreHallOfFame + 0x0014)), hl
	ld	hl,#0x0000
	ld	((_scoreHallOfFame + 0x0014)+2), hl
;src/game.c:355: scoreHallOfFame[6] = 500;
	ld	hl,#0x01F4
	ld	((_scoreHallOfFame + 0x0018)), hl
	ld	hl,#0x0000
	ld	((_scoreHallOfFame + 0x0018)+2), hl
;src/game.c:356: scoreHallOfFame[7] = 300;
	ld	hl,#0x012C
	ld	((_scoreHallOfFame + 0x001c)), hl
	ld	hl,#0x0000
	ld	((_scoreHallOfFame + 0x001c)+2), hl
;src/game.c:358: strcpy(nameHallOfFame[0], "MARTIN");
	ld	de,#_nameHallOfFame
	ld	hl,#___str_2
	xor	a, a
00110$:
	cp	a, (hl)
	ldi
	jr	NZ, 00110$
;src/game.c:359: strcpy(nameHallOfFame[1], "DIEGO");
	ld	de,#(_nameHallOfFame + 0x000f)
	ld	hl,#___str_3
	xor	a, a
00111$:
	cp	a, (hl)
	ldi
	jr	NZ, 00111$
;src/game.c:360: strcpy(nameHallOfFame[2], "MARIA");
	ld	de,#(_nameHallOfFame + 0x001e)
	ld	hl,#___str_4
	xor	a, a
00112$:
	cp	a, (hl)
	ldi
	jr	NZ, 00112$
;src/game.c:361: strcpy(nameHallOfFame[3], "DAVID");
	ld	de,#(_nameHallOfFame + 0x002d)
	ld	hl,#___str_5
	xor	a, a
00113$:
	cp	a, (hl)
	ldi
	jr	NZ, 00113$
;src/game.c:362: strcpy(nameHallOfFame[4], "MASTER");
	ld	de,#(_nameHallOfFame + 0x003c)
	ld	hl,#___str_6
	xor	a, a
00114$:
	cp	a, (hl)
	ldi
	jr	NZ, 00114$
;src/game.c:363: strcpy(nameHallOfFame[5], "EXPERT");
	ld	de,#(_nameHallOfFame + 0x004b)
	ld	hl,#___str_7
	xor	a, a
00115$:
	cp	a, (hl)
	ldi
	jr	NZ, 00115$
;src/game.c:364: strcpy(nameHallOfFame[6], "INTERMEDIATE");
	ld	de,#(_nameHallOfFame + 0x005a)
	ld	hl,#___str_8
	xor	a, a
00116$:
	cp	a, (hl)
	ldi
	jr	NZ, 00116$
;src/game.c:365: strcpy(nameHallOfFame[7], "BEGINNER");
	ld	de,#(_nameHallOfFame + 0x0069)
	ld	hl,#___str_9
	xor	a, a
00117$:
	cp	a, (hl)
	ldi
	jr	NZ, 00117$
;src/game.c:368: clearScreen();
	call	_clearScreen
;src/game.c:370: keys.up    = Key_Q;
	ld	hl,#0x0808
	ld	(_keys), hl
;src/game.c:371: keys.down  = Key_A;
	ld	h, #0x20
	ld	((_keys + 0x0002)), hl
;src/game.c:372: keys.left  = Key_O;
	ld	hl,#0x0404
	ld	((_keys + 0x0004)), hl
;src/game.c:373: keys.right = Key_P;
	ld	hl,#0x0803
	ld	((_keys + 0x0006)), hl
;src/game.c:375: keys.pause = Key_Del;
	ld	hl,#0x8009
	ld	((_keys + 0x000a)), hl
;src/game.c:376: keys.abort = Key_Esc;
	ld	hl,#0x0408
	ld	((_keys + 0x000c)), hl
;src/game.c:378: selectedOption = 1;
	ld	hl,#_selectedOption + 0
	ld	(hl), #0x01
;src/game.c:383: playing = 0;
	ld	hl,#_playing + 0
	ld	(hl), #0x00
	ret
___str_0:
	.ascii "AMSTHREES IS READY"
	.db 0x00
___str_1:
	.ascii "PRESS ANY KEY"
	.db 0x00
___str_2:
	.ascii "MARTIN"
	.db 0x00
___str_3:
	.ascii "DIEGO"
	.db 0x00
___str_4:
	.ascii "MARIA"
	.db 0x00
___str_5:
	.ascii "DAVID"
	.db 0x00
___str_6:
	.ascii "MASTER"
	.db 0x00
___str_7:
	.ascii "EXPERT"
	.db 0x00
___str_8:
	.ascii "INTERMEDIATE"
	.db 0x00
___str_9:
	.ascii "BEGINNER"
	.db 0x00
;src/game.c:395: void initGame() {
;	---------------------------------
; Function initGame
; ---------------------------------
_initGame::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	dec	sp
;src/game.c:398: initCells();
	call	_initCells
;src/game.c:400: renewTileBag();
	call	_renewTileBag
;src/game.c:402: for (i = 0; i < 9; i++) {
	ld	-3 (ix),#0x00
00105$:
;src/game.c:403: j = cpct_rand() / 64;
	call	_cpct_getRandom_mxor_u8
	ld	a,l
	rlca
	rlca
	and	a,#0x03
	ld	l,a
;src/game.c:404: k = cpct_rand() / 64;
	push	hl
	call	_cpct_getRandom_mxor_u8
	ld	a,l
	pop	hl
	rlca
	rlca
	and	a,#0x03
	ld	c,a
;src/game.c:405: while (cells[j][k] != 0) {
00101$:
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	ld	de,#_cells
	add	hl,de
	ld	a,l
	add	a, c
	ld	-2 (ix),a
	ld	a,h
	adc	a, #0x00
	ld	-1 (ix),a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a, (hl)
	or	a, a
	jr	Z,00103$
;src/game.c:406: j = cpct_rand() / 64;
	call	_cpct_getRandom_mxor_u8
	ld	a,l
	rlca
	rlca
	and	a,#0x03
	ld	l,a
;src/game.c:407: k = cpct_rand() / 64;
	push	hl
	call	_cpct_getRandom_mxor_u8
	ld	a,l
	pop	hl
	rlca
	rlca
	and	a,#0x03
	ld	c,a
	jr	00101$
00103$:
;src/game.c:412: cells[j][k] = tileBag[currentTile];
	ld	a,#<(_tileBag)
	ld	hl,#_currentTile
	add	a, (hl)
	ld	c,a
	ld	a,#>(_tileBag)
	adc	a, #0x00
	ld	b,a
	ld	a,(bc)
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),a
;src/game.c:413: currentTile++;
	ld	hl, #_currentTile+0
	inc	(hl)
;src/game.c:402: for (i = 0; i < 9; i++) {
	inc	-3 (ix)
	ld	a,-3 (ix)
	sub	a, #0x09
	jr	C,00105$
;src/game.c:416: score = 0;
	xor	a, a
	ld	(#_score + 0),a
	ld	(#_score + 1),a
	ld	(#_score + 2),a
	ld	(#_score + 3),a
	ld	sp, ix
	pop	ix
	ret
;src/game.c:432: u8 rotateCellsLeft() {
;	---------------------------------
; Function rotateCellsLeft
; ---------------------------------
_rotateCellsLeft::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
	dec	sp
;src/game.c:436: matched = 0;
	ld	c,#0x00
;src/game.c:437: for (i = 0; i < 4; i++) {
	ld	-5 (ix),#0x00
;src/game.c:438: for (j = 1; j < 4; j++) {
00129$:
	ld	e,#0x01
00117$:
;src/game.c:439: if (cells[i][j] != 0) {
	ld	l,-5 (ix)
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	ld	a,#<(_cells)
	add	a, l
	ld	-4 (ix),a
	ld	a,#>(_cells)
	adc	a, h
	ld	-3 (ix),a
	ld	a,-4 (ix)
	add	a, e
	ld	-2 (ix),a
	ld	a,-3 (ix)
	adc	a, #0x00
	ld	-1 (ix),a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	b,(hl)
	ld	a,b
	or	a, a
	jr	Z,00118$
;src/game.c:441: if (cells[i][j - 1] == 0) {
	ld	d,e
	dec	d
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	pop	iy
	pop	hl
	push	bc
	ld	c,d
	ld	b,#0x00
	add	iy, bc
	pop	bc
	ld	d, 0 (iy)
	ld	a,d
	or	a, a
	jr	NZ,00111$
;src/game.c:442: cells[i][j - 1] = cells[i][j];
	ld	0 (iy), b
;src/game.c:443: cells[i][j] = 0;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),#0x00
;src/game.c:444: matched = 1;
	ld	c,#0x01
	jr	00118$
00111$:
;src/game.c:445: } else if (((cells[i][j - 1] == 1) && (cells[i][j] == 2)) ||
	ld	a,d
	dec	a
	jr	NZ,00109$
	ld	a,b
	sub	a, #0x02
	jr	Z,00104$
00109$:
;src/game.c:446: ((cells[i][j - 1] == 2) && (cells[i][j] == 1))) {
	ld	a,d
	sub	a, #0x02
	jr	NZ,00105$
	ld	a,b
	dec	a
	jr	NZ,00105$
00104$:
;src/game.c:447: cells[i][j - 1] = 3;
	ld	0 (iy), #0x03
;src/game.c:448: cells[i][j] = 0;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),#0x00
;src/game.c:449: matched = 1;
	ld	c,#0x01
	jr	00118$
00105$:
;src/game.c:450: } else if ((cells[i][j - 1] == cells[i][j]) && (cells[i][j] > 2)) {
	ld	a,b
	sub	a, d
	jr	NZ,00118$
	ld	a,#0x02
	sub	a, b
	jr	NC,00118$
;src/game.c:451: cells[i][j - 1]++;
	inc	d
	ld	0 (iy), d
;src/game.c:452: cells[i][j] = 0;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),#0x00
;src/game.c:453: matched = 1;
	ld	c,#0x01
00118$:
;src/game.c:438: for (j = 1; j < 4; j++) {
	inc	e
	ld	a,e
	sub	a, #0x04
	jp	C,00117$
;src/game.c:437: for (i = 0; i < 4; i++) {
	inc	-5 (ix)
	ld	a,-5 (ix)
	sub	a, #0x04
	jp	C,00129$
;src/game.c:458: return matched;
	ld	l,c
	ld	sp, ix
	pop	ix
	ret
;src/game.c:469: u8 rotateCellsRight() {
;	---------------------------------
; Function rotateCellsRight
; ---------------------------------
_rotateCellsRight::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
	dec	sp
;src/game.c:473: matched = 0;
	ld	c,#0x00
;src/game.c:474: for (i = 0; i < 4; i++) {
	ld	-5 (ix),#0x00
;src/game.c:476: do {
00128$:
	ld	e,#0x03
00114$:
;src/game.c:477: j--;
	dec	e
;src/game.c:478: if (cells[i][j] != 0) {
	ld	l,-5 (ix)
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	ld	a,#<(_cells)
	add	a, l
	ld	-4 (ix),a
	ld	a,#>(_cells)
	adc	a, h
	ld	-3 (ix),a
	ld	a,-4 (ix)
	add	a, e
	ld	-2 (ix),a
	ld	a,-3 (ix)
	adc	a, #0x00
	ld	-1 (ix),a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	b,(hl)
	ld	a,b
	or	a, a
	jr	Z,00115$
;src/game.c:480: if (cells[i][j + 1] == 0) {
	ld	d,e
	inc	d
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	pop	iy
	pop	hl
	push	bc
	ld	c,d
	ld	b,#0x00
	add	iy, bc
	pop	bc
	ld	a, 0 (iy)
	or	a, a
	jr	NZ,00102$
;src/game.c:481: cells[i][j + 1] = cells[i][j];
	ld	0 (iy), b
;src/game.c:482: cells[i][j] = 0;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),#0x00
;src/game.c:483: matched = 1;
	ld	c,#0x01
00102$:
;src/game.c:484: } if (((cells[i][j + 1] == 1) && (cells[i][j] == 2)) ||
	ld	b, 0 (iy)
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	d,(hl)
	ld	a,b
	dec	a
	jr	NZ,00111$
	ld	a,d
	sub	a, #0x02
	jr	Z,00106$
00111$:
;src/game.c:485: ((cells[i][j + 1] == 2) && (cells[i][j] == 1))) {
	ld	a,b
	sub	a, #0x02
	jr	NZ,00107$
	ld	a,d
	dec	a
	jr	NZ,00107$
00106$:
;src/game.c:486: cells[i][j + 1] = 3;
	ld	0 (iy), #0x03
;src/game.c:487: cells[i][j] = 0;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),#0x00
;src/game.c:488: matched = 1;
	ld	c,#0x01
	jr	00115$
00107$:
;src/game.c:489: } else if ((cells[i][j + 1] == cells[i][j]) && (cells[i][j] > 2)) {
	ld	a,b
	sub	a, d
	jr	NZ,00115$
	ld	a,#0x02
	sub	a, d
	jr	NC,00115$
;src/game.c:490: cells[i][j + 1]++;
	inc	b
	ld	0 (iy), b
;src/game.c:491: cells[i][j] = 0;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),#0x00
;src/game.c:492: matched = 1;
	ld	c,#0x01
00115$:
;src/game.c:495: } while (j > 0);
	ld	a,e
	or	a, a
	jp	NZ,00114$
;src/game.c:474: for (i = 0; i < 4; i++) {
	inc	-5 (ix)
	ld	a,-5 (ix)
	sub	a, #0x04
	jp	C,00128$
;src/game.c:497: return matched;
	ld	l,c
	ld	sp, ix
	pop	ix
	ret
;src/game.c:508: u8 rotateCellsUp() {
;	---------------------------------
; Function rotateCellsUp
; ---------------------------------
_rotateCellsUp::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;src/game.c:512: matched = 0;
;src/game.c:513: for (i = 1; i < 4; i++) {
	ld	bc,#0x0100
;src/game.c:514: for (j = 0; j < 4; j++) {
00129$:
	ld	a,b
	add	a,#0xFF
	ld	-1 (ix),a
	ld	e,#0x00
00117$:
;src/game.c:515: if (cells[i][j] != 0) {
	ld	l,b
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	ld	a,#<(_cells)
	add	a, l
	ld	d,a
	ld	a,#>(_cells)
	adc	a, h
	ld	l,a
	ld	a,d
	add	a, e
	ld	-4 (ix),a
	ld	a,l
	adc	a, #0x00
	ld	-3 (ix),a
;src/game.c:522: ((cells[i - 1][j] == 2) && (cells[i][j] == 1))) {
	pop	hl
	push	hl
	ld	d,(hl)
;src/game.c:515: if (cells[i][j] != 0) {
	ld	a,d
	or	a, a
	jr	Z,00118$
;src/game.c:517: if (cells[i - 1][j] == 0) {
	ld	l,-1 (ix)
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	ld	iy,#_cells
	push	bc
	ld	c, l
	ld	b, h
	add	iy, bc
	pop	bc
	push	de
	ld	d,#0x00
	add	iy, de
	pop	de
	ld	a, 0 (iy)
	ld	-2 (ix), a
	or	a, a
	jr	NZ,00111$
;src/game.c:518: cells[i - 1][j] = cells[i][j];
	ld	0 (iy), d
;src/game.c:519: cells[i][j] = 0;
	pop	hl
	push	hl
	ld	(hl),#0x00
;src/game.c:520: matched = 1;
	ld	c,#0x01
	jr	00118$
00111$:
;src/game.c:521: } else if (((cells[i - 1][j] == 1) && (cells[i][j] == 2)) ||
	ld	a,-2 (ix)
	dec	a
	jr	NZ,00109$
	ld	a,d
	sub	a, #0x02
	jr	Z,00104$
00109$:
;src/game.c:522: ((cells[i - 1][j] == 2) && (cells[i][j] == 1))) {
	ld	a,-2 (ix)
	sub	a, #0x02
	jr	NZ,00105$
	ld	a,d
	dec	a
	jr	NZ,00105$
00104$:
;src/game.c:523: cells[i - 1][j] = 3;
	ld	0 (iy), #0x03
;src/game.c:524: cells[i][j] = 0;
	pop	hl
	push	hl
	ld	(hl),#0x00
;src/game.c:525: matched = 1;
	ld	c,#0x01
	jr	00118$
00105$:
;src/game.c:526: } else if ((cells[i - 1][j] == cells[i][j]) && (cells[i][j] > 2)) {
	ld	a,d
	sub	a, -2 (ix)
	jr	NZ,00118$
	ld	a,#0x02
	sub	a, d
	jr	NC,00118$
;src/game.c:527: cells[i - 1][j]++;
	ld	c,-2 (ix)
	inc	c
	ld	0 (iy), c
;src/game.c:528: cells[i][j] = 0;
	pop	hl
	push	hl
	ld	(hl),#0x00
;src/game.c:529: matched = 1;
	ld	c,#0x01
00118$:
;src/game.c:514: for (j = 0; j < 4; j++) {
	inc	e
	ld	a,e
	sub	a, #0x04
	jp	C,00117$
;src/game.c:513: for (i = 1; i < 4; i++) {
	inc	b
	ld	a,b
	sub	a, #0x04
	jp	C,00129$
;src/game.c:534: return matched;
	ld	l,c
	ld	sp, ix
	pop	ix
	ret
;src/game.c:545: u8 rotateCellsDown() {
;	---------------------------------
; Function rotateCellsDown
; ---------------------------------
_rotateCellsDown::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;src/game.c:549: matched = 0;
	ld	c,#0x00
;src/game.c:551: do {
	ld	-4 (ix),#0x03
00115$:
;src/game.c:552: i--;
	dec	-4 (ix)
;src/game.c:553: for (j = 0; j < 4; j++) {
	ld	a,-4 (ix)
	inc	a
	ld	-1 (ix),a
	ld	e,#0x00
00118$:
;src/game.c:554: if (cells[i][j] != 0) {
	ld	l,-4 (ix)
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	ld	a,#<(_cells)
	add	a, l
	ld	b,a
	ld	a,#>(_cells)
	adc	a, h
	ld	d,a
	ld	a,b
	add	a, e
	ld	-3 (ix),a
	ld	a,d
	adc	a, #0x00
	ld	-2 (ix),a
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	b,(hl)
	ld	a,b
	or	a, a
	jr	Z,00119$
;src/game.c:556: if (cells[i + 1][j] == 0) {
	ld	l,-1 (ix)
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	ld	iy,#_cells
	push	bc
	ld	c, l
	ld	b, h
	add	iy, bc
	pop	bc
	push	de
	ld	d,#0x00
	add	iy, de
	pop	de
	ld	a, 0 (iy)
	or	a, a
	jr	NZ,00102$
;src/game.c:557: cells[i + 1][j] = cells[i][j];
	ld	0 (iy), b
;src/game.c:558: cells[i][j] = 0;
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	(hl),#0x00
;src/game.c:559: matched = 1;
	ld	c,#0x01
00102$:
;src/game.c:556: if (cells[i + 1][j] == 0) {
	ld	b, 0 (iy)
;src/game.c:554: if (cells[i][j] != 0) {
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	d,(hl)
;src/game.c:560: } if (((cells[i + 1][j] == 1) && (cells[i][j] == 2)) ||
	ld	a,b
	dec	a
	jr	NZ,00111$
	ld	a,d
	sub	a, #0x02
	jr	Z,00106$
00111$:
;src/game.c:561: ((cells[i + 1][j] == 2) && (cells[i][j] == 1))) {
	ld	a,b
	sub	a, #0x02
	jr	NZ,00107$
	ld	a,d
	dec	a
	jr	NZ,00107$
00106$:
;src/game.c:562: cells[i + 1][j] = 3;
	ld	0 (iy), #0x03
;src/game.c:563: cells[i][j] = 0;
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	(hl),#0x00
;src/game.c:564: matched = 1;
	ld	c,#0x01
	jr	00119$
00107$:
;src/game.c:565: } else if ((cells[i + 1][j] == cells[i][j]) && (cells[i][j] > 2)) {
	ld	a,b
	sub	a, d
	jr	NZ,00119$
	ld	a,#0x02
	sub	a, d
	jr	NC,00119$
;src/game.c:566: cells[i + 1][j]++;
	inc	b
	ld	0 (iy), b
;src/game.c:567: cells[i][j] = 0;
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	(hl),#0x00
;src/game.c:568: matched = 1;
	ld	c,#0x01
00119$:
;src/game.c:553: for (j = 0; j < 4; j++) {
	inc	e
	ld	a,e
	sub	a, #0x04
	jp	C,00118$
;src/game.c:573: } while (i > 0);
	ld	a,-4 (ix)
	or	a, a
	jp	NZ,00115$
;src/game.c:575: return matched;
	ld	l,c
	ld	sp, ix
	pop	ix
	ret
;src/game.c:586: void printCells() {
;	---------------------------------
; Function printCells
; ---------------------------------
_printCells::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
	dec	sp
;src/game.c:593: for (i = 0; i < 4; i++) {
	ld	c,#0x00
	ld	-3 (ix),#0x00
00105$:
;src/game.c:595: y = 6 + (i * 44);
	ld	a,-3 (ix)
	add	a, #0x06
	ld	-4 (ix),a
;src/game.c:596: for (j = 0; j < 4; j++) {
	ld	-5 (ix),#0x00
	ld	b,#0x00
00103$:
;src/game.c:598: x = 4 + (j * 11);
	ld	d,b
	inc	d
	inc	d
	inc	d
	inc	d
;src/game.c:599: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, x, y);
	push	bc
	ld	a,-4 (ix)
	push	af
	inc	sp
	push	de
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	pop	bc
;src/game.c:600: cpct_drawSprite(tiles[cells[i][j]], pvmem, 10, 40);
	ld	-2 (ix),l
	ld	-1 (ix),h
	ld	l,c
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	ld	de,#_cells
	add	hl,de
	ld	e,-5 (ix)
	ld	d,#0x00
	add	hl,de
	ld	l,(hl)
	ld	h,#0x00
	add	hl, hl
	ld	de,#_tiles
	add	hl,de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	bc
	ld	hl,#0x280A
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	push	de
	call	_cpct_drawSprite
	pop	bc
;src/game.c:596: for (j = 0; j < 4; j++) {
	ld	a,b
	add	a, #0x0B
	ld	b,a
	inc	-5 (ix)
	ld	a,-5 (ix)
	sub	a, #0x04
	jr	C,00103$
;src/game.c:593: for (i = 0; i < 4; i++) {
	ld	a,-3 (ix)
	add	a, #0x2C
	ld	-3 (ix),a
	inc	c
	ld	a,c
	sub	a, #0x04
	jr	C,00105$
;src/game.c:603: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 62, 20);
	ld	hl,#0x143E
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/game.c:604: cpct_drawSprite(tiles[tileBag[currentTile]], pvmem, 10, 40);
	ld	iy,#_tileBag
	ld	de,(_currentTile)
	ld	d,#0x00
	add	iy, de
	ld	l, 0 (iy)
	ld	h,#0x00
	add	hl, hl
	ld	de,#_tiles
	add	hl,de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x280A
	push	hl
	push	bc
	push	de
	call	_cpct_drawSprite
	ld	sp, ix
	pop	ix
	ret
;src/game.c:615: void drawScore() {
;	---------------------------------
; Function drawScore
; ---------------------------------
_drawScore::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-7
	add	hl,sp
	ld	sp,hl
;src/game.c:619: for (i = 0; i < 4; i++) {
	ld	c,#0x00
	ld	-1 (ix),#0x00
;src/game.c:620: for (j = 0; j < 4; j++) {
00116$:
	ld	a,-1 (ix)
	add	a, #0x06
	ld	-2 (ix),a
	ld	-7 (ix),#0x00
	ld	b,#0x00
00108$:
;src/game.c:622: z = cells[i][j];
	ld	l,c
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	ld	de,#_cells
	add	hl,de
	ld	e,-7 (ix)
	ld	d,#0x00
	add	hl,de
	ld	e,(hl)
;src/game.c:623: if (z >= 3) {
;src/game.c:624: if (z == 3) {
	ld	a,e
	cp	a,#0x03
	jr	C,00109$
	sub	a, #0x03
	jr	NZ,00102$
;src/game.c:625: partialScore = 1;
	ld	-6 (ix),#0x01
	xor	a, a
	ld	-5 (ix),a
	ld	-4 (ix),a
	ld	-3 (ix),a
	jr	00103$
00102$:
;src/game.c:627: partialScore = scores[z];
	ld	h,#0x00
	ld	l, e
	add	hl, hl
	add	hl, hl
	ld	de,#_scores
	add	hl,de
	push	bc
	ex	de,hl
	ld	hl, #0x0003
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	bc
00103$:
;src/game.c:629: score += partialScore;
	ld	hl,#_score
	ld	a,(hl)
	add	a, -6 (ix)
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, -5 (ix)
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, -4 (ix)
	ld	(hl),a
	inc	hl
	ld	a,(hl)
	adc	a, -3 (ix)
	ld	(hl),a
;src/game.c:630: drawNumber(partialScore, 4, 3 + (11 * j), 6 + (44 * i));
	ld	d,b
	inc	d
	inc	d
	inc	d
	push	hl
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	pop	iy
	pop	hl
	push	bc
	ld	a,-2 (ix)
	push	af
	inc	sp
	ld	e, #0x04
	push	de
	push	iy
	call	_drawNumber
	pop	af
	pop	af
	inc	sp
	pop	bc
00109$:
;src/game.c:620: for (j = 0; j < 4; j++) {
	ld	a,b
	add	a, #0x0B
	ld	b,a
	inc	-7 (ix)
	ld	a,-7 (ix)
	sub	a, #0x04
	jp	C,00108$
;src/game.c:619: for (i = 0; i < 4; i++) {
	ld	a,-1 (ix)
	add	a, #0x2C
	ld	-1 (ix),a
	inc	c
	ld	a,c
	sub	a, #0x04
	jp	C,00116$
	ld	sp, ix
	pop	ix
	ret
;src/game.c:644: void getName() {
;	---------------------------------
; Function getName
; ---------------------------------
_getName::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-6
	add	hl,sp
	ld	sp,hl
;src/game.c:648: drawFrame(9, 60, 73, 150);
	ld	hl,#0x9649
	push	hl
	ld	hl,#0x3C09
	push	hl
	call	_drawFrame
	pop	af
;src/game.c:650: drawText("NEW HIGH SCORE", 20, 70, 1);
	ld	hl, #0x0146
	ex	(sp),hl
	ld	a,#0x14
	push	af
	inc	sp
	ld	hl,#___str_10
	push	hl
	call	_drawText
	pop	af
;src/game.c:651: drawText("ENTER YOUR NAME", 18, 85, 1);
	inc	sp
	ld	hl,#0x0155
	ex	(sp),hl
	ld	a,#0x12
	push	af
	inc	sp
	ld	hl,#___str_11
	push	hl
	call	_drawText
	pop	af
;src/game.c:652: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 11, 100);
	inc	sp
	ld	hl,#0x640B
	ex	(sp),hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/game.c:653: cpct_drawSprite(g_tile_symbols_1, pvmem, 3, 11);
	ld	hl,#0x0B03
	push	hl
	push	bc
	ld	hl,#_g_tile_symbols_1
	push	hl
	call	_cpct_drawSprite
;src/game.c:654: drawText(" TO CHANGE LETTER", 19, 100, 0);
	ld	hl,#0x0064
	push	hl
	ld	a,#0x13
	push	af
	inc	sp
	ld	hl,#___str_12
	push	hl
	call	_drawText
	pop	af
;src/game.c:655: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 16, 100);
	inc	sp
	ld	hl,#0x6410
	ex	(sp),hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/game.c:656: cpct_drawSprite(g_tile_symbols_2, pvmem, 3, 11);
	ld	hl,#0x0B03
	push	hl
	push	bc
	ld	hl,#_g_tile_symbols_2
	push	hl
	call	_cpct_drawSprite
;src/game.c:657: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 16, 100);
	ld	hl,#0x6410
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/game.c:658: cpct_drawSprite(g_font_big[38], pvmem, 3, 11);
	ld	hl,#0x0B03
	push	hl
	push	bc
	ld	hl,#(_g_font_big + 0x04e6)
	push	hl
	call	_cpct_drawSprite
;src/game.c:659: drawText(" [ TO END", 20, 115, 1);
	ld	hl,#0x0173
	push	hl
	ld	a,#0x14
	push	af
	inc	sp
	ld	hl,#___str_13
	push	hl
	call	_drawText
	pop	af
;src/game.c:660: drawFrame(12, 130, 70, 160);
	inc	sp
	ld	hl,#0xA046
	ex	(sp),hl
	ld	hl,#0x820C
	push	hl
	call	_drawFrame
	pop	af
	pop	af
;src/game.c:661: strcpy(newNameHighScore, "A");
	ld	de,#_newNameHighScore
	ld	hl,#___str_14
	xor	a, a
00166$:
	cp	a, (hl)
	ldi
	jr	NZ, 00166$
;src/game.c:662: drawText(newNameHighScore, 0, 140, 1);
	ld	hl,#0x018C
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	hl,#_newNameHighScore
	push	hl
	call	_drawText
	pop	af
	pop	af
	inc	sp
;src/game.c:663: pos = 0;
	ld	-5 (ix),#0x00
;src/game.c:664: chr = 65;
	ld	-6 (ix),#0x41
;src/game.c:665: moved = 0;
	ld	-4 (ix),#0x00
;src/game.c:666: while (1) {
00126$:
;src/game.c:667: delay(24);
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0018
	push	hl
	call	_delay
	pop	af
	pop	af
;src/game.c:668: cpct_scanKeyboard_f();
	call	_cpct_scanKeyboard_f
;src/game.c:670: if (cpct_isKeyPressed(keys.right)) {
	ld	hl, (#_keys + 6)
	call	_cpct_isKeyPressed
	ld	-1 (ix),l
;src/game.c:678: newNameHighScore[pos] = '\0';
	ld	a,#<(_newNameHighScore)
	add	a, -5 (ix)
	ld	-3 (ix),a
	ld	a,#>(_newNameHighScore)
	adc	a, #0x00
	ld	-2 (ix),a
;src/game.c:670: if (cpct_isKeyPressed(keys.right)) {
	ld	a,-1 (ix)
	or	a, a
	jr	Z,00116$
;src/game.c:671: chr++;
	inc	-6 (ix)
;src/game.c:672: moved = 1;
	ld	-4 (ix),#0x01
	jp	00117$
00116$:
;src/game.c:673: } else if (cpct_isKeyPressed(keys.left)) {
	ld	hl, (#_keys + 4)
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00113$
;src/game.c:674: chr--;
	dec	-6 (ix)
;src/game.c:675: moved = 1;
	ld	-4 (ix),#0x01
	jp	00117$
00113$:
;src/game.c:676: } else if (cpct_isKeyPressed(keys.down)) {
	ld	hl, (#_keys + 2)
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00110$
;src/game.c:677: if (chr == 91) {
	ld	a,-6 (ix)
	sub	a, #0x5B
	jr	NZ,00102$
;src/game.c:678: newNameHighScore[pos] = '\0';
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	(hl),#0x00
;src/game.c:679: break;
	jp	00128$
00102$:
;src/game.c:682: pos++;
	inc	-5 (ix)
;src/game.c:678: newNameHighScore[pos] = '\0';
	ld	a,#<(_newNameHighScore)
	add	a, -5 (ix)
	ld	-3 (ix),a
	ld	a,#>(_newNameHighScore)
	adc	a, #0x00
	ld	-2 (ix),a
;src/game.c:683: newNameHighScore[pos] = 65;
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	(hl),#0x41
;src/game.c:684: newNameHighScore[pos + 1] = '\0';
	ld	c,-5 (ix)
	inc	c
	ld	hl,#_newNameHighScore
	ld	b,#0x00
	add	hl, bc
	ld	(hl),#0x00
;src/game.c:685: chr = 65;
	ld	-6 (ix),#0x41
;src/game.c:686: moved = 1;
	ld	-4 (ix),#0x01
	jr	00117$
00110$:
;src/game.c:689: } else if (cpct_isKeyPressed(keys.up)) {
	ld	hl, (#_keys + 0)
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00107$
;src/game.c:690: newNameHighScore[pos] = '\0';
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	(hl),#0x00
;src/game.c:691: pos--;
	dec	-5 (ix)
;src/game.c:678: newNameHighScore[pos] = '\0';
	ld	a,#<(_newNameHighScore)
	add	a, -5 (ix)
	ld	-3 (ix),a
	ld	a,#>(_newNameHighScore)
	adc	a, #0x00
	ld	-2 (ix),a
;src/game.c:692: chr = newNameHighScore[pos];
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	a,(hl)
	ld	-6 (ix),a
;src/game.c:693: moved = 1;
	ld	-4 (ix),#0x01
	jr	00117$
00107$:
;src/game.c:694: } else if (cpct_isKeyPressed(keys.abort)) {
	ld	hl, (#_keys + 12)
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	NZ,00128$
;src/game.c:695: break;
00117$:
;src/game.c:697: if (moved) {
	ld	a,-4 (ix)
	or	a, a
	jp	Z,00126$
;src/game.c:698: moved = 0;
	ld	-4 (ix),#0x00
;src/game.c:699: if (chr > 91)
	ld	a,#0x5B
	sub	a, -6 (ix)
	jr	NC,00121$
;src/game.c:700: chr = 65;
	ld	-6 (ix),#0x41
	jr	00122$
00121$:
;src/game.c:701: else if (chr < 65)
	ld	a,-6 (ix)
	sub	a, #0x41
	jr	NC,00122$
;src/game.c:702: chr = 91;
	ld	-6 (ix),#0x5B
00122$:
;src/game.c:703: newNameHighScore[pos] = chr;
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	a,-6 (ix)
	ld	(hl),a
;src/game.c:704: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 13, 140);
	ld	hl,#0x8C0D
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	-3 (ix),l
	ld	-2 (ix),h
;src/game.c:705: cpct_drawSolidBox(pvmem, cpct_px2byteM0(5, 5), 60, 11);
	ld	hl,#0x0505
	push	hl
	call	_cpct_px2byteM0
	ld	-1 (ix),l
	ld	hl,#0x0B3C
	push	hl
	ld	a,-1 (ix)
	push	af
	inc	sp
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	push	hl
	call	_cpct_drawSolidBox
	pop	af
;src/game.c:706: drawText(newNameHighScore, 20, 140, 1);
	inc	sp
	ld	hl,#0x018C
	ex	(sp),hl
	ld	a,#0x14
	push	af
	inc	sp
	ld	hl,#_newNameHighScore
	push	hl
	call	_drawText
	pop	af
	pop	af
	inc	sp
	jp	00126$
00128$:
	ld	sp, ix
	pop	ix
	ret
___str_10:
	.ascii "NEW HIGH SCORE"
	.db 0x00
___str_11:
	.ascii "ENTER YOUR NAME"
	.db 0x00
___str_12:
	.ascii " TO CHANGE LETTER"
	.db 0x00
___str_13:
	.ascii " [ TO END"
	.db 0x00
___str_14:
	.ascii "A"
	.db 0x00
;src/game.c:721: void setHighScore(u32 score) {
;	---------------------------------
; Function setHighScore
; ---------------------------------
_setHighScore::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-10
	add	hl,sp
	ld	sp,hl
;src/game.c:724: i = 8;
	ld	c,#0x08
;src/game.c:725: while ((score > scoreHallOfFame[i - 1]) && (i > 0)) {
	ld	de,#_scoreHallOfFame+0
00102$:
	ld	b,c
	dec	b
	ld	l,b
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	add	hl,de
	push	de
	push	bc
	ex	de,hl
	ld	hl, #0x0004
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	bc
	pop	de
	ld	a,-10 (ix)
	sub	a, 4 (ix)
	ld	a,-9 (ix)
	sbc	a, 5 (ix)
	ld	a,-8 (ix)
	sbc	a, 6 (ix)
	ld	a,-7 (ix)
	sbc	a, 7 (ix)
	jr	NC,00104$
	ld	a,c
	or	a, a
	jr	Z,00104$
;src/game.c:726: i--;
	ld	c,b
	jr	00102$
00104$:
;src/game.c:728: j = 7;
;src/game.c:729: if (i <= j) {
	ld	a,#0x07
	ld	b,a
	sub	a, c
	jp	C,00111$
;src/game.c:730: while ((i < j) && (j > 0)) {
00106$:
;src/game.c:731: scoreHallOfFame[j] = scoreHallOfFame[j - 1];
	ld	-10 (ix),b
	ld	-9 (ix),#0x00
;src/game.c:732: strcpy(nameHallOfFame[j], nameHallOfFame[j - 1]);
	push	de
	ld	e,b
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	pop	de
	ld	-6 (ix),l
	ld	-5 (ix),h
;src/game.c:731: scoreHallOfFame[j] = scoreHallOfFame[j - 1];
	pop	hl
	push	hl
	add	hl, hl
	add	hl, hl
;src/game.c:732: strcpy(nameHallOfFame[j], nameHallOfFame[j - 1]);
	ld	a,#<(_nameHallOfFame)
	add	a, -6 (ix)
	ld	-6 (ix),a
	ld	a,#>(_nameHallOfFame)
	adc	a, -5 (ix)
	ld	-5 (ix),a
;src/game.c:731: scoreHallOfFame[j] = scoreHallOfFame[j - 1];
	add	hl,de
	ex	(sp), hl
;src/game.c:732: strcpy(nameHallOfFame[j], nameHallOfFame[j - 1]);
;src/game.c:730: while ((i < j) && (j > 0)) {
	ld	a,c
	sub	a, b
	jr	NC,00108$
	ld	a,b
	or	a, a
	jr	Z,00108$
;src/game.c:731: scoreHallOfFame[j] = scoreHallOfFame[j - 1];
	dec	b
	ld	l,b
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	add	hl,de
	push	de
	push	bc
	ex	de,hl
	ld	hl, #0x000A
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	ld	e,-10 (ix)
	ld	d,-9 (ix)
	ld	hl, #0x000A
	add	hl, sp
	ld	bc, #0x0004
	ldir
	pop	bc
	ld	e,b
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	pop	de
	ld	a,#<(_nameHallOfFame)
	add	a, l
	ld	l,a
	ld	a,#>(_nameHallOfFame)
	adc	a, h
	ld	h,a
	push	bc
	push	de
	ld	e,-6 (ix)
	ld	d,-5 (ix)
	xor	a, a
00140$:
	cp	a, (hl)
	ldi
	jr	NZ, 00140$
	pop	de
	pop	bc
;src/game.c:733: j--;
	jp	00106$
00108$:
;src/game.c:735: getName();
	call	_getName
;src/game.c:736: wait4UserKeypress();
	call	_wait4UserKeypress
;src/game.c:737: scoreHallOfFame[j] = score;
	pop	de
	push	de
	ld	hl, #0x000E
	add	hl, sp
	ld	bc, #0x0004
	ldir
;src/game.c:738: strcpy(nameHallOfFame[j], newNameHighScore);
	ld	e,-6 (ix)
	ld	d,-5 (ix)
	ld	hl,#_newNameHighScore
	xor	a, a
00141$:
	cp	a, (hl)
	ldi
	jr	NZ, 00141$
00111$:
	ld	sp, ix
	pop	ix
	ret
;src/game.c:742: void drawScoreBoard() {
;	---------------------------------
; Function drawScoreBoard
; ---------------------------------
_drawScoreBoard::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;src/game.c:746: cpct_waitVSYNC();
	call	_cpct_waitVSYNC
;src/game.c:748: cpct_memset(CPCT_VMEM_START, cpct_px2byteM0(5, 5), 0x4000);
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
;src/game.c:750: drawText("AMSTHREES SCOREBOARD", 13, 2, 1);
	ld	hl,#0x0102
	push	hl
	ld	a,#0x0D
	push	af
	inc	sp
	ld	hl,#___str_15
	push	hl
	call	_drawText
	pop	af
	pop	af
	inc	sp
;src/game.c:752: for (i = 0; i < 8; i++) {
	ld	-4 (ix),#0x00
	ld	-1 (ix),#0x00
	ld	bc,#0x0000
	ld	-2 (ix),#0x00
00106$:
;src/game.c:753: drawNumber(i + 1, 2, 5, 30 + (i * 15));
	ld	a,-1 (ix)
	add	a, #0x1E
	ld	-3 (ix),a
	ld	e,-4 (ix)
	ld	d,#0x00
	push	de
	pop	iy
	inc	iy
	push	bc
	push	de
	ld	a,-3 (ix)
	push	af
	inc	sp
	ld	hl,#0x0502
	push	hl
	push	iy
	call	_drawNumber
	pop	af
	pop	af
	inc	sp
	pop	de
	pop	bc
;src/game.c:754: drawText(nameHallOfFame[i], 14, 30 + (i * 15), 0);
	ld	iy,#_nameHallOfFame
	add	iy, bc
	push	bc
	push	de
	xor	a, a
	push	af
	inc	sp
	ld	d, -3 (ix)
	ld	e,#0x0E
	push	de
	push	iy
	call	_drawText
	pop	af
	pop	af
	inc	sp
	pop	de
	pop	bc
;src/game.c:755: drawNumber(scoreHallOfFame[i], 1, 69, 30 + (i * 15));
	ld	a,-2 (ix)
	add	a, #0x1E
	ld	-3 (ix),a
	ex	de,hl
	add	hl, hl
	add	hl, hl
	ld	de,#_scoreHallOfFame
	add	hl,de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	inc	hl
	ld	a,(hl)
	dec	hl
	ld	l,(hl)
	push	bc
	ld	a,-3 (ix)
	push	af
	inc	sp
	ld	hl,#0x4501
	push	hl
	push	de
	call	_drawNumber
	pop	af
	pop	af
	inc	sp
	pop	bc
;src/game.c:752: for (i = 0; i < 8; i++) {
	ld	a,-1 (ix)
	add	a, #0x0F
	ld	-1 (ix),a
	ld	hl,#0x000F
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	a,-2 (ix)
	add	a, #0x0F
	ld	-2 (ix),a
	inc	-4 (ix)
	ld	a,-4 (ix)
	sub	a, #0x08
	jp	C,00106$
;src/game.c:758: drawText("JOHN LOBO", 25, 170, 1);
	ld	hl,#0x01AA
	push	hl
	ld	a,#0x19
	push	af
	inc	sp
	ld	hl,#___str_16
	push	hl
	call	_drawText
	pop	af
;src/game.c:759: drawText("@ GLASNOST CORP 2016", 11, 185, 1);
	inc	sp
	ld	hl,#0x01B9
	ex	(sp),hl
	ld	a,#0x0B
	push	af
	inc	sp
	ld	hl,#___str_17
	push	hl
	call	_drawText
	pop	af
	pop	af
	inc	sp
;src/game.c:763: do {
	ld	bc,#0x9C40
	ld	de,#0x0000
00103$:
;src/game.c:764: c--;                       // One more cycle
	ld	a,c
	add	a,#0xFF
	ld	c,a
	ld	a,b
	adc	a,#0xFF
	ld	b,a
	ld	a,e
	adc	a,#0xFF
	ld	e,a
	ld	a,d
	adc	a,#0xFF
	ld	d,a
;src/game.c:765: cpct_scanKeyboard_f();     // Scan the scan the keyboard
	push	bc
	push	de
	call	_cpct_scanKeyboard_f
	call	_cpct_isAnyKeyPressed_f
	pop	de
	pop	bc
	ld	a,l
	or	a, a
	jr	NZ,00108$
	ld	a,d
	or	a, e
	or	a, b
	or	a,c
	jr	NZ,00103$
00108$:
	ld	sp, ix
	pop	ix
	ret
___str_15:
	.ascii "AMSTHREES SCOREBOARD"
	.db 0x00
___str_16:
	.ascii "JOHN LOBO"
	.db 0x00
___str_17:
	.ascii "@ GLASNOST CORP 2016"
	.db 0x00
;src/game.c:778: void game(void) {
;	---------------------------------
; Function game
; ---------------------------------
_game::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;src/game.c:781: initGame();
	call	_initGame
;src/game.c:784: clearScreen();
	call	_clearScreen
;src/game.c:787: drawFrame(2, 1, 49, 182);
	ld	hl,#0xB631
	push	hl
	ld	hl,#0x0102
	push	hl
	call	_drawFrame
	pop	af
	pop	af
;src/game.c:788: printCells();
	call	_printCells
;src/game.c:789: drawText("NEXT", 62, 2, 0);
	ld	hl,#0x0002
	push	hl
	ld	a,#0x3E
	push	af
	inc	sp
	ld	hl,#___str_18
	push	hl
	call	_drawText
	pop	af
	pop	af
	inc	sp
;src/game.c:791: wait4UserKeypress();
	call	_wait4UserKeypress
;src/game.c:793: moved = 0;
	ld	-1 (ix),#0x00
;src/game.c:795: while (1) {
00128$:
;src/game.c:796: delay(24);
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0018
	push	hl
	call	_delay
	pop	af
	pop	af
;src/game.c:797: cpct_scanKeyboard_f();
	call	_cpct_scanKeyboard_f
;src/game.c:799: if (cpct_isKeyPressed(keys.right)) {
	ld	hl, (#_keys + 6)
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00121$
;src/game.c:800: if (rotateCellsRight()) {
	call	_rotateCellsRight
	ld	a,l
	or	a, a
	jr	Z,00122$
;src/game.c:801: addRandomCellTurn(RIGHT);
	ld	a,#0x01
	push	af
	inc	sp
	call	_addRandomCellTurn
	inc	sp
;src/game.c:802: moved = 1;
	ld	-1 (ix),#0x01
	jr	00122$
00121$:
;src/game.c:804: } else if (cpct_isKeyPressed(keys.left)) {
	ld	hl, (#_keys + 4)
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00118$
;src/game.c:805: if (rotateCellsLeft()) {
	call	_rotateCellsLeft
	ld	a,l
	or	a, a
	jr	Z,00122$
;src/game.c:806: addRandomCellTurn(LEFT);
	xor	a, a
	push	af
	inc	sp
	call	_addRandomCellTurn
	inc	sp
;src/game.c:807: moved = 1;
	ld	-1 (ix),#0x01
	jr	00122$
00118$:
;src/game.c:809: } else if (cpct_isKeyPressed(keys.down)) {
	ld	hl, (#_keys + 2)
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00115$
;src/game.c:810: if (rotateCellsDown()) {
	call	_rotateCellsDown
	ld	a,l
	or	a, a
	jr	Z,00122$
;src/game.c:811: addRandomCellTurn(DOWN);
	ld	a,#0x03
	push	af
	inc	sp
	call	_addRandomCellTurn
	inc	sp
;src/game.c:812: moved = 1;
	ld	-1 (ix),#0x01
	jr	00122$
00115$:
;src/game.c:814: } else if (cpct_isKeyPressed(keys.up)) {
	ld	hl, (#_keys + 0)
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00112$
;src/game.c:815: if (rotateCellsUp()) {
	call	_rotateCellsUp
	ld	a,l
	or	a, a
	jr	Z,00122$
;src/game.c:816: addRandomCellTurn(UP);
	ld	a,#0x02
	push	af
	inc	sp
	call	_addRandomCellTurn
	inc	sp
;src/game.c:817: moved = 1;
	ld	-1 (ix),#0x01
	jr	00122$
00112$:
;src/game.c:819: } else if (cpct_isKeyPressed(keys.abort))
	ld	hl, (#_keys + 12)
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jp	NZ,00130$
;src/game.c:820: break;
00122$:
;src/game.c:822: if (moved) {
	ld	a,-1 (ix)
	or	a, a
	jp	Z,00128$
;src/game.c:823: printCells();
	call	_printCells
;src/game.c:824: moved = 0;
	ld	-1 (ix),#0x00
;src/game.c:825: if (anyMovesLeft() == 0) {
	call	_anyMovesLeft
	ld	a,l
	or	a, a
	jp	NZ,00128$
;src/game.c:826: drawScore();
	call	_drawScore
;src/game.c:827: wait4UserKeypress();
	call	_wait4UserKeypress
;src/game.c:828: drawFrame(14, 60, 68, 142);
	ld	hl,#0x8E44
	push	hl
	ld	hl,#0x3C0E
	push	hl
	call	_drawFrame
	pop	af
;src/game.c:829: drawFallingText("NO MORE MOVES", 20, 90, 96);
	ld	hl, #0x605A
	ex	(sp),hl
	ld	a,#0x14
	push	af
	inc	sp
	ld	hl,#___str_19
	push	hl
	call	_drawFallingText
	pop	af
;src/game.c:830: drawText("GAME OVER", 22, 70, 1);
	inc	sp
	ld	hl,#0x0146
	ex	(sp),hl
	ld	a,#0x16
	push	af
	inc	sp
	ld	hl,#___str_20
	push	hl
	call	_drawText
	pop	af
	pop	af
	inc	sp
;src/game.c:831: sprintf(aux_txt, "SCORE  %d", score);
	ld	hl,(_score + 2)
	push	hl
	ld	hl,(_score)
	push	hl
	ld	hl,#___str_21
	push	hl
	ld	hl,(_aux_txt)
	push	hl
	call	_sprintf
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
;src/game.c:832: drawText(aux_txt, 22, 120, 1);
	ld	hl,#0x0178
	push	hl
	ld	a,#0x16
	push	af
	inc	sp
	ld	hl,(_aux_txt)
	push	hl
	call	_drawText
	pop	af
	pop	af
	inc	sp
;src/game.c:833: wait4UserKeypress();
	call	_wait4UserKeypress
;src/game.c:834: setHighScore(score);
	ld	hl,(_score + 2)
	push	hl
	ld	hl,(_score)
	push	hl
	call	_setHighScore
	pop	af
	pop	af
;src/game.c:835: drawScoreBoard();
	call	_drawScoreBoard
;src/game.c:836: break;
00130$:
	inc	sp
	pop	ix
	ret
___str_18:
	.ascii "NEXT"
	.db 0x00
___str_19:
	.ascii "NO MORE MOVES"
	.db 0x00
___str_20:
	.ascii "GAME OVER"
	.db 0x00
___str_21:
	.ascii "SCORE  %d"
	.db 0x00
;src/game.c:843: void drawMenu() {
;	---------------------------------
; Function drawMenu
; ---------------------------------
_drawMenu::
;src/game.c:845: cpct_waitVSYNC();
	call	_cpct_waitVSYNC
;src/game.c:848: cpct_memset(CPCT_VMEM_START, cpct_px2byteM0(5, 5), 0x4000);
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
;src/game.c:850: drawFrame(15, 38, 63, 134);
	ld	hl,#0x863F
	push	hl
	ld	hl,#0x260F
	push	hl
	call	_drawFrame
	pop	af
;src/game.c:852: drawText("AMSTHREES", 31, 2, 1);
	ld	hl, #0x0102
	ex	(sp),hl
	ld	a,#0x1F
	push	af
	inc	sp
	ld	hl,#___str_22
	push	hl
	call	_drawText
	pop	af
;src/game.c:854: drawText("TECLADO", 30, 50, 0);
	inc	sp
	ld	hl,#0x0032
	ex	(sp),hl
	ld	a,#0x1E
	push	af
	inc	sp
	ld	hl,#___str_23
	push	hl
	call	_drawText
	pop	af
;src/game.c:855: drawText("JOYSTICK", 30, 70, 0);
	inc	sp
	ld	hl,#0x0046
	ex	(sp),hl
	ld	a,#0x1E
	push	af
	inc	sp
	ld	hl,#___str_24
	push	hl
	call	_drawText
	pop	af
;src/game.c:856: drawText("MUSICA", 30, 90, 0);
	inc	sp
	ld	hl,#0x005A
	ex	(sp),hl
	ld	a,#0x1E
	push	af
	inc	sp
	ld	hl,#___str_25
	push	hl
	call	_drawText
	pop	af
	pop	af
	inc	sp
;src/game.c:857: if (playing)
	ld	a,(#_playing + 0)
	or	a, a
	jr	Z,00102$
;src/game.c:858: drawText("OFF", 51, 90, 0);
	ld	hl,#0x005A
	push	hl
	ld	a,#0x33
	push	af
	inc	sp
	ld	hl,#___str_26
	push	hl
	call	_drawText
	pop	af
	pop	af
	inc	sp
	jr	00103$
00102$:
;src/game.c:860: drawText("ON", 51, 90, 0);
	ld	hl,#0x005A
	push	hl
	ld	a,#0x33
	push	af
	inc	sp
	ld	hl,#___str_27
	push	hl
	call	_drawText
	pop	af
	pop	af
	inc	sp
00103$:
;src/game.c:861: drawText("JUGAR", 30, 110, 0);
	ld	hl,#0x006E
	push	hl
	ld	a,#0x1E
	push	af
	inc	sp
	ld	hl,#___str_28
	push	hl
	call	_drawText
	pop	af
;src/game.c:863: drawNumber(1, 1, 23, 50);
	inc	sp
	ld	hl,#0x3217
	ex	(sp),hl
	ld	a,#0x01
	push	af
	inc	sp
	ld	hl,#0x0001
	push	hl
	call	_drawNumber
	pop	af
;src/game.c:864: drawNumber(2, 1, 23, 70);
	inc	sp
	ld	hl,#0x4617
	ex	(sp),hl
	ld	a,#0x01
	push	af
	inc	sp
	ld	hl,#0x0002
	push	hl
	call	_drawNumber
	pop	af
;src/game.c:865: drawNumber(3, 1, 23, 90);
	inc	sp
	ld	hl,#0x5A17
	ex	(sp),hl
	ld	a,#0x01
	push	af
	inc	sp
	ld	hl,#0x0003
	push	hl
	call	_drawNumber
	pop	af
;src/game.c:866: drawNumber(4, 1, 23, 110);
	inc	sp
	ld	hl,#0x6E17
	ex	(sp),hl
	ld	a,#0x01
	push	af
	inc	sp
	ld	hl,#0x0004
	push	hl
	call	_drawNumber
	pop	af
;src/game.c:869: drawText("JOHN LOBO", 25, 170, 1);
	inc	sp
	ld	hl,#0x01AA
	ex	(sp),hl
	ld	a,#0x19
	push	af
	inc	sp
	ld	hl,#___str_29
	push	hl
	call	_drawText
	pop	af
;src/game.c:870: drawText("@ GLASNOST CORP 2016", 11, 185, 1);
	inc	sp
	ld	hl,#0x01B9
	ex	(sp),hl
	ld	a,#0x0B
	push	af
	inc	sp
	ld	hl,#___str_30
	push	hl
	call	_drawText
	pop	af
	pop	af
	inc	sp
	ret
___str_22:
	.ascii "AMSTHREES"
	.db 0x00
___str_23:
	.ascii "TECLADO"
	.db 0x00
___str_24:
	.ascii "JOYSTICK"
	.db 0x00
___str_25:
	.ascii "MUSICA"
	.db 0x00
___str_26:
	.ascii "OFF"
	.db 0x00
___str_27:
	.ascii "ON"
	.db 0x00
___str_28:
	.ascii "JUGAR"
	.db 0x00
___str_29:
	.ascii "JOHN LOBO"
	.db 0x00
___str_30:
	.ascii "@ GLASNOST CORP 2016"
	.db 0x00
;src/game.c:874: void checkKeyboardMenu() {
;	---------------------------------
; Function checkKeyboardMenu
; ---------------------------------
_checkKeyboardMenu::
;src/game.c:878: cpct_scanKeyboard_f();
	call	_cpct_scanKeyboard_f
;src/game.c:880: if (selectedOption == 1) {
	ld	a,(#_selectedOption + 0)
	dec	a
	jr	NZ,00102$
;src/game.c:881: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 27, 71);
	ld	hl,#0x471B
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/game.c:882: cpct_drawSprite(g_tile_marker_3, pvideo, 2, 9);
	ld	hl,#0x0902
	push	hl
	push	bc
	ld	hl,#_g_tile_marker_3
	push	hl
	call	_cpct_drawSprite
;src/game.c:883: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 54, 71);
	ld	hl,#0x4736
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/game.c:884: cpct_drawSprite(g_tile_marker_3, pvideo, 2, 9);
	ld	hl,#0x0902
	push	hl
	push	bc
	ld	hl,#_g_tile_marker_3
	push	hl
	call	_cpct_drawSprite
;src/game.c:885: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 27, 51);
	ld	hl,#0x331B
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/game.c:886: cpct_drawSprite(g_tile_marker_0, pvideo, 2, 9);
	ld	hl,#0x0902
	push	hl
	push	bc
	ld	hl,#_g_tile_marker_0
	push	hl
	call	_cpct_drawSprite
;src/game.c:887: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 54, 51);
	ld	hl,#0x3336
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/game.c:888: cpct_drawSprite(g_tile_marker_0, pvideo, 2, 9);
	ld	hl,#0x0902
	push	hl
	push	bc
	ld	hl,#_g_tile_marker_0
	push	hl
	call	_cpct_drawSprite
	jr	00103$
00102$:
;src/game.c:890: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 27, 51);
	ld	hl,#0x331B
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/game.c:891: cpct_drawSprite(g_tile_marker_3, pvideo, 2, 9);
	ld	hl,#0x0902
	push	hl
	push	bc
	ld	hl,#_g_tile_marker_3
	push	hl
	call	_cpct_drawSprite
;src/game.c:892: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 54, 51);
	ld	hl,#0x3336
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/game.c:893: cpct_drawSprite(g_tile_marker_3, pvideo, 2, 9);
	ld	hl,#0x0902
	push	hl
	push	bc
	ld	hl,#_g_tile_marker_3
	push	hl
	call	_cpct_drawSprite
;src/game.c:894: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 27, 71);
	ld	hl,#0x471B
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/game.c:895: cpct_drawSprite(g_tile_marker_0, pvideo, 2, 9);
	ld	hl,#0x0902
	push	hl
	push	bc
	ld	hl,#_g_tile_marker_0
	push	hl
	call	_cpct_drawSprite
;src/game.c:896: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 54, 71);
	ld	hl,#0x4736
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/game.c:897: cpct_drawSprite(g_tile_marker_0, pvideo, 2, 9);
	ld	hl,#0x0902
	push	hl
	push	bc
	ld	hl,#_g_tile_marker_0
	push	hl
	call	_cpct_drawSprite
00103$:
;src/game.c:901: if (cpct_isKeyPressed(Key_1)) {
	ld	hl,#0x0108
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jp	Z,00116$
;src/game.c:903: selectedOption = 1;
	ld	hl,#_selectedOption + 0
	ld	(hl), #0x01
;src/game.c:905: waitKeyUp(Key_1);
	ld	hl,#0x0108
	push	hl
	call	_waitKeyUp
;src/game.c:907: keys.up    = redefineKey("UP");
	ld	hl, #___str_31
	ex	(sp),hl
	call	_redefineKey
	pop	af
	ld	c,l
	ld	b,h
	ld	(_keys), bc
;src/game.c:908: keys.down  = redefineKey("DOWN");
	ld	hl,#___str_32
	push	hl
	call	_redefineKey
	pop	af
	ld	c,l
	ld	b,h
	ld	((_keys + 0x0002)), bc
;src/game.c:909: keys.left  = redefineKey("LEFT");
	ld	hl,#___str_33
	push	hl
	call	_redefineKey
	pop	af
	ld	c,l
	ld	b,h
	ld	((_keys + 0x0004)), bc
;src/game.c:910: keys.right = redefineKey("RIGHT");
	ld	hl,#___str_34
	push	hl
	call	_redefineKey
	pop	af
	ld	c,l
	ld	b,h
	ld	((_keys + 0x0006)), bc
;src/game.c:911: keys.pause = redefineKey("PAUSE");
	ld	hl,#___str_35
	push	hl
	call	_redefineKey
	pop	af
	ld	c,l
	ld	b,h
	ld	((_keys + 0x000a)), bc
;src/game.c:912: keys.abort = redefineKey("ABORT");
	ld	hl,#___str_36
	push	hl
	call	_redefineKey
	pop	af
	ld	c,l
	ld	b,h
	ld	((_keys + 0x000c)), bc
;src/game.c:914: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 39 - 10 * FONT_W, 144);
	ld	hl,#0x9009
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
;src/game.c:915: cpct_drawSolidBox(pvideo, cpct_px2byteM0(5, 5), 15 * FONT_W, FONT_H);
	push	hl
	ld	hl,#0x0505
	push	hl
	call	_cpct_px2byteM0
	ld	d,l
	pop	bc
	ld	hl,#0x0B2D
	push	hl
	push	de
	inc	sp
	push	bc
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
	ret
00116$:
;src/game.c:919: else if (cpct_isKeyPressed(Key_2)) {
	ld	hl,#0x0208
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00113$
;src/game.c:921: selectedOption = 2;
	ld	hl,#_selectedOption + 0
	ld	(hl), #0x02
;src/game.c:923: keys.up    = Joy0_Up;
	ld	hl,#0x0109
	ld	(_keys), hl
;src/game.c:924: keys.down  = Joy0_Down;
	ld	h, #0x02
	ld	((_keys + 0x0002)), hl
;src/game.c:925: keys.left  = Joy0_Left;
	ld	h, #0x04
	ld	((_keys + 0x0004)), hl
;src/game.c:926: keys.right = Joy0_Right;
	ld	h, #0x08
	ld	((_keys + 0x0006)), hl
;src/game.c:928: waitKeyUp(Key_2);
	ld	hl,#0x0208
	push	hl
	call	_waitKeyUp
;src/game.c:930: keys.pause = redefineKey("PAUSE");
	ld	hl, #___str_35
	ex	(sp),hl
	call	_redefineKey
	pop	af
	ld	c,l
	ld	b,h
	ld	((_keys + 0x000a)), bc
;src/game.c:931: keys.abort = redefineKey("ABORT");
	ld	hl,#___str_36
	push	hl
	call	_redefineKey
	pop	af
	ld	c,l
	ld	b,h
	ld	((_keys + 0x000c)), bc
;src/game.c:933: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 39 - 10 * FONT_W, 144);
	ld	hl,#0x9009
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
;src/game.c:934: cpct_drawSolidBox(pvideo, cpct_px2byteM0(5, 5), 15 * FONT_W, FONT_H);
	push	hl
	ld	hl,#0x0505
	push	hl
	call	_cpct_px2byteM0
	ld	d,l
	pop	bc
	ld	hl,#0x0B2D
	push	hl
	push	de
	inc	sp
	push	bc
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
	ret
00113$:
;src/game.c:937: else if ( cpct_isKeyPressed(Key_3)) {
	ld	hl,#0x0207
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00110$
;src/game.c:938: if (!playing){
	ld	a,(#_playing + 0)
	or	a, a
	jr	NZ,00105$
;src/game.c:939: playing = 1;
	ld	hl,#_playing + 0
	ld	(hl), #0x01
;src/game.c:940: cpct_setInterruptHandler(myInterruptHandler);
	ld	hl,#_myInterruptHandler
	call	_cpct_setInterruptHandler
	jr	00106$
00105$:
;src/game.c:942: playing = 0;
	ld	hl,#_playing + 0
	ld	(hl), #0x00
;src/game.c:943: cpct_disableFirmware();
	call	_cpct_disableFirmware
;src/game.c:944: cpct_akp_stop ();
	call	_cpct_akp_stop
00106$:
;src/game.c:947: drawMenu();
	call	_drawMenu
	ret
00110$:
;src/game.c:951: else if (cpct_isKeyPressed(Key_4)) {
	ld	hl,#0x0107
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	ret	Z
;src/game.c:953: waitKeyUp(Key_1);
	ld	hl,#0x0108
	push	hl
	call	_waitKeyUp
	pop	af
;src/game.c:954: cpct_disableFirmware();
	call	_cpct_disableFirmware
;src/game.c:955: game();
	call	_game
;src/game.c:956: cpct_setInterruptHandler( myInterruptHandler );
	ld	hl,#_myInterruptHandler
	call	_cpct_setInterruptHandler
;src/game.c:957: drawMenu();
	call	_drawMenu
	ret
___str_31:
	.ascii "UP"
	.db 0x00
___str_32:
	.ascii "DOWN"
	.db 0x00
___str_33:
	.ascii "LEFT"
	.db 0x00
___str_34:
	.ascii "RIGHT"
	.db 0x00
___str_35:
	.ascii "PAUSE"
	.db 0x00
___str_36:
	.ascii "ABORT"
	.db 0x00
;src/game.c:961: void threes() {
;	---------------------------------
; Function threes
; ---------------------------------
_threes::
;src/game.c:964: cpct_setInterruptHandler( myInterruptHandler );
	ld	hl,#_myInterruptHandler
	call	_cpct_setInterruptHandler
;src/game.c:965: while (1) {
00105$:
;src/game.c:968: drawMenu();
	call	_drawMenu
;src/game.c:972: while (lapso < SWITCH_SCREENS) {
	ld	bc,#0x0000
	ld	de,#0x0000
00101$:
	ld	a,c
	sub	a, #0x58
	ld	a,b
	sbc	a, #0x1B
	ld	a,e
	sbc	a, #0x00
	ld	a,d
	sbc	a, #0x00
	jr	NC,00103$
;src/game.c:974: cpct_waitVSYNC();
	push	bc
	push	de
	call	_cpct_waitVSYNC
	call	_checkKeyboardMenu
	pop	de
	pop	bc
;src/game.c:980: lapso++;
	inc	c
	jr	NZ,00101$
	inc	b
	jr	NZ,00101$
	inc	e
	jr	NZ,00101$
	inc	d
	jr	00101$
00103$:
;src/game.c:984: drawScoreBoard();
	call	_drawScoreBoard
;src/game.c:987: cpct_disableFirmware();
	jr	00105$
	.area _CODE
	.area _INITIALIZER
__xinit__newNameHighScore:
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x00	; 0
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
__xinit__playing:
	.db #0x00	; 0
	.area _CABS (ABS)
