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
                             12 	.globl _game
                             13 	.globl _setHighScore
                             14 	.globl _getName
                             15 	.globl _drawScore
                             16 	.globl _printCells
                             17 	.globl _rotateCellsDown
                             18 	.globl _rotateCellsUp
                             19 	.globl _rotateCellsRight
                             20 	.globl _rotateCellsLeft
                             21 	.globl _initGame
                             22 	.globl _initCells
                             23 	.globl _addRandomCell
                             24 	.globl _addRandomCellTurn
                             25 	.globl _anyMovesLeft
                             26 	.globl _anyOfThisInAdjacents
                             27 	.globl _getAdjacents
                             28 	.globl _initAdjacents
                             29 	.globl _countZeroes
                             30 	.globl _delay
                             31 	.globl _renewTileBag
                             32 	.globl _redefineKey
                             33 	.globl _waitKeyUp
                             34 	.globl _wait4UserKeypress
                             35 	.globl _drawFrame
                             36 	.globl _drawMenu
                             37 	.globl _drawFallingText
                             38 	.globl _drawText
                             39 	.globl _drawNumber
                             40 	.globl _clearScreen
                             41 	.globl _cpct_restoreState_mxor_u8
                             42 	.globl _cpct_setSeed_mxor
                             43 	.globl _cpct_getRandom_mxor_u8
                             44 	.globl _cpct_getScreenPtr
                             45 	.globl _cpct_drawSolidBox
                             46 	.globl _cpct_drawSprite
                             47 	.globl _cpct_px2byteM0
                             48 	.globl _cpct_isAnyKeyPressed_f
                             49 	.globl _cpct_isKeyPressed
                             50 	.globl _cpct_scanKeyboard_f
                             51 	.globl _cpct_memset
                             52 	.globl _sprintf
                             53 	.globl _newNameHighScore
                             54 	.globl _maxTiles
                             55 	.globl _currentTile
                             56 	.globl _tileBag
                             57 	.globl _aux_txt
                             58 	.globl _selectedOption
                             59 	.globl _nextTile
                             60 	.globl _nameHallOfFame
                             61 	.globl _scoreHallOfFame
                             62 	.globl _score
                             63 	.globl _adjacents
                             64 	.globl _cells
                             65 	.globl _keys
                             66 	.globl _tiles
                             67 	.globl _scores
                             68 	.globl _values
                             69 	.globl _initialization
                             70 	.globl _drawScoreBoard
                             71 	.globl _threes
                             72 ;--------------------------------------------------------
                             73 ; special function registers
                             74 ;--------------------------------------------------------
                             75 ;--------------------------------------------------------
                             76 ; ram data
                             77 ;--------------------------------------------------------
                             78 	.area _DATA
   9FC8                      79 _keys::
   9FC8                      80 	.ds 14
   9FD6                      81 _cells::
   9FD6                      82 	.ds 16
   9FE6                      83 _adjacents::
   9FE6                      84 	.ds 5
   9FEB                      85 _score::
   9FEB                      86 	.ds 4
   9FEF                      87 _scoreHallOfFame::
   9FEF                      88 	.ds 32
   A00F                      89 _nameHallOfFame::
   A00F                      90 	.ds 120
   A087                      91 _nextTile::
   A087                      92 	.ds 1
   A088                      93 _selectedOption::
   A088                      94 	.ds 1
   A089                      95 _aux_txt::
   A089                      96 	.ds 2
   A08B                      97 _tileBag::
   A08B                      98 	.ds 12
   A097                      99 _currentTile::
   A097                     100 	.ds 1
   A098                     101 _maxTiles::
   A098                     102 	.ds 1
                            103 ;--------------------------------------------------------
                            104 ; ram data
                            105 ;--------------------------------------------------------
                            106 	.area _INITIALIZED
   A09A                     107 _newNameHighScore::
   A09A                     108 	.ds 15
                            109 ;--------------------------------------------------------
                            110 ; absolute external ram data
                            111 ;--------------------------------------------------------
                            112 	.area _DABS (ABS)
                            113 ;--------------------------------------------------------
                            114 ; global & static initialisations
                            115 ;--------------------------------------------------------
                            116 	.area _HOME
                            117 	.area _GSINIT
                            118 	.area _GSFINAL
                            119 	.area _GSINIT
                            120 ;--------------------------------------------------------
                            121 ; Home
                            122 ;--------------------------------------------------------
                            123 	.area _HOME
                            124 	.area _HOME
                            125 ;--------------------------------------------------------
                            126 ; code
                            127 ;--------------------------------------------------------
                            128 	.area _CODE
                            129 ;src/game.c:54: void renewTileBag() {
                            130 ;	---------------------------------
                            131 ; Function renewTileBag
                            132 ; ---------------------------------
   5000                     133 _renewTileBag::
   5000 DD E5         [15]  134 	push	ix
   5002 DD 21 00 00   [14]  135 	ld	ix,#0
   5006 DD 39         [15]  136 	add	ix,sp
   5008 F5            [11]  137 	push	af
   5009 F5            [11]  138 	push	af
                            139 ;src/game.c:59: counters[0] = 0;
   500A 21 00 00      [10]  140 	ld	hl,#0x0000
   500D 39            [11]  141 	add	hl,sp
   500E 4D            [ 4]  142 	ld	c,l
   500F 44            [ 4]  143 	ld	b,h
   5010 AF            [ 4]  144 	xor	a, a
   5011 02            [ 7]  145 	ld	(bc),a
                            146 ;src/game.c:60: counters[1] = 0;
   5012 59            [ 4]  147 	ld	e, c
   5013 50            [ 4]  148 	ld	d, b
   5014 13            [ 6]  149 	inc	de
   5015 AF            [ 4]  150 	xor	a, a
   5016 12            [ 7]  151 	ld	(de),a
                            152 ;src/game.c:61: counters[2] = 0;
   5017 59            [ 4]  153 	ld	e, c
   5018 50            [ 4]  154 	ld	d, b
   5019 13            [ 6]  155 	inc	de
   501A 13            [ 6]  156 	inc	de
   501B AF            [ 4]  157 	xor	a, a
   501C 12            [ 7]  158 	ld	(de),a
                            159 ;src/game.c:64: do
   501D DD 36 FF 00   [19]  160 	ld	-1 (ix),#0x00
   5021                     161 00101$:
                            162 ;src/game.c:65: currentValue = (cpct_rand() / 85) + 1;
   5021 C5            [11]  163 	push	bc
   5022 CD CB 91      [17]  164 	call	_cpct_getRandom_mxor_u8
   5025 55            [ 4]  165 	ld	d,l
   5026 3E 55         [ 7]  166 	ld	a,#0x55
   5028 F5            [11]  167 	push	af
   5029 33            [ 6]  168 	inc	sp
   502A D5            [11]  169 	push	de
   502B 33            [ 6]  170 	inc	sp
   502C CD 67 91      [17]  171 	call	__divuchar
   502F F1            [10]  172 	pop	af
   5030 5D            [ 4]  173 	ld	e,l
   5031 C1            [10]  174 	pop	bc
   5032 1C            [ 4]  175 	inc	e
                            176 ;src/game.c:66: while (counters[currentValue - 1] > 3);
   5033 53            [ 4]  177 	ld	d,e
   5034 15            [ 4]  178 	dec	d
   5035 6A            [ 4]  179 	ld	l,d
   5036 26 00         [ 7]  180 	ld	h,#0x00
   5038 09            [11]  181 	add	hl,bc
   5039 56            [ 7]  182 	ld	d,(hl)
   503A 3E 03         [ 7]  183 	ld	a,#0x03
   503C 92            [ 4]  184 	sub	a, d
   503D 38 E2         [12]  185 	jr	C,00101$
                            186 ;src/game.c:67: counters[currentValue - 1]++;
   503F 14            [ 4]  187 	inc	d
   5040 72            [ 7]  188 	ld	(hl),d
                            189 ;src/game.c:68: tileBag[i] = currentValue;
   5041 3E 8B         [ 7]  190 	ld	a,#<(_tileBag)
   5043 DD 86 FF      [19]  191 	add	a, -1 (ix)
   5046 6F            [ 4]  192 	ld	l,a
   5047 3E A0         [ 7]  193 	ld	a,#>(_tileBag)
   5049 CE 00         [ 7]  194 	adc	a, #0x00
   504B 67            [ 4]  195 	ld	h,a
   504C 73            [ 7]  196 	ld	(hl),e
                            197 ;src/game.c:63: for (i = 0; i < 12; i++) {
   504D DD 34 FF      [23]  198 	inc	-1 (ix)
   5050 DD 7E FF      [19]  199 	ld	a,-1 (ix)
   5053 D6 0C         [ 7]  200 	sub	a, #0x0C
   5055 38 CA         [12]  201 	jr	C,00101$
                            202 ;src/game.c:70: currentTile = 0;
   5057 21 97 A0      [10]  203 	ld	hl,#_currentTile + 0
   505A 36 00         [10]  204 	ld	(hl), #0x00
   505C DD F9         [10]  205 	ld	sp, ix
   505E DD E1         [14]  206 	pop	ix
   5060 C9            [10]  207 	ret
   5061                     208 _values:
   5061 00 00               209 	.dw #0x0000
   5063 01 00               210 	.dw #0x0001
   5065 02 00               211 	.dw #0x0002
   5067 03 00               212 	.dw #0x0003
   5069 06 00               213 	.dw #0x0006
   506B 0C 00               214 	.dw #0x000C
   506D 18 00               215 	.dw #0x0018
   506F 30 00               216 	.dw #0x0030
   5071 60 00               217 	.dw #0x0060
   5073 C0 00               218 	.dw #0x00C0
   5075 80 01               219 	.dw #0x0180
   5077 00 03               220 	.dw #0x0300
   5079 00 06               221 	.dw #0x0600
   507B 00 0C               222 	.dw #0x0C00
   507D 00 18               223 	.dw #0x1800
   507F                     224 _scores:
   507F 00 00 00 00         225 	.byte #0x00,#0x00,#0x00,#0x00	; 0
   5083 00 00 00 00         226 	.byte #0x00,#0x00,#0x00,#0x00	; 0
   5087 00 00 00 00         227 	.byte #0x00,#0x00,#0x00,#0x00	; 0
   508B 03 00 00 00         228 	.byte #0x03,#0x00,#0x00,#0x00	; 3
   508F 09 00 00 00         229 	.byte #0x09,#0x00,#0x00,#0x00	; 9
   5093 1B 00 00 00         230 	.byte #0x1B,#0x00,#0x00,#0x00	; 27
   5097 51 00 00 00         231 	.byte #0x51,#0x00,#0x00,#0x00	; 81
   509B F3 00 00 00         232 	.byte #0xF3,#0x00,#0x00,#0x00	; 243
   509F D9 02 00 00         233 	.byte #0xD9,#0x02,#0x00,#0x00	; 729
   50A3 8B 08 00 00         234 	.byte #0x8B,#0x08,#0x00,#0x00	; 2187
   50A7 A1 19 00 00         235 	.byte #0xA1,#0x19,#0x00,#0x00	; 6561
   50AB E3 4C 00 00         236 	.byte #0xE3,#0x4C,#0x00,#0x00	; 19683
   50AF A9 E6 00 00         237 	.byte #0xA9,#0xE6,#0x00,#0x00	; 59049
   50B3 FB B3 02 00         238 	.byte #0xFB,#0xB3,#0x02,#0x00	; 177147
   50B7 F1 1B 08 00         239 	.byte #0xF1,#0x1B,#0x08,#0x00	; 531441
   50BB                     240 _tiles:
   50BB 8E 6B               241 	.dw _tile_tiles_00
   50BD 1E 6D               242 	.dw _tile_tiles_01
   50BF AE 6E               243 	.dw _tile_tiles_02
   50C1 3E 70               244 	.dw _tile_tiles_03
   50C3 CE 71               245 	.dw _tile_tiles_04
   50C5 5E 73               246 	.dw _tile_tiles_05
   50C7 EE 74               247 	.dw _tile_tiles_06
   50C9 7E 76               248 	.dw _tile_tiles_07
   50CB 0E 78               249 	.dw _tile_tiles_08
   50CD 9E 79               250 	.dw _tile_tiles_09
   50CF 2E 7B               251 	.dw _tile_tiles_10
   50D1 BE 7C               252 	.dw _tile_tiles_11
   50D3 4E 7E               253 	.dw _tile_tiles_12
   50D5 DE 7F               254 	.dw _tile_tiles_13
   50D7 6E 81               255 	.dw _tile_tiles_14
                            256 ;src/game.c:81: void delay(u32 cycles) {
                            257 ;	---------------------------------
                            258 ; Function delay
                            259 ; ---------------------------------
   50D9                     260 _delay::
                            261 ;src/game.c:83: for (i = 0; i < cycles; i++) {
   50D9 01 00 00      [10]  262 	ld	bc,#0x0000
   50DC 11 00 00      [10]  263 	ld	de,#0x0000
   50DF                     264 00103$:
   50DF 21 02 00      [10]  265 	ld	hl,#2
   50E2 39            [11]  266 	add	hl,sp
   50E3 79            [ 4]  267 	ld	a,c
   50E4 96            [ 7]  268 	sub	a, (hl)
   50E5 78            [ 4]  269 	ld	a,b
   50E6 23            [ 6]  270 	inc	hl
   50E7 9E            [ 7]  271 	sbc	a, (hl)
   50E8 7B            [ 4]  272 	ld	a,e
   50E9 23            [ 6]  273 	inc	hl
   50EA 9E            [ 7]  274 	sbc	a, (hl)
   50EB 7A            [ 4]  275 	ld	a,d
   50EC 23            [ 6]  276 	inc	hl
   50ED 9E            [ 7]  277 	sbc	a, (hl)
   50EE D0            [11]  278 	ret	NC
                            279 ;src/game.c:86: __endasm;
   50EF 76            [ 4]  280 	halt
                            281 ;src/game.c:83: for (i = 0; i < cycles; i++) {
   50F0 0C            [ 4]  282 	inc	c
   50F1 20 EC         [12]  283 	jr	NZ,00103$
   50F3 04            [ 4]  284 	inc	b
   50F4 20 E9         [12]  285 	jr	NZ,00103$
   50F6 1C            [ 4]  286 	inc	e
   50F7 20 E6         [12]  287 	jr	NZ,00103$
   50F9 14            [ 4]  288 	inc	d
   50FA 18 E3         [12]  289 	jr	00103$
                            290 ;src/game.c:98: u8 countZeroes() {
                            291 ;	---------------------------------
                            292 ; Function countZeroes
                            293 ; ---------------------------------
   50FC                     294 _countZeroes::
                            295 ;src/game.c:102: count = 0;
   50FC 1E 00         [ 7]  296 	ld	e,#0x00
                            297 ;src/game.c:103: for (i = 0; i < 4; i++) {
   50FE 0E 00         [ 7]  298 	ld	c,#0x00
                            299 ;src/game.c:104: for (j = 0; j < 4; j++) {
   5100                     300 00112$:
   5100 43            [ 4]  301 	ld	b,e
   5101 1E 00         [ 7]  302 	ld	e,#0x00
   5103                     303 00105$:
                            304 ;src/game.c:105: if (cells[i][j] == 0)
   5103 69            [ 4]  305 	ld	l,c
   5104 26 00         [ 7]  306 	ld	h,#0x00
   5106 29            [11]  307 	add	hl, hl
   5107 29            [11]  308 	add	hl, hl
   5108 3E D6         [ 7]  309 	ld	a,#<(_cells)
   510A 85            [ 4]  310 	add	a, l
   510B 6F            [ 4]  311 	ld	l,a
   510C 3E 9F         [ 7]  312 	ld	a,#>(_cells)
   510E 8C            [ 4]  313 	adc	a, h
   510F 67            [ 4]  314 	ld	h,a
   5110 16 00         [ 7]  315 	ld	d,#0x00
   5112 19            [11]  316 	add	hl, de
   5113 7E            [ 7]  317 	ld	a,(hl)
   5114 B7            [ 4]  318 	or	a, a
   5115 20 01         [12]  319 	jr	NZ,00106$
                            320 ;src/game.c:106: count++;
   5117 04            [ 4]  321 	inc	b
   5118                     322 00106$:
                            323 ;src/game.c:104: for (j = 0; j < 4; j++) {
   5118 1C            [ 4]  324 	inc	e
   5119 7B            [ 4]  325 	ld	a,e
   511A D6 04         [ 7]  326 	sub	a, #0x04
   511C 38 E5         [12]  327 	jr	C,00105$
                            328 ;src/game.c:103: for (i = 0; i < 4; i++) {
   511E 58            [ 4]  329 	ld	e,b
   511F 0C            [ 4]  330 	inc	c
   5120 79            [ 4]  331 	ld	a,c
   5121 D6 04         [ 7]  332 	sub	a, #0x04
   5123 38 DB         [12]  333 	jr	C,00112$
                            334 ;src/game.c:109: return count;
   5125 68            [ 4]  335 	ld	l,b
   5126 C9            [10]  336 	ret
                            337 ;src/game.c:122: void initAdjacents() {
                            338 ;	---------------------------------
                            339 ; Function initAdjacents
                            340 ; ---------------------------------
   5127                     341 _initAdjacents::
                            342 ;src/game.c:125: for (i = 0; i < 4; i++) {
   5127 01 E7 9F      [10]  343 	ld	bc,#_adjacents + 1
   512A 1E 00         [ 7]  344 	ld	e,#0x00
   512C                     345 00102$:
                            346 ;src/game.c:126: adjacents.values[i] = 255;
   512C 6B            [ 4]  347 	ld	l,e
   512D 26 00         [ 7]  348 	ld	h,#0x00
   512F 09            [11]  349 	add	hl,bc
   5130 36 FF         [10]  350 	ld	(hl),#0xFF
                            351 ;src/game.c:125: for (i = 0; i < 4; i++) {
   5132 1C            [ 4]  352 	inc	e
   5133 7B            [ 4]  353 	ld	a,e
   5134 D6 04         [ 7]  354 	sub	a, #0x04
   5136 38 F4         [12]  355 	jr	C,00102$
                            356 ;src/game.c:128: adjacents.count = 0;
   5138 21 E6 9F      [10]  357 	ld	hl,#_adjacents
   513B 36 00         [10]  358 	ld	(hl),#0x00
   513D C9            [10]  359 	ret
                            360 ;src/game.c:139: void getAdjacents(u8 i, u8 j) {
                            361 ;	---------------------------------
                            362 ; Function getAdjacents
                            363 ; ---------------------------------
   513E                     364 _getAdjacents::
   513E DD E5         [15]  365 	push	ix
   5140 DD 21 00 00   [14]  366 	ld	ix,#0
   5144 DD 39         [15]  367 	add	ix,sp
   5146 F5            [11]  368 	push	af
   5147 3B            [ 6]  369 	dec	sp
                            370 ;src/game.c:142: initAdjacents();
   5148 CD 27 51      [17]  371 	call	_initAdjacents
                            372 ;src/game.c:144: count = 0;
   514B DD 36 FD 00   [19]  373 	ld	-3 (ix),#0x00
                            374 ;src/game.c:146: adjacents.values[count] = cells [i - 1][j];
   514F DD 4E 05      [19]  375 	ld	c,5 (ix)
                            376 ;src/game.c:145: if (i != 0) {
   5152 DD 7E 04      [19]  377 	ld	a,4 (ix)
   5155 B7            [ 4]  378 	or	a, a
   5156 28 19         [12]  379 	jr	Z,00102$
                            380 ;src/game.c:146: adjacents.values[count] = cells [i - 1][j];
   5158 11 D6 9F      [10]  381 	ld	de,#_cells+0
   515B DD 6E 04      [19]  382 	ld	l,4 (ix)
   515E 2D            [ 4]  383 	dec	l
   515F 26 00         [ 7]  384 	ld	h,#0x00
   5161 29            [11]  385 	add	hl, hl
   5162 29            [11]  386 	add	hl, hl
   5163 19            [11]  387 	add	hl,de
   5164 59            [ 4]  388 	ld	e,c
   5165 16 00         [ 7]  389 	ld	d,#0x00
   5167 19            [11]  390 	add	hl,de
   5168 46            [ 7]  391 	ld	b,(hl)
   5169 21 E7 9F      [10]  392 	ld	hl,#(_adjacents + 0x0001)
   516C 70            [ 7]  393 	ld	(hl),b
                            394 ;src/game.c:147: count++;
   516D DD 36 FD 01   [19]  395 	ld	-3 (ix),#0x01
   5171                     396 00102$:
                            397 ;src/game.c:150: adjacents.values[count] = cells [i][j + 1];
   5171 DD 6E 04      [19]  398 	ld	l,4 (ix)
   5174 26 00         [ 7]  399 	ld	h,#0x00
   5176 29            [11]  400 	add	hl, hl
   5177 29            [11]  401 	add	hl, hl
   5178 DD 75 FE      [19]  402 	ld	-2 (ix),l
   517B DD 74 FF      [19]  403 	ld	-1 (ix),h
                            404 ;src/game.c:149: if (j != 3) {
   517E DD 7E 05      [19]  405 	ld	a,5 (ix)
   5181 D6 03         [ 7]  406 	sub	a, #0x03
   5183 28 27         [12]  407 	jr	Z,00104$
                            408 ;src/game.c:150: adjacents.values[count] = cells [i][j + 1];
   5185 DD 7E FD      [19]  409 	ld	a,-3 (ix)
   5188 C6 E7         [ 7]  410 	add	a, #<((_adjacents + 0x0001))
   518A 5F            [ 4]  411 	ld	e,a
   518B 3E 00         [ 7]  412 	ld	a,#0x00
   518D CE 9F         [ 7]  413 	adc	a, #>((_adjacents + 0x0001))
   518F 57            [ 4]  414 	ld	d,a
   5190 DD 7E FE      [19]  415 	ld	a,-2 (ix)
   5193 C6 D6         [ 7]  416 	add	a, #<(_cells)
   5195 6F            [ 4]  417 	ld	l,a
   5196 DD 7E FF      [19]  418 	ld	a,-1 (ix)
   5199 CE 9F         [ 7]  419 	adc	a, #>(_cells)
   519B 67            [ 4]  420 	ld	h,a
   519C DD 46 05      [19]  421 	ld	b,5 (ix)
   519F 04            [ 4]  422 	inc	b
   51A0 78            [ 4]  423 	ld	a,b
   51A1 85            [ 4]  424 	add	a, l
   51A2 6F            [ 4]  425 	ld	l,a
   51A3 3E 00         [ 7]  426 	ld	a,#0x00
   51A5 8C            [ 4]  427 	adc	a, h
   51A6 67            [ 4]  428 	ld	h,a
   51A7 7E            [ 7]  429 	ld	a,(hl)
   51A8 12            [ 7]  430 	ld	(de),a
                            431 ;src/game.c:151: count++;
   51A9 DD 34 FD      [23]  432 	inc	-3 (ix)
   51AC                     433 00104$:
                            434 ;src/game.c:153: if (i != 3) {
   51AC DD 7E 04      [19]  435 	ld	a,4 (ix)
   51AF D6 03         [ 7]  436 	sub	a, #0x03
   51B1 28 23         [12]  437 	jr	Z,00106$
                            438 ;src/game.c:154: adjacents.values[count] = cells [i + 1][j];
   51B3 DD 7E FD      [19]  439 	ld	a,-3 (ix)
   51B6 C6 E7         [ 7]  440 	add	a, #<((_adjacents + 0x0001))
   51B8 5F            [ 4]  441 	ld	e,a
   51B9 3E 00         [ 7]  442 	ld	a,#0x00
   51BB CE 9F         [ 7]  443 	adc	a, #>((_adjacents + 0x0001))
   51BD 57            [ 4]  444 	ld	d,a
   51BE DD 6E 04      [19]  445 	ld	l,4 (ix)
   51C1 2C            [ 4]  446 	inc	l
   51C2 26 00         [ 7]  447 	ld	h,#0x00
   51C4 29            [11]  448 	add	hl, hl
   51C5 29            [11]  449 	add	hl, hl
   51C6 3E D6         [ 7]  450 	ld	a,#<(_cells)
   51C8 85            [ 4]  451 	add	a, l
   51C9 6F            [ 4]  452 	ld	l,a
   51CA 3E 9F         [ 7]  453 	ld	a,#>(_cells)
   51CC 8C            [ 4]  454 	adc	a, h
   51CD 67            [ 4]  455 	ld	h,a
   51CE 06 00         [ 7]  456 	ld	b,#0x00
   51D0 09            [11]  457 	add	hl,bc
   51D1 7E            [ 7]  458 	ld	a,(hl)
   51D2 12            [ 7]  459 	ld	(de),a
                            460 ;src/game.c:155: count++;
   51D3 DD 34 FD      [23]  461 	inc	-3 (ix)
   51D6                     462 00106$:
                            463 ;src/game.c:157: if (j != 0) {
   51D6 DD 7E 05      [19]  464 	ld	a,5 (ix)
   51D9 B7            [ 4]  465 	or	a, a
   51DA 28 21         [12]  466 	jr	Z,00108$
                            467 ;src/game.c:158: adjacents.values[count] = cells [i][j - 1];
   51DC DD 7E FD      [19]  468 	ld	a,-3 (ix)
   51DF C6 E7         [ 7]  469 	add	a, #<((_adjacents + 0x0001))
   51E1 4F            [ 4]  470 	ld	c,a
   51E2 3E 00         [ 7]  471 	ld	a,#0x00
   51E4 CE 9F         [ 7]  472 	adc	a, #>((_adjacents + 0x0001))
   51E6 47            [ 4]  473 	ld	b,a
   51E7 11 D6 9F      [10]  474 	ld	de,#_cells+0
   51EA DD 6E FE      [19]  475 	ld	l,-2 (ix)
   51ED DD 66 FF      [19]  476 	ld	h,-1 (ix)
   51F0 19            [11]  477 	add	hl,de
   51F1 DD 5E 05      [19]  478 	ld	e,5 (ix)
   51F4 1D            [ 4]  479 	dec	e
   51F5 16 00         [ 7]  480 	ld	d,#0x00
   51F7 19            [11]  481 	add	hl,de
   51F8 7E            [ 7]  482 	ld	a,(hl)
   51F9 02            [ 7]  483 	ld	(bc),a
                            484 ;src/game.c:159: count++;
   51FA DD 34 FD      [23]  485 	inc	-3 (ix)
   51FD                     486 00108$:
                            487 ;src/game.c:162: adjacents.count = count;
   51FD 21 E6 9F      [10]  488 	ld	hl,#_adjacents
   5200 DD 7E FD      [19]  489 	ld	a,-3 (ix)
   5203 77            [ 7]  490 	ld	(hl),a
   5204 DD F9         [10]  491 	ld	sp, ix
   5206 DD E1         [14]  492 	pop	ix
   5208 C9            [10]  493 	ret
                            494 ;src/game.c:173: u8 anyOfThisInAdjacents(u8 value) {
                            495 ;	---------------------------------
                            496 ; Function anyOfThisInAdjacents
                            497 ; ---------------------------------
   5209                     498 _anyOfThisInAdjacents::
   5209 DD E5         [15]  499 	push	ix
   520B DD 21 00 00   [14]  500 	ld	ix,#0
   520F DD 39         [15]  501 	add	ix,sp
                            502 ;src/game.c:177: result = 0;
   5211 0E 00         [ 7]  503 	ld	c,#0x00
                            504 ;src/game.c:178: for (i = 0; i < adjacents.count; i++) {
   5213 1E 00         [ 7]  505 	ld	e,#0x00
   5215                     506 00105$:
   5215 21 E6 9F      [10]  507 	ld	hl, #_adjacents + 0
   5218 46            [ 7]  508 	ld	b,(hl)
   5219 7B            [ 4]  509 	ld	a,e
   521A 90            [ 4]  510 	sub	a, b
   521B 30 13         [12]  511 	jr	NC,00103$
                            512 ;src/game.c:179: if (adjacents.values[i] == value) {
   521D 21 E7 9F      [10]  513 	ld	hl,#(_adjacents + 0x0001)
   5220 16 00         [ 7]  514 	ld	d,#0x00
   5222 19            [11]  515 	add	hl, de
   5223 DD 7E 04      [19]  516 	ld	a,4 (ix)
   5226 96            [ 7]  517 	sub	a,(hl)
   5227 20 04         [12]  518 	jr	NZ,00106$
                            519 ;src/game.c:180: result = 1;
   5229 0E 01         [ 7]  520 	ld	c,#0x01
                            521 ;src/game.c:181: break;
   522B 18 03         [12]  522 	jr	00103$
   522D                     523 00106$:
                            524 ;src/game.c:178: for (i = 0; i < adjacents.count; i++) {
   522D 1C            [ 4]  525 	inc	e
   522E 18 E5         [12]  526 	jr	00105$
   5230                     527 00103$:
                            528 ;src/game.c:184: return result;
   5230 69            [ 4]  529 	ld	l,c
   5231 DD E1         [14]  530 	pop	ix
   5233 C9            [10]  531 	ret
                            532 ;src/game.c:195: u8 anyMovesLeft() {
                            533 ;	---------------------------------
                            534 ; Function anyMovesLeft
                            535 ; ---------------------------------
   5234                     536 _anyMovesLeft::
                            537 ;src/game.c:199: movesLeft = 0;
   5234 0E 00         [ 7]  538 	ld	c,#0x00
                            539 ;src/game.c:201: if (countZeroes() == 0) {
   5236 C5            [11]  540 	push	bc
   5237 CD FC 50      [17]  541 	call	_countZeroes
   523A C1            [10]  542 	pop	bc
   523B 7D            [ 4]  543 	ld	a,l
                            544 ;src/game.c:202: for (i = 0; i < 4; i++) {
   523C B7            [ 4]  545 	or	a,a
   523D C2 B7 52      [10]  546 	jp	NZ,00113$
   5240 47            [ 4]  547 	ld	b,a
                            548 ;src/game.c:203: for (j = 0; j < 4; j++) {
   5241                     549 00125$:
   5241 1E 00         [ 7]  550 	ld	e,#0x00
   5243                     551 00115$:
                            552 ;src/game.c:204: getAdjacents(i, j);
   5243 C5            [11]  553 	push	bc
   5244 D5            [11]  554 	push	de
   5245 7B            [ 4]  555 	ld	a,e
   5246 F5            [11]  556 	push	af
   5247 33            [ 6]  557 	inc	sp
   5248 C5            [11]  558 	push	bc
   5249 33            [ 6]  559 	inc	sp
   524A CD 3E 51      [17]  560 	call	_getAdjacents
   524D F1            [10]  561 	pop	af
   524E D1            [10]  562 	pop	de
   524F C1            [10]  563 	pop	bc
                            564 ;src/game.c:205: if (((cells[i][j] == 1) && anyOfThisInAdjacents(2)) ||
   5250 68            [ 4]  565 	ld	l,b
   5251 26 00         [ 7]  566 	ld	h,#0x00
   5253 29            [11]  567 	add	hl, hl
   5254 29            [11]  568 	add	hl, hl
   5255 3E D6         [ 7]  569 	ld	a,#<(_cells)
   5257 85            [ 4]  570 	add	a, l
   5258 6F            [ 4]  571 	ld	l,a
   5259 3E 9F         [ 7]  572 	ld	a,#>(_cells)
   525B 8C            [ 4]  573 	adc	a, h
   525C 67            [ 4]  574 	ld	h,a
   525D 16 00         [ 7]  575 	ld	d,#0x00
   525F 19            [11]  576 	add	hl, de
   5260 56            [ 7]  577 	ld	d,(hl)
   5261 15            [ 4]  578 	dec	d
   5262 20 12         [12]  579 	jr	NZ,00105$
   5264 E5            [11]  580 	push	hl
   5265 C5            [11]  581 	push	bc
   5266 D5            [11]  582 	push	de
   5267 3E 02         [ 7]  583 	ld	a,#0x02
   5269 F5            [11]  584 	push	af
   526A 33            [ 6]  585 	inc	sp
   526B CD 09 52      [17]  586 	call	_anyOfThisInAdjacents
   526E 33            [ 6]  587 	inc	sp
   526F 7D            [ 4]  588 	ld	a,l
   5270 D1            [10]  589 	pop	de
   5271 C1            [10]  590 	pop	bc
   5272 E1            [10]  591 	pop	hl
   5273 B7            [ 4]  592 	or	a, a
   5274 20 2B         [12]  593 	jr	NZ,00101$
   5276                     594 00105$:
                            595 ;src/game.c:206: ((cells[i][j] == 2) && anyOfThisInAdjacents(1)) ||
   5276 7E            [ 7]  596 	ld	a,(hl)
   5277 D6 02         [ 7]  597 	sub	a, #0x02
   5279 20 12         [12]  598 	jr	NZ,00107$
   527B E5            [11]  599 	push	hl
   527C C5            [11]  600 	push	bc
   527D D5            [11]  601 	push	de
   527E 3E 01         [ 7]  602 	ld	a,#0x01
   5280 F5            [11]  603 	push	af
   5281 33            [ 6]  604 	inc	sp
   5282 CD 09 52      [17]  605 	call	_anyOfThisInAdjacents
   5285 33            [ 6]  606 	inc	sp
   5286 7D            [ 4]  607 	ld	a,l
   5287 D1            [10]  608 	pop	de
   5288 C1            [10]  609 	pop	bc
   5289 E1            [10]  610 	pop	hl
   528A B7            [ 4]  611 	or	a, a
   528B 20 14         [12]  612 	jr	NZ,00101$
   528D                     613 00107$:
                            614 ;src/game.c:207: ((cells[i][j] > 2) && anyOfThisInAdjacents(cells[i][j]))) {
   528D 56            [ 7]  615 	ld	d,(hl)
   528E 3E 02         [ 7]  616 	ld	a,#0x02
   5290 92            [ 4]  617 	sub	a, d
   5291 30 12         [12]  618 	jr	NC,00116$
   5293 C5            [11]  619 	push	bc
   5294 D5            [11]  620 	push	de
   5295 D5            [11]  621 	push	de
   5296 33            [ 6]  622 	inc	sp
   5297 CD 09 52      [17]  623 	call	_anyOfThisInAdjacents
   529A 33            [ 6]  624 	inc	sp
   529B D1            [10]  625 	pop	de
   529C C1            [10]  626 	pop	bc
   529D 7D            [ 4]  627 	ld	a,l
   529E B7            [ 4]  628 	or	a, a
   529F 28 04         [12]  629 	jr	Z,00116$
   52A1                     630 00101$:
                            631 ;src/game.c:208: movesLeft = 1;
   52A1 0E 01         [ 7]  632 	ld	c,#0x01
                            633 ;src/game.c:209: break;
   52A3 18 06         [12]  634 	jr	00108$
   52A5                     635 00116$:
                            636 ;src/game.c:203: for (j = 0; j < 4; j++) {
   52A5 1C            [ 4]  637 	inc	e
   52A6 7B            [ 4]  638 	ld	a,e
   52A7 D6 04         [ 7]  639 	sub	a, #0x04
   52A9 38 98         [12]  640 	jr	C,00115$
   52AB                     641 00108$:
                            642 ;src/game.c:212: if (movesLeft)
   52AB 79            [ 4]  643 	ld	a,c
   52AC B7            [ 4]  644 	or	a, a
   52AD 20 0A         [12]  645 	jr	NZ,00114$
                            646 ;src/game.c:202: for (i = 0; i < 4; i++) {
   52AF 04            [ 4]  647 	inc	b
   52B0 78            [ 4]  648 	ld	a,b
   52B1 D6 04         [ 7]  649 	sub	a, #0x04
   52B3 38 8C         [12]  650 	jr	C,00125$
   52B5 18 02         [12]  651 	jr	00114$
   52B7                     652 00113$:
                            653 ;src/game.c:217: movesLeft = 1;
   52B7 0E 01         [ 7]  654 	ld	c,#0x01
   52B9                     655 00114$:
                            656 ;src/game.c:218: return movesLeft;
   52B9 69            [ 4]  657 	ld	l,c
   52BA C9            [10]  658 	ret
                            659 ;src/game.c:229: void addRandomCellTurn(u8 dir) {
                            660 ;	---------------------------------
                            661 ; Function addRandomCellTurn
                            662 ; ---------------------------------
   52BB                     663 _addRandomCellTurn::
   52BB DD E5         [15]  664 	push	ix
   52BD DD 21 00 00   [14]  665 	ld	ix,#0
   52C1 DD 39         [15]  666 	add	ix,sp
   52C3 F5            [11]  667 	push	af
                            668 ;src/game.c:230: u8 i = 0;
   52C4 DD 36 FF 00   [19]  669 	ld	-1 (ix),#0x00
                            670 ;src/game.c:231: u8 j = 0;
   52C8 0E 00         [ 7]  671 	ld	c,#0x00
                            672 ;src/game.c:234: switch (dir) {
   52CA 3E 03         [ 7]  673 	ld	a,#0x03
   52CC DD 96 04      [19]  674 	sub	a, 4 (ix)
   52CF 38 25         [12]  675 	jr	C,00105$
   52D1 DD 5E 04      [19]  676 	ld	e,4 (ix)
   52D4 16 00         [ 7]  677 	ld	d,#0x00
   52D6 21 DC 52      [10]  678 	ld	hl,#00146$
   52D9 19            [11]  679 	add	hl,de
   52DA 19            [11]  680 	add	hl,de
                            681 ;src/game.c:235: case LEFT:
   52DB E9            [ 4]  682 	jp	(hl)
   52DC                     683 00146$:
   52DC 18 06         [12]  684 	jr	00101$
   52DE 18 08         [12]  685 	jr	00102$
   52E0 18 0A         [12]  686 	jr	00103$
   52E2 18 0E         [12]  687 	jr	00104$
   52E4                     688 00101$:
                            689 ;src/game.c:236: j = 3;
   52E4 0E 03         [ 7]  690 	ld	c,#0x03
                            691 ;src/game.c:237: break;
   52E6 18 0E         [12]  692 	jr	00105$
                            693 ;src/game.c:238: case RIGHT:
   52E8                     694 00102$:
                            695 ;src/game.c:239: j = 0;
   52E8 0E 00         [ 7]  696 	ld	c,#0x00
                            697 ;src/game.c:240: break;
   52EA 18 0A         [12]  698 	jr	00105$
                            699 ;src/game.c:241: case UP:
   52EC                     700 00103$:
                            701 ;src/game.c:242: i = 3;
   52EC DD 36 FF 03   [19]  702 	ld	-1 (ix),#0x03
                            703 ;src/game.c:243: break;
   52F0 18 04         [12]  704 	jr	00105$
                            705 ;src/game.c:244: case DOWN:
   52F2                     706 00104$:
                            707 ;src/game.c:245: i = 0;
   52F2 DD 36 FF 00   [19]  708 	ld	-1 (ix),#0x00
                            709 ;src/game.c:247: }
   52F6                     710 00105$:
                            711 ;src/game.c:248: if ((dir == LEFT) || (dir == RIGHT))
   52F6 DD 7E 04      [19]  712 	ld	a,4 (ix)
   52F9 3D            [ 4]  713 	dec	a
   52FA 20 04         [12]  714 	jr	NZ,00147$
   52FC 3E 01         [ 7]  715 	ld	a,#0x01
   52FE 18 01         [12]  716 	jr	00148$
   5300                     717 00147$:
   5300 AF            [ 4]  718 	xor	a,a
   5301                     719 00148$:
   5301 47            [ 4]  720 	ld	b,a
   5302 DD 7E 04      [19]  721 	ld	a,4 (ix)
   5305 B7            [ 4]  722 	or	a, a
   5306 28 04         [12]  723 	jr	Z,00106$
   5308 78            [ 4]  724 	ld	a,b
   5309 B7            [ 4]  725 	or	a, a
   530A 28 0F         [12]  726 	jr	Z,00107$
   530C                     727 00106$:
                            728 ;src/game.c:249: i = cpct_rand() / 64;
   530C C5            [11]  729 	push	bc
   530D CD CB 91      [17]  730 	call	_cpct_getRandom_mxor_u8
   5310 C1            [10]  731 	pop	bc
   5311 7D            [ 4]  732 	ld	a,l
   5312 07            [ 4]  733 	rlca
   5313 07            [ 4]  734 	rlca
   5314 E6 03         [ 7]  735 	and	a,#0x03
   5316 DD 77 FF      [19]  736 	ld	-1 (ix),a
   5319 18 0B         [12]  737 	jr	00126$
   531B                     738 00107$:
                            739 ;src/game.c:251: j = cpct_rand() / 64;
   531B C5            [11]  740 	push	bc
   531C CD CB 91      [17]  741 	call	_cpct_getRandom_mxor_u8
   531F C1            [10]  742 	pop	bc
   5320 7D            [ 4]  743 	ld	a,l
   5321 07            [ 4]  744 	rlca
   5322 07            [ 4]  745 	rlca
   5323 E6 03         [ 7]  746 	and	a,#0x03
   5325 4F            [ 4]  747 	ld	c,a
                            748 ;src/game.c:252: while (cells[i][j] != 0) {
   5326                     749 00126$:
   5326 DD 70 FE      [19]  750 	ld	-2 (ix),b
   5329                     751 00114$:
   5329 DD 6E FF      [19]  752 	ld	l,-1 (ix)
   532C 26 00         [ 7]  753 	ld	h,#0x00
   532E 29            [11]  754 	add	hl, hl
   532F 29            [11]  755 	add	hl, hl
   5330 11 D6 9F      [10]  756 	ld	de,#_cells
   5333 19            [11]  757 	add	hl,de
   5334 7D            [ 4]  758 	ld	a,l
   5335 81            [ 4]  759 	add	a, c
   5336 5F            [ 4]  760 	ld	e,a
   5337 7C            [ 4]  761 	ld	a,h
   5338 CE 00         [ 7]  762 	adc	a, #0x00
   533A 57            [ 4]  763 	ld	d,a
   533B 1A            [ 7]  764 	ld	a,(de)
   533C B7            [ 4]  765 	or	a, a
   533D 28 26         [12]  766 	jr	Z,00116$
                            767 ;src/game.c:253: if ((dir == LEFT) || (dir == RIGHT))
   533F DD 7E 04      [19]  768 	ld	a,4 (ix)
   5342 B7            [ 4]  769 	or	a, a
   5343 28 06         [12]  770 	jr	Z,00110$
   5345 DD 7E FE      [19]  771 	ld	a,-2 (ix)
   5348 B7            [ 4]  772 	or	a, a
   5349 28 0F         [12]  773 	jr	Z,00111$
   534B                     774 00110$:
                            775 ;src/game.c:254: i = cpct_rand() / 64;
   534B C5            [11]  776 	push	bc
   534C CD CB 91      [17]  777 	call	_cpct_getRandom_mxor_u8
   534F C1            [10]  778 	pop	bc
   5350 7D            [ 4]  779 	ld	a,l
   5351 07            [ 4]  780 	rlca
   5352 07            [ 4]  781 	rlca
   5353 E6 03         [ 7]  782 	and	a,#0x03
   5355 DD 77 FF      [19]  783 	ld	-1 (ix),a
   5358 18 CF         [12]  784 	jr	00114$
   535A                     785 00111$:
                            786 ;src/game.c:256: j = cpct_rand() / 64;
   535A CD CB 91      [17]  787 	call	_cpct_getRandom_mxor_u8
   535D 7D            [ 4]  788 	ld	a,l
   535E 07            [ 4]  789 	rlca
   535F 07            [ 4]  790 	rlca
   5360 E6 03         [ 7]  791 	and	a,#0x03
   5362 4F            [ 4]  792 	ld	c,a
   5363 18 C4         [12]  793 	jr	00114$
   5365                     794 00116$:
                            795 ;src/game.c:260: cells[i][j] = tileBag[currentTile];
   5365 3A 97 A0      [13]  796 	ld	a,(#_currentTile + 0)
   5368 C6 8B         [ 7]  797 	add	a, #<(_tileBag)
   536A 4F            [ 4]  798 	ld	c,a
   536B 3E 00         [ 7]  799 	ld	a,#0x00
   536D CE A0         [ 7]  800 	adc	a, #>(_tileBag)
   536F 47            [ 4]  801 	ld	b,a
   5370 0A            [ 7]  802 	ld	a,(bc)
   5371 12            [ 7]  803 	ld	(de),a
                            804 ;src/game.c:261: if (currentTile<11)
   5372 3A 97 A0      [13]  805 	ld	a,(#_currentTile + 0)
   5375 D6 0B         [ 7]  806 	sub	a, #0x0B
   5377 30 06         [12]  807 	jr	NC,00118$
                            808 ;src/game.c:262: currentTile++;
   5379 21 97 A0      [10]  809 	ld	hl, #_currentTile+0
   537C 34            [11]  810 	inc	(hl)
   537D 18 03         [12]  811 	jr	00120$
   537F                     812 00118$:
                            813 ;src/game.c:264: renewTileBag();
   537F CD 00 50      [17]  814 	call	_renewTileBag
   5382                     815 00120$:
   5382 DD F9         [10]  816 	ld	sp, ix
   5384 DD E1         [14]  817 	pop	ix
   5386 C9            [10]  818 	ret
                            819 ;src/game.c:275: void addRandomCell() {
                            820 ;	---------------------------------
                            821 ; Function addRandomCell
                            822 ; ---------------------------------
   5387                     823 _addRandomCell::
                            824 ;src/game.c:278: i = cpct_rand() / 64;
   5387 CD CB 91      [17]  825 	call	_cpct_getRandom_mxor_u8
   538A 7D            [ 4]  826 	ld	a,l
   538B 07            [ 4]  827 	rlca
   538C 07            [ 4]  828 	rlca
   538D E6 03         [ 7]  829 	and	a,#0x03
   538F 4F            [ 4]  830 	ld	c,a
                            831 ;src/game.c:279: j = cpct_rand() / 64;
   5390 C5            [11]  832 	push	bc
   5391 CD CB 91      [17]  833 	call	_cpct_getRandom_mxor_u8
   5394 C1            [10]  834 	pop	bc
   5395 7D            [ 4]  835 	ld	a,l
   5396 07            [ 4]  836 	rlca
   5397 07            [ 4]  837 	rlca
   5398 E6 03         [ 7]  838 	and	a,#0x03
   539A 47            [ 4]  839 	ld	b,a
                            840 ;src/game.c:280: while (cells[i][j] != 0) {
   539B                     841 00101$:
   539B 69            [ 4]  842 	ld	l,c
   539C 26 00         [ 7]  843 	ld	h,#0x00
   539E 29            [11]  844 	add	hl, hl
   539F 29            [11]  845 	add	hl, hl
   53A0 11 D6 9F      [10]  846 	ld	de,#_cells
   53A3 19            [11]  847 	add	hl,de
   53A4 7D            [ 4]  848 	ld	a,l
   53A5 80            [ 4]  849 	add	a, b
   53A6 4F            [ 4]  850 	ld	c,a
   53A7 7C            [ 4]  851 	ld	a,h
   53A8 CE 00         [ 7]  852 	adc	a, #0x00
   53AA 47            [ 4]  853 	ld	b,a
   53AB 0A            [ 7]  854 	ld	a,(bc)
   53AC B7            [ 4]  855 	or	a, a
   53AD 28 16         [12]  856 	jr	Z,00103$
                            857 ;src/game.c:281: i = cpct_rand() / 64;
   53AF CD CB 91      [17]  858 	call	_cpct_getRandom_mxor_u8
   53B2 7D            [ 4]  859 	ld	a,l
   53B3 07            [ 4]  860 	rlca
   53B4 07            [ 4]  861 	rlca
   53B5 E6 03         [ 7]  862 	and	a,#0x03
   53B7 4F            [ 4]  863 	ld	c,a
                            864 ;src/game.c:282: j = cpct_rand() / 64;
   53B8 C5            [11]  865 	push	bc
   53B9 CD CB 91      [17]  866 	call	_cpct_getRandom_mxor_u8
   53BC C1            [10]  867 	pop	bc
   53BD 7D            [ 4]  868 	ld	a,l
   53BE 07            [ 4]  869 	rlca
   53BF 07            [ 4]  870 	rlca
   53C0 E6 03         [ 7]  871 	and	a,#0x03
   53C2 47            [ 4]  872 	ld	b,a
   53C3 18 D6         [12]  873 	jr	00101$
   53C5                     874 00103$:
                            875 ;src/game.c:286: cells[i][j] = (cpct_rand() / 85) + 1;
   53C5 C5            [11]  876 	push	bc
   53C6 CD CB 91      [17]  877 	call	_cpct_getRandom_mxor_u8
   53C9 55            [ 4]  878 	ld	d,l
   53CA 3E 55         [ 7]  879 	ld	a,#0x55
   53CC F5            [11]  880 	push	af
   53CD 33            [ 6]  881 	inc	sp
   53CE D5            [11]  882 	push	de
   53CF 33            [ 6]  883 	inc	sp
   53D0 CD 67 91      [17]  884 	call	__divuchar
   53D3 F1            [10]  885 	pop	af
   53D4 C1            [10]  886 	pop	bc
   53D5 7D            [ 4]  887 	ld	a,l
   53D6 3C            [ 4]  888 	inc	a
   53D7 02            [ 7]  889 	ld	(bc),a
   53D8 C9            [10]  890 	ret
                            891 ;src/game.c:297: void initCells() {
                            892 ;	---------------------------------
                            893 ; Function initCells
                            894 ; ---------------------------------
   53D9                     895 _initCells::
                            896 ;src/game.c:300: for (i = 0; i < 4; i++) {
   53D9 0E 00         [ 7]  897 	ld	c,#0x00
                            898 ;src/game.c:301: for (j = 0; j < 4; j++) {
   53DB                     899 00109$:
   53DB 06 00         [ 7]  900 	ld	b,#0x00
   53DD                     901 00103$:
                            902 ;src/game.c:302: cells[i][j] = 0;
   53DD 69            [ 4]  903 	ld	l,c
   53DE 26 00         [ 7]  904 	ld	h,#0x00
   53E0 29            [11]  905 	add	hl, hl
   53E1 29            [11]  906 	add	hl, hl
   53E2 11 D6 9F      [10]  907 	ld	de,#_cells
   53E5 19            [11]  908 	add	hl,de
   53E6 58            [ 4]  909 	ld	e,b
   53E7 16 00         [ 7]  910 	ld	d,#0x00
   53E9 19            [11]  911 	add	hl,de
   53EA 36 00         [10]  912 	ld	(hl),#0x00
                            913 ;src/game.c:301: for (j = 0; j < 4; j++) {
   53EC 04            [ 4]  914 	inc	b
   53ED 78            [ 4]  915 	ld	a,b
   53EE D6 04         [ 7]  916 	sub	a, #0x04
   53F0 38 EB         [12]  917 	jr	C,00103$
                            918 ;src/game.c:300: for (i = 0; i < 4; i++) {
   53F2 0C            [ 4]  919 	inc	c
   53F3 79            [ 4]  920 	ld	a,c
   53F4 D6 04         [ 7]  921 	sub	a, #0x04
   53F6 38 E3         [12]  922 	jr	C,00109$
   53F8 C9            [10]  923 	ret
                            924 ;src/game.c:316: void initialization() {
                            925 ;	---------------------------------
                            926 ; Function initialization
                            927 ; ---------------------------------
   53F9                     928 _initialization::
                            929 ;src/game.c:319: drawText("THREES IS READY", 31, 76, 1);
   53F9 21 4C 01      [10]  930 	ld	hl,#0x014C
   53FC E5            [11]  931 	push	hl
   53FD 3E 1F         [ 7]  932 	ld	a,#0x1F
   53FF F5            [11]  933 	push	af
   5400 33            [ 6]  934 	inc	sp
   5401 21 21 55      [10]  935 	ld	hl,#___str_0
   5404 E5            [11]  936 	push	hl
   5405 CD 6D 85      [17]  937 	call	_drawText
   5408 F1            [10]  938 	pop	af
                            939 ;src/game.c:320: drawText("PRESS ANY KEY", 20, 90, 1);
   5409 33            [ 6]  940 	inc	sp
   540A 21 5A 01      [10]  941 	ld	hl,#0x015A
   540D E3            [19]  942 	ex	(sp),hl
   540E 3E 14         [ 7]  943 	ld	a,#0x14
   5410 F5            [11]  944 	push	af
   5411 33            [ 6]  945 	inc	sp
   5412 21 31 55      [10]  946 	ld	hl,#___str_1
   5415 E5            [11]  947 	push	hl
   5416 CD 6D 85      [17]  948 	call	_drawText
   5419 F1            [10]  949 	pop	af
   541A F1            [10]  950 	pop	af
   541B 33            [ 6]  951 	inc	sp
                            952 ;src/game.c:322: seed = wait4UserKeypress();
   541C CD 89 8A      [17]  953 	call	_wait4UserKeypress
                            954 ;src/game.c:324: if (!seed)
   541F 7A            [ 4]  955 	ld	a,d
   5420 B3            [ 4]  956 	or	a, e
   5421 B4            [ 4]  957 	or	a, h
   5422 B5            [ 4]  958 	or	a,l
   5423 20 0A         [12]  959 	jr	NZ,00102$
                            960 ;src/game.c:325: seed++;
   5425 2C            [ 4]  961 	inc	l
   5426 20 07         [12]  962 	jr	NZ,00109$
   5428 24            [ 4]  963 	inc	h
   5429 20 04         [12]  964 	jr	NZ,00109$
   542B 1C            [ 4]  965 	inc	e
   542C 20 01         [12]  966 	jr	NZ,00109$
   542E 14            [ 4]  967 	inc	d
   542F                     968 00109$:
   542F                     969 00102$:
                            970 ;src/game.c:326: cpct_srand(seed);
   542F CD BD 91      [17]  971 	call	_cpct_setSeed_mxor
   5432 CD C5 91      [17]  972 	call	_cpct_restoreState_mxor_u8
                            973 ;src/game.c:328: scoreHallOfFame[0] = 6000;
   5435 21 70 17      [10]  974 	ld	hl,#0x1770
   5438 22 EF 9F      [16]  975 	ld	(_scoreHallOfFame), hl
   543B 21 00 00      [10]  976 	ld	hl,#0x0000
   543E 22 F1 9F      [16]  977 	ld	(_scoreHallOfFame+2), hl
                            978 ;src/game.c:329: scoreHallOfFame[1] = 5000;
   5441 21 88 13      [10]  979 	ld	hl,#0x1388
   5444 22 F3 9F      [16]  980 	ld	((_scoreHallOfFame + 0x0004)), hl
   5447 21 00 00      [10]  981 	ld	hl,#0x0000
   544A 22 F5 9F      [16]  982 	ld	((_scoreHallOfFame + 0x0004)+2), hl
                            983 ;src/game.c:330: scoreHallOfFame[2] = 4000;
   544D 21 A0 0F      [10]  984 	ld	hl,#0x0FA0
   5450 22 F7 9F      [16]  985 	ld	((_scoreHallOfFame + 0x0008)), hl
   5453 21 00 00      [10]  986 	ld	hl,#0x0000
   5456 22 F9 9F      [16]  987 	ld	((_scoreHallOfFame + 0x0008)+2), hl
                            988 ;src/game.c:331: scoreHallOfFame[3] = 3000;
   5459 21 B8 0B      [10]  989 	ld	hl,#0x0BB8
   545C 22 FB 9F      [16]  990 	ld	((_scoreHallOfFame + 0x000c)), hl
   545F 21 00 00      [10]  991 	ld	hl,#0x0000
   5462 22 FD 9F      [16]  992 	ld	((_scoreHallOfFame + 0x000c)+2), hl
                            993 ;src/game.c:332: scoreHallOfFame[4] = 1500;
   5465 21 DC 05      [10]  994 	ld	hl,#0x05DC
   5468 22 FF 9F      [16]  995 	ld	((_scoreHallOfFame + 0x0010)), hl
   546B 21 00 00      [10]  996 	ld	hl,#0x0000
   546E 22 01 A0      [16]  997 	ld	((_scoreHallOfFame + 0x0010)+2), hl
                            998 ;src/game.c:333: scoreHallOfFame[5] = 1000;
   5471 21 E8 03      [10]  999 	ld	hl,#0x03E8
   5474 22 03 A0      [16] 1000 	ld	((_scoreHallOfFame + 0x0014)), hl
   5477 21 00 00      [10] 1001 	ld	hl,#0x0000
   547A 22 05 A0      [16] 1002 	ld	((_scoreHallOfFame + 0x0014)+2), hl
                           1003 ;src/game.c:334: scoreHallOfFame[6] = 500;
   547D 21 F4 01      [10] 1004 	ld	hl,#0x01F4
   5480 22 07 A0      [16] 1005 	ld	((_scoreHallOfFame + 0x0018)), hl
   5483 21 00 00      [10] 1006 	ld	hl,#0x0000
   5486 22 09 A0      [16] 1007 	ld	((_scoreHallOfFame + 0x0018)+2), hl
                           1008 ;src/game.c:335: scoreHallOfFame[7] = 300;
   5489 21 2C 01      [10] 1009 	ld	hl,#0x012C
   548C 22 0B A0      [16] 1010 	ld	((_scoreHallOfFame + 0x001c)), hl
   548F 21 00 00      [10] 1011 	ld	hl,#0x0000
   5492 22 0D A0      [16] 1012 	ld	((_scoreHallOfFame + 0x001c)+2), hl
                           1013 ;src/game.c:337: strcpy(nameHallOfFame[0], "MARTIN");
   5495 11 0F A0      [10] 1014 	ld	de,#_nameHallOfFame
   5498 21 3F 55      [10] 1015 	ld	hl,#___str_2
   549B AF            [ 4] 1016 	xor	a, a
   549C                    1017 00110$:
   549C BE            [ 7] 1018 	cp	a, (hl)
   549D ED A0         [16] 1019 	ldi
   549F 20 FB         [12] 1020 	jr	NZ, 00110$
                           1021 ;src/game.c:338: strcpy(nameHallOfFame[1], "DIEGO");
   54A1 11 1E A0      [10] 1022 	ld	de,#(_nameHallOfFame + 0x000f)
   54A4 21 46 55      [10] 1023 	ld	hl,#___str_3
   54A7 AF            [ 4] 1024 	xor	a, a
   54A8                    1025 00111$:
   54A8 BE            [ 7] 1026 	cp	a, (hl)
   54A9 ED A0         [16] 1027 	ldi
   54AB 20 FB         [12] 1028 	jr	NZ, 00111$
                           1029 ;src/game.c:339: strcpy(nameHallOfFame[2], "MARIA");
   54AD 11 2D A0      [10] 1030 	ld	de,#(_nameHallOfFame + 0x001e)
   54B0 21 4C 55      [10] 1031 	ld	hl,#___str_4
   54B3 AF            [ 4] 1032 	xor	a, a
   54B4                    1033 00112$:
   54B4 BE            [ 7] 1034 	cp	a, (hl)
   54B5 ED A0         [16] 1035 	ldi
   54B7 20 FB         [12] 1036 	jr	NZ, 00112$
                           1037 ;src/game.c:340: strcpy(nameHallOfFame[3], "DAVID");
   54B9 11 3C A0      [10] 1038 	ld	de,#(_nameHallOfFame + 0x002d)
   54BC 21 52 55      [10] 1039 	ld	hl,#___str_5
   54BF AF            [ 4] 1040 	xor	a, a
   54C0                    1041 00113$:
   54C0 BE            [ 7] 1042 	cp	a, (hl)
   54C1 ED A0         [16] 1043 	ldi
   54C3 20 FB         [12] 1044 	jr	NZ, 00113$
                           1045 ;src/game.c:341: strcpy(nameHallOfFame[4], "MASTER");
   54C5 11 4B A0      [10] 1046 	ld	de,#(_nameHallOfFame + 0x003c)
   54C8 21 58 55      [10] 1047 	ld	hl,#___str_6
   54CB AF            [ 4] 1048 	xor	a, a
   54CC                    1049 00114$:
   54CC BE            [ 7] 1050 	cp	a, (hl)
   54CD ED A0         [16] 1051 	ldi
   54CF 20 FB         [12] 1052 	jr	NZ, 00114$
                           1053 ;src/game.c:342: strcpy(nameHallOfFame[5], "EXPERT");
   54D1 11 5A A0      [10] 1054 	ld	de,#(_nameHallOfFame + 0x004b)
   54D4 21 5F 55      [10] 1055 	ld	hl,#___str_7
   54D7 AF            [ 4] 1056 	xor	a, a
   54D8                    1057 00115$:
   54D8 BE            [ 7] 1058 	cp	a, (hl)
   54D9 ED A0         [16] 1059 	ldi
   54DB 20 FB         [12] 1060 	jr	NZ, 00115$
                           1061 ;src/game.c:343: strcpy(nameHallOfFame[6], "INTERMEDIATE");
   54DD 11 69 A0      [10] 1062 	ld	de,#(_nameHallOfFame + 0x005a)
   54E0 21 66 55      [10] 1063 	ld	hl,#___str_8
   54E3 AF            [ 4] 1064 	xor	a, a
   54E4                    1065 00116$:
   54E4 BE            [ 7] 1066 	cp	a, (hl)
   54E5 ED A0         [16] 1067 	ldi
   54E7 20 FB         [12] 1068 	jr	NZ, 00116$
                           1069 ;src/game.c:344: strcpy(nameHallOfFame[7], "BEGINNER");
   54E9 11 78 A0      [10] 1070 	ld	de,#(_nameHallOfFame + 0x0069)
   54EC 21 73 55      [10] 1071 	ld	hl,#___str_9
   54EF AF            [ 4] 1072 	xor	a, a
   54F0                    1073 00117$:
   54F0 BE            [ 7] 1074 	cp	a, (hl)
   54F1 ED A0         [16] 1075 	ldi
   54F3 20 FB         [12] 1076 	jr	NZ, 00117$
                           1077 ;src/game.c:347: clearScreen();
   54F5 CD BE 8F      [17] 1078 	call	_clearScreen
                           1079 ;src/game.c:349: keys.up    = Key_Q;
   54F8 21 08 08      [10] 1080 	ld	hl,#0x0808
   54FB 22 C8 9F      [16] 1081 	ld	(_keys), hl
                           1082 ;src/game.c:350: keys.down  = Key_A;
   54FE 26 20         [ 7] 1083 	ld	h, #0x20
   5500 22 CA 9F      [16] 1084 	ld	((_keys + 0x0002)), hl
                           1085 ;src/game.c:351: keys.left  = Key_O;
   5503 21 04 04      [10] 1086 	ld	hl,#0x0404
   5506 22 CC 9F      [16] 1087 	ld	((_keys + 0x0004)), hl
                           1088 ;src/game.c:352: keys.right = Key_P;
   5509 21 03 08      [10] 1089 	ld	hl,#0x0803
   550C 22 CE 9F      [16] 1090 	ld	((_keys + 0x0006)), hl
                           1091 ;src/game.c:354: keys.pause = Key_Del;
   550F 21 09 80      [10] 1092 	ld	hl,#0x8009
   5512 22 D2 9F      [16] 1093 	ld	((_keys + 0x000a)), hl
                           1094 ;src/game.c:355: keys.abort = Key_Esc;
   5515 21 08 04      [10] 1095 	ld	hl,#0x0408
   5518 22 D4 9F      [16] 1096 	ld	((_keys + 0x000c)), hl
                           1097 ;src/game.c:357: selectedOption = 1;
   551B 21 88 A0      [10] 1098 	ld	hl,#_selectedOption + 0
   551E 36 01         [10] 1099 	ld	(hl), #0x01
   5520 C9            [10] 1100 	ret
   5521                    1101 ___str_0:
   5521 54 48 52 45 45 53  1102 	.ascii "THREES IS READY"
        20 49 53 20 52 45
        41 44 59
   5530 00                 1103 	.db 0x00
   5531                    1104 ___str_1:
   5531 50 52 45 53 53 20  1105 	.ascii "PRESS ANY KEY"
        41 4E 59 20 4B 45
        59
   553E 00                 1106 	.db 0x00
   553F                    1107 ___str_2:
   553F 4D 41 52 54 49 4E  1108 	.ascii "MARTIN"
   5545 00                 1109 	.db 0x00
   5546                    1110 ___str_3:
   5546 44 49 45 47 4F     1111 	.ascii "DIEGO"
   554B 00                 1112 	.db 0x00
   554C                    1113 ___str_4:
   554C 4D 41 52 49 41     1114 	.ascii "MARIA"
   5551 00                 1115 	.db 0x00
   5552                    1116 ___str_5:
   5552 44 41 56 49 44     1117 	.ascii "DAVID"
   5557 00                 1118 	.db 0x00
   5558                    1119 ___str_6:
   5558 4D 41 53 54 45 52  1120 	.ascii "MASTER"
   555E 00                 1121 	.db 0x00
   555F                    1122 ___str_7:
   555F 45 58 50 45 52 54  1123 	.ascii "EXPERT"
   5565 00                 1124 	.db 0x00
   5566                    1125 ___str_8:
   5566 49 4E 54 45 52 4D  1126 	.ascii "INTERMEDIATE"
        45 44 49 41 54 45
   5572 00                 1127 	.db 0x00
   5573                    1128 ___str_9:
   5573 42 45 47 49 4E 4E  1129 	.ascii "BEGINNER"
        45 52
   557B 00                 1130 	.db 0x00
                           1131 ;src/game.c:369: void initGame() {
                           1132 ;	---------------------------------
                           1133 ; Function initGame
                           1134 ; ---------------------------------
   557C                    1135 _initGame::
                           1136 ;src/game.c:372: initCells();
   557C CD D9 53      [17] 1137 	call	_initCells
                           1138 ;src/game.c:374: for (i = 0; i < 9; i++) {
   557F 0E 09         [ 7] 1139 	ld	c,#0x09
   5581                    1140 00104$:
                           1141 ;src/game.c:375: addRandomCell();
   5581 C5            [11] 1142 	push	bc
   5582 CD 87 53      [17] 1143 	call	_addRandomCell
   5585 C1            [10] 1144 	pop	bc
   5586 41            [ 4] 1145 	ld	b,c
   5587 05            [ 4] 1146 	dec	b
                           1147 ;src/game.c:374: for (i = 0; i < 9; i++) {
   5588 78            [ 4] 1148 	ld	a,b
   5589 4F            [ 4] 1149 	ld	c,a
   558A B7            [ 4] 1150 	or	a, a
   558B 20 F4         [12] 1151 	jr	NZ,00104$
                           1152 ;src/game.c:378: score = 0;
   558D AF            [ 4] 1153 	xor	a, a
   558E 32 EB 9F      [13] 1154 	ld	(#_score + 0),a
   5591 32 EC 9F      [13] 1155 	ld	(#_score + 1),a
   5594 32 ED 9F      [13] 1156 	ld	(#_score + 2),a
   5597 32 EE 9F      [13] 1157 	ld	(#_score + 3),a
                           1158 ;src/game.c:381: renewTileBag();
   559A C3 00 50      [10] 1159 	jp  _renewTileBag
                           1160 ;src/game.c:394: u8 rotateCellsLeft() {
                           1161 ;	---------------------------------
                           1162 ; Function rotateCellsLeft
                           1163 ; ---------------------------------
   559D                    1164 _rotateCellsLeft::
   559D DD E5         [15] 1165 	push	ix
   559F DD 21 00 00   [14] 1166 	ld	ix,#0
   55A3 DD 39         [15] 1167 	add	ix,sp
   55A5 F5            [11] 1168 	push	af
   55A6 F5            [11] 1169 	push	af
   55A7 3B            [ 6] 1170 	dec	sp
                           1171 ;src/game.c:398: matched = 0;
   55A8 0E 00         [ 7] 1172 	ld	c,#0x00
                           1173 ;src/game.c:399: for (i = 0; i < 4; i++) {
   55AA DD 36 FB 00   [19] 1174 	ld	-5 (ix),#0x00
                           1175 ;src/game.c:400: for (j = 1; j < 4; j++) {
   55AE                    1176 00129$:
   55AE 1E 01         [ 7] 1177 	ld	e,#0x01
   55B0                    1178 00117$:
                           1179 ;src/game.c:401: if (cells[i][j] != 0) {
   55B0 DD 6E FB      [19] 1180 	ld	l,-5 (ix)
   55B3 26 00         [ 7] 1181 	ld	h,#0x00
   55B5 29            [11] 1182 	add	hl, hl
   55B6 29            [11] 1183 	add	hl, hl
   55B7 3E D6         [ 7] 1184 	ld	a,#<(_cells)
   55B9 85            [ 4] 1185 	add	a, l
   55BA DD 77 FE      [19] 1186 	ld	-2 (ix),a
   55BD 3E 9F         [ 7] 1187 	ld	a,#>(_cells)
   55BF 8C            [ 4] 1188 	adc	a, h
   55C0 DD 77 FF      [19] 1189 	ld	-1 (ix),a
   55C3 DD 7E FE      [19] 1190 	ld	a,-2 (ix)
   55C6 83            [ 4] 1191 	add	a, e
   55C7 DD 77 FC      [19] 1192 	ld	-4 (ix),a
   55CA DD 7E FF      [19] 1193 	ld	a,-1 (ix)
   55CD CE 00         [ 7] 1194 	adc	a, #0x00
   55CF DD 77 FD      [19] 1195 	ld	-3 (ix),a
   55D2 DD 6E FC      [19] 1196 	ld	l,-4 (ix)
   55D5 DD 66 FD      [19] 1197 	ld	h,-3 (ix)
   55D8 46            [ 7] 1198 	ld	b,(hl)
   55D9 78            [ 4] 1199 	ld	a,b
   55DA B7            [ 4] 1200 	or	a, a
   55DB 28 63         [12] 1201 	jr	Z,00118$
                           1202 ;src/game.c:403: if (cells[i][j - 1] == 0) {
   55DD 53            [ 4] 1203 	ld	d,e
   55DE 15            [ 4] 1204 	dec	d
   55DF E5            [11] 1205 	push	hl
   55E0 DD 6E FE      [19] 1206 	ld	l,-2 (ix)
   55E3 DD 66 FF      [19] 1207 	ld	h,-1 (ix)
   55E6 E5            [11] 1208 	push	hl
   55E7 FD E1         [14] 1209 	pop	iy
   55E9 E1            [10] 1210 	pop	hl
   55EA C5            [11] 1211 	push	bc
   55EB 4A            [ 4] 1212 	ld	c,d
   55EC 06 00         [ 7] 1213 	ld	b,#0x00
   55EE FD 09         [15] 1214 	add	iy, bc
   55F0 C1            [10] 1215 	pop	bc
   55F1 FD 56 00      [19] 1216 	ld	d, 0 (iy)
   55F4 7A            [ 4] 1217 	ld	a,d
   55F5 B7            [ 4] 1218 	or	a, a
   55F6 20 0F         [12] 1219 	jr	NZ,00111$
                           1220 ;src/game.c:404: cells[i][j - 1] = cells[i][j];
   55F8 FD 70 00      [19] 1221 	ld	0 (iy), b
                           1222 ;src/game.c:405: cells[i][j] = 0;
   55FB DD 6E FC      [19] 1223 	ld	l,-4 (ix)
   55FE DD 66 FD      [19] 1224 	ld	h,-3 (ix)
   5601 36 00         [10] 1225 	ld	(hl),#0x00
                           1226 ;src/game.c:406: matched = 1;
   5603 0E 01         [ 7] 1227 	ld	c,#0x01
   5605 18 39         [12] 1228 	jr	00118$
   5607                    1229 00111$:
                           1230 ;src/game.c:407: } else if (((cells[i][j - 1] == 1) && (cells[i][j] == 2)) ||
   5607 7A            [ 4] 1231 	ld	a,d
   5608 3D            [ 4] 1232 	dec	a
   5609 20 05         [12] 1233 	jr	NZ,00109$
   560B 78            [ 4] 1234 	ld	a,b
   560C D6 02         [ 7] 1235 	sub	a, #0x02
   560E 28 09         [12] 1236 	jr	Z,00104$
   5610                    1237 00109$:
                           1238 ;src/game.c:408: ((cells[i][j - 1] == 2) && (cells[i][j] == 1))) {
   5610 7A            [ 4] 1239 	ld	a,d
   5611 D6 02         [ 7] 1240 	sub	a, #0x02
   5613 20 14         [12] 1241 	jr	NZ,00105$
   5615 78            [ 4] 1242 	ld	a,b
   5616 3D            [ 4] 1243 	dec	a
   5617 20 10         [12] 1244 	jr	NZ,00105$
   5619                    1245 00104$:
                           1246 ;src/game.c:409: cells[i][j - 1] = 3;
   5619 FD 36 00 03   [19] 1247 	ld	0 (iy), #0x03
                           1248 ;src/game.c:410: cells[i][j] = 0;
   561D DD 6E FC      [19] 1249 	ld	l,-4 (ix)
   5620 DD 66 FD      [19] 1250 	ld	h,-3 (ix)
   5623 36 00         [10] 1251 	ld	(hl),#0x00
                           1252 ;src/game.c:411: matched = 1;
   5625 0E 01         [ 7] 1253 	ld	c,#0x01
   5627 18 17         [12] 1254 	jr	00118$
   5629                    1255 00105$:
                           1256 ;src/game.c:412: } else if ((cells[i][j - 1] == cells[i][j]) && (cells[i][j] > 2)) {
   5629 78            [ 4] 1257 	ld	a,b
   562A 92            [ 4] 1258 	sub	a, d
   562B 20 13         [12] 1259 	jr	NZ,00118$
   562D 3E 02         [ 7] 1260 	ld	a,#0x02
   562F 90            [ 4] 1261 	sub	a, b
   5630 30 0E         [12] 1262 	jr	NC,00118$
                           1263 ;src/game.c:413: cells[i][j - 1]++;
   5632 14            [ 4] 1264 	inc	d
   5633 FD 72 00      [19] 1265 	ld	0 (iy), d
                           1266 ;src/game.c:414: cells[i][j] = 0;
   5636 DD 6E FC      [19] 1267 	ld	l,-4 (ix)
   5639 DD 66 FD      [19] 1268 	ld	h,-3 (ix)
   563C 36 00         [10] 1269 	ld	(hl),#0x00
                           1270 ;src/game.c:415: matched = 1;
   563E 0E 01         [ 7] 1271 	ld	c,#0x01
   5640                    1272 00118$:
                           1273 ;src/game.c:400: for (j = 1; j < 4; j++) {
   5640 1C            [ 4] 1274 	inc	e
   5641 7B            [ 4] 1275 	ld	a,e
   5642 D6 04         [ 7] 1276 	sub	a, #0x04
   5644 DA B0 55      [10] 1277 	jp	C,00117$
                           1278 ;src/game.c:399: for (i = 0; i < 4; i++) {
   5647 DD 34 FB      [23] 1279 	inc	-5 (ix)
   564A DD 7E FB      [19] 1280 	ld	a,-5 (ix)
   564D D6 04         [ 7] 1281 	sub	a, #0x04
   564F DA AE 55      [10] 1282 	jp	C,00129$
                           1283 ;src/game.c:420: return matched;
   5652 69            [ 4] 1284 	ld	l,c
   5653 DD F9         [10] 1285 	ld	sp, ix
   5655 DD E1         [14] 1286 	pop	ix
   5657 C9            [10] 1287 	ret
                           1288 ;src/game.c:431: u8 rotateCellsRight() {
                           1289 ;	---------------------------------
                           1290 ; Function rotateCellsRight
                           1291 ; ---------------------------------
   5658                    1292 _rotateCellsRight::
   5658 DD E5         [15] 1293 	push	ix
   565A DD 21 00 00   [14] 1294 	ld	ix,#0
   565E DD 39         [15] 1295 	add	ix,sp
   5660 F5            [11] 1296 	push	af
   5661 F5            [11] 1297 	push	af
   5662 3B            [ 6] 1298 	dec	sp
                           1299 ;src/game.c:435: matched = 0;
   5663 0E 00         [ 7] 1300 	ld	c,#0x00
                           1301 ;src/game.c:436: for (i = 0; i < 4; i++) {
   5665 DD 36 FB 00   [19] 1302 	ld	-5 (ix),#0x00
                           1303 ;src/game.c:438: do {
   5669                    1304 00128$:
   5669 1E 03         [ 7] 1305 	ld	e,#0x03
   566B                    1306 00114$:
                           1307 ;src/game.c:439: j--;
   566B 1D            [ 4] 1308 	dec	e
                           1309 ;src/game.c:440: if (cells[i][j] != 0) {
   566C DD 6E FB      [19] 1310 	ld	l,-5 (ix)
   566F 26 00         [ 7] 1311 	ld	h,#0x00
   5671 29            [11] 1312 	add	hl, hl
   5672 29            [11] 1313 	add	hl, hl
   5673 3E D6         [ 7] 1314 	ld	a,#<(_cells)
   5675 85            [ 4] 1315 	add	a, l
   5676 DD 77 FC      [19] 1316 	ld	-4 (ix),a
   5679 3E 9F         [ 7] 1317 	ld	a,#>(_cells)
   567B 8C            [ 4] 1318 	adc	a, h
   567C DD 77 FD      [19] 1319 	ld	-3 (ix),a
   567F DD 7E FC      [19] 1320 	ld	a,-4 (ix)
   5682 83            [ 4] 1321 	add	a, e
   5683 DD 77 FE      [19] 1322 	ld	-2 (ix),a
   5686 DD 7E FD      [19] 1323 	ld	a,-3 (ix)
   5689 CE 00         [ 7] 1324 	adc	a, #0x00
   568B DD 77 FF      [19] 1325 	ld	-1 (ix),a
   568E DD 6E FE      [19] 1326 	ld	l,-2 (ix)
   5691 DD 66 FF      [19] 1327 	ld	h,-1 (ix)
   5694 46            [ 7] 1328 	ld	b,(hl)
   5695 78            [ 4] 1329 	ld	a,b
   5696 B7            [ 4] 1330 	or	a, a
   5697 28 6A         [12] 1331 	jr	Z,00115$
                           1332 ;src/game.c:442: if (cells[i][j + 1] == 0) {
   5699 53            [ 4] 1333 	ld	d,e
   569A 14            [ 4] 1334 	inc	d
   569B E5            [11] 1335 	push	hl
   569C DD 6E FC      [19] 1336 	ld	l,-4 (ix)
   569F DD 66 FD      [19] 1337 	ld	h,-3 (ix)
   56A2 E5            [11] 1338 	push	hl
   56A3 FD E1         [14] 1339 	pop	iy
   56A5 E1            [10] 1340 	pop	hl
   56A6 C5            [11] 1341 	push	bc
   56A7 4A            [ 4] 1342 	ld	c,d
   56A8 06 00         [ 7] 1343 	ld	b,#0x00
   56AA FD 09         [15] 1344 	add	iy, bc
   56AC C1            [10] 1345 	pop	bc
   56AD FD 7E 00      [19] 1346 	ld	a, 0 (iy)
   56B0 B7            [ 4] 1347 	or	a, a
   56B1 20 0D         [12] 1348 	jr	NZ,00102$
                           1349 ;src/game.c:443: cells[i][j + 1] = cells[i][j];
   56B3 FD 70 00      [19] 1350 	ld	0 (iy), b
                           1351 ;src/game.c:444: cells[i][j] = 0;
   56B6 DD 6E FE      [19] 1352 	ld	l,-2 (ix)
   56B9 DD 66 FF      [19] 1353 	ld	h,-1 (ix)
   56BC 36 00         [10] 1354 	ld	(hl),#0x00
                           1355 ;src/game.c:445: matched = 1;
   56BE 0E 01         [ 7] 1356 	ld	c,#0x01
   56C0                    1357 00102$:
                           1358 ;src/game.c:446: } if (((cells[i][j + 1] == 1) && (cells[i][j] == 2)) ||
   56C0 FD 46 00      [19] 1359 	ld	b, 0 (iy)
   56C3 DD 6E FE      [19] 1360 	ld	l,-2 (ix)
   56C6 DD 66 FF      [19] 1361 	ld	h,-1 (ix)
   56C9 56            [ 7] 1362 	ld	d,(hl)
   56CA 78            [ 4] 1363 	ld	a,b
   56CB 3D            [ 4] 1364 	dec	a
   56CC 20 05         [12] 1365 	jr	NZ,00111$
   56CE 7A            [ 4] 1366 	ld	a,d
   56CF D6 02         [ 7] 1367 	sub	a, #0x02
   56D1 28 09         [12] 1368 	jr	Z,00106$
   56D3                    1369 00111$:
                           1370 ;src/game.c:447: ((cells[i][j + 1] == 2) && (cells[i][j] == 1))) {
   56D3 78            [ 4] 1371 	ld	a,b
   56D4 D6 02         [ 7] 1372 	sub	a, #0x02
   56D6 20 14         [12] 1373 	jr	NZ,00107$
   56D8 7A            [ 4] 1374 	ld	a,d
   56D9 3D            [ 4] 1375 	dec	a
   56DA 20 10         [12] 1376 	jr	NZ,00107$
   56DC                    1377 00106$:
                           1378 ;src/game.c:448: cells[i][j + 1] = 3;
   56DC FD 36 00 03   [19] 1379 	ld	0 (iy), #0x03
                           1380 ;src/game.c:449: cells[i][j] = 0;
   56E0 DD 6E FE      [19] 1381 	ld	l,-2 (ix)
   56E3 DD 66 FF      [19] 1382 	ld	h,-1 (ix)
   56E6 36 00         [10] 1383 	ld	(hl),#0x00
                           1384 ;src/game.c:450: matched = 1;
   56E8 0E 01         [ 7] 1385 	ld	c,#0x01
   56EA 18 17         [12] 1386 	jr	00115$
   56EC                    1387 00107$:
                           1388 ;src/game.c:451: } else if ((cells[i][j + 1] == cells[i][j]) && (cells[i][j] > 2)) {
   56EC 78            [ 4] 1389 	ld	a,b
   56ED 92            [ 4] 1390 	sub	a, d
   56EE 20 13         [12] 1391 	jr	NZ,00115$
   56F0 3E 02         [ 7] 1392 	ld	a,#0x02
   56F2 92            [ 4] 1393 	sub	a, d
   56F3 30 0E         [12] 1394 	jr	NC,00115$
                           1395 ;src/game.c:452: cells[i][j + 1]++;
   56F5 04            [ 4] 1396 	inc	b
   56F6 FD 70 00      [19] 1397 	ld	0 (iy), b
                           1398 ;src/game.c:453: cells[i][j] = 0;
   56F9 DD 6E FE      [19] 1399 	ld	l,-2 (ix)
   56FC DD 66 FF      [19] 1400 	ld	h,-1 (ix)
   56FF 36 00         [10] 1401 	ld	(hl),#0x00
                           1402 ;src/game.c:454: matched = 1;
   5701 0E 01         [ 7] 1403 	ld	c,#0x01
   5703                    1404 00115$:
                           1405 ;src/game.c:457: } while (j > 0);
   5703 7B            [ 4] 1406 	ld	a,e
   5704 B7            [ 4] 1407 	or	a, a
   5705 C2 6B 56      [10] 1408 	jp	NZ,00114$
                           1409 ;src/game.c:436: for (i = 0; i < 4; i++) {
   5708 DD 34 FB      [23] 1410 	inc	-5 (ix)
   570B DD 7E FB      [19] 1411 	ld	a,-5 (ix)
   570E D6 04         [ 7] 1412 	sub	a, #0x04
   5710 DA 69 56      [10] 1413 	jp	C,00128$
                           1414 ;src/game.c:459: return matched;
   5713 69            [ 4] 1415 	ld	l,c
   5714 DD F9         [10] 1416 	ld	sp, ix
   5716 DD E1         [14] 1417 	pop	ix
   5718 C9            [10] 1418 	ret
                           1419 ;src/game.c:470: u8 rotateCellsUp() {
                           1420 ;	---------------------------------
                           1421 ; Function rotateCellsUp
                           1422 ; ---------------------------------
   5719                    1423 _rotateCellsUp::
   5719 DD E5         [15] 1424 	push	ix
   571B DD 21 00 00   [14] 1425 	ld	ix,#0
   571F DD 39         [15] 1426 	add	ix,sp
   5721 F5            [11] 1427 	push	af
   5722 F5            [11] 1428 	push	af
                           1429 ;src/game.c:474: matched = 0;
                           1430 ;src/game.c:475: for (i = 1; i < 4; i++) {
   5723 01 00 01      [10] 1431 	ld	bc,#0x0100
                           1432 ;src/game.c:476: for (j = 0; j < 4; j++) {
   5726                    1433 00129$:
   5726 78            [ 4] 1434 	ld	a,b
   5727 C6 FF         [ 7] 1435 	add	a,#0xFF
   5729 DD 77 FE      [19] 1436 	ld	-2 (ix),a
   572C 1E 00         [ 7] 1437 	ld	e,#0x00
   572E                    1438 00117$:
                           1439 ;src/game.c:477: if (cells[i][j] != 0) {
   572E 68            [ 4] 1440 	ld	l,b
   572F 26 00         [ 7] 1441 	ld	h,#0x00
   5731 29            [11] 1442 	add	hl, hl
   5732 29            [11] 1443 	add	hl, hl
   5733 3E D6         [ 7] 1444 	ld	a,#<(_cells)
   5735 85            [ 4] 1445 	add	a, l
   5736 57            [ 4] 1446 	ld	d,a
   5737 3E 9F         [ 7] 1447 	ld	a,#>(_cells)
   5739 8C            [ 4] 1448 	adc	a, h
   573A 6F            [ 4] 1449 	ld	l,a
   573B 7A            [ 4] 1450 	ld	a,d
   573C 83            [ 4] 1451 	add	a, e
   573D DD 77 FC      [19] 1452 	ld	-4 (ix),a
   5740 7D            [ 4] 1453 	ld	a,l
   5741 CE 00         [ 7] 1454 	adc	a, #0x00
   5743 DD 77 FD      [19] 1455 	ld	-3 (ix),a
                           1456 ;src/game.c:484: ((cells[i - 1][j] == 2) && (cells[i][j] == 1))) {
   5746 E1            [10] 1457 	pop	hl
   5747 E5            [11] 1458 	push	hl
   5748 56            [ 7] 1459 	ld	d,(hl)
                           1460 ;src/game.c:477: if (cells[i][j] != 0) {
   5749 7A            [ 4] 1461 	ld	a,d
   574A B7            [ 4] 1462 	or	a, a
   574B 28 65         [12] 1463 	jr	Z,00118$
                           1464 ;src/game.c:479: if (cells[i - 1][j] == 0) {
   574D DD 6E FE      [19] 1465 	ld	l,-2 (ix)
   5750 26 00         [ 7] 1466 	ld	h,#0x00
   5752 29            [11] 1467 	add	hl, hl
   5753 29            [11] 1468 	add	hl, hl
   5754 FD 21 D6 9F   [14] 1469 	ld	iy,#_cells
   5758 C5            [11] 1470 	push	bc
   5759 4D            [ 4] 1471 	ld	c, l
   575A 44            [ 4] 1472 	ld	b, h
   575B FD 09         [15] 1473 	add	iy, bc
   575D C1            [10] 1474 	pop	bc
   575E D5            [11] 1475 	push	de
   575F 16 00         [ 7] 1476 	ld	d,#0x00
   5761 FD 19         [15] 1477 	add	iy, de
   5763 D1            [10] 1478 	pop	de
   5764 FD 7E 00      [19] 1479 	ld	a, 0 (iy)
   5767 DD 77 FF      [19] 1480 	ld	-1 (ix), a
   576A B7            [ 4] 1481 	or	a, a
   576B 20 0B         [12] 1482 	jr	NZ,00111$
                           1483 ;src/game.c:480: cells[i - 1][j] = cells[i][j];
   576D FD 72 00      [19] 1484 	ld	0 (iy), d
                           1485 ;src/game.c:481: cells[i][j] = 0;
   5770 E1            [10] 1486 	pop	hl
   5771 E5            [11] 1487 	push	hl
   5772 36 00         [10] 1488 	ld	(hl),#0x00
                           1489 ;src/game.c:482: matched = 1;
   5774 0E 01         [ 7] 1490 	ld	c,#0x01
   5776 18 3A         [12] 1491 	jr	00118$
   5778                    1492 00111$:
                           1493 ;src/game.c:483: } else if (((cells[i - 1][j] == 1) && (cells[i][j] == 2)) ||
   5778 DD 7E FF      [19] 1494 	ld	a,-1 (ix)
   577B 3D            [ 4] 1495 	dec	a
   577C 20 05         [12] 1496 	jr	NZ,00109$
   577E 7A            [ 4] 1497 	ld	a,d
   577F D6 02         [ 7] 1498 	sub	a, #0x02
   5781 28 0B         [12] 1499 	jr	Z,00104$
   5783                    1500 00109$:
                           1501 ;src/game.c:484: ((cells[i - 1][j] == 2) && (cells[i][j] == 1))) {
   5783 DD 7E FF      [19] 1502 	ld	a,-1 (ix)
   5786 D6 02         [ 7] 1503 	sub	a, #0x02
   5788 20 10         [12] 1504 	jr	NZ,00105$
   578A 7A            [ 4] 1505 	ld	a,d
   578B 3D            [ 4] 1506 	dec	a
   578C 20 0C         [12] 1507 	jr	NZ,00105$
   578E                    1508 00104$:
                           1509 ;src/game.c:485: cells[i - 1][j] = 3;
   578E FD 36 00 03   [19] 1510 	ld	0 (iy), #0x03
                           1511 ;src/game.c:486: cells[i][j] = 0;
   5792 E1            [10] 1512 	pop	hl
   5793 E5            [11] 1513 	push	hl
   5794 36 00         [10] 1514 	ld	(hl),#0x00
                           1515 ;src/game.c:487: matched = 1;
   5796 0E 01         [ 7] 1516 	ld	c,#0x01
   5798 18 18         [12] 1517 	jr	00118$
   579A                    1518 00105$:
                           1519 ;src/game.c:488: } else if ((cells[i - 1][j] == cells[i][j]) && (cells[i][j] > 2)) {
   579A 7A            [ 4] 1520 	ld	a,d
   579B DD 96 FF      [19] 1521 	sub	a, -1 (ix)
   579E 20 12         [12] 1522 	jr	NZ,00118$
   57A0 3E 02         [ 7] 1523 	ld	a,#0x02
   57A2 92            [ 4] 1524 	sub	a, d
   57A3 30 0D         [12] 1525 	jr	NC,00118$
                           1526 ;src/game.c:489: cells[i - 1][j]++;
   57A5 DD 4E FF      [19] 1527 	ld	c,-1 (ix)
   57A8 0C            [ 4] 1528 	inc	c
   57A9 FD 71 00      [19] 1529 	ld	0 (iy), c
                           1530 ;src/game.c:490: cells[i][j] = 0;
   57AC E1            [10] 1531 	pop	hl
   57AD E5            [11] 1532 	push	hl
   57AE 36 00         [10] 1533 	ld	(hl),#0x00
                           1534 ;src/game.c:491: matched = 1;
   57B0 0E 01         [ 7] 1535 	ld	c,#0x01
   57B2                    1536 00118$:
                           1537 ;src/game.c:476: for (j = 0; j < 4; j++) {
   57B2 1C            [ 4] 1538 	inc	e
   57B3 7B            [ 4] 1539 	ld	a,e
   57B4 D6 04         [ 7] 1540 	sub	a, #0x04
   57B6 DA 2E 57      [10] 1541 	jp	C,00117$
                           1542 ;src/game.c:475: for (i = 1; i < 4; i++) {
   57B9 04            [ 4] 1543 	inc	b
   57BA 78            [ 4] 1544 	ld	a,b
   57BB D6 04         [ 7] 1545 	sub	a, #0x04
   57BD DA 26 57      [10] 1546 	jp	C,00129$
                           1547 ;src/game.c:496: return matched;
   57C0 69            [ 4] 1548 	ld	l,c
   57C1 DD F9         [10] 1549 	ld	sp, ix
   57C3 DD E1         [14] 1550 	pop	ix
   57C5 C9            [10] 1551 	ret
                           1552 ;src/game.c:507: u8 rotateCellsDown() {
                           1553 ;	---------------------------------
                           1554 ; Function rotateCellsDown
                           1555 ; ---------------------------------
   57C6                    1556 _rotateCellsDown::
   57C6 DD E5         [15] 1557 	push	ix
   57C8 DD 21 00 00   [14] 1558 	ld	ix,#0
   57CC DD 39         [15] 1559 	add	ix,sp
   57CE F5            [11] 1560 	push	af
   57CF F5            [11] 1561 	push	af
                           1562 ;src/game.c:511: matched = 0;
   57D0 0E 00         [ 7] 1563 	ld	c,#0x00
                           1564 ;src/game.c:513: do {
   57D2 DD 36 FC 03   [19] 1565 	ld	-4 (ix),#0x03
   57D6                    1566 00115$:
                           1567 ;src/game.c:514: i--;
   57D6 DD 35 FC      [23] 1568 	dec	-4 (ix)
                           1569 ;src/game.c:515: for (j = 0; j < 4; j++) {
   57D9 DD 7E FC      [19] 1570 	ld	a,-4 (ix)
   57DC 3C            [ 4] 1571 	inc	a
   57DD DD 77 FD      [19] 1572 	ld	-3 (ix),a
   57E0 1E 00         [ 7] 1573 	ld	e,#0x00
   57E2                    1574 00118$:
                           1575 ;src/game.c:516: if (cells[i][j] != 0) {
   57E2 DD 6E FC      [19] 1576 	ld	l,-4 (ix)
   57E5 26 00         [ 7] 1577 	ld	h,#0x00
   57E7 29            [11] 1578 	add	hl, hl
   57E8 29            [11] 1579 	add	hl, hl
   57E9 3E D6         [ 7] 1580 	ld	a,#<(_cells)
   57EB 85            [ 4] 1581 	add	a, l
   57EC 47            [ 4] 1582 	ld	b,a
   57ED 3E 9F         [ 7] 1583 	ld	a,#>(_cells)
   57EF 8C            [ 4] 1584 	adc	a, h
   57F0 57            [ 4] 1585 	ld	d,a
   57F1 78            [ 4] 1586 	ld	a,b
   57F2 83            [ 4] 1587 	add	a, e
   57F3 DD 77 FE      [19] 1588 	ld	-2 (ix),a
   57F6 7A            [ 4] 1589 	ld	a,d
   57F7 CE 00         [ 7] 1590 	adc	a, #0x00
   57F9 DD 77 FF      [19] 1591 	ld	-1 (ix),a
   57FC DD 6E FE      [19] 1592 	ld	l,-2 (ix)
   57FF DD 66 FF      [19] 1593 	ld	h,-1 (ix)
   5802 46            [ 7] 1594 	ld	b,(hl)
   5803 78            [ 4] 1595 	ld	a,b
   5804 B7            [ 4] 1596 	or	a, a
   5805 28 6D         [12] 1597 	jr	Z,00119$
                           1598 ;src/game.c:518: if (cells[i + 1][j] == 0) {
   5807 DD 6E FD      [19] 1599 	ld	l,-3 (ix)
   580A 26 00         [ 7] 1600 	ld	h,#0x00
   580C 29            [11] 1601 	add	hl, hl
   580D 29            [11] 1602 	add	hl, hl
   580E FD 21 D6 9F   [14] 1603 	ld	iy,#_cells
   5812 C5            [11] 1604 	push	bc
   5813 4D            [ 4] 1605 	ld	c, l
   5814 44            [ 4] 1606 	ld	b, h
   5815 FD 09         [15] 1607 	add	iy, bc
   5817 C1            [10] 1608 	pop	bc
   5818 D5            [11] 1609 	push	de
   5819 16 00         [ 7] 1610 	ld	d,#0x00
   581B FD 19         [15] 1611 	add	iy, de
   581D D1            [10] 1612 	pop	de
   581E FD 7E 00      [19] 1613 	ld	a, 0 (iy)
   5821 B7            [ 4] 1614 	or	a, a
   5822 20 0D         [12] 1615 	jr	NZ,00102$
                           1616 ;src/game.c:519: cells[i + 1][j] = cells[i][j];
   5824 FD 70 00      [19] 1617 	ld	0 (iy), b
                           1618 ;src/game.c:520: cells[i][j] = 0;
   5827 DD 6E FE      [19] 1619 	ld	l,-2 (ix)
   582A DD 66 FF      [19] 1620 	ld	h,-1 (ix)
   582D 36 00         [10] 1621 	ld	(hl),#0x00
                           1622 ;src/game.c:521: matched = 1;
   582F 0E 01         [ 7] 1623 	ld	c,#0x01
   5831                    1624 00102$:
                           1625 ;src/game.c:518: if (cells[i + 1][j] == 0) {
   5831 FD 46 00      [19] 1626 	ld	b, 0 (iy)
                           1627 ;src/game.c:516: if (cells[i][j] != 0) {
   5834 DD 6E FE      [19] 1628 	ld	l,-2 (ix)
   5837 DD 66 FF      [19] 1629 	ld	h,-1 (ix)
   583A 56            [ 7] 1630 	ld	d,(hl)
                           1631 ;src/game.c:522: } if (((cells[i + 1][j] == 1) && (cells[i][j] == 2)) ||
   583B 78            [ 4] 1632 	ld	a,b
   583C 3D            [ 4] 1633 	dec	a
   583D 20 05         [12] 1634 	jr	NZ,00111$
   583F 7A            [ 4] 1635 	ld	a,d
   5840 D6 02         [ 7] 1636 	sub	a, #0x02
   5842 28 09         [12] 1637 	jr	Z,00106$
   5844                    1638 00111$:
                           1639 ;src/game.c:523: ((cells[i + 1][j] == 2) && (cells[i][j] == 1))) {
   5844 78            [ 4] 1640 	ld	a,b
   5845 D6 02         [ 7] 1641 	sub	a, #0x02
   5847 20 14         [12] 1642 	jr	NZ,00107$
   5849 7A            [ 4] 1643 	ld	a,d
   584A 3D            [ 4] 1644 	dec	a
   584B 20 10         [12] 1645 	jr	NZ,00107$
   584D                    1646 00106$:
                           1647 ;src/game.c:524: cells[i + 1][j] = 3;
   584D FD 36 00 03   [19] 1648 	ld	0 (iy), #0x03
                           1649 ;src/game.c:525: cells[i][j] = 0;
   5851 DD 6E FE      [19] 1650 	ld	l,-2 (ix)
   5854 DD 66 FF      [19] 1651 	ld	h,-1 (ix)
   5857 36 00         [10] 1652 	ld	(hl),#0x00
                           1653 ;src/game.c:526: matched = 1;
   5859 0E 01         [ 7] 1654 	ld	c,#0x01
   585B 18 17         [12] 1655 	jr	00119$
   585D                    1656 00107$:
                           1657 ;src/game.c:527: } else if ((cells[i + 1][j] == cells[i][j]) && (cells[i][j] > 2)) {
   585D 78            [ 4] 1658 	ld	a,b
   585E 92            [ 4] 1659 	sub	a, d
   585F 20 13         [12] 1660 	jr	NZ,00119$
   5861 3E 02         [ 7] 1661 	ld	a,#0x02
   5863 92            [ 4] 1662 	sub	a, d
   5864 30 0E         [12] 1663 	jr	NC,00119$
                           1664 ;src/game.c:528: cells[i + 1][j]++;
   5866 04            [ 4] 1665 	inc	b
   5867 FD 70 00      [19] 1666 	ld	0 (iy), b
                           1667 ;src/game.c:529: cells[i][j] = 0;
   586A DD 6E FE      [19] 1668 	ld	l,-2 (ix)
   586D DD 66 FF      [19] 1669 	ld	h,-1 (ix)
   5870 36 00         [10] 1670 	ld	(hl),#0x00
                           1671 ;src/game.c:530: matched = 1;
   5872 0E 01         [ 7] 1672 	ld	c,#0x01
   5874                    1673 00119$:
                           1674 ;src/game.c:515: for (j = 0; j < 4; j++) {
   5874 1C            [ 4] 1675 	inc	e
   5875 7B            [ 4] 1676 	ld	a,e
   5876 D6 04         [ 7] 1677 	sub	a, #0x04
   5878 DA E2 57      [10] 1678 	jp	C,00118$
                           1679 ;src/game.c:535: } while (i > 0);
   587B DD 7E FC      [19] 1680 	ld	a,-4 (ix)
   587E B7            [ 4] 1681 	or	a, a
   587F C2 D6 57      [10] 1682 	jp	NZ,00115$
                           1683 ;src/game.c:537: return matched;
   5882 69            [ 4] 1684 	ld	l,c
   5883 DD F9         [10] 1685 	ld	sp, ix
   5885 DD E1         [14] 1686 	pop	ix
   5887 C9            [10] 1687 	ret
                           1688 ;src/game.c:548: void printCells() {
                           1689 ;	---------------------------------
                           1690 ; Function printCells
                           1691 ; ---------------------------------
   5888                    1692 _printCells::
   5888 DD E5         [15] 1693 	push	ix
   588A DD 21 00 00   [14] 1694 	ld	ix,#0
   588E DD 39         [15] 1695 	add	ix,sp
   5890 F5            [11] 1696 	push	af
   5891 F5            [11] 1697 	push	af
   5892 3B            [ 6] 1698 	dec	sp
                           1699 ;src/game.c:555: for (i = 0; i < 4; i++) {
   5893 0E 00         [ 7] 1700 	ld	c,#0x00
   5895 DD 36 FD 00   [19] 1701 	ld	-3 (ix),#0x00
   5899                    1702 00105$:
                           1703 ;src/game.c:557: y = 6 + (i * 44);
   5899 DD 7E FD      [19] 1704 	ld	a,-3 (ix)
   589C C6 06         [ 7] 1705 	add	a, #0x06
   589E DD 77 FB      [19] 1706 	ld	-5 (ix),a
                           1707 ;src/game.c:558: for (j = 0; j < 4; j++) {
   58A1 DD 36 FC 00   [19] 1708 	ld	-4 (ix),#0x00
   58A5 06 00         [ 7] 1709 	ld	b,#0x00
   58A7                    1710 00103$:
                           1711 ;src/game.c:560: x = 4 + (j * 11);
   58A7 50            [ 4] 1712 	ld	d,b
   58A8 14            [ 4] 1713 	inc	d
   58A9 14            [ 4] 1714 	inc	d
   58AA 14            [ 4] 1715 	inc	d
   58AB 14            [ 4] 1716 	inc	d
                           1717 ;src/game.c:561: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, x, y);
   58AC C5            [11] 1718 	push	bc
   58AD DD 7E FB      [19] 1719 	ld	a,-5 (ix)
   58B0 F5            [11] 1720 	push	af
   58B1 33            [ 6] 1721 	inc	sp
   58B2 D5            [11] 1722 	push	de
   58B3 33            [ 6] 1723 	inc	sp
   58B4 21 00 C0      [10] 1724 	ld	hl,#0xC000
   58B7 E5            [11] 1725 	push	hl
   58B8 CD 29 94      [17] 1726 	call	_cpct_getScreenPtr
   58BB C1            [10] 1727 	pop	bc
                           1728 ;src/game.c:562: cpct_drawSprite(tiles[cells[i][j]], pvmem, 10, 40);
   58BC DD 75 FE      [19] 1729 	ld	-2 (ix),l
   58BF DD 74 FF      [19] 1730 	ld	-1 (ix),h
   58C2 69            [ 4] 1731 	ld	l,c
   58C3 26 00         [ 7] 1732 	ld	h,#0x00
   58C5 29            [11] 1733 	add	hl, hl
   58C6 29            [11] 1734 	add	hl, hl
   58C7 11 D6 9F      [10] 1735 	ld	de,#_cells
   58CA 19            [11] 1736 	add	hl,de
   58CB DD 5E FC      [19] 1737 	ld	e,-4 (ix)
   58CE 16 00         [ 7] 1738 	ld	d,#0x00
   58D0 19            [11] 1739 	add	hl,de
   58D1 6E            [ 7] 1740 	ld	l,(hl)
   58D2 26 00         [ 7] 1741 	ld	h,#0x00
   58D4 29            [11] 1742 	add	hl, hl
   58D5 11 BB 50      [10] 1743 	ld	de,#_tiles
   58D8 19            [11] 1744 	add	hl,de
   58D9 5E            [ 7] 1745 	ld	e,(hl)
   58DA 23            [ 6] 1746 	inc	hl
   58DB 56            [ 7] 1747 	ld	d,(hl)
   58DC C5            [11] 1748 	push	bc
   58DD 21 0A 28      [10] 1749 	ld	hl,#0x280A
   58E0 E5            [11] 1750 	push	hl
   58E1 DD 6E FE      [19] 1751 	ld	l,-2 (ix)
   58E4 DD 66 FF      [19] 1752 	ld	h,-1 (ix)
   58E7 E5            [11] 1753 	push	hl
   58E8 D5            [11] 1754 	push	de
   58E9 CD A3 90      [17] 1755 	call	_cpct_drawSprite
   58EC C1            [10] 1756 	pop	bc
                           1757 ;src/game.c:558: for (j = 0; j < 4; j++) {
   58ED 78            [ 4] 1758 	ld	a,b
   58EE C6 0B         [ 7] 1759 	add	a, #0x0B
   58F0 47            [ 4] 1760 	ld	b,a
   58F1 DD 34 FC      [23] 1761 	inc	-4 (ix)
   58F4 DD 7E FC      [19] 1762 	ld	a,-4 (ix)
   58F7 D6 04         [ 7] 1763 	sub	a, #0x04
   58F9 38 AC         [12] 1764 	jr	C,00103$
                           1765 ;src/game.c:555: for (i = 0; i < 4; i++) {
   58FB DD 7E FD      [19] 1766 	ld	a,-3 (ix)
   58FE C6 2C         [ 7] 1767 	add	a, #0x2C
   5900 DD 77 FD      [19] 1768 	ld	-3 (ix),a
   5903 0C            [ 4] 1769 	inc	c
   5904 79            [ 4] 1770 	ld	a,c
   5905 D6 04         [ 7] 1771 	sub	a, #0x04
   5907 38 90         [12] 1772 	jr	C,00105$
                           1773 ;src/game.c:565: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 62, 20);
   5909 21 3E 14      [10] 1774 	ld	hl,#0x143E
   590C E5            [11] 1775 	push	hl
   590D 21 00 C0      [10] 1776 	ld	hl,#0xC000
   5910 E5            [11] 1777 	push	hl
   5911 CD 29 94      [17] 1778 	call	_cpct_getScreenPtr
   5914 4D            [ 4] 1779 	ld	c,l
   5915 44            [ 4] 1780 	ld	b,h
                           1781 ;src/game.c:566: cpct_drawSprite(tiles[tileBag[currentTile]], pvmem, 10, 40);
   5916 FD 21 8B A0   [14] 1782 	ld	iy,#_tileBag
   591A ED 5B 97 A0   [20] 1783 	ld	de,(_currentTile)
   591E 16 00         [ 7] 1784 	ld	d,#0x00
   5920 FD 19         [15] 1785 	add	iy, de
   5922 FD 6E 00      [19] 1786 	ld	l, 0 (iy)
   5925 26 00         [ 7] 1787 	ld	h,#0x00
   5927 29            [11] 1788 	add	hl, hl
   5928 11 BB 50      [10] 1789 	ld	de,#_tiles
   592B 19            [11] 1790 	add	hl,de
   592C 5E            [ 7] 1791 	ld	e,(hl)
   592D 23            [ 6] 1792 	inc	hl
   592E 56            [ 7] 1793 	ld	d,(hl)
   592F 21 0A 28      [10] 1794 	ld	hl,#0x280A
   5932 E5            [11] 1795 	push	hl
   5933 C5            [11] 1796 	push	bc
   5934 D5            [11] 1797 	push	de
   5935 CD A3 90      [17] 1798 	call	_cpct_drawSprite
   5938 DD F9         [10] 1799 	ld	sp, ix
   593A DD E1         [14] 1800 	pop	ix
   593C C9            [10] 1801 	ret
                           1802 ;src/game.c:577: void drawScore() {
                           1803 ;	---------------------------------
                           1804 ; Function drawScore
                           1805 ; ---------------------------------
   593D                    1806 _drawScore::
   593D DD E5         [15] 1807 	push	ix
   593F DD 21 00 00   [14] 1808 	ld	ix,#0
   5943 DD 39         [15] 1809 	add	ix,sp
   5945 21 F9 FF      [10] 1810 	ld	hl,#-7
   5948 39            [11] 1811 	add	hl,sp
   5949 F9            [ 6] 1812 	ld	sp,hl
                           1813 ;src/game.c:581: for (i = 0; i < 4; i++) {
   594A 0E 00         [ 7] 1814 	ld	c,#0x00
   594C DD 36 FE 00   [19] 1815 	ld	-2 (ix),#0x00
                           1816 ;src/game.c:582: for (j = 0; j < 4; j++) {
   5950                    1817 00116$:
   5950 DD 7E FE      [19] 1818 	ld	a,-2 (ix)
   5953 C6 06         [ 7] 1819 	add	a, #0x06
   5955 DD 77 FF      [19] 1820 	ld	-1 (ix),a
   5958 DD 36 F9 00   [19] 1821 	ld	-7 (ix),#0x00
   595C 06 00         [ 7] 1822 	ld	b,#0x00
   595E                    1823 00108$:
                           1824 ;src/game.c:584: z = cells[i][j];
   595E 69            [ 4] 1825 	ld	l,c
   595F 26 00         [ 7] 1826 	ld	h,#0x00
   5961 29            [11] 1827 	add	hl, hl
   5962 29            [11] 1828 	add	hl, hl
   5963 11 D6 9F      [10] 1829 	ld	de,#_cells
   5966 19            [11] 1830 	add	hl,de
   5967 DD 5E F9      [19] 1831 	ld	e,-7 (ix)
   596A 16 00         [ 7] 1832 	ld	d,#0x00
   596C 19            [11] 1833 	add	hl,de
   596D 5E            [ 7] 1834 	ld	e,(hl)
                           1835 ;src/game.c:585: if (z >= 3) {
                           1836 ;src/game.c:586: if (z == 3) {
   596E 7B            [ 4] 1837 	ld	a,e
   596F FE 03         [ 7] 1838 	cp	a,#0x03
   5971 38 65         [12] 1839 	jr	C,00109$
   5973 D6 03         [ 7] 1840 	sub	a, #0x03
   5975 20 10         [12] 1841 	jr	NZ,00102$
                           1842 ;src/game.c:587: partialScore = 1;
   5977 DD 36 FA 01   [19] 1843 	ld	-6 (ix),#0x01
   597B AF            [ 4] 1844 	xor	a, a
   597C DD 77 FB      [19] 1845 	ld	-5 (ix),a
   597F DD 77 FC      [19] 1846 	ld	-4 (ix),a
   5982 DD 77 FD      [19] 1847 	ld	-3 (ix),a
   5985 18 16         [12] 1848 	jr	00103$
   5987                    1849 00102$:
                           1850 ;src/game.c:589: partialScore = scores[z];
   5987 26 00         [ 7] 1851 	ld	h,#0x00
   5989 6B            [ 4] 1852 	ld	l, e
   598A 29            [11] 1853 	add	hl, hl
   598B 29            [11] 1854 	add	hl, hl
   598C 11 7F 50      [10] 1855 	ld	de,#_scores
   598F 19            [11] 1856 	add	hl,de
   5990 C5            [11] 1857 	push	bc
   5991 EB            [ 4] 1858 	ex	de,hl
   5992 21 03 00      [10] 1859 	ld	hl, #0x0003
   5995 39            [11] 1860 	add	hl, sp
   5996 EB            [ 4] 1861 	ex	de, hl
   5997 01 04 00      [10] 1862 	ld	bc, #0x0004
   599A ED B0         [21] 1863 	ldir
   599C C1            [10] 1864 	pop	bc
   599D                    1865 00103$:
                           1866 ;src/game.c:591: score += partialScore;
   599D 21 EB 9F      [10] 1867 	ld	hl,#_score
   59A0 7E            [ 7] 1868 	ld	a,(hl)
   59A1 DD 86 FA      [19] 1869 	add	a, -6 (ix)
   59A4 77            [ 7] 1870 	ld	(hl),a
   59A5 23            [ 6] 1871 	inc	hl
   59A6 7E            [ 7] 1872 	ld	a,(hl)
   59A7 DD 8E FB      [19] 1873 	adc	a, -5 (ix)
   59AA 77            [ 7] 1874 	ld	(hl),a
   59AB 23            [ 6] 1875 	inc	hl
   59AC 7E            [ 7] 1876 	ld	a,(hl)
   59AD DD 8E FC      [19] 1877 	adc	a, -4 (ix)
   59B0 77            [ 7] 1878 	ld	(hl),a
   59B1 23            [ 6] 1879 	inc	hl
   59B2 7E            [ 7] 1880 	ld	a,(hl)
   59B3 DD 8E FD      [19] 1881 	adc	a, -3 (ix)
   59B6 77            [ 7] 1882 	ld	(hl),a
                           1883 ;src/game.c:592: drawNumber(partialScore, 4, 3 + (11 * j), 6 + (44 * i));
   59B7 50            [ 4] 1884 	ld	d,b
   59B8 14            [ 4] 1885 	inc	d
   59B9 14            [ 4] 1886 	inc	d
   59BA 14            [ 4] 1887 	inc	d
   59BB E5            [11] 1888 	push	hl
   59BC DD 6E FA      [19] 1889 	ld	l,-6 (ix)
   59BF DD 66 FB      [19] 1890 	ld	h,-5 (ix)
   59C2 E5            [11] 1891 	push	hl
   59C3 FD E1         [14] 1892 	pop	iy
   59C5 E1            [10] 1893 	pop	hl
   59C6 C5            [11] 1894 	push	bc
   59C7 DD 7E FF      [19] 1895 	ld	a,-1 (ix)
   59CA F5            [11] 1896 	push	af
   59CB 33            [ 6] 1897 	inc	sp
   59CC 1E 04         [ 7] 1898 	ld	e, #0x04
   59CE D5            [11] 1899 	push	de
   59CF FD E5         [15] 1900 	push	iy
   59D1 CD D0 84      [17] 1901 	call	_drawNumber
   59D4 F1            [10] 1902 	pop	af
   59D5 F1            [10] 1903 	pop	af
   59D6 33            [ 6] 1904 	inc	sp
   59D7 C1            [10] 1905 	pop	bc
   59D8                    1906 00109$:
                           1907 ;src/game.c:582: for (j = 0; j < 4; j++) {
   59D8 78            [ 4] 1908 	ld	a,b
   59D9 C6 0B         [ 7] 1909 	add	a, #0x0B
   59DB 47            [ 4] 1910 	ld	b,a
   59DC DD 34 F9      [23] 1911 	inc	-7 (ix)
   59DF DD 7E F9      [19] 1912 	ld	a,-7 (ix)
   59E2 D6 04         [ 7] 1913 	sub	a, #0x04
   59E4 DA 5E 59      [10] 1914 	jp	C,00108$
                           1915 ;src/game.c:581: for (i = 0; i < 4; i++) {
   59E7 DD 7E FE      [19] 1916 	ld	a,-2 (ix)
   59EA C6 2C         [ 7] 1917 	add	a, #0x2C
   59EC DD 77 FE      [19] 1918 	ld	-2 (ix),a
   59EF 0C            [ 4] 1919 	inc	c
   59F0 79            [ 4] 1920 	ld	a,c
   59F1 D6 04         [ 7] 1921 	sub	a, #0x04
   59F3 DA 50 59      [10] 1922 	jp	C,00116$
   59F6 DD F9         [10] 1923 	ld	sp, ix
   59F8 DD E1         [14] 1924 	pop	ix
   59FA C9            [10] 1925 	ret
                           1926 ;src/game.c:606: void getName() {
                           1927 ;	---------------------------------
                           1928 ; Function getName
                           1929 ; ---------------------------------
   59FB                    1930 _getName::
   59FB DD E5         [15] 1931 	push	ix
   59FD DD 21 00 00   [14] 1932 	ld	ix,#0
   5A01 DD 39         [15] 1933 	add	ix,sp
   5A03 21 F6 FF      [10] 1934 	ld	hl,#-10
   5A06 39            [11] 1935 	add	hl,sp
   5A07 F9            [ 6] 1936 	ld	sp,hl
                           1937 ;src/game.c:610: drawFrame(10, 60, 72, 140);
   5A08 21 48 8C      [10] 1938 	ld	hl,#0x8C48
   5A0B E5            [11] 1939 	push	hl
   5A0C 21 0A 3C      [10] 1940 	ld	hl,#0x3C0A
   5A0F E5            [11] 1941 	push	hl
   5A10 CD AD 8C      [17] 1942 	call	_drawFrame
   5A13 F1            [10] 1943 	pop	af
   5A14 F1            [10] 1944 	pop	af
                           1945 ;src/game.c:611: strcpy(newNameHighScore, "A");
   5A15 11 9A A0      [10] 1946 	ld	de,#_newNameHighScore
   5A18 21 B6 5B      [10] 1947 	ld	hl,#___str_10
   5A1B AF            [ 4] 1948 	xor	a, a
   5A1C                    1949 00159$:
   5A1C BE            [ 7] 1950 	cp	a, (hl)
   5A1D ED A0         [16] 1951 	ldi
   5A1F 20 FB         [12] 1952 	jr	NZ, 00159$
                           1953 ;src/game.c:612: drawText(newNameHighScore, 0, 120, 1);
   5A21 21 78 01      [10] 1954 	ld	hl,#0x0178
   5A24 E5            [11] 1955 	push	hl
   5A25 AF            [ 4] 1956 	xor	a, a
   5A26 F5            [11] 1957 	push	af
   5A27 33            [ 6] 1958 	inc	sp
   5A28 21 9A A0      [10] 1959 	ld	hl,#_newNameHighScore
   5A2B E5            [11] 1960 	push	hl
   5A2C CD 6D 85      [17] 1961 	call	_drawText
   5A2F F1            [10] 1962 	pop	af
                           1963 ;src/game.c:613: drawText("NEW HIGH SCORE", 20, 70, 1);
   5A30 33            [ 6] 1964 	inc	sp
   5A31 21 46 01      [10] 1965 	ld	hl,#0x0146
   5A34 E3            [19] 1966 	ex	(sp),hl
   5A35 3E 14         [ 7] 1967 	ld	a,#0x14
   5A37 F5            [11] 1968 	push	af
   5A38 33            [ 6] 1969 	inc	sp
   5A39 21 B8 5B      [10] 1970 	ld	hl,#___str_11
   5A3C E5            [11] 1971 	push	hl
   5A3D CD 6D 85      [17] 1972 	call	_drawText
   5A40 F1            [10] 1973 	pop	af
                           1974 ;src/game.c:614: drawText("ENTER YOUR NAME", 18, 85, 1);
   5A41 33            [ 6] 1975 	inc	sp
   5A42 21 55 01      [10] 1976 	ld	hl,#0x0155
   5A45 E3            [19] 1977 	ex	(sp),hl
   5A46 3E 12         [ 7] 1978 	ld	a,#0x12
   5A48 F5            [11] 1979 	push	af
   5A49 33            [ 6] 1980 	inc	sp
   5A4A 21 C7 5B      [10] 1981 	ld	hl,#___str_12
   5A4D E5            [11] 1982 	push	hl
   5A4E CD 6D 85      [17] 1983 	call	_drawText
   5A51 F1            [10] 1984 	pop	af
                           1985 ;src/game.c:615: drawText("UP DOWN CHANGE LETTER", 18, 100, 1);
   5A52 33            [ 6] 1986 	inc	sp
   5A53 21 64 01      [10] 1987 	ld	hl,#0x0164
   5A56 E3            [19] 1988 	ex	(sp),hl
   5A57 3E 12         [ 7] 1989 	ld	a,#0x12
   5A59 F5            [11] 1990 	push	af
   5A5A 33            [ 6] 1991 	inc	sp
   5A5B 21 D7 5B      [10] 1992 	ld	hl,#___str_13
   5A5E E5            [11] 1993 	push	hl
   5A5F CD 6D 85      [17] 1994 	call	_drawText
   5A62 F1            [10] 1995 	pop	af
   5A63 F1            [10] 1996 	pop	af
   5A64 33            [ 6] 1997 	inc	sp
                           1998 ;src/game.c:616: pos = 0;
   5A65 DD 36 F9 00   [19] 1999 	ld	-7 (ix),#0x00
                           2000 ;src/game.c:617: chr = 65;
   5A69 DD 36 F8 41   [19] 2001 	ld	-8 (ix),#0x41
                           2002 ;src/game.c:618: moved = 0;
   5A6D DD 36 FA 00   [19] 2003 	ld	-6 (ix),#0x00
                           2004 ;src/game.c:619: while (1) {
   5A71                    2005 00123$:
                           2006 ;src/game.c:620: delay(24);
   5A71 21 00 00      [10] 2007 	ld	hl,#0x0000
   5A74 E5            [11] 2008 	push	hl
   5A75 21 18 00      [10] 2009 	ld	hl,#0x0018
   5A78 E5            [11] 2010 	push	hl
   5A79 CD D9 50      [17] 2011 	call	_delay
   5A7C F1            [10] 2012 	pop	af
   5A7D F1            [10] 2013 	pop	af
                           2014 ;src/game.c:621: cpct_scanKeyboard_f();
   5A7E CD 2D 90      [17] 2015 	call	_cpct_scanKeyboard_f
                           2016 ;src/game.c:623: if (cpct_isKeyPressed(keys.down)) {
   5A81 2A CA 9F      [16] 2017 	ld	hl, (#_keys + 2)
   5A84 CD 21 90      [17] 2018 	call	_cpct_isKeyPressed
   5A87 DD 75 FF      [19] 2019 	ld	-1 (ix),l
                           2020 ;src/game.c:631: newNameHighScore[pos] = 65;
   5A8A 3E 9A         [ 7] 2021 	ld	a,#<(_newNameHighScore)
   5A8C DD 86 F9      [19] 2022 	add	a, -7 (ix)
   5A8F DD 77 FD      [19] 2023 	ld	-3 (ix),a
   5A92 3E A0         [ 7] 2024 	ld	a,#>(_newNameHighScore)
   5A94 CE 00         [ 7] 2025 	adc	a, #0x00
   5A96 DD 77 FE      [19] 2026 	ld	-2 (ix),a
                           2027 ;src/game.c:623: if (cpct_isKeyPressed(keys.down)) {
   5A99 DD 7E FF      [19] 2028 	ld	a,-1 (ix)
   5A9C B7            [ 4] 2029 	or	a, a
   5A9D 28 0A         [12] 2030 	jr	Z,00113$
                           2031 ;src/game.c:624: chr++;
   5A9F DD 34 F8      [23] 2032 	inc	-8 (ix)
                           2033 ;src/game.c:625: moved = 1;
   5AA2 DD 36 FA 01   [19] 2034 	ld	-6 (ix),#0x01
   5AA6 C3 36 5B      [10] 2035 	jp	00114$
   5AA9                    2036 00113$:
                           2037 ;src/game.c:626: } else if (cpct_isKeyPressed(keys.up)) {
   5AA9 2A C8 9F      [16] 2038 	ld	hl, (#_keys + 0)
   5AAC CD 21 90      [17] 2039 	call	_cpct_isKeyPressed
   5AAF 7D            [ 4] 2040 	ld	a,l
   5AB0 B7            [ 4] 2041 	or	a, a
   5AB1 28 0A         [12] 2042 	jr	Z,00110$
                           2043 ;src/game.c:627: chr--;
   5AB3 DD 35 F8      [23] 2044 	dec	-8 (ix)
                           2045 ;src/game.c:628: moved = 1;
   5AB6 DD 36 FA 01   [19] 2046 	ld	-6 (ix),#0x01
   5ABA C3 36 5B      [10] 2047 	jp	00114$
   5ABD                    2048 00110$:
                           2049 ;src/game.c:629: } else if (cpct_isKeyPressed(keys.right)) {
   5ABD 2A CE 9F      [16] 2050 	ld	hl, (#_keys + 6)
   5AC0 CD 21 90      [17] 2051 	call	_cpct_isKeyPressed
   5AC3 7D            [ 4] 2052 	ld	a,l
   5AC4 B7            [ 4] 2053 	or	a, a
   5AC5 28 30         [12] 2054 	jr	Z,00107$
                           2055 ;src/game.c:630: pos++;
   5AC7 DD 34 F9      [23] 2056 	inc	-7 (ix)
                           2057 ;src/game.c:631: newNameHighScore[pos] = 65;
   5ACA 3E 9A         [ 7] 2058 	ld	a,#<(_newNameHighScore)
   5ACC DD 86 F9      [19] 2059 	add	a, -7 (ix)
   5ACF DD 77 FD      [19] 2060 	ld	-3 (ix),a
   5AD2 3E A0         [ 7] 2061 	ld	a,#>(_newNameHighScore)
   5AD4 CE 00         [ 7] 2062 	adc	a, #0x00
   5AD6 DD 77 FE      [19] 2063 	ld	-2 (ix),a
   5AD9 DD 6E FD      [19] 2064 	ld	l,-3 (ix)
   5ADC DD 66 FE      [19] 2065 	ld	h,-2 (ix)
   5ADF 36 41         [10] 2066 	ld	(hl),#0x41
                           2067 ;src/game.c:632: newNameHighScore[pos + 1] = '\0';
   5AE1 DD 4E F9      [19] 2068 	ld	c,-7 (ix)
   5AE4 0C            [ 4] 2069 	inc	c
   5AE5 21 9A A0      [10] 2070 	ld	hl,#_newNameHighScore
   5AE8 06 00         [ 7] 2071 	ld	b,#0x00
   5AEA 09            [11] 2072 	add	hl, bc
   5AEB 36 00         [10] 2073 	ld	(hl),#0x00
                           2074 ;src/game.c:633: chr = 65;
   5AED DD 36 F8 41   [19] 2075 	ld	-8 (ix),#0x41
                           2076 ;src/game.c:634: moved = 1;
   5AF1 DD 36 FA 01   [19] 2077 	ld	-6 (ix),#0x01
   5AF5 18 3F         [12] 2078 	jr	00114$
   5AF7                    2079 00107$:
                           2080 ;src/game.c:635: }else if (cpct_isKeyPressed(keys.left)) {
   5AF7 2A CC 9F      [16] 2081 	ld	hl, (#_keys + 4)
   5AFA CD 21 90      [17] 2082 	call	_cpct_isKeyPressed
   5AFD 7D            [ 4] 2083 	ld	a,l
   5AFE B7            [ 4] 2084 	or	a, a
   5AFF 28 2A         [12] 2085 	jr	Z,00104$
                           2086 ;src/game.c:636: newNameHighScore[pos] = '\0';
   5B01 DD 6E FD      [19] 2087 	ld	l,-3 (ix)
   5B04 DD 66 FE      [19] 2088 	ld	h,-2 (ix)
   5B07 36 00         [10] 2089 	ld	(hl),#0x00
                           2090 ;src/game.c:637: pos--;
   5B09 DD 35 F9      [23] 2091 	dec	-7 (ix)
                           2092 ;src/game.c:631: newNameHighScore[pos] = 65;
   5B0C 3E 9A         [ 7] 2093 	ld	a,#<(_newNameHighScore)
   5B0E DD 86 F9      [19] 2094 	add	a, -7 (ix)
   5B11 DD 77 FD      [19] 2095 	ld	-3 (ix),a
   5B14 3E A0         [ 7] 2096 	ld	a,#>(_newNameHighScore)
   5B16 CE 00         [ 7] 2097 	adc	a, #0x00
   5B18 DD 77 FE      [19] 2098 	ld	-2 (ix),a
                           2099 ;src/game.c:638: chr = newNameHighScore[pos];
   5B1B DD 6E FD      [19] 2100 	ld	l,-3 (ix)
   5B1E DD 66 FE      [19] 2101 	ld	h,-2 (ix)
   5B21 7E            [ 7] 2102 	ld	a,(hl)
   5B22 DD 77 F8      [19] 2103 	ld	-8 (ix),a
                           2104 ;src/game.c:639: moved = 1;
   5B25 DD 36 FA 01   [19] 2105 	ld	-6 (ix),#0x01
   5B29 18 0B         [12] 2106 	jr	00114$
   5B2B                    2107 00104$:
                           2108 ;src/game.c:640: } else if (cpct_isKeyPressed(keys.abort)) {
   5B2B 2A D4 9F      [16] 2109 	ld	hl, (#_keys + 12)
   5B2E CD 21 90      [17] 2110 	call	_cpct_isKeyPressed
   5B31 7D            [ 4] 2111 	ld	a,l
   5B32 B7            [ 4] 2112 	or	a, a
   5B33 C2 B1 5B      [10] 2113 	jp	NZ,00125$
                           2114 ;src/game.c:641: break;
   5B36                    2115 00114$:
                           2116 ;src/game.c:643: if (moved) {
   5B36 DD 7E FA      [19] 2117 	ld	a,-6 (ix)
   5B39 B7            [ 4] 2118 	or	a, a
   5B3A CA 71 5A      [10] 2119 	jp	Z,00123$
                           2120 ;src/game.c:644: moved = 0;
   5B3D DD 36 FA 00   [19] 2121 	ld	-6 (ix),#0x00
                           2122 ;src/game.c:645: if (chr > 90)
   5B41 3E 5A         [ 7] 2123 	ld	a,#0x5A
   5B43 DD 96 F8      [19] 2124 	sub	a, -8 (ix)
   5B46 30 06         [12] 2125 	jr	NC,00118$
                           2126 ;src/game.c:646: chr = 65;
   5B48 DD 36 F8 41   [19] 2127 	ld	-8 (ix),#0x41
   5B4C 18 0B         [12] 2128 	jr	00119$
   5B4E                    2129 00118$:
                           2130 ;src/game.c:647: else if (chr < 65)
   5B4E DD 7E F8      [19] 2131 	ld	a,-8 (ix)
   5B51 D6 41         [ 7] 2132 	sub	a, #0x41
   5B53 30 04         [12] 2133 	jr	NC,00119$
                           2134 ;src/game.c:648: chr = 90;
   5B55 DD 36 F8 5A   [19] 2135 	ld	-8 (ix),#0x5A
   5B59                    2136 00119$:
                           2137 ;src/game.c:649: newNameHighScore[pos] = chr;
   5B59 DD 6E FD      [19] 2138 	ld	l,-3 (ix)
   5B5C DD 66 FE      [19] 2139 	ld	h,-2 (ix)
   5B5F DD 7E F8      [19] 2140 	ld	a,-8 (ix)
   5B62 77            [ 7] 2141 	ld	(hl),a
                           2142 ;src/game.c:650: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 20, 120);
   5B63 21 14 78      [10] 2143 	ld	hl,#0x7814
   5B66 E5            [11] 2144 	push	hl
   5B67 21 00 C0      [10] 2145 	ld	hl,#0xC000
   5B6A E5            [11] 2146 	push	hl
   5B6B CD 29 94      [17] 2147 	call	_cpct_getScreenPtr
   5B6E 33            [ 6] 2148 	inc	sp
   5B6F 33            [ 6] 2149 	inc	sp
   5B70 E5            [11] 2150 	push	hl
                           2151 ;src/game.c:651: cpct_drawSolidBox(pvmem, cpct_px2byteM0(5, 5), 60, 11);
   5B71 21 05 05      [10] 2152 	ld	hl,#0x0505
   5B74 E5            [11] 2153 	push	hl
   5B75 CD F6 92      [17] 2154 	call	_cpct_px2byteM0
   5B78 DD 75 FD      [19] 2155 	ld	-3 (ix),l
   5B7B DD 7E F6      [19] 2156 	ld	a,-10 (ix)
   5B7E DD 77 FB      [19] 2157 	ld	-5 (ix),a
   5B81 DD 7E F7      [19] 2158 	ld	a,-9 (ix)
   5B84 DD 77 FC      [19] 2159 	ld	-4 (ix),a
   5B87 21 3C 0B      [10] 2160 	ld	hl,#0x0B3C
   5B8A E5            [11] 2161 	push	hl
   5B8B DD 7E FD      [19] 2162 	ld	a,-3 (ix)
   5B8E F5            [11] 2163 	push	af
   5B8F 33            [ 6] 2164 	inc	sp
   5B90 DD 6E FB      [19] 2165 	ld	l,-5 (ix)
   5B93 DD 66 FC      [19] 2166 	ld	h,-4 (ix)
   5B96 E5            [11] 2167 	push	hl
   5B97 CD 3F 93      [17] 2168 	call	_cpct_drawSolidBox
   5B9A F1            [10] 2169 	pop	af
                           2170 ;src/game.c:653: drawText(newNameHighScore, 20, 120, 1);
   5B9B 33            [ 6] 2171 	inc	sp
   5B9C 21 78 01      [10] 2172 	ld	hl,#0x0178
   5B9F E3            [19] 2173 	ex	(sp),hl
   5BA0 3E 14         [ 7] 2174 	ld	a,#0x14
   5BA2 F5            [11] 2175 	push	af
   5BA3 33            [ 6] 2176 	inc	sp
   5BA4 21 9A A0      [10] 2177 	ld	hl,#_newNameHighScore
   5BA7 E5            [11] 2178 	push	hl
   5BA8 CD 6D 85      [17] 2179 	call	_drawText
   5BAB F1            [10] 2180 	pop	af
   5BAC F1            [10] 2181 	pop	af
   5BAD 33            [ 6] 2182 	inc	sp
   5BAE C3 71 5A      [10] 2183 	jp	00123$
   5BB1                    2184 00125$:
   5BB1 DD F9         [10] 2185 	ld	sp, ix
   5BB3 DD E1         [14] 2186 	pop	ix
   5BB5 C9            [10] 2187 	ret
   5BB6                    2188 ___str_10:
   5BB6 41                 2189 	.ascii "A"
   5BB7 00                 2190 	.db 0x00
   5BB8                    2191 ___str_11:
   5BB8 4E 45 57 20 48 49  2192 	.ascii "NEW HIGH SCORE"
        47 48 20 53 43 4F
        52 45
   5BC6 00                 2193 	.db 0x00
   5BC7                    2194 ___str_12:
   5BC7 45 4E 54 45 52 20  2195 	.ascii "ENTER YOUR NAME"
        59 4F 55 52 20 4E
        41 4D 45
   5BD6 00                 2196 	.db 0x00
   5BD7                    2197 ___str_13:
   5BD7 55 50 20 44 4F 57  2198 	.ascii "UP DOWN CHANGE LETTER"
        4E 20 43 48 41 4E
        47 45 20 4C 45 54
        54 45 52
   5BEC 00                 2199 	.db 0x00
                           2200 ;src/game.c:668: void setHighScore(u32 score) {
                           2201 ;	---------------------------------
                           2202 ; Function setHighScore
                           2203 ; ---------------------------------
   5BED                    2204 _setHighScore::
   5BED DD E5         [15] 2205 	push	ix
   5BEF DD 21 00 00   [14] 2206 	ld	ix,#0
   5BF3 DD 39         [15] 2207 	add	ix,sp
   5BF5 21 F6 FF      [10] 2208 	ld	hl,#-10
   5BF8 39            [11] 2209 	add	hl,sp
   5BF9 F9            [ 6] 2210 	ld	sp,hl
                           2211 ;src/game.c:671: i = 8;
   5BFA 0E 08         [ 7] 2212 	ld	c,#0x08
                           2213 ;src/game.c:672: while ((score > scoreHallOfFame[i - 1]) && (i>0)) {
   5BFC 11 EF 9F      [10] 2214 	ld	de,#_scoreHallOfFame+0
   5BFF                    2215 00102$:
   5BFF 41            [ 4] 2216 	ld	b,c
   5C00 05            [ 4] 2217 	dec	b
   5C01 68            [ 4] 2218 	ld	l,b
   5C02 26 00         [ 7] 2219 	ld	h,#0x00
   5C04 29            [11] 2220 	add	hl, hl
   5C05 29            [11] 2221 	add	hl, hl
   5C06 19            [11] 2222 	add	hl,de
   5C07 D5            [11] 2223 	push	de
   5C08 C5            [11] 2224 	push	bc
   5C09 EB            [ 4] 2225 	ex	de,hl
   5C0A 21 0A 00      [10] 2226 	ld	hl, #0x000A
   5C0D 39            [11] 2227 	add	hl, sp
   5C0E EB            [ 4] 2228 	ex	de, hl
   5C0F 01 04 00      [10] 2229 	ld	bc, #0x0004
   5C12 ED B0         [21] 2230 	ldir
   5C14 C1            [10] 2231 	pop	bc
   5C15 D1            [10] 2232 	pop	de
   5C16 DD 7E FC      [19] 2233 	ld	a,-4 (ix)
   5C19 DD 96 04      [19] 2234 	sub	a, 4 (ix)
   5C1C DD 7E FD      [19] 2235 	ld	a,-3 (ix)
   5C1F DD 9E 05      [19] 2236 	sbc	a, 5 (ix)
   5C22 DD 7E FE      [19] 2237 	ld	a,-2 (ix)
   5C25 DD 9E 06      [19] 2238 	sbc	a, 6 (ix)
   5C28 DD 7E FF      [19] 2239 	ld	a,-1 (ix)
   5C2B DD 9E 07      [19] 2240 	sbc	a, 7 (ix)
   5C2E 30 07         [12] 2241 	jr	NC,00104$
   5C30 79            [ 4] 2242 	ld	a,c
   5C31 B7            [ 4] 2243 	or	a, a
   5C32 28 03         [12] 2244 	jr	Z,00104$
                           2245 ;src/game.c:673: i--;
   5C34 48            [ 4] 2246 	ld	c,b
   5C35 18 C8         [12] 2247 	jr	00102$
   5C37                    2248 00104$:
                           2249 ;src/game.c:675: j = 7;
                           2250 ;src/game.c:676: if (i <= j) {
   5C37 3E 07         [ 7] 2251 	ld	a,#0x07
   5C39 47            [ 4] 2252 	ld	b,a
   5C3A 91            [ 4] 2253 	sub	a, c
   5C3B DA EE 5C      [10] 2254 	jp	C,00111$
                           2255 ;src/game.c:677: while ((i < j) && (j>0)) {
   5C3E                    2256 00106$:
                           2257 ;src/game.c:678: scoreHallOfFame[j] = scoreHallOfFame[j - 1];
   5C3E DD 70 FC      [19] 2258 	ld	-4 (ix),b
   5C41 DD 36 FD 00   [19] 2259 	ld	-3 (ix),#0x00
                           2260 ;src/game.c:679: strcpy(nameHallOfFame[j], nameHallOfFame[j - 1]);
   5C45 D5            [11] 2261 	push	de
   5C46 58            [ 4] 2262 	ld	e,b
   5C47 16 00         [ 7] 2263 	ld	d,#0x00
   5C49 6B            [ 4] 2264 	ld	l, e
   5C4A 62            [ 4] 2265 	ld	h, d
   5C4B 29            [11] 2266 	add	hl, hl
   5C4C 19            [11] 2267 	add	hl, de
   5C4D 29            [11] 2268 	add	hl, hl
   5C4E 19            [11] 2269 	add	hl, de
   5C4F 29            [11] 2270 	add	hl, hl
   5C50 19            [11] 2271 	add	hl, de
   5C51 D1            [10] 2272 	pop	de
   5C52 DD 75 FA      [19] 2273 	ld	-6 (ix),l
   5C55 DD 74 FB      [19] 2274 	ld	-5 (ix),h
                           2275 ;src/game.c:678: scoreHallOfFame[j] = scoreHallOfFame[j - 1];
   5C58 DD 6E FC      [19] 2276 	ld	l,-4 (ix)
   5C5B DD 66 FD      [19] 2277 	ld	h,-3 (ix)
   5C5E 29            [11] 2278 	add	hl, hl
   5C5F 29            [11] 2279 	add	hl, hl
                           2280 ;src/game.c:679: strcpy(nameHallOfFame[j], nameHallOfFame[j - 1]);
   5C60 3E 0F         [ 7] 2281 	ld	a,#<(_nameHallOfFame)
   5C62 DD 86 FA      [19] 2282 	add	a, -6 (ix)
   5C65 DD 77 FA      [19] 2283 	ld	-6 (ix),a
   5C68 3E A0         [ 7] 2284 	ld	a,#>(_nameHallOfFame)
   5C6A DD 8E FB      [19] 2285 	adc	a, -5 (ix)
   5C6D DD 77 FB      [19] 2286 	ld	-5 (ix),a
                           2287 ;src/game.c:678: scoreHallOfFame[j] = scoreHallOfFame[j - 1];
   5C70 19            [11] 2288 	add	hl,de
   5C71 DD 75 FC      [19] 2289 	ld	-4 (ix),l
   5C74 DD 74 FD      [19] 2290 	ld	-3 (ix),h
                           2291 ;src/game.c:679: strcpy(nameHallOfFame[j], nameHallOfFame[j - 1]);
                           2292 ;src/game.c:677: while ((i < j) && (j>0)) {
   5C77 79            [ 4] 2293 	ld	a,c
   5C78 90            [ 4] 2294 	sub	a, b
   5C79 30 4F         [12] 2295 	jr	NC,00108$
   5C7B 78            [ 4] 2296 	ld	a,b
   5C7C B7            [ 4] 2297 	or	a, a
   5C7D 28 4B         [12] 2298 	jr	Z,00108$
                           2299 ;src/game.c:678: scoreHallOfFame[j] = scoreHallOfFame[j - 1];
   5C7F 05            [ 4] 2300 	dec	b
   5C80 68            [ 4] 2301 	ld	l,b
   5C81 26 00         [ 7] 2302 	ld	h,#0x00
   5C83 29            [11] 2303 	add	hl, hl
   5C84 29            [11] 2304 	add	hl, hl
   5C85 19            [11] 2305 	add	hl,de
   5C86 D5            [11] 2306 	push	de
   5C87 C5            [11] 2307 	push	bc
   5C88 EB            [ 4] 2308 	ex	de,hl
   5C89 21 04 00      [10] 2309 	ld	hl, #0x0004
   5C8C 39            [11] 2310 	add	hl, sp
   5C8D EB            [ 4] 2311 	ex	de, hl
   5C8E 01 04 00      [10] 2312 	ld	bc, #0x0004
   5C91 ED B0         [21] 2313 	ldir
   5C93 DD 5E FC      [19] 2314 	ld	e,-4 (ix)
   5C96 DD 56 FD      [19] 2315 	ld	d,-3 (ix)
   5C99 21 04 00      [10] 2316 	ld	hl, #0x0004
   5C9C 39            [11] 2317 	add	hl, sp
   5C9D 01 04 00      [10] 2318 	ld	bc, #0x0004
   5CA0 ED B0         [21] 2319 	ldir
   5CA2 C1            [10] 2320 	pop	bc
   5CA3 58            [ 4] 2321 	ld	e,b
   5CA4 16 00         [ 7] 2322 	ld	d,#0x00
   5CA6 6B            [ 4] 2323 	ld	l, e
   5CA7 62            [ 4] 2324 	ld	h, d
   5CA8 29            [11] 2325 	add	hl, hl
   5CA9 19            [11] 2326 	add	hl, de
   5CAA 29            [11] 2327 	add	hl, hl
   5CAB 19            [11] 2328 	add	hl, de
   5CAC 29            [11] 2329 	add	hl, hl
   5CAD 19            [11] 2330 	add	hl, de
   5CAE D1            [10] 2331 	pop	de
   5CAF 3E 0F         [ 7] 2332 	ld	a,#<(_nameHallOfFame)
   5CB1 85            [ 4] 2333 	add	a, l
   5CB2 6F            [ 4] 2334 	ld	l,a
   5CB3 3E A0         [ 7] 2335 	ld	a,#>(_nameHallOfFame)
   5CB5 8C            [ 4] 2336 	adc	a, h
   5CB6 67            [ 4] 2337 	ld	h,a
   5CB7 C5            [11] 2338 	push	bc
   5CB8 D5            [11] 2339 	push	de
   5CB9 DD 5E FA      [19] 2340 	ld	e,-6 (ix)
   5CBC DD 56 FB      [19] 2341 	ld	d,-5 (ix)
   5CBF AF            [ 4] 2342 	xor	a, a
   5CC0                    2343 00140$:
   5CC0 BE            [ 7] 2344 	cp	a, (hl)
   5CC1 ED A0         [16] 2345 	ldi
   5CC3 20 FB         [12] 2346 	jr	NZ, 00140$
   5CC5 D1            [10] 2347 	pop	de
   5CC6 C1            [10] 2348 	pop	bc
                           2349 ;src/game.c:680: j--;
   5CC7 C3 3E 5C      [10] 2350 	jp	00106$
   5CCA                    2351 00108$:
                           2352 ;src/game.c:682: getName();
   5CCA CD FB 59      [17] 2353 	call	_getName
                           2354 ;src/game.c:683: wait4UserKeypress();
   5CCD CD 89 8A      [17] 2355 	call	_wait4UserKeypress
                           2356 ;src/game.c:684: scoreHallOfFame[j] = score;
   5CD0 DD 5E FC      [19] 2357 	ld	e,-4 (ix)
   5CD3 DD 56 FD      [19] 2358 	ld	d,-3 (ix)
   5CD6 21 0E 00      [10] 2359 	ld	hl, #0x000E
   5CD9 39            [11] 2360 	add	hl, sp
   5CDA 01 04 00      [10] 2361 	ld	bc, #0x0004
   5CDD ED B0         [21] 2362 	ldir
                           2363 ;src/game.c:685: strcpy(nameHallOfFame[j], newNameHighScore);
   5CDF DD 5E FA      [19] 2364 	ld	e,-6 (ix)
   5CE2 DD 56 FB      [19] 2365 	ld	d,-5 (ix)
   5CE5 21 9A A0      [10] 2366 	ld	hl,#_newNameHighScore
   5CE8 AF            [ 4] 2367 	xor	a, a
   5CE9                    2368 00141$:
   5CE9 BE            [ 7] 2369 	cp	a, (hl)
   5CEA ED A0         [16] 2370 	ldi
   5CEC 20 FB         [12] 2371 	jr	NZ, 00141$
   5CEE                    2372 00111$:
   5CEE DD F9         [10] 2373 	ld	sp, ix
   5CF0 DD E1         [14] 2374 	pop	ix
   5CF2 C9            [10] 2375 	ret
                           2376 ;src/game.c:689: void drawScoreBoard() {
                           2377 ;	---------------------------------
                           2378 ; Function drawScoreBoard
                           2379 ; ---------------------------------
   5CF3                    2380 _drawScoreBoard::
   5CF3 DD E5         [15] 2381 	push	ix
   5CF5 DD 21 00 00   [14] 2382 	ld	ix,#0
   5CF9 DD 39         [15] 2383 	add	ix,sp
   5CFB F5            [11] 2384 	push	af
   5CFC F5            [11] 2385 	push	af
                           2386 ;src/game.c:693: cpct_memset(CPCT_VMEM_START, cpct_px2byteM0(5, 5), 0x4000);
   5CFD 21 05 05      [10] 2387 	ld	hl,#0x0505
   5D00 E5            [11] 2388 	push	hl
   5D01 CD F6 92      [17] 2389 	call	_cpct_px2byteM0
   5D04 45            [ 4] 2390 	ld	b,l
   5D05 21 00 40      [10] 2391 	ld	hl,#0x4000
   5D08 E5            [11] 2392 	push	hl
   5D09 C5            [11] 2393 	push	bc
   5D0A 33            [ 6] 2394 	inc	sp
   5D0B 26 C0         [ 7] 2395 	ld	h, #0xC0
   5D0D E5            [11] 2396 	push	hl
   5D0E CD 12 93      [17] 2397 	call	_cpct_memset
                           2398 ;src/game.c:695: drawText("THREES SCOREBOARD", 13, 2, 1);
   5D11 21 02 01      [10] 2399 	ld	hl,#0x0102
   5D14 E5            [11] 2400 	push	hl
   5D15 3E 0D         [ 7] 2401 	ld	a,#0x0D
   5D17 F5            [11] 2402 	push	af
   5D18 33            [ 6] 2403 	inc	sp
   5D19 21 10 5E      [10] 2404 	ld	hl,#___str_14
   5D1C E5            [11] 2405 	push	hl
   5D1D CD 6D 85      [17] 2406 	call	_drawText
   5D20 F1            [10] 2407 	pop	af
   5D21 F1            [10] 2408 	pop	af
   5D22 33            [ 6] 2409 	inc	sp
                           2410 ;src/game.c:697: for (i = 0; i < 8; i++) {
   5D23 DD 36 FC 00   [19] 2411 	ld	-4 (ix),#0x00
   5D27 DD 36 FF 00   [19] 2412 	ld	-1 (ix),#0x00
   5D2B 01 00 00      [10] 2413 	ld	bc,#0x0000
   5D2E DD 36 FD 00   [19] 2414 	ld	-3 (ix),#0x00
   5D32                    2415 00106$:
                           2416 ;src/game.c:698: drawNumber(i + 1, 2, 5, 30 + (i * 15));
   5D32 DD 7E FF      [19] 2417 	ld	a,-1 (ix)
   5D35 C6 1E         [ 7] 2418 	add	a, #0x1E
   5D37 DD 77 FE      [19] 2419 	ld	-2 (ix),a
   5D3A DD 5E FC      [19] 2420 	ld	e,-4 (ix)
   5D3D 16 00         [ 7] 2421 	ld	d,#0x00
   5D3F D5            [11] 2422 	push	de
   5D40 FD E1         [14] 2423 	pop	iy
   5D42 FD 23         [10] 2424 	inc	iy
   5D44 C5            [11] 2425 	push	bc
   5D45 D5            [11] 2426 	push	de
   5D46 DD 7E FE      [19] 2427 	ld	a,-2 (ix)
   5D49 F5            [11] 2428 	push	af
   5D4A 33            [ 6] 2429 	inc	sp
   5D4B 21 02 05      [10] 2430 	ld	hl,#0x0502
   5D4E E5            [11] 2431 	push	hl
   5D4F FD E5         [15] 2432 	push	iy
   5D51 CD D0 84      [17] 2433 	call	_drawNumber
   5D54 F1            [10] 2434 	pop	af
   5D55 F1            [10] 2435 	pop	af
   5D56 33            [ 6] 2436 	inc	sp
   5D57 D1            [10] 2437 	pop	de
   5D58 C1            [10] 2438 	pop	bc
                           2439 ;src/game.c:699: drawText(nameHallOfFame[i], 14, 30 + (i * 15), 0);
   5D59 FD 21 0F A0   [14] 2440 	ld	iy,#_nameHallOfFame
   5D5D FD 09         [15] 2441 	add	iy, bc
   5D5F C5            [11] 2442 	push	bc
   5D60 D5            [11] 2443 	push	de
   5D61 AF            [ 4] 2444 	xor	a, a
   5D62 F5            [11] 2445 	push	af
   5D63 33            [ 6] 2446 	inc	sp
   5D64 DD 56 FE      [19] 2447 	ld	d, -2 (ix)
   5D67 1E 0E         [ 7] 2448 	ld	e,#0x0E
   5D69 D5            [11] 2449 	push	de
   5D6A FD E5         [15] 2450 	push	iy
   5D6C CD 6D 85      [17] 2451 	call	_drawText
   5D6F F1            [10] 2452 	pop	af
   5D70 F1            [10] 2453 	pop	af
   5D71 33            [ 6] 2454 	inc	sp
   5D72 D1            [10] 2455 	pop	de
   5D73 C1            [10] 2456 	pop	bc
                           2457 ;src/game.c:700: drawNumber(scoreHallOfFame[i], 1, 69, 30 + (i * 15));
   5D74 DD 7E FD      [19] 2458 	ld	a,-3 (ix)
   5D77 C6 1E         [ 7] 2459 	add	a, #0x1E
   5D79 DD 77 FE      [19] 2460 	ld	-2 (ix),a
   5D7C EB            [ 4] 2461 	ex	de,hl
   5D7D 29            [11] 2462 	add	hl, hl
   5D7E 29            [11] 2463 	add	hl, hl
   5D7F 11 EF 9F      [10] 2464 	ld	de,#_scoreHallOfFame
   5D82 19            [11] 2465 	add	hl,de
   5D83 5E            [ 7] 2466 	ld	e,(hl)
   5D84 23            [ 6] 2467 	inc	hl
   5D85 56            [ 7] 2468 	ld	d,(hl)
   5D86 23            [ 6] 2469 	inc	hl
   5D87 23            [ 6] 2470 	inc	hl
   5D88 7E            [ 7] 2471 	ld	a,(hl)
   5D89 2B            [ 6] 2472 	dec	hl
   5D8A 6E            [ 7] 2473 	ld	l,(hl)
   5D8B C5            [11] 2474 	push	bc
   5D8C DD 7E FE      [19] 2475 	ld	a,-2 (ix)
   5D8F F5            [11] 2476 	push	af
   5D90 33            [ 6] 2477 	inc	sp
   5D91 21 01 45      [10] 2478 	ld	hl,#0x4501
   5D94 E5            [11] 2479 	push	hl
   5D95 D5            [11] 2480 	push	de
   5D96 CD D0 84      [17] 2481 	call	_drawNumber
   5D99 F1            [10] 2482 	pop	af
   5D9A F1            [10] 2483 	pop	af
   5D9B 33            [ 6] 2484 	inc	sp
   5D9C C1            [10] 2485 	pop	bc
                           2486 ;src/game.c:697: for (i = 0; i < 8; i++) {
   5D9D DD 7E FF      [19] 2487 	ld	a,-1 (ix)
   5DA0 C6 0F         [ 7] 2488 	add	a, #0x0F
   5DA2 DD 77 FF      [19] 2489 	ld	-1 (ix),a
   5DA5 21 0F 00      [10] 2490 	ld	hl,#0x000F
   5DA8 09            [11] 2491 	add	hl,bc
   5DA9 4D            [ 4] 2492 	ld	c,l
   5DAA 44            [ 4] 2493 	ld	b,h
   5DAB DD 7E FD      [19] 2494 	ld	a,-3 (ix)
   5DAE C6 0F         [ 7] 2495 	add	a, #0x0F
   5DB0 DD 77 FD      [19] 2496 	ld	-3 (ix),a
   5DB3 DD 34 FC      [23] 2497 	inc	-4 (ix)
   5DB6 DD 7E FC      [19] 2498 	ld	a,-4 (ix)
   5DB9 D6 08         [ 7] 2499 	sub	a, #0x08
   5DBB DA 32 5D      [10] 2500 	jp	C,00106$
                           2501 ;src/game.c:703: drawText("JOHN LOBO", 25, 170, 1);
   5DBE 21 AA 01      [10] 2502 	ld	hl,#0x01AA
   5DC1 E5            [11] 2503 	push	hl
   5DC2 3E 19         [ 7] 2504 	ld	a,#0x19
   5DC4 F5            [11] 2505 	push	af
   5DC5 33            [ 6] 2506 	inc	sp
   5DC6 21 22 5E      [10] 2507 	ld	hl,#___str_15
   5DC9 E5            [11] 2508 	push	hl
   5DCA CD 6D 85      [17] 2509 	call	_drawText
   5DCD F1            [10] 2510 	pop	af
                           2511 ;src/game.c:704: drawText("@ GLASNOST CORP 2015", 11, 185, 1);
   5DCE 33            [ 6] 2512 	inc	sp
   5DCF 21 B9 01      [10] 2513 	ld	hl,#0x01B9
   5DD2 E3            [19] 2514 	ex	(sp),hl
   5DD3 3E 0B         [ 7] 2515 	ld	a,#0x0B
   5DD5 F5            [11] 2516 	push	af
   5DD6 33            [ 6] 2517 	inc	sp
   5DD7 21 2C 5E      [10] 2518 	ld	hl,#___str_16
   5DDA E5            [11] 2519 	push	hl
   5DDB CD 6D 85      [17] 2520 	call	_drawText
   5DDE F1            [10] 2521 	pop	af
   5DDF F1            [10] 2522 	pop	af
   5DE0 33            [ 6] 2523 	inc	sp
                           2524 ;src/game.c:708: do {
   5DE1 01 40 9C      [10] 2525 	ld	bc,#0x9C40
   5DE4 11 00 00      [10] 2526 	ld	de,#0x0000
   5DE7                    2527 00103$:
                           2528 ;src/game.c:709: c--;                       // One more cycle
   5DE7 79            [ 4] 2529 	ld	a,c
   5DE8 C6 FF         [ 7] 2530 	add	a,#0xFF
   5DEA 4F            [ 4] 2531 	ld	c,a
   5DEB 78            [ 4] 2532 	ld	a,b
   5DEC CE FF         [ 7] 2533 	adc	a,#0xFF
   5DEE 47            [ 4] 2534 	ld	b,a
   5DEF 7B            [ 4] 2535 	ld	a,e
   5DF0 CE FF         [ 7] 2536 	adc	a,#0xFF
   5DF2 5F            [ 4] 2537 	ld	e,a
   5DF3 7A            [ 4] 2538 	ld	a,d
   5DF4 CE FF         [ 7] 2539 	adc	a,#0xFF
   5DF6 57            [ 4] 2540 	ld	d,a
                           2541 ;src/game.c:710: cpct_scanKeyboard_f();     // Scan the scan the keyboard
   5DF7 C5            [11] 2542 	push	bc
   5DF8 D5            [11] 2543 	push	de
   5DF9 CD 2D 90      [17] 2544 	call	_cpct_scanKeyboard_f
   5DFC CD DB 92      [17] 2545 	call	_cpct_isAnyKeyPressed_f
   5DFF D1            [10] 2546 	pop	de
   5E00 C1            [10] 2547 	pop	bc
   5E01 7D            [ 4] 2548 	ld	a,l
   5E02 B7            [ 4] 2549 	or	a, a
   5E03 20 06         [12] 2550 	jr	NZ,00108$
   5E05 7A            [ 4] 2551 	ld	a,d
   5E06 B3            [ 4] 2552 	or	a, e
   5E07 B0            [ 4] 2553 	or	a, b
   5E08 B1            [ 4] 2554 	or	a,c
   5E09 20 DC         [12] 2555 	jr	NZ,00103$
   5E0B                    2556 00108$:
   5E0B DD F9         [10] 2557 	ld	sp, ix
   5E0D DD E1         [14] 2558 	pop	ix
   5E0F C9            [10] 2559 	ret
   5E10                    2560 ___str_14:
   5E10 54 48 52 45 45 53  2561 	.ascii "THREES SCOREBOARD"
        20 53 43 4F 52 45
        42 4F 41 52 44
   5E21 00                 2562 	.db 0x00
   5E22                    2563 ___str_15:
   5E22 4A 4F 48 4E 20 4C  2564 	.ascii "JOHN LOBO"
        4F 42 4F
   5E2B 00                 2565 	.db 0x00
   5E2C                    2566 ___str_16:
   5E2C 40 20 47 4C 41 53  2567 	.ascii "@ GLASNOST CORP 2015"
        4E 4F 53 54 20 43
        4F 52 50 20 32 30
        31 35
   5E40 00                 2568 	.db 0x00
                           2569 ;src/game.c:723: void game(void) {
                           2570 ;	---------------------------------
                           2571 ; Function game
                           2572 ; ---------------------------------
   5E41                    2573 _game::
   5E41 DD E5         [15] 2574 	push	ix
   5E43 DD 21 00 00   [14] 2575 	ld	ix,#0
   5E47 DD 39         [15] 2576 	add	ix,sp
   5E49 3B            [ 6] 2577 	dec	sp
                           2578 ;src/game.c:727: initGame();
   5E4A CD 7C 55      [17] 2579 	call	_initGame
                           2580 ;src/game.c:730: clearScreen();
   5E4D CD BE 8F      [17] 2581 	call	_clearScreen
                           2582 ;src/game.c:733: drawFrame(2, 1, 49, 182);
   5E50 21 31 B6      [10] 2583 	ld	hl,#0xB631
   5E53 E5            [11] 2584 	push	hl
   5E54 21 02 01      [10] 2585 	ld	hl,#0x0102
   5E57 E5            [11] 2586 	push	hl
   5E58 CD AD 8C      [17] 2587 	call	_drawFrame
   5E5B F1            [10] 2588 	pop	af
   5E5C F1            [10] 2589 	pop	af
                           2590 ;src/game.c:734: printCells();
   5E5D CD 88 58      [17] 2591 	call	_printCells
                           2592 ;src/game.c:735: drawText("NEXT", 62, 2, 0);
   5E60 21 02 00      [10] 2593 	ld	hl,#0x0002
   5E63 E5            [11] 2594 	push	hl
   5E64 3E 3E         [ 7] 2595 	ld	a,#0x3E
   5E66 F5            [11] 2596 	push	af
   5E67 33            [ 6] 2597 	inc	sp
   5E68 21 9B 5F      [10] 2598 	ld	hl,#___str_17
   5E6B E5            [11] 2599 	push	hl
   5E6C CD 6D 85      [17] 2600 	call	_drawText
   5E6F F1            [10] 2601 	pop	af
   5E70 F1            [10] 2602 	pop	af
   5E71 33            [ 6] 2603 	inc	sp
                           2604 ;src/game.c:737: wait4UserKeypress();
   5E72 CD 89 8A      [17] 2605 	call	_wait4UserKeypress
                           2606 ;src/game.c:739: moved = 0;
   5E75 DD 36 FF 00   [19] 2607 	ld	-1 (ix),#0x00
                           2608 ;src/game.c:741: while (1) {
   5E79                    2609 00128$:
                           2610 ;src/game.c:742: delay(24);
   5E79 21 00 00      [10] 2611 	ld	hl,#0x0000
   5E7C E5            [11] 2612 	push	hl
   5E7D 21 18 00      [10] 2613 	ld	hl,#0x0018
   5E80 E5            [11] 2614 	push	hl
   5E81 CD D9 50      [17] 2615 	call	_delay
   5E84 F1            [10] 2616 	pop	af
   5E85 F1            [10] 2617 	pop	af
                           2618 ;src/game.c:743: cpct_scanKeyboard_f();
   5E86 CD 2D 90      [17] 2619 	call	_cpct_scanKeyboard_f
                           2620 ;src/game.c:745: if (cpct_isKeyPressed(keys.right)) {
   5E89 2A CE 9F      [16] 2621 	ld	hl, (#_keys + 6)
   5E8C CD 21 90      [17] 2622 	call	_cpct_isKeyPressed
   5E8F 7D            [ 4] 2623 	ld	a,l
   5E90 B7            [ 4] 2624 	or	a, a
   5E91 28 15         [12] 2625 	jr	Z,00121$
                           2626 ;src/game.c:746: if (rotateCellsRight()) {
   5E93 CD 58 56      [17] 2627 	call	_rotateCellsRight
   5E96 7D            [ 4] 2628 	ld	a,l
   5E97 B7            [ 4] 2629 	or	a, a
   5E98 28 75         [12] 2630 	jr	Z,00122$
                           2631 ;src/game.c:747: addRandomCellTurn(RIGHT);
   5E9A 3E 01         [ 7] 2632 	ld	a,#0x01
   5E9C F5            [11] 2633 	push	af
   5E9D 33            [ 6] 2634 	inc	sp
   5E9E CD BB 52      [17] 2635 	call	_addRandomCellTurn
   5EA1 33            [ 6] 2636 	inc	sp
                           2637 ;src/game.c:748: moved = 1;
   5EA2 DD 36 FF 01   [19] 2638 	ld	-1 (ix),#0x01
   5EA6 18 67         [12] 2639 	jr	00122$
   5EA8                    2640 00121$:
                           2641 ;src/game.c:750: } else if (cpct_isKeyPressed(keys.left)) {
   5EA8 2A CC 9F      [16] 2642 	ld	hl, (#_keys + 4)
   5EAB CD 21 90      [17] 2643 	call	_cpct_isKeyPressed
   5EAE 7D            [ 4] 2644 	ld	a,l
   5EAF B7            [ 4] 2645 	or	a, a
   5EB0 28 14         [12] 2646 	jr	Z,00118$
                           2647 ;src/game.c:751: if (rotateCellsLeft()) {
   5EB2 CD 9D 55      [17] 2648 	call	_rotateCellsLeft
   5EB5 7D            [ 4] 2649 	ld	a,l
   5EB6 B7            [ 4] 2650 	or	a, a
   5EB7 28 56         [12] 2651 	jr	Z,00122$
                           2652 ;src/game.c:752: addRandomCellTurn(LEFT);
   5EB9 AF            [ 4] 2653 	xor	a, a
   5EBA F5            [11] 2654 	push	af
   5EBB 33            [ 6] 2655 	inc	sp
   5EBC CD BB 52      [17] 2656 	call	_addRandomCellTurn
   5EBF 33            [ 6] 2657 	inc	sp
                           2658 ;src/game.c:753: moved = 1;
   5EC0 DD 36 FF 01   [19] 2659 	ld	-1 (ix),#0x01
   5EC4 18 49         [12] 2660 	jr	00122$
   5EC6                    2661 00118$:
                           2662 ;src/game.c:755: } else if (cpct_isKeyPressed(keys.down)) {
   5EC6 2A CA 9F      [16] 2663 	ld	hl, (#_keys + 2)
   5EC9 CD 21 90      [17] 2664 	call	_cpct_isKeyPressed
   5ECC 7D            [ 4] 2665 	ld	a,l
   5ECD B7            [ 4] 2666 	or	a, a
   5ECE 28 15         [12] 2667 	jr	Z,00115$
                           2668 ;src/game.c:756: if (rotateCellsDown()) {
   5ED0 CD C6 57      [17] 2669 	call	_rotateCellsDown
   5ED3 7D            [ 4] 2670 	ld	a,l
   5ED4 B7            [ 4] 2671 	or	a, a
   5ED5 28 38         [12] 2672 	jr	Z,00122$
                           2673 ;src/game.c:757: addRandomCellTurn(DOWN);
   5ED7 3E 03         [ 7] 2674 	ld	a,#0x03
   5ED9 F5            [11] 2675 	push	af
   5EDA 33            [ 6] 2676 	inc	sp
   5EDB CD BB 52      [17] 2677 	call	_addRandomCellTurn
   5EDE 33            [ 6] 2678 	inc	sp
                           2679 ;src/game.c:758: moved = 1;
   5EDF DD 36 FF 01   [19] 2680 	ld	-1 (ix),#0x01
   5EE3 18 2A         [12] 2681 	jr	00122$
   5EE5                    2682 00115$:
                           2683 ;src/game.c:760: } else if (cpct_isKeyPressed(keys.up)) {
   5EE5 2A C8 9F      [16] 2684 	ld	hl, (#_keys + 0)
   5EE8 CD 21 90      [17] 2685 	call	_cpct_isKeyPressed
   5EEB 7D            [ 4] 2686 	ld	a,l
   5EEC B7            [ 4] 2687 	or	a, a
   5EED 28 15         [12] 2688 	jr	Z,00112$
                           2689 ;src/game.c:761: if (rotateCellsUp()) {
   5EEF CD 19 57      [17] 2690 	call	_rotateCellsUp
   5EF2 7D            [ 4] 2691 	ld	a,l
   5EF3 B7            [ 4] 2692 	or	a, a
   5EF4 28 19         [12] 2693 	jr	Z,00122$
                           2694 ;src/game.c:762: addRandomCellTurn(UP);
   5EF6 3E 02         [ 7] 2695 	ld	a,#0x02
   5EF8 F5            [11] 2696 	push	af
   5EF9 33            [ 6] 2697 	inc	sp
   5EFA CD BB 52      [17] 2698 	call	_addRandomCellTurn
   5EFD 33            [ 6] 2699 	inc	sp
                           2700 ;src/game.c:763: moved = 1;
   5EFE DD 36 FF 01   [19] 2701 	ld	-1 (ix),#0x01
   5F02 18 0B         [12] 2702 	jr	00122$
   5F04                    2703 00112$:
                           2704 ;src/game.c:765: } else if (cpct_isKeyPressed(keys.abort))
   5F04 2A D4 9F      [16] 2705 	ld	hl, (#_keys + 12)
   5F07 CD 21 90      [17] 2706 	call	_cpct_isKeyPressed
   5F0A 7D            [ 4] 2707 	ld	a,l
   5F0B B7            [ 4] 2708 	or	a, a
   5F0C C2 97 5F      [10] 2709 	jp	NZ,00130$
                           2710 ;src/game.c:766: break;
   5F0F                    2711 00122$:
                           2712 ;src/game.c:768: if (moved) {
   5F0F DD 7E FF      [19] 2713 	ld	a,-1 (ix)
   5F12 B7            [ 4] 2714 	or	a, a
   5F13 CA 79 5E      [10] 2715 	jp	Z,00128$
                           2716 ;src/game.c:769: printCells();
   5F16 CD 88 58      [17] 2717 	call	_printCells
                           2718 ;src/game.c:770: moved = 0;
   5F19 DD 36 FF 00   [19] 2719 	ld	-1 (ix),#0x00
                           2720 ;src/game.c:771: if (anyMovesLeft() == 0) {
   5F1D CD 34 52      [17] 2721 	call	_anyMovesLeft
   5F20 7D            [ 4] 2722 	ld	a,l
   5F21 B7            [ 4] 2723 	or	a, a
   5F22 C2 79 5E      [10] 2724 	jp	NZ,00128$
                           2725 ;src/game.c:772: drawScore();
   5F25 CD 3D 59      [17] 2726 	call	_drawScore
                           2727 ;src/game.c:773: wait4UserKeypress();
   5F28 CD 89 8A      [17] 2728 	call	_wait4UserKeypress
                           2729 ;src/game.c:774: drawFrame(14, 60, 68, 142);
   5F2B 21 44 8E      [10] 2730 	ld	hl,#0x8E44
   5F2E E5            [11] 2731 	push	hl
   5F2F 21 0E 3C      [10] 2732 	ld	hl,#0x3C0E
   5F32 E5            [11] 2733 	push	hl
   5F33 CD AD 8C      [17] 2734 	call	_drawFrame
   5F36 F1            [10] 2735 	pop	af
                           2736 ;src/game.c:775: drawFallingText("NO MORE MOVES", 20, 90, 96);
   5F37 21 5A 60      [10] 2737 	ld	hl, #0x605A
   5F3A E3            [19] 2738 	ex	(sp),hl
   5F3B 3E 14         [ 7] 2739 	ld	a,#0x14
   5F3D F5            [11] 2740 	push	af
   5F3E 33            [ 6] 2741 	inc	sp
   5F3F 21 A0 5F      [10] 2742 	ld	hl,#___str_18
   5F42 E5            [11] 2743 	push	hl
   5F43 CD 57 88      [17] 2744 	call	_drawFallingText
   5F46 F1            [10] 2745 	pop	af
                           2746 ;src/game.c:776: drawText("GAME OVER", 22, 70, 1);
   5F47 33            [ 6] 2747 	inc	sp
   5F48 21 46 01      [10] 2748 	ld	hl,#0x0146
   5F4B E3            [19] 2749 	ex	(sp),hl
   5F4C 3E 16         [ 7] 2750 	ld	a,#0x16
   5F4E F5            [11] 2751 	push	af
   5F4F 33            [ 6] 2752 	inc	sp
   5F50 21 AE 5F      [10] 2753 	ld	hl,#___str_19
   5F53 E5            [11] 2754 	push	hl
   5F54 CD 6D 85      [17] 2755 	call	_drawText
   5F57 F1            [10] 2756 	pop	af
   5F58 F1            [10] 2757 	pop	af
   5F59 33            [ 6] 2758 	inc	sp
                           2759 ;src/game.c:777: sprintf(aux_txt, "SCORE  %d", score);
   5F5A 2A ED 9F      [16] 2760 	ld	hl,(_score + 2)
   5F5D E5            [11] 2761 	push	hl
   5F5E 2A EB 9F      [16] 2762 	ld	hl,(_score)
   5F61 E5            [11] 2763 	push	hl
   5F62 21 B8 5F      [10] 2764 	ld	hl,#___str_20
   5F65 E5            [11] 2765 	push	hl
   5F66 2A 89 A0      [16] 2766 	ld	hl,(_aux_txt)
   5F69 E5            [11] 2767 	push	hl
   5F6A CD 45 92      [17] 2768 	call	_sprintf
   5F6D 21 08 00      [10] 2769 	ld	hl,#8
   5F70 39            [11] 2770 	add	hl,sp
   5F71 F9            [ 6] 2771 	ld	sp,hl
                           2772 ;src/game.c:778: drawText(aux_txt, 22, 120, 1);
   5F72 21 78 01      [10] 2773 	ld	hl,#0x0178
   5F75 E5            [11] 2774 	push	hl
   5F76 3E 16         [ 7] 2775 	ld	a,#0x16
   5F78 F5            [11] 2776 	push	af
   5F79 33            [ 6] 2777 	inc	sp
   5F7A 2A 89 A0      [16] 2778 	ld	hl,(_aux_txt)
   5F7D E5            [11] 2779 	push	hl
   5F7E CD 6D 85      [17] 2780 	call	_drawText
   5F81 F1            [10] 2781 	pop	af
   5F82 F1            [10] 2782 	pop	af
   5F83 33            [ 6] 2783 	inc	sp
                           2784 ;src/game.c:779: wait4UserKeypress();
   5F84 CD 89 8A      [17] 2785 	call	_wait4UserKeypress
                           2786 ;src/game.c:780: setHighScore(score);
   5F87 2A ED 9F      [16] 2787 	ld	hl,(_score + 2)
   5F8A E5            [11] 2788 	push	hl
   5F8B 2A EB 9F      [16] 2789 	ld	hl,(_score)
   5F8E E5            [11] 2790 	push	hl
   5F8F CD ED 5B      [17] 2791 	call	_setHighScore
   5F92 F1            [10] 2792 	pop	af
   5F93 F1            [10] 2793 	pop	af
                           2794 ;src/game.c:781: drawScoreBoard();
   5F94 CD F3 5C      [17] 2795 	call	_drawScoreBoard
                           2796 ;src/game.c:782: break;
   5F97                    2797 00130$:
   5F97 33            [ 6] 2798 	inc	sp
   5F98 DD E1         [14] 2799 	pop	ix
   5F9A C9            [10] 2800 	ret
   5F9B                    2801 ___str_17:
   5F9B 4E 45 58 54        2802 	.ascii "NEXT"
   5F9F 00                 2803 	.db 0x00
   5FA0                    2804 ___str_18:
   5FA0 4E 4F 20 4D 4F 52  2805 	.ascii "NO MORE MOVES"
        45 20 4D 4F 56 45
        53
   5FAD 00                 2806 	.db 0x00
   5FAE                    2807 ___str_19:
   5FAE 47 41 4D 45 20 4F  2808 	.ascii "GAME OVER"
        56 45 52
   5FB7 00                 2809 	.db 0x00
   5FB8                    2810 ___str_20:
   5FB8 53 43 4F 52 45 20  2811 	.ascii "SCORE  %d"
        20 25 64
   5FC1 00                 2812 	.db 0x00
                           2813 ;src/game.c:789: void checkKeyboardMenu() {
                           2814 ;	---------------------------------
                           2815 ; Function checkKeyboardMenu
                           2816 ; ---------------------------------
   5FC2                    2817 _checkKeyboardMenu::
                           2818 ;src/game.c:793: cpct_scanKeyboard_f();
   5FC2 CD 2D 90      [17] 2819 	call	_cpct_scanKeyboard_f
                           2820 ;src/game.c:795: if (selectedOption == 1) {
   5FC5 3A 88 A0      [13] 2821 	ld	a,(#_selectedOption + 0)
   5FC8 3D            [ 4] 2822 	dec	a
   5FC9 20 66         [12] 2823 	jr	NZ,00102$
                           2824 ;src/game.c:796: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 27, 71);
   5FCB 21 1B 47      [10] 2825 	ld	hl,#0x471B
   5FCE E5            [11] 2826 	push	hl
   5FCF 21 00 C0      [10] 2827 	ld	hl,#0xC000
   5FD2 E5            [11] 2828 	push	hl
   5FD3 CD 29 94      [17] 2829 	call	_cpct_getScreenPtr
   5FD6 4D            [ 4] 2830 	ld	c,l
   5FD7 44            [ 4] 2831 	ld	b,h
                           2832 ;src/game.c:797: cpct_drawSprite(g_tile_marker_3, pvideo, 2, 9);
   5FD8 21 02 09      [10] 2833 	ld	hl,#0x0902
   5FDB E5            [11] 2834 	push	hl
   5FDC C5            [11] 2835 	push	bc
   5FDD 21 CE 6A      [10] 2836 	ld	hl,#_g_tile_marker_3
   5FE0 E5            [11] 2837 	push	hl
   5FE1 CD A3 90      [17] 2838 	call	_cpct_drawSprite
                           2839 ;src/game.c:798: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 54, 71);
   5FE4 21 36 47      [10] 2840 	ld	hl,#0x4736
   5FE7 E5            [11] 2841 	push	hl
   5FE8 21 00 C0      [10] 2842 	ld	hl,#0xC000
   5FEB E5            [11] 2843 	push	hl
   5FEC CD 29 94      [17] 2844 	call	_cpct_getScreenPtr
   5FEF 4D            [ 4] 2845 	ld	c,l
   5FF0 44            [ 4] 2846 	ld	b,h
                           2847 ;src/game.c:799: cpct_drawSprite(g_tile_marker_3, pvideo, 2, 9);
   5FF1 21 02 09      [10] 2848 	ld	hl,#0x0902
   5FF4 E5            [11] 2849 	push	hl
   5FF5 C5            [11] 2850 	push	bc
   5FF6 21 CE 6A      [10] 2851 	ld	hl,#_g_tile_marker_3
   5FF9 E5            [11] 2852 	push	hl
   5FFA CD A3 90      [17] 2853 	call	_cpct_drawSprite
                           2854 ;src/game.c:800: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 27, 51);
   5FFD 21 1B 33      [10] 2855 	ld	hl,#0x331B
   6000 E5            [11] 2856 	push	hl
   6001 21 00 C0      [10] 2857 	ld	hl,#0xC000
   6004 E5            [11] 2858 	push	hl
   6005 CD 29 94      [17] 2859 	call	_cpct_getScreenPtr
   6008 4D            [ 4] 2860 	ld	c,l
   6009 44            [ 4] 2861 	ld	b,h
                           2862 ;src/game.c:801: cpct_drawSprite(g_tile_marker_0, pvideo, 2, 9);
   600A 21 02 09      [10] 2863 	ld	hl,#0x0902
   600D E5            [11] 2864 	push	hl
   600E C5            [11] 2865 	push	bc
   600F 21 BC 6A      [10] 2866 	ld	hl,#_g_tile_marker_0
   6012 E5            [11] 2867 	push	hl
   6013 CD A3 90      [17] 2868 	call	_cpct_drawSprite
                           2869 ;src/game.c:802: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 54, 51);
   6016 21 36 33      [10] 2870 	ld	hl,#0x3336
   6019 E5            [11] 2871 	push	hl
   601A 21 00 C0      [10] 2872 	ld	hl,#0xC000
   601D E5            [11] 2873 	push	hl
   601E CD 29 94      [17] 2874 	call	_cpct_getScreenPtr
   6021 4D            [ 4] 2875 	ld	c,l
   6022 44            [ 4] 2876 	ld	b,h
                           2877 ;src/game.c:803: cpct_drawSprite(g_tile_marker_0, pvideo, 2, 9);
   6023 21 02 09      [10] 2878 	ld	hl,#0x0902
   6026 E5            [11] 2879 	push	hl
   6027 C5            [11] 2880 	push	bc
   6028 21 BC 6A      [10] 2881 	ld	hl,#_g_tile_marker_0
   602B E5            [11] 2882 	push	hl
   602C CD A3 90      [17] 2883 	call	_cpct_drawSprite
   602F 18 64         [12] 2884 	jr	00103$
   6031                    2885 00102$:
                           2886 ;src/game.c:805: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 27, 51);
   6031 21 1B 33      [10] 2887 	ld	hl,#0x331B
   6034 E5            [11] 2888 	push	hl
   6035 21 00 C0      [10] 2889 	ld	hl,#0xC000
   6038 E5            [11] 2890 	push	hl
   6039 CD 29 94      [17] 2891 	call	_cpct_getScreenPtr
   603C 4D            [ 4] 2892 	ld	c,l
   603D 44            [ 4] 2893 	ld	b,h
                           2894 ;src/game.c:806: cpct_drawSprite(g_tile_marker_3, pvideo, 2, 9);
   603E 21 02 09      [10] 2895 	ld	hl,#0x0902
   6041 E5            [11] 2896 	push	hl
   6042 C5            [11] 2897 	push	bc
   6043 21 CE 6A      [10] 2898 	ld	hl,#_g_tile_marker_3
   6046 E5            [11] 2899 	push	hl
   6047 CD A3 90      [17] 2900 	call	_cpct_drawSprite
                           2901 ;src/game.c:807: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 54, 51);
   604A 21 36 33      [10] 2902 	ld	hl,#0x3336
   604D E5            [11] 2903 	push	hl
   604E 21 00 C0      [10] 2904 	ld	hl,#0xC000
   6051 E5            [11] 2905 	push	hl
   6052 CD 29 94      [17] 2906 	call	_cpct_getScreenPtr
   6055 4D            [ 4] 2907 	ld	c,l
   6056 44            [ 4] 2908 	ld	b,h
                           2909 ;src/game.c:808: cpct_drawSprite(g_tile_marker_3, pvideo, 2, 9);
   6057 21 02 09      [10] 2910 	ld	hl,#0x0902
   605A E5            [11] 2911 	push	hl
   605B C5            [11] 2912 	push	bc
   605C 21 CE 6A      [10] 2913 	ld	hl,#_g_tile_marker_3
   605F E5            [11] 2914 	push	hl
   6060 CD A3 90      [17] 2915 	call	_cpct_drawSprite
                           2916 ;src/game.c:809: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 27, 71);
   6063 21 1B 47      [10] 2917 	ld	hl,#0x471B
   6066 E5            [11] 2918 	push	hl
   6067 21 00 C0      [10] 2919 	ld	hl,#0xC000
   606A E5            [11] 2920 	push	hl
   606B CD 29 94      [17] 2921 	call	_cpct_getScreenPtr
   606E 4D            [ 4] 2922 	ld	c,l
   606F 44            [ 4] 2923 	ld	b,h
                           2924 ;src/game.c:810: cpct_drawSprite(g_tile_marker_0, pvideo, 2, 9);
   6070 21 02 09      [10] 2925 	ld	hl,#0x0902
   6073 E5            [11] 2926 	push	hl
   6074 C5            [11] 2927 	push	bc
   6075 21 BC 6A      [10] 2928 	ld	hl,#_g_tile_marker_0
   6078 E5            [11] 2929 	push	hl
   6079 CD A3 90      [17] 2930 	call	_cpct_drawSprite
                           2931 ;src/game.c:811: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 54, 71);
   607C 21 36 47      [10] 2932 	ld	hl,#0x4736
   607F E5            [11] 2933 	push	hl
   6080 21 00 C0      [10] 2934 	ld	hl,#0xC000
   6083 E5            [11] 2935 	push	hl
   6084 CD 29 94      [17] 2936 	call	_cpct_getScreenPtr
   6087 4D            [ 4] 2937 	ld	c,l
   6088 44            [ 4] 2938 	ld	b,h
                           2939 ;src/game.c:812: cpct_drawSprite(g_tile_marker_0, pvideo, 2, 9);
   6089 21 02 09      [10] 2940 	ld	hl,#0x0902
   608C E5            [11] 2941 	push	hl
   608D C5            [11] 2942 	push	bc
   608E 21 BC 6A      [10] 2943 	ld	hl,#_g_tile_marker_0
   6091 E5            [11] 2944 	push	hl
   6092 CD A3 90      [17] 2945 	call	_cpct_drawSprite
   6095                    2946 00103$:
                           2947 ;src/game.c:816: if (cpct_isKeyPressed(Key_1)) {
   6095 21 08 01      [10] 2948 	ld	hl,#0x0108
   6098 CD 21 90      [17] 2949 	call	_cpct_isKeyPressed
   609B 7D            [ 4] 2950 	ld	a,l
   609C B7            [ 4] 2951 	or	a, a
   609D CA 23 61      [10] 2952 	jp	Z,00110$
                           2953 ;src/game.c:818: selectedOption = 1;
   60A0 21 88 A0      [10] 2954 	ld	hl,#_selectedOption + 0
   60A3 36 01         [10] 2955 	ld	(hl), #0x01
                           2956 ;src/game.c:820: waitKeyUp(Key_1);
   60A5 21 08 01      [10] 2957 	ld	hl,#0x0108
   60A8 E5            [11] 2958 	push	hl
   60A9 CD F0 8A      [17] 2959 	call	_waitKeyUp
                           2960 ;src/game.c:822: keys.up    = redefineKey("UP");
   60AC 21 A5 61      [10] 2961 	ld	hl, #___str_21
   60AF E3            [19] 2962 	ex	(sp),hl
   60B0 CD 1C 8B      [17] 2963 	call	_redefineKey
   60B3 F1            [10] 2964 	pop	af
   60B4 4D            [ 4] 2965 	ld	c,l
   60B5 44            [ 4] 2966 	ld	b,h
   60B6 ED 43 C8 9F   [20] 2967 	ld	(_keys), bc
                           2968 ;src/game.c:823: keys.down  = redefineKey("DOWN");
   60BA 21 A8 61      [10] 2969 	ld	hl,#___str_22
   60BD E5            [11] 2970 	push	hl
   60BE CD 1C 8B      [17] 2971 	call	_redefineKey
   60C1 F1            [10] 2972 	pop	af
   60C2 4D            [ 4] 2973 	ld	c,l
   60C3 44            [ 4] 2974 	ld	b,h
   60C4 ED 43 CA 9F   [20] 2975 	ld	((_keys + 0x0002)), bc
                           2976 ;src/game.c:824: keys.left  = redefineKey("LEFT");
   60C8 21 AD 61      [10] 2977 	ld	hl,#___str_23
   60CB E5            [11] 2978 	push	hl
   60CC CD 1C 8B      [17] 2979 	call	_redefineKey
   60CF F1            [10] 2980 	pop	af
   60D0 4D            [ 4] 2981 	ld	c,l
   60D1 44            [ 4] 2982 	ld	b,h
   60D2 ED 43 CC 9F   [20] 2983 	ld	((_keys + 0x0004)), bc
                           2984 ;src/game.c:825: keys.right = redefineKey("RIGHT");
   60D6 21 B2 61      [10] 2985 	ld	hl,#___str_24
   60D9 E5            [11] 2986 	push	hl
   60DA CD 1C 8B      [17] 2987 	call	_redefineKey
   60DD F1            [10] 2988 	pop	af
   60DE 4D            [ 4] 2989 	ld	c,l
   60DF 44            [ 4] 2990 	ld	b,h
   60E0 ED 43 CE 9F   [20] 2991 	ld	((_keys + 0x0006)), bc
                           2992 ;src/game.c:826: keys.pause = redefineKey("PAUSE");
   60E4 21 B8 61      [10] 2993 	ld	hl,#___str_25
   60E7 E5            [11] 2994 	push	hl
   60E8 CD 1C 8B      [17] 2995 	call	_redefineKey
   60EB F1            [10] 2996 	pop	af
   60EC 4D            [ 4] 2997 	ld	c,l
   60ED 44            [ 4] 2998 	ld	b,h
   60EE ED 43 D2 9F   [20] 2999 	ld	((_keys + 0x000a)), bc
                           3000 ;src/game.c:827: keys.abort = redefineKey("ABORT");
   60F2 21 BE 61      [10] 3001 	ld	hl,#___str_26
   60F5 E5            [11] 3002 	push	hl
   60F6 CD 1C 8B      [17] 3003 	call	_redefineKey
   60F9 F1            [10] 3004 	pop	af
   60FA 4D            [ 4] 3005 	ld	c,l
   60FB 44            [ 4] 3006 	ld	b,h
   60FC ED 43 D4 9F   [20] 3007 	ld	((_keys + 0x000c)), bc
                           3008 ;src/game.c:829: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 39 - 10 * FONT_W, 144);
   6100 21 09 90      [10] 3009 	ld	hl,#0x9009
   6103 E5            [11] 3010 	push	hl
   6104 21 00 C0      [10] 3011 	ld	hl,#0xC000
   6107 E5            [11] 3012 	push	hl
   6108 CD 29 94      [17] 3013 	call	_cpct_getScreenPtr
                           3014 ;src/game.c:830: cpct_drawSolidBox(pvideo, cpct_px2byteM0(5, 5), 15 * FONT_W, FONT_H);
   610B E5            [11] 3015 	push	hl
   610C 21 05 05      [10] 3016 	ld	hl,#0x0505
   610F E5            [11] 3017 	push	hl
   6110 CD F6 92      [17] 3018 	call	_cpct_px2byteM0
   6113 55            [ 4] 3019 	ld	d,l
   6114 C1            [10] 3020 	pop	bc
   6115 21 2D 0B      [10] 3021 	ld	hl,#0x0B2D
   6118 E5            [11] 3022 	push	hl
   6119 D5            [11] 3023 	push	de
   611A 33            [ 6] 3024 	inc	sp
   611B C5            [11] 3025 	push	bc
   611C CD 3F 93      [17] 3026 	call	_cpct_drawSolidBox
   611F F1            [10] 3027 	pop	af
   6120 F1            [10] 3028 	pop	af
   6121 33            [ 6] 3029 	inc	sp
   6122 C9            [10] 3030 	ret
   6123                    3031 00110$:
                           3032 ;src/game.c:834: else if (cpct_isKeyPressed(Key_2)) {
   6123 21 08 02      [10] 3033 	ld	hl,#0x0208
   6126 CD 21 90      [17] 3034 	call	_cpct_isKeyPressed
   6129 7D            [ 4] 3035 	ld	a,l
   612A B7            [ 4] 3036 	or	a, a
   612B 28 60         [12] 3037 	jr	Z,00107$
                           3038 ;src/game.c:836: selectedOption = 2;
   612D 21 88 A0      [10] 3039 	ld	hl,#_selectedOption + 0
   6130 36 02         [10] 3040 	ld	(hl), #0x02
                           3041 ;src/game.c:838: keys.up    = Joy0_Up;
   6132 21 09 01      [10] 3042 	ld	hl,#0x0109
   6135 22 C8 9F      [16] 3043 	ld	(_keys), hl
                           3044 ;src/game.c:839: keys.down  = Joy0_Down;
   6138 26 02         [ 7] 3045 	ld	h, #0x02
   613A 22 CA 9F      [16] 3046 	ld	((_keys + 0x0002)), hl
                           3047 ;src/game.c:840: keys.left  = Joy0_Left;
   613D 26 04         [ 7] 3048 	ld	h, #0x04
   613F 22 CC 9F      [16] 3049 	ld	((_keys + 0x0004)), hl
                           3050 ;src/game.c:841: keys.right = Joy0_Right;
   6142 26 08         [ 7] 3051 	ld	h, #0x08
   6144 22 CE 9F      [16] 3052 	ld	((_keys + 0x0006)), hl
                           3053 ;src/game.c:843: waitKeyUp(Key_2);
   6147 21 08 02      [10] 3054 	ld	hl,#0x0208
   614A E5            [11] 3055 	push	hl
   614B CD F0 8A      [17] 3056 	call	_waitKeyUp
                           3057 ;src/game.c:845: keys.pause = redefineKey("PAUSE");
   614E 21 B8 61      [10] 3058 	ld	hl, #___str_25
   6151 E3            [19] 3059 	ex	(sp),hl
   6152 CD 1C 8B      [17] 3060 	call	_redefineKey
   6155 F1            [10] 3061 	pop	af
   6156 4D            [ 4] 3062 	ld	c,l
   6157 44            [ 4] 3063 	ld	b,h
   6158 ED 43 D2 9F   [20] 3064 	ld	((_keys + 0x000a)), bc
                           3065 ;src/game.c:846: keys.abort = redefineKey("ABORT");
   615C 21 BE 61      [10] 3066 	ld	hl,#___str_26
   615F E5            [11] 3067 	push	hl
   6160 CD 1C 8B      [17] 3068 	call	_redefineKey
   6163 F1            [10] 3069 	pop	af
   6164 4D            [ 4] 3070 	ld	c,l
   6165 44            [ 4] 3071 	ld	b,h
   6166 ED 43 D4 9F   [20] 3072 	ld	((_keys + 0x000c)), bc
                           3073 ;src/game.c:848: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 39 - 10 * FONT_W, 144);
   616A 21 09 90      [10] 3074 	ld	hl,#0x9009
   616D E5            [11] 3075 	push	hl
   616E 21 00 C0      [10] 3076 	ld	hl,#0xC000
   6171 E5            [11] 3077 	push	hl
   6172 CD 29 94      [17] 3078 	call	_cpct_getScreenPtr
                           3079 ;src/game.c:849: cpct_drawSolidBox(pvideo, cpct_px2byteM0(5, 5), 15 * FONT_W, FONT_H);
   6175 E5            [11] 3080 	push	hl
   6176 21 05 05      [10] 3081 	ld	hl,#0x0505
   6179 E5            [11] 3082 	push	hl
   617A CD F6 92      [17] 3083 	call	_cpct_px2byteM0
   617D 55            [ 4] 3084 	ld	d,l
   617E C1            [10] 3085 	pop	bc
   617F 21 2D 0B      [10] 3086 	ld	hl,#0x0B2D
   6182 E5            [11] 3087 	push	hl
   6183 D5            [11] 3088 	push	de
   6184 33            [ 6] 3089 	inc	sp
   6185 C5            [11] 3090 	push	bc
   6186 CD 3F 93      [17] 3091 	call	_cpct_drawSolidBox
   6189 F1            [10] 3092 	pop	af
   618A F1            [10] 3093 	pop	af
   618B 33            [ 6] 3094 	inc	sp
   618C C9            [10] 3095 	ret
   618D                    3096 00107$:
                           3097 ;src/game.c:854: else if (cpct_isKeyPressed(Key_4)) {
   618D 21 07 01      [10] 3098 	ld	hl,#0x0107
   6190 CD 21 90      [17] 3099 	call	_cpct_isKeyPressed
   6193 7D            [ 4] 3100 	ld	a,l
   6194 B7            [ 4] 3101 	or	a, a
   6195 C8            [11] 3102 	ret	Z
                           3103 ;src/game.c:856: waitKeyUp(Key_1);
   6196 21 08 01      [10] 3104 	ld	hl,#0x0108
   6199 E5            [11] 3105 	push	hl
   619A CD F0 8A      [17] 3106 	call	_waitKeyUp
   619D F1            [10] 3107 	pop	af
                           3108 ;src/game.c:857: game();
   619E CD 41 5E      [17] 3109 	call	_game
                           3110 ;src/game.c:858: drawMenu();
   61A1 CD 70 8B      [17] 3111 	call	_drawMenu
   61A4 C9            [10] 3112 	ret
   61A5                    3113 ___str_21:
   61A5 55 50              3114 	.ascii "UP"
   61A7 00                 3115 	.db 0x00
   61A8                    3116 ___str_22:
   61A8 44 4F 57 4E        3117 	.ascii "DOWN"
   61AC 00                 3118 	.db 0x00
   61AD                    3119 ___str_23:
   61AD 4C 45 46 54        3120 	.ascii "LEFT"
   61B1 00                 3121 	.db 0x00
   61B2                    3122 ___str_24:
   61B2 52 49 47 48 54     3123 	.ascii "RIGHT"
   61B7 00                 3124 	.db 0x00
   61B8                    3125 ___str_25:
   61B8 50 41 55 53 45     3126 	.ascii "PAUSE"
   61BD 00                 3127 	.db 0x00
   61BE                    3128 ___str_26:
   61BE 41 42 4F 52 54     3129 	.ascii "ABORT"
   61C3 00                 3130 	.db 0x00
                           3131 ;src/game.c:866: void threes() {
                           3132 ;	---------------------------------
                           3133 ; Function threes
                           3134 ; ---------------------------------
   61C4                    3135 _threes::
                           3136 ;src/game.c:869: while (1) {
   61C4                    3137 00105$:
                           3138 ;src/game.c:871: drawMenu();
   61C4 CD 70 8B      [17] 3139 	call	_drawMenu
                           3140 ;src/game.c:875: while (lapso < SWITCH_SCREENS) {
   61C7 01 00 00      [10] 3141 	ld	bc,#0x0000
   61CA 11 00 00      [10] 3142 	ld	de,#0x0000
   61CD                    3143 00101$:
   61CD 79            [ 4] 3144 	ld	a,c
   61CE D6 58         [ 7] 3145 	sub	a, #0x58
   61D0 78            [ 4] 3146 	ld	a,b
   61D1 DE 1B         [ 7] 3147 	sbc	a, #0x1B
   61D3 7B            [ 4] 3148 	ld	a,e
   61D4 DE 00         [ 7] 3149 	sbc	a, #0x00
   61D6 7A            [ 4] 3150 	ld	a,d
   61D7 DE 00         [ 7] 3151 	sbc	a, #0x00
   61D9 30 13         [12] 3152 	jr	NC,00103$
                           3153 ;src/game.c:877: checkKeyboardMenu();
   61DB C5            [11] 3154 	push	bc
   61DC D5            [11] 3155 	push	de
   61DD CD C2 5F      [17] 3156 	call	_checkKeyboardMenu
   61E0 D1            [10] 3157 	pop	de
   61E1 C1            [10] 3158 	pop	bc
                           3159 ;src/game.c:879: lapso++;
   61E2 0C            [ 4] 3160 	inc	c
   61E3 20 E8         [12] 3161 	jr	NZ,00101$
   61E5 04            [ 4] 3162 	inc	b
   61E6 20 E5         [12] 3163 	jr	NZ,00101$
   61E8 1C            [ 4] 3164 	inc	e
   61E9 20 E2         [12] 3165 	jr	NZ,00101$
   61EB 14            [ 4] 3166 	inc	d
   61EC 18 DF         [12] 3167 	jr	00101$
   61EE                    3168 00103$:
                           3169 ;src/game.c:883: drawScoreBoard();
   61EE CD F3 5C      [17] 3170 	call	_drawScoreBoard
   61F1 18 D1         [12] 3171 	jr	00105$
                           3172 	.area _CODE
                           3173 	.area _INITIALIZER
   A0B1                    3174 __xinit__newNameHighScore:
   A0B1 20                 3175 	.db #0x20	; 32
   A0B2 20                 3176 	.db #0x20	; 32
   A0B3 20                 3177 	.db #0x20	; 32
   A0B4 20                 3178 	.db #0x20	; 32
   A0B5 20                 3179 	.db #0x20	; 32
   A0B6 20                 3180 	.db #0x20	; 32
   A0B7 20                 3181 	.db #0x20	; 32
   A0B8 20                 3182 	.db #0x20	; 32
   A0B9 20                 3183 	.db #0x20	; 32
   A0BA 20                 3184 	.db #0x20	; 32
   A0BB 00                 3185 	.db #0x00	; 0
   A0BC 00                 3186 	.db 0x00
   A0BD 00                 3187 	.db 0x00
   A0BE 00                 3188 	.db 0x00
   A0BF 00                 3189 	.db 0x00
                           3190 	.area _CABS (ABS)
