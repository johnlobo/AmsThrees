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
	.globl _game
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
	.globl _redefineKey
	.globl _waitKeyUp
	.globl _wait4UserKeypress
	.globl _drawFrame
	.globl _drawMenu
	.globl _drawFallingText
	.globl _drawText
	.globl _drawNumber
	.globl _clearScreen
	.globl _cpct_restoreState_mxor_u8
	.globl _cpct_setSeed_mxor
	.globl _cpct_getRandom_mxor_u8
	.globl _cpct_getScreenPtr
	.globl _cpct_drawSolidBox
	.globl _cpct_drawSprite
	.globl _cpct_px2byteM0
	.globl _cpct_isAnyKeyPressed_f
	.globl _cpct_isKeyPressed
	.globl _cpct_scanKeyboard_f
	.globl _cpct_memset
	.globl _sprintf
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
	.globl _drawScoreBoard
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
;src/game.c:54: void renewTileBag() {
;	---------------------------------
; Function renewTileBag
; ---------------------------------
_renewTileBag::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;src/game.c:59: counters[0] = 0;
	ld	hl,#0x0000
	add	hl,sp
	ld	c,l
	ld	b,h
	xor	a, a
	ld	(bc),a
;src/game.c:60: counters[1] = 0;
	ld	e, c
	ld	d, b
	inc	de
	xor	a, a
	ld	(de),a
;src/game.c:61: counters[2] = 0;
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	xor	a, a
	ld	(de),a
;src/game.c:64: do
	ld	-1 (ix),#0x00
00101$:
;src/game.c:65: currentValue = (cpct_rand() / 85) + 1;
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
;src/game.c:66: while (counters[currentValue - 1] > 3);
	ld	d,e
	dec	d
	ld	l,d
	ld	h,#0x00
	add	hl,bc
	ld	d,(hl)
	ld	a,#0x03
	sub	a, d
	jr	C,00101$
;src/game.c:67: counters[currentValue - 1]++;
	inc	d
	ld	(hl),d
;src/game.c:68: tileBag[i] = currentValue;
	ld	a,#<(_tileBag)
	add	a, -1 (ix)
	ld	l,a
	ld	a,#>(_tileBag)
	adc	a, #0x00
	ld	h,a
	ld	(hl),e
;src/game.c:63: for (i = 0; i < 12; i++) {
	inc	-1 (ix)
	ld	a,-1 (ix)
	sub	a, #0x0C
	jr	C,00101$
;src/game.c:70: currentTile = 0;
	ld	hl,#_currentTile + 0
	ld	(hl), #0x00
	ld	sp, ix
	pop	ix
	ret
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
;src/game.c:81: void delay(u32 cycles) {
;	---------------------------------
; Function delay
; ---------------------------------
_delay::
;src/game.c:83: for (i = 0; i < cycles; i++) {
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
;src/game.c:86: __endasm;
	halt
;src/game.c:83: for (i = 0; i < cycles; i++) {
	inc	c
	jr	NZ,00103$
	inc	b
	jr	NZ,00103$
	inc	e
	jr	NZ,00103$
	inc	d
	jr	00103$
;src/game.c:98: u8 countZeroes() {
;	---------------------------------
; Function countZeroes
; ---------------------------------
_countZeroes::
;src/game.c:102: count = 0;
	ld	e,#0x00
;src/game.c:103: for (i = 0; i < 4; i++) {
	ld	c,#0x00
;src/game.c:104: for (j = 0; j < 4; j++) {
00112$:
	ld	b,e
	ld	e,#0x00
00105$:
;src/game.c:105: if (cells[i][j] == 0)
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
;src/game.c:106: count++;
	inc	b
00106$:
;src/game.c:104: for (j = 0; j < 4; j++) {
	inc	e
	ld	a,e
	sub	a, #0x04
	jr	C,00105$
;src/game.c:103: for (i = 0; i < 4; i++) {
	ld	e,b
	inc	c
	ld	a,c
	sub	a, #0x04
	jr	C,00112$
;src/game.c:109: return count;
	ld	l,b
	ret
;src/game.c:122: void initAdjacents() {
;	---------------------------------
; Function initAdjacents
; ---------------------------------
_initAdjacents::
;src/game.c:125: for (i = 0; i < 4; i++) {
	ld	bc,#_adjacents + 1
	ld	e,#0x00
00102$:
;src/game.c:126: adjacents.values[i] = 255;
	ld	l,e
	ld	h,#0x00
	add	hl,bc
	ld	(hl),#0xFF
;src/game.c:125: for (i = 0; i < 4; i++) {
	inc	e
	ld	a,e
	sub	a, #0x04
	jr	C,00102$
;src/game.c:128: adjacents.count = 0;
	ld	hl,#_adjacents
	ld	(hl),#0x00
	ret
;src/game.c:139: void getAdjacents(u8 i, u8 j) {
;	---------------------------------
; Function getAdjacents
; ---------------------------------
_getAdjacents::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	dec	sp
;src/game.c:142: initAdjacents();
	call	_initAdjacents
;src/game.c:144: count = 0;
	ld	-3 (ix),#0x00
;src/game.c:146: adjacents.values[count] = cells [i - 1][j];
	ld	c,5 (ix)
;src/game.c:145: if (i != 0) {
	ld	a,4 (ix)
	or	a, a
	jr	Z,00102$
;src/game.c:146: adjacents.values[count] = cells [i - 1][j];
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
;src/game.c:147: count++;
	ld	-3 (ix),#0x01
00102$:
;src/game.c:150: adjacents.values[count] = cells [i][j + 1];
	ld	l,4 (ix)
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	ld	-2 (ix),l
	ld	-1 (ix),h
;src/game.c:149: if (j != 3) {
	ld	a,5 (ix)
	sub	a, #0x03
	jr	Z,00104$
;src/game.c:150: adjacents.values[count] = cells [i][j + 1];
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
;src/game.c:151: count++;
	inc	-3 (ix)
00104$:
;src/game.c:153: if (i != 3) {
	ld	a,4 (ix)
	sub	a, #0x03
	jr	Z,00106$
;src/game.c:154: adjacents.values[count] = cells [i + 1][j];
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
;src/game.c:155: count++;
	inc	-3 (ix)
00106$:
;src/game.c:157: if (j != 0) {
	ld	a,5 (ix)
	or	a, a
	jr	Z,00108$
;src/game.c:158: adjacents.values[count] = cells [i][j - 1];
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
;src/game.c:159: count++;
	inc	-3 (ix)
00108$:
;src/game.c:162: adjacents.count = count;
	ld	hl,#_adjacents
	ld	a,-3 (ix)
	ld	(hl),a
	ld	sp, ix
	pop	ix
	ret
;src/game.c:173: u8 anyOfThisInAdjacents(u8 value) {
;	---------------------------------
; Function anyOfThisInAdjacents
; ---------------------------------
_anyOfThisInAdjacents::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/game.c:177: result = 0;
	ld	c,#0x00
;src/game.c:178: for (i = 0; i < adjacents.count; i++) {
	ld	e,#0x00
00105$:
	ld	hl, #_adjacents + 0
	ld	b,(hl)
	ld	a,e
	sub	a, b
	jr	NC,00103$
;src/game.c:179: if (adjacents.values[i] == value) {
	ld	hl,#(_adjacents + 0x0001)
	ld	d,#0x00
	add	hl, de
	ld	a,4 (ix)
	sub	a,(hl)
	jr	NZ,00106$
;src/game.c:180: result = 1;
	ld	c,#0x01
;src/game.c:181: break;
	jr	00103$
00106$:
;src/game.c:178: for (i = 0; i < adjacents.count; i++) {
	inc	e
	jr	00105$
00103$:
;src/game.c:184: return result;
	ld	l,c
	pop	ix
	ret
;src/game.c:195: u8 anyMovesLeft() {
;	---------------------------------
; Function anyMovesLeft
; ---------------------------------
_anyMovesLeft::
;src/game.c:199: movesLeft = 0;
	ld	c,#0x00
;src/game.c:201: if (countZeroes() == 0) {
	push	bc
	call	_countZeroes
	pop	bc
	ld	a,l
;src/game.c:202: for (i = 0; i < 4; i++) {
	or	a,a
	jp	NZ,00113$
	ld	b,a
;src/game.c:203: for (j = 0; j < 4; j++) {
00125$:
	ld	e,#0x00
00115$:
;src/game.c:204: getAdjacents(i, j);
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
;src/game.c:205: if (((cells[i][j] == 1) && anyOfThisInAdjacents(2)) ||
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
;src/game.c:206: ((cells[i][j] == 2) && anyOfThisInAdjacents(1)) ||
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
;src/game.c:207: ((cells[i][j] > 2) && anyOfThisInAdjacents(cells[i][j]))) {
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
;src/game.c:208: movesLeft = 1;
	ld	c,#0x01
;src/game.c:209: break;
	jr	00108$
00116$:
;src/game.c:203: for (j = 0; j < 4; j++) {
	inc	e
	ld	a,e
	sub	a, #0x04
	jr	C,00115$
00108$:
;src/game.c:212: if (movesLeft)
	ld	a,c
	or	a, a
	jr	NZ,00114$
;src/game.c:202: for (i = 0; i < 4; i++) {
	inc	b
	ld	a,b
	sub	a, #0x04
	jr	C,00125$
	jr	00114$
00113$:
;src/game.c:217: movesLeft = 1;
	ld	c,#0x01
00114$:
;src/game.c:218: return movesLeft;
	ld	l,c
	ret
;src/game.c:229: void addRandomCellTurn(u8 dir) {
;	---------------------------------
; Function addRandomCellTurn
; ---------------------------------
_addRandomCellTurn::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;src/game.c:230: u8 i = 0;
	ld	-2 (ix),#0x00
;src/game.c:231: u8 j = 0;
	ld	c,#0x00
;src/game.c:234: switch (dir) {
	ld	a,#0x03
	sub	a, 4 (ix)
	jr	C,00105$
	ld	e,4 (ix)
	ld	d,#0x00
	ld	hl,#00146$
	add	hl,de
	add	hl,de
;src/game.c:235: case LEFT:
	jp	(hl)
00146$:
	jr	00101$
	jr	00102$
	jr	00103$
	jr	00104$
00101$:
;src/game.c:236: j = 3;
	ld	c,#0x03
;src/game.c:237: break;
	jr	00105$
;src/game.c:238: case RIGHT:
00102$:
;src/game.c:239: j = 0;
	ld	c,#0x00
;src/game.c:240: break;
	jr	00105$
;src/game.c:241: case UP:
00103$:
;src/game.c:242: i = 3;
	ld	-2 (ix),#0x03
;src/game.c:243: break;
	jr	00105$
;src/game.c:244: case DOWN:
00104$:
;src/game.c:245: i = 0;
	ld	-2 (ix),#0x00
;src/game.c:247: }
00105$:
;src/game.c:248: if ((dir == LEFT) || (dir == RIGHT))
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
;src/game.c:249: i = cpct_rand() / 64;
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
;src/game.c:251: j = cpct_rand() / 64;
	push	bc
	call	_cpct_getRandom_mxor_u8
	pop	bc
	ld	a,l
	rlca
	rlca
	and	a,#0x03
	ld	c,a
;src/game.c:252: while (cells[i][j] != 0) {
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
;src/game.c:253: if ((dir == LEFT) || (dir == RIGHT))
	ld	a,4 (ix)
	or	a, a
	jr	Z,00110$
	ld	a,-1 (ix)
	or	a, a
	jr	Z,00111$
00110$:
;src/game.c:254: i = cpct_rand() / 64;
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
;src/game.c:256: j = cpct_rand() / 64;
	call	_cpct_getRandom_mxor_u8
	ld	a,l
	rlca
	rlca
	and	a,#0x03
	ld	c,a
	jr	00114$
00116$:
;src/game.c:260: cells[i][j] = tileBag[currentTile];
	ld	a,(#_currentTile + 0)
	add	a, #<(_tileBag)
	ld	c,a
	ld	a,#0x00
	adc	a, #>(_tileBag)
	ld	b,a
	ld	a,(bc)
	ld	(de),a
;src/game.c:261: if (currentTile < 11)
	ld	a,(#_currentTile + 0)
	sub	a, #0x0B
	jr	NC,00118$
;src/game.c:262: currentTile++;
	ld	hl, #_currentTile+0
	inc	(hl)
	jr	00120$
00118$:
;src/game.c:264: renewTileBag();
	call	_renewTileBag
00120$:
	ld	sp, ix
	pop	ix
	ret
;src/game.c:275: void addRandomCell() {
;	---------------------------------
; Function addRandomCell
; ---------------------------------
_addRandomCell::
;src/game.c:278: i = cpct_rand() / 64;
	call	_cpct_getRandom_mxor_u8
	ld	a,l
	rlca
	rlca
	and	a,#0x03
	ld	c,a
;src/game.c:279: j = cpct_rand() / 64;
	push	bc
	call	_cpct_getRandom_mxor_u8
	pop	bc
	ld	a,l
	rlca
	rlca
	and	a,#0x03
	ld	b,a
;src/game.c:280: while (cells[i][j] != 0) {
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
;src/game.c:281: i = cpct_rand() / 64;
	call	_cpct_getRandom_mxor_u8
	ld	a,l
	rlca
	rlca
	and	a,#0x03
	ld	c,a
;src/game.c:282: j = cpct_rand() / 64;
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
;src/game.c:286: cells[i][j] = (cpct_rand() / 85) + 1;
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
;src/game.c:297: void initCells() {
;	---------------------------------
; Function initCells
; ---------------------------------
_initCells::
;src/game.c:300: for (i = 0; i < 4; i++) {
	ld	c,#0x00
;src/game.c:301: for (j = 0; j < 4; j++) {
00109$:
	ld	b,#0x00
00103$:
;src/game.c:302: cells[i][j] = 0;
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
;src/game.c:301: for (j = 0; j < 4; j++) {
	inc	b
	ld	a,b
	sub	a, #0x04
	jr	C,00103$
;src/game.c:300: for (i = 0; i < 4; i++) {
	inc	c
	ld	a,c
	sub	a, #0x04
	jr	C,00109$
	ret
;src/game.c:316: void initialization() {
;	---------------------------------
; Function initialization
; ---------------------------------
_initialization::
;src/game.c:319: drawText("AMSTHREES IS READY", 31, 76, 1);
	ld	hl,#0x014C
	push	hl
	ld	a,#0x1F
	push	af
	inc	sp
	ld	hl,#___str_0
	push	hl
	call	_drawText
	pop	af
;src/game.c:320: drawText("PRESS ANY KEY", 20, 90, 1);
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
;src/game.c:322: seed = wait4UserKeypress();
	call	_wait4UserKeypress
;src/game.c:324: if (!seed)
	ld	a,d
	or	a, e
	or	a, h
	or	a,l
	jr	NZ,00102$
;src/game.c:325: seed++;
	inc	l
	jr	NZ,00109$
	inc	h
	jr	NZ,00109$
	inc	e
	jr	NZ,00109$
	inc	d
00109$:
00102$:
;src/game.c:326: cpct_srand(seed);
	call	_cpct_setSeed_mxor
	call	_cpct_restoreState_mxor_u8
;src/game.c:328: scoreHallOfFame[0] = 6000;
	ld	hl,#0x1770
	ld	(_scoreHallOfFame), hl
	ld	hl,#0x0000
	ld	(_scoreHallOfFame+2), hl
;src/game.c:329: scoreHallOfFame[1] = 5000;
	ld	hl,#0x1388
	ld	((_scoreHallOfFame + 0x0004)), hl
	ld	hl,#0x0000
	ld	((_scoreHallOfFame + 0x0004)+2), hl
;src/game.c:330: scoreHallOfFame[2] = 4000;
	ld	hl,#0x0FA0
	ld	((_scoreHallOfFame + 0x0008)), hl
	ld	hl,#0x0000
	ld	((_scoreHallOfFame + 0x0008)+2), hl
;src/game.c:331: scoreHallOfFame[3] = 3000;
	ld	hl,#0x0BB8
	ld	((_scoreHallOfFame + 0x000c)), hl
	ld	hl,#0x0000
	ld	((_scoreHallOfFame + 0x000c)+2), hl
;src/game.c:332: scoreHallOfFame[4] = 1500;
	ld	hl,#0x05DC
	ld	((_scoreHallOfFame + 0x0010)), hl
	ld	hl,#0x0000
	ld	((_scoreHallOfFame + 0x0010)+2), hl
;src/game.c:333: scoreHallOfFame[5] = 1000;
	ld	hl,#0x03E8
	ld	((_scoreHallOfFame + 0x0014)), hl
	ld	hl,#0x0000
	ld	((_scoreHallOfFame + 0x0014)+2), hl
;src/game.c:334: scoreHallOfFame[6] = 500;
	ld	hl,#0x01F4
	ld	((_scoreHallOfFame + 0x0018)), hl
	ld	hl,#0x0000
	ld	((_scoreHallOfFame + 0x0018)+2), hl
;src/game.c:335: scoreHallOfFame[7] = 300;
	ld	hl,#0x012C
	ld	((_scoreHallOfFame + 0x001c)), hl
	ld	hl,#0x0000
	ld	((_scoreHallOfFame + 0x001c)+2), hl
;src/game.c:337: strcpy(nameHallOfFame[0], "MARTIN");
	ld	de,#_nameHallOfFame
	ld	hl,#___str_2
	xor	a, a
00110$:
	cp	a, (hl)
	ldi
	jr	NZ, 00110$
;src/game.c:338: strcpy(nameHallOfFame[1], "DIEGO");
	ld	de,#(_nameHallOfFame + 0x000f)
	ld	hl,#___str_3
	xor	a, a
00111$:
	cp	a, (hl)
	ldi
	jr	NZ, 00111$
;src/game.c:339: strcpy(nameHallOfFame[2], "MARIA");
	ld	de,#(_nameHallOfFame + 0x001e)
	ld	hl,#___str_4
	xor	a, a
00112$:
	cp	a, (hl)
	ldi
	jr	NZ, 00112$
;src/game.c:340: strcpy(nameHallOfFame[3], "DAVID");
	ld	de,#(_nameHallOfFame + 0x002d)
	ld	hl,#___str_5
	xor	a, a
00113$:
	cp	a, (hl)
	ldi
	jr	NZ, 00113$
;src/game.c:341: strcpy(nameHallOfFame[4], "MASTER");
	ld	de,#(_nameHallOfFame + 0x003c)
	ld	hl,#___str_6
	xor	a, a
00114$:
	cp	a, (hl)
	ldi
	jr	NZ, 00114$
;src/game.c:342: strcpy(nameHallOfFame[5], "EXPERT");
	ld	de,#(_nameHallOfFame + 0x004b)
	ld	hl,#___str_7
	xor	a, a
00115$:
	cp	a, (hl)
	ldi
	jr	NZ, 00115$
;src/game.c:343: strcpy(nameHallOfFame[6], "INTERMEDIATE");
	ld	de,#(_nameHallOfFame + 0x005a)
	ld	hl,#___str_8
	xor	a, a
00116$:
	cp	a, (hl)
	ldi
	jr	NZ, 00116$
;src/game.c:344: strcpy(nameHallOfFame[7], "BEGINNER");
	ld	de,#(_nameHallOfFame + 0x0069)
	ld	hl,#___str_9
	xor	a, a
00117$:
	cp	a, (hl)
	ldi
	jr	NZ, 00117$
;src/game.c:347: clearScreen();
	call	_clearScreen
;src/game.c:349: keys.up    = Key_Q;
	ld	hl,#0x0808
	ld	(_keys), hl
;src/game.c:350: keys.down  = Key_A;
	ld	h, #0x20
	ld	((_keys + 0x0002)), hl
;src/game.c:351: keys.left  = Key_O;
	ld	hl,#0x0404
	ld	((_keys + 0x0004)), hl
;src/game.c:352: keys.right = Key_P;
	ld	hl,#0x0803
	ld	((_keys + 0x0006)), hl
;src/game.c:354: keys.pause = Key_Del;
	ld	hl,#0x8009
	ld	((_keys + 0x000a)), hl
;src/game.c:355: keys.abort = Key_Esc;
	ld	hl,#0x0408
	ld	((_keys + 0x000c)), hl
;src/game.c:357: selectedOption = 1;
	ld	hl,#_selectedOption + 0
	ld	(hl), #0x01
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
;src/game.c:369: void initGame() {
;	---------------------------------
; Function initGame
; ---------------------------------
_initGame::
;src/game.c:372: initCells();
	call	_initCells
;src/game.c:374: for (i = 0; i < 9; i++) {
	ld	c,#0x09
00104$:
;src/game.c:375: addRandomCell();
	push	bc
	call	_addRandomCell
	pop	bc
	ld	b,c
	dec	b
;src/game.c:374: for (i = 0; i < 9; i++) {
	ld	a,b
	ld	c,a
	or	a, a
	jr	NZ,00104$
;src/game.c:378: score = 0;
	xor	a, a
	ld	(#_score + 0),a
	ld	(#_score + 1),a
	ld	(#_score + 2),a
	ld	(#_score + 3),a
;src/game.c:381: renewTileBag();
	jp  _renewTileBag
;src/game.c:394: u8 rotateCellsLeft() {
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
;src/game.c:398: matched = 0;
	ld	c,#0x00
;src/game.c:399: for (i = 0; i < 4; i++) {
	ld	-5 (ix),#0x00
;src/game.c:400: for (j = 1; j < 4; j++) {
00129$:
	ld	e,#0x01
00117$:
;src/game.c:401: if (cells[i][j] != 0) {
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
;src/game.c:403: if (cells[i][j - 1] == 0) {
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
;src/game.c:404: cells[i][j - 1] = cells[i][j];
	ld	0 (iy), b
;src/game.c:405: cells[i][j] = 0;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),#0x00
;src/game.c:406: matched = 1;
	ld	c,#0x01
	jr	00118$
00111$:
;src/game.c:407: } else if (((cells[i][j - 1] == 1) && (cells[i][j] == 2)) ||
	ld	a,d
	dec	a
	jr	NZ,00109$
	ld	a,b
	sub	a, #0x02
	jr	Z,00104$
00109$:
;src/game.c:408: ((cells[i][j - 1] == 2) && (cells[i][j] == 1))) {
	ld	a,d
	sub	a, #0x02
	jr	NZ,00105$
	ld	a,b
	dec	a
	jr	NZ,00105$
00104$:
;src/game.c:409: cells[i][j - 1] = 3;
	ld	0 (iy), #0x03
;src/game.c:410: cells[i][j] = 0;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),#0x00
;src/game.c:411: matched = 1;
	ld	c,#0x01
	jr	00118$
00105$:
;src/game.c:412: } else if ((cells[i][j - 1] == cells[i][j]) && (cells[i][j] > 2)) {
	ld	a,b
	sub	a, d
	jr	NZ,00118$
	ld	a,#0x02
	sub	a, b
	jr	NC,00118$
;src/game.c:413: cells[i][j - 1]++;
	inc	d
	ld	0 (iy), d
;src/game.c:414: cells[i][j] = 0;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),#0x00
;src/game.c:415: matched = 1;
	ld	c,#0x01
00118$:
;src/game.c:400: for (j = 1; j < 4; j++) {
	inc	e
	ld	a,e
	sub	a, #0x04
	jp	C,00117$
;src/game.c:399: for (i = 0; i < 4; i++) {
	inc	-5 (ix)
	ld	a,-5 (ix)
	sub	a, #0x04
	jp	C,00129$
;src/game.c:420: return matched;
	ld	l,c
	ld	sp, ix
	pop	ix
	ret
;src/game.c:431: u8 rotateCellsRight() {
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
;src/game.c:435: matched = 0;
	ld	c,#0x00
;src/game.c:436: for (i = 0; i < 4; i++) {
	ld	-5 (ix),#0x00
;src/game.c:438: do {
00128$:
	ld	e,#0x03
00114$:
;src/game.c:439: j--;
	dec	e
;src/game.c:440: if (cells[i][j] != 0) {
	ld	l,-5 (ix)
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	ld	a,#<(_cells)
	add	a, l
	ld	-2 (ix),a
	ld	a,#>(_cells)
	adc	a, h
	ld	-1 (ix),a
	ld	a,-2 (ix)
	add	a, e
	ld	-4 (ix),a
	ld	a,-1 (ix)
	adc	a, #0x00
	ld	-3 (ix),a
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	b,(hl)
	ld	a,b
	or	a, a
	jr	Z,00115$
;src/game.c:442: if (cells[i][j + 1] == 0) {
	ld	d,e
	inc	d
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
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
;src/game.c:443: cells[i][j + 1] = cells[i][j];
	ld	0 (iy), b
;src/game.c:444: cells[i][j] = 0;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),#0x00
;src/game.c:445: matched = 1;
	ld	c,#0x01
00102$:
;src/game.c:446: } if (((cells[i][j + 1] == 1) && (cells[i][j] == 2)) ||
	ld	b, 0 (iy)
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	d,(hl)
	ld	a,b
	dec	a
	jr	NZ,00111$
	ld	a,d
	sub	a, #0x02
	jr	Z,00106$
00111$:
;src/game.c:447: ((cells[i][j + 1] == 2) && (cells[i][j] == 1))) {
	ld	a,b
	sub	a, #0x02
	jr	NZ,00107$
	ld	a,d
	dec	a
	jr	NZ,00107$
00106$:
;src/game.c:448: cells[i][j + 1] = 3;
	ld	0 (iy), #0x03
;src/game.c:449: cells[i][j] = 0;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),#0x00
;src/game.c:450: matched = 1;
	ld	c,#0x01
	jr	00115$
00107$:
;src/game.c:451: } else if ((cells[i][j + 1] == cells[i][j]) && (cells[i][j] > 2)) {
	ld	a,b
	sub	a, d
	jr	NZ,00115$
	ld	a,#0x02
	sub	a, d
	jr	NC,00115$
;src/game.c:452: cells[i][j + 1]++;
	inc	b
	ld	0 (iy), b
;src/game.c:453: cells[i][j] = 0;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),#0x00
;src/game.c:454: matched = 1;
	ld	c,#0x01
00115$:
;src/game.c:457: } while (j > 0);
	ld	a,e
	or	a, a
	jp	NZ,00114$
;src/game.c:436: for (i = 0; i < 4; i++) {
	inc	-5 (ix)
	ld	a,-5 (ix)
	sub	a, #0x04
	jp	C,00128$
;src/game.c:459: return matched;
	ld	l,c
	ld	sp, ix
	pop	ix
	ret
;src/game.c:470: u8 rotateCellsUp() {
;	---------------------------------
; Function rotateCellsUp
; ---------------------------------
_rotateCellsUp::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;src/game.c:474: matched = 0;
;src/game.c:475: for (i = 1; i < 4; i++) {
	ld	bc,#0x0100
;src/game.c:476: for (j = 0; j < 4; j++) {
00129$:
	ld	a,b
	add	a,#0xFF
	ld	-2 (ix),a
	ld	e,#0x00
00117$:
;src/game.c:477: if (cells[i][j] != 0) {
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
;src/game.c:484: ((cells[i - 1][j] == 2) && (cells[i][j] == 1))) {
	pop	hl
	push	hl
	ld	d,(hl)
;src/game.c:477: if (cells[i][j] != 0) {
	ld	a,d
	or	a, a
	jr	Z,00118$
;src/game.c:479: if (cells[i - 1][j] == 0) {
	ld	l,-2 (ix)
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
	ld	-1 (ix), a
	or	a, a
	jr	NZ,00111$
;src/game.c:480: cells[i - 1][j] = cells[i][j];
	ld	0 (iy), d
;src/game.c:481: cells[i][j] = 0;
	pop	hl
	push	hl
	ld	(hl),#0x00
;src/game.c:482: matched = 1;
	ld	c,#0x01
	jr	00118$
00111$:
;src/game.c:483: } else if (((cells[i - 1][j] == 1) && (cells[i][j] == 2)) ||
	ld	a,-1 (ix)
	dec	a
	jr	NZ,00109$
	ld	a,d
	sub	a, #0x02
	jr	Z,00104$
00109$:
;src/game.c:484: ((cells[i - 1][j] == 2) && (cells[i][j] == 1))) {
	ld	a,-1 (ix)
	sub	a, #0x02
	jr	NZ,00105$
	ld	a,d
	dec	a
	jr	NZ,00105$
00104$:
;src/game.c:485: cells[i - 1][j] = 3;
	ld	0 (iy), #0x03
;src/game.c:486: cells[i][j] = 0;
	pop	hl
	push	hl
	ld	(hl),#0x00
;src/game.c:487: matched = 1;
	ld	c,#0x01
	jr	00118$
00105$:
;src/game.c:488: } else if ((cells[i - 1][j] == cells[i][j]) && (cells[i][j] > 2)) {
	ld	a,d
	sub	a, -1 (ix)
	jr	NZ,00118$
	ld	a,#0x02
	sub	a, d
	jr	NC,00118$
;src/game.c:489: cells[i - 1][j]++;
	ld	c,-1 (ix)
	inc	c
	ld	0 (iy), c
;src/game.c:490: cells[i][j] = 0;
	pop	hl
	push	hl
	ld	(hl),#0x00
;src/game.c:491: matched = 1;
	ld	c,#0x01
00118$:
;src/game.c:476: for (j = 0; j < 4; j++) {
	inc	e
	ld	a,e
	sub	a, #0x04
	jp	C,00117$
;src/game.c:475: for (i = 1; i < 4; i++) {
	inc	b
	ld	a,b
	sub	a, #0x04
	jp	C,00129$
;src/game.c:496: return matched;
	ld	l,c
	ld	sp, ix
	pop	ix
	ret
;src/game.c:507: u8 rotateCellsDown() {
;	---------------------------------
; Function rotateCellsDown
; ---------------------------------
_rotateCellsDown::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;src/game.c:511: matched = 0;
	ld	c,#0x00
;src/game.c:513: do {
	ld	-4 (ix),#0x03
00115$:
;src/game.c:514: i--;
	dec	-4 (ix)
;src/game.c:515: for (j = 0; j < 4; j++) {
	ld	a,-4 (ix)
	inc	a
	ld	-1 (ix),a
	ld	e,#0x00
00118$:
;src/game.c:516: if (cells[i][j] != 0) {
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
;src/game.c:518: if (cells[i + 1][j] == 0) {
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
;src/game.c:519: cells[i + 1][j] = cells[i][j];
	ld	0 (iy), b
;src/game.c:520: cells[i][j] = 0;
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	(hl),#0x00
;src/game.c:521: matched = 1;
	ld	c,#0x01
00102$:
;src/game.c:518: if (cells[i + 1][j] == 0) {
	ld	b, 0 (iy)
;src/game.c:516: if (cells[i][j] != 0) {
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	d,(hl)
;src/game.c:522: } if (((cells[i + 1][j] == 1) && (cells[i][j] == 2)) ||
	ld	a,b
	dec	a
	jr	NZ,00111$
	ld	a,d
	sub	a, #0x02
	jr	Z,00106$
00111$:
;src/game.c:523: ((cells[i + 1][j] == 2) && (cells[i][j] == 1))) {
	ld	a,b
	sub	a, #0x02
	jr	NZ,00107$
	ld	a,d
	dec	a
	jr	NZ,00107$
00106$:
;src/game.c:524: cells[i + 1][j] = 3;
	ld	0 (iy), #0x03
;src/game.c:525: cells[i][j] = 0;
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	(hl),#0x00
;src/game.c:526: matched = 1;
	ld	c,#0x01
	jr	00119$
00107$:
;src/game.c:527: } else if ((cells[i + 1][j] == cells[i][j]) && (cells[i][j] > 2)) {
	ld	a,b
	sub	a, d
	jr	NZ,00119$
	ld	a,#0x02
	sub	a, d
	jr	NC,00119$
;src/game.c:528: cells[i + 1][j]++;
	inc	b
	ld	0 (iy), b
;src/game.c:529: cells[i][j] = 0;
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	(hl),#0x00
;src/game.c:530: matched = 1;
	ld	c,#0x01
00119$:
;src/game.c:515: for (j = 0; j < 4; j++) {
	inc	e
	ld	a,e
	sub	a, #0x04
	jp	C,00118$
;src/game.c:535: } while (i > 0);
	ld	a,-4 (ix)
	or	a, a
	jp	NZ,00115$
;src/game.c:537: return matched;
	ld	l,c
	ld	sp, ix
	pop	ix
	ret
;src/game.c:548: void printCells() {
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
;src/game.c:555: for (i = 0; i < 4; i++) {
	ld	c,#0x00
	ld	-1 (ix),#0x00
00105$:
;src/game.c:557: y = 6 + (i * 44);
	ld	a,-1 (ix)
	add	a, #0x06
	ld	-5 (ix),a
;src/game.c:558: for (j = 0; j < 4; j++) {
	ld	-4 (ix),#0x00
	ld	b,#0x00
00103$:
;src/game.c:560: x = 4 + (j * 11);
	ld	d,b
	inc	d
	inc	d
	inc	d
	inc	d
;src/game.c:561: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, x, y);
	push	bc
	ld	a,-5 (ix)
	push	af
	inc	sp
	push	de
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	pop	bc
;src/game.c:562: cpct_drawSprite(tiles[cells[i][j]], pvmem, 10, 40);
	ld	-3 (ix),l
	ld	-2 (ix),h
	ld	l,c
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	ld	de,#_cells
	add	hl,de
	ld	e,-4 (ix)
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
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	push	hl
	push	de
	call	_cpct_drawSprite
	pop	bc
;src/game.c:558: for (j = 0; j < 4; j++) {
	ld	a,b
	add	a, #0x0B
	ld	b,a
	inc	-4 (ix)
	ld	a,-4 (ix)
	sub	a, #0x04
	jr	C,00103$
;src/game.c:555: for (i = 0; i < 4; i++) {
	ld	a,-1 (ix)
	add	a, #0x2C
	ld	-1 (ix),a
	inc	c
	ld	a,c
	sub	a, #0x04
	jr	C,00105$
;src/game.c:565: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 62, 20);
	ld	hl,#0x143E
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/game.c:566: cpct_drawSprite(tiles[tileBag[currentTile]], pvmem, 10, 40);
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
;src/game.c:577: void drawScore() {
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
;src/game.c:581: for (i = 0; i < 4; i++) {
	ld	c,#0x00
	ld	-1 (ix),#0x00
;src/game.c:582: for (j = 0; j < 4; j++) {
00116$:
	ld	a,-1 (ix)
	add	a, #0x06
	ld	-2 (ix),a
	ld	-7 (ix),#0x00
	ld	b,#0x00
00108$:
;src/game.c:584: z = cells[i][j];
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
;src/game.c:585: if (z >= 3) {
;src/game.c:586: if (z == 3) {
	ld	a,e
	cp	a,#0x03
	jr	C,00109$
	sub	a, #0x03
	jr	NZ,00102$
;src/game.c:587: partialScore = 1;
	ld	-6 (ix),#0x01
	xor	a, a
	ld	-5 (ix),a
	ld	-4 (ix),a
	ld	-3 (ix),a
	jr	00103$
00102$:
;src/game.c:589: partialScore = scores[z];
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
;src/game.c:591: score += partialScore;
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
;src/game.c:592: drawNumber(partialScore, 4, 3 + (11 * j), 6 + (44 * i));
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
;src/game.c:582: for (j = 0; j < 4; j++) {
	ld	a,b
	add	a, #0x0B
	ld	b,a
	inc	-7 (ix)
	ld	a,-7 (ix)
	sub	a, #0x04
	jp	C,00108$
;src/game.c:581: for (i = 0; i < 4; i++) {
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
;src/game.c:606: void getName() {
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
;src/game.c:610: drawFrame(9, 60, 73, 150);
	ld	hl,#0x9649
	push	hl
	ld	hl,#0x3C09
	push	hl
	call	_drawFrame
	pop	af
;src/game.c:612: drawText("NEW HIGH SCORE", 20, 70, 1);
	ld	hl, #0x0146
	ex	(sp),hl
	ld	a,#0x14
	push	af
	inc	sp
	ld	hl,#___str_10
	push	hl
	call	_drawText
	pop	af
;src/game.c:613: drawText("ENTER YOUR NAME", 18, 85, 1);
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
;src/game.c:614: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 11, 100);
	inc	sp
	ld	hl,#0x640B
	ex	(sp),hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/game.c:615: cpct_drawSprite(g_tile_symbols_1, pvmem, 3, 11);
	ld	hl,#0x0B03
	push	hl
	push	bc
	ld	hl,#_g_tile_symbols_1
	push	hl
	call	_cpct_drawSprite
;src/game.c:616: drawText(" TO CHANGE LETTER", 19, 100, 0);
	ld	hl,#0x0064
	push	hl
	ld	a,#0x13
	push	af
	inc	sp
	ld	hl,#___str_12
	push	hl
	call	_drawText
	pop	af
;src/game.c:617: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 16, 100);
	inc	sp
	ld	hl,#0x6410
	ex	(sp),hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/game.c:618: cpct_drawSprite(g_tile_symbols_2, pvmem, 3, 11);
	ld	hl,#0x0B03
	push	hl
	push	bc
	ld	hl,#_g_tile_symbols_2
	push	hl
	call	_cpct_drawSprite
;src/game.c:619: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 16, 100);
	ld	hl,#0x6410
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/game.c:620: cpct_drawSprite(g_font_big[38], pvmem, 3, 11);
	ld	hl,#0x0B03
	push	hl
	push	bc
	ld	hl,#(_g_font_big + 0x04e6)
	push	hl
	call	_cpct_drawSprite
;src/game.c:621: drawText(" [ TO END", 20, 115, 1);
	ld	hl,#0x0173
	push	hl
	ld	a,#0x14
	push	af
	inc	sp
	ld	hl,#___str_13
	push	hl
	call	_drawText
	pop	af
;src/game.c:622: drawFrame(12, 130, 70, 160);
	inc	sp
	ld	hl,#0xA046
	ex	(sp),hl
	ld	hl,#0x820C
	push	hl
	call	_drawFrame
	pop	af
	pop	af
;src/game.c:623: strcpy(newNameHighScore, "A");
	ld	de,#_newNameHighScore
	ld	hl,#___str_14
	xor	a, a
00166$:
	cp	a, (hl)
	ldi
	jr	NZ, 00166$
;src/game.c:624: drawText(newNameHighScore, 0, 140, 1);
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
;src/game.c:625: pos = 0;
	ld	-5 (ix),#0x00
;src/game.c:626: chr = 65;
	ld	-6 (ix),#0x41
;src/game.c:627: moved = 0;
	ld	-4 (ix),#0x00
;src/game.c:628: while (1) {
00126$:
;src/game.c:629: delay(24);
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0018
	push	hl
	call	_delay
	pop	af
	pop	af
;src/game.c:630: cpct_scanKeyboard_f();
	call	_cpct_scanKeyboard_f
;src/game.c:632: if (cpct_isKeyPressed(keys.down)) {
	ld	hl, (#_keys + 2)
	call	_cpct_isKeyPressed
	ld	-1 (ix),l
;src/game.c:640: newNameHighScore[pos] = '\0';
	ld	a,#<(_newNameHighScore)
	add	a, -5 (ix)
	ld	-3 (ix),a
	ld	a,#>(_newNameHighScore)
	adc	a, #0x00
	ld	-2 (ix),a
;src/game.c:632: if (cpct_isKeyPressed(keys.down)) {
	ld	a,-1 (ix)
	or	a, a
	jr	Z,00116$
;src/game.c:633: chr++;
	inc	-6 (ix)
;src/game.c:634: moved = 1;
	ld	-4 (ix),#0x01
	jp	00117$
00116$:
;src/game.c:635: } else if (cpct_isKeyPressed(keys.up)) {
	ld	hl, (#_keys + 0)
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00113$
;src/game.c:636: chr--;
	dec	-6 (ix)
;src/game.c:637: moved = 1;
	ld	-4 (ix),#0x01
	jp	00117$
00113$:
;src/game.c:638: } else if (cpct_isKeyPressed(keys.right)) {
	ld	hl, (#_keys + 6)
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00110$
;src/game.c:639: if (chr == 91) {
	ld	a,-6 (ix)
	sub	a, #0x5B
	jr	NZ,00102$
;src/game.c:640: newNameHighScore[pos] = '\0';
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	(hl),#0x00
;src/game.c:641: break;
	jp	00128$
00102$:
;src/game.c:644: pos++;
	inc	-5 (ix)
;src/game.c:640: newNameHighScore[pos] = '\0';
	ld	a,#<(_newNameHighScore)
	add	a, -5 (ix)
	ld	-3 (ix),a
	ld	a,#>(_newNameHighScore)
	adc	a, #0x00
	ld	-2 (ix),a
;src/game.c:645: newNameHighScore[pos] = 65;
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	(hl),#0x41
;src/game.c:646: newNameHighScore[pos + 1] = '\0';
	ld	c,-5 (ix)
	inc	c
	ld	hl,#_newNameHighScore
	ld	b,#0x00
	add	hl, bc
	ld	(hl),#0x00
;src/game.c:647: chr = 65;
	ld	-6 (ix),#0x41
;src/game.c:648: moved = 1;
	ld	-4 (ix),#0x01
	jr	00117$
00110$:
;src/game.c:651: } else if (cpct_isKeyPressed(keys.left)) {
	ld	hl, (#_keys + 4)
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00107$
;src/game.c:652: newNameHighScore[pos] = '\0';
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	(hl),#0x00
;src/game.c:653: pos--;
	dec	-5 (ix)
;src/game.c:640: newNameHighScore[pos] = '\0';
	ld	a,#<(_newNameHighScore)
	add	a, -5 (ix)
	ld	-3 (ix),a
	ld	a,#>(_newNameHighScore)
	adc	a, #0x00
	ld	-2 (ix),a
;src/game.c:654: chr = newNameHighScore[pos];
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	a,(hl)
	ld	-6 (ix),a
;src/game.c:655: moved = 1;
	ld	-4 (ix),#0x01
	jr	00117$
00107$:
;src/game.c:656: } else if (cpct_isKeyPressed(keys.abort)) {
	ld	hl, (#_keys + 12)
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	NZ,00128$
;src/game.c:657: break;
00117$:
;src/game.c:659: if (moved) {
	ld	a,-4 (ix)
	or	a, a
	jp	Z,00126$
;src/game.c:660: moved = 0;
	ld	-4 (ix),#0x00
;src/game.c:661: if (chr > 91)
	ld	a,#0x5B
	sub	a, -6 (ix)
	jr	NC,00121$
;src/game.c:662: chr = 65;
	ld	-6 (ix),#0x41
	jr	00122$
00121$:
;src/game.c:663: else if (chr < 65)
	ld	a,-6 (ix)
	sub	a, #0x41
	jr	NC,00122$
;src/game.c:664: chr = 91;
	ld	-6 (ix),#0x5B
00122$:
;src/game.c:665: newNameHighScore[pos] = chr;
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	a,-6 (ix)
	ld	(hl),a
;src/game.c:666: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 13, 140);
	ld	hl,#0x8C0D
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	-3 (ix),l
	ld	-2 (ix),h
;src/game.c:667: cpct_drawSolidBox(pvmem, cpct_px2byteM0(5, 5), 60, 11);
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
;src/game.c:668: drawText(newNameHighScore, 20, 140, 1);
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
;src/game.c:683: void setHighScore(u32 score) {
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
;src/game.c:686: i = 8;
	ld	c,#0x08
;src/game.c:687: while ((score > scoreHallOfFame[i - 1]) && (i > 0)) {
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
;src/game.c:688: i--;
	ld	c,b
	jr	00102$
00104$:
;src/game.c:690: j = 7;
;src/game.c:691: if (i <= j) {
	ld	a,#0x07
	ld	b,a
	sub	a, c
	jp	C,00111$
;src/game.c:692: while ((i < j) && (j > 0)) {
00106$:
;src/game.c:693: scoreHallOfFame[j] = scoreHallOfFame[j - 1];
	ld	-10 (ix),b
	ld	-9 (ix),#0x00
;src/game.c:694: strcpy(nameHallOfFame[j], nameHallOfFame[j - 1]);
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
;src/game.c:693: scoreHallOfFame[j] = scoreHallOfFame[j - 1];
	pop	hl
	push	hl
	add	hl, hl
	add	hl, hl
;src/game.c:694: strcpy(nameHallOfFame[j], nameHallOfFame[j - 1]);
	ld	a,#<(_nameHallOfFame)
	add	a, -6 (ix)
	ld	-6 (ix),a
	ld	a,#>(_nameHallOfFame)
	adc	a, -5 (ix)
	ld	-5 (ix),a
;src/game.c:693: scoreHallOfFame[j] = scoreHallOfFame[j - 1];
	add	hl,de
	ex	(sp), hl
;src/game.c:694: strcpy(nameHallOfFame[j], nameHallOfFame[j - 1]);
;src/game.c:692: while ((i < j) && (j > 0)) {
	ld	a,c
	sub	a, b
	jr	NC,00108$
	ld	a,b
	or	a, a
	jr	Z,00108$
;src/game.c:693: scoreHallOfFame[j] = scoreHallOfFame[j - 1];
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
;src/game.c:695: j--;
	jp	00106$
00108$:
;src/game.c:697: getName();
	call	_getName
;src/game.c:698: wait4UserKeypress();
	call	_wait4UserKeypress
;src/game.c:699: scoreHallOfFame[j] = score;
	pop	de
	push	de
	ld	hl, #0x000E
	add	hl, sp
	ld	bc, #0x0004
	ldir
;src/game.c:700: strcpy(nameHallOfFame[j], newNameHighScore);
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
;src/game.c:704: void drawScoreBoard() {
;	---------------------------------
; Function drawScoreBoard
; ---------------------------------
_drawScoreBoard::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;src/game.c:708: cpct_memset(CPCT_VMEM_START, cpct_px2byteM0(5, 5), 0x4000);
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
;src/game.c:710: drawText("AMSTHREES SCOREBOARD", 13, 2, 1);
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
;src/game.c:712: for (i = 0; i < 8; i++) {
	ld	-4 (ix),#0x00
	ld	-3 (ix),#0x00
	ld	bc,#0x0000
	ld	-1 (ix),#0x00
00106$:
;src/game.c:713: drawNumber(i + 1, 2, 5, 30 + (i * 15));
	ld	a,-3 (ix)
	add	a, #0x1E
	ld	-2 (ix),a
	ld	e,-4 (ix)
	ld	d,#0x00
	push	de
	pop	iy
	inc	iy
	push	bc
	push	de
	ld	a,-2 (ix)
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
;src/game.c:714: drawText(nameHallOfFame[i], 14, 30 + (i * 15), 0);
	ld	iy,#_nameHallOfFame
	add	iy, bc
	push	bc
	push	de
	xor	a, a
	push	af
	inc	sp
	ld	d, -2 (ix)
	ld	e,#0x0E
	push	de
	push	iy
	call	_drawText
	pop	af
	pop	af
	inc	sp
	pop	de
	pop	bc
;src/game.c:715: drawNumber(scoreHallOfFame[i], 1, 69, 30 + (i * 15));
	ld	a,-1 (ix)
	add	a, #0x1E
	ld	-2 (ix),a
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
	ld	a,-2 (ix)
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
;src/game.c:712: for (i = 0; i < 8; i++) {
	ld	a,-3 (ix)
	add	a, #0x0F
	ld	-3 (ix),a
	ld	hl,#0x000F
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	a,-1 (ix)
	add	a, #0x0F
	ld	-1 (ix),a
	inc	-4 (ix)
	ld	a,-4 (ix)
	sub	a, #0x08
	jp	C,00106$
;src/game.c:718: drawText("JOHN LOBO", 25, 170, 1);
	ld	hl,#0x01AA
	push	hl
	ld	a,#0x19
	push	af
	inc	sp
	ld	hl,#___str_16
	push	hl
	call	_drawText
	pop	af
;src/game.c:719: drawText("@ GLASNOST CORP 2016", 11, 185, 1);
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
;src/game.c:723: do {
	ld	bc,#0x9C40
	ld	de,#0x0000
00103$:
;src/game.c:724: c--;                       // One more cycle
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
;src/game.c:725: cpct_scanKeyboard_f();     // Scan the scan the keyboard
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
;src/game.c:738: void game(void) {
;	---------------------------------
; Function game
; ---------------------------------
_game::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;src/game.c:741: initGame();
	call	_initGame
;src/game.c:744: clearScreen();
	call	_clearScreen
;src/game.c:747: drawFrame(2, 1, 49, 182);
	ld	hl,#0xB631
	push	hl
	ld	hl,#0x0102
	push	hl
	call	_drawFrame
	pop	af
	pop	af
;src/game.c:748: printCells();
	call	_printCells
;src/game.c:749: drawText("NEXT", 62, 2, 0);
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
;src/game.c:751: wait4UserKeypress();
	call	_wait4UserKeypress
;src/game.c:753: moved = 0;
	ld	-1 (ix),#0x00
;src/game.c:755: while (1) {
00128$:
;src/game.c:756: delay(24);
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0018
	push	hl
	call	_delay
	pop	af
	pop	af
;src/game.c:757: cpct_scanKeyboard_f();
	call	_cpct_scanKeyboard_f
;src/game.c:759: if (cpct_isKeyPressed(keys.right)) {
	ld	hl, (#_keys + 6)
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00121$
;src/game.c:760: if (rotateCellsRight()) {
	call	_rotateCellsRight
	ld	a,l
	or	a, a
	jr	Z,00122$
;src/game.c:761: addRandomCellTurn(RIGHT);
	ld	a,#0x01
	push	af
	inc	sp
	call	_addRandomCellTurn
	inc	sp
;src/game.c:762: moved = 1;
	ld	-1 (ix),#0x01
	jr	00122$
00121$:
;src/game.c:764: } else if (cpct_isKeyPressed(keys.left)) {
	ld	hl, (#_keys + 4)
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00118$
;src/game.c:765: if (rotateCellsLeft()) {
	call	_rotateCellsLeft
	ld	a,l
	or	a, a
	jr	Z,00122$
;src/game.c:766: addRandomCellTurn(LEFT);
	xor	a, a
	push	af
	inc	sp
	call	_addRandomCellTurn
	inc	sp
;src/game.c:767: moved = 1;
	ld	-1 (ix),#0x01
	jr	00122$
00118$:
;src/game.c:769: } else if (cpct_isKeyPressed(keys.down)) {
	ld	hl, (#_keys + 2)
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00115$
;src/game.c:770: if (rotateCellsDown()) {
	call	_rotateCellsDown
	ld	a,l
	or	a, a
	jr	Z,00122$
;src/game.c:771: addRandomCellTurn(DOWN);
	ld	a,#0x03
	push	af
	inc	sp
	call	_addRandomCellTurn
	inc	sp
;src/game.c:772: moved = 1;
	ld	-1 (ix),#0x01
	jr	00122$
00115$:
;src/game.c:774: } else if (cpct_isKeyPressed(keys.up)) {
	ld	hl, (#_keys + 0)
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00112$
;src/game.c:775: if (rotateCellsUp()) {
	call	_rotateCellsUp
	ld	a,l
	or	a, a
	jr	Z,00122$
;src/game.c:776: addRandomCellTurn(UP);
	ld	a,#0x02
	push	af
	inc	sp
	call	_addRandomCellTurn
	inc	sp
;src/game.c:777: moved = 1;
	ld	-1 (ix),#0x01
	jr	00122$
00112$:
;src/game.c:779: } else if (cpct_isKeyPressed(keys.abort))
	ld	hl, (#_keys + 12)
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jp	NZ,00130$
;src/game.c:780: break;
00122$:
;src/game.c:782: if (moved) {
	ld	a,-1 (ix)
	or	a, a
	jp	Z,00128$
;src/game.c:783: printCells();
	call	_printCells
;src/game.c:784: moved = 0;
	ld	-1 (ix),#0x00
;src/game.c:785: if (anyMovesLeft() == 0) {
	call	_anyMovesLeft
	ld	a,l
	or	a, a
	jp	NZ,00128$
;src/game.c:786: drawScore();
	call	_drawScore
;src/game.c:787: wait4UserKeypress();
	call	_wait4UserKeypress
;src/game.c:788: drawFrame(14, 60, 68, 142);
	ld	hl,#0x8E44
	push	hl
	ld	hl,#0x3C0E
	push	hl
	call	_drawFrame
	pop	af
;src/game.c:789: drawFallingText("NO MORE MOVES", 20, 90, 96);
	ld	hl, #0x605A
	ex	(sp),hl
	ld	a,#0x14
	push	af
	inc	sp
	ld	hl,#___str_19
	push	hl
	call	_drawFallingText
	pop	af
;src/game.c:790: drawText("GAME OVER", 22, 70, 1);
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
;src/game.c:791: sprintf(aux_txt, "SCORE  %d", score);
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
;src/game.c:792: drawText(aux_txt, 22, 120, 1);
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
;src/game.c:793: wait4UserKeypress();
	call	_wait4UserKeypress
;src/game.c:794: setHighScore(score);
	ld	hl,(_score + 2)
	push	hl
	ld	hl,(_score)
	push	hl
	call	_setHighScore
	pop	af
	pop	af
;src/game.c:795: drawScoreBoard();
	call	_drawScoreBoard
;src/game.c:796: break;
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
;src/game.c:803: void checkKeyboardMenu() {
;	---------------------------------
; Function checkKeyboardMenu
; ---------------------------------
_checkKeyboardMenu::
;src/game.c:807: cpct_scanKeyboard_f();
	call	_cpct_scanKeyboard_f
;src/game.c:809: if (selectedOption == 1) {
	ld	a,(#_selectedOption + 0)
	dec	a
	jr	NZ,00102$
;src/game.c:810: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 27, 71);
	ld	hl,#0x471B
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/game.c:811: cpct_drawSprite(g_tile_marker_3, pvideo, 2, 9);
	ld	hl,#0x0902
	push	hl
	push	bc
	ld	hl,#_g_tile_marker_3
	push	hl
	call	_cpct_drawSprite
;src/game.c:812: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 54, 71);
	ld	hl,#0x4736
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/game.c:813: cpct_drawSprite(g_tile_marker_3, pvideo, 2, 9);
	ld	hl,#0x0902
	push	hl
	push	bc
	ld	hl,#_g_tile_marker_3
	push	hl
	call	_cpct_drawSprite
;src/game.c:814: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 27, 51);
	ld	hl,#0x331B
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/game.c:815: cpct_drawSprite(g_tile_marker_0, pvideo, 2, 9);
	ld	hl,#0x0902
	push	hl
	push	bc
	ld	hl,#_g_tile_marker_0
	push	hl
	call	_cpct_drawSprite
;src/game.c:816: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 54, 51);
	ld	hl,#0x3336
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/game.c:817: cpct_drawSprite(g_tile_marker_0, pvideo, 2, 9);
	ld	hl,#0x0902
	push	hl
	push	bc
	ld	hl,#_g_tile_marker_0
	push	hl
	call	_cpct_drawSprite
	jr	00103$
00102$:
;src/game.c:819: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 27, 51);
	ld	hl,#0x331B
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/game.c:820: cpct_drawSprite(g_tile_marker_3, pvideo, 2, 9);
	ld	hl,#0x0902
	push	hl
	push	bc
	ld	hl,#_g_tile_marker_3
	push	hl
	call	_cpct_drawSprite
;src/game.c:821: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 54, 51);
	ld	hl,#0x3336
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/game.c:822: cpct_drawSprite(g_tile_marker_3, pvideo, 2, 9);
	ld	hl,#0x0902
	push	hl
	push	bc
	ld	hl,#_g_tile_marker_3
	push	hl
	call	_cpct_drawSprite
;src/game.c:823: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 27, 71);
	ld	hl,#0x471B
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/game.c:824: cpct_drawSprite(g_tile_marker_0, pvideo, 2, 9);
	ld	hl,#0x0902
	push	hl
	push	bc
	ld	hl,#_g_tile_marker_0
	push	hl
	call	_cpct_drawSprite
;src/game.c:825: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 54, 71);
	ld	hl,#0x4736
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/game.c:826: cpct_drawSprite(g_tile_marker_0, pvideo, 2, 9);
	ld	hl,#0x0902
	push	hl
	push	bc
	ld	hl,#_g_tile_marker_0
	push	hl
	call	_cpct_drawSprite
00103$:
;src/game.c:830: if (cpct_isKeyPressed(Key_1)) {
	ld	hl,#0x0108
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jp	Z,00110$
;src/game.c:832: selectedOption = 1;
	ld	hl,#_selectedOption + 0
	ld	(hl), #0x01
;src/game.c:834: waitKeyUp(Key_1);
	ld	hl,#0x0108
	push	hl
	call	_waitKeyUp
;src/game.c:836: keys.up    = redefineKey("UP");
	ld	hl, #___str_22
	ex	(sp),hl
	call	_redefineKey
	pop	af
	ld	c,l
	ld	b,h
	ld	(_keys), bc
;src/game.c:837: keys.down  = redefineKey("DOWN");
	ld	hl,#___str_23
	push	hl
	call	_redefineKey
	pop	af
	ld	c,l
	ld	b,h
	ld	((_keys + 0x0002)), bc
;src/game.c:838: keys.left  = redefineKey("LEFT");
	ld	hl,#___str_24
	push	hl
	call	_redefineKey
	pop	af
	ld	c,l
	ld	b,h
	ld	((_keys + 0x0004)), bc
;src/game.c:839: keys.right = redefineKey("RIGHT");
	ld	hl,#___str_25
	push	hl
	call	_redefineKey
	pop	af
	ld	c,l
	ld	b,h
	ld	((_keys + 0x0006)), bc
;src/game.c:840: keys.pause = redefineKey("PAUSE");
	ld	hl,#___str_26
	push	hl
	call	_redefineKey
	pop	af
	ld	c,l
	ld	b,h
	ld	((_keys + 0x000a)), bc
;src/game.c:841: keys.abort = redefineKey("ABORT");
	ld	hl,#___str_27
	push	hl
	call	_redefineKey
	pop	af
	ld	c,l
	ld	b,h
	ld	((_keys + 0x000c)), bc
;src/game.c:843: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 39 - 10 * FONT_W, 144);
	ld	hl,#0x9009
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
;src/game.c:844: cpct_drawSolidBox(pvideo, cpct_px2byteM0(5, 5), 15 * FONT_W, FONT_H);
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
00110$:
;src/game.c:848: else if (cpct_isKeyPressed(Key_2)) {
	ld	hl,#0x0208
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00107$
;src/game.c:850: selectedOption = 2;
	ld	hl,#_selectedOption + 0
	ld	(hl), #0x02
;src/game.c:852: keys.up    = Joy0_Up;
	ld	hl,#0x0109
	ld	(_keys), hl
;src/game.c:853: keys.down  = Joy0_Down;
	ld	h, #0x02
	ld	((_keys + 0x0002)), hl
;src/game.c:854: keys.left  = Joy0_Left;
	ld	h, #0x04
	ld	((_keys + 0x0004)), hl
;src/game.c:855: keys.right = Joy0_Right;
	ld	h, #0x08
	ld	((_keys + 0x0006)), hl
;src/game.c:857: waitKeyUp(Key_2);
	ld	hl,#0x0208
	push	hl
	call	_waitKeyUp
;src/game.c:859: keys.pause = redefineKey("PAUSE");
	ld	hl, #___str_26
	ex	(sp),hl
	call	_redefineKey
	pop	af
	ld	c,l
	ld	b,h
	ld	((_keys + 0x000a)), bc
;src/game.c:860: keys.abort = redefineKey("ABORT");
	ld	hl,#___str_27
	push	hl
	call	_redefineKey
	pop	af
	ld	c,l
	ld	b,h
	ld	((_keys + 0x000c)), bc
;src/game.c:862: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 39 - 10 * FONT_W, 144);
	ld	hl,#0x9009
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
;src/game.c:863: cpct_drawSolidBox(pvideo, cpct_px2byteM0(5, 5), 15 * FONT_W, FONT_H);
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
00107$:
;src/game.c:868: else if (cpct_isKeyPressed(Key_4)) {
	ld	hl,#0x0107
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	ret	Z
;src/game.c:870: waitKeyUp(Key_1);
	ld	hl,#0x0108
	push	hl
	call	_waitKeyUp
	pop	af
;src/game.c:871: game();
	call	_game
;src/game.c:872: drawMenu();
	call	_drawMenu
	ret
___str_22:
	.ascii "UP"
	.db 0x00
___str_23:
	.ascii "DOWN"
	.db 0x00
___str_24:
	.ascii "LEFT"
	.db 0x00
___str_25:
	.ascii "RIGHT"
	.db 0x00
___str_26:
	.ascii "PAUSE"
	.db 0x00
___str_27:
	.ascii "ABORT"
	.db 0x00
;src/game.c:880: void threes() {
;	---------------------------------
; Function threes
; ---------------------------------
_threes::
;src/game.c:883: while (1) {
00105$:
;src/game.c:885: drawMenu();
	call	_drawMenu
;src/game.c:889: while (lapso < SWITCH_SCREENS) {
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
;src/game.c:891: checkKeyboardMenu();
	push	bc
	push	de
	call	_checkKeyboardMenu
	pop	de
	pop	bc
;src/game.c:893: lapso++;
	inc	c
	jr	NZ,00101$
	inc	b
	jr	NZ,00101$
	inc	e
	jr	NZ,00101$
	inc	d
	jr	00101$
00103$:
;src/game.c:897: drawScoreBoard();
	call	_drawScoreBoard
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
	.area _CABS (ABS)
