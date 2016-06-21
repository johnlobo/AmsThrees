                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.5 #9498 (Mac OS X x86_64)
                              4 ;--------------------------------------------------------
                              5 	.module game
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _checkKeyboardMenu
                             12 	.globl _drawMenu
                             13 	.globl _game
                             14 	.globl _drawScoreBoard
                             15 	.globl _setHighScore
                             16 	.globl _getName
                             17 	.globl _drawScore
                             18 	.globl _printCells
                             19 	.globl _rotateCellsDown
                             20 	.globl _rotateCellsUp
                             21 	.globl _rotateCellsRight
                             22 	.globl _rotateCellsLeft
                             23 	.globl _initGame
                             24 	.globl _initCells
                             25 	.globl _addRandomCell
                             26 	.globl _addRandomCellTurn
                             27 	.globl _anyMovesLeft
                             28 	.globl _anyOfThisInAdjacents
                             29 	.globl _getAdjacents
                             30 	.globl _initAdjacents
                             31 	.globl _countZeroes
                             32 	.globl _delay
                             33 	.globl _renewTileBag
                             34 	.globl _myInterruptHandler
                             35 	.globl _redefineKey
                             36 	.globl _waitKeyUp
                             37 	.globl _wait4UserKeypress
                             38 	.globl _drawFrame
                             39 	.globl _drawFallingText
                             40 	.globl _drawText
                             41 	.globl _drawNumber
                             42 	.globl _clearScreen
                             43 	.globl _cpct_restoreState_mxor_u8
                             44 	.globl _cpct_setSeed_mxor
                             45 	.globl _cpct_getRandom_mxor_u8
                             46 	.globl _cpct_akp_stop
                             47 	.globl _cpct_akp_musicPlay
                             48 	.globl _cpct_akp_musicInit
                             49 	.globl _cpct_getScreenPtr
                             50 	.globl _cpct_waitVSYNC
                             51 	.globl _cpct_drawSolidBox
                             52 	.globl _cpct_drawSprite
                             53 	.globl _cpct_px2byteM0
                             54 	.globl _cpct_isAnyKeyPressed_f
                             55 	.globl _cpct_isKeyPressed
                             56 	.globl _cpct_scanKeyboard_f
                             57 	.globl _cpct_memset
                             58 	.globl _cpct_setInterruptHandler
                             59 	.globl _cpct_disableFirmware
                             60 	.globl _sprintf
                             61 	.globl _playing
                             62 	.globl _newNameHighScore
                             63 	.globl _maxTiles
                             64 	.globl _currentTile
                             65 	.globl _tileBag
                             66 	.globl _aux_txt
                             67 	.globl _selectedOption
                             68 	.globl _nextTile
                             69 	.globl _nameHallOfFame
                             70 	.globl _scoreHallOfFame
                             71 	.globl _score
                             72 	.globl _adjacents
                             73 	.globl _cells
                             74 	.globl _keys
                             75 	.globl _tiles
                             76 	.globl _scores
                             77 	.globl _values
                             78 	.globl _initialization
                             79 	.globl _threes
                             80 ;--------------------------------------------------------
                             81 ; special function registers
                             82 ;--------------------------------------------------------
                             83 ;--------------------------------------------------------
                             84 ; ram data
                             85 ;--------------------------------------------------------
                             86 	.area _DATA
   8A29                      87 _keys::
   8A29                      88 	.ds 14
   8A37                      89 _cells::
   8A37                      90 	.ds 16
   8A47                      91 _adjacents::
   8A47                      92 	.ds 5
   8A4C                      93 _score::
   8A4C                      94 	.ds 4
   8A50                      95 _scoreHallOfFame::
   8A50                      96 	.ds 32
   8A70                      97 _nameHallOfFame::
   8A70                      98 	.ds 120
   8AE8                      99 _nextTile::
   8AE8                     100 	.ds 1
   8AE9                     101 _selectedOption::
   8AE9                     102 	.ds 1
   8AEA                     103 _aux_txt::
   8AEA                     104 	.ds 2
   8AEC                     105 _tileBag::
   8AEC                     106 	.ds 12
   8AF8                     107 _currentTile::
   8AF8                     108 	.ds 1
   8AF9                     109 _maxTiles::
   8AF9                     110 	.ds 1
                            111 ;--------------------------------------------------------
                            112 ; ram data
                            113 ;--------------------------------------------------------
                            114 	.area _INITIALIZED
   8AFB                     115 _newNameHighScore::
   8AFB                     116 	.ds 15
   8B0A                     117 _playing::
   8B0A                     118 	.ds 1
                            119 ;--------------------------------------------------------
                            120 ; absolute external ram data
                            121 ;--------------------------------------------------------
                            122 	.area _DABS (ABS)
                            123 ;--------------------------------------------------------
                            124 ; global & static initialisations
                            125 ;--------------------------------------------------------
                            126 	.area _HOME
                            127 	.area _GSINIT
                            128 	.area _GSFINAL
                            129 	.area _GSINIT
                            130 ;--------------------------------------------------------
                            131 ; Home
                            132 ;--------------------------------------------------------
                            133 	.area _HOME
                            134 	.area _HOME
                            135 ;--------------------------------------------------------
                            136 ; code
                            137 ;--------------------------------------------------------
                            138 	.area _CODE
                            139 ;src/game.c:55: void myInterruptHandler() {
                            140 ;	---------------------------------
                            141 ; Function myInterruptHandler
                            142 ; ---------------------------------
   3000                     143 _myInterruptHandler::
                            144 ;src/game.c:56: if (playing) {
   3000 3A 0A 8B      [13]  145 	ld	a,(#_playing + 0)
   3003 B7            [ 4]  146 	or	a, a
   3004 C8            [11]  147 	ret	Z
                            148 ;src/game.c:58: cpct_akp_musicPlay();
   3005 C3 B5 72      [10]  149 	jp  _cpct_akp_musicPlay
   3008                     150 _values:
   3008 00 00               151 	.dw #0x0000
   300A 01 00               152 	.dw #0x0001
   300C 02 00               153 	.dw #0x0002
   300E 03 00               154 	.dw #0x0003
   3010 06 00               155 	.dw #0x0006
   3012 0C 00               156 	.dw #0x000C
   3014 18 00               157 	.dw #0x0018
   3016 30 00               158 	.dw #0x0030
   3018 60 00               159 	.dw #0x0060
   301A C0 00               160 	.dw #0x00C0
   301C 80 01               161 	.dw #0x0180
   301E 00 03               162 	.dw #0x0300
   3020 00 06               163 	.dw #0x0600
   3022 00 0C               164 	.dw #0x0C00
   3024 00 18               165 	.dw #0x1800
   3026                     166 _scores:
   3026 00 00 00 00         167 	.byte #0x00,#0x00,#0x00,#0x00	; 0
   302A 00 00 00 00         168 	.byte #0x00,#0x00,#0x00,#0x00	; 0
   302E 00 00 00 00         169 	.byte #0x00,#0x00,#0x00,#0x00	; 0
   3032 03 00 00 00         170 	.byte #0x03,#0x00,#0x00,#0x00	; 3
   3036 09 00 00 00         171 	.byte #0x09,#0x00,#0x00,#0x00	; 9
   303A 1B 00 00 00         172 	.byte #0x1B,#0x00,#0x00,#0x00	; 27
   303E 51 00 00 00         173 	.byte #0x51,#0x00,#0x00,#0x00	; 81
   3042 F3 00 00 00         174 	.byte #0xF3,#0x00,#0x00,#0x00	; 243
   3046 D9 02 00 00         175 	.byte #0xD9,#0x02,#0x00,#0x00	; 729
   304A 8B 08 00 00         176 	.byte #0x8B,#0x08,#0x00,#0x00	; 2187
   304E A1 19 00 00         177 	.byte #0xA1,#0x19,#0x00,#0x00	; 6561
   3052 E3 4C 00 00         178 	.byte #0xE3,#0x4C,#0x00,#0x00	; 19683
   3056 A9 E6 00 00         179 	.byte #0xA9,#0xE6,#0x00,#0x00	; 59049
   305A FB B3 02 00         180 	.byte #0xFB,#0xB3,#0x02,#0x00	; 177147
   305E F1 1B 08 00         181 	.byte #0xF1,#0x1B,#0x08,#0x00	; 531441
   3062                     182 _tiles:
   3062 C0 4E               183 	.dw _tile_tiles_00
   3064 50 50               184 	.dw _tile_tiles_01
   3066 E0 51               185 	.dw _tile_tiles_02
   3068 70 53               186 	.dw _tile_tiles_03
   306A 00 55               187 	.dw _tile_tiles_04
   306C 90 56               188 	.dw _tile_tiles_05
   306E 20 58               189 	.dw _tile_tiles_06
   3070 B0 59               190 	.dw _tile_tiles_07
   3072 40 5B               191 	.dw _tile_tiles_08
   3074 D0 5C               192 	.dw _tile_tiles_09
   3076 60 5E               193 	.dw _tile_tiles_10
   3078 F0 5F               194 	.dw _tile_tiles_11
   307A 80 61               195 	.dw _tile_tiles_12
   307C 10 63               196 	.dw _tile_tiles_13
   307E A0 64               197 	.dw _tile_tiles_14
                            198 ;src/game.c:70: void renewTileBag() {
                            199 ;	---------------------------------
                            200 ; Function renewTileBag
                            201 ; ---------------------------------
   3080                     202 _renewTileBag::
   3080 DD E5         [15]  203 	push	ix
   3082 DD 21 00 00   [14]  204 	ld	ix,#0
   3086 DD 39         [15]  205 	add	ix,sp
   3088 F5            [11]  206 	push	af
   3089 F5            [11]  207 	push	af
                            208 ;src/game.c:75: counters[0] = 0;
   308A 21 00 00      [10]  209 	ld	hl,#0x0000
   308D 39            [11]  210 	add	hl,sp
   308E 4D            [ 4]  211 	ld	c,l
   308F 44            [ 4]  212 	ld	b,h
   3090 AF            [ 4]  213 	xor	a, a
   3091 02            [ 7]  214 	ld	(bc),a
                            215 ;src/game.c:76: counters[1] = 0;
   3092 59            [ 4]  216 	ld	e, c
   3093 50            [ 4]  217 	ld	d, b
   3094 13            [ 6]  218 	inc	de
   3095 AF            [ 4]  219 	xor	a, a
   3096 12            [ 7]  220 	ld	(de),a
                            221 ;src/game.c:77: counters[2] = 0;
   3097 59            [ 4]  222 	ld	e, c
   3098 50            [ 4]  223 	ld	d, b
   3099 13            [ 6]  224 	inc	de
   309A 13            [ 6]  225 	inc	de
   309B AF            [ 4]  226 	xor	a, a
   309C 12            [ 7]  227 	ld	(de),a
                            228 ;src/game.c:80: do
   309D DD 36 FF 00   [19]  229 	ld	-1 (ix),#0x00
   30A1                     230 00101$:
                            231 ;src/game.c:81: currentValue = (cpct_rand() / 85) + 1;
   30A1 C5            [11]  232 	push	bc
   30A2 CD 04 7C      [17]  233 	call	_cpct_getRandom_mxor_u8
   30A5 55            [ 4]  234 	ld	d,l
   30A6 3E 55         [ 7]  235 	ld	a,#0x55
   30A8 F5            [11]  236 	push	af
   30A9 33            [ 6]  237 	inc	sp
   30AA D5            [11]  238 	push	de
   30AB 33            [ 6]  239 	inc	sp
   30AC CD A0 7B      [17]  240 	call	__divuchar
   30AF F1            [10]  241 	pop	af
   30B0 5D            [ 4]  242 	ld	e,l
   30B1 C1            [10]  243 	pop	bc
   30B2 1C            [ 4]  244 	inc	e
                            245 ;src/game.c:82: while (counters[currentValue - 1] > 3);
   30B3 53            [ 4]  246 	ld	d,e
   30B4 15            [ 4]  247 	dec	d
   30B5 6A            [ 4]  248 	ld	l,d
   30B6 26 00         [ 7]  249 	ld	h,#0x00
   30B8 09            [11]  250 	add	hl,bc
   30B9 56            [ 7]  251 	ld	d,(hl)
   30BA 3E 03         [ 7]  252 	ld	a,#0x03
   30BC 92            [ 4]  253 	sub	a, d
   30BD 38 E2         [12]  254 	jr	C,00101$
                            255 ;src/game.c:83: counters[currentValue - 1]++;
   30BF 14            [ 4]  256 	inc	d
   30C0 72            [ 7]  257 	ld	(hl),d
                            258 ;src/game.c:84: tileBag[i] = currentValue;
   30C1 3E EC         [ 7]  259 	ld	a,#<(_tileBag)
   30C3 DD 86 FF      [19]  260 	add	a, -1 (ix)
   30C6 6F            [ 4]  261 	ld	l,a
   30C7 3E 8A         [ 7]  262 	ld	a,#>(_tileBag)
   30C9 CE 00         [ 7]  263 	adc	a, #0x00
   30CB 67            [ 4]  264 	ld	h,a
   30CC 73            [ 7]  265 	ld	(hl),e
                            266 ;src/game.c:79: for (i = 0; i < 12; i++) {
   30CD DD 34 FF      [23]  267 	inc	-1 (ix)
   30D0 DD 7E FF      [19]  268 	ld	a,-1 (ix)
   30D3 D6 0C         [ 7]  269 	sub	a, #0x0C
   30D5 38 CA         [12]  270 	jr	C,00101$
                            271 ;src/game.c:86: currentTile = 0;
   30D7 21 F8 8A      [10]  272 	ld	hl,#_currentTile + 0
   30DA 36 00         [10]  273 	ld	(hl), #0x00
   30DC DD F9         [10]  274 	ld	sp, ix
   30DE DD E1         [14]  275 	pop	ix
   30E0 C9            [10]  276 	ret
                            277 ;src/game.c:97: void delay(u32 cycles) {
                            278 ;	---------------------------------
                            279 ; Function delay
                            280 ; ---------------------------------
   30E1                     281 _delay::
                            282 ;src/game.c:99: for (i = 0; i < cycles; i++) {
   30E1 01 00 00      [10]  283 	ld	bc,#0x0000
   30E4 11 00 00      [10]  284 	ld	de,#0x0000
   30E7                     285 00103$:
   30E7 21 02 00      [10]  286 	ld	hl,#2
   30EA 39            [11]  287 	add	hl,sp
   30EB 79            [ 4]  288 	ld	a,c
   30EC 96            [ 7]  289 	sub	a, (hl)
   30ED 78            [ 4]  290 	ld	a,b
   30EE 23            [ 6]  291 	inc	hl
   30EF 9E            [ 7]  292 	sbc	a, (hl)
   30F0 7B            [ 4]  293 	ld	a,e
   30F1 23            [ 6]  294 	inc	hl
   30F2 9E            [ 7]  295 	sbc	a, (hl)
   30F3 7A            [ 4]  296 	ld	a,d
   30F4 23            [ 6]  297 	inc	hl
   30F5 9E            [ 7]  298 	sbc	a, (hl)
   30F6 D0            [11]  299 	ret	NC
                            300 ;src/game.c:102: __endasm;
   30F7 76            [ 4]  301 	halt
                            302 ;src/game.c:99: for (i = 0; i < cycles; i++) {
   30F8 0C            [ 4]  303 	inc	c
   30F9 20 EC         [12]  304 	jr	NZ,00103$
   30FB 04            [ 4]  305 	inc	b
   30FC 20 E9         [12]  306 	jr	NZ,00103$
   30FE 1C            [ 4]  307 	inc	e
   30FF 20 E6         [12]  308 	jr	NZ,00103$
   3101 14            [ 4]  309 	inc	d
   3102 18 E3         [12]  310 	jr	00103$
                            311 ;src/game.c:114: u8 countZeroes() {
                            312 ;	---------------------------------
                            313 ; Function countZeroes
                            314 ; ---------------------------------
   3104                     315 _countZeroes::
                            316 ;src/game.c:118: count = 0;
   3104 1E 00         [ 7]  317 	ld	e,#0x00
                            318 ;src/game.c:119: for (i = 0; i < 4; i++) {
   3106 0E 00         [ 7]  319 	ld	c,#0x00
                            320 ;src/game.c:120: for (j = 0; j < 4; j++) {
   3108                     321 00112$:
   3108 43            [ 4]  322 	ld	b,e
   3109 1E 00         [ 7]  323 	ld	e,#0x00
   310B                     324 00105$:
                            325 ;src/game.c:121: if (cells[i][j] == 0)
   310B 69            [ 4]  326 	ld	l,c
   310C 26 00         [ 7]  327 	ld	h,#0x00
   310E 29            [11]  328 	add	hl, hl
   310F 29            [11]  329 	add	hl, hl
   3110 3E 37         [ 7]  330 	ld	a,#<(_cells)
   3112 85            [ 4]  331 	add	a, l
   3113 6F            [ 4]  332 	ld	l,a
   3114 3E 8A         [ 7]  333 	ld	a,#>(_cells)
   3116 8C            [ 4]  334 	adc	a, h
   3117 67            [ 4]  335 	ld	h,a
   3118 16 00         [ 7]  336 	ld	d,#0x00
   311A 19            [11]  337 	add	hl, de
   311B 7E            [ 7]  338 	ld	a,(hl)
   311C B7            [ 4]  339 	or	a, a
   311D 20 01         [12]  340 	jr	NZ,00106$
                            341 ;src/game.c:122: count++;
   311F 04            [ 4]  342 	inc	b
   3120                     343 00106$:
                            344 ;src/game.c:120: for (j = 0; j < 4; j++) {
   3120 1C            [ 4]  345 	inc	e
   3121 7B            [ 4]  346 	ld	a,e
   3122 D6 04         [ 7]  347 	sub	a, #0x04
   3124 38 E5         [12]  348 	jr	C,00105$
                            349 ;src/game.c:119: for (i = 0; i < 4; i++) {
   3126 58            [ 4]  350 	ld	e,b
   3127 0C            [ 4]  351 	inc	c
   3128 79            [ 4]  352 	ld	a,c
   3129 D6 04         [ 7]  353 	sub	a, #0x04
   312B 38 DB         [12]  354 	jr	C,00112$
                            355 ;src/game.c:125: return count;
   312D 68            [ 4]  356 	ld	l,b
   312E C9            [10]  357 	ret
                            358 ;src/game.c:138: void initAdjacents() {
                            359 ;	---------------------------------
                            360 ; Function initAdjacents
                            361 ; ---------------------------------
   312F                     362 _initAdjacents::
                            363 ;src/game.c:141: for (i = 0; i < 4; i++) {
   312F 01 48 8A      [10]  364 	ld	bc,#_adjacents + 1
   3132 1E 00         [ 7]  365 	ld	e,#0x00
   3134                     366 00102$:
                            367 ;src/game.c:142: adjacents.values[i] = 255;
   3134 6B            [ 4]  368 	ld	l,e
   3135 26 00         [ 7]  369 	ld	h,#0x00
   3137 09            [11]  370 	add	hl,bc
   3138 36 FF         [10]  371 	ld	(hl),#0xFF
                            372 ;src/game.c:141: for (i = 0; i < 4; i++) {
   313A 1C            [ 4]  373 	inc	e
   313B 7B            [ 4]  374 	ld	a,e
   313C D6 04         [ 7]  375 	sub	a, #0x04
   313E 38 F4         [12]  376 	jr	C,00102$
                            377 ;src/game.c:144: adjacents.count = 0;
   3140 21 47 8A      [10]  378 	ld	hl,#_adjacents
   3143 36 00         [10]  379 	ld	(hl),#0x00
   3145 C9            [10]  380 	ret
                            381 ;src/game.c:155: void getAdjacents(u8 i, u8 j) {
                            382 ;	---------------------------------
                            383 ; Function getAdjacents
                            384 ; ---------------------------------
   3146                     385 _getAdjacents::
   3146 DD E5         [15]  386 	push	ix
   3148 DD 21 00 00   [14]  387 	ld	ix,#0
   314C DD 39         [15]  388 	add	ix,sp
   314E F5            [11]  389 	push	af
   314F 3B            [ 6]  390 	dec	sp
                            391 ;src/game.c:158: initAdjacents();
   3150 CD 2F 31      [17]  392 	call	_initAdjacents
                            393 ;src/game.c:160: count = 0;
   3153 DD 36 FD 00   [19]  394 	ld	-3 (ix),#0x00
                            395 ;src/game.c:162: adjacents.values[count] = cells [i - 1][j];
   3157 DD 4E 05      [19]  396 	ld	c,5 (ix)
                            397 ;src/game.c:161: if (i != 0) {
   315A DD 7E 04      [19]  398 	ld	a,4 (ix)
   315D B7            [ 4]  399 	or	a, a
   315E 28 19         [12]  400 	jr	Z,00102$
                            401 ;src/game.c:162: adjacents.values[count] = cells [i - 1][j];
   3160 11 37 8A      [10]  402 	ld	de,#_cells+0
   3163 DD 6E 04      [19]  403 	ld	l,4 (ix)
   3166 2D            [ 4]  404 	dec	l
   3167 26 00         [ 7]  405 	ld	h,#0x00
   3169 29            [11]  406 	add	hl, hl
   316A 29            [11]  407 	add	hl, hl
   316B 19            [11]  408 	add	hl,de
   316C 59            [ 4]  409 	ld	e,c
   316D 16 00         [ 7]  410 	ld	d,#0x00
   316F 19            [11]  411 	add	hl,de
   3170 46            [ 7]  412 	ld	b,(hl)
   3171 21 48 8A      [10]  413 	ld	hl,#(_adjacents + 0x0001)
   3174 70            [ 7]  414 	ld	(hl),b
                            415 ;src/game.c:163: count++;
   3175 DD 36 FD 01   [19]  416 	ld	-3 (ix),#0x01
   3179                     417 00102$:
                            418 ;src/game.c:166: adjacents.values[count] = cells [i][j + 1];
   3179 DD 6E 04      [19]  419 	ld	l,4 (ix)
   317C 26 00         [ 7]  420 	ld	h,#0x00
   317E 29            [11]  421 	add	hl, hl
   317F 29            [11]  422 	add	hl, hl
   3180 DD 75 FE      [19]  423 	ld	-2 (ix),l
   3183 DD 74 FF      [19]  424 	ld	-1 (ix),h
                            425 ;src/game.c:165: if (j != 3) {
   3186 DD 7E 05      [19]  426 	ld	a,5 (ix)
   3189 D6 03         [ 7]  427 	sub	a, #0x03
   318B 28 27         [12]  428 	jr	Z,00104$
                            429 ;src/game.c:166: adjacents.values[count] = cells [i][j + 1];
   318D DD 7E FD      [19]  430 	ld	a,-3 (ix)
   3190 C6 48         [ 7]  431 	add	a, #<((_adjacents + 0x0001))
   3192 5F            [ 4]  432 	ld	e,a
   3193 3E 00         [ 7]  433 	ld	a,#0x00
   3195 CE 8A         [ 7]  434 	adc	a, #>((_adjacents + 0x0001))
   3197 57            [ 4]  435 	ld	d,a
   3198 DD 7E FE      [19]  436 	ld	a,-2 (ix)
   319B C6 37         [ 7]  437 	add	a, #<(_cells)
   319D 6F            [ 4]  438 	ld	l,a
   319E DD 7E FF      [19]  439 	ld	a,-1 (ix)
   31A1 CE 8A         [ 7]  440 	adc	a, #>(_cells)
   31A3 67            [ 4]  441 	ld	h,a
   31A4 DD 46 05      [19]  442 	ld	b,5 (ix)
   31A7 04            [ 4]  443 	inc	b
   31A8 78            [ 4]  444 	ld	a,b
   31A9 85            [ 4]  445 	add	a, l
   31AA 6F            [ 4]  446 	ld	l,a
   31AB 3E 00         [ 7]  447 	ld	a,#0x00
   31AD 8C            [ 4]  448 	adc	a, h
   31AE 67            [ 4]  449 	ld	h,a
   31AF 7E            [ 7]  450 	ld	a,(hl)
   31B0 12            [ 7]  451 	ld	(de),a
                            452 ;src/game.c:167: count++;
   31B1 DD 34 FD      [23]  453 	inc	-3 (ix)
   31B4                     454 00104$:
                            455 ;src/game.c:169: if (i != 3) {
   31B4 DD 7E 04      [19]  456 	ld	a,4 (ix)
   31B7 D6 03         [ 7]  457 	sub	a, #0x03
   31B9 28 23         [12]  458 	jr	Z,00106$
                            459 ;src/game.c:170: adjacents.values[count] = cells [i + 1][j];
   31BB DD 7E FD      [19]  460 	ld	a,-3 (ix)
   31BE C6 48         [ 7]  461 	add	a, #<((_adjacents + 0x0001))
   31C0 5F            [ 4]  462 	ld	e,a
   31C1 3E 00         [ 7]  463 	ld	a,#0x00
   31C3 CE 8A         [ 7]  464 	adc	a, #>((_adjacents + 0x0001))
   31C5 57            [ 4]  465 	ld	d,a
   31C6 DD 6E 04      [19]  466 	ld	l,4 (ix)
   31C9 2C            [ 4]  467 	inc	l
   31CA 26 00         [ 7]  468 	ld	h,#0x00
   31CC 29            [11]  469 	add	hl, hl
   31CD 29            [11]  470 	add	hl, hl
   31CE 3E 37         [ 7]  471 	ld	a,#<(_cells)
   31D0 85            [ 4]  472 	add	a, l
   31D1 6F            [ 4]  473 	ld	l,a
   31D2 3E 8A         [ 7]  474 	ld	a,#>(_cells)
   31D4 8C            [ 4]  475 	adc	a, h
   31D5 67            [ 4]  476 	ld	h,a
   31D6 06 00         [ 7]  477 	ld	b,#0x00
   31D8 09            [11]  478 	add	hl,bc
   31D9 7E            [ 7]  479 	ld	a,(hl)
   31DA 12            [ 7]  480 	ld	(de),a
                            481 ;src/game.c:171: count++;
   31DB DD 34 FD      [23]  482 	inc	-3 (ix)
   31DE                     483 00106$:
                            484 ;src/game.c:173: if (j != 0) {
   31DE DD 7E 05      [19]  485 	ld	a,5 (ix)
   31E1 B7            [ 4]  486 	or	a, a
   31E2 28 21         [12]  487 	jr	Z,00108$
                            488 ;src/game.c:174: adjacents.values[count] = cells [i][j - 1];
   31E4 DD 7E FD      [19]  489 	ld	a,-3 (ix)
   31E7 C6 48         [ 7]  490 	add	a, #<((_adjacents + 0x0001))
   31E9 4F            [ 4]  491 	ld	c,a
   31EA 3E 00         [ 7]  492 	ld	a,#0x00
   31EC CE 8A         [ 7]  493 	adc	a, #>((_adjacents + 0x0001))
   31EE 47            [ 4]  494 	ld	b,a
   31EF 11 37 8A      [10]  495 	ld	de,#_cells+0
   31F2 DD 6E FE      [19]  496 	ld	l,-2 (ix)
   31F5 DD 66 FF      [19]  497 	ld	h,-1 (ix)
   31F8 19            [11]  498 	add	hl,de
   31F9 DD 5E 05      [19]  499 	ld	e,5 (ix)
   31FC 1D            [ 4]  500 	dec	e
   31FD 16 00         [ 7]  501 	ld	d,#0x00
   31FF 19            [11]  502 	add	hl,de
   3200 7E            [ 7]  503 	ld	a,(hl)
   3201 02            [ 7]  504 	ld	(bc),a
                            505 ;src/game.c:175: count++;
   3202 DD 34 FD      [23]  506 	inc	-3 (ix)
   3205                     507 00108$:
                            508 ;src/game.c:178: adjacents.count = count;
   3205 21 47 8A      [10]  509 	ld	hl,#_adjacents
   3208 DD 7E FD      [19]  510 	ld	a,-3 (ix)
   320B 77            [ 7]  511 	ld	(hl),a
   320C DD F9         [10]  512 	ld	sp, ix
   320E DD E1         [14]  513 	pop	ix
   3210 C9            [10]  514 	ret
                            515 ;src/game.c:189: u8 anyOfThisInAdjacents(u8 value) {
                            516 ;	---------------------------------
                            517 ; Function anyOfThisInAdjacents
                            518 ; ---------------------------------
   3211                     519 _anyOfThisInAdjacents::
   3211 DD E5         [15]  520 	push	ix
   3213 DD 21 00 00   [14]  521 	ld	ix,#0
   3217 DD 39         [15]  522 	add	ix,sp
                            523 ;src/game.c:193: result = 0;
   3219 0E 00         [ 7]  524 	ld	c,#0x00
                            525 ;src/game.c:194: for (i = 0; i < adjacents.count; i++) {
   321B 1E 00         [ 7]  526 	ld	e,#0x00
   321D                     527 00105$:
   321D 21 47 8A      [10]  528 	ld	hl, #_adjacents + 0
   3220 46            [ 7]  529 	ld	b,(hl)
   3221 7B            [ 4]  530 	ld	a,e
   3222 90            [ 4]  531 	sub	a, b
   3223 30 13         [12]  532 	jr	NC,00103$
                            533 ;src/game.c:195: if (adjacents.values[i] == value) {
   3225 21 48 8A      [10]  534 	ld	hl,#(_adjacents + 0x0001)
   3228 16 00         [ 7]  535 	ld	d,#0x00
   322A 19            [11]  536 	add	hl, de
   322B DD 7E 04      [19]  537 	ld	a,4 (ix)
   322E 96            [ 7]  538 	sub	a,(hl)
   322F 20 04         [12]  539 	jr	NZ,00106$
                            540 ;src/game.c:196: result = 1;
   3231 0E 01         [ 7]  541 	ld	c,#0x01
                            542 ;src/game.c:197: break;
   3233 18 03         [12]  543 	jr	00103$
   3235                     544 00106$:
                            545 ;src/game.c:194: for (i = 0; i < adjacents.count; i++) {
   3235 1C            [ 4]  546 	inc	e
   3236 18 E5         [12]  547 	jr	00105$
   3238                     548 00103$:
                            549 ;src/game.c:200: return result;
   3238 69            [ 4]  550 	ld	l,c
   3239 DD E1         [14]  551 	pop	ix
   323B C9            [10]  552 	ret
                            553 ;src/game.c:211: u8 anyMovesLeft() {
                            554 ;	---------------------------------
                            555 ; Function anyMovesLeft
                            556 ; ---------------------------------
   323C                     557 _anyMovesLeft::
                            558 ;src/game.c:215: movesLeft = 0;
   323C 0E 00         [ 7]  559 	ld	c,#0x00
                            560 ;src/game.c:217: if (countZeroes() == 0) {
   323E C5            [11]  561 	push	bc
   323F CD 04 31      [17]  562 	call	_countZeroes
   3242 C1            [10]  563 	pop	bc
   3243 7D            [ 4]  564 	ld	a,l
                            565 ;src/game.c:218: for (i = 0; i < 4; i++) {
   3244 B7            [ 4]  566 	or	a,a
   3245 C2 BF 32      [10]  567 	jp	NZ,00113$
   3248 47            [ 4]  568 	ld	b,a
                            569 ;src/game.c:219: for (j = 0; j < 4; j++) {
   3249                     570 00125$:
   3249 1E 00         [ 7]  571 	ld	e,#0x00
   324B                     572 00115$:
                            573 ;src/game.c:220: getAdjacents(i, j);
   324B C5            [11]  574 	push	bc
   324C D5            [11]  575 	push	de
   324D 7B            [ 4]  576 	ld	a,e
   324E F5            [11]  577 	push	af
   324F 33            [ 6]  578 	inc	sp
   3250 C5            [11]  579 	push	bc
   3251 33            [ 6]  580 	inc	sp
   3252 CD 46 31      [17]  581 	call	_getAdjacents
   3255 F1            [10]  582 	pop	af
   3256 D1            [10]  583 	pop	de
   3257 C1            [10]  584 	pop	bc
                            585 ;src/game.c:221: if (((cells[i][j] == 1) && anyOfThisInAdjacents(2)) ||
   3258 68            [ 4]  586 	ld	l,b
   3259 26 00         [ 7]  587 	ld	h,#0x00
   325B 29            [11]  588 	add	hl, hl
   325C 29            [11]  589 	add	hl, hl
   325D 3E 37         [ 7]  590 	ld	a,#<(_cells)
   325F 85            [ 4]  591 	add	a, l
   3260 6F            [ 4]  592 	ld	l,a
   3261 3E 8A         [ 7]  593 	ld	a,#>(_cells)
   3263 8C            [ 4]  594 	adc	a, h
   3264 67            [ 4]  595 	ld	h,a
   3265 16 00         [ 7]  596 	ld	d,#0x00
   3267 19            [11]  597 	add	hl, de
   3268 56            [ 7]  598 	ld	d,(hl)
   3269 15            [ 4]  599 	dec	d
   326A 20 12         [12]  600 	jr	NZ,00105$
   326C E5            [11]  601 	push	hl
   326D C5            [11]  602 	push	bc
   326E D5            [11]  603 	push	de
   326F 3E 02         [ 7]  604 	ld	a,#0x02
   3271 F5            [11]  605 	push	af
   3272 33            [ 6]  606 	inc	sp
   3273 CD 11 32      [17]  607 	call	_anyOfThisInAdjacents
   3276 33            [ 6]  608 	inc	sp
   3277 7D            [ 4]  609 	ld	a,l
   3278 D1            [10]  610 	pop	de
   3279 C1            [10]  611 	pop	bc
   327A E1            [10]  612 	pop	hl
   327B B7            [ 4]  613 	or	a, a
   327C 20 2B         [12]  614 	jr	NZ,00101$
   327E                     615 00105$:
                            616 ;src/game.c:222: ((cells[i][j] == 2) && anyOfThisInAdjacents(1)) ||
   327E 7E            [ 7]  617 	ld	a,(hl)
   327F D6 02         [ 7]  618 	sub	a, #0x02
   3281 20 12         [12]  619 	jr	NZ,00107$
   3283 E5            [11]  620 	push	hl
   3284 C5            [11]  621 	push	bc
   3285 D5            [11]  622 	push	de
   3286 3E 01         [ 7]  623 	ld	a,#0x01
   3288 F5            [11]  624 	push	af
   3289 33            [ 6]  625 	inc	sp
   328A CD 11 32      [17]  626 	call	_anyOfThisInAdjacents
   328D 33            [ 6]  627 	inc	sp
   328E 7D            [ 4]  628 	ld	a,l
   328F D1            [10]  629 	pop	de
   3290 C1            [10]  630 	pop	bc
   3291 E1            [10]  631 	pop	hl
   3292 B7            [ 4]  632 	or	a, a
   3293 20 14         [12]  633 	jr	NZ,00101$
   3295                     634 00107$:
                            635 ;src/game.c:223: ((cells[i][j] > 2) && anyOfThisInAdjacents(cells[i][j]))) {
   3295 56            [ 7]  636 	ld	d,(hl)
   3296 3E 02         [ 7]  637 	ld	a,#0x02
   3298 92            [ 4]  638 	sub	a, d
   3299 30 12         [12]  639 	jr	NC,00116$
   329B C5            [11]  640 	push	bc
   329C D5            [11]  641 	push	de
   329D D5            [11]  642 	push	de
   329E 33            [ 6]  643 	inc	sp
   329F CD 11 32      [17]  644 	call	_anyOfThisInAdjacents
   32A2 33            [ 6]  645 	inc	sp
   32A3 D1            [10]  646 	pop	de
   32A4 C1            [10]  647 	pop	bc
   32A5 7D            [ 4]  648 	ld	a,l
   32A6 B7            [ 4]  649 	or	a, a
   32A7 28 04         [12]  650 	jr	Z,00116$
   32A9                     651 00101$:
                            652 ;src/game.c:224: movesLeft = 1;
   32A9 0E 01         [ 7]  653 	ld	c,#0x01
                            654 ;src/game.c:225: break;
   32AB 18 06         [12]  655 	jr	00108$
   32AD                     656 00116$:
                            657 ;src/game.c:219: for (j = 0; j < 4; j++) {
   32AD 1C            [ 4]  658 	inc	e
   32AE 7B            [ 4]  659 	ld	a,e
   32AF D6 04         [ 7]  660 	sub	a, #0x04
   32B1 38 98         [12]  661 	jr	C,00115$
   32B3                     662 00108$:
                            663 ;src/game.c:228: if (movesLeft)
   32B3 79            [ 4]  664 	ld	a,c
   32B4 B7            [ 4]  665 	or	a, a
   32B5 20 0A         [12]  666 	jr	NZ,00114$
                            667 ;src/game.c:218: for (i = 0; i < 4; i++) {
   32B7 04            [ 4]  668 	inc	b
   32B8 78            [ 4]  669 	ld	a,b
   32B9 D6 04         [ 7]  670 	sub	a, #0x04
   32BB 38 8C         [12]  671 	jr	C,00125$
   32BD 18 02         [12]  672 	jr	00114$
   32BF                     673 00113$:
                            674 ;src/game.c:233: movesLeft = 1;
   32BF 0E 01         [ 7]  675 	ld	c,#0x01
   32C1                     676 00114$:
                            677 ;src/game.c:234: return movesLeft;
   32C1 69            [ 4]  678 	ld	l,c
   32C2 C9            [10]  679 	ret
                            680 ;src/game.c:245: void addRandomCellTurn(u8 dir) {
                            681 ;	---------------------------------
                            682 ; Function addRandomCellTurn
                            683 ; ---------------------------------
   32C3                     684 _addRandomCellTurn::
   32C3 DD E5         [15]  685 	push	ix
   32C5 DD 21 00 00   [14]  686 	ld	ix,#0
   32C9 DD 39         [15]  687 	add	ix,sp
   32CB F5            [11]  688 	push	af
                            689 ;src/game.c:246: u8 i = 0;
   32CC DD 36 FE 00   [19]  690 	ld	-2 (ix),#0x00
                            691 ;src/game.c:247: u8 j = 0;
   32D0 0E 00         [ 7]  692 	ld	c,#0x00
                            693 ;src/game.c:250: switch (dir) {
   32D2 3E 03         [ 7]  694 	ld	a,#0x03
   32D4 DD 96 04      [19]  695 	sub	a, 4 (ix)
   32D7 38 25         [12]  696 	jr	C,00105$
   32D9 DD 5E 04      [19]  697 	ld	e,4 (ix)
   32DC 16 00         [ 7]  698 	ld	d,#0x00
   32DE 21 E4 32      [10]  699 	ld	hl,#00146$
   32E1 19            [11]  700 	add	hl,de
   32E2 19            [11]  701 	add	hl,de
                            702 ;src/game.c:251: case LEFT:
   32E3 E9            [ 4]  703 	jp	(hl)
   32E4                     704 00146$:
   32E4 18 06         [12]  705 	jr	00101$
   32E6 18 08         [12]  706 	jr	00102$
   32E8 18 0A         [12]  707 	jr	00103$
   32EA 18 0E         [12]  708 	jr	00104$
   32EC                     709 00101$:
                            710 ;src/game.c:252: j = 3;
   32EC 0E 03         [ 7]  711 	ld	c,#0x03
                            712 ;src/game.c:253: break;
   32EE 18 0E         [12]  713 	jr	00105$
                            714 ;src/game.c:254: case RIGHT:
   32F0                     715 00102$:
                            716 ;src/game.c:255: j = 0;
   32F0 0E 00         [ 7]  717 	ld	c,#0x00
                            718 ;src/game.c:256: break;
   32F2 18 0A         [12]  719 	jr	00105$
                            720 ;src/game.c:257: case UP:
   32F4                     721 00103$:
                            722 ;src/game.c:258: i = 3;
   32F4 DD 36 FE 03   [19]  723 	ld	-2 (ix),#0x03
                            724 ;src/game.c:259: break;
   32F8 18 04         [12]  725 	jr	00105$
                            726 ;src/game.c:260: case DOWN:
   32FA                     727 00104$:
                            728 ;src/game.c:261: i = 0;
   32FA DD 36 FE 00   [19]  729 	ld	-2 (ix),#0x00
                            730 ;src/game.c:263: }
   32FE                     731 00105$:
                            732 ;src/game.c:264: if ((dir == LEFT) || (dir == RIGHT))
   32FE DD 7E 04      [19]  733 	ld	a,4 (ix)
   3301 3D            [ 4]  734 	dec	a
   3302 20 04         [12]  735 	jr	NZ,00147$
   3304 3E 01         [ 7]  736 	ld	a,#0x01
   3306 18 01         [12]  737 	jr	00148$
   3308                     738 00147$:
   3308 AF            [ 4]  739 	xor	a,a
   3309                     740 00148$:
   3309 47            [ 4]  741 	ld	b,a
   330A DD 7E 04      [19]  742 	ld	a,4 (ix)
   330D B7            [ 4]  743 	or	a, a
   330E 28 04         [12]  744 	jr	Z,00106$
   3310 78            [ 4]  745 	ld	a,b
   3311 B7            [ 4]  746 	or	a, a
   3312 28 0F         [12]  747 	jr	Z,00107$
   3314                     748 00106$:
                            749 ;src/game.c:265: i = cpct_rand() / 64;
   3314 C5            [11]  750 	push	bc
   3315 CD 04 7C      [17]  751 	call	_cpct_getRandom_mxor_u8
   3318 C1            [10]  752 	pop	bc
   3319 7D            [ 4]  753 	ld	a,l
   331A 07            [ 4]  754 	rlca
   331B 07            [ 4]  755 	rlca
   331C E6 03         [ 7]  756 	and	a,#0x03
   331E DD 77 FE      [19]  757 	ld	-2 (ix),a
   3321 18 0B         [12]  758 	jr	00126$
   3323                     759 00107$:
                            760 ;src/game.c:267: j = cpct_rand() / 64;
   3323 C5            [11]  761 	push	bc
   3324 CD 04 7C      [17]  762 	call	_cpct_getRandom_mxor_u8
   3327 C1            [10]  763 	pop	bc
   3328 7D            [ 4]  764 	ld	a,l
   3329 07            [ 4]  765 	rlca
   332A 07            [ 4]  766 	rlca
   332B E6 03         [ 7]  767 	and	a,#0x03
   332D 4F            [ 4]  768 	ld	c,a
                            769 ;src/game.c:268: while (cells[i][j] != 0) {
   332E                     770 00126$:
   332E DD 70 FF      [19]  771 	ld	-1 (ix),b
   3331                     772 00114$:
   3331 DD 6E FE      [19]  773 	ld	l,-2 (ix)
   3334 26 00         [ 7]  774 	ld	h,#0x00
   3336 29            [11]  775 	add	hl, hl
   3337 29            [11]  776 	add	hl, hl
   3338 11 37 8A      [10]  777 	ld	de,#_cells
   333B 19            [11]  778 	add	hl,de
   333C 7D            [ 4]  779 	ld	a,l
   333D 81            [ 4]  780 	add	a, c
   333E 5F            [ 4]  781 	ld	e,a
   333F 7C            [ 4]  782 	ld	a,h
   3340 CE 00         [ 7]  783 	adc	a, #0x00
   3342 57            [ 4]  784 	ld	d,a
   3343 1A            [ 7]  785 	ld	a,(de)
   3344 B7            [ 4]  786 	or	a, a
   3345 28 26         [12]  787 	jr	Z,00116$
                            788 ;src/game.c:269: if ((dir == LEFT) || (dir == RIGHT))
   3347 DD 7E 04      [19]  789 	ld	a,4 (ix)
   334A B7            [ 4]  790 	or	a, a
   334B 28 06         [12]  791 	jr	Z,00110$
   334D DD 7E FF      [19]  792 	ld	a,-1 (ix)
   3350 B7            [ 4]  793 	or	a, a
   3351 28 0F         [12]  794 	jr	Z,00111$
   3353                     795 00110$:
                            796 ;src/game.c:270: i = cpct_rand() / 64;
   3353 C5            [11]  797 	push	bc
   3354 CD 04 7C      [17]  798 	call	_cpct_getRandom_mxor_u8
   3357 C1            [10]  799 	pop	bc
   3358 7D            [ 4]  800 	ld	a,l
   3359 07            [ 4]  801 	rlca
   335A 07            [ 4]  802 	rlca
   335B E6 03         [ 7]  803 	and	a,#0x03
   335D DD 77 FE      [19]  804 	ld	-2 (ix),a
   3360 18 CF         [12]  805 	jr	00114$
   3362                     806 00111$:
                            807 ;src/game.c:272: j = cpct_rand() / 64;
   3362 CD 04 7C      [17]  808 	call	_cpct_getRandom_mxor_u8
   3365 7D            [ 4]  809 	ld	a,l
   3366 07            [ 4]  810 	rlca
   3367 07            [ 4]  811 	rlca
   3368 E6 03         [ 7]  812 	and	a,#0x03
   336A 4F            [ 4]  813 	ld	c,a
   336B 18 C4         [12]  814 	jr	00114$
   336D                     815 00116$:
                            816 ;src/game.c:276: cells[i][j] = tileBag[currentTile];
   336D 3A F8 8A      [13]  817 	ld	a,(#_currentTile + 0)
   3370 C6 EC         [ 7]  818 	add	a, #<(_tileBag)
   3372 4F            [ 4]  819 	ld	c,a
   3373 3E 00         [ 7]  820 	ld	a,#0x00
   3375 CE 8A         [ 7]  821 	adc	a, #>(_tileBag)
   3377 47            [ 4]  822 	ld	b,a
   3378 0A            [ 7]  823 	ld	a,(bc)
   3379 12            [ 7]  824 	ld	(de),a
                            825 ;src/game.c:277: if (currentTile < 11)
   337A 3A F8 8A      [13]  826 	ld	a,(#_currentTile + 0)
   337D D6 0B         [ 7]  827 	sub	a, #0x0B
   337F 30 06         [12]  828 	jr	NC,00118$
                            829 ;src/game.c:278: currentTile++;
   3381 21 F8 8A      [10]  830 	ld	hl, #_currentTile+0
   3384 34            [11]  831 	inc	(hl)
   3385 18 03         [12]  832 	jr	00120$
   3387                     833 00118$:
                            834 ;src/game.c:280: renewTileBag();
   3387 CD 80 30      [17]  835 	call	_renewTileBag
   338A                     836 00120$:
   338A DD F9         [10]  837 	ld	sp, ix
   338C DD E1         [14]  838 	pop	ix
   338E C9            [10]  839 	ret
                            840 ;src/game.c:291: void addRandomCell() {
                            841 ;	---------------------------------
                            842 ; Function addRandomCell
                            843 ; ---------------------------------
   338F                     844 _addRandomCell::
                            845 ;src/game.c:294: i = cpct_rand() / 64;
   338F CD 04 7C      [17]  846 	call	_cpct_getRandom_mxor_u8
   3392 7D            [ 4]  847 	ld	a,l
   3393 07            [ 4]  848 	rlca
   3394 07            [ 4]  849 	rlca
   3395 E6 03         [ 7]  850 	and	a,#0x03
   3397 4F            [ 4]  851 	ld	c,a
                            852 ;src/game.c:295: j = cpct_rand() / 64;
   3398 C5            [11]  853 	push	bc
   3399 CD 04 7C      [17]  854 	call	_cpct_getRandom_mxor_u8
   339C C1            [10]  855 	pop	bc
   339D 7D            [ 4]  856 	ld	a,l
   339E 07            [ 4]  857 	rlca
   339F 07            [ 4]  858 	rlca
   33A0 E6 03         [ 7]  859 	and	a,#0x03
   33A2 47            [ 4]  860 	ld	b,a
                            861 ;src/game.c:296: while (cells[i][j] != 0) {
   33A3                     862 00101$:
   33A3 69            [ 4]  863 	ld	l,c
   33A4 26 00         [ 7]  864 	ld	h,#0x00
   33A6 29            [11]  865 	add	hl, hl
   33A7 29            [11]  866 	add	hl, hl
   33A8 11 37 8A      [10]  867 	ld	de,#_cells
   33AB 19            [11]  868 	add	hl,de
   33AC 7D            [ 4]  869 	ld	a,l
   33AD 80            [ 4]  870 	add	a, b
   33AE 4F            [ 4]  871 	ld	c,a
   33AF 7C            [ 4]  872 	ld	a,h
   33B0 CE 00         [ 7]  873 	adc	a, #0x00
   33B2 47            [ 4]  874 	ld	b,a
   33B3 0A            [ 7]  875 	ld	a,(bc)
   33B4 B7            [ 4]  876 	or	a, a
   33B5 28 16         [12]  877 	jr	Z,00103$
                            878 ;src/game.c:297: i = cpct_rand() / 64;
   33B7 CD 04 7C      [17]  879 	call	_cpct_getRandom_mxor_u8
   33BA 7D            [ 4]  880 	ld	a,l
   33BB 07            [ 4]  881 	rlca
   33BC 07            [ 4]  882 	rlca
   33BD E6 03         [ 7]  883 	and	a,#0x03
   33BF 4F            [ 4]  884 	ld	c,a
                            885 ;src/game.c:298: j = cpct_rand() / 64;
   33C0 C5            [11]  886 	push	bc
   33C1 CD 04 7C      [17]  887 	call	_cpct_getRandom_mxor_u8
   33C4 C1            [10]  888 	pop	bc
   33C5 7D            [ 4]  889 	ld	a,l
   33C6 07            [ 4]  890 	rlca
   33C7 07            [ 4]  891 	rlca
   33C8 E6 03         [ 7]  892 	and	a,#0x03
   33CA 47            [ 4]  893 	ld	b,a
   33CB 18 D6         [12]  894 	jr	00101$
   33CD                     895 00103$:
                            896 ;src/game.c:303: cells[i][j] = (cpct_rand() / 85) + 1;
   33CD C5            [11]  897 	push	bc
   33CE CD 04 7C      [17]  898 	call	_cpct_getRandom_mxor_u8
   33D1 55            [ 4]  899 	ld	d,l
   33D2 3E 55         [ 7]  900 	ld	a,#0x55
   33D4 F5            [11]  901 	push	af
   33D5 33            [ 6]  902 	inc	sp
   33D6 D5            [11]  903 	push	de
   33D7 33            [ 6]  904 	inc	sp
   33D8 CD A0 7B      [17]  905 	call	__divuchar
   33DB F1            [10]  906 	pop	af
   33DC C1            [10]  907 	pop	bc
   33DD 7D            [ 4]  908 	ld	a,l
   33DE 3C            [ 4]  909 	inc	a
   33DF 02            [ 7]  910 	ld	(bc),a
   33E0 C9            [10]  911 	ret
                            912 ;src/game.c:314: void initCells() {
                            913 ;	---------------------------------
                            914 ; Function initCells
                            915 ; ---------------------------------
   33E1                     916 _initCells::
                            917 ;src/game.c:317: for (i = 0; i < 4; i++) {
   33E1 0E 00         [ 7]  918 	ld	c,#0x00
                            919 ;src/game.c:318: for (j = 0; j < 4; j++) {
   33E3                     920 00109$:
   33E3 06 00         [ 7]  921 	ld	b,#0x00
   33E5                     922 00103$:
                            923 ;src/game.c:319: cells[i][j] = 0;
   33E5 69            [ 4]  924 	ld	l,c
   33E6 26 00         [ 7]  925 	ld	h,#0x00
   33E8 29            [11]  926 	add	hl, hl
   33E9 29            [11]  927 	add	hl, hl
   33EA 11 37 8A      [10]  928 	ld	de,#_cells
   33ED 19            [11]  929 	add	hl,de
   33EE 58            [ 4]  930 	ld	e,b
   33EF 16 00         [ 7]  931 	ld	d,#0x00
   33F1 19            [11]  932 	add	hl,de
   33F2 36 00         [10]  933 	ld	(hl),#0x00
                            934 ;src/game.c:318: for (j = 0; j < 4; j++) {
   33F4 04            [ 4]  935 	inc	b
   33F5 78            [ 4]  936 	ld	a,b
   33F6 D6 04         [ 7]  937 	sub	a, #0x04
   33F8 38 EB         [12]  938 	jr	C,00103$
                            939 ;src/game.c:317: for (i = 0; i < 4; i++) {
   33FA 0C            [ 4]  940 	inc	c
   33FB 79            [ 4]  941 	ld	a,c
   33FC D6 04         [ 7]  942 	sub	a, #0x04
   33FE 38 E3         [12]  943 	jr	C,00109$
   3400 C9            [10]  944 	ret
                            945 ;src/game.c:333: void initialization() {
                            946 ;	---------------------------------
                            947 ; Function initialization
                            948 ; ---------------------------------
   3401                     949 _initialization::
                            950 ;src/game.c:337: cpct_akp_musicInit(G_Menu);
   3401 21 00 20      [10]  951 	ld	hl,#_G_Menu
   3404 E5            [11]  952 	push	hl
   3405 CD B8 79      [17]  953 	call	_cpct_akp_musicInit
                            954 ;src/game.c:340: drawText("AMSTHREES IS READY", 31, 76, 1);
   3408 21 4C 01      [10]  955 	ld	hl, #0x014C
   340B E3            [19]  956 	ex	(sp),hl
   340C 3E 1F         [ 7]  957 	ld	a,#0x1F
   340E F5            [11]  958 	push	af
   340F 33            [ 6]  959 	inc	sp
   3410 21 35 35      [10]  960 	ld	hl,#___str_0
   3413 E5            [11]  961 	push	hl
   3414 CD A1 68      [17]  962 	call	_drawText
   3417 F1            [10]  963 	pop	af
                            964 ;src/game.c:341: drawText("PRESS ANY KEY", 20, 90, 1);
   3418 33            [ 6]  965 	inc	sp
   3419 21 5A 01      [10]  966 	ld	hl,#0x015A
   341C E3            [19]  967 	ex	(sp),hl
   341D 3E 14         [ 7]  968 	ld	a,#0x14
   341F F5            [11]  969 	push	af
   3420 33            [ 6]  970 	inc	sp
   3421 21 48 35      [10]  971 	ld	hl,#___str_1
   3424 E5            [11]  972 	push	hl
   3425 CD A1 68      [17]  973 	call	_drawText
   3428 F1            [10]  974 	pop	af
   3429 F1            [10]  975 	pop	af
   342A 33            [ 6]  976 	inc	sp
                            977 ;src/game.c:343: seed = wait4UserKeypress();
   342B CD BD 6D      [17]  978 	call	_wait4UserKeypress
                            979 ;src/game.c:345: if (!seed)
   342E 7A            [ 4]  980 	ld	a,d
   342F B3            [ 4]  981 	or	a, e
   3430 B4            [ 4]  982 	or	a, h
   3431 B5            [ 4]  983 	or	a,l
   3432 20 0A         [12]  984 	jr	NZ,00102$
                            985 ;src/game.c:346: seed++;
   3434 2C            [ 4]  986 	inc	l
   3435 20 07         [12]  987 	jr	NZ,00109$
   3437 24            [ 4]  988 	inc	h
   3438 20 04         [12]  989 	jr	NZ,00109$
   343A 1C            [ 4]  990 	inc	e
   343B 20 01         [12]  991 	jr	NZ,00109$
   343D 14            [ 4]  992 	inc	d
   343E                     993 00109$:
   343E                     994 00102$:
                            995 ;src/game.c:347: cpct_srand(seed);
   343E CD F6 7B      [17]  996 	call	_cpct_setSeed_mxor
   3441 CD FE 7B      [17]  997 	call	_cpct_restoreState_mxor_u8
                            998 ;src/game.c:349: scoreHallOfFame[0] = 6000;
   3444 21 70 17      [10]  999 	ld	hl,#0x1770
   3447 22 50 8A      [16] 1000 	ld	(_scoreHallOfFame), hl
   344A 21 00 00      [10] 1001 	ld	hl,#0x0000
   344D 22 52 8A      [16] 1002 	ld	(_scoreHallOfFame+2), hl
                           1003 ;src/game.c:350: scoreHallOfFame[1] = 5000;
   3450 21 88 13      [10] 1004 	ld	hl,#0x1388
   3453 22 54 8A      [16] 1005 	ld	((_scoreHallOfFame + 0x0004)), hl
   3456 21 00 00      [10] 1006 	ld	hl,#0x0000
   3459 22 56 8A      [16] 1007 	ld	((_scoreHallOfFame + 0x0004)+2), hl
                           1008 ;src/game.c:351: scoreHallOfFame[2] = 4000;
   345C 21 A0 0F      [10] 1009 	ld	hl,#0x0FA0
   345F 22 58 8A      [16] 1010 	ld	((_scoreHallOfFame + 0x0008)), hl
   3462 21 00 00      [10] 1011 	ld	hl,#0x0000
   3465 22 5A 8A      [16] 1012 	ld	((_scoreHallOfFame + 0x0008)+2), hl
                           1013 ;src/game.c:352: scoreHallOfFame[3] = 3000;
   3468 21 B8 0B      [10] 1014 	ld	hl,#0x0BB8
   346B 22 5C 8A      [16] 1015 	ld	((_scoreHallOfFame + 0x000c)), hl
   346E 21 00 00      [10] 1016 	ld	hl,#0x0000
   3471 22 5E 8A      [16] 1017 	ld	((_scoreHallOfFame + 0x000c)+2), hl
                           1018 ;src/game.c:353: scoreHallOfFame[4] = 1500;
   3474 21 DC 05      [10] 1019 	ld	hl,#0x05DC
   3477 22 60 8A      [16] 1020 	ld	((_scoreHallOfFame + 0x0010)), hl
   347A 21 00 00      [10] 1021 	ld	hl,#0x0000
   347D 22 62 8A      [16] 1022 	ld	((_scoreHallOfFame + 0x0010)+2), hl
                           1023 ;src/game.c:354: scoreHallOfFame[5] = 1000;
   3480 21 E8 03      [10] 1024 	ld	hl,#0x03E8
   3483 22 64 8A      [16] 1025 	ld	((_scoreHallOfFame + 0x0014)), hl
   3486 21 00 00      [10] 1026 	ld	hl,#0x0000
   3489 22 66 8A      [16] 1027 	ld	((_scoreHallOfFame + 0x0014)+2), hl
                           1028 ;src/game.c:355: scoreHallOfFame[6] = 500;
   348C 21 F4 01      [10] 1029 	ld	hl,#0x01F4
   348F 22 68 8A      [16] 1030 	ld	((_scoreHallOfFame + 0x0018)), hl
   3492 21 00 00      [10] 1031 	ld	hl,#0x0000
   3495 22 6A 8A      [16] 1032 	ld	((_scoreHallOfFame + 0x0018)+2), hl
                           1033 ;src/game.c:356: scoreHallOfFame[7] = 300;
   3498 21 2C 01      [10] 1034 	ld	hl,#0x012C
   349B 22 6C 8A      [16] 1035 	ld	((_scoreHallOfFame + 0x001c)), hl
   349E 21 00 00      [10] 1036 	ld	hl,#0x0000
   34A1 22 6E 8A      [16] 1037 	ld	((_scoreHallOfFame + 0x001c)+2), hl
                           1038 ;src/game.c:358: strcpy(nameHallOfFame[0], "MARTIN");
   34A4 11 70 8A      [10] 1039 	ld	de,#_nameHallOfFame
   34A7 21 56 35      [10] 1040 	ld	hl,#___str_2
   34AA AF            [ 4] 1041 	xor	a, a
   34AB                    1042 00110$:
   34AB BE            [ 7] 1043 	cp	a, (hl)
   34AC ED A0         [16] 1044 	ldi
   34AE 20 FB         [12] 1045 	jr	NZ, 00110$
                           1046 ;src/game.c:359: strcpy(nameHallOfFame[1], "DIEGO");
   34B0 11 7F 8A      [10] 1047 	ld	de,#(_nameHallOfFame + 0x000f)
   34B3 21 5D 35      [10] 1048 	ld	hl,#___str_3
   34B6 AF            [ 4] 1049 	xor	a, a
   34B7                    1050 00111$:
   34B7 BE            [ 7] 1051 	cp	a, (hl)
   34B8 ED A0         [16] 1052 	ldi
   34BA 20 FB         [12] 1053 	jr	NZ, 00111$
                           1054 ;src/game.c:360: strcpy(nameHallOfFame[2], "MARIA");
   34BC 11 8E 8A      [10] 1055 	ld	de,#(_nameHallOfFame + 0x001e)
   34BF 21 63 35      [10] 1056 	ld	hl,#___str_4
   34C2 AF            [ 4] 1057 	xor	a, a
   34C3                    1058 00112$:
   34C3 BE            [ 7] 1059 	cp	a, (hl)
   34C4 ED A0         [16] 1060 	ldi
   34C6 20 FB         [12] 1061 	jr	NZ, 00112$
                           1062 ;src/game.c:361: strcpy(nameHallOfFame[3], "DAVID");
   34C8 11 9D 8A      [10] 1063 	ld	de,#(_nameHallOfFame + 0x002d)
   34CB 21 69 35      [10] 1064 	ld	hl,#___str_5
   34CE AF            [ 4] 1065 	xor	a, a
   34CF                    1066 00113$:
   34CF BE            [ 7] 1067 	cp	a, (hl)
   34D0 ED A0         [16] 1068 	ldi
   34D2 20 FB         [12] 1069 	jr	NZ, 00113$
                           1070 ;src/game.c:362: strcpy(nameHallOfFame[4], "MASTER");
   34D4 11 AC 8A      [10] 1071 	ld	de,#(_nameHallOfFame + 0x003c)
   34D7 21 6F 35      [10] 1072 	ld	hl,#___str_6
   34DA AF            [ 4] 1073 	xor	a, a
   34DB                    1074 00114$:
   34DB BE            [ 7] 1075 	cp	a, (hl)
   34DC ED A0         [16] 1076 	ldi
   34DE 20 FB         [12] 1077 	jr	NZ, 00114$
                           1078 ;src/game.c:363: strcpy(nameHallOfFame[5], "EXPERT");
   34E0 11 BB 8A      [10] 1079 	ld	de,#(_nameHallOfFame + 0x004b)
   34E3 21 76 35      [10] 1080 	ld	hl,#___str_7
   34E6 AF            [ 4] 1081 	xor	a, a
   34E7                    1082 00115$:
   34E7 BE            [ 7] 1083 	cp	a, (hl)
   34E8 ED A0         [16] 1084 	ldi
   34EA 20 FB         [12] 1085 	jr	NZ, 00115$
                           1086 ;src/game.c:364: strcpy(nameHallOfFame[6], "INTERMEDIATE");
   34EC 11 CA 8A      [10] 1087 	ld	de,#(_nameHallOfFame + 0x005a)
   34EF 21 7D 35      [10] 1088 	ld	hl,#___str_8
   34F2 AF            [ 4] 1089 	xor	a, a
   34F3                    1090 00116$:
   34F3 BE            [ 7] 1091 	cp	a, (hl)
   34F4 ED A0         [16] 1092 	ldi
   34F6 20 FB         [12] 1093 	jr	NZ, 00116$
                           1094 ;src/game.c:365: strcpy(nameHallOfFame[7], "BEGINNER");
   34F8 11 D9 8A      [10] 1095 	ld	de,#(_nameHallOfFame + 0x0069)
   34FB 21 8A 35      [10] 1096 	ld	hl,#___str_9
   34FE AF            [ 4] 1097 	xor	a, a
   34FF                    1098 00117$:
   34FF BE            [ 7] 1099 	cp	a, (hl)
   3500 ED A0         [16] 1100 	ldi
   3502 20 FB         [12] 1101 	jr	NZ, 00117$
                           1102 ;src/game.c:368: clearScreen();
   3504 CD CE 71      [17] 1103 	call	_clearScreen
                           1104 ;src/game.c:370: keys.up    = Key_Q;
   3507 21 08 08      [10] 1105 	ld	hl,#0x0808
   350A 22 29 8A      [16] 1106 	ld	(_keys), hl
                           1107 ;src/game.c:371: keys.down  = Key_A;
   350D 26 20         [ 7] 1108 	ld	h, #0x20
   350F 22 2B 8A      [16] 1109 	ld	((_keys + 0x0002)), hl
                           1110 ;src/game.c:372: keys.left  = Key_O;
   3512 21 04 04      [10] 1111 	ld	hl,#0x0404
   3515 22 2D 8A      [16] 1112 	ld	((_keys + 0x0004)), hl
                           1113 ;src/game.c:373: keys.right = Key_P;
   3518 21 03 08      [10] 1114 	ld	hl,#0x0803
   351B 22 2F 8A      [16] 1115 	ld	((_keys + 0x0006)), hl
                           1116 ;src/game.c:375: keys.pause = Key_Del;
   351E 21 09 80      [10] 1117 	ld	hl,#0x8009
   3521 22 33 8A      [16] 1118 	ld	((_keys + 0x000a)), hl
                           1119 ;src/game.c:376: keys.abort = Key_Esc;
   3524 21 08 04      [10] 1120 	ld	hl,#0x0408
   3527 22 35 8A      [16] 1121 	ld	((_keys + 0x000c)), hl
                           1122 ;src/game.c:378: selectedOption = 1;
   352A 21 E9 8A      [10] 1123 	ld	hl,#_selectedOption + 0
   352D 36 01         [10] 1124 	ld	(hl), #0x01
                           1125 ;src/game.c:383: playing = 0;
   352F 21 0A 8B      [10] 1126 	ld	hl,#_playing + 0
   3532 36 00         [10] 1127 	ld	(hl), #0x00
   3534 C9            [10] 1128 	ret
   3535                    1129 ___str_0:
   3535 41 4D 53 54 48 52  1130 	.ascii "AMSTHREES IS READY"
        45 45 53 20 49 53
        20 52 45 41 44 59
   3547 00                 1131 	.db 0x00
   3548                    1132 ___str_1:
   3548 50 52 45 53 53 20  1133 	.ascii "PRESS ANY KEY"
        41 4E 59 20 4B 45
        59
   3555 00                 1134 	.db 0x00
   3556                    1135 ___str_2:
   3556 4D 41 52 54 49 4E  1136 	.ascii "MARTIN"
   355C 00                 1137 	.db 0x00
   355D                    1138 ___str_3:
   355D 44 49 45 47 4F     1139 	.ascii "DIEGO"
   3562 00                 1140 	.db 0x00
   3563                    1141 ___str_4:
   3563 4D 41 52 49 41     1142 	.ascii "MARIA"
   3568 00                 1143 	.db 0x00
   3569                    1144 ___str_5:
   3569 44 41 56 49 44     1145 	.ascii "DAVID"
   356E 00                 1146 	.db 0x00
   356F                    1147 ___str_6:
   356F 4D 41 53 54 45 52  1148 	.ascii "MASTER"
   3575 00                 1149 	.db 0x00
   3576                    1150 ___str_7:
   3576 45 58 50 45 52 54  1151 	.ascii "EXPERT"
   357C 00                 1152 	.db 0x00
   357D                    1153 ___str_8:
   357D 49 4E 54 45 52 4D  1154 	.ascii "INTERMEDIATE"
        45 44 49 41 54 45
   3589 00                 1155 	.db 0x00
   358A                    1156 ___str_9:
   358A 42 45 47 49 4E 4E  1157 	.ascii "BEGINNER"
        45 52
   3592 00                 1158 	.db 0x00
                           1159 ;src/game.c:395: void initGame() {
                           1160 ;	---------------------------------
                           1161 ; Function initGame
                           1162 ; ---------------------------------
   3593                    1163 _initGame::
   3593 DD E5         [15] 1164 	push	ix
   3595 DD 21 00 00   [14] 1165 	ld	ix,#0
   3599 DD 39         [15] 1166 	add	ix,sp
   359B F5            [11] 1167 	push	af
   359C 3B            [ 6] 1168 	dec	sp
                           1169 ;src/game.c:398: initCells();
   359D CD E1 33      [17] 1170 	call	_initCells
                           1171 ;src/game.c:400: renewTileBag();
   35A0 CD 80 30      [17] 1172 	call	_renewTileBag
                           1173 ;src/game.c:402: for (i = 0; i < 9; i++) {
   35A3 DD 36 FD 00   [19] 1174 	ld	-3 (ix),#0x00
   35A7                    1175 00105$:
                           1176 ;src/game.c:403: j = cpct_rand() / 64;
   35A7 CD 04 7C      [17] 1177 	call	_cpct_getRandom_mxor_u8
   35AA 7D            [ 4] 1178 	ld	a,l
   35AB 07            [ 4] 1179 	rlca
   35AC 07            [ 4] 1180 	rlca
   35AD E6 03         [ 7] 1181 	and	a,#0x03
   35AF 6F            [ 4] 1182 	ld	l,a
                           1183 ;src/game.c:404: k = cpct_rand() / 64;
   35B0 E5            [11] 1184 	push	hl
   35B1 CD 04 7C      [17] 1185 	call	_cpct_getRandom_mxor_u8
   35B4 7D            [ 4] 1186 	ld	a,l
   35B5 E1            [10] 1187 	pop	hl
   35B6 07            [ 4] 1188 	rlca
   35B7 07            [ 4] 1189 	rlca
   35B8 E6 03         [ 7] 1190 	and	a,#0x03
   35BA 4F            [ 4] 1191 	ld	c,a
                           1192 ;src/game.c:405: while (cells[j][k] != 0) {
   35BB                    1193 00101$:
   35BB 26 00         [ 7] 1194 	ld	h,#0x00
   35BD 29            [11] 1195 	add	hl, hl
   35BE 29            [11] 1196 	add	hl, hl
   35BF 11 37 8A      [10] 1197 	ld	de,#_cells
   35C2 19            [11] 1198 	add	hl,de
   35C3 7D            [ 4] 1199 	ld	a,l
   35C4 81            [ 4] 1200 	add	a, c
   35C5 DD 77 FE      [19] 1201 	ld	-2 (ix),a
   35C8 7C            [ 4] 1202 	ld	a,h
   35C9 CE 00         [ 7] 1203 	adc	a, #0x00
   35CB DD 77 FF      [19] 1204 	ld	-1 (ix),a
   35CE DD 6E FE      [19] 1205 	ld	l,-2 (ix)
   35D1 DD 66 FF      [19] 1206 	ld	h,-1 (ix)
   35D4 7E            [ 7] 1207 	ld	a, (hl)
   35D5 B7            [ 4] 1208 	or	a, a
   35D6 28 16         [12] 1209 	jr	Z,00103$
                           1210 ;src/game.c:406: j = cpct_rand() / 64;
   35D8 CD 04 7C      [17] 1211 	call	_cpct_getRandom_mxor_u8
   35DB 7D            [ 4] 1212 	ld	a,l
   35DC 07            [ 4] 1213 	rlca
   35DD 07            [ 4] 1214 	rlca
   35DE E6 03         [ 7] 1215 	and	a,#0x03
   35E0 6F            [ 4] 1216 	ld	l,a
                           1217 ;src/game.c:407: k = cpct_rand() / 64;
   35E1 E5            [11] 1218 	push	hl
   35E2 CD 04 7C      [17] 1219 	call	_cpct_getRandom_mxor_u8
   35E5 7D            [ 4] 1220 	ld	a,l
   35E6 E1            [10] 1221 	pop	hl
   35E7 07            [ 4] 1222 	rlca
   35E8 07            [ 4] 1223 	rlca
   35E9 E6 03         [ 7] 1224 	and	a,#0x03
   35EB 4F            [ 4] 1225 	ld	c,a
   35EC 18 CD         [12] 1226 	jr	00101$
   35EE                    1227 00103$:
                           1228 ;src/game.c:412: cells[j][k] = tileBag[currentTile];
   35EE 3E EC         [ 7] 1229 	ld	a,#<(_tileBag)
   35F0 21 F8 8A      [10] 1230 	ld	hl,#_currentTile
   35F3 86            [ 7] 1231 	add	a, (hl)
   35F4 4F            [ 4] 1232 	ld	c,a
   35F5 3E 8A         [ 7] 1233 	ld	a,#>(_tileBag)
   35F7 CE 00         [ 7] 1234 	adc	a, #0x00
   35F9 47            [ 4] 1235 	ld	b,a
   35FA 0A            [ 7] 1236 	ld	a,(bc)
   35FB DD 6E FE      [19] 1237 	ld	l,-2 (ix)
   35FE DD 66 FF      [19] 1238 	ld	h,-1 (ix)
   3601 77            [ 7] 1239 	ld	(hl),a
                           1240 ;src/game.c:413: currentTile++;
   3602 21 F8 8A      [10] 1241 	ld	hl, #_currentTile+0
   3605 34            [11] 1242 	inc	(hl)
                           1243 ;src/game.c:402: for (i = 0; i < 9; i++) {
   3606 DD 34 FD      [23] 1244 	inc	-3 (ix)
   3609 DD 7E FD      [19] 1245 	ld	a,-3 (ix)
   360C D6 09         [ 7] 1246 	sub	a, #0x09
   360E 38 97         [12] 1247 	jr	C,00105$
                           1248 ;src/game.c:416: score = 0;
   3610 AF            [ 4] 1249 	xor	a, a
   3611 32 4C 8A      [13] 1250 	ld	(#_score + 0),a
   3614 32 4D 8A      [13] 1251 	ld	(#_score + 1),a
   3617 32 4E 8A      [13] 1252 	ld	(#_score + 2),a
   361A 32 4F 8A      [13] 1253 	ld	(#_score + 3),a
   361D DD F9         [10] 1254 	ld	sp, ix
   361F DD E1         [14] 1255 	pop	ix
   3621 C9            [10] 1256 	ret
                           1257 ;src/game.c:432: u8 rotateCellsLeft() {
                           1258 ;	---------------------------------
                           1259 ; Function rotateCellsLeft
                           1260 ; ---------------------------------
   3622                    1261 _rotateCellsLeft::
   3622 DD E5         [15] 1262 	push	ix
   3624 DD 21 00 00   [14] 1263 	ld	ix,#0
   3628 DD 39         [15] 1264 	add	ix,sp
   362A F5            [11] 1265 	push	af
   362B F5            [11] 1266 	push	af
   362C 3B            [ 6] 1267 	dec	sp
                           1268 ;src/game.c:436: matched = 0;
   362D 0E 00         [ 7] 1269 	ld	c,#0x00
                           1270 ;src/game.c:437: for (i = 0; i < 4; i++) {
   362F DD 36 FB 00   [19] 1271 	ld	-5 (ix),#0x00
                           1272 ;src/game.c:438: for (j = 1; j < 4; j++) {
   3633                    1273 00129$:
   3633 1E 01         [ 7] 1274 	ld	e,#0x01
   3635                    1275 00117$:
                           1276 ;src/game.c:439: if (cells[i][j] != 0) {
   3635 DD 6E FB      [19] 1277 	ld	l,-5 (ix)
   3638 26 00         [ 7] 1278 	ld	h,#0x00
   363A 29            [11] 1279 	add	hl, hl
   363B 29            [11] 1280 	add	hl, hl
   363C 3E 37         [ 7] 1281 	ld	a,#<(_cells)
   363E 85            [ 4] 1282 	add	a, l
   363F DD 77 FC      [19] 1283 	ld	-4 (ix),a
   3642 3E 8A         [ 7] 1284 	ld	a,#>(_cells)
   3644 8C            [ 4] 1285 	adc	a, h
   3645 DD 77 FD      [19] 1286 	ld	-3 (ix),a
   3648 DD 7E FC      [19] 1287 	ld	a,-4 (ix)
   364B 83            [ 4] 1288 	add	a, e
   364C DD 77 FE      [19] 1289 	ld	-2 (ix),a
   364F DD 7E FD      [19] 1290 	ld	a,-3 (ix)
   3652 CE 00         [ 7] 1291 	adc	a, #0x00
   3654 DD 77 FF      [19] 1292 	ld	-1 (ix),a
   3657 DD 6E FE      [19] 1293 	ld	l,-2 (ix)
   365A DD 66 FF      [19] 1294 	ld	h,-1 (ix)
   365D 46            [ 7] 1295 	ld	b,(hl)
   365E 78            [ 4] 1296 	ld	a,b
   365F B7            [ 4] 1297 	or	a, a
   3660 28 63         [12] 1298 	jr	Z,00118$
                           1299 ;src/game.c:441: if (cells[i][j - 1] == 0) {
   3662 53            [ 4] 1300 	ld	d,e
   3663 15            [ 4] 1301 	dec	d
   3664 E5            [11] 1302 	push	hl
   3665 DD 6E FC      [19] 1303 	ld	l,-4 (ix)
   3668 DD 66 FD      [19] 1304 	ld	h,-3 (ix)
   366B E5            [11] 1305 	push	hl
   366C FD E1         [14] 1306 	pop	iy
   366E E1            [10] 1307 	pop	hl
   366F C5            [11] 1308 	push	bc
   3670 4A            [ 4] 1309 	ld	c,d
   3671 06 00         [ 7] 1310 	ld	b,#0x00
   3673 FD 09         [15] 1311 	add	iy, bc
   3675 C1            [10] 1312 	pop	bc
   3676 FD 56 00      [19] 1313 	ld	d, 0 (iy)
   3679 7A            [ 4] 1314 	ld	a,d
   367A B7            [ 4] 1315 	or	a, a
   367B 20 0F         [12] 1316 	jr	NZ,00111$
                           1317 ;src/game.c:442: cells[i][j - 1] = cells[i][j];
   367D FD 70 00      [19] 1318 	ld	0 (iy), b
                           1319 ;src/game.c:443: cells[i][j] = 0;
   3680 DD 6E FE      [19] 1320 	ld	l,-2 (ix)
   3683 DD 66 FF      [19] 1321 	ld	h,-1 (ix)
   3686 36 00         [10] 1322 	ld	(hl),#0x00
                           1323 ;src/game.c:444: matched = 1;
   3688 0E 01         [ 7] 1324 	ld	c,#0x01
   368A 18 39         [12] 1325 	jr	00118$
   368C                    1326 00111$:
                           1327 ;src/game.c:445: } else if (((cells[i][j - 1] == 1) && (cells[i][j] == 2)) ||
   368C 7A            [ 4] 1328 	ld	a,d
   368D 3D            [ 4] 1329 	dec	a
   368E 20 05         [12] 1330 	jr	NZ,00109$
   3690 78            [ 4] 1331 	ld	a,b
   3691 D6 02         [ 7] 1332 	sub	a, #0x02
   3693 28 09         [12] 1333 	jr	Z,00104$
   3695                    1334 00109$:
                           1335 ;src/game.c:446: ((cells[i][j - 1] == 2) && (cells[i][j] == 1))) {
   3695 7A            [ 4] 1336 	ld	a,d
   3696 D6 02         [ 7] 1337 	sub	a, #0x02
   3698 20 14         [12] 1338 	jr	NZ,00105$
   369A 78            [ 4] 1339 	ld	a,b
   369B 3D            [ 4] 1340 	dec	a
   369C 20 10         [12] 1341 	jr	NZ,00105$
   369E                    1342 00104$:
                           1343 ;src/game.c:447: cells[i][j - 1] = 3;
   369E FD 36 00 03   [19] 1344 	ld	0 (iy), #0x03
                           1345 ;src/game.c:448: cells[i][j] = 0;
   36A2 DD 6E FE      [19] 1346 	ld	l,-2 (ix)
   36A5 DD 66 FF      [19] 1347 	ld	h,-1 (ix)
   36A8 36 00         [10] 1348 	ld	(hl),#0x00
                           1349 ;src/game.c:449: matched = 1;
   36AA 0E 01         [ 7] 1350 	ld	c,#0x01
   36AC 18 17         [12] 1351 	jr	00118$
   36AE                    1352 00105$:
                           1353 ;src/game.c:450: } else if ((cells[i][j - 1] == cells[i][j]) && (cells[i][j] > 2)) {
   36AE 78            [ 4] 1354 	ld	a,b
   36AF 92            [ 4] 1355 	sub	a, d
   36B0 20 13         [12] 1356 	jr	NZ,00118$
   36B2 3E 02         [ 7] 1357 	ld	a,#0x02
   36B4 90            [ 4] 1358 	sub	a, b
   36B5 30 0E         [12] 1359 	jr	NC,00118$
                           1360 ;src/game.c:451: cells[i][j - 1]++;
   36B7 14            [ 4] 1361 	inc	d
   36B8 FD 72 00      [19] 1362 	ld	0 (iy), d
                           1363 ;src/game.c:452: cells[i][j] = 0;
   36BB DD 6E FE      [19] 1364 	ld	l,-2 (ix)
   36BE DD 66 FF      [19] 1365 	ld	h,-1 (ix)
   36C1 36 00         [10] 1366 	ld	(hl),#0x00
                           1367 ;src/game.c:453: matched = 1;
   36C3 0E 01         [ 7] 1368 	ld	c,#0x01
   36C5                    1369 00118$:
                           1370 ;src/game.c:438: for (j = 1; j < 4; j++) {
   36C5 1C            [ 4] 1371 	inc	e
   36C6 7B            [ 4] 1372 	ld	a,e
   36C7 D6 04         [ 7] 1373 	sub	a, #0x04
   36C9 DA 35 36      [10] 1374 	jp	C,00117$
                           1375 ;src/game.c:437: for (i = 0; i < 4; i++) {
   36CC DD 34 FB      [23] 1376 	inc	-5 (ix)
   36CF DD 7E FB      [19] 1377 	ld	a,-5 (ix)
   36D2 D6 04         [ 7] 1378 	sub	a, #0x04
   36D4 DA 33 36      [10] 1379 	jp	C,00129$
                           1380 ;src/game.c:458: return matched;
   36D7 69            [ 4] 1381 	ld	l,c
   36D8 DD F9         [10] 1382 	ld	sp, ix
   36DA DD E1         [14] 1383 	pop	ix
   36DC C9            [10] 1384 	ret
                           1385 ;src/game.c:469: u8 rotateCellsRight() {
                           1386 ;	---------------------------------
                           1387 ; Function rotateCellsRight
                           1388 ; ---------------------------------
   36DD                    1389 _rotateCellsRight::
   36DD DD E5         [15] 1390 	push	ix
   36DF DD 21 00 00   [14] 1391 	ld	ix,#0
   36E3 DD 39         [15] 1392 	add	ix,sp
   36E5 F5            [11] 1393 	push	af
   36E6 F5            [11] 1394 	push	af
   36E7 3B            [ 6] 1395 	dec	sp
                           1396 ;src/game.c:473: matched = 0;
   36E8 0E 00         [ 7] 1397 	ld	c,#0x00
                           1398 ;src/game.c:474: for (i = 0; i < 4; i++) {
   36EA DD 36 FB 00   [19] 1399 	ld	-5 (ix),#0x00
                           1400 ;src/game.c:476: do {
   36EE                    1401 00128$:
   36EE 1E 03         [ 7] 1402 	ld	e,#0x03
   36F0                    1403 00114$:
                           1404 ;src/game.c:477: j--;
   36F0 1D            [ 4] 1405 	dec	e
                           1406 ;src/game.c:478: if (cells[i][j] != 0) {
   36F1 DD 6E FB      [19] 1407 	ld	l,-5 (ix)
   36F4 26 00         [ 7] 1408 	ld	h,#0x00
   36F6 29            [11] 1409 	add	hl, hl
   36F7 29            [11] 1410 	add	hl, hl
   36F8 3E 37         [ 7] 1411 	ld	a,#<(_cells)
   36FA 85            [ 4] 1412 	add	a, l
   36FB DD 77 FC      [19] 1413 	ld	-4 (ix),a
   36FE 3E 8A         [ 7] 1414 	ld	a,#>(_cells)
   3700 8C            [ 4] 1415 	adc	a, h
   3701 DD 77 FD      [19] 1416 	ld	-3 (ix),a
   3704 DD 7E FC      [19] 1417 	ld	a,-4 (ix)
   3707 83            [ 4] 1418 	add	a, e
   3708 DD 77 FE      [19] 1419 	ld	-2 (ix),a
   370B DD 7E FD      [19] 1420 	ld	a,-3 (ix)
   370E CE 00         [ 7] 1421 	adc	a, #0x00
   3710 DD 77 FF      [19] 1422 	ld	-1 (ix),a
   3713 DD 6E FE      [19] 1423 	ld	l,-2 (ix)
   3716 DD 66 FF      [19] 1424 	ld	h,-1 (ix)
   3719 46            [ 7] 1425 	ld	b,(hl)
   371A 78            [ 4] 1426 	ld	a,b
   371B B7            [ 4] 1427 	or	a, a
   371C 28 6A         [12] 1428 	jr	Z,00115$
                           1429 ;src/game.c:480: if (cells[i][j + 1] == 0) {
   371E 53            [ 4] 1430 	ld	d,e
   371F 14            [ 4] 1431 	inc	d
   3720 E5            [11] 1432 	push	hl
   3721 DD 6E FC      [19] 1433 	ld	l,-4 (ix)
   3724 DD 66 FD      [19] 1434 	ld	h,-3 (ix)
   3727 E5            [11] 1435 	push	hl
   3728 FD E1         [14] 1436 	pop	iy
   372A E1            [10] 1437 	pop	hl
   372B C5            [11] 1438 	push	bc
   372C 4A            [ 4] 1439 	ld	c,d
   372D 06 00         [ 7] 1440 	ld	b,#0x00
   372F FD 09         [15] 1441 	add	iy, bc
   3731 C1            [10] 1442 	pop	bc
   3732 FD 7E 00      [19] 1443 	ld	a, 0 (iy)
   3735 B7            [ 4] 1444 	or	a, a
   3736 20 0D         [12] 1445 	jr	NZ,00102$
                           1446 ;src/game.c:481: cells[i][j + 1] = cells[i][j];
   3738 FD 70 00      [19] 1447 	ld	0 (iy), b
                           1448 ;src/game.c:482: cells[i][j] = 0;
   373B DD 6E FE      [19] 1449 	ld	l,-2 (ix)
   373E DD 66 FF      [19] 1450 	ld	h,-1 (ix)
   3741 36 00         [10] 1451 	ld	(hl),#0x00
                           1452 ;src/game.c:483: matched = 1;
   3743 0E 01         [ 7] 1453 	ld	c,#0x01
   3745                    1454 00102$:
                           1455 ;src/game.c:484: } if (((cells[i][j + 1] == 1) && (cells[i][j] == 2)) ||
   3745 FD 46 00      [19] 1456 	ld	b, 0 (iy)
   3748 DD 6E FE      [19] 1457 	ld	l,-2 (ix)
   374B DD 66 FF      [19] 1458 	ld	h,-1 (ix)
   374E 56            [ 7] 1459 	ld	d,(hl)
   374F 78            [ 4] 1460 	ld	a,b
   3750 3D            [ 4] 1461 	dec	a
   3751 20 05         [12] 1462 	jr	NZ,00111$
   3753 7A            [ 4] 1463 	ld	a,d
   3754 D6 02         [ 7] 1464 	sub	a, #0x02
   3756 28 09         [12] 1465 	jr	Z,00106$
   3758                    1466 00111$:
                           1467 ;src/game.c:485: ((cells[i][j + 1] == 2) && (cells[i][j] == 1))) {
   3758 78            [ 4] 1468 	ld	a,b
   3759 D6 02         [ 7] 1469 	sub	a, #0x02
   375B 20 14         [12] 1470 	jr	NZ,00107$
   375D 7A            [ 4] 1471 	ld	a,d
   375E 3D            [ 4] 1472 	dec	a
   375F 20 10         [12] 1473 	jr	NZ,00107$
   3761                    1474 00106$:
                           1475 ;src/game.c:486: cells[i][j + 1] = 3;
   3761 FD 36 00 03   [19] 1476 	ld	0 (iy), #0x03
                           1477 ;src/game.c:487: cells[i][j] = 0;
   3765 DD 6E FE      [19] 1478 	ld	l,-2 (ix)
   3768 DD 66 FF      [19] 1479 	ld	h,-1 (ix)
   376B 36 00         [10] 1480 	ld	(hl),#0x00
                           1481 ;src/game.c:488: matched = 1;
   376D 0E 01         [ 7] 1482 	ld	c,#0x01
   376F 18 17         [12] 1483 	jr	00115$
   3771                    1484 00107$:
                           1485 ;src/game.c:489: } else if ((cells[i][j + 1] == cells[i][j]) && (cells[i][j] > 2)) {
   3771 78            [ 4] 1486 	ld	a,b
   3772 92            [ 4] 1487 	sub	a, d
   3773 20 13         [12] 1488 	jr	NZ,00115$
   3775 3E 02         [ 7] 1489 	ld	a,#0x02
   3777 92            [ 4] 1490 	sub	a, d
   3778 30 0E         [12] 1491 	jr	NC,00115$
                           1492 ;src/game.c:490: cells[i][j + 1]++;
   377A 04            [ 4] 1493 	inc	b
   377B FD 70 00      [19] 1494 	ld	0 (iy), b
                           1495 ;src/game.c:491: cells[i][j] = 0;
   377E DD 6E FE      [19] 1496 	ld	l,-2 (ix)
   3781 DD 66 FF      [19] 1497 	ld	h,-1 (ix)
   3784 36 00         [10] 1498 	ld	(hl),#0x00
                           1499 ;src/game.c:492: matched = 1;
   3786 0E 01         [ 7] 1500 	ld	c,#0x01
   3788                    1501 00115$:
                           1502 ;src/game.c:495: } while (j > 0);
   3788 7B            [ 4] 1503 	ld	a,e
   3789 B7            [ 4] 1504 	or	a, a
   378A C2 F0 36      [10] 1505 	jp	NZ,00114$
                           1506 ;src/game.c:474: for (i = 0; i < 4; i++) {
   378D DD 34 FB      [23] 1507 	inc	-5 (ix)
   3790 DD 7E FB      [19] 1508 	ld	a,-5 (ix)
   3793 D6 04         [ 7] 1509 	sub	a, #0x04
   3795 DA EE 36      [10] 1510 	jp	C,00128$
                           1511 ;src/game.c:497: return matched;
   3798 69            [ 4] 1512 	ld	l,c
   3799 DD F9         [10] 1513 	ld	sp, ix
   379B DD E1         [14] 1514 	pop	ix
   379D C9            [10] 1515 	ret
                           1516 ;src/game.c:508: u8 rotateCellsUp() {
                           1517 ;	---------------------------------
                           1518 ; Function rotateCellsUp
                           1519 ; ---------------------------------
   379E                    1520 _rotateCellsUp::
   379E DD E5         [15] 1521 	push	ix
   37A0 DD 21 00 00   [14] 1522 	ld	ix,#0
   37A4 DD 39         [15] 1523 	add	ix,sp
   37A6 F5            [11] 1524 	push	af
   37A7 F5            [11] 1525 	push	af
                           1526 ;src/game.c:512: matched = 0;
                           1527 ;src/game.c:513: for (i = 1; i < 4; i++) {
   37A8 01 00 01      [10] 1528 	ld	bc,#0x0100
                           1529 ;src/game.c:514: for (j = 0; j < 4; j++) {
   37AB                    1530 00129$:
   37AB 78            [ 4] 1531 	ld	a,b
   37AC C6 FF         [ 7] 1532 	add	a,#0xFF
   37AE DD 77 FF      [19] 1533 	ld	-1 (ix),a
   37B1 1E 00         [ 7] 1534 	ld	e,#0x00
   37B3                    1535 00117$:
                           1536 ;src/game.c:515: if (cells[i][j] != 0) {
   37B3 68            [ 4] 1537 	ld	l,b
   37B4 26 00         [ 7] 1538 	ld	h,#0x00
   37B6 29            [11] 1539 	add	hl, hl
   37B7 29            [11] 1540 	add	hl, hl
   37B8 3E 37         [ 7] 1541 	ld	a,#<(_cells)
   37BA 85            [ 4] 1542 	add	a, l
   37BB 57            [ 4] 1543 	ld	d,a
   37BC 3E 8A         [ 7] 1544 	ld	a,#>(_cells)
   37BE 8C            [ 4] 1545 	adc	a, h
   37BF 6F            [ 4] 1546 	ld	l,a
   37C0 7A            [ 4] 1547 	ld	a,d
   37C1 83            [ 4] 1548 	add	a, e
   37C2 DD 77 FC      [19] 1549 	ld	-4 (ix),a
   37C5 7D            [ 4] 1550 	ld	a,l
   37C6 CE 00         [ 7] 1551 	adc	a, #0x00
   37C8 DD 77 FD      [19] 1552 	ld	-3 (ix),a
                           1553 ;src/game.c:522: ((cells[i - 1][j] == 2) && (cells[i][j] == 1))) {
   37CB E1            [10] 1554 	pop	hl
   37CC E5            [11] 1555 	push	hl
   37CD 56            [ 7] 1556 	ld	d,(hl)
                           1557 ;src/game.c:515: if (cells[i][j] != 0) {
   37CE 7A            [ 4] 1558 	ld	a,d
   37CF B7            [ 4] 1559 	or	a, a
   37D0 28 65         [12] 1560 	jr	Z,00118$
                           1561 ;src/game.c:517: if (cells[i - 1][j] == 0) {
   37D2 DD 6E FF      [19] 1562 	ld	l,-1 (ix)
   37D5 26 00         [ 7] 1563 	ld	h,#0x00
   37D7 29            [11] 1564 	add	hl, hl
   37D8 29            [11] 1565 	add	hl, hl
   37D9 FD 21 37 8A   [14] 1566 	ld	iy,#_cells
   37DD C5            [11] 1567 	push	bc
   37DE 4D            [ 4] 1568 	ld	c, l
   37DF 44            [ 4] 1569 	ld	b, h
   37E0 FD 09         [15] 1570 	add	iy, bc
   37E2 C1            [10] 1571 	pop	bc
   37E3 D5            [11] 1572 	push	de
   37E4 16 00         [ 7] 1573 	ld	d,#0x00
   37E6 FD 19         [15] 1574 	add	iy, de
   37E8 D1            [10] 1575 	pop	de
   37E9 FD 7E 00      [19] 1576 	ld	a, 0 (iy)
   37EC DD 77 FE      [19] 1577 	ld	-2 (ix), a
   37EF B7            [ 4] 1578 	or	a, a
   37F0 20 0B         [12] 1579 	jr	NZ,00111$
                           1580 ;src/game.c:518: cells[i - 1][j] = cells[i][j];
   37F2 FD 72 00      [19] 1581 	ld	0 (iy), d
                           1582 ;src/game.c:519: cells[i][j] = 0;
   37F5 E1            [10] 1583 	pop	hl
   37F6 E5            [11] 1584 	push	hl
   37F7 36 00         [10] 1585 	ld	(hl),#0x00
                           1586 ;src/game.c:520: matched = 1;
   37F9 0E 01         [ 7] 1587 	ld	c,#0x01
   37FB 18 3A         [12] 1588 	jr	00118$
   37FD                    1589 00111$:
                           1590 ;src/game.c:521: } else if (((cells[i - 1][j] == 1) && (cells[i][j] == 2)) ||
   37FD DD 7E FE      [19] 1591 	ld	a,-2 (ix)
   3800 3D            [ 4] 1592 	dec	a
   3801 20 05         [12] 1593 	jr	NZ,00109$
   3803 7A            [ 4] 1594 	ld	a,d
   3804 D6 02         [ 7] 1595 	sub	a, #0x02
   3806 28 0B         [12] 1596 	jr	Z,00104$
   3808                    1597 00109$:
                           1598 ;src/game.c:522: ((cells[i - 1][j] == 2) && (cells[i][j] == 1))) {
   3808 DD 7E FE      [19] 1599 	ld	a,-2 (ix)
   380B D6 02         [ 7] 1600 	sub	a, #0x02
   380D 20 10         [12] 1601 	jr	NZ,00105$
   380F 7A            [ 4] 1602 	ld	a,d
   3810 3D            [ 4] 1603 	dec	a
   3811 20 0C         [12] 1604 	jr	NZ,00105$
   3813                    1605 00104$:
                           1606 ;src/game.c:523: cells[i - 1][j] = 3;
   3813 FD 36 00 03   [19] 1607 	ld	0 (iy), #0x03
                           1608 ;src/game.c:524: cells[i][j] = 0;
   3817 E1            [10] 1609 	pop	hl
   3818 E5            [11] 1610 	push	hl
   3819 36 00         [10] 1611 	ld	(hl),#0x00
                           1612 ;src/game.c:525: matched = 1;
   381B 0E 01         [ 7] 1613 	ld	c,#0x01
   381D 18 18         [12] 1614 	jr	00118$
   381F                    1615 00105$:
                           1616 ;src/game.c:526: } else if ((cells[i - 1][j] == cells[i][j]) && (cells[i][j] > 2)) {
   381F 7A            [ 4] 1617 	ld	a,d
   3820 DD 96 FE      [19] 1618 	sub	a, -2 (ix)
   3823 20 12         [12] 1619 	jr	NZ,00118$
   3825 3E 02         [ 7] 1620 	ld	a,#0x02
   3827 92            [ 4] 1621 	sub	a, d
   3828 30 0D         [12] 1622 	jr	NC,00118$
                           1623 ;src/game.c:527: cells[i - 1][j]++;
   382A DD 4E FE      [19] 1624 	ld	c,-2 (ix)
   382D 0C            [ 4] 1625 	inc	c
   382E FD 71 00      [19] 1626 	ld	0 (iy), c
                           1627 ;src/game.c:528: cells[i][j] = 0;
   3831 E1            [10] 1628 	pop	hl
   3832 E5            [11] 1629 	push	hl
   3833 36 00         [10] 1630 	ld	(hl),#0x00
                           1631 ;src/game.c:529: matched = 1;
   3835 0E 01         [ 7] 1632 	ld	c,#0x01
   3837                    1633 00118$:
                           1634 ;src/game.c:514: for (j = 0; j < 4; j++) {
   3837 1C            [ 4] 1635 	inc	e
   3838 7B            [ 4] 1636 	ld	a,e
   3839 D6 04         [ 7] 1637 	sub	a, #0x04
   383B DA B3 37      [10] 1638 	jp	C,00117$
                           1639 ;src/game.c:513: for (i = 1; i < 4; i++) {
   383E 04            [ 4] 1640 	inc	b
   383F 78            [ 4] 1641 	ld	a,b
   3840 D6 04         [ 7] 1642 	sub	a, #0x04
   3842 DA AB 37      [10] 1643 	jp	C,00129$
                           1644 ;src/game.c:534: return matched;
   3845 69            [ 4] 1645 	ld	l,c
   3846 DD F9         [10] 1646 	ld	sp, ix
   3848 DD E1         [14] 1647 	pop	ix
   384A C9            [10] 1648 	ret
                           1649 ;src/game.c:545: u8 rotateCellsDown() {
                           1650 ;	---------------------------------
                           1651 ; Function rotateCellsDown
                           1652 ; ---------------------------------
   384B                    1653 _rotateCellsDown::
   384B DD E5         [15] 1654 	push	ix
   384D DD 21 00 00   [14] 1655 	ld	ix,#0
   3851 DD 39         [15] 1656 	add	ix,sp
   3853 F5            [11] 1657 	push	af
   3854 F5            [11] 1658 	push	af
                           1659 ;src/game.c:549: matched = 0;
   3855 0E 00         [ 7] 1660 	ld	c,#0x00
                           1661 ;src/game.c:551: do {
   3857 DD 36 FC 03   [19] 1662 	ld	-4 (ix),#0x03
   385B                    1663 00115$:
                           1664 ;src/game.c:552: i--;
   385B DD 35 FC      [23] 1665 	dec	-4 (ix)
                           1666 ;src/game.c:553: for (j = 0; j < 4; j++) {
   385E DD 7E FC      [19] 1667 	ld	a,-4 (ix)
   3861 3C            [ 4] 1668 	inc	a
   3862 DD 77 FF      [19] 1669 	ld	-1 (ix),a
   3865 1E 00         [ 7] 1670 	ld	e,#0x00
   3867                    1671 00118$:
                           1672 ;src/game.c:554: if (cells[i][j] != 0) {
   3867 DD 6E FC      [19] 1673 	ld	l,-4 (ix)
   386A 26 00         [ 7] 1674 	ld	h,#0x00
   386C 29            [11] 1675 	add	hl, hl
   386D 29            [11] 1676 	add	hl, hl
   386E 3E 37         [ 7] 1677 	ld	a,#<(_cells)
   3870 85            [ 4] 1678 	add	a, l
   3871 47            [ 4] 1679 	ld	b,a
   3872 3E 8A         [ 7] 1680 	ld	a,#>(_cells)
   3874 8C            [ 4] 1681 	adc	a, h
   3875 57            [ 4] 1682 	ld	d,a
   3876 78            [ 4] 1683 	ld	a,b
   3877 83            [ 4] 1684 	add	a, e
   3878 DD 77 FD      [19] 1685 	ld	-3 (ix),a
   387B 7A            [ 4] 1686 	ld	a,d
   387C CE 00         [ 7] 1687 	adc	a, #0x00
   387E DD 77 FE      [19] 1688 	ld	-2 (ix),a
   3881 DD 6E FD      [19] 1689 	ld	l,-3 (ix)
   3884 DD 66 FE      [19] 1690 	ld	h,-2 (ix)
   3887 46            [ 7] 1691 	ld	b,(hl)
   3888 78            [ 4] 1692 	ld	a,b
   3889 B7            [ 4] 1693 	or	a, a
   388A 28 6D         [12] 1694 	jr	Z,00119$
                           1695 ;src/game.c:556: if (cells[i + 1][j] == 0) {
   388C DD 6E FF      [19] 1696 	ld	l,-1 (ix)
   388F 26 00         [ 7] 1697 	ld	h,#0x00
   3891 29            [11] 1698 	add	hl, hl
   3892 29            [11] 1699 	add	hl, hl
   3893 FD 21 37 8A   [14] 1700 	ld	iy,#_cells
   3897 C5            [11] 1701 	push	bc
   3898 4D            [ 4] 1702 	ld	c, l
   3899 44            [ 4] 1703 	ld	b, h
   389A FD 09         [15] 1704 	add	iy, bc
   389C C1            [10] 1705 	pop	bc
   389D D5            [11] 1706 	push	de
   389E 16 00         [ 7] 1707 	ld	d,#0x00
   38A0 FD 19         [15] 1708 	add	iy, de
   38A2 D1            [10] 1709 	pop	de
   38A3 FD 7E 00      [19] 1710 	ld	a, 0 (iy)
   38A6 B7            [ 4] 1711 	or	a, a
   38A7 20 0D         [12] 1712 	jr	NZ,00102$
                           1713 ;src/game.c:557: cells[i + 1][j] = cells[i][j];
   38A9 FD 70 00      [19] 1714 	ld	0 (iy), b
                           1715 ;src/game.c:558: cells[i][j] = 0;
   38AC DD 6E FD      [19] 1716 	ld	l,-3 (ix)
   38AF DD 66 FE      [19] 1717 	ld	h,-2 (ix)
   38B2 36 00         [10] 1718 	ld	(hl),#0x00
                           1719 ;src/game.c:559: matched = 1;
   38B4 0E 01         [ 7] 1720 	ld	c,#0x01
   38B6                    1721 00102$:
                           1722 ;src/game.c:556: if (cells[i + 1][j] == 0) {
   38B6 FD 46 00      [19] 1723 	ld	b, 0 (iy)
                           1724 ;src/game.c:554: if (cells[i][j] != 0) {
   38B9 DD 6E FD      [19] 1725 	ld	l,-3 (ix)
   38BC DD 66 FE      [19] 1726 	ld	h,-2 (ix)
   38BF 56            [ 7] 1727 	ld	d,(hl)
                           1728 ;src/game.c:560: } if (((cells[i + 1][j] == 1) && (cells[i][j] == 2)) ||
   38C0 78            [ 4] 1729 	ld	a,b
   38C1 3D            [ 4] 1730 	dec	a
   38C2 20 05         [12] 1731 	jr	NZ,00111$
   38C4 7A            [ 4] 1732 	ld	a,d
   38C5 D6 02         [ 7] 1733 	sub	a, #0x02
   38C7 28 09         [12] 1734 	jr	Z,00106$
   38C9                    1735 00111$:
                           1736 ;src/game.c:561: ((cells[i + 1][j] == 2) && (cells[i][j] == 1))) {
   38C9 78            [ 4] 1737 	ld	a,b
   38CA D6 02         [ 7] 1738 	sub	a, #0x02
   38CC 20 14         [12] 1739 	jr	NZ,00107$
   38CE 7A            [ 4] 1740 	ld	a,d
   38CF 3D            [ 4] 1741 	dec	a
   38D0 20 10         [12] 1742 	jr	NZ,00107$
   38D2                    1743 00106$:
                           1744 ;src/game.c:562: cells[i + 1][j] = 3;
   38D2 FD 36 00 03   [19] 1745 	ld	0 (iy), #0x03
                           1746 ;src/game.c:563: cells[i][j] = 0;
   38D6 DD 6E FD      [19] 1747 	ld	l,-3 (ix)
   38D9 DD 66 FE      [19] 1748 	ld	h,-2 (ix)
   38DC 36 00         [10] 1749 	ld	(hl),#0x00
                           1750 ;src/game.c:564: matched = 1;
   38DE 0E 01         [ 7] 1751 	ld	c,#0x01
   38E0 18 17         [12] 1752 	jr	00119$
   38E2                    1753 00107$:
                           1754 ;src/game.c:565: } else if ((cells[i + 1][j] == cells[i][j]) && (cells[i][j] > 2)) {
   38E2 78            [ 4] 1755 	ld	a,b
   38E3 92            [ 4] 1756 	sub	a, d
   38E4 20 13         [12] 1757 	jr	NZ,00119$
   38E6 3E 02         [ 7] 1758 	ld	a,#0x02
   38E8 92            [ 4] 1759 	sub	a, d
   38E9 30 0E         [12] 1760 	jr	NC,00119$
                           1761 ;src/game.c:566: cells[i + 1][j]++;
   38EB 04            [ 4] 1762 	inc	b
   38EC FD 70 00      [19] 1763 	ld	0 (iy), b
                           1764 ;src/game.c:567: cells[i][j] = 0;
   38EF DD 6E FD      [19] 1765 	ld	l,-3 (ix)
   38F2 DD 66 FE      [19] 1766 	ld	h,-2 (ix)
   38F5 36 00         [10] 1767 	ld	(hl),#0x00
                           1768 ;src/game.c:568: matched = 1;
   38F7 0E 01         [ 7] 1769 	ld	c,#0x01
   38F9                    1770 00119$:
                           1771 ;src/game.c:553: for (j = 0; j < 4; j++) {
   38F9 1C            [ 4] 1772 	inc	e
   38FA 7B            [ 4] 1773 	ld	a,e
   38FB D6 04         [ 7] 1774 	sub	a, #0x04
   38FD DA 67 38      [10] 1775 	jp	C,00118$
                           1776 ;src/game.c:573: } while (i > 0);
   3900 DD 7E FC      [19] 1777 	ld	a,-4 (ix)
   3903 B7            [ 4] 1778 	or	a, a
   3904 C2 5B 38      [10] 1779 	jp	NZ,00115$
                           1780 ;src/game.c:575: return matched;
   3907 69            [ 4] 1781 	ld	l,c
   3908 DD F9         [10] 1782 	ld	sp, ix
   390A DD E1         [14] 1783 	pop	ix
   390C C9            [10] 1784 	ret
                           1785 ;src/game.c:586: void printCells() {
                           1786 ;	---------------------------------
                           1787 ; Function printCells
                           1788 ; ---------------------------------
   390D                    1789 _printCells::
   390D DD E5         [15] 1790 	push	ix
   390F DD 21 00 00   [14] 1791 	ld	ix,#0
   3913 DD 39         [15] 1792 	add	ix,sp
   3915 F5            [11] 1793 	push	af
   3916 F5            [11] 1794 	push	af
   3917 3B            [ 6] 1795 	dec	sp
                           1796 ;src/game.c:593: for (i = 0; i < 4; i++) {
   3918 0E 00         [ 7] 1797 	ld	c,#0x00
   391A DD 36 FD 00   [19] 1798 	ld	-3 (ix),#0x00
   391E                    1799 00105$:
                           1800 ;src/game.c:595: y = 6 + (i * 44);
   391E DD 7E FD      [19] 1801 	ld	a,-3 (ix)
   3921 C6 06         [ 7] 1802 	add	a, #0x06
   3923 DD 77 FC      [19] 1803 	ld	-4 (ix),a
                           1804 ;src/game.c:596: for (j = 0; j < 4; j++) {
   3926 DD 36 FB 00   [19] 1805 	ld	-5 (ix),#0x00
   392A 06 00         [ 7] 1806 	ld	b,#0x00
   392C                    1807 00103$:
                           1808 ;src/game.c:598: x = 4 + (j * 11);
   392C 50            [ 4] 1809 	ld	d,b
   392D 14            [ 4] 1810 	inc	d
   392E 14            [ 4] 1811 	inc	d
   392F 14            [ 4] 1812 	inc	d
   3930 14            [ 4] 1813 	inc	d
                           1814 ;src/game.c:599: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, x, y);
   3931 C5            [11] 1815 	push	bc
   3932 DD 7E FC      [19] 1816 	ld	a,-4 (ix)
   3935 F5            [11] 1817 	push	af
   3936 33            [ 6] 1818 	inc	sp
   3937 D5            [11] 1819 	push	de
   3938 33            [ 6] 1820 	inc	sp
   3939 21 00 C0      [10] 1821 	ld	hl,#0xC000
   393C E5            [11] 1822 	push	hl
   393D CD 62 7E      [17] 1823 	call	_cpct_getScreenPtr
   3940 C1            [10] 1824 	pop	bc
                           1825 ;src/game.c:600: cpct_drawSprite(tiles[cells[i][j]], pvmem, 10, 40);
   3941 DD 75 FE      [19] 1826 	ld	-2 (ix),l
   3944 DD 74 FF      [19] 1827 	ld	-1 (ix),h
   3947 69            [ 4] 1828 	ld	l,c
   3948 26 00         [ 7] 1829 	ld	h,#0x00
   394A 29            [11] 1830 	add	hl, hl
   394B 29            [11] 1831 	add	hl, hl
   394C 11 37 8A      [10] 1832 	ld	de,#_cells
   394F 19            [11] 1833 	add	hl,de
   3950 DD 5E FB      [19] 1834 	ld	e,-5 (ix)
   3953 16 00         [ 7] 1835 	ld	d,#0x00
   3955 19            [11] 1836 	add	hl,de
   3956 6E            [ 7] 1837 	ld	l,(hl)
   3957 26 00         [ 7] 1838 	ld	h,#0x00
   3959 29            [11] 1839 	add	hl, hl
   395A 11 62 30      [10] 1840 	ld	de,#_tiles
   395D 19            [11] 1841 	add	hl,de
   395E 5E            [ 7] 1842 	ld	e,(hl)
   395F 23            [ 6] 1843 	inc	hl
   3960 56            [ 7] 1844 	ld	d,(hl)
   3961 C5            [11] 1845 	push	bc
   3962 21 0A 28      [10] 1846 	ld	hl,#0x280A
   3965 E5            [11] 1847 	push	hl
   3966 DD 6E FE      [19] 1848 	ld	l,-2 (ix)
   3969 DD 66 FF      [19] 1849 	ld	h,-1 (ix)
   396C E5            [11] 1850 	push	hl
   396D D5            [11] 1851 	push	de
   396E CD DC 7A      [17] 1852 	call	_cpct_drawSprite
   3971 C1            [10] 1853 	pop	bc
                           1854 ;src/game.c:596: for (j = 0; j < 4; j++) {
   3972 78            [ 4] 1855 	ld	a,b
   3973 C6 0B         [ 7] 1856 	add	a, #0x0B
   3975 47            [ 4] 1857 	ld	b,a
   3976 DD 34 FB      [23] 1858 	inc	-5 (ix)
   3979 DD 7E FB      [19] 1859 	ld	a,-5 (ix)
   397C D6 04         [ 7] 1860 	sub	a, #0x04
   397E 38 AC         [12] 1861 	jr	C,00103$
                           1862 ;src/game.c:593: for (i = 0; i < 4; i++) {
   3980 DD 7E FD      [19] 1863 	ld	a,-3 (ix)
   3983 C6 2C         [ 7] 1864 	add	a, #0x2C
   3985 DD 77 FD      [19] 1865 	ld	-3 (ix),a
   3988 0C            [ 4] 1866 	inc	c
   3989 79            [ 4] 1867 	ld	a,c
   398A D6 04         [ 7] 1868 	sub	a, #0x04
   398C 38 90         [12] 1869 	jr	C,00105$
                           1870 ;src/game.c:603: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 62, 20);
   398E 21 3E 14      [10] 1871 	ld	hl,#0x143E
   3991 E5            [11] 1872 	push	hl
   3992 21 00 C0      [10] 1873 	ld	hl,#0xC000
   3995 E5            [11] 1874 	push	hl
   3996 CD 62 7E      [17] 1875 	call	_cpct_getScreenPtr
   3999 4D            [ 4] 1876 	ld	c,l
   399A 44            [ 4] 1877 	ld	b,h
                           1878 ;src/game.c:604: cpct_drawSprite(tiles[tileBag[currentTile]], pvmem, 10, 40);
   399B FD 21 EC 8A   [14] 1879 	ld	iy,#_tileBag
   399F ED 5B F8 8A   [20] 1880 	ld	de,(_currentTile)
   39A3 16 00         [ 7] 1881 	ld	d,#0x00
   39A5 FD 19         [15] 1882 	add	iy, de
   39A7 FD 6E 00      [19] 1883 	ld	l, 0 (iy)
   39AA 26 00         [ 7] 1884 	ld	h,#0x00
   39AC 29            [11] 1885 	add	hl, hl
   39AD 11 62 30      [10] 1886 	ld	de,#_tiles
   39B0 19            [11] 1887 	add	hl,de
   39B1 5E            [ 7] 1888 	ld	e,(hl)
   39B2 23            [ 6] 1889 	inc	hl
   39B3 56            [ 7] 1890 	ld	d,(hl)
   39B4 21 0A 28      [10] 1891 	ld	hl,#0x280A
   39B7 E5            [11] 1892 	push	hl
   39B8 C5            [11] 1893 	push	bc
   39B9 D5            [11] 1894 	push	de
   39BA CD DC 7A      [17] 1895 	call	_cpct_drawSprite
   39BD DD F9         [10] 1896 	ld	sp, ix
   39BF DD E1         [14] 1897 	pop	ix
   39C1 C9            [10] 1898 	ret
                           1899 ;src/game.c:615: void drawScore() {
                           1900 ;	---------------------------------
                           1901 ; Function drawScore
                           1902 ; ---------------------------------
   39C2                    1903 _drawScore::
   39C2 DD E5         [15] 1904 	push	ix
   39C4 DD 21 00 00   [14] 1905 	ld	ix,#0
   39C8 DD 39         [15] 1906 	add	ix,sp
   39CA 21 F9 FF      [10] 1907 	ld	hl,#-7
   39CD 39            [11] 1908 	add	hl,sp
   39CE F9            [ 6] 1909 	ld	sp,hl
                           1910 ;src/game.c:619: for (i = 0; i < 4; i++) {
   39CF 0E 00         [ 7] 1911 	ld	c,#0x00
   39D1 DD 36 FF 00   [19] 1912 	ld	-1 (ix),#0x00
                           1913 ;src/game.c:620: for (j = 0; j < 4; j++) {
   39D5                    1914 00116$:
   39D5 DD 7E FF      [19] 1915 	ld	a,-1 (ix)
   39D8 C6 06         [ 7] 1916 	add	a, #0x06
   39DA DD 77 FE      [19] 1917 	ld	-2 (ix),a
   39DD DD 36 F9 00   [19] 1918 	ld	-7 (ix),#0x00
   39E1 06 00         [ 7] 1919 	ld	b,#0x00
   39E3                    1920 00108$:
                           1921 ;src/game.c:622: z = cells[i][j];
   39E3 69            [ 4] 1922 	ld	l,c
   39E4 26 00         [ 7] 1923 	ld	h,#0x00
   39E6 29            [11] 1924 	add	hl, hl
   39E7 29            [11] 1925 	add	hl, hl
   39E8 11 37 8A      [10] 1926 	ld	de,#_cells
   39EB 19            [11] 1927 	add	hl,de
   39EC DD 5E F9      [19] 1928 	ld	e,-7 (ix)
   39EF 16 00         [ 7] 1929 	ld	d,#0x00
   39F1 19            [11] 1930 	add	hl,de
   39F2 5E            [ 7] 1931 	ld	e,(hl)
                           1932 ;src/game.c:623: if (z >= 3) {
                           1933 ;src/game.c:624: if (z == 3) {
   39F3 7B            [ 4] 1934 	ld	a,e
   39F4 FE 03         [ 7] 1935 	cp	a,#0x03
   39F6 38 65         [12] 1936 	jr	C,00109$
   39F8 D6 03         [ 7] 1937 	sub	a, #0x03
   39FA 20 10         [12] 1938 	jr	NZ,00102$
                           1939 ;src/game.c:625: partialScore = 1;
   39FC DD 36 FA 01   [19] 1940 	ld	-6 (ix),#0x01
   3A00 AF            [ 4] 1941 	xor	a, a
   3A01 DD 77 FB      [19] 1942 	ld	-5 (ix),a
   3A04 DD 77 FC      [19] 1943 	ld	-4 (ix),a
   3A07 DD 77 FD      [19] 1944 	ld	-3 (ix),a
   3A0A 18 16         [12] 1945 	jr	00103$
   3A0C                    1946 00102$:
                           1947 ;src/game.c:627: partialScore = scores[z];
   3A0C 26 00         [ 7] 1948 	ld	h,#0x00
   3A0E 6B            [ 4] 1949 	ld	l, e
   3A0F 29            [11] 1950 	add	hl, hl
   3A10 29            [11] 1951 	add	hl, hl
   3A11 11 26 30      [10] 1952 	ld	de,#_scores
   3A14 19            [11] 1953 	add	hl,de
   3A15 C5            [11] 1954 	push	bc
   3A16 EB            [ 4] 1955 	ex	de,hl
   3A17 21 03 00      [10] 1956 	ld	hl, #0x0003
   3A1A 39            [11] 1957 	add	hl, sp
   3A1B EB            [ 4] 1958 	ex	de, hl
   3A1C 01 04 00      [10] 1959 	ld	bc, #0x0004
   3A1F ED B0         [21] 1960 	ldir
   3A21 C1            [10] 1961 	pop	bc
   3A22                    1962 00103$:
                           1963 ;src/game.c:629: score += partialScore;
   3A22 21 4C 8A      [10] 1964 	ld	hl,#_score
   3A25 7E            [ 7] 1965 	ld	a,(hl)
   3A26 DD 86 FA      [19] 1966 	add	a, -6 (ix)
   3A29 77            [ 7] 1967 	ld	(hl),a
   3A2A 23            [ 6] 1968 	inc	hl
   3A2B 7E            [ 7] 1969 	ld	a,(hl)
   3A2C DD 8E FB      [19] 1970 	adc	a, -5 (ix)
   3A2F 77            [ 7] 1971 	ld	(hl),a
   3A30 23            [ 6] 1972 	inc	hl
   3A31 7E            [ 7] 1973 	ld	a,(hl)
   3A32 DD 8E FC      [19] 1974 	adc	a, -4 (ix)
   3A35 77            [ 7] 1975 	ld	(hl),a
   3A36 23            [ 6] 1976 	inc	hl
   3A37 7E            [ 7] 1977 	ld	a,(hl)
   3A38 DD 8E FD      [19] 1978 	adc	a, -3 (ix)
   3A3B 77            [ 7] 1979 	ld	(hl),a
                           1980 ;src/game.c:630: drawNumber(partialScore, 4, 3 + (11 * j), 6 + (44 * i));
   3A3C 50            [ 4] 1981 	ld	d,b
   3A3D 14            [ 4] 1982 	inc	d
   3A3E 14            [ 4] 1983 	inc	d
   3A3F 14            [ 4] 1984 	inc	d
   3A40 E5            [11] 1985 	push	hl
   3A41 DD 6E FA      [19] 1986 	ld	l,-6 (ix)
   3A44 DD 66 FB      [19] 1987 	ld	h,-5 (ix)
   3A47 E5            [11] 1988 	push	hl
   3A48 FD E1         [14] 1989 	pop	iy
   3A4A E1            [10] 1990 	pop	hl
   3A4B C5            [11] 1991 	push	bc
   3A4C DD 7E FE      [19] 1992 	ld	a,-2 (ix)
   3A4F F5            [11] 1993 	push	af
   3A50 33            [ 6] 1994 	inc	sp
   3A51 1E 04         [ 7] 1995 	ld	e, #0x04
   3A53 D5            [11] 1996 	push	de
   3A54 FD E5         [15] 1997 	push	iy
   3A56 CD 02 68      [17] 1998 	call	_drawNumber
   3A59 F1            [10] 1999 	pop	af
   3A5A F1            [10] 2000 	pop	af
   3A5B 33            [ 6] 2001 	inc	sp
   3A5C C1            [10] 2002 	pop	bc
   3A5D                    2003 00109$:
                           2004 ;src/game.c:620: for (j = 0; j < 4; j++) {
   3A5D 78            [ 4] 2005 	ld	a,b
   3A5E C6 0B         [ 7] 2006 	add	a, #0x0B
   3A60 47            [ 4] 2007 	ld	b,a
   3A61 DD 34 F9      [23] 2008 	inc	-7 (ix)
   3A64 DD 7E F9      [19] 2009 	ld	a,-7 (ix)
   3A67 D6 04         [ 7] 2010 	sub	a, #0x04
   3A69 DA E3 39      [10] 2011 	jp	C,00108$
                           2012 ;src/game.c:619: for (i = 0; i < 4; i++) {
   3A6C DD 7E FF      [19] 2013 	ld	a,-1 (ix)
   3A6F C6 2C         [ 7] 2014 	add	a, #0x2C
   3A71 DD 77 FF      [19] 2015 	ld	-1 (ix),a
   3A74 0C            [ 4] 2016 	inc	c
   3A75 79            [ 4] 2017 	ld	a,c
   3A76 D6 04         [ 7] 2018 	sub	a, #0x04
   3A78 DA D5 39      [10] 2019 	jp	C,00116$
   3A7B DD F9         [10] 2020 	ld	sp, ix
   3A7D DD E1         [14] 2021 	pop	ix
   3A7F C9            [10] 2022 	ret
                           2023 ;src/game.c:644: void getName() {
                           2024 ;	---------------------------------
                           2025 ; Function getName
                           2026 ; ---------------------------------
   3A80                    2027 _getName::
   3A80 DD E5         [15] 2028 	push	ix
   3A82 DD 21 00 00   [14] 2029 	ld	ix,#0
   3A86 DD 39         [15] 2030 	add	ix,sp
   3A88 21 FA FF      [10] 2031 	ld	hl,#-6
   3A8B 39            [11] 2032 	add	hl,sp
   3A8C F9            [ 6] 2033 	ld	sp,hl
                           2034 ;src/game.c:648: drawFrame(9, 60, 73, 150);
   3A8D 21 49 96      [10] 2035 	ld	hl,#0x9649
   3A90 E5            [11] 2036 	push	hl
   3A91 21 09 3C      [10] 2037 	ld	hl,#0x3C09
   3A94 E5            [11] 2038 	push	hl
   3A95 CD C0 6E      [17] 2039 	call	_drawFrame
   3A98 F1            [10] 2040 	pop	af
                           2041 ;src/game.c:650: drawText("NEW HIGH SCORE", 20, 70, 1);
   3A99 21 46 01      [10] 2042 	ld	hl, #0x0146
   3A9C E3            [19] 2043 	ex	(sp),hl
   3A9D 3E 14         [ 7] 2044 	ld	a,#0x14
   3A9F F5            [11] 2045 	push	af
   3AA0 33            [ 6] 2046 	inc	sp
   3AA1 21 AB 3C      [10] 2047 	ld	hl,#___str_10
   3AA4 E5            [11] 2048 	push	hl
   3AA5 CD A1 68      [17] 2049 	call	_drawText
   3AA8 F1            [10] 2050 	pop	af
                           2051 ;src/game.c:651: drawText("ENTER YOUR NAME", 18, 85, 1);
   3AA9 33            [ 6] 2052 	inc	sp
   3AAA 21 55 01      [10] 2053 	ld	hl,#0x0155
   3AAD E3            [19] 2054 	ex	(sp),hl
   3AAE 3E 12         [ 7] 2055 	ld	a,#0x12
   3AB0 F5            [11] 2056 	push	af
   3AB1 33            [ 6] 2057 	inc	sp
   3AB2 21 BA 3C      [10] 2058 	ld	hl,#___str_11
   3AB5 E5            [11] 2059 	push	hl
   3AB6 CD A1 68      [17] 2060 	call	_drawText
   3AB9 F1            [10] 2061 	pop	af
                           2062 ;src/game.c:652: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 11, 100);
   3ABA 33            [ 6] 2063 	inc	sp
   3ABB 21 0B 64      [10] 2064 	ld	hl,#0x640B
   3ABE E3            [19] 2065 	ex	(sp),hl
   3ABF 21 00 C0      [10] 2066 	ld	hl,#0xC000
   3AC2 E5            [11] 2067 	push	hl
   3AC3 CD 62 7E      [17] 2068 	call	_cpct_getScreenPtr
   3AC6 4D            [ 4] 2069 	ld	c,l
   3AC7 44            [ 4] 2070 	ld	b,h
                           2071 ;src/game.c:653: cpct_drawSprite(g_tile_symbols_1, pvmem, 3, 11);
   3AC8 21 03 0B      [10] 2072 	ld	hl,#0x0B03
   3ACB E5            [11] 2073 	push	hl
   3ACC C5            [11] 2074 	push	bc
   3ACD 21 04 4E      [10] 2075 	ld	hl,#_g_tile_symbols_1
   3AD0 E5            [11] 2076 	push	hl
   3AD1 CD DC 7A      [17] 2077 	call	_cpct_drawSprite
                           2078 ;src/game.c:654: drawText(" TO CHANGE LETTER", 19, 100, 0);
   3AD4 21 64 00      [10] 2079 	ld	hl,#0x0064
   3AD7 E5            [11] 2080 	push	hl
   3AD8 3E 13         [ 7] 2081 	ld	a,#0x13
   3ADA F5            [11] 2082 	push	af
   3ADB 33            [ 6] 2083 	inc	sp
   3ADC 21 CA 3C      [10] 2084 	ld	hl,#___str_12
   3ADF E5            [11] 2085 	push	hl
   3AE0 CD A1 68      [17] 2086 	call	_drawText
   3AE3 F1            [10] 2087 	pop	af
                           2088 ;src/game.c:655: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 16, 100);
   3AE4 33            [ 6] 2089 	inc	sp
   3AE5 21 10 64      [10] 2090 	ld	hl,#0x6410
   3AE8 E3            [19] 2091 	ex	(sp),hl
   3AE9 21 00 C0      [10] 2092 	ld	hl,#0xC000
   3AEC E5            [11] 2093 	push	hl
   3AED CD 62 7E      [17] 2094 	call	_cpct_getScreenPtr
   3AF0 4D            [ 4] 2095 	ld	c,l
   3AF1 44            [ 4] 2096 	ld	b,h
                           2097 ;src/game.c:656: cpct_drawSprite(g_tile_symbols_2, pvmem, 3, 11);
   3AF2 21 03 0B      [10] 2098 	ld	hl,#0x0B03
   3AF5 E5            [11] 2099 	push	hl
   3AF6 C5            [11] 2100 	push	bc
   3AF7 21 25 4E      [10] 2101 	ld	hl,#_g_tile_symbols_2
   3AFA E5            [11] 2102 	push	hl
   3AFB CD DC 7A      [17] 2103 	call	_cpct_drawSprite
                           2104 ;src/game.c:657: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 16, 100);
   3AFE 21 10 64      [10] 2105 	ld	hl,#0x6410
   3B01 E5            [11] 2106 	push	hl
   3B02 21 00 C0      [10] 2107 	ld	hl,#0xC000
   3B05 E5            [11] 2108 	push	hl
   3B06 CD 62 7E      [17] 2109 	call	_cpct_getScreenPtr
   3B09 4D            [ 4] 2110 	ld	c,l
   3B0A 44            [ 4] 2111 	ld	b,h
                           2112 ;src/game.c:658: cpct_drawSprite(g_font_big[38], pvmem, 3, 11);
   3B0B 21 03 0B      [10] 2113 	ld	hl,#0x0B03
   3B0E E5            [11] 2114 	push	hl
   3B0F C5            [11] 2115 	push	bc
   3B10 21 5F 4B      [10] 2116 	ld	hl,#(_g_font_big + 0x04e6)
   3B13 E5            [11] 2117 	push	hl
   3B14 CD DC 7A      [17] 2118 	call	_cpct_drawSprite
                           2119 ;src/game.c:659: drawText(" [ TO END", 20, 115, 1);
   3B17 21 73 01      [10] 2120 	ld	hl,#0x0173
   3B1A E5            [11] 2121 	push	hl
   3B1B 3E 14         [ 7] 2122 	ld	a,#0x14
   3B1D F5            [11] 2123 	push	af
   3B1E 33            [ 6] 2124 	inc	sp
   3B1F 21 DC 3C      [10] 2125 	ld	hl,#___str_13
   3B22 E5            [11] 2126 	push	hl
   3B23 CD A1 68      [17] 2127 	call	_drawText
   3B26 F1            [10] 2128 	pop	af
                           2129 ;src/game.c:660: drawFrame(12, 130, 70, 160);
   3B27 33            [ 6] 2130 	inc	sp
   3B28 21 46 A0      [10] 2131 	ld	hl,#0xA046
   3B2B E3            [19] 2132 	ex	(sp),hl
   3B2C 21 0C 82      [10] 2133 	ld	hl,#0x820C
   3B2F E5            [11] 2134 	push	hl
   3B30 CD C0 6E      [17] 2135 	call	_drawFrame
   3B33 F1            [10] 2136 	pop	af
   3B34 F1            [10] 2137 	pop	af
                           2138 ;src/game.c:661: strcpy(newNameHighScore, "A");
   3B35 11 FB 8A      [10] 2139 	ld	de,#_newNameHighScore
   3B38 21 E6 3C      [10] 2140 	ld	hl,#___str_14
   3B3B AF            [ 4] 2141 	xor	a, a
   3B3C                    2142 00166$:
   3B3C BE            [ 7] 2143 	cp	a, (hl)
   3B3D ED A0         [16] 2144 	ldi
   3B3F 20 FB         [12] 2145 	jr	NZ, 00166$
                           2146 ;src/game.c:662: drawText(newNameHighScore, 0, 140, 1);
   3B41 21 8C 01      [10] 2147 	ld	hl,#0x018C
   3B44 E5            [11] 2148 	push	hl
   3B45 AF            [ 4] 2149 	xor	a, a
   3B46 F5            [11] 2150 	push	af
   3B47 33            [ 6] 2151 	inc	sp
   3B48 21 FB 8A      [10] 2152 	ld	hl,#_newNameHighScore
   3B4B E5            [11] 2153 	push	hl
   3B4C CD A1 68      [17] 2154 	call	_drawText
   3B4F F1            [10] 2155 	pop	af
   3B50 F1            [10] 2156 	pop	af
   3B51 33            [ 6] 2157 	inc	sp
                           2158 ;src/game.c:663: pos = 0;
   3B52 DD 36 FB 00   [19] 2159 	ld	-5 (ix),#0x00
                           2160 ;src/game.c:664: chr = 65;
   3B56 DD 36 FA 41   [19] 2161 	ld	-6 (ix),#0x41
                           2162 ;src/game.c:665: moved = 0;
   3B5A DD 36 FC 00   [19] 2163 	ld	-4 (ix),#0x00
                           2164 ;src/game.c:666: while (1) {
   3B5E                    2165 00126$:
                           2166 ;src/game.c:667: delay(24);
   3B5E 21 00 00      [10] 2167 	ld	hl,#0x0000
   3B61 E5            [11] 2168 	push	hl
   3B62 21 18 00      [10] 2169 	ld	hl,#0x0018
   3B65 E5            [11] 2170 	push	hl
   3B66 CD E1 30      [17] 2171 	call	_delay
   3B69 F1            [10] 2172 	pop	af
   3B6A F1            [10] 2173 	pop	af
                           2174 ;src/game.c:668: cpct_scanKeyboard_f();
   3B6B CD 3D 72      [17] 2175 	call	_cpct_scanKeyboard_f
                           2176 ;src/game.c:670: if (cpct_isKeyPressed(keys.right)) {
   3B6E 2A 2F 8A      [16] 2177 	ld	hl, (#_keys + 6)
   3B71 CD 31 72      [17] 2178 	call	_cpct_isKeyPressed
   3B74 DD 75 FF      [19] 2179 	ld	-1 (ix),l
                           2180 ;src/game.c:678: newNameHighScore[pos] = '\0';
   3B77 3E FB         [ 7] 2181 	ld	a,#<(_newNameHighScore)
   3B79 DD 86 FB      [19] 2182 	add	a, -5 (ix)
   3B7C DD 77 FD      [19] 2183 	ld	-3 (ix),a
   3B7F 3E 8A         [ 7] 2184 	ld	a,#>(_newNameHighScore)
   3B81 CE 00         [ 7] 2185 	adc	a, #0x00
   3B83 DD 77 FE      [19] 2186 	ld	-2 (ix),a
                           2187 ;src/game.c:670: if (cpct_isKeyPressed(keys.right)) {
   3B86 DD 7E FF      [19] 2188 	ld	a,-1 (ix)
   3B89 B7            [ 4] 2189 	or	a, a
   3B8A 28 0A         [12] 2190 	jr	Z,00116$
                           2191 ;src/game.c:671: chr++;
   3B8C DD 34 FA      [23] 2192 	inc	-6 (ix)
                           2193 ;src/game.c:672: moved = 1;
   3B8F DD 36 FC 01   [19] 2194 	ld	-4 (ix),#0x01
   3B93 C3 34 3C      [10] 2195 	jp	00117$
   3B96                    2196 00116$:
                           2197 ;src/game.c:673: } else if (cpct_isKeyPressed(keys.left)) {
   3B96 2A 2D 8A      [16] 2198 	ld	hl, (#_keys + 4)
   3B99 CD 31 72      [17] 2199 	call	_cpct_isKeyPressed
   3B9C 7D            [ 4] 2200 	ld	a,l
   3B9D B7            [ 4] 2201 	or	a, a
   3B9E 28 0A         [12] 2202 	jr	Z,00113$
                           2203 ;src/game.c:674: chr--;
   3BA0 DD 35 FA      [23] 2204 	dec	-6 (ix)
                           2205 ;src/game.c:675: moved = 1;
   3BA3 DD 36 FC 01   [19] 2206 	ld	-4 (ix),#0x01
   3BA7 C3 34 3C      [10] 2207 	jp	00117$
   3BAA                    2208 00113$:
                           2209 ;src/game.c:676: } else if (cpct_isKeyPressed(keys.down)) {
   3BAA 2A 2B 8A      [16] 2210 	ld	hl, (#_keys + 2)
   3BAD CD 31 72      [17] 2211 	call	_cpct_isKeyPressed
   3BB0 7D            [ 4] 2212 	ld	a,l
   3BB1 B7            [ 4] 2213 	or	a, a
   3BB2 28 42         [12] 2214 	jr	Z,00110$
                           2215 ;src/game.c:677: if (chr == 91) {
   3BB4 DD 7E FA      [19] 2216 	ld	a,-6 (ix)
   3BB7 D6 5B         [ 7] 2217 	sub	a, #0x5B
   3BB9 20 0B         [12] 2218 	jr	NZ,00102$
                           2219 ;src/game.c:678: newNameHighScore[pos] = '\0';
   3BBB DD 6E FD      [19] 2220 	ld	l,-3 (ix)
   3BBE DD 66 FE      [19] 2221 	ld	h,-2 (ix)
   3BC1 36 00         [10] 2222 	ld	(hl),#0x00
                           2223 ;src/game.c:679: break;
   3BC3 C3 A6 3C      [10] 2224 	jp	00128$
   3BC6                    2225 00102$:
                           2226 ;src/game.c:682: pos++;
   3BC6 DD 34 FB      [23] 2227 	inc	-5 (ix)
                           2228 ;src/game.c:678: newNameHighScore[pos] = '\0';
   3BC9 3E FB         [ 7] 2229 	ld	a,#<(_newNameHighScore)
   3BCB DD 86 FB      [19] 2230 	add	a, -5 (ix)
   3BCE DD 77 FD      [19] 2231 	ld	-3 (ix),a
   3BD1 3E 8A         [ 7] 2232 	ld	a,#>(_newNameHighScore)
   3BD3 CE 00         [ 7] 2233 	adc	a, #0x00
   3BD5 DD 77 FE      [19] 2234 	ld	-2 (ix),a
                           2235 ;src/game.c:683: newNameHighScore[pos] = 65;
   3BD8 DD 6E FD      [19] 2236 	ld	l,-3 (ix)
   3BDB DD 66 FE      [19] 2237 	ld	h,-2 (ix)
   3BDE 36 41         [10] 2238 	ld	(hl),#0x41
                           2239 ;src/game.c:684: newNameHighScore[pos + 1] = '\0';
   3BE0 DD 4E FB      [19] 2240 	ld	c,-5 (ix)
   3BE3 0C            [ 4] 2241 	inc	c
   3BE4 21 FB 8A      [10] 2242 	ld	hl,#_newNameHighScore
   3BE7 06 00         [ 7] 2243 	ld	b,#0x00
   3BE9 09            [11] 2244 	add	hl, bc
   3BEA 36 00         [10] 2245 	ld	(hl),#0x00
                           2246 ;src/game.c:685: chr = 65;
   3BEC DD 36 FA 41   [19] 2247 	ld	-6 (ix),#0x41
                           2248 ;src/game.c:686: moved = 1;
   3BF0 DD 36 FC 01   [19] 2249 	ld	-4 (ix),#0x01
   3BF4 18 3E         [12] 2250 	jr	00117$
   3BF6                    2251 00110$:
                           2252 ;src/game.c:689: } else if (cpct_isKeyPressed(keys.up)) {
   3BF6 2A 29 8A      [16] 2253 	ld	hl, (#_keys + 0)
   3BF9 CD 31 72      [17] 2254 	call	_cpct_isKeyPressed
   3BFC 7D            [ 4] 2255 	ld	a,l
   3BFD B7            [ 4] 2256 	or	a, a
   3BFE 28 2A         [12] 2257 	jr	Z,00107$
                           2258 ;src/game.c:690: newNameHighScore[pos] = '\0';
   3C00 DD 6E FD      [19] 2259 	ld	l,-3 (ix)
   3C03 DD 66 FE      [19] 2260 	ld	h,-2 (ix)
   3C06 36 00         [10] 2261 	ld	(hl),#0x00
                           2262 ;src/game.c:691: pos--;
   3C08 DD 35 FB      [23] 2263 	dec	-5 (ix)
                           2264 ;src/game.c:678: newNameHighScore[pos] = '\0';
   3C0B 3E FB         [ 7] 2265 	ld	a,#<(_newNameHighScore)
   3C0D DD 86 FB      [19] 2266 	add	a, -5 (ix)
   3C10 DD 77 FD      [19] 2267 	ld	-3 (ix),a
   3C13 3E 8A         [ 7] 2268 	ld	a,#>(_newNameHighScore)
   3C15 CE 00         [ 7] 2269 	adc	a, #0x00
   3C17 DD 77 FE      [19] 2270 	ld	-2 (ix),a
                           2271 ;src/game.c:692: chr = newNameHighScore[pos];
   3C1A DD 6E FD      [19] 2272 	ld	l,-3 (ix)
   3C1D DD 66 FE      [19] 2273 	ld	h,-2 (ix)
   3C20 7E            [ 7] 2274 	ld	a,(hl)
   3C21 DD 77 FA      [19] 2275 	ld	-6 (ix),a
                           2276 ;src/game.c:693: moved = 1;
   3C24 DD 36 FC 01   [19] 2277 	ld	-4 (ix),#0x01
   3C28 18 0A         [12] 2278 	jr	00117$
   3C2A                    2279 00107$:
                           2280 ;src/game.c:694: } else if (cpct_isKeyPressed(keys.abort)) {
   3C2A 2A 35 8A      [16] 2281 	ld	hl, (#_keys + 12)
   3C2D CD 31 72      [17] 2282 	call	_cpct_isKeyPressed
   3C30 7D            [ 4] 2283 	ld	a,l
   3C31 B7            [ 4] 2284 	or	a, a
   3C32 20 72         [12] 2285 	jr	NZ,00128$
                           2286 ;src/game.c:695: break;
   3C34                    2287 00117$:
                           2288 ;src/game.c:697: if (moved) {
   3C34 DD 7E FC      [19] 2289 	ld	a,-4 (ix)
   3C37 B7            [ 4] 2290 	or	a, a
   3C38 CA 5E 3B      [10] 2291 	jp	Z,00126$
                           2292 ;src/game.c:698: moved = 0;
   3C3B DD 36 FC 00   [19] 2293 	ld	-4 (ix),#0x00
                           2294 ;src/game.c:699: if (chr > 91)
   3C3F 3E 5B         [ 7] 2295 	ld	a,#0x5B
   3C41 DD 96 FA      [19] 2296 	sub	a, -6 (ix)
   3C44 30 06         [12] 2297 	jr	NC,00121$
                           2298 ;src/game.c:700: chr = 65;
   3C46 DD 36 FA 41   [19] 2299 	ld	-6 (ix),#0x41
   3C4A 18 0B         [12] 2300 	jr	00122$
   3C4C                    2301 00121$:
                           2302 ;src/game.c:701: else if (chr < 65)
   3C4C DD 7E FA      [19] 2303 	ld	a,-6 (ix)
   3C4F D6 41         [ 7] 2304 	sub	a, #0x41
   3C51 30 04         [12] 2305 	jr	NC,00122$
                           2306 ;src/game.c:702: chr = 91;
   3C53 DD 36 FA 5B   [19] 2307 	ld	-6 (ix),#0x5B
   3C57                    2308 00122$:
                           2309 ;src/game.c:703: newNameHighScore[pos] = chr;
   3C57 DD 6E FD      [19] 2310 	ld	l,-3 (ix)
   3C5A DD 66 FE      [19] 2311 	ld	h,-2 (ix)
   3C5D DD 7E FA      [19] 2312 	ld	a,-6 (ix)
   3C60 77            [ 7] 2313 	ld	(hl),a
                           2314 ;src/game.c:704: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 13, 140);
   3C61 21 0D 8C      [10] 2315 	ld	hl,#0x8C0D
   3C64 E5            [11] 2316 	push	hl
   3C65 21 00 C0      [10] 2317 	ld	hl,#0xC000
   3C68 E5            [11] 2318 	push	hl
   3C69 CD 62 7E      [17] 2319 	call	_cpct_getScreenPtr
   3C6C DD 75 FD      [19] 2320 	ld	-3 (ix),l
   3C6F DD 74 FE      [19] 2321 	ld	-2 (ix),h
                           2322 ;src/game.c:705: cpct_drawSolidBox(pvmem, cpct_px2byteM0(5, 5), 60, 11);
   3C72 21 05 05      [10] 2323 	ld	hl,#0x0505
   3C75 E5            [11] 2324 	push	hl
   3C76 CD 2F 7D      [17] 2325 	call	_cpct_px2byteM0
   3C79 DD 75 FF      [19] 2326 	ld	-1 (ix),l
   3C7C 21 3C 0B      [10] 2327 	ld	hl,#0x0B3C
   3C7F E5            [11] 2328 	push	hl
   3C80 DD 7E FF      [19] 2329 	ld	a,-1 (ix)
   3C83 F5            [11] 2330 	push	af
   3C84 33            [ 6] 2331 	inc	sp
   3C85 DD 6E FD      [19] 2332 	ld	l,-3 (ix)
   3C88 DD 66 FE      [19] 2333 	ld	h,-2 (ix)
   3C8B E5            [11] 2334 	push	hl
   3C8C CD 78 7D      [17] 2335 	call	_cpct_drawSolidBox
   3C8F F1            [10] 2336 	pop	af
                           2337 ;src/game.c:706: drawText(newNameHighScore, 20, 140, 1);
   3C90 33            [ 6] 2338 	inc	sp
   3C91 21 8C 01      [10] 2339 	ld	hl,#0x018C
   3C94 E3            [19] 2340 	ex	(sp),hl
   3C95 3E 14         [ 7] 2341 	ld	a,#0x14
   3C97 F5            [11] 2342 	push	af
   3C98 33            [ 6] 2343 	inc	sp
   3C99 21 FB 8A      [10] 2344 	ld	hl,#_newNameHighScore
   3C9C E5            [11] 2345 	push	hl
   3C9D CD A1 68      [17] 2346 	call	_drawText
   3CA0 F1            [10] 2347 	pop	af
   3CA1 F1            [10] 2348 	pop	af
   3CA2 33            [ 6] 2349 	inc	sp
   3CA3 C3 5E 3B      [10] 2350 	jp	00126$
   3CA6                    2351 00128$:
   3CA6 DD F9         [10] 2352 	ld	sp, ix
   3CA8 DD E1         [14] 2353 	pop	ix
   3CAA C9            [10] 2354 	ret
   3CAB                    2355 ___str_10:
   3CAB 4E 45 57 20 48 49  2356 	.ascii "NEW HIGH SCORE"
        47 48 20 53 43 4F
        52 45
   3CB9 00                 2357 	.db 0x00
   3CBA                    2358 ___str_11:
   3CBA 45 4E 54 45 52 20  2359 	.ascii "ENTER YOUR NAME"
        59 4F 55 52 20 4E
        41 4D 45
   3CC9 00                 2360 	.db 0x00
   3CCA                    2361 ___str_12:
   3CCA 20 54 4F 20 43 48  2362 	.ascii " TO CHANGE LETTER"
        41 4E 47 45 20 4C
        45 54 54 45 52
   3CDB 00                 2363 	.db 0x00
   3CDC                    2364 ___str_13:
   3CDC 20 5B 20 54 4F 20  2365 	.ascii " [ TO END"
        45 4E 44
   3CE5 00                 2366 	.db 0x00
   3CE6                    2367 ___str_14:
   3CE6 41                 2368 	.ascii "A"
   3CE7 00                 2369 	.db 0x00
                           2370 ;src/game.c:721: void setHighScore(u32 score) {
                           2371 ;	---------------------------------
                           2372 ; Function setHighScore
                           2373 ; ---------------------------------
   3CE8                    2374 _setHighScore::
   3CE8 DD E5         [15] 2375 	push	ix
   3CEA DD 21 00 00   [14] 2376 	ld	ix,#0
   3CEE DD 39         [15] 2377 	add	ix,sp
   3CF0 21 F6 FF      [10] 2378 	ld	hl,#-10
   3CF3 39            [11] 2379 	add	hl,sp
   3CF4 F9            [ 6] 2380 	ld	sp,hl
                           2381 ;src/game.c:724: i = 8;
   3CF5 0E 08         [ 7] 2382 	ld	c,#0x08
                           2383 ;src/game.c:725: while ((score > scoreHallOfFame[i - 1]) && (i > 0)) {
   3CF7 11 50 8A      [10] 2384 	ld	de,#_scoreHallOfFame+0
   3CFA                    2385 00102$:
   3CFA 41            [ 4] 2386 	ld	b,c
   3CFB 05            [ 4] 2387 	dec	b
   3CFC 68            [ 4] 2388 	ld	l,b
   3CFD 26 00         [ 7] 2389 	ld	h,#0x00
   3CFF 29            [11] 2390 	add	hl, hl
   3D00 29            [11] 2391 	add	hl, hl
   3D01 19            [11] 2392 	add	hl,de
   3D02 D5            [11] 2393 	push	de
   3D03 C5            [11] 2394 	push	bc
   3D04 EB            [ 4] 2395 	ex	de,hl
   3D05 21 04 00      [10] 2396 	ld	hl, #0x0004
   3D08 39            [11] 2397 	add	hl, sp
   3D09 EB            [ 4] 2398 	ex	de, hl
   3D0A 01 04 00      [10] 2399 	ld	bc, #0x0004
   3D0D ED B0         [21] 2400 	ldir
   3D0F C1            [10] 2401 	pop	bc
   3D10 D1            [10] 2402 	pop	de
   3D11 DD 7E F6      [19] 2403 	ld	a,-10 (ix)
   3D14 DD 96 04      [19] 2404 	sub	a, 4 (ix)
   3D17 DD 7E F7      [19] 2405 	ld	a,-9 (ix)
   3D1A DD 9E 05      [19] 2406 	sbc	a, 5 (ix)
   3D1D DD 7E F8      [19] 2407 	ld	a,-8 (ix)
   3D20 DD 9E 06      [19] 2408 	sbc	a, 6 (ix)
   3D23 DD 7E F9      [19] 2409 	ld	a,-7 (ix)
   3D26 DD 9E 07      [19] 2410 	sbc	a, 7 (ix)
   3D29 30 07         [12] 2411 	jr	NC,00104$
   3D2B 79            [ 4] 2412 	ld	a,c
   3D2C B7            [ 4] 2413 	or	a, a
   3D2D 28 03         [12] 2414 	jr	Z,00104$
                           2415 ;src/game.c:726: i--;
   3D2F 48            [ 4] 2416 	ld	c,b
   3D30 18 C8         [12] 2417 	jr	00102$
   3D32                    2418 00104$:
                           2419 ;src/game.c:728: j = 7;
                           2420 ;src/game.c:729: if (i <= j) {
   3D32 3E 07         [ 7] 2421 	ld	a,#0x07
   3D34 47            [ 4] 2422 	ld	b,a
   3D35 91            [ 4] 2423 	sub	a, c
   3D36 DA DC 3D      [10] 2424 	jp	C,00111$
                           2425 ;src/game.c:730: while ((i < j) && (j > 0)) {
   3D39                    2426 00106$:
                           2427 ;src/game.c:731: scoreHallOfFame[j] = scoreHallOfFame[j - 1];
   3D39 DD 70 F6      [19] 2428 	ld	-10 (ix),b
   3D3C DD 36 F7 00   [19] 2429 	ld	-9 (ix),#0x00
                           2430 ;src/game.c:732: strcpy(nameHallOfFame[j], nameHallOfFame[j - 1]);
   3D40 D5            [11] 2431 	push	de
   3D41 58            [ 4] 2432 	ld	e,b
   3D42 16 00         [ 7] 2433 	ld	d,#0x00
   3D44 6B            [ 4] 2434 	ld	l, e
   3D45 62            [ 4] 2435 	ld	h, d
   3D46 29            [11] 2436 	add	hl, hl
   3D47 19            [11] 2437 	add	hl, de
   3D48 29            [11] 2438 	add	hl, hl
   3D49 19            [11] 2439 	add	hl, de
   3D4A 29            [11] 2440 	add	hl, hl
   3D4B 19            [11] 2441 	add	hl, de
   3D4C D1            [10] 2442 	pop	de
   3D4D DD 75 FA      [19] 2443 	ld	-6 (ix),l
   3D50 DD 74 FB      [19] 2444 	ld	-5 (ix),h
                           2445 ;src/game.c:731: scoreHallOfFame[j] = scoreHallOfFame[j - 1];
   3D53 E1            [10] 2446 	pop	hl
   3D54 E5            [11] 2447 	push	hl
   3D55 29            [11] 2448 	add	hl, hl
   3D56 29            [11] 2449 	add	hl, hl
                           2450 ;src/game.c:732: strcpy(nameHallOfFame[j], nameHallOfFame[j - 1]);
   3D57 3E 70         [ 7] 2451 	ld	a,#<(_nameHallOfFame)
   3D59 DD 86 FA      [19] 2452 	add	a, -6 (ix)
   3D5C DD 77 FA      [19] 2453 	ld	-6 (ix),a
   3D5F 3E 8A         [ 7] 2454 	ld	a,#>(_nameHallOfFame)
   3D61 DD 8E FB      [19] 2455 	adc	a, -5 (ix)
   3D64 DD 77 FB      [19] 2456 	ld	-5 (ix),a
                           2457 ;src/game.c:731: scoreHallOfFame[j] = scoreHallOfFame[j - 1];
   3D67 19            [11] 2458 	add	hl,de
   3D68 E3            [19] 2459 	ex	(sp), hl
                           2460 ;src/game.c:732: strcpy(nameHallOfFame[j], nameHallOfFame[j - 1]);
                           2461 ;src/game.c:730: while ((i < j) && (j > 0)) {
   3D69 79            [ 4] 2462 	ld	a,c
   3D6A 90            [ 4] 2463 	sub	a, b
   3D6B 30 4F         [12] 2464 	jr	NC,00108$
   3D6D 78            [ 4] 2465 	ld	a,b
   3D6E B7            [ 4] 2466 	or	a, a
   3D6F 28 4B         [12] 2467 	jr	Z,00108$
                           2468 ;src/game.c:731: scoreHallOfFame[j] = scoreHallOfFame[j - 1];
   3D71 05            [ 4] 2469 	dec	b
   3D72 68            [ 4] 2470 	ld	l,b
   3D73 26 00         [ 7] 2471 	ld	h,#0x00
   3D75 29            [11] 2472 	add	hl, hl
   3D76 29            [11] 2473 	add	hl, hl
   3D77 19            [11] 2474 	add	hl,de
   3D78 D5            [11] 2475 	push	de
   3D79 C5            [11] 2476 	push	bc
   3D7A EB            [ 4] 2477 	ex	de,hl
   3D7B 21 0A 00      [10] 2478 	ld	hl, #0x000A
   3D7E 39            [11] 2479 	add	hl, sp
   3D7F EB            [ 4] 2480 	ex	de, hl
   3D80 01 04 00      [10] 2481 	ld	bc, #0x0004
   3D83 ED B0         [21] 2482 	ldir
   3D85 DD 5E F6      [19] 2483 	ld	e,-10 (ix)
   3D88 DD 56 F7      [19] 2484 	ld	d,-9 (ix)
   3D8B 21 0A 00      [10] 2485 	ld	hl, #0x000A
   3D8E 39            [11] 2486 	add	hl, sp
   3D8F 01 04 00      [10] 2487 	ld	bc, #0x0004
   3D92 ED B0         [21] 2488 	ldir
   3D94 C1            [10] 2489 	pop	bc
   3D95 58            [ 4] 2490 	ld	e,b
   3D96 16 00         [ 7] 2491 	ld	d,#0x00
   3D98 6B            [ 4] 2492 	ld	l, e
   3D99 62            [ 4] 2493 	ld	h, d
   3D9A 29            [11] 2494 	add	hl, hl
   3D9B 19            [11] 2495 	add	hl, de
   3D9C 29            [11] 2496 	add	hl, hl
   3D9D 19            [11] 2497 	add	hl, de
   3D9E 29            [11] 2498 	add	hl, hl
   3D9F 19            [11] 2499 	add	hl, de
   3DA0 D1            [10] 2500 	pop	de
   3DA1 3E 70         [ 7] 2501 	ld	a,#<(_nameHallOfFame)
   3DA3 85            [ 4] 2502 	add	a, l
   3DA4 6F            [ 4] 2503 	ld	l,a
   3DA5 3E 8A         [ 7] 2504 	ld	a,#>(_nameHallOfFame)
   3DA7 8C            [ 4] 2505 	adc	a, h
   3DA8 67            [ 4] 2506 	ld	h,a
   3DA9 C5            [11] 2507 	push	bc
   3DAA D5            [11] 2508 	push	de
   3DAB DD 5E FA      [19] 2509 	ld	e,-6 (ix)
   3DAE DD 56 FB      [19] 2510 	ld	d,-5 (ix)
   3DB1 AF            [ 4] 2511 	xor	a, a
   3DB2                    2512 00140$:
   3DB2 BE            [ 7] 2513 	cp	a, (hl)
   3DB3 ED A0         [16] 2514 	ldi
   3DB5 20 FB         [12] 2515 	jr	NZ, 00140$
   3DB7 D1            [10] 2516 	pop	de
   3DB8 C1            [10] 2517 	pop	bc
                           2518 ;src/game.c:733: j--;
   3DB9 C3 39 3D      [10] 2519 	jp	00106$
   3DBC                    2520 00108$:
                           2521 ;src/game.c:735: getName();
   3DBC CD 80 3A      [17] 2522 	call	_getName
                           2523 ;src/game.c:736: wait4UserKeypress();
   3DBF CD BD 6D      [17] 2524 	call	_wait4UserKeypress
                           2525 ;src/game.c:737: scoreHallOfFame[j] = score;
   3DC2 D1            [10] 2526 	pop	de
   3DC3 D5            [11] 2527 	push	de
   3DC4 21 0E 00      [10] 2528 	ld	hl, #0x000E
   3DC7 39            [11] 2529 	add	hl, sp
   3DC8 01 04 00      [10] 2530 	ld	bc, #0x0004
   3DCB ED B0         [21] 2531 	ldir
                           2532 ;src/game.c:738: strcpy(nameHallOfFame[j], newNameHighScore);
   3DCD DD 5E FA      [19] 2533 	ld	e,-6 (ix)
   3DD0 DD 56 FB      [19] 2534 	ld	d,-5 (ix)
   3DD3 21 FB 8A      [10] 2535 	ld	hl,#_newNameHighScore
   3DD6 AF            [ 4] 2536 	xor	a, a
   3DD7                    2537 00141$:
   3DD7 BE            [ 7] 2538 	cp	a, (hl)
   3DD8 ED A0         [16] 2539 	ldi
   3DDA 20 FB         [12] 2540 	jr	NZ, 00141$
   3DDC                    2541 00111$:
   3DDC DD F9         [10] 2542 	ld	sp, ix
   3DDE DD E1         [14] 2543 	pop	ix
   3DE0 C9            [10] 2544 	ret
                           2545 ;src/game.c:742: void drawScoreBoard() {
                           2546 ;	---------------------------------
                           2547 ; Function drawScoreBoard
                           2548 ; ---------------------------------
   3DE1                    2549 _drawScoreBoard::
   3DE1 DD E5         [15] 2550 	push	ix
   3DE3 DD 21 00 00   [14] 2551 	ld	ix,#0
   3DE7 DD 39         [15] 2552 	add	ix,sp
   3DE9 F5            [11] 2553 	push	af
   3DEA F5            [11] 2554 	push	af
                           2555 ;src/game.c:746: cpct_waitVSYNC();
   3DEB CD 0C 7D      [17] 2556 	call	_cpct_waitVSYNC
                           2557 ;src/game.c:748: cpct_memset(CPCT_VMEM_START, cpct_px2byteM0(5, 5), 0x4000);
   3DEE 21 05 05      [10] 2558 	ld	hl,#0x0505
   3DF1 E5            [11] 2559 	push	hl
   3DF2 CD 2F 7D      [17] 2560 	call	_cpct_px2byteM0
   3DF5 45            [ 4] 2561 	ld	b,l
   3DF6 21 00 40      [10] 2562 	ld	hl,#0x4000
   3DF9 E5            [11] 2563 	push	hl
   3DFA C5            [11] 2564 	push	bc
   3DFB 33            [ 6] 2565 	inc	sp
   3DFC 26 C0         [ 7] 2566 	ld	h, #0xC0
   3DFE E5            [11] 2567 	push	hl
   3DFF CD 4B 7D      [17] 2568 	call	_cpct_memset
                           2569 ;src/game.c:750: drawText("AMSTHREES SCOREBOARD", 13, 2, 1);
   3E02 21 02 01      [10] 2570 	ld	hl,#0x0102
   3E05 E5            [11] 2571 	push	hl
   3E06 3E 0D         [ 7] 2572 	ld	a,#0x0D
   3E08 F5            [11] 2573 	push	af
   3E09 33            [ 6] 2574 	inc	sp
   3E0A 21 01 3F      [10] 2575 	ld	hl,#___str_15
   3E0D E5            [11] 2576 	push	hl
   3E0E CD A1 68      [17] 2577 	call	_drawText
   3E11 F1            [10] 2578 	pop	af
   3E12 F1            [10] 2579 	pop	af
   3E13 33            [ 6] 2580 	inc	sp
                           2581 ;src/game.c:752: for (i = 0; i < 8; i++) {
   3E14 DD 36 FC 00   [19] 2582 	ld	-4 (ix),#0x00
   3E18 DD 36 FF 00   [19] 2583 	ld	-1 (ix),#0x00
   3E1C 01 00 00      [10] 2584 	ld	bc,#0x0000
   3E1F DD 36 FE 00   [19] 2585 	ld	-2 (ix),#0x00
   3E23                    2586 00106$:
                           2587 ;src/game.c:753: drawNumber(i + 1, 2, 5, 30 + (i * 15));
   3E23 DD 7E FF      [19] 2588 	ld	a,-1 (ix)
   3E26 C6 1E         [ 7] 2589 	add	a, #0x1E
   3E28 DD 77 FD      [19] 2590 	ld	-3 (ix),a
   3E2B DD 5E FC      [19] 2591 	ld	e,-4 (ix)
   3E2E 16 00         [ 7] 2592 	ld	d,#0x00
   3E30 D5            [11] 2593 	push	de
   3E31 FD E1         [14] 2594 	pop	iy
   3E33 FD 23         [10] 2595 	inc	iy
   3E35 C5            [11] 2596 	push	bc
   3E36 D5            [11] 2597 	push	de
   3E37 DD 7E FD      [19] 2598 	ld	a,-3 (ix)
   3E3A F5            [11] 2599 	push	af
   3E3B 33            [ 6] 2600 	inc	sp
   3E3C 21 02 05      [10] 2601 	ld	hl,#0x0502
   3E3F E5            [11] 2602 	push	hl
   3E40 FD E5         [15] 2603 	push	iy
   3E42 CD 02 68      [17] 2604 	call	_drawNumber
   3E45 F1            [10] 2605 	pop	af
   3E46 F1            [10] 2606 	pop	af
   3E47 33            [ 6] 2607 	inc	sp
   3E48 D1            [10] 2608 	pop	de
   3E49 C1            [10] 2609 	pop	bc
                           2610 ;src/game.c:754: drawText(nameHallOfFame[i], 14, 30 + (i * 15), 0);
   3E4A FD 21 70 8A   [14] 2611 	ld	iy,#_nameHallOfFame
   3E4E FD 09         [15] 2612 	add	iy, bc
   3E50 C5            [11] 2613 	push	bc
   3E51 D5            [11] 2614 	push	de
   3E52 AF            [ 4] 2615 	xor	a, a
   3E53 F5            [11] 2616 	push	af
   3E54 33            [ 6] 2617 	inc	sp
   3E55 DD 56 FD      [19] 2618 	ld	d, -3 (ix)
   3E58 1E 0E         [ 7] 2619 	ld	e,#0x0E
   3E5A D5            [11] 2620 	push	de
   3E5B FD E5         [15] 2621 	push	iy
   3E5D CD A1 68      [17] 2622 	call	_drawText
   3E60 F1            [10] 2623 	pop	af
   3E61 F1            [10] 2624 	pop	af
   3E62 33            [ 6] 2625 	inc	sp
   3E63 D1            [10] 2626 	pop	de
   3E64 C1            [10] 2627 	pop	bc
                           2628 ;src/game.c:755: drawNumber(scoreHallOfFame[i], 1, 69, 30 + (i * 15));
   3E65 DD 7E FE      [19] 2629 	ld	a,-2 (ix)
   3E68 C6 1E         [ 7] 2630 	add	a, #0x1E
   3E6A DD 77 FD      [19] 2631 	ld	-3 (ix),a
   3E6D EB            [ 4] 2632 	ex	de,hl
   3E6E 29            [11] 2633 	add	hl, hl
   3E6F 29            [11] 2634 	add	hl, hl
   3E70 11 50 8A      [10] 2635 	ld	de,#_scoreHallOfFame
   3E73 19            [11] 2636 	add	hl,de
   3E74 5E            [ 7] 2637 	ld	e,(hl)
   3E75 23            [ 6] 2638 	inc	hl
   3E76 56            [ 7] 2639 	ld	d,(hl)
   3E77 23            [ 6] 2640 	inc	hl
   3E78 23            [ 6] 2641 	inc	hl
   3E79 7E            [ 7] 2642 	ld	a,(hl)
   3E7A 2B            [ 6] 2643 	dec	hl
   3E7B 6E            [ 7] 2644 	ld	l,(hl)
   3E7C C5            [11] 2645 	push	bc
   3E7D DD 7E FD      [19] 2646 	ld	a,-3 (ix)
   3E80 F5            [11] 2647 	push	af
   3E81 33            [ 6] 2648 	inc	sp
   3E82 21 01 45      [10] 2649 	ld	hl,#0x4501
   3E85 E5            [11] 2650 	push	hl
   3E86 D5            [11] 2651 	push	de
   3E87 CD 02 68      [17] 2652 	call	_drawNumber
   3E8A F1            [10] 2653 	pop	af
   3E8B F1            [10] 2654 	pop	af
   3E8C 33            [ 6] 2655 	inc	sp
   3E8D C1            [10] 2656 	pop	bc
                           2657 ;src/game.c:752: for (i = 0; i < 8; i++) {
   3E8E DD 7E FF      [19] 2658 	ld	a,-1 (ix)
   3E91 C6 0F         [ 7] 2659 	add	a, #0x0F
   3E93 DD 77 FF      [19] 2660 	ld	-1 (ix),a
   3E96 21 0F 00      [10] 2661 	ld	hl,#0x000F
   3E99 09            [11] 2662 	add	hl,bc
   3E9A 4D            [ 4] 2663 	ld	c,l
   3E9B 44            [ 4] 2664 	ld	b,h
   3E9C DD 7E FE      [19] 2665 	ld	a,-2 (ix)
   3E9F C6 0F         [ 7] 2666 	add	a, #0x0F
   3EA1 DD 77 FE      [19] 2667 	ld	-2 (ix),a
   3EA4 DD 34 FC      [23] 2668 	inc	-4 (ix)
   3EA7 DD 7E FC      [19] 2669 	ld	a,-4 (ix)
   3EAA D6 08         [ 7] 2670 	sub	a, #0x08
   3EAC DA 23 3E      [10] 2671 	jp	C,00106$
                           2672 ;src/game.c:758: drawText("JOHN LOBO", 25, 170, 1);
   3EAF 21 AA 01      [10] 2673 	ld	hl,#0x01AA
   3EB2 E5            [11] 2674 	push	hl
   3EB3 3E 19         [ 7] 2675 	ld	a,#0x19
   3EB5 F5            [11] 2676 	push	af
   3EB6 33            [ 6] 2677 	inc	sp
   3EB7 21 16 3F      [10] 2678 	ld	hl,#___str_16
   3EBA E5            [11] 2679 	push	hl
   3EBB CD A1 68      [17] 2680 	call	_drawText
   3EBE F1            [10] 2681 	pop	af
                           2682 ;src/game.c:759: drawText("@ GLASNOST CORP 2016", 11, 185, 1);
   3EBF 33            [ 6] 2683 	inc	sp
   3EC0 21 B9 01      [10] 2684 	ld	hl,#0x01B9
   3EC3 E3            [19] 2685 	ex	(sp),hl
   3EC4 3E 0B         [ 7] 2686 	ld	a,#0x0B
   3EC6 F5            [11] 2687 	push	af
   3EC7 33            [ 6] 2688 	inc	sp
   3EC8 21 20 3F      [10] 2689 	ld	hl,#___str_17
   3ECB E5            [11] 2690 	push	hl
   3ECC CD A1 68      [17] 2691 	call	_drawText
   3ECF F1            [10] 2692 	pop	af
   3ED0 F1            [10] 2693 	pop	af
   3ED1 33            [ 6] 2694 	inc	sp
                           2695 ;src/game.c:763: do {
   3ED2 01 40 9C      [10] 2696 	ld	bc,#0x9C40
   3ED5 11 00 00      [10] 2697 	ld	de,#0x0000
   3ED8                    2698 00103$:
                           2699 ;src/game.c:764: c--;                       // One more cycle
   3ED8 79            [ 4] 2700 	ld	a,c
   3ED9 C6 FF         [ 7] 2701 	add	a,#0xFF
   3EDB 4F            [ 4] 2702 	ld	c,a
   3EDC 78            [ 4] 2703 	ld	a,b
   3EDD CE FF         [ 7] 2704 	adc	a,#0xFF
   3EDF 47            [ 4] 2705 	ld	b,a
   3EE0 7B            [ 4] 2706 	ld	a,e
   3EE1 CE FF         [ 7] 2707 	adc	a,#0xFF
   3EE3 5F            [ 4] 2708 	ld	e,a
   3EE4 7A            [ 4] 2709 	ld	a,d
   3EE5 CE FF         [ 7] 2710 	adc	a,#0xFF
   3EE7 57            [ 4] 2711 	ld	d,a
                           2712 ;src/game.c:765: cpct_scanKeyboard_f();     // Scan the scan the keyboard
   3EE8 C5            [11] 2713 	push	bc
   3EE9 D5            [11] 2714 	push	de
   3EEA CD 3D 72      [17] 2715 	call	_cpct_scanKeyboard_f
   3EED CD 14 7D      [17] 2716 	call	_cpct_isAnyKeyPressed_f
   3EF0 D1            [10] 2717 	pop	de
   3EF1 C1            [10] 2718 	pop	bc
   3EF2 7D            [ 4] 2719 	ld	a,l
   3EF3 B7            [ 4] 2720 	or	a, a
   3EF4 20 06         [12] 2721 	jr	NZ,00108$
   3EF6 7A            [ 4] 2722 	ld	a,d
   3EF7 B3            [ 4] 2723 	or	a, e
   3EF8 B0            [ 4] 2724 	or	a, b
   3EF9 B1            [ 4] 2725 	or	a,c
   3EFA 20 DC         [12] 2726 	jr	NZ,00103$
   3EFC                    2727 00108$:
   3EFC DD F9         [10] 2728 	ld	sp, ix
   3EFE DD E1         [14] 2729 	pop	ix
   3F00 C9            [10] 2730 	ret
   3F01                    2731 ___str_15:
   3F01 41 4D 53 54 48 52  2732 	.ascii "AMSTHREES SCOREBOARD"
        45 45 53 20 53 43
        4F 52 45 42 4F 41
        52 44
   3F15 00                 2733 	.db 0x00
   3F16                    2734 ___str_16:
   3F16 4A 4F 48 4E 20 4C  2735 	.ascii "JOHN LOBO"
        4F 42 4F
   3F1F 00                 2736 	.db 0x00
   3F20                    2737 ___str_17:
   3F20 40 20 47 4C 41 53  2738 	.ascii "@ GLASNOST CORP 2016"
        4E 4F 53 54 20 43
        4F 52 50 20 32 30
        31 36
   3F34 00                 2739 	.db 0x00
                           2740 ;src/game.c:778: void game(void) {
                           2741 ;	---------------------------------
                           2742 ; Function game
                           2743 ; ---------------------------------
   3F35                    2744 _game::
   3F35 DD E5         [15] 2745 	push	ix
   3F37 DD 21 00 00   [14] 2746 	ld	ix,#0
   3F3B DD 39         [15] 2747 	add	ix,sp
   3F3D 3B            [ 6] 2748 	dec	sp
                           2749 ;src/game.c:781: initGame();
   3F3E CD 93 35      [17] 2750 	call	_initGame
                           2751 ;src/game.c:784: clearScreen();
   3F41 CD CE 71      [17] 2752 	call	_clearScreen
                           2753 ;src/game.c:787: drawFrame(2, 1, 49, 182);
   3F44 21 31 B6      [10] 2754 	ld	hl,#0xB631
   3F47 E5            [11] 2755 	push	hl
   3F48 21 02 01      [10] 2756 	ld	hl,#0x0102
   3F4B E5            [11] 2757 	push	hl
   3F4C CD C0 6E      [17] 2758 	call	_drawFrame
   3F4F F1            [10] 2759 	pop	af
   3F50 F1            [10] 2760 	pop	af
                           2761 ;src/game.c:788: printCells();
   3F51 CD 0D 39      [17] 2762 	call	_printCells
                           2763 ;src/game.c:789: drawText("NEXT", 62, 2, 0);
   3F54 21 02 00      [10] 2764 	ld	hl,#0x0002
   3F57 E5            [11] 2765 	push	hl
   3F58 3E 3E         [ 7] 2766 	ld	a,#0x3E
   3F5A F5            [11] 2767 	push	af
   3F5B 33            [ 6] 2768 	inc	sp
   3F5C 21 8F 40      [10] 2769 	ld	hl,#___str_18
   3F5F E5            [11] 2770 	push	hl
   3F60 CD A1 68      [17] 2771 	call	_drawText
   3F63 F1            [10] 2772 	pop	af
   3F64 F1            [10] 2773 	pop	af
   3F65 33            [ 6] 2774 	inc	sp
                           2775 ;src/game.c:791: wait4UserKeypress();
   3F66 CD BD 6D      [17] 2776 	call	_wait4UserKeypress
                           2777 ;src/game.c:793: moved = 0;
   3F69 DD 36 FF 00   [19] 2778 	ld	-1 (ix),#0x00
                           2779 ;src/game.c:795: while (1) {
   3F6D                    2780 00128$:
                           2781 ;src/game.c:796: delay(24);
   3F6D 21 00 00      [10] 2782 	ld	hl,#0x0000
   3F70 E5            [11] 2783 	push	hl
   3F71 21 18 00      [10] 2784 	ld	hl,#0x0018
   3F74 E5            [11] 2785 	push	hl
   3F75 CD E1 30      [17] 2786 	call	_delay
   3F78 F1            [10] 2787 	pop	af
   3F79 F1            [10] 2788 	pop	af
                           2789 ;src/game.c:797: cpct_scanKeyboard_f();
   3F7A CD 3D 72      [17] 2790 	call	_cpct_scanKeyboard_f
                           2791 ;src/game.c:799: if (cpct_isKeyPressed(keys.right)) {
   3F7D 2A 2F 8A      [16] 2792 	ld	hl, (#_keys + 6)
   3F80 CD 31 72      [17] 2793 	call	_cpct_isKeyPressed
   3F83 7D            [ 4] 2794 	ld	a,l
   3F84 B7            [ 4] 2795 	or	a, a
   3F85 28 15         [12] 2796 	jr	Z,00121$
                           2797 ;src/game.c:800: if (rotateCellsRight()) {
   3F87 CD DD 36      [17] 2798 	call	_rotateCellsRight
   3F8A 7D            [ 4] 2799 	ld	a,l
   3F8B B7            [ 4] 2800 	or	a, a
   3F8C 28 75         [12] 2801 	jr	Z,00122$
                           2802 ;src/game.c:801: addRandomCellTurn(RIGHT);
   3F8E 3E 01         [ 7] 2803 	ld	a,#0x01
   3F90 F5            [11] 2804 	push	af
   3F91 33            [ 6] 2805 	inc	sp
   3F92 CD C3 32      [17] 2806 	call	_addRandomCellTurn
   3F95 33            [ 6] 2807 	inc	sp
                           2808 ;src/game.c:802: moved = 1;
   3F96 DD 36 FF 01   [19] 2809 	ld	-1 (ix),#0x01
   3F9A 18 67         [12] 2810 	jr	00122$
   3F9C                    2811 00121$:
                           2812 ;src/game.c:804: } else if (cpct_isKeyPressed(keys.left)) {
   3F9C 2A 2D 8A      [16] 2813 	ld	hl, (#_keys + 4)
   3F9F CD 31 72      [17] 2814 	call	_cpct_isKeyPressed
   3FA2 7D            [ 4] 2815 	ld	a,l
   3FA3 B7            [ 4] 2816 	or	a, a
   3FA4 28 14         [12] 2817 	jr	Z,00118$
                           2818 ;src/game.c:805: if (rotateCellsLeft()) {
   3FA6 CD 22 36      [17] 2819 	call	_rotateCellsLeft
   3FA9 7D            [ 4] 2820 	ld	a,l
   3FAA B7            [ 4] 2821 	or	a, a
   3FAB 28 56         [12] 2822 	jr	Z,00122$
                           2823 ;src/game.c:806: addRandomCellTurn(LEFT);
   3FAD AF            [ 4] 2824 	xor	a, a
   3FAE F5            [11] 2825 	push	af
   3FAF 33            [ 6] 2826 	inc	sp
   3FB0 CD C3 32      [17] 2827 	call	_addRandomCellTurn
   3FB3 33            [ 6] 2828 	inc	sp
                           2829 ;src/game.c:807: moved = 1;
   3FB4 DD 36 FF 01   [19] 2830 	ld	-1 (ix),#0x01
   3FB8 18 49         [12] 2831 	jr	00122$
   3FBA                    2832 00118$:
                           2833 ;src/game.c:809: } else if (cpct_isKeyPressed(keys.down)) {
   3FBA 2A 2B 8A      [16] 2834 	ld	hl, (#_keys + 2)
   3FBD CD 31 72      [17] 2835 	call	_cpct_isKeyPressed
   3FC0 7D            [ 4] 2836 	ld	a,l
   3FC1 B7            [ 4] 2837 	or	a, a
   3FC2 28 15         [12] 2838 	jr	Z,00115$
                           2839 ;src/game.c:810: if (rotateCellsDown()) {
   3FC4 CD 4B 38      [17] 2840 	call	_rotateCellsDown
   3FC7 7D            [ 4] 2841 	ld	a,l
   3FC8 B7            [ 4] 2842 	or	a, a
   3FC9 28 38         [12] 2843 	jr	Z,00122$
                           2844 ;src/game.c:811: addRandomCellTurn(DOWN);
   3FCB 3E 03         [ 7] 2845 	ld	a,#0x03
   3FCD F5            [11] 2846 	push	af
   3FCE 33            [ 6] 2847 	inc	sp
   3FCF CD C3 32      [17] 2848 	call	_addRandomCellTurn
   3FD2 33            [ 6] 2849 	inc	sp
                           2850 ;src/game.c:812: moved = 1;
   3FD3 DD 36 FF 01   [19] 2851 	ld	-1 (ix),#0x01
   3FD7 18 2A         [12] 2852 	jr	00122$
   3FD9                    2853 00115$:
                           2854 ;src/game.c:814: } else if (cpct_isKeyPressed(keys.up)) {
   3FD9 2A 29 8A      [16] 2855 	ld	hl, (#_keys + 0)
   3FDC CD 31 72      [17] 2856 	call	_cpct_isKeyPressed
   3FDF 7D            [ 4] 2857 	ld	a,l
   3FE0 B7            [ 4] 2858 	or	a, a
   3FE1 28 15         [12] 2859 	jr	Z,00112$
                           2860 ;src/game.c:815: if (rotateCellsUp()) {
   3FE3 CD 9E 37      [17] 2861 	call	_rotateCellsUp
   3FE6 7D            [ 4] 2862 	ld	a,l
   3FE7 B7            [ 4] 2863 	or	a, a
   3FE8 28 19         [12] 2864 	jr	Z,00122$
                           2865 ;src/game.c:816: addRandomCellTurn(UP);
   3FEA 3E 02         [ 7] 2866 	ld	a,#0x02
   3FEC F5            [11] 2867 	push	af
   3FED 33            [ 6] 2868 	inc	sp
   3FEE CD C3 32      [17] 2869 	call	_addRandomCellTurn
   3FF1 33            [ 6] 2870 	inc	sp
                           2871 ;src/game.c:817: moved = 1;
   3FF2 DD 36 FF 01   [19] 2872 	ld	-1 (ix),#0x01
   3FF6 18 0B         [12] 2873 	jr	00122$
   3FF8                    2874 00112$:
                           2875 ;src/game.c:819: } else if (cpct_isKeyPressed(keys.abort))
   3FF8 2A 35 8A      [16] 2876 	ld	hl, (#_keys + 12)
   3FFB CD 31 72      [17] 2877 	call	_cpct_isKeyPressed
   3FFE 7D            [ 4] 2878 	ld	a,l
   3FFF B7            [ 4] 2879 	or	a, a
   4000 C2 8B 40      [10] 2880 	jp	NZ,00130$
                           2881 ;src/game.c:820: break;
   4003                    2882 00122$:
                           2883 ;src/game.c:822: if (moved) {
   4003 DD 7E FF      [19] 2884 	ld	a,-1 (ix)
   4006 B7            [ 4] 2885 	or	a, a
   4007 CA 6D 3F      [10] 2886 	jp	Z,00128$
                           2887 ;src/game.c:823: printCells();
   400A CD 0D 39      [17] 2888 	call	_printCells
                           2889 ;src/game.c:824: moved = 0;
   400D DD 36 FF 00   [19] 2890 	ld	-1 (ix),#0x00
                           2891 ;src/game.c:825: if (anyMovesLeft() == 0) {
   4011 CD 3C 32      [17] 2892 	call	_anyMovesLeft
   4014 7D            [ 4] 2893 	ld	a,l
   4015 B7            [ 4] 2894 	or	a, a
   4016 C2 6D 3F      [10] 2895 	jp	NZ,00128$
                           2896 ;src/game.c:826: drawScore();
   4019 CD C2 39      [17] 2897 	call	_drawScore
                           2898 ;src/game.c:827: wait4UserKeypress();
   401C CD BD 6D      [17] 2899 	call	_wait4UserKeypress
                           2900 ;src/game.c:828: drawFrame(14, 60, 68, 142);
   401F 21 44 8E      [10] 2901 	ld	hl,#0x8E44
   4022 E5            [11] 2902 	push	hl
   4023 21 0E 3C      [10] 2903 	ld	hl,#0x3C0E
   4026 E5            [11] 2904 	push	hl
   4027 CD C0 6E      [17] 2905 	call	_drawFrame
   402A F1            [10] 2906 	pop	af
                           2907 ;src/game.c:829: drawFallingText("NO MORE MOVES", 20, 90, 96);
   402B 21 5A 60      [10] 2908 	ld	hl, #0x605A
   402E E3            [19] 2909 	ex	(sp),hl
   402F 3E 14         [ 7] 2910 	ld	a,#0x14
   4031 F5            [11] 2911 	push	af
   4032 33            [ 6] 2912 	inc	sp
   4033 21 94 40      [10] 2913 	ld	hl,#___str_19
   4036 E5            [11] 2914 	push	hl
   4037 CD 8B 6B      [17] 2915 	call	_drawFallingText
   403A F1            [10] 2916 	pop	af
                           2917 ;src/game.c:830: drawText("GAME OVER", 22, 70, 1);
   403B 33            [ 6] 2918 	inc	sp
   403C 21 46 01      [10] 2919 	ld	hl,#0x0146
   403F E3            [19] 2920 	ex	(sp),hl
   4040 3E 16         [ 7] 2921 	ld	a,#0x16
   4042 F5            [11] 2922 	push	af
   4043 33            [ 6] 2923 	inc	sp
   4044 21 A2 40      [10] 2924 	ld	hl,#___str_20
   4047 E5            [11] 2925 	push	hl
   4048 CD A1 68      [17] 2926 	call	_drawText
   404B F1            [10] 2927 	pop	af
   404C F1            [10] 2928 	pop	af
   404D 33            [ 6] 2929 	inc	sp
                           2930 ;src/game.c:831: sprintf(aux_txt, "SCORE  %d", score);
   404E 2A 4E 8A      [16] 2931 	ld	hl,(_score + 2)
   4051 E5            [11] 2932 	push	hl
   4052 2A 4C 8A      [16] 2933 	ld	hl,(_score)
   4055 E5            [11] 2934 	push	hl
   4056 21 AC 40      [10] 2935 	ld	hl,#___str_21
   4059 E5            [11] 2936 	push	hl
   405A 2A EA 8A      [16] 2937 	ld	hl,(_aux_txt)
   405D E5            [11] 2938 	push	hl
   405E CD 7E 7C      [17] 2939 	call	_sprintf
   4061 21 08 00      [10] 2940 	ld	hl,#8
   4064 39            [11] 2941 	add	hl,sp
   4065 F9            [ 6] 2942 	ld	sp,hl
                           2943 ;src/game.c:832: drawText(aux_txt, 22, 120, 1);
   4066 21 78 01      [10] 2944 	ld	hl,#0x0178
   4069 E5            [11] 2945 	push	hl
   406A 3E 16         [ 7] 2946 	ld	a,#0x16
   406C F5            [11] 2947 	push	af
   406D 33            [ 6] 2948 	inc	sp
   406E 2A EA 8A      [16] 2949 	ld	hl,(_aux_txt)
   4071 E5            [11] 2950 	push	hl
   4072 CD A1 68      [17] 2951 	call	_drawText
   4075 F1            [10] 2952 	pop	af
   4076 F1            [10] 2953 	pop	af
   4077 33            [ 6] 2954 	inc	sp
                           2955 ;src/game.c:833: wait4UserKeypress();
   4078 CD BD 6D      [17] 2956 	call	_wait4UserKeypress
                           2957 ;src/game.c:834: setHighScore(score);
   407B 2A 4E 8A      [16] 2958 	ld	hl,(_score + 2)
   407E E5            [11] 2959 	push	hl
   407F 2A 4C 8A      [16] 2960 	ld	hl,(_score)
   4082 E5            [11] 2961 	push	hl
   4083 CD E8 3C      [17] 2962 	call	_setHighScore
   4086 F1            [10] 2963 	pop	af
   4087 F1            [10] 2964 	pop	af
                           2965 ;src/game.c:835: drawScoreBoard();
   4088 CD E1 3D      [17] 2966 	call	_drawScoreBoard
                           2967 ;src/game.c:836: break;
   408B                    2968 00130$:
   408B 33            [ 6] 2969 	inc	sp
   408C DD E1         [14] 2970 	pop	ix
   408E C9            [10] 2971 	ret
   408F                    2972 ___str_18:
   408F 4E 45 58 54        2973 	.ascii "NEXT"
   4093 00                 2974 	.db 0x00
   4094                    2975 ___str_19:
   4094 4E 4F 20 4D 4F 52  2976 	.ascii "NO MORE MOVES"
        45 20 4D 4F 56 45
        53
   40A1 00                 2977 	.db 0x00
   40A2                    2978 ___str_20:
   40A2 47 41 4D 45 20 4F  2979 	.ascii "GAME OVER"
        56 45 52
   40AB 00                 2980 	.db 0x00
   40AC                    2981 ___str_21:
   40AC 53 43 4F 52 45 20  2982 	.ascii "SCORE  %d"
        20 25 64
   40B5 00                 2983 	.db 0x00
                           2984 ;src/game.c:843: void drawMenu() {
                           2985 ;	---------------------------------
                           2986 ; Function drawMenu
                           2987 ; ---------------------------------
   40B6                    2988 _drawMenu::
                           2989 ;src/game.c:845: cpct_waitVSYNC();
   40B6 CD 0C 7D      [17] 2990 	call	_cpct_waitVSYNC
                           2991 ;src/game.c:848: cpct_memset(CPCT_VMEM_START, cpct_px2byteM0(5, 5), 0x4000);
   40B9 21 05 05      [10] 2992 	ld	hl,#0x0505
   40BC E5            [11] 2993 	push	hl
   40BD CD 2F 7D      [17] 2994 	call	_cpct_px2byteM0
   40C0 45            [ 4] 2995 	ld	b,l
   40C1 21 00 40      [10] 2996 	ld	hl,#0x4000
   40C4 E5            [11] 2997 	push	hl
   40C5 C5            [11] 2998 	push	bc
   40C6 33            [ 6] 2999 	inc	sp
   40C7 26 C0         [ 7] 3000 	ld	h, #0xC0
   40C9 E5            [11] 3001 	push	hl
   40CA CD 4B 7D      [17] 3002 	call	_cpct_memset
                           3003 ;src/game.c:850: drawFrame(15, 38, 63, 134);
   40CD 21 3F 86      [10] 3004 	ld	hl,#0x863F
   40D0 E5            [11] 3005 	push	hl
   40D1 21 0F 26      [10] 3006 	ld	hl,#0x260F
   40D4 E5            [11] 3007 	push	hl
   40D5 CD C0 6E      [17] 3008 	call	_drawFrame
   40D8 F1            [10] 3009 	pop	af
                           3010 ;src/game.c:852: drawText("AMSTHREES", 31, 2, 1);
   40D9 21 02 01      [10] 3011 	ld	hl, #0x0102
   40DC E3            [19] 3012 	ex	(sp),hl
   40DD 3E 1F         [ 7] 3013 	ld	a,#0x1F
   40DF F5            [11] 3014 	push	af
   40E0 33            [ 6] 3015 	inc	sp
   40E1 21 C3 41      [10] 3016 	ld	hl,#___str_22
   40E4 E5            [11] 3017 	push	hl
   40E5 CD A1 68      [17] 3018 	call	_drawText
   40E8 F1            [10] 3019 	pop	af
                           3020 ;src/game.c:854: drawText("TECLADO", 30, 50, 0);
   40E9 33            [ 6] 3021 	inc	sp
   40EA 21 32 00      [10] 3022 	ld	hl,#0x0032
   40ED E3            [19] 3023 	ex	(sp),hl
   40EE 3E 1E         [ 7] 3024 	ld	a,#0x1E
   40F0 F5            [11] 3025 	push	af
   40F1 33            [ 6] 3026 	inc	sp
   40F2 21 CD 41      [10] 3027 	ld	hl,#___str_23
   40F5 E5            [11] 3028 	push	hl
   40F6 CD A1 68      [17] 3029 	call	_drawText
   40F9 F1            [10] 3030 	pop	af
                           3031 ;src/game.c:855: drawText("JOYSTICK", 30, 70, 0);
   40FA 33            [ 6] 3032 	inc	sp
   40FB 21 46 00      [10] 3033 	ld	hl,#0x0046
   40FE E3            [19] 3034 	ex	(sp),hl
   40FF 3E 1E         [ 7] 3035 	ld	a,#0x1E
   4101 F5            [11] 3036 	push	af
   4102 33            [ 6] 3037 	inc	sp
   4103 21 D5 41      [10] 3038 	ld	hl,#___str_24
   4106 E5            [11] 3039 	push	hl
   4107 CD A1 68      [17] 3040 	call	_drawText
   410A F1            [10] 3041 	pop	af
                           3042 ;src/game.c:856: drawText("MUSICA", 30, 90, 0);
   410B 33            [ 6] 3043 	inc	sp
   410C 21 5A 00      [10] 3044 	ld	hl,#0x005A
   410F E3            [19] 3045 	ex	(sp),hl
   4110 3E 1E         [ 7] 3046 	ld	a,#0x1E
   4112 F5            [11] 3047 	push	af
   4113 33            [ 6] 3048 	inc	sp
   4114 21 DE 41      [10] 3049 	ld	hl,#___str_25
   4117 E5            [11] 3050 	push	hl
   4118 CD A1 68      [17] 3051 	call	_drawText
   411B F1            [10] 3052 	pop	af
   411C F1            [10] 3053 	pop	af
   411D 33            [ 6] 3054 	inc	sp
                           3055 ;src/game.c:857: if (playing)
   411E 3A 0A 8B      [13] 3056 	ld	a,(#_playing + 0)
   4121 B7            [ 4] 3057 	or	a, a
   4122 28 14         [12] 3058 	jr	Z,00102$
                           3059 ;src/game.c:858: drawText("OFF", 51, 90, 0);
   4124 21 5A 00      [10] 3060 	ld	hl,#0x005A
   4127 E5            [11] 3061 	push	hl
   4128 3E 33         [ 7] 3062 	ld	a,#0x33
   412A F5            [11] 3063 	push	af
   412B 33            [ 6] 3064 	inc	sp
   412C 21 E5 41      [10] 3065 	ld	hl,#___str_26
   412F E5            [11] 3066 	push	hl
   4130 CD A1 68      [17] 3067 	call	_drawText
   4133 F1            [10] 3068 	pop	af
   4134 F1            [10] 3069 	pop	af
   4135 33            [ 6] 3070 	inc	sp
   4136 18 12         [12] 3071 	jr	00103$
   4138                    3072 00102$:
                           3073 ;src/game.c:860: drawText("ON", 51, 90, 0);
   4138 21 5A 00      [10] 3074 	ld	hl,#0x005A
   413B E5            [11] 3075 	push	hl
   413C 3E 33         [ 7] 3076 	ld	a,#0x33
   413E F5            [11] 3077 	push	af
   413F 33            [ 6] 3078 	inc	sp
   4140 21 E9 41      [10] 3079 	ld	hl,#___str_27
   4143 E5            [11] 3080 	push	hl
   4144 CD A1 68      [17] 3081 	call	_drawText
   4147 F1            [10] 3082 	pop	af
   4148 F1            [10] 3083 	pop	af
   4149 33            [ 6] 3084 	inc	sp
   414A                    3085 00103$:
                           3086 ;src/game.c:861: drawText("JUGAR", 30, 110, 0);
   414A 21 6E 00      [10] 3087 	ld	hl,#0x006E
   414D E5            [11] 3088 	push	hl
   414E 3E 1E         [ 7] 3089 	ld	a,#0x1E
   4150 F5            [11] 3090 	push	af
   4151 33            [ 6] 3091 	inc	sp
   4152 21 EC 41      [10] 3092 	ld	hl,#___str_28
   4155 E5            [11] 3093 	push	hl
   4156 CD A1 68      [17] 3094 	call	_drawText
   4159 F1            [10] 3095 	pop	af
                           3096 ;src/game.c:863: drawNumber(1, 1, 23, 50);
   415A 33            [ 6] 3097 	inc	sp
   415B 21 17 32      [10] 3098 	ld	hl,#0x3217
   415E E3            [19] 3099 	ex	(sp),hl
   415F 3E 01         [ 7] 3100 	ld	a,#0x01
   4161 F5            [11] 3101 	push	af
   4162 33            [ 6] 3102 	inc	sp
   4163 21 01 00      [10] 3103 	ld	hl,#0x0001
   4166 E5            [11] 3104 	push	hl
   4167 CD 02 68      [17] 3105 	call	_drawNumber
   416A F1            [10] 3106 	pop	af
                           3107 ;src/game.c:864: drawNumber(2, 1, 23, 70);
   416B 33            [ 6] 3108 	inc	sp
   416C 21 17 46      [10] 3109 	ld	hl,#0x4617
   416F E3            [19] 3110 	ex	(sp),hl
   4170 3E 01         [ 7] 3111 	ld	a,#0x01
   4172 F5            [11] 3112 	push	af
   4173 33            [ 6] 3113 	inc	sp
   4174 21 02 00      [10] 3114 	ld	hl,#0x0002
   4177 E5            [11] 3115 	push	hl
   4178 CD 02 68      [17] 3116 	call	_drawNumber
   417B F1            [10] 3117 	pop	af
                           3118 ;src/game.c:865: drawNumber(3, 1, 23, 90);
   417C 33            [ 6] 3119 	inc	sp
   417D 21 17 5A      [10] 3120 	ld	hl,#0x5A17
   4180 E3            [19] 3121 	ex	(sp),hl
   4181 3E 01         [ 7] 3122 	ld	a,#0x01
   4183 F5            [11] 3123 	push	af
   4184 33            [ 6] 3124 	inc	sp
   4185 21 03 00      [10] 3125 	ld	hl,#0x0003
   4188 E5            [11] 3126 	push	hl
   4189 CD 02 68      [17] 3127 	call	_drawNumber
   418C F1            [10] 3128 	pop	af
                           3129 ;src/game.c:866: drawNumber(4, 1, 23, 110);
   418D 33            [ 6] 3130 	inc	sp
   418E 21 17 6E      [10] 3131 	ld	hl,#0x6E17
   4191 E3            [19] 3132 	ex	(sp),hl
   4192 3E 01         [ 7] 3133 	ld	a,#0x01
   4194 F5            [11] 3134 	push	af
   4195 33            [ 6] 3135 	inc	sp
   4196 21 04 00      [10] 3136 	ld	hl,#0x0004
   4199 E5            [11] 3137 	push	hl
   419A CD 02 68      [17] 3138 	call	_drawNumber
   419D F1            [10] 3139 	pop	af
                           3140 ;src/game.c:869: drawText("JOHN LOBO", 25, 170, 1);
   419E 33            [ 6] 3141 	inc	sp
   419F 21 AA 01      [10] 3142 	ld	hl,#0x01AA
   41A2 E3            [19] 3143 	ex	(sp),hl
   41A3 3E 19         [ 7] 3144 	ld	a,#0x19
   41A5 F5            [11] 3145 	push	af
   41A6 33            [ 6] 3146 	inc	sp
   41A7 21 F2 41      [10] 3147 	ld	hl,#___str_29
   41AA E5            [11] 3148 	push	hl
   41AB CD A1 68      [17] 3149 	call	_drawText
   41AE F1            [10] 3150 	pop	af
                           3151 ;src/game.c:870: drawText("@ GLASNOST CORP 2016", 11, 185, 1);
   41AF 33            [ 6] 3152 	inc	sp
   41B0 21 B9 01      [10] 3153 	ld	hl,#0x01B9
   41B3 E3            [19] 3154 	ex	(sp),hl
   41B4 3E 0B         [ 7] 3155 	ld	a,#0x0B
   41B6 F5            [11] 3156 	push	af
   41B7 33            [ 6] 3157 	inc	sp
   41B8 21 FC 41      [10] 3158 	ld	hl,#___str_30
   41BB E5            [11] 3159 	push	hl
   41BC CD A1 68      [17] 3160 	call	_drawText
   41BF F1            [10] 3161 	pop	af
   41C0 F1            [10] 3162 	pop	af
   41C1 33            [ 6] 3163 	inc	sp
   41C2 C9            [10] 3164 	ret
   41C3                    3165 ___str_22:
   41C3 41 4D 53 54 48 52  3166 	.ascii "AMSTHREES"
        45 45 53
   41CC 00                 3167 	.db 0x00
   41CD                    3168 ___str_23:
   41CD 54 45 43 4C 41 44  3169 	.ascii "TECLADO"
        4F
   41D4 00                 3170 	.db 0x00
   41D5                    3171 ___str_24:
   41D5 4A 4F 59 53 54 49  3172 	.ascii "JOYSTICK"
        43 4B
   41DD 00                 3173 	.db 0x00
   41DE                    3174 ___str_25:
   41DE 4D 55 53 49 43 41  3175 	.ascii "MUSICA"
   41E4 00                 3176 	.db 0x00
   41E5                    3177 ___str_26:
   41E5 4F 46 46           3178 	.ascii "OFF"
   41E8 00                 3179 	.db 0x00
   41E9                    3180 ___str_27:
   41E9 4F 4E              3181 	.ascii "ON"
   41EB 00                 3182 	.db 0x00
   41EC                    3183 ___str_28:
   41EC 4A 55 47 41 52     3184 	.ascii "JUGAR"
   41F1 00                 3185 	.db 0x00
   41F2                    3186 ___str_29:
   41F2 4A 4F 48 4E 20 4C  3187 	.ascii "JOHN LOBO"
        4F 42 4F
   41FB 00                 3188 	.db 0x00
   41FC                    3189 ___str_30:
   41FC 40 20 47 4C 41 53  3190 	.ascii "@ GLASNOST CORP 2016"
        4E 4F 53 54 20 43
        4F 52 50 20 32 30
        31 36
   4210 00                 3191 	.db 0x00
                           3192 ;src/game.c:874: void checkKeyboardMenu() {
                           3193 ;	---------------------------------
                           3194 ; Function checkKeyboardMenu
                           3195 ; ---------------------------------
   4211                    3196 _checkKeyboardMenu::
                           3197 ;src/game.c:878: cpct_scanKeyboard_f();
   4211 CD 3D 72      [17] 3198 	call	_cpct_scanKeyboard_f
                           3199 ;src/game.c:880: if (selectedOption == 1) {
   4214 3A E9 8A      [13] 3200 	ld	a,(#_selectedOption + 0)
   4217 3D            [ 4] 3201 	dec	a
   4218 20 66         [12] 3202 	jr	NZ,00102$
                           3203 ;src/game.c:881: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 27, 71);
   421A 21 1B 47      [10] 3204 	ld	hl,#0x471B
   421D E5            [11] 3205 	push	hl
   421E 21 00 C0      [10] 3206 	ld	hl,#0xC000
   4221 E5            [11] 3207 	push	hl
   4222 CD 62 7E      [17] 3208 	call	_cpct_getScreenPtr
   4225 4D            [ 4] 3209 	ld	c,l
   4226 44            [ 4] 3210 	ld	b,h
                           3211 ;src/game.c:882: cpct_drawSprite(g_tile_marker_3, pvideo, 2, 9);
   4227 21 02 09      [10] 3212 	ld	hl,#0x0902
   422A E5            [11] 3213 	push	hl
   422B C5            [11] 3214 	push	bc
   422C 21 7C 4D      [10] 3215 	ld	hl,#_g_tile_marker_3
   422F E5            [11] 3216 	push	hl
   4230 CD DC 7A      [17] 3217 	call	_cpct_drawSprite
                           3218 ;src/game.c:883: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 54, 71);
   4233 21 36 47      [10] 3219 	ld	hl,#0x4736
   4236 E5            [11] 3220 	push	hl
   4237 21 00 C0      [10] 3221 	ld	hl,#0xC000
   423A E5            [11] 3222 	push	hl
   423B CD 62 7E      [17] 3223 	call	_cpct_getScreenPtr
   423E 4D            [ 4] 3224 	ld	c,l
   423F 44            [ 4] 3225 	ld	b,h
                           3226 ;src/game.c:884: cpct_drawSprite(g_tile_marker_3, pvideo, 2, 9);
   4240 21 02 09      [10] 3227 	ld	hl,#0x0902
   4243 E5            [11] 3228 	push	hl
   4244 C5            [11] 3229 	push	bc
   4245 21 7C 4D      [10] 3230 	ld	hl,#_g_tile_marker_3
   4248 E5            [11] 3231 	push	hl
   4249 CD DC 7A      [17] 3232 	call	_cpct_drawSprite
                           3233 ;src/game.c:885: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 27, 51);
   424C 21 1B 33      [10] 3234 	ld	hl,#0x331B
   424F E5            [11] 3235 	push	hl
   4250 21 00 C0      [10] 3236 	ld	hl,#0xC000
   4253 E5            [11] 3237 	push	hl
   4254 CD 62 7E      [17] 3238 	call	_cpct_getScreenPtr
   4257 4D            [ 4] 3239 	ld	c,l
   4258 44            [ 4] 3240 	ld	b,h
                           3241 ;src/game.c:886: cpct_drawSprite(g_tile_marker_0, pvideo, 2, 9);
   4259 21 02 09      [10] 3242 	ld	hl,#0x0902
   425C E5            [11] 3243 	push	hl
   425D C5            [11] 3244 	push	bc
   425E 21 6A 4D      [10] 3245 	ld	hl,#_g_tile_marker_0
   4261 E5            [11] 3246 	push	hl
   4262 CD DC 7A      [17] 3247 	call	_cpct_drawSprite
                           3248 ;src/game.c:887: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 54, 51);
   4265 21 36 33      [10] 3249 	ld	hl,#0x3336
   4268 E5            [11] 3250 	push	hl
   4269 21 00 C0      [10] 3251 	ld	hl,#0xC000
   426C E5            [11] 3252 	push	hl
   426D CD 62 7E      [17] 3253 	call	_cpct_getScreenPtr
   4270 4D            [ 4] 3254 	ld	c,l
   4271 44            [ 4] 3255 	ld	b,h
                           3256 ;src/game.c:888: cpct_drawSprite(g_tile_marker_0, pvideo, 2, 9);
   4272 21 02 09      [10] 3257 	ld	hl,#0x0902
   4275 E5            [11] 3258 	push	hl
   4276 C5            [11] 3259 	push	bc
   4277 21 6A 4D      [10] 3260 	ld	hl,#_g_tile_marker_0
   427A E5            [11] 3261 	push	hl
   427B CD DC 7A      [17] 3262 	call	_cpct_drawSprite
   427E 18 64         [12] 3263 	jr	00103$
   4280                    3264 00102$:
                           3265 ;src/game.c:890: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 27, 51);
   4280 21 1B 33      [10] 3266 	ld	hl,#0x331B
   4283 E5            [11] 3267 	push	hl
   4284 21 00 C0      [10] 3268 	ld	hl,#0xC000
   4287 E5            [11] 3269 	push	hl
   4288 CD 62 7E      [17] 3270 	call	_cpct_getScreenPtr
   428B 4D            [ 4] 3271 	ld	c,l
   428C 44            [ 4] 3272 	ld	b,h
                           3273 ;src/game.c:891: cpct_drawSprite(g_tile_marker_3, pvideo, 2, 9);
   428D 21 02 09      [10] 3274 	ld	hl,#0x0902
   4290 E5            [11] 3275 	push	hl
   4291 C5            [11] 3276 	push	bc
   4292 21 7C 4D      [10] 3277 	ld	hl,#_g_tile_marker_3
   4295 E5            [11] 3278 	push	hl
   4296 CD DC 7A      [17] 3279 	call	_cpct_drawSprite
                           3280 ;src/game.c:892: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 54, 51);
   4299 21 36 33      [10] 3281 	ld	hl,#0x3336
   429C E5            [11] 3282 	push	hl
   429D 21 00 C0      [10] 3283 	ld	hl,#0xC000
   42A0 E5            [11] 3284 	push	hl
   42A1 CD 62 7E      [17] 3285 	call	_cpct_getScreenPtr
   42A4 4D            [ 4] 3286 	ld	c,l
   42A5 44            [ 4] 3287 	ld	b,h
                           3288 ;src/game.c:893: cpct_drawSprite(g_tile_marker_3, pvideo, 2, 9);
   42A6 21 02 09      [10] 3289 	ld	hl,#0x0902
   42A9 E5            [11] 3290 	push	hl
   42AA C5            [11] 3291 	push	bc
   42AB 21 7C 4D      [10] 3292 	ld	hl,#_g_tile_marker_3
   42AE E5            [11] 3293 	push	hl
   42AF CD DC 7A      [17] 3294 	call	_cpct_drawSprite
                           3295 ;src/game.c:894: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 27, 71);
   42B2 21 1B 47      [10] 3296 	ld	hl,#0x471B
   42B5 E5            [11] 3297 	push	hl
   42B6 21 00 C0      [10] 3298 	ld	hl,#0xC000
   42B9 E5            [11] 3299 	push	hl
   42BA CD 62 7E      [17] 3300 	call	_cpct_getScreenPtr
   42BD 4D            [ 4] 3301 	ld	c,l
   42BE 44            [ 4] 3302 	ld	b,h
                           3303 ;src/game.c:895: cpct_drawSprite(g_tile_marker_0, pvideo, 2, 9);
   42BF 21 02 09      [10] 3304 	ld	hl,#0x0902
   42C2 E5            [11] 3305 	push	hl
   42C3 C5            [11] 3306 	push	bc
   42C4 21 6A 4D      [10] 3307 	ld	hl,#_g_tile_marker_0
   42C7 E5            [11] 3308 	push	hl
   42C8 CD DC 7A      [17] 3309 	call	_cpct_drawSprite
                           3310 ;src/game.c:896: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 54, 71);
   42CB 21 36 47      [10] 3311 	ld	hl,#0x4736
   42CE E5            [11] 3312 	push	hl
   42CF 21 00 C0      [10] 3313 	ld	hl,#0xC000
   42D2 E5            [11] 3314 	push	hl
   42D3 CD 62 7E      [17] 3315 	call	_cpct_getScreenPtr
   42D6 4D            [ 4] 3316 	ld	c,l
   42D7 44            [ 4] 3317 	ld	b,h
                           3318 ;src/game.c:897: cpct_drawSprite(g_tile_marker_0, pvideo, 2, 9);
   42D8 21 02 09      [10] 3319 	ld	hl,#0x0902
   42DB E5            [11] 3320 	push	hl
   42DC C5            [11] 3321 	push	bc
   42DD 21 6A 4D      [10] 3322 	ld	hl,#_g_tile_marker_0
   42E0 E5            [11] 3323 	push	hl
   42E1 CD DC 7A      [17] 3324 	call	_cpct_drawSprite
   42E4                    3325 00103$:
                           3326 ;src/game.c:901: if (cpct_isKeyPressed(Key_1)) {
   42E4 21 08 01      [10] 3327 	ld	hl,#0x0108
   42E7 CD 31 72      [17] 3328 	call	_cpct_isKeyPressed
   42EA 7D            [ 4] 3329 	ld	a, l
   42EB B7            [ 4] 3330 	or	a, a
   42EC CA 72 43      [10] 3331 	jp	Z,00116$
                           3332 ;src/game.c:903: selectedOption = 1;
   42EF 21 E9 8A      [10] 3333 	ld	hl,#_selectedOption + 0
   42F2 36 01         [10] 3334 	ld	(hl), #0x01
                           3335 ;src/game.c:905: waitKeyUp(Key_1);
   42F4 21 08 01      [10] 3336 	ld	hl,#0x0108
   42F7 E5            [11] 3337 	push	hl
   42F8 CD 24 6E      [17] 3338 	call	_waitKeyUp
                           3339 ;src/game.c:907: keys.up    = redefineKey("UP");
   42FB 21 29 44      [10] 3340 	ld	hl, #___str_31
   42FE E3            [19] 3341 	ex	(sp),hl
   42FF CD 50 6E      [17] 3342 	call	_redefineKey
   4302 F1            [10] 3343 	pop	af
   4303 4D            [ 4] 3344 	ld	c,l
   4304 44            [ 4] 3345 	ld	b,h
   4305 ED 43 29 8A   [20] 3346 	ld	(_keys), bc
                           3347 ;src/game.c:908: keys.down  = redefineKey("DOWN");
   4309 21 2C 44      [10] 3348 	ld	hl,#___str_32
   430C E5            [11] 3349 	push	hl
   430D CD 50 6E      [17] 3350 	call	_redefineKey
   4310 F1            [10] 3351 	pop	af
   4311 4D            [ 4] 3352 	ld	c,l
   4312 44            [ 4] 3353 	ld	b,h
   4313 ED 43 2B 8A   [20] 3354 	ld	((_keys + 0x0002)), bc
                           3355 ;src/game.c:909: keys.left  = redefineKey("LEFT");
   4317 21 31 44      [10] 3356 	ld	hl,#___str_33
   431A E5            [11] 3357 	push	hl
   431B CD 50 6E      [17] 3358 	call	_redefineKey
   431E F1            [10] 3359 	pop	af
   431F 4D            [ 4] 3360 	ld	c,l
   4320 44            [ 4] 3361 	ld	b,h
   4321 ED 43 2D 8A   [20] 3362 	ld	((_keys + 0x0004)), bc
                           3363 ;src/game.c:910: keys.right = redefineKey("RIGHT");
   4325 21 36 44      [10] 3364 	ld	hl,#___str_34
   4328 E5            [11] 3365 	push	hl
   4329 CD 50 6E      [17] 3366 	call	_redefineKey
   432C F1            [10] 3367 	pop	af
   432D 4D            [ 4] 3368 	ld	c,l
   432E 44            [ 4] 3369 	ld	b,h
   432F ED 43 2F 8A   [20] 3370 	ld	((_keys + 0x0006)), bc
                           3371 ;src/game.c:911: keys.pause = redefineKey("PAUSE");
   4333 21 3C 44      [10] 3372 	ld	hl,#___str_35
   4336 E5            [11] 3373 	push	hl
   4337 CD 50 6E      [17] 3374 	call	_redefineKey
   433A F1            [10] 3375 	pop	af
   433B 4D            [ 4] 3376 	ld	c,l
   433C 44            [ 4] 3377 	ld	b,h
   433D ED 43 33 8A   [20] 3378 	ld	((_keys + 0x000a)), bc
                           3379 ;src/game.c:912: keys.abort = redefineKey("ABORT");
   4341 21 42 44      [10] 3380 	ld	hl,#___str_36
   4344 E5            [11] 3381 	push	hl
   4345 CD 50 6E      [17] 3382 	call	_redefineKey
   4348 F1            [10] 3383 	pop	af
   4349 4D            [ 4] 3384 	ld	c,l
   434A 44            [ 4] 3385 	ld	b,h
   434B ED 43 35 8A   [20] 3386 	ld	((_keys + 0x000c)), bc
                           3387 ;src/game.c:914: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 39 - 10 * FONT_W, 144);
   434F 21 09 90      [10] 3388 	ld	hl,#0x9009
   4352 E5            [11] 3389 	push	hl
   4353 21 00 C0      [10] 3390 	ld	hl,#0xC000
   4356 E5            [11] 3391 	push	hl
   4357 CD 62 7E      [17] 3392 	call	_cpct_getScreenPtr
                           3393 ;src/game.c:915: cpct_drawSolidBox(pvideo, cpct_px2byteM0(5, 5), 15 * FONT_W, FONT_H);
   435A E5            [11] 3394 	push	hl
   435B 21 05 05      [10] 3395 	ld	hl,#0x0505
   435E E5            [11] 3396 	push	hl
   435F CD 2F 7D      [17] 3397 	call	_cpct_px2byteM0
   4362 55            [ 4] 3398 	ld	d,l
   4363 C1            [10] 3399 	pop	bc
   4364 21 2D 0B      [10] 3400 	ld	hl,#0x0B2D
   4367 E5            [11] 3401 	push	hl
   4368 D5            [11] 3402 	push	de
   4369 33            [ 6] 3403 	inc	sp
   436A C5            [11] 3404 	push	bc
   436B CD 78 7D      [17] 3405 	call	_cpct_drawSolidBox
   436E F1            [10] 3406 	pop	af
   436F F1            [10] 3407 	pop	af
   4370 33            [ 6] 3408 	inc	sp
   4371 C9            [10] 3409 	ret
   4372                    3410 00116$:
                           3411 ;src/game.c:919: else if (cpct_isKeyPressed(Key_2)) {
   4372 21 08 02      [10] 3412 	ld	hl,#0x0208
   4375 CD 31 72      [17] 3413 	call	_cpct_isKeyPressed
   4378 7D            [ 4] 3414 	ld	a,l
   4379 B7            [ 4] 3415 	or	a, a
   437A 28 60         [12] 3416 	jr	Z,00113$
                           3417 ;src/game.c:921: selectedOption = 2;
   437C 21 E9 8A      [10] 3418 	ld	hl,#_selectedOption + 0
   437F 36 02         [10] 3419 	ld	(hl), #0x02
                           3420 ;src/game.c:923: keys.up    = Joy0_Up;
   4381 21 09 01      [10] 3421 	ld	hl,#0x0109
   4384 22 29 8A      [16] 3422 	ld	(_keys), hl
                           3423 ;src/game.c:924: keys.down  = Joy0_Down;
   4387 26 02         [ 7] 3424 	ld	h, #0x02
   4389 22 2B 8A      [16] 3425 	ld	((_keys + 0x0002)), hl
                           3426 ;src/game.c:925: keys.left  = Joy0_Left;
   438C 26 04         [ 7] 3427 	ld	h, #0x04
   438E 22 2D 8A      [16] 3428 	ld	((_keys + 0x0004)), hl
                           3429 ;src/game.c:926: keys.right = Joy0_Right;
   4391 26 08         [ 7] 3430 	ld	h, #0x08
   4393 22 2F 8A      [16] 3431 	ld	((_keys + 0x0006)), hl
                           3432 ;src/game.c:928: waitKeyUp(Key_2);
   4396 21 08 02      [10] 3433 	ld	hl,#0x0208
   4399 E5            [11] 3434 	push	hl
   439A CD 24 6E      [17] 3435 	call	_waitKeyUp
                           3436 ;src/game.c:930: keys.pause = redefineKey("PAUSE");
   439D 21 3C 44      [10] 3437 	ld	hl, #___str_35
   43A0 E3            [19] 3438 	ex	(sp),hl
   43A1 CD 50 6E      [17] 3439 	call	_redefineKey
   43A4 F1            [10] 3440 	pop	af
   43A5 4D            [ 4] 3441 	ld	c,l
   43A6 44            [ 4] 3442 	ld	b,h
   43A7 ED 43 33 8A   [20] 3443 	ld	((_keys + 0x000a)), bc
                           3444 ;src/game.c:931: keys.abort = redefineKey("ABORT");
   43AB 21 42 44      [10] 3445 	ld	hl,#___str_36
   43AE E5            [11] 3446 	push	hl
   43AF CD 50 6E      [17] 3447 	call	_redefineKey
   43B2 F1            [10] 3448 	pop	af
   43B3 4D            [ 4] 3449 	ld	c,l
   43B4 44            [ 4] 3450 	ld	b,h
   43B5 ED 43 35 8A   [20] 3451 	ld	((_keys + 0x000c)), bc
                           3452 ;src/game.c:933: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 39 - 10 * FONT_W, 144);
   43B9 21 09 90      [10] 3453 	ld	hl,#0x9009
   43BC E5            [11] 3454 	push	hl
   43BD 21 00 C0      [10] 3455 	ld	hl,#0xC000
   43C0 E5            [11] 3456 	push	hl
   43C1 CD 62 7E      [17] 3457 	call	_cpct_getScreenPtr
                           3458 ;src/game.c:934: cpct_drawSolidBox(pvideo, cpct_px2byteM0(5, 5), 15 * FONT_W, FONT_H);
   43C4 E5            [11] 3459 	push	hl
   43C5 21 05 05      [10] 3460 	ld	hl,#0x0505
   43C8 E5            [11] 3461 	push	hl
   43C9 CD 2F 7D      [17] 3462 	call	_cpct_px2byteM0
   43CC 55            [ 4] 3463 	ld	d,l
   43CD C1            [10] 3464 	pop	bc
   43CE 21 2D 0B      [10] 3465 	ld	hl,#0x0B2D
   43D1 E5            [11] 3466 	push	hl
   43D2 D5            [11] 3467 	push	de
   43D3 33            [ 6] 3468 	inc	sp
   43D4 C5            [11] 3469 	push	bc
   43D5 CD 78 7D      [17] 3470 	call	_cpct_drawSolidBox
   43D8 F1            [10] 3471 	pop	af
   43D9 F1            [10] 3472 	pop	af
   43DA 33            [ 6] 3473 	inc	sp
   43DB C9            [10] 3474 	ret
   43DC                    3475 00113$:
                           3476 ;src/game.c:937: else if ( cpct_isKeyPressed(Key_3)) {
   43DC 21 07 02      [10] 3477 	ld	hl,#0x0207
   43DF CD 31 72      [17] 3478 	call	_cpct_isKeyPressed
   43E2 7D            [ 4] 3479 	ld	a,l
   43E3 B7            [ 4] 3480 	or	a, a
   43E4 28 22         [12] 3481 	jr	Z,00110$
                           3482 ;src/game.c:938: if (!playing){
   43E6 3A 0A 8B      [13] 3483 	ld	a,(#_playing + 0)
   43E9 B7            [ 4] 3484 	or	a, a
   43EA 20 0D         [12] 3485 	jr	NZ,00105$
                           3486 ;src/game.c:939: playing = 1;
   43EC 21 0A 8B      [10] 3487 	ld	hl,#_playing + 0
   43EF 36 01         [10] 3488 	ld	(hl), #0x01
                           3489 ;src/game.c:940: cpct_setInterruptHandler(myInterruptHandler);
   43F1 21 00 30      [10] 3490 	ld	hl,#_myInterruptHandler
   43F4 CD CA 7E      [17] 3491 	call	_cpct_setInterruptHandler
   43F7 18 0B         [12] 3492 	jr	00106$
   43F9                    3493 00105$:
                           3494 ;src/game.c:942: playing = 0;
   43F9 21 0A 8B      [10] 3495 	ld	hl,#_playing + 0
   43FC 36 00         [10] 3496 	ld	(hl), #0x00
                           3497 ;src/game.c:943: cpct_disableFirmware();
   43FE CD 68 7D      [17] 3498 	call	_cpct_disableFirmware
                           3499 ;src/game.c:944: cpct_akp_stop ();
   4401 CD 18 7A      [17] 3500 	call	_cpct_akp_stop
   4404                    3501 00106$:
                           3502 ;src/game.c:947: drawMenu();
   4404 CD B6 40      [17] 3503 	call	_drawMenu
   4407 C9            [10] 3504 	ret
   4408                    3505 00110$:
                           3506 ;src/game.c:951: else if (cpct_isKeyPressed(Key_4)) {
   4408 21 07 01      [10] 3507 	ld	hl,#0x0107
   440B CD 31 72      [17] 3508 	call	_cpct_isKeyPressed
   440E 7D            [ 4] 3509 	ld	a,l
   440F B7            [ 4] 3510 	or	a, a
   4410 C8            [11] 3511 	ret	Z
                           3512 ;src/game.c:953: waitKeyUp(Key_1);
   4411 21 08 01      [10] 3513 	ld	hl,#0x0108
   4414 E5            [11] 3514 	push	hl
   4415 CD 24 6E      [17] 3515 	call	_waitKeyUp
   4418 F1            [10] 3516 	pop	af
                           3517 ;src/game.c:954: cpct_disableFirmware();
   4419 CD 68 7D      [17] 3518 	call	_cpct_disableFirmware
                           3519 ;src/game.c:955: game();
   441C CD 35 3F      [17] 3520 	call	_game
                           3521 ;src/game.c:956: cpct_setInterruptHandler( myInterruptHandler );
   441F 21 00 30      [10] 3522 	ld	hl,#_myInterruptHandler
   4422 CD CA 7E      [17] 3523 	call	_cpct_setInterruptHandler
                           3524 ;src/game.c:957: drawMenu();
   4425 CD B6 40      [17] 3525 	call	_drawMenu
   4428 C9            [10] 3526 	ret
   4429                    3527 ___str_31:
   4429 55 50              3528 	.ascii "UP"
   442B 00                 3529 	.db 0x00
   442C                    3530 ___str_32:
   442C 44 4F 57 4E        3531 	.ascii "DOWN"
   4430 00                 3532 	.db 0x00
   4431                    3533 ___str_33:
   4431 4C 45 46 54        3534 	.ascii "LEFT"
   4435 00                 3535 	.db 0x00
   4436                    3536 ___str_34:
   4436 52 49 47 48 54     3537 	.ascii "RIGHT"
   443B 00                 3538 	.db 0x00
   443C                    3539 ___str_35:
   443C 50 41 55 53 45     3540 	.ascii "PAUSE"
   4441 00                 3541 	.db 0x00
   4442                    3542 ___str_36:
   4442 41 42 4F 52 54     3543 	.ascii "ABORT"
   4447 00                 3544 	.db 0x00
                           3545 ;src/game.c:961: void threes() {
                           3546 ;	---------------------------------
                           3547 ; Function threes
                           3548 ; ---------------------------------
   4448                    3549 _threes::
                           3550 ;src/game.c:964: cpct_setInterruptHandler( myInterruptHandler );
   4448 21 00 30      [10] 3551 	ld	hl,#_myInterruptHandler
   444B CD CA 7E      [17] 3552 	call	_cpct_setInterruptHandler
                           3553 ;src/game.c:965: while (1) {
   444E                    3554 00105$:
                           3555 ;src/game.c:968: drawMenu();
   444E CD B6 40      [17] 3556 	call	_drawMenu
                           3557 ;src/game.c:972: while (lapso < SWITCH_SCREENS) {
   4451 01 00 00      [10] 3558 	ld	bc,#0x0000
   4454 11 00 00      [10] 3559 	ld	de,#0x0000
   4457                    3560 00101$:
   4457 79            [ 4] 3561 	ld	a,c
   4458 D6 58         [ 7] 3562 	sub	a, #0x58
   445A 78            [ 4] 3563 	ld	a,b
   445B DE 1B         [ 7] 3564 	sbc	a, #0x1B
   445D 7B            [ 4] 3565 	ld	a,e
   445E DE 00         [ 7] 3566 	sbc	a, #0x00
   4460 7A            [ 4] 3567 	ld	a,d
   4461 DE 00         [ 7] 3568 	sbc	a, #0x00
   4463 30 16         [12] 3569 	jr	NC,00103$
                           3570 ;src/game.c:974: cpct_waitVSYNC();
   4465 C5            [11] 3571 	push	bc
   4466 D5            [11] 3572 	push	de
   4467 CD 0C 7D      [17] 3573 	call	_cpct_waitVSYNC
   446A CD 11 42      [17] 3574 	call	_checkKeyboardMenu
   446D D1            [10] 3575 	pop	de
   446E C1            [10] 3576 	pop	bc
                           3577 ;src/game.c:980: lapso++;
   446F 0C            [ 4] 3578 	inc	c
   4470 20 E5         [12] 3579 	jr	NZ,00101$
   4472 04            [ 4] 3580 	inc	b
   4473 20 E2         [12] 3581 	jr	NZ,00101$
   4475 1C            [ 4] 3582 	inc	e
   4476 20 DF         [12] 3583 	jr	NZ,00101$
   4478 14            [ 4] 3584 	inc	d
   4479 18 DC         [12] 3585 	jr	00101$
   447B                    3586 00103$:
                           3587 ;src/game.c:984: drawScoreBoard();
   447B CD E1 3D      [17] 3588 	call	_drawScoreBoard
                           3589 ;src/game.c:987: cpct_disableFirmware();
   447E 18 CE         [12] 3590 	jr	00105$
                           3591 	.area _CODE
                           3592 	.area _INITIALIZER
   8B13                    3593 __xinit__newNameHighScore:
   8B13 20                 3594 	.db #0x20	; 32
   8B14 20                 3595 	.db #0x20	; 32
   8B15 20                 3596 	.db #0x20	; 32
   8B16 20                 3597 	.db #0x20	; 32
   8B17 20                 3598 	.db #0x20	; 32
   8B18 20                 3599 	.db #0x20	; 32
   8B19 20                 3600 	.db #0x20	; 32
   8B1A 20                 3601 	.db #0x20	; 32
   8B1B 20                 3602 	.db #0x20	; 32
   8B1C 20                 3603 	.db #0x20	; 32
   8B1D 00                 3604 	.db #0x00	; 0
   8B1E 00                 3605 	.db 0x00
   8B1F 00                 3606 	.db 0x00
   8B20 00                 3607 	.db 0x00
   8B21 00                 3608 	.db 0x00
   8B22                    3609 __xinit__playing:
   8B22 00                 3610 	.db #0x00	; 0
                           3611 	.area _CABS (ABS)
