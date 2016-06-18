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
   9140                      79 _keys::
   9140                      80 	.ds 14
   914E                      81 _cells::
   914E                      82 	.ds 16
   915E                      83 _adjacents::
   915E                      84 	.ds 5
   9163                      85 _score::
   9163                      86 	.ds 4
   9167                      87 _scoreHallOfFame::
   9167                      88 	.ds 32
   9187                      89 _nameHallOfFame::
   9187                      90 	.ds 120
   91FF                      91 _nextTile::
   91FF                      92 	.ds 1
   9200                      93 _selectedOption::
   9200                      94 	.ds 1
   9201                      95 _aux_txt::
   9201                      96 	.ds 2
   9203                      97 _tileBag::
   9203                      98 	.ds 12
   920F                      99 _currentTile::
   920F                     100 	.ds 1
   9210                     101 _maxTiles::
   9210                     102 	.ds 1
                            103 ;--------------------------------------------------------
                            104 ; ram data
                            105 ;--------------------------------------------------------
                            106 	.area _INITIALIZED
   9212                     107 _newNameHighScore::
   9212                     108 	.ds 15
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
   4000                     133 _renewTileBag::
   4000 DD E5         [15]  134 	push	ix
   4002 DD 21 00 00   [14]  135 	ld	ix,#0
   4006 DD 39         [15]  136 	add	ix,sp
   4008 F5            [11]  137 	push	af
   4009 F5            [11]  138 	push	af
                            139 ;src/game.c:59: counters[0] = 0;
   400A 21 00 00      [10]  140 	ld	hl,#0x0000
   400D 39            [11]  141 	add	hl,sp
   400E 4D            [ 4]  142 	ld	c,l
   400F 44            [ 4]  143 	ld	b,h
   4010 AF            [ 4]  144 	xor	a, a
   4011 02            [ 7]  145 	ld	(bc),a
                            146 ;src/game.c:60: counters[1] = 0;
   4012 59            [ 4]  147 	ld	e, c
   4013 50            [ 4]  148 	ld	d, b
   4014 13            [ 6]  149 	inc	de
   4015 AF            [ 4]  150 	xor	a, a
   4016 12            [ 7]  151 	ld	(de),a
                            152 ;src/game.c:61: counters[2] = 0;
   4017 59            [ 4]  153 	ld	e, c
   4018 50            [ 4]  154 	ld	d, b
   4019 13            [ 6]  155 	inc	de
   401A 13            [ 6]  156 	inc	de
   401B AF            [ 4]  157 	xor	a, a
   401C 12            [ 7]  158 	ld	(de),a
                            159 ;src/game.c:64: do
   401D DD 36 FF 00   [19]  160 	ld	-1 (ix),#0x00
   4021                     161 00101$:
                            162 ;src/game.c:65: currentValue = (cpct_rand() / 85) + 1;
   4021 C5            [11]  163 	push	bc
   4022 CD 43 83      [17]  164 	call	_cpct_getRandom_mxor_u8
   4025 55            [ 4]  165 	ld	d,l
   4026 3E 55         [ 7]  166 	ld	a,#0x55
   4028 F5            [11]  167 	push	af
   4029 33            [ 6]  168 	inc	sp
   402A D5            [11]  169 	push	de
   402B 33            [ 6]  170 	inc	sp
   402C CD DF 82      [17]  171 	call	__divuchar
   402F F1            [10]  172 	pop	af
   4030 5D            [ 4]  173 	ld	e,l
   4031 C1            [10]  174 	pop	bc
   4032 1C            [ 4]  175 	inc	e
                            176 ;src/game.c:66: while (counters[currentValue - 1] > 3);
   4033 53            [ 4]  177 	ld	d,e
   4034 15            [ 4]  178 	dec	d
   4035 6A            [ 4]  179 	ld	l,d
   4036 26 00         [ 7]  180 	ld	h,#0x00
   4038 09            [11]  181 	add	hl,bc
   4039 56            [ 7]  182 	ld	d,(hl)
   403A 3E 03         [ 7]  183 	ld	a,#0x03
   403C 92            [ 4]  184 	sub	a, d
   403D 38 E2         [12]  185 	jr	C,00101$
                            186 ;src/game.c:67: counters[currentValue - 1]++;
   403F 14            [ 4]  187 	inc	d
   4040 72            [ 7]  188 	ld	(hl),d
                            189 ;src/game.c:68: tileBag[i] = currentValue;
   4041 3E 03         [ 7]  190 	ld	a,#<(_tileBag)
   4043 DD 86 FF      [19]  191 	add	a, -1 (ix)
   4046 6F            [ 4]  192 	ld	l,a
   4047 3E 92         [ 7]  193 	ld	a,#>(_tileBag)
   4049 CE 00         [ 7]  194 	adc	a, #0x00
   404B 67            [ 4]  195 	ld	h,a
   404C 73            [ 7]  196 	ld	(hl),e
                            197 ;src/game.c:63: for (i = 0; i < 12; i++) {
   404D DD 34 FF      [23]  198 	inc	-1 (ix)
   4050 DD 7E FF      [19]  199 	ld	a,-1 (ix)
   4053 D6 0C         [ 7]  200 	sub	a, #0x0C
   4055 38 CA         [12]  201 	jr	C,00101$
                            202 ;src/game.c:70: currentTile = 0;
   4057 21 0F 92      [10]  203 	ld	hl,#_currentTile + 0
   405A 36 00         [10]  204 	ld	(hl), #0x00
   405C DD F9         [10]  205 	ld	sp, ix
   405E DD E1         [14]  206 	pop	ix
   4060 C9            [10]  207 	ret
   4061                     208 _values:
   4061 00 00               209 	.dw #0x0000
   4063 01 00               210 	.dw #0x0001
   4065 02 00               211 	.dw #0x0002
   4067 03 00               212 	.dw #0x0003
   4069 06 00               213 	.dw #0x0006
   406B 0C 00               214 	.dw #0x000C
   406D 18 00               215 	.dw #0x0018
   406F 30 00               216 	.dw #0x0030
   4071 60 00               217 	.dw #0x0060
   4073 C0 00               218 	.dw #0x00C0
   4075 80 01               219 	.dw #0x0180
   4077 00 03               220 	.dw #0x0300
   4079 00 06               221 	.dw #0x0600
   407B 00 0C               222 	.dw #0x0C00
   407D 00 18               223 	.dw #0x1800
   407F                     224 _scores:
   407F 00 00 00 00         225 	.byte #0x00,#0x00,#0x00,#0x00	; 0
   4083 00 00 00 00         226 	.byte #0x00,#0x00,#0x00,#0x00	; 0
   4087 00 00 00 00         227 	.byte #0x00,#0x00,#0x00,#0x00	; 0
   408B 03 00 00 00         228 	.byte #0x03,#0x00,#0x00,#0x00	; 3
   408F 09 00 00 00         229 	.byte #0x09,#0x00,#0x00,#0x00	; 9
   4093 1B 00 00 00         230 	.byte #0x1B,#0x00,#0x00,#0x00	; 27
   4097 51 00 00 00         231 	.byte #0x51,#0x00,#0x00,#0x00	; 81
   409B F3 00 00 00         232 	.byte #0xF3,#0x00,#0x00,#0x00	; 243
   409F D9 02 00 00         233 	.byte #0xD9,#0x02,#0x00,#0x00	; 729
   40A3 8B 08 00 00         234 	.byte #0x8B,#0x08,#0x00,#0x00	; 2187
   40A7 A1 19 00 00         235 	.byte #0xA1,#0x19,#0x00,#0x00	; 6561
   40AB E3 4C 00 00         236 	.byte #0xE3,#0x4C,#0x00,#0x00	; 19683
   40AF A9 E6 00 00         237 	.byte #0xA9,#0xE6,#0x00,#0x00	; 59049
   40B3 FB B3 02 00         238 	.byte #0xFB,#0xB3,#0x02,#0x00	; 177147
   40B7 F1 1B 08 00         239 	.byte #0xF1,#0x1B,#0x08,#0x00	; 531441
   40BB                     240 _tiles:
   40BB 14 5D               241 	.dw _tile_tiles_00
   40BD A4 5E               242 	.dw _tile_tiles_01
   40BF 34 60               243 	.dw _tile_tiles_02
   40C1 C4 61               244 	.dw _tile_tiles_03
   40C3 54 63               245 	.dw _tile_tiles_04
   40C5 E4 64               246 	.dw _tile_tiles_05
   40C7 74 66               247 	.dw _tile_tiles_06
   40C9 04 68               248 	.dw _tile_tiles_07
   40CB 94 69               249 	.dw _tile_tiles_08
   40CD 24 6B               250 	.dw _tile_tiles_09
   40CF B4 6C               251 	.dw _tile_tiles_10
   40D1 44 6E               252 	.dw _tile_tiles_11
   40D3 D4 6F               253 	.dw _tile_tiles_12
   40D5 64 71               254 	.dw _tile_tiles_13
   40D7 F4 72               255 	.dw _tile_tiles_14
                            256 ;src/game.c:81: void delay(u32 cycles) {
                            257 ;	---------------------------------
                            258 ; Function delay
                            259 ; ---------------------------------
   40D9                     260 _delay::
                            261 ;src/game.c:83: for (i = 0; i < cycles; i++) {
   40D9 01 00 00      [10]  262 	ld	bc,#0x0000
   40DC 11 00 00      [10]  263 	ld	de,#0x0000
   40DF                     264 00103$:
   40DF 21 02 00      [10]  265 	ld	hl,#2
   40E2 39            [11]  266 	add	hl,sp
   40E3 79            [ 4]  267 	ld	a,c
   40E4 96            [ 7]  268 	sub	a, (hl)
   40E5 78            [ 4]  269 	ld	a,b
   40E6 23            [ 6]  270 	inc	hl
   40E7 9E            [ 7]  271 	sbc	a, (hl)
   40E8 7B            [ 4]  272 	ld	a,e
   40E9 23            [ 6]  273 	inc	hl
   40EA 9E            [ 7]  274 	sbc	a, (hl)
   40EB 7A            [ 4]  275 	ld	a,d
   40EC 23            [ 6]  276 	inc	hl
   40ED 9E            [ 7]  277 	sbc	a, (hl)
   40EE D0            [11]  278 	ret	NC
                            279 ;src/game.c:86: __endasm;
   40EF 76            [ 4]  280 	halt
                            281 ;src/game.c:83: for (i = 0; i < cycles; i++) {
   40F0 0C            [ 4]  282 	inc	c
   40F1 20 EC         [12]  283 	jr	NZ,00103$
   40F3 04            [ 4]  284 	inc	b
   40F4 20 E9         [12]  285 	jr	NZ,00103$
   40F6 1C            [ 4]  286 	inc	e
   40F7 20 E6         [12]  287 	jr	NZ,00103$
   40F9 14            [ 4]  288 	inc	d
   40FA 18 E3         [12]  289 	jr	00103$
                            290 ;src/game.c:98: u8 countZeroes() {
                            291 ;	---------------------------------
                            292 ; Function countZeroes
                            293 ; ---------------------------------
   40FC                     294 _countZeroes::
                            295 ;src/game.c:102: count = 0;
   40FC 1E 00         [ 7]  296 	ld	e,#0x00
                            297 ;src/game.c:103: for (i = 0; i < 4; i++) {
   40FE 0E 00         [ 7]  298 	ld	c,#0x00
                            299 ;src/game.c:104: for (j = 0; j < 4; j++) {
   4100                     300 00112$:
   4100 43            [ 4]  301 	ld	b,e
   4101 1E 00         [ 7]  302 	ld	e,#0x00
   4103                     303 00105$:
                            304 ;src/game.c:105: if (cells[i][j] == 0)
   4103 69            [ 4]  305 	ld	l,c
   4104 26 00         [ 7]  306 	ld	h,#0x00
   4106 29            [11]  307 	add	hl, hl
   4107 29            [11]  308 	add	hl, hl
   4108 3E 4E         [ 7]  309 	ld	a,#<(_cells)
   410A 85            [ 4]  310 	add	a, l
   410B 6F            [ 4]  311 	ld	l,a
   410C 3E 91         [ 7]  312 	ld	a,#>(_cells)
   410E 8C            [ 4]  313 	adc	a, h
   410F 67            [ 4]  314 	ld	h,a
   4110 16 00         [ 7]  315 	ld	d,#0x00
   4112 19            [11]  316 	add	hl, de
   4113 7E            [ 7]  317 	ld	a,(hl)
   4114 B7            [ 4]  318 	or	a, a
   4115 20 01         [12]  319 	jr	NZ,00106$
                            320 ;src/game.c:106: count++;
   4117 04            [ 4]  321 	inc	b
   4118                     322 00106$:
                            323 ;src/game.c:104: for (j = 0; j < 4; j++) {
   4118 1C            [ 4]  324 	inc	e
   4119 7B            [ 4]  325 	ld	a,e
   411A D6 04         [ 7]  326 	sub	a, #0x04
   411C 38 E5         [12]  327 	jr	C,00105$
                            328 ;src/game.c:103: for (i = 0; i < 4; i++) {
   411E 58            [ 4]  329 	ld	e,b
   411F 0C            [ 4]  330 	inc	c
   4120 79            [ 4]  331 	ld	a,c
   4121 D6 04         [ 7]  332 	sub	a, #0x04
   4123 38 DB         [12]  333 	jr	C,00112$
                            334 ;src/game.c:109: return count;
   4125 68            [ 4]  335 	ld	l,b
   4126 C9            [10]  336 	ret
                            337 ;src/game.c:122: void initAdjacents() {
                            338 ;	---------------------------------
                            339 ; Function initAdjacents
                            340 ; ---------------------------------
   4127                     341 _initAdjacents::
                            342 ;src/game.c:125: for (i = 0; i < 4; i++) {
   4127 01 5F 91      [10]  343 	ld	bc,#_adjacents + 1
   412A 1E 00         [ 7]  344 	ld	e,#0x00
   412C                     345 00102$:
                            346 ;src/game.c:126: adjacents.values[i] = 255;
   412C 6B            [ 4]  347 	ld	l,e
   412D 26 00         [ 7]  348 	ld	h,#0x00
   412F 09            [11]  349 	add	hl,bc
   4130 36 FF         [10]  350 	ld	(hl),#0xFF
                            351 ;src/game.c:125: for (i = 0; i < 4; i++) {
   4132 1C            [ 4]  352 	inc	e
   4133 7B            [ 4]  353 	ld	a,e
   4134 D6 04         [ 7]  354 	sub	a, #0x04
   4136 38 F4         [12]  355 	jr	C,00102$
                            356 ;src/game.c:128: adjacents.count = 0;
   4138 21 5E 91      [10]  357 	ld	hl,#_adjacents
   413B 36 00         [10]  358 	ld	(hl),#0x00
   413D C9            [10]  359 	ret
                            360 ;src/game.c:139: void getAdjacents(u8 i, u8 j) {
                            361 ;	---------------------------------
                            362 ; Function getAdjacents
                            363 ; ---------------------------------
   413E                     364 _getAdjacents::
   413E DD E5         [15]  365 	push	ix
   4140 DD 21 00 00   [14]  366 	ld	ix,#0
   4144 DD 39         [15]  367 	add	ix,sp
   4146 F5            [11]  368 	push	af
   4147 3B            [ 6]  369 	dec	sp
                            370 ;src/game.c:142: initAdjacents();
   4148 CD 27 41      [17]  371 	call	_initAdjacents
                            372 ;src/game.c:144: count = 0;
   414B DD 36 FD 00   [19]  373 	ld	-3 (ix),#0x00
                            374 ;src/game.c:146: adjacents.values[count] = cells [i - 1][j];
   414F DD 4E 05      [19]  375 	ld	c,5 (ix)
                            376 ;src/game.c:145: if (i != 0) {
   4152 DD 7E 04      [19]  377 	ld	a,4 (ix)
   4155 B7            [ 4]  378 	or	a, a
   4156 28 19         [12]  379 	jr	Z,00102$
                            380 ;src/game.c:146: adjacents.values[count] = cells [i - 1][j];
   4158 11 4E 91      [10]  381 	ld	de,#_cells+0
   415B DD 6E 04      [19]  382 	ld	l,4 (ix)
   415E 2D            [ 4]  383 	dec	l
   415F 26 00         [ 7]  384 	ld	h,#0x00
   4161 29            [11]  385 	add	hl, hl
   4162 29            [11]  386 	add	hl, hl
   4163 19            [11]  387 	add	hl,de
   4164 59            [ 4]  388 	ld	e,c
   4165 16 00         [ 7]  389 	ld	d,#0x00
   4167 19            [11]  390 	add	hl,de
   4168 46            [ 7]  391 	ld	b,(hl)
   4169 21 5F 91      [10]  392 	ld	hl,#(_adjacents + 0x0001)
   416C 70            [ 7]  393 	ld	(hl),b
                            394 ;src/game.c:147: count++;
   416D DD 36 FD 01   [19]  395 	ld	-3 (ix),#0x01
   4171                     396 00102$:
                            397 ;src/game.c:150: adjacents.values[count] = cells [i][j + 1];
   4171 DD 6E 04      [19]  398 	ld	l,4 (ix)
   4174 26 00         [ 7]  399 	ld	h,#0x00
   4176 29            [11]  400 	add	hl, hl
   4177 29            [11]  401 	add	hl, hl
   4178 DD 75 FE      [19]  402 	ld	-2 (ix),l
   417B DD 74 FF      [19]  403 	ld	-1 (ix),h
                            404 ;src/game.c:149: if (j != 3) {
   417E DD 7E 05      [19]  405 	ld	a,5 (ix)
   4181 D6 03         [ 7]  406 	sub	a, #0x03
   4183 28 27         [12]  407 	jr	Z,00104$
                            408 ;src/game.c:150: adjacents.values[count] = cells [i][j + 1];
   4185 DD 7E FD      [19]  409 	ld	a,-3 (ix)
   4188 C6 5F         [ 7]  410 	add	a, #<((_adjacents + 0x0001))
   418A 5F            [ 4]  411 	ld	e,a
   418B 3E 00         [ 7]  412 	ld	a,#0x00
   418D CE 91         [ 7]  413 	adc	a, #>((_adjacents + 0x0001))
   418F 57            [ 4]  414 	ld	d,a
   4190 DD 7E FE      [19]  415 	ld	a,-2 (ix)
   4193 C6 4E         [ 7]  416 	add	a, #<(_cells)
   4195 6F            [ 4]  417 	ld	l,a
   4196 DD 7E FF      [19]  418 	ld	a,-1 (ix)
   4199 CE 91         [ 7]  419 	adc	a, #>(_cells)
   419B 67            [ 4]  420 	ld	h,a
   419C DD 46 05      [19]  421 	ld	b,5 (ix)
   419F 04            [ 4]  422 	inc	b
   41A0 78            [ 4]  423 	ld	a,b
   41A1 85            [ 4]  424 	add	a, l
   41A2 6F            [ 4]  425 	ld	l,a
   41A3 3E 00         [ 7]  426 	ld	a,#0x00
   41A5 8C            [ 4]  427 	adc	a, h
   41A6 67            [ 4]  428 	ld	h,a
   41A7 7E            [ 7]  429 	ld	a,(hl)
   41A8 12            [ 7]  430 	ld	(de),a
                            431 ;src/game.c:151: count++;
   41A9 DD 34 FD      [23]  432 	inc	-3 (ix)
   41AC                     433 00104$:
                            434 ;src/game.c:153: if (i != 3) {
   41AC DD 7E 04      [19]  435 	ld	a,4 (ix)
   41AF D6 03         [ 7]  436 	sub	a, #0x03
   41B1 28 23         [12]  437 	jr	Z,00106$
                            438 ;src/game.c:154: adjacents.values[count] = cells [i + 1][j];
   41B3 DD 7E FD      [19]  439 	ld	a,-3 (ix)
   41B6 C6 5F         [ 7]  440 	add	a, #<((_adjacents + 0x0001))
   41B8 5F            [ 4]  441 	ld	e,a
   41B9 3E 00         [ 7]  442 	ld	a,#0x00
   41BB CE 91         [ 7]  443 	adc	a, #>((_adjacents + 0x0001))
   41BD 57            [ 4]  444 	ld	d,a
   41BE DD 6E 04      [19]  445 	ld	l,4 (ix)
   41C1 2C            [ 4]  446 	inc	l
   41C2 26 00         [ 7]  447 	ld	h,#0x00
   41C4 29            [11]  448 	add	hl, hl
   41C5 29            [11]  449 	add	hl, hl
   41C6 3E 4E         [ 7]  450 	ld	a,#<(_cells)
   41C8 85            [ 4]  451 	add	a, l
   41C9 6F            [ 4]  452 	ld	l,a
   41CA 3E 91         [ 7]  453 	ld	a,#>(_cells)
   41CC 8C            [ 4]  454 	adc	a, h
   41CD 67            [ 4]  455 	ld	h,a
   41CE 06 00         [ 7]  456 	ld	b,#0x00
   41D0 09            [11]  457 	add	hl,bc
   41D1 7E            [ 7]  458 	ld	a,(hl)
   41D2 12            [ 7]  459 	ld	(de),a
                            460 ;src/game.c:155: count++;
   41D3 DD 34 FD      [23]  461 	inc	-3 (ix)
   41D6                     462 00106$:
                            463 ;src/game.c:157: if (j != 0) {
   41D6 DD 7E 05      [19]  464 	ld	a,5 (ix)
   41D9 B7            [ 4]  465 	or	a, a
   41DA 28 21         [12]  466 	jr	Z,00108$
                            467 ;src/game.c:158: adjacents.values[count] = cells [i][j - 1];
   41DC DD 7E FD      [19]  468 	ld	a,-3 (ix)
   41DF C6 5F         [ 7]  469 	add	a, #<((_adjacents + 0x0001))
   41E1 4F            [ 4]  470 	ld	c,a
   41E2 3E 00         [ 7]  471 	ld	a,#0x00
   41E4 CE 91         [ 7]  472 	adc	a, #>((_adjacents + 0x0001))
   41E6 47            [ 4]  473 	ld	b,a
   41E7 11 4E 91      [10]  474 	ld	de,#_cells+0
   41EA DD 6E FE      [19]  475 	ld	l,-2 (ix)
   41ED DD 66 FF      [19]  476 	ld	h,-1 (ix)
   41F0 19            [11]  477 	add	hl,de
   41F1 DD 5E 05      [19]  478 	ld	e,5 (ix)
   41F4 1D            [ 4]  479 	dec	e
   41F5 16 00         [ 7]  480 	ld	d,#0x00
   41F7 19            [11]  481 	add	hl,de
   41F8 7E            [ 7]  482 	ld	a,(hl)
   41F9 02            [ 7]  483 	ld	(bc),a
                            484 ;src/game.c:159: count++;
   41FA DD 34 FD      [23]  485 	inc	-3 (ix)
   41FD                     486 00108$:
                            487 ;src/game.c:162: adjacents.count = count;
   41FD 21 5E 91      [10]  488 	ld	hl,#_adjacents
   4200 DD 7E FD      [19]  489 	ld	a,-3 (ix)
   4203 77            [ 7]  490 	ld	(hl),a
   4204 DD F9         [10]  491 	ld	sp, ix
   4206 DD E1         [14]  492 	pop	ix
   4208 C9            [10]  493 	ret
                            494 ;src/game.c:173: u8 anyOfThisInAdjacents(u8 value) {
                            495 ;	---------------------------------
                            496 ; Function anyOfThisInAdjacents
                            497 ; ---------------------------------
   4209                     498 _anyOfThisInAdjacents::
   4209 DD E5         [15]  499 	push	ix
   420B DD 21 00 00   [14]  500 	ld	ix,#0
   420F DD 39         [15]  501 	add	ix,sp
                            502 ;src/game.c:177: result = 0;
   4211 0E 00         [ 7]  503 	ld	c,#0x00
                            504 ;src/game.c:178: for (i = 0; i < adjacents.count; i++) {
   4213 1E 00         [ 7]  505 	ld	e,#0x00
   4215                     506 00105$:
   4215 21 5E 91      [10]  507 	ld	hl, #_adjacents + 0
   4218 46            [ 7]  508 	ld	b,(hl)
   4219 7B            [ 4]  509 	ld	a,e
   421A 90            [ 4]  510 	sub	a, b
   421B 30 13         [12]  511 	jr	NC,00103$
                            512 ;src/game.c:179: if (adjacents.values[i] == value) {
   421D 21 5F 91      [10]  513 	ld	hl,#(_adjacents + 0x0001)
   4220 16 00         [ 7]  514 	ld	d,#0x00
   4222 19            [11]  515 	add	hl, de
   4223 DD 7E 04      [19]  516 	ld	a,4 (ix)
   4226 96            [ 7]  517 	sub	a,(hl)
   4227 20 04         [12]  518 	jr	NZ,00106$
                            519 ;src/game.c:180: result = 1;
   4229 0E 01         [ 7]  520 	ld	c,#0x01
                            521 ;src/game.c:181: break;
   422B 18 03         [12]  522 	jr	00103$
   422D                     523 00106$:
                            524 ;src/game.c:178: for (i = 0; i < adjacents.count; i++) {
   422D 1C            [ 4]  525 	inc	e
   422E 18 E5         [12]  526 	jr	00105$
   4230                     527 00103$:
                            528 ;src/game.c:184: return result;
   4230 69            [ 4]  529 	ld	l,c
   4231 DD E1         [14]  530 	pop	ix
   4233 C9            [10]  531 	ret
                            532 ;src/game.c:195: u8 anyMovesLeft() {
                            533 ;	---------------------------------
                            534 ; Function anyMovesLeft
                            535 ; ---------------------------------
   4234                     536 _anyMovesLeft::
                            537 ;src/game.c:199: movesLeft = 0;
   4234 0E 00         [ 7]  538 	ld	c,#0x00
                            539 ;src/game.c:201: if (countZeroes() == 0) {
   4236 C5            [11]  540 	push	bc
   4237 CD FC 40      [17]  541 	call	_countZeroes
   423A C1            [10]  542 	pop	bc
   423B 7D            [ 4]  543 	ld	a,l
                            544 ;src/game.c:202: for (i = 0; i < 4; i++) {
   423C B7            [ 4]  545 	or	a,a
   423D C2 B7 42      [10]  546 	jp	NZ,00113$
   4240 47            [ 4]  547 	ld	b,a
                            548 ;src/game.c:203: for (j = 0; j < 4; j++) {
   4241                     549 00125$:
   4241 1E 00         [ 7]  550 	ld	e,#0x00
   4243                     551 00115$:
                            552 ;src/game.c:204: getAdjacents(i, j);
   4243 C5            [11]  553 	push	bc
   4244 D5            [11]  554 	push	de
   4245 7B            [ 4]  555 	ld	a,e
   4246 F5            [11]  556 	push	af
   4247 33            [ 6]  557 	inc	sp
   4248 C5            [11]  558 	push	bc
   4249 33            [ 6]  559 	inc	sp
   424A CD 3E 41      [17]  560 	call	_getAdjacents
   424D F1            [10]  561 	pop	af
   424E D1            [10]  562 	pop	de
   424F C1            [10]  563 	pop	bc
                            564 ;src/game.c:205: if (((cells[i][j] == 1) && anyOfThisInAdjacents(2)) ||
   4250 68            [ 4]  565 	ld	l,b
   4251 26 00         [ 7]  566 	ld	h,#0x00
   4253 29            [11]  567 	add	hl, hl
   4254 29            [11]  568 	add	hl, hl
   4255 3E 4E         [ 7]  569 	ld	a,#<(_cells)
   4257 85            [ 4]  570 	add	a, l
   4258 6F            [ 4]  571 	ld	l,a
   4259 3E 91         [ 7]  572 	ld	a,#>(_cells)
   425B 8C            [ 4]  573 	adc	a, h
   425C 67            [ 4]  574 	ld	h,a
   425D 16 00         [ 7]  575 	ld	d,#0x00
   425F 19            [11]  576 	add	hl, de
   4260 56            [ 7]  577 	ld	d,(hl)
   4261 15            [ 4]  578 	dec	d
   4262 20 12         [12]  579 	jr	NZ,00105$
   4264 E5            [11]  580 	push	hl
   4265 C5            [11]  581 	push	bc
   4266 D5            [11]  582 	push	de
   4267 3E 02         [ 7]  583 	ld	a,#0x02
   4269 F5            [11]  584 	push	af
   426A 33            [ 6]  585 	inc	sp
   426B CD 09 42      [17]  586 	call	_anyOfThisInAdjacents
   426E 33            [ 6]  587 	inc	sp
   426F 7D            [ 4]  588 	ld	a,l
   4270 D1            [10]  589 	pop	de
   4271 C1            [10]  590 	pop	bc
   4272 E1            [10]  591 	pop	hl
   4273 B7            [ 4]  592 	or	a, a
   4274 20 2B         [12]  593 	jr	NZ,00101$
   4276                     594 00105$:
                            595 ;src/game.c:206: ((cells[i][j] == 2) && anyOfThisInAdjacents(1)) ||
   4276 7E            [ 7]  596 	ld	a,(hl)
   4277 D6 02         [ 7]  597 	sub	a, #0x02
   4279 20 12         [12]  598 	jr	NZ,00107$
   427B E5            [11]  599 	push	hl
   427C C5            [11]  600 	push	bc
   427D D5            [11]  601 	push	de
   427E 3E 01         [ 7]  602 	ld	a,#0x01
   4280 F5            [11]  603 	push	af
   4281 33            [ 6]  604 	inc	sp
   4282 CD 09 42      [17]  605 	call	_anyOfThisInAdjacents
   4285 33            [ 6]  606 	inc	sp
   4286 7D            [ 4]  607 	ld	a,l
   4287 D1            [10]  608 	pop	de
   4288 C1            [10]  609 	pop	bc
   4289 E1            [10]  610 	pop	hl
   428A B7            [ 4]  611 	or	a, a
   428B 20 14         [12]  612 	jr	NZ,00101$
   428D                     613 00107$:
                            614 ;src/game.c:207: ((cells[i][j] > 2) && anyOfThisInAdjacents(cells[i][j]))) {
   428D 56            [ 7]  615 	ld	d,(hl)
   428E 3E 02         [ 7]  616 	ld	a,#0x02
   4290 92            [ 4]  617 	sub	a, d
   4291 30 12         [12]  618 	jr	NC,00116$
   4293 C5            [11]  619 	push	bc
   4294 D5            [11]  620 	push	de
   4295 D5            [11]  621 	push	de
   4296 33            [ 6]  622 	inc	sp
   4297 CD 09 42      [17]  623 	call	_anyOfThisInAdjacents
   429A 33            [ 6]  624 	inc	sp
   429B D1            [10]  625 	pop	de
   429C C1            [10]  626 	pop	bc
   429D 7D            [ 4]  627 	ld	a,l
   429E B7            [ 4]  628 	or	a, a
   429F 28 04         [12]  629 	jr	Z,00116$
   42A1                     630 00101$:
                            631 ;src/game.c:208: movesLeft = 1;
   42A1 0E 01         [ 7]  632 	ld	c,#0x01
                            633 ;src/game.c:209: break;
   42A3 18 06         [12]  634 	jr	00108$
   42A5                     635 00116$:
                            636 ;src/game.c:203: for (j = 0; j < 4; j++) {
   42A5 1C            [ 4]  637 	inc	e
   42A6 7B            [ 4]  638 	ld	a,e
   42A7 D6 04         [ 7]  639 	sub	a, #0x04
   42A9 38 98         [12]  640 	jr	C,00115$
   42AB                     641 00108$:
                            642 ;src/game.c:212: if (movesLeft)
   42AB 79            [ 4]  643 	ld	a,c
   42AC B7            [ 4]  644 	or	a, a
   42AD 20 0A         [12]  645 	jr	NZ,00114$
                            646 ;src/game.c:202: for (i = 0; i < 4; i++) {
   42AF 04            [ 4]  647 	inc	b
   42B0 78            [ 4]  648 	ld	a,b
   42B1 D6 04         [ 7]  649 	sub	a, #0x04
   42B3 38 8C         [12]  650 	jr	C,00125$
   42B5 18 02         [12]  651 	jr	00114$
   42B7                     652 00113$:
                            653 ;src/game.c:217: movesLeft = 1;
   42B7 0E 01         [ 7]  654 	ld	c,#0x01
   42B9                     655 00114$:
                            656 ;src/game.c:218: return movesLeft;
   42B9 69            [ 4]  657 	ld	l,c
   42BA C9            [10]  658 	ret
                            659 ;src/game.c:229: void addRandomCellTurn(u8 dir) {
                            660 ;	---------------------------------
                            661 ; Function addRandomCellTurn
                            662 ; ---------------------------------
   42BB                     663 _addRandomCellTurn::
   42BB DD E5         [15]  664 	push	ix
   42BD DD 21 00 00   [14]  665 	ld	ix,#0
   42C1 DD 39         [15]  666 	add	ix,sp
   42C3 F5            [11]  667 	push	af
                            668 ;src/game.c:230: u8 i = 0;
   42C4 DD 36 FF 00   [19]  669 	ld	-1 (ix),#0x00
                            670 ;src/game.c:231: u8 j = 0;
   42C8 0E 00         [ 7]  671 	ld	c,#0x00
                            672 ;src/game.c:234: switch (dir) {
   42CA 3E 03         [ 7]  673 	ld	a,#0x03
   42CC DD 96 04      [19]  674 	sub	a, 4 (ix)
   42CF 38 25         [12]  675 	jr	C,00105$
   42D1 DD 5E 04      [19]  676 	ld	e,4 (ix)
   42D4 16 00         [ 7]  677 	ld	d,#0x00
   42D6 21 DC 42      [10]  678 	ld	hl,#00146$
   42D9 19            [11]  679 	add	hl,de
   42DA 19            [11]  680 	add	hl,de
                            681 ;src/game.c:235: case LEFT:
   42DB E9            [ 4]  682 	jp	(hl)
   42DC                     683 00146$:
   42DC 18 06         [12]  684 	jr	00101$
   42DE 18 08         [12]  685 	jr	00102$
   42E0 18 0A         [12]  686 	jr	00103$
   42E2 18 0E         [12]  687 	jr	00104$
   42E4                     688 00101$:
                            689 ;src/game.c:236: j = 3;
   42E4 0E 03         [ 7]  690 	ld	c,#0x03
                            691 ;src/game.c:237: break;
   42E6 18 0E         [12]  692 	jr	00105$
                            693 ;src/game.c:238: case RIGHT:
   42E8                     694 00102$:
                            695 ;src/game.c:239: j = 0;
   42E8 0E 00         [ 7]  696 	ld	c,#0x00
                            697 ;src/game.c:240: break;
   42EA 18 0A         [12]  698 	jr	00105$
                            699 ;src/game.c:241: case UP:
   42EC                     700 00103$:
                            701 ;src/game.c:242: i = 3;
   42EC DD 36 FF 03   [19]  702 	ld	-1 (ix),#0x03
                            703 ;src/game.c:243: break;
   42F0 18 04         [12]  704 	jr	00105$
                            705 ;src/game.c:244: case DOWN:
   42F2                     706 00104$:
                            707 ;src/game.c:245: i = 0;
   42F2 DD 36 FF 00   [19]  708 	ld	-1 (ix),#0x00
                            709 ;src/game.c:247: }
   42F6                     710 00105$:
                            711 ;src/game.c:248: if ((dir == LEFT) || (dir == RIGHT))
   42F6 DD 7E 04      [19]  712 	ld	a,4 (ix)
   42F9 3D            [ 4]  713 	dec	a
   42FA 20 04         [12]  714 	jr	NZ,00147$
   42FC 3E 01         [ 7]  715 	ld	a,#0x01
   42FE 18 01         [12]  716 	jr	00148$
   4300                     717 00147$:
   4300 AF            [ 4]  718 	xor	a,a
   4301                     719 00148$:
   4301 47            [ 4]  720 	ld	b,a
   4302 DD 7E 04      [19]  721 	ld	a,4 (ix)
   4305 B7            [ 4]  722 	or	a, a
   4306 28 04         [12]  723 	jr	Z,00106$
   4308 78            [ 4]  724 	ld	a,b
   4309 B7            [ 4]  725 	or	a, a
   430A 28 0F         [12]  726 	jr	Z,00107$
   430C                     727 00106$:
                            728 ;src/game.c:249: i = cpct_rand() / 64;
   430C C5            [11]  729 	push	bc
   430D CD 43 83      [17]  730 	call	_cpct_getRandom_mxor_u8
   4310 C1            [10]  731 	pop	bc
   4311 7D            [ 4]  732 	ld	a,l
   4312 07            [ 4]  733 	rlca
   4313 07            [ 4]  734 	rlca
   4314 E6 03         [ 7]  735 	and	a,#0x03
   4316 DD 77 FF      [19]  736 	ld	-1 (ix),a
   4319 18 0B         [12]  737 	jr	00126$
   431B                     738 00107$:
                            739 ;src/game.c:251: j = cpct_rand() / 64;
   431B C5            [11]  740 	push	bc
   431C CD 43 83      [17]  741 	call	_cpct_getRandom_mxor_u8
   431F C1            [10]  742 	pop	bc
   4320 7D            [ 4]  743 	ld	a,l
   4321 07            [ 4]  744 	rlca
   4322 07            [ 4]  745 	rlca
   4323 E6 03         [ 7]  746 	and	a,#0x03
   4325 4F            [ 4]  747 	ld	c,a
                            748 ;src/game.c:252: while (cells[i][j] != 0) {
   4326                     749 00126$:
   4326 DD 70 FE      [19]  750 	ld	-2 (ix),b
   4329                     751 00114$:
   4329 DD 6E FF      [19]  752 	ld	l,-1 (ix)
   432C 26 00         [ 7]  753 	ld	h,#0x00
   432E 29            [11]  754 	add	hl, hl
   432F 29            [11]  755 	add	hl, hl
   4330 11 4E 91      [10]  756 	ld	de,#_cells
   4333 19            [11]  757 	add	hl,de
   4334 7D            [ 4]  758 	ld	a,l
   4335 81            [ 4]  759 	add	a, c
   4336 5F            [ 4]  760 	ld	e,a
   4337 7C            [ 4]  761 	ld	a,h
   4338 CE 00         [ 7]  762 	adc	a, #0x00
   433A 57            [ 4]  763 	ld	d,a
   433B 1A            [ 7]  764 	ld	a,(de)
   433C B7            [ 4]  765 	or	a, a
   433D 28 26         [12]  766 	jr	Z,00116$
                            767 ;src/game.c:253: if ((dir == LEFT) || (dir == RIGHT))
   433F DD 7E 04      [19]  768 	ld	a,4 (ix)
   4342 B7            [ 4]  769 	or	a, a
   4343 28 06         [12]  770 	jr	Z,00110$
   4345 DD 7E FE      [19]  771 	ld	a,-2 (ix)
   4348 B7            [ 4]  772 	or	a, a
   4349 28 0F         [12]  773 	jr	Z,00111$
   434B                     774 00110$:
                            775 ;src/game.c:254: i = cpct_rand() / 64;
   434B C5            [11]  776 	push	bc
   434C CD 43 83      [17]  777 	call	_cpct_getRandom_mxor_u8
   434F C1            [10]  778 	pop	bc
   4350 7D            [ 4]  779 	ld	a,l
   4351 07            [ 4]  780 	rlca
   4352 07            [ 4]  781 	rlca
   4353 E6 03         [ 7]  782 	and	a,#0x03
   4355 DD 77 FF      [19]  783 	ld	-1 (ix),a
   4358 18 CF         [12]  784 	jr	00114$
   435A                     785 00111$:
                            786 ;src/game.c:256: j = cpct_rand() / 64;
   435A CD 43 83      [17]  787 	call	_cpct_getRandom_mxor_u8
   435D 7D            [ 4]  788 	ld	a,l
   435E 07            [ 4]  789 	rlca
   435F 07            [ 4]  790 	rlca
   4360 E6 03         [ 7]  791 	and	a,#0x03
   4362 4F            [ 4]  792 	ld	c,a
   4363 18 C4         [12]  793 	jr	00114$
   4365                     794 00116$:
                            795 ;src/game.c:260: cells[i][j] = tileBag[currentTile];
   4365 3A 0F 92      [13]  796 	ld	a,(#_currentTile + 0)
   4368 C6 03         [ 7]  797 	add	a, #<(_tileBag)
   436A 4F            [ 4]  798 	ld	c,a
   436B 3E 00         [ 7]  799 	ld	a,#0x00
   436D CE 92         [ 7]  800 	adc	a, #>(_tileBag)
   436F 47            [ 4]  801 	ld	b,a
   4370 0A            [ 7]  802 	ld	a,(bc)
   4371 12            [ 7]  803 	ld	(de),a
                            804 ;src/game.c:261: if (currentTile < 11)
   4372 3A 0F 92      [13]  805 	ld	a,(#_currentTile + 0)
   4375 D6 0B         [ 7]  806 	sub	a, #0x0B
   4377 30 06         [12]  807 	jr	NC,00118$
                            808 ;src/game.c:262: currentTile++;
   4379 21 0F 92      [10]  809 	ld	hl, #_currentTile+0
   437C 34            [11]  810 	inc	(hl)
   437D 18 03         [12]  811 	jr	00120$
   437F                     812 00118$:
                            813 ;src/game.c:264: renewTileBag();
   437F CD 00 40      [17]  814 	call	_renewTileBag
   4382                     815 00120$:
   4382 DD F9         [10]  816 	ld	sp, ix
   4384 DD E1         [14]  817 	pop	ix
   4386 C9            [10]  818 	ret
                            819 ;src/game.c:275: void addRandomCell() {
                            820 ;	---------------------------------
                            821 ; Function addRandomCell
                            822 ; ---------------------------------
   4387                     823 _addRandomCell::
                            824 ;src/game.c:278: i = cpct_rand() / 64;
   4387 CD 43 83      [17]  825 	call	_cpct_getRandom_mxor_u8
   438A 7D            [ 4]  826 	ld	a,l
   438B 07            [ 4]  827 	rlca
   438C 07            [ 4]  828 	rlca
   438D E6 03         [ 7]  829 	and	a,#0x03
   438F 4F            [ 4]  830 	ld	c,a
                            831 ;src/game.c:279: j = cpct_rand() / 64;
   4390 C5            [11]  832 	push	bc
   4391 CD 43 83      [17]  833 	call	_cpct_getRandom_mxor_u8
   4394 C1            [10]  834 	pop	bc
   4395 7D            [ 4]  835 	ld	a,l
   4396 07            [ 4]  836 	rlca
   4397 07            [ 4]  837 	rlca
   4398 E6 03         [ 7]  838 	and	a,#0x03
   439A 47            [ 4]  839 	ld	b,a
                            840 ;src/game.c:280: while (cells[i][j] != 0) {
   439B                     841 00101$:
   439B 69            [ 4]  842 	ld	l,c
   439C 26 00         [ 7]  843 	ld	h,#0x00
   439E 29            [11]  844 	add	hl, hl
   439F 29            [11]  845 	add	hl, hl
   43A0 11 4E 91      [10]  846 	ld	de,#_cells
   43A3 19            [11]  847 	add	hl,de
   43A4 7D            [ 4]  848 	ld	a,l
   43A5 80            [ 4]  849 	add	a, b
   43A6 4F            [ 4]  850 	ld	c,a
   43A7 7C            [ 4]  851 	ld	a,h
   43A8 CE 00         [ 7]  852 	adc	a, #0x00
   43AA 47            [ 4]  853 	ld	b,a
   43AB 0A            [ 7]  854 	ld	a,(bc)
   43AC B7            [ 4]  855 	or	a, a
   43AD 28 16         [12]  856 	jr	Z,00103$
                            857 ;src/game.c:281: i = cpct_rand() / 64;
   43AF CD 43 83      [17]  858 	call	_cpct_getRandom_mxor_u8
   43B2 7D            [ 4]  859 	ld	a,l
   43B3 07            [ 4]  860 	rlca
   43B4 07            [ 4]  861 	rlca
   43B5 E6 03         [ 7]  862 	and	a,#0x03
   43B7 4F            [ 4]  863 	ld	c,a
                            864 ;src/game.c:282: j = cpct_rand() / 64;
   43B8 C5            [11]  865 	push	bc
   43B9 CD 43 83      [17]  866 	call	_cpct_getRandom_mxor_u8
   43BC C1            [10]  867 	pop	bc
   43BD 7D            [ 4]  868 	ld	a,l
   43BE 07            [ 4]  869 	rlca
   43BF 07            [ 4]  870 	rlca
   43C0 E6 03         [ 7]  871 	and	a,#0x03
   43C2 47            [ 4]  872 	ld	b,a
   43C3 18 D6         [12]  873 	jr	00101$
   43C5                     874 00103$:
                            875 ;src/game.c:287: cells[i][j] = (cpct_rand() / 85) + 1;
   43C5 C5            [11]  876 	push	bc
   43C6 CD 43 83      [17]  877 	call	_cpct_getRandom_mxor_u8
   43C9 55            [ 4]  878 	ld	d,l
   43CA 3E 55         [ 7]  879 	ld	a,#0x55
   43CC F5            [11]  880 	push	af
   43CD 33            [ 6]  881 	inc	sp
   43CE D5            [11]  882 	push	de
   43CF 33            [ 6]  883 	inc	sp
   43D0 CD DF 82      [17]  884 	call	__divuchar
   43D3 F1            [10]  885 	pop	af
   43D4 C1            [10]  886 	pop	bc
   43D5 7D            [ 4]  887 	ld	a,l
   43D6 3C            [ 4]  888 	inc	a
   43D7 02            [ 7]  889 	ld	(bc),a
   43D8 C9            [10]  890 	ret
                            891 ;src/game.c:298: void initCells() {
                            892 ;	---------------------------------
                            893 ; Function initCells
                            894 ; ---------------------------------
   43D9                     895 _initCells::
                            896 ;src/game.c:301: for (i = 0; i < 4; i++) {
   43D9 0E 00         [ 7]  897 	ld	c,#0x00
                            898 ;src/game.c:302: for (j = 0; j < 4; j++) {
   43DB                     899 00109$:
   43DB 06 00         [ 7]  900 	ld	b,#0x00
   43DD                     901 00103$:
                            902 ;src/game.c:303: cells[i][j] = 0;
   43DD 69            [ 4]  903 	ld	l,c
   43DE 26 00         [ 7]  904 	ld	h,#0x00
   43E0 29            [11]  905 	add	hl, hl
   43E1 29            [11]  906 	add	hl, hl
   43E2 11 4E 91      [10]  907 	ld	de,#_cells
   43E5 19            [11]  908 	add	hl,de
   43E6 58            [ 4]  909 	ld	e,b
   43E7 16 00         [ 7]  910 	ld	d,#0x00
   43E9 19            [11]  911 	add	hl,de
   43EA 36 00         [10]  912 	ld	(hl),#0x00
                            913 ;src/game.c:302: for (j = 0; j < 4; j++) {
   43EC 04            [ 4]  914 	inc	b
   43ED 78            [ 4]  915 	ld	a,b
   43EE D6 04         [ 7]  916 	sub	a, #0x04
   43F0 38 EB         [12]  917 	jr	C,00103$
                            918 ;src/game.c:301: for (i = 0; i < 4; i++) {
   43F2 0C            [ 4]  919 	inc	c
   43F3 79            [ 4]  920 	ld	a,c
   43F4 D6 04         [ 7]  921 	sub	a, #0x04
   43F6 38 E3         [12]  922 	jr	C,00109$
   43F8 C9            [10]  923 	ret
                            924 ;src/game.c:317: void initialization() {
                            925 ;	---------------------------------
                            926 ; Function initialization
                            927 ; ---------------------------------
   43F9                     928 _initialization::
                            929 ;src/game.c:320: drawText("AMSTHREES IS READY", 31, 76, 1);
   43F9 21 4C 01      [10]  930 	ld	hl,#0x014C
   43FC E5            [11]  931 	push	hl
   43FD 3E 1F         [ 7]  932 	ld	a,#0x1F
   43FF F5            [11]  933 	push	af
   4400 33            [ 6]  934 	inc	sp
   4401 21 21 45      [10]  935 	ld	hl,#___str_0
   4404 E5            [11]  936 	push	hl
   4405 CD F3 76      [17]  937 	call	_drawText
   4408 F1            [10]  938 	pop	af
                            939 ;src/game.c:321: drawText("PRESS ANY KEY", 20, 90, 1);
   4409 33            [ 6]  940 	inc	sp
   440A 21 5A 01      [10]  941 	ld	hl,#0x015A
   440D E3            [19]  942 	ex	(sp),hl
   440E 3E 14         [ 7]  943 	ld	a,#0x14
   4410 F5            [11]  944 	push	af
   4411 33            [ 6]  945 	inc	sp
   4412 21 34 45      [10]  946 	ld	hl,#___str_1
   4415 E5            [11]  947 	push	hl
   4416 CD F3 76      [17]  948 	call	_drawText
   4419 F1            [10]  949 	pop	af
   441A F1            [10]  950 	pop	af
   441B 33            [ 6]  951 	inc	sp
                            952 ;src/game.c:323: seed = wait4UserKeypress();
   441C CD 01 7C      [17]  953 	call	_wait4UserKeypress
                            954 ;src/game.c:325: if (!seed)
   441F 7A            [ 4]  955 	ld	a,d
   4420 B3            [ 4]  956 	or	a, e
   4421 B4            [ 4]  957 	or	a, h
   4422 B5            [ 4]  958 	or	a,l
   4423 20 0A         [12]  959 	jr	NZ,00102$
                            960 ;src/game.c:326: seed++;
   4425 2C            [ 4]  961 	inc	l
   4426 20 07         [12]  962 	jr	NZ,00109$
   4428 24            [ 4]  963 	inc	h
   4429 20 04         [12]  964 	jr	NZ,00109$
   442B 1C            [ 4]  965 	inc	e
   442C 20 01         [12]  966 	jr	NZ,00109$
   442E 14            [ 4]  967 	inc	d
   442F                     968 00109$:
   442F                     969 00102$:
                            970 ;src/game.c:327: cpct_srand(seed);
   442F CD 35 83      [17]  971 	call	_cpct_setSeed_mxor
   4432 CD 3D 83      [17]  972 	call	_cpct_restoreState_mxor_u8
                            973 ;src/game.c:329: scoreHallOfFame[0] = 6000;
   4435 21 70 17      [10]  974 	ld	hl,#0x1770
   4438 22 67 91      [16]  975 	ld	(_scoreHallOfFame), hl
   443B 21 00 00      [10]  976 	ld	hl,#0x0000
   443E 22 69 91      [16]  977 	ld	(_scoreHallOfFame+2), hl
                            978 ;src/game.c:330: scoreHallOfFame[1] = 5000;
   4441 21 88 13      [10]  979 	ld	hl,#0x1388
   4444 22 6B 91      [16]  980 	ld	((_scoreHallOfFame + 0x0004)), hl
   4447 21 00 00      [10]  981 	ld	hl,#0x0000
   444A 22 6D 91      [16]  982 	ld	((_scoreHallOfFame + 0x0004)+2), hl
                            983 ;src/game.c:331: scoreHallOfFame[2] = 4000;
   444D 21 A0 0F      [10]  984 	ld	hl,#0x0FA0
   4450 22 6F 91      [16]  985 	ld	((_scoreHallOfFame + 0x0008)), hl
   4453 21 00 00      [10]  986 	ld	hl,#0x0000
   4456 22 71 91      [16]  987 	ld	((_scoreHallOfFame + 0x0008)+2), hl
                            988 ;src/game.c:332: scoreHallOfFame[3] = 3000;
   4459 21 B8 0B      [10]  989 	ld	hl,#0x0BB8
   445C 22 73 91      [16]  990 	ld	((_scoreHallOfFame + 0x000c)), hl
   445F 21 00 00      [10]  991 	ld	hl,#0x0000
   4462 22 75 91      [16]  992 	ld	((_scoreHallOfFame + 0x000c)+2), hl
                            993 ;src/game.c:333: scoreHallOfFame[4] = 1500;
   4465 21 DC 05      [10]  994 	ld	hl,#0x05DC
   4468 22 77 91      [16]  995 	ld	((_scoreHallOfFame + 0x0010)), hl
   446B 21 00 00      [10]  996 	ld	hl,#0x0000
   446E 22 79 91      [16]  997 	ld	((_scoreHallOfFame + 0x0010)+2), hl
                            998 ;src/game.c:334: scoreHallOfFame[5] = 1000;
   4471 21 E8 03      [10]  999 	ld	hl,#0x03E8
   4474 22 7B 91      [16] 1000 	ld	((_scoreHallOfFame + 0x0014)), hl
   4477 21 00 00      [10] 1001 	ld	hl,#0x0000
   447A 22 7D 91      [16] 1002 	ld	((_scoreHallOfFame + 0x0014)+2), hl
                           1003 ;src/game.c:335: scoreHallOfFame[6] = 500;
   447D 21 F4 01      [10] 1004 	ld	hl,#0x01F4
   4480 22 7F 91      [16] 1005 	ld	((_scoreHallOfFame + 0x0018)), hl
   4483 21 00 00      [10] 1006 	ld	hl,#0x0000
   4486 22 81 91      [16] 1007 	ld	((_scoreHallOfFame + 0x0018)+2), hl
                           1008 ;src/game.c:336: scoreHallOfFame[7] = 300;
   4489 21 2C 01      [10] 1009 	ld	hl,#0x012C
   448C 22 83 91      [16] 1010 	ld	((_scoreHallOfFame + 0x001c)), hl
   448F 21 00 00      [10] 1011 	ld	hl,#0x0000
   4492 22 85 91      [16] 1012 	ld	((_scoreHallOfFame + 0x001c)+2), hl
                           1013 ;src/game.c:338: strcpy(nameHallOfFame[0], "MARTIN");
   4495 11 87 91      [10] 1014 	ld	de,#_nameHallOfFame
   4498 21 42 45      [10] 1015 	ld	hl,#___str_2
   449B AF            [ 4] 1016 	xor	a, a
   449C                    1017 00110$:
   449C BE            [ 7] 1018 	cp	a, (hl)
   449D ED A0         [16] 1019 	ldi
   449F 20 FB         [12] 1020 	jr	NZ, 00110$
                           1021 ;src/game.c:339: strcpy(nameHallOfFame[1], "DIEGO");
   44A1 11 96 91      [10] 1022 	ld	de,#(_nameHallOfFame + 0x000f)
   44A4 21 49 45      [10] 1023 	ld	hl,#___str_3
   44A7 AF            [ 4] 1024 	xor	a, a
   44A8                    1025 00111$:
   44A8 BE            [ 7] 1026 	cp	a, (hl)
   44A9 ED A0         [16] 1027 	ldi
   44AB 20 FB         [12] 1028 	jr	NZ, 00111$
                           1029 ;src/game.c:340: strcpy(nameHallOfFame[2], "MARIA");
   44AD 11 A5 91      [10] 1030 	ld	de,#(_nameHallOfFame + 0x001e)
   44B0 21 4F 45      [10] 1031 	ld	hl,#___str_4
   44B3 AF            [ 4] 1032 	xor	a, a
   44B4                    1033 00112$:
   44B4 BE            [ 7] 1034 	cp	a, (hl)
   44B5 ED A0         [16] 1035 	ldi
   44B7 20 FB         [12] 1036 	jr	NZ, 00112$
                           1037 ;src/game.c:341: strcpy(nameHallOfFame[3], "DAVID");
   44B9 11 B4 91      [10] 1038 	ld	de,#(_nameHallOfFame + 0x002d)
   44BC 21 55 45      [10] 1039 	ld	hl,#___str_5
   44BF AF            [ 4] 1040 	xor	a, a
   44C0                    1041 00113$:
   44C0 BE            [ 7] 1042 	cp	a, (hl)
   44C1 ED A0         [16] 1043 	ldi
   44C3 20 FB         [12] 1044 	jr	NZ, 00113$
                           1045 ;src/game.c:342: strcpy(nameHallOfFame[4], "MASTER");
   44C5 11 C3 91      [10] 1046 	ld	de,#(_nameHallOfFame + 0x003c)
   44C8 21 5B 45      [10] 1047 	ld	hl,#___str_6
   44CB AF            [ 4] 1048 	xor	a, a
   44CC                    1049 00114$:
   44CC BE            [ 7] 1050 	cp	a, (hl)
   44CD ED A0         [16] 1051 	ldi
   44CF 20 FB         [12] 1052 	jr	NZ, 00114$
                           1053 ;src/game.c:343: strcpy(nameHallOfFame[5], "EXPERT");
   44D1 11 D2 91      [10] 1054 	ld	de,#(_nameHallOfFame + 0x004b)
   44D4 21 62 45      [10] 1055 	ld	hl,#___str_7
   44D7 AF            [ 4] 1056 	xor	a, a
   44D8                    1057 00115$:
   44D8 BE            [ 7] 1058 	cp	a, (hl)
   44D9 ED A0         [16] 1059 	ldi
   44DB 20 FB         [12] 1060 	jr	NZ, 00115$
                           1061 ;src/game.c:344: strcpy(nameHallOfFame[6], "INTERMEDIATE");
   44DD 11 E1 91      [10] 1062 	ld	de,#(_nameHallOfFame + 0x005a)
   44E0 21 69 45      [10] 1063 	ld	hl,#___str_8
   44E3 AF            [ 4] 1064 	xor	a, a
   44E4                    1065 00116$:
   44E4 BE            [ 7] 1066 	cp	a, (hl)
   44E5 ED A0         [16] 1067 	ldi
   44E7 20 FB         [12] 1068 	jr	NZ, 00116$
                           1069 ;src/game.c:345: strcpy(nameHallOfFame[7], "BEGINNER");
   44E9 11 F0 91      [10] 1070 	ld	de,#(_nameHallOfFame + 0x0069)
   44EC 21 76 45      [10] 1071 	ld	hl,#___str_9
   44EF AF            [ 4] 1072 	xor	a, a
   44F0                    1073 00117$:
   44F0 BE            [ 7] 1074 	cp	a, (hl)
   44F1 ED A0         [16] 1075 	ldi
   44F3 20 FB         [12] 1076 	jr	NZ, 00117$
                           1077 ;src/game.c:348: clearScreen();
   44F5 CD 36 81      [17] 1078 	call	_clearScreen
                           1079 ;src/game.c:350: keys.up    = Key_Q;
   44F8 21 08 08      [10] 1080 	ld	hl,#0x0808
   44FB 22 40 91      [16] 1081 	ld	(_keys), hl
                           1082 ;src/game.c:351: keys.down  = Key_A;
   44FE 26 20         [ 7] 1083 	ld	h, #0x20
   4500 22 42 91      [16] 1084 	ld	((_keys + 0x0002)), hl
                           1085 ;src/game.c:352: keys.left  = Key_O;
   4503 21 04 04      [10] 1086 	ld	hl,#0x0404
   4506 22 44 91      [16] 1087 	ld	((_keys + 0x0004)), hl
                           1088 ;src/game.c:353: keys.right = Key_P;
   4509 21 03 08      [10] 1089 	ld	hl,#0x0803
   450C 22 46 91      [16] 1090 	ld	((_keys + 0x0006)), hl
                           1091 ;src/game.c:355: keys.pause = Key_Del;
   450F 21 09 80      [10] 1092 	ld	hl,#0x8009
   4512 22 4A 91      [16] 1093 	ld	((_keys + 0x000a)), hl
                           1094 ;src/game.c:356: keys.abort = Key_Esc;
   4515 21 08 04      [10] 1095 	ld	hl,#0x0408
   4518 22 4C 91      [16] 1096 	ld	((_keys + 0x000c)), hl
                           1097 ;src/game.c:358: selectedOption = 1;
   451B 21 00 92      [10] 1098 	ld	hl,#_selectedOption + 0
   451E 36 01         [10] 1099 	ld	(hl), #0x01
   4520 C9            [10] 1100 	ret
   4521                    1101 ___str_0:
   4521 41 4D 53 54 48 52  1102 	.ascii "AMSTHREES IS READY"
        45 45 53 20 49 53
        20 52 45 41 44 59
   4533 00                 1103 	.db 0x00
   4534                    1104 ___str_1:
   4534 50 52 45 53 53 20  1105 	.ascii "PRESS ANY KEY"
        41 4E 59 20 4B 45
        59
   4541 00                 1106 	.db 0x00
   4542                    1107 ___str_2:
   4542 4D 41 52 54 49 4E  1108 	.ascii "MARTIN"
   4548 00                 1109 	.db 0x00
   4549                    1110 ___str_3:
   4549 44 49 45 47 4F     1111 	.ascii "DIEGO"
   454E 00                 1112 	.db 0x00
   454F                    1113 ___str_4:
   454F 4D 41 52 49 41     1114 	.ascii "MARIA"
   4554 00                 1115 	.db 0x00
   4555                    1116 ___str_5:
   4555 44 41 56 49 44     1117 	.ascii "DAVID"
   455A 00                 1118 	.db 0x00
   455B                    1119 ___str_6:
   455B 4D 41 53 54 45 52  1120 	.ascii "MASTER"
   4561 00                 1121 	.db 0x00
   4562                    1122 ___str_7:
   4562 45 58 50 45 52 54  1123 	.ascii "EXPERT"
   4568 00                 1124 	.db 0x00
   4569                    1125 ___str_8:
   4569 49 4E 54 45 52 4D  1126 	.ascii "INTERMEDIATE"
        45 44 49 41 54 45
   4575 00                 1127 	.db 0x00
   4576                    1128 ___str_9:
   4576 42 45 47 49 4E 4E  1129 	.ascii "BEGINNER"
        45 52
   457E 00                 1130 	.db 0x00
                           1131 ;src/game.c:370: void initGame() {
                           1132 ;	---------------------------------
                           1133 ; Function initGame
                           1134 ; ---------------------------------
   457F                    1135 _initGame::
   457F DD E5         [15] 1136 	push	ix
   4581 DD 21 00 00   [14] 1137 	ld	ix,#0
   4585 DD 39         [15] 1138 	add	ix,sp
   4587 F5            [11] 1139 	push	af
   4588 3B            [ 6] 1140 	dec	sp
                           1141 ;src/game.c:373: initCells();
   4589 CD D9 43      [17] 1142 	call	_initCells
                           1143 ;src/game.c:375: renewTileBag();
   458C CD 00 40      [17] 1144 	call	_renewTileBag
                           1145 ;src/game.c:377: for (i = 0; i < 9; i++) {
   458F DD 36 FD 00   [19] 1146 	ld	-3 (ix),#0x00
   4593                    1147 00105$:
                           1148 ;src/game.c:378: j = cpct_rand() / 64;
   4593 CD 43 83      [17] 1149 	call	_cpct_getRandom_mxor_u8
   4596 7D            [ 4] 1150 	ld	a,l
   4597 07            [ 4] 1151 	rlca
   4598 07            [ 4] 1152 	rlca
   4599 E6 03         [ 7] 1153 	and	a,#0x03
   459B 6F            [ 4] 1154 	ld	l,a
                           1155 ;src/game.c:379: k = cpct_rand() / 64;
   459C E5            [11] 1156 	push	hl
   459D CD 43 83      [17] 1157 	call	_cpct_getRandom_mxor_u8
   45A0 7D            [ 4] 1158 	ld	a,l
   45A1 E1            [10] 1159 	pop	hl
   45A2 07            [ 4] 1160 	rlca
   45A3 07            [ 4] 1161 	rlca
   45A4 E6 03         [ 7] 1162 	and	a,#0x03
   45A6 4F            [ 4] 1163 	ld	c,a
                           1164 ;src/game.c:380: while (cells[j][k] != 0) {
   45A7                    1165 00101$:
   45A7 26 00         [ 7] 1166 	ld	h,#0x00
   45A9 29            [11] 1167 	add	hl, hl
   45AA 29            [11] 1168 	add	hl, hl
   45AB 11 4E 91      [10] 1169 	ld	de,#_cells
   45AE 19            [11] 1170 	add	hl,de
   45AF 7D            [ 4] 1171 	ld	a,l
   45B0 81            [ 4] 1172 	add	a, c
   45B1 DD 77 FE      [19] 1173 	ld	-2 (ix),a
   45B4 7C            [ 4] 1174 	ld	a,h
   45B5 CE 00         [ 7] 1175 	adc	a, #0x00
   45B7 DD 77 FF      [19] 1176 	ld	-1 (ix),a
   45BA DD 6E FE      [19] 1177 	ld	l,-2 (ix)
   45BD DD 66 FF      [19] 1178 	ld	h,-1 (ix)
   45C0 7E            [ 7] 1179 	ld	a, (hl)
   45C1 B7            [ 4] 1180 	or	a, a
   45C2 28 16         [12] 1181 	jr	Z,00103$
                           1182 ;src/game.c:381: j = cpct_rand() / 64;
   45C4 CD 43 83      [17] 1183 	call	_cpct_getRandom_mxor_u8
   45C7 7D            [ 4] 1184 	ld	a,l
   45C8 07            [ 4] 1185 	rlca
   45C9 07            [ 4] 1186 	rlca
   45CA E6 03         [ 7] 1187 	and	a,#0x03
   45CC 6F            [ 4] 1188 	ld	l,a
                           1189 ;src/game.c:382: k = cpct_rand() / 64;
   45CD E5            [11] 1190 	push	hl
   45CE CD 43 83      [17] 1191 	call	_cpct_getRandom_mxor_u8
   45D1 7D            [ 4] 1192 	ld	a,l
   45D2 E1            [10] 1193 	pop	hl
   45D3 07            [ 4] 1194 	rlca
   45D4 07            [ 4] 1195 	rlca
   45D5 E6 03         [ 7] 1196 	and	a,#0x03
   45D7 4F            [ 4] 1197 	ld	c,a
   45D8 18 CD         [12] 1198 	jr	00101$
   45DA                    1199 00103$:
                           1200 ;src/game.c:387: cells[j][k] = tileBag[currentTile];
   45DA 3E 03         [ 7] 1201 	ld	a,#<(_tileBag)
   45DC 21 0F 92      [10] 1202 	ld	hl,#_currentTile
   45DF 86            [ 7] 1203 	add	a, (hl)
   45E0 4F            [ 4] 1204 	ld	c,a
   45E1 3E 92         [ 7] 1205 	ld	a,#>(_tileBag)
   45E3 CE 00         [ 7] 1206 	adc	a, #0x00
   45E5 47            [ 4] 1207 	ld	b,a
   45E6 0A            [ 7] 1208 	ld	a,(bc)
   45E7 DD 6E FE      [19] 1209 	ld	l,-2 (ix)
   45EA DD 66 FF      [19] 1210 	ld	h,-1 (ix)
   45ED 77            [ 7] 1211 	ld	(hl),a
                           1212 ;src/game.c:388: currentTile++;
   45EE 21 0F 92      [10] 1213 	ld	hl, #_currentTile+0
   45F1 34            [11] 1214 	inc	(hl)
                           1215 ;src/game.c:377: for (i = 0; i < 9; i++) {
   45F2 DD 34 FD      [23] 1216 	inc	-3 (ix)
   45F5 DD 7E FD      [19] 1217 	ld	a,-3 (ix)
   45F8 D6 09         [ 7] 1218 	sub	a, #0x09
   45FA 38 97         [12] 1219 	jr	C,00105$
                           1220 ;src/game.c:391: score = 0;
   45FC AF            [ 4] 1221 	xor	a, a
   45FD 32 63 91      [13] 1222 	ld	(#_score + 0),a
   4600 32 64 91      [13] 1223 	ld	(#_score + 1),a
   4603 32 65 91      [13] 1224 	ld	(#_score + 2),a
   4606 32 66 91      [13] 1225 	ld	(#_score + 3),a
   4609 DD F9         [10] 1226 	ld	sp, ix
   460B DD E1         [14] 1227 	pop	ix
   460D C9            [10] 1228 	ret
                           1229 ;src/game.c:407: u8 rotateCellsLeft() {
                           1230 ;	---------------------------------
                           1231 ; Function rotateCellsLeft
                           1232 ; ---------------------------------
   460E                    1233 _rotateCellsLeft::
   460E DD E5         [15] 1234 	push	ix
   4610 DD 21 00 00   [14] 1235 	ld	ix,#0
   4614 DD 39         [15] 1236 	add	ix,sp
   4616 F5            [11] 1237 	push	af
   4617 F5            [11] 1238 	push	af
   4618 3B            [ 6] 1239 	dec	sp
                           1240 ;src/game.c:411: matched = 0;
   4619 0E 00         [ 7] 1241 	ld	c,#0x00
                           1242 ;src/game.c:412: for (i = 0; i < 4; i++) {
   461B DD 36 FB 00   [19] 1243 	ld	-5 (ix),#0x00
                           1244 ;src/game.c:413: for (j = 1; j < 4; j++) {
   461F                    1245 00129$:
   461F 1E 01         [ 7] 1246 	ld	e,#0x01
   4621                    1247 00117$:
                           1248 ;src/game.c:414: if (cells[i][j] != 0) {
   4621 DD 6E FB      [19] 1249 	ld	l,-5 (ix)
   4624 26 00         [ 7] 1250 	ld	h,#0x00
   4626 29            [11] 1251 	add	hl, hl
   4627 29            [11] 1252 	add	hl, hl
   4628 3E 4E         [ 7] 1253 	ld	a,#<(_cells)
   462A 85            [ 4] 1254 	add	a, l
   462B DD 77 FC      [19] 1255 	ld	-4 (ix),a
   462E 3E 91         [ 7] 1256 	ld	a,#>(_cells)
   4630 8C            [ 4] 1257 	adc	a, h
   4631 DD 77 FD      [19] 1258 	ld	-3 (ix),a
   4634 DD 7E FC      [19] 1259 	ld	a,-4 (ix)
   4637 83            [ 4] 1260 	add	a, e
   4638 DD 77 FE      [19] 1261 	ld	-2 (ix),a
   463B DD 7E FD      [19] 1262 	ld	a,-3 (ix)
   463E CE 00         [ 7] 1263 	adc	a, #0x00
   4640 DD 77 FF      [19] 1264 	ld	-1 (ix),a
   4643 DD 6E FE      [19] 1265 	ld	l,-2 (ix)
   4646 DD 66 FF      [19] 1266 	ld	h,-1 (ix)
   4649 46            [ 7] 1267 	ld	b,(hl)
   464A 78            [ 4] 1268 	ld	a,b
   464B B7            [ 4] 1269 	or	a, a
   464C 28 63         [12] 1270 	jr	Z,00118$
                           1271 ;src/game.c:416: if (cells[i][j - 1] == 0) {
   464E 53            [ 4] 1272 	ld	d,e
   464F 15            [ 4] 1273 	dec	d
   4650 E5            [11] 1274 	push	hl
   4651 DD 6E FC      [19] 1275 	ld	l,-4 (ix)
   4654 DD 66 FD      [19] 1276 	ld	h,-3 (ix)
   4657 E5            [11] 1277 	push	hl
   4658 FD E1         [14] 1278 	pop	iy
   465A E1            [10] 1279 	pop	hl
   465B C5            [11] 1280 	push	bc
   465C 4A            [ 4] 1281 	ld	c,d
   465D 06 00         [ 7] 1282 	ld	b,#0x00
   465F FD 09         [15] 1283 	add	iy, bc
   4661 C1            [10] 1284 	pop	bc
   4662 FD 56 00      [19] 1285 	ld	d, 0 (iy)
   4665 7A            [ 4] 1286 	ld	a,d
   4666 B7            [ 4] 1287 	or	a, a
   4667 20 0F         [12] 1288 	jr	NZ,00111$
                           1289 ;src/game.c:417: cells[i][j - 1] = cells[i][j];
   4669 FD 70 00      [19] 1290 	ld	0 (iy), b
                           1291 ;src/game.c:418: cells[i][j] = 0;
   466C DD 6E FE      [19] 1292 	ld	l,-2 (ix)
   466F DD 66 FF      [19] 1293 	ld	h,-1 (ix)
   4672 36 00         [10] 1294 	ld	(hl),#0x00
                           1295 ;src/game.c:419: matched = 1;
   4674 0E 01         [ 7] 1296 	ld	c,#0x01
   4676 18 39         [12] 1297 	jr	00118$
   4678                    1298 00111$:
                           1299 ;src/game.c:420: } else if (((cells[i][j - 1] == 1) && (cells[i][j] == 2)) ||
   4678 7A            [ 4] 1300 	ld	a,d
   4679 3D            [ 4] 1301 	dec	a
   467A 20 05         [12] 1302 	jr	NZ,00109$
   467C 78            [ 4] 1303 	ld	a,b
   467D D6 02         [ 7] 1304 	sub	a, #0x02
   467F 28 09         [12] 1305 	jr	Z,00104$
   4681                    1306 00109$:
                           1307 ;src/game.c:421: ((cells[i][j - 1] == 2) && (cells[i][j] == 1))) {
   4681 7A            [ 4] 1308 	ld	a,d
   4682 D6 02         [ 7] 1309 	sub	a, #0x02
   4684 20 14         [12] 1310 	jr	NZ,00105$
   4686 78            [ 4] 1311 	ld	a,b
   4687 3D            [ 4] 1312 	dec	a
   4688 20 10         [12] 1313 	jr	NZ,00105$
   468A                    1314 00104$:
                           1315 ;src/game.c:422: cells[i][j - 1] = 3;
   468A FD 36 00 03   [19] 1316 	ld	0 (iy), #0x03
                           1317 ;src/game.c:423: cells[i][j] = 0;
   468E DD 6E FE      [19] 1318 	ld	l,-2 (ix)
   4691 DD 66 FF      [19] 1319 	ld	h,-1 (ix)
   4694 36 00         [10] 1320 	ld	(hl),#0x00
                           1321 ;src/game.c:424: matched = 1;
   4696 0E 01         [ 7] 1322 	ld	c,#0x01
   4698 18 17         [12] 1323 	jr	00118$
   469A                    1324 00105$:
                           1325 ;src/game.c:425: } else if ((cells[i][j - 1] == cells[i][j]) && (cells[i][j] > 2)) {
   469A 78            [ 4] 1326 	ld	a,b
   469B 92            [ 4] 1327 	sub	a, d
   469C 20 13         [12] 1328 	jr	NZ,00118$
   469E 3E 02         [ 7] 1329 	ld	a,#0x02
   46A0 90            [ 4] 1330 	sub	a, b
   46A1 30 0E         [12] 1331 	jr	NC,00118$
                           1332 ;src/game.c:426: cells[i][j - 1]++;
   46A3 14            [ 4] 1333 	inc	d
   46A4 FD 72 00      [19] 1334 	ld	0 (iy), d
                           1335 ;src/game.c:427: cells[i][j] = 0;
   46A7 DD 6E FE      [19] 1336 	ld	l,-2 (ix)
   46AA DD 66 FF      [19] 1337 	ld	h,-1 (ix)
   46AD 36 00         [10] 1338 	ld	(hl),#0x00
                           1339 ;src/game.c:428: matched = 1;
   46AF 0E 01         [ 7] 1340 	ld	c,#0x01
   46B1                    1341 00118$:
                           1342 ;src/game.c:413: for (j = 1; j < 4; j++) {
   46B1 1C            [ 4] 1343 	inc	e
   46B2 7B            [ 4] 1344 	ld	a,e
   46B3 D6 04         [ 7] 1345 	sub	a, #0x04
   46B5 DA 21 46      [10] 1346 	jp	C,00117$
                           1347 ;src/game.c:412: for (i = 0; i < 4; i++) {
   46B8 DD 34 FB      [23] 1348 	inc	-5 (ix)
   46BB DD 7E FB      [19] 1349 	ld	a,-5 (ix)
   46BE D6 04         [ 7] 1350 	sub	a, #0x04
   46C0 DA 1F 46      [10] 1351 	jp	C,00129$
                           1352 ;src/game.c:433: return matched;
   46C3 69            [ 4] 1353 	ld	l,c
   46C4 DD F9         [10] 1354 	ld	sp, ix
   46C6 DD E1         [14] 1355 	pop	ix
   46C8 C9            [10] 1356 	ret
                           1357 ;src/game.c:444: u8 rotateCellsRight() {
                           1358 ;	---------------------------------
                           1359 ; Function rotateCellsRight
                           1360 ; ---------------------------------
   46C9                    1361 _rotateCellsRight::
   46C9 DD E5         [15] 1362 	push	ix
   46CB DD 21 00 00   [14] 1363 	ld	ix,#0
   46CF DD 39         [15] 1364 	add	ix,sp
   46D1 F5            [11] 1365 	push	af
   46D2 F5            [11] 1366 	push	af
   46D3 3B            [ 6] 1367 	dec	sp
                           1368 ;src/game.c:448: matched = 0;
   46D4 0E 00         [ 7] 1369 	ld	c,#0x00
                           1370 ;src/game.c:449: for (i = 0; i < 4; i++) {
   46D6 DD 36 FB 00   [19] 1371 	ld	-5 (ix),#0x00
                           1372 ;src/game.c:451: do {
   46DA                    1373 00128$:
   46DA 1E 03         [ 7] 1374 	ld	e,#0x03
   46DC                    1375 00114$:
                           1376 ;src/game.c:452: j--;
   46DC 1D            [ 4] 1377 	dec	e
                           1378 ;src/game.c:453: if (cells[i][j] != 0) {
   46DD DD 6E FB      [19] 1379 	ld	l,-5 (ix)
   46E0 26 00         [ 7] 1380 	ld	h,#0x00
   46E2 29            [11] 1381 	add	hl, hl
   46E3 29            [11] 1382 	add	hl, hl
   46E4 3E 4E         [ 7] 1383 	ld	a,#<(_cells)
   46E6 85            [ 4] 1384 	add	a, l
   46E7 DD 77 FC      [19] 1385 	ld	-4 (ix),a
   46EA 3E 91         [ 7] 1386 	ld	a,#>(_cells)
   46EC 8C            [ 4] 1387 	adc	a, h
   46ED DD 77 FD      [19] 1388 	ld	-3 (ix),a
   46F0 DD 7E FC      [19] 1389 	ld	a,-4 (ix)
   46F3 83            [ 4] 1390 	add	a, e
   46F4 DD 77 FE      [19] 1391 	ld	-2 (ix),a
   46F7 DD 7E FD      [19] 1392 	ld	a,-3 (ix)
   46FA CE 00         [ 7] 1393 	adc	a, #0x00
   46FC DD 77 FF      [19] 1394 	ld	-1 (ix),a
   46FF DD 6E FE      [19] 1395 	ld	l,-2 (ix)
   4702 DD 66 FF      [19] 1396 	ld	h,-1 (ix)
   4705 46            [ 7] 1397 	ld	b,(hl)
   4706 78            [ 4] 1398 	ld	a,b
   4707 B7            [ 4] 1399 	or	a, a
   4708 28 6A         [12] 1400 	jr	Z,00115$
                           1401 ;src/game.c:455: if (cells[i][j + 1] == 0) {
   470A 53            [ 4] 1402 	ld	d,e
   470B 14            [ 4] 1403 	inc	d
   470C E5            [11] 1404 	push	hl
   470D DD 6E FC      [19] 1405 	ld	l,-4 (ix)
   4710 DD 66 FD      [19] 1406 	ld	h,-3 (ix)
   4713 E5            [11] 1407 	push	hl
   4714 FD E1         [14] 1408 	pop	iy
   4716 E1            [10] 1409 	pop	hl
   4717 C5            [11] 1410 	push	bc
   4718 4A            [ 4] 1411 	ld	c,d
   4719 06 00         [ 7] 1412 	ld	b,#0x00
   471B FD 09         [15] 1413 	add	iy, bc
   471D C1            [10] 1414 	pop	bc
   471E FD 7E 00      [19] 1415 	ld	a, 0 (iy)
   4721 B7            [ 4] 1416 	or	a, a
   4722 20 0D         [12] 1417 	jr	NZ,00102$
                           1418 ;src/game.c:456: cells[i][j + 1] = cells[i][j];
   4724 FD 70 00      [19] 1419 	ld	0 (iy), b
                           1420 ;src/game.c:457: cells[i][j] = 0;
   4727 DD 6E FE      [19] 1421 	ld	l,-2 (ix)
   472A DD 66 FF      [19] 1422 	ld	h,-1 (ix)
   472D 36 00         [10] 1423 	ld	(hl),#0x00
                           1424 ;src/game.c:458: matched = 1;
   472F 0E 01         [ 7] 1425 	ld	c,#0x01
   4731                    1426 00102$:
                           1427 ;src/game.c:459: } if (((cells[i][j + 1] == 1) && (cells[i][j] == 2)) ||
   4731 FD 46 00      [19] 1428 	ld	b, 0 (iy)
   4734 DD 6E FE      [19] 1429 	ld	l,-2 (ix)
   4737 DD 66 FF      [19] 1430 	ld	h,-1 (ix)
   473A 56            [ 7] 1431 	ld	d,(hl)
   473B 78            [ 4] 1432 	ld	a,b
   473C 3D            [ 4] 1433 	dec	a
   473D 20 05         [12] 1434 	jr	NZ,00111$
   473F 7A            [ 4] 1435 	ld	a,d
   4740 D6 02         [ 7] 1436 	sub	a, #0x02
   4742 28 09         [12] 1437 	jr	Z,00106$
   4744                    1438 00111$:
                           1439 ;src/game.c:460: ((cells[i][j + 1] == 2) && (cells[i][j] == 1))) {
   4744 78            [ 4] 1440 	ld	a,b
   4745 D6 02         [ 7] 1441 	sub	a, #0x02
   4747 20 14         [12] 1442 	jr	NZ,00107$
   4749 7A            [ 4] 1443 	ld	a,d
   474A 3D            [ 4] 1444 	dec	a
   474B 20 10         [12] 1445 	jr	NZ,00107$
   474D                    1446 00106$:
                           1447 ;src/game.c:461: cells[i][j + 1] = 3;
   474D FD 36 00 03   [19] 1448 	ld	0 (iy), #0x03
                           1449 ;src/game.c:462: cells[i][j] = 0;
   4751 DD 6E FE      [19] 1450 	ld	l,-2 (ix)
   4754 DD 66 FF      [19] 1451 	ld	h,-1 (ix)
   4757 36 00         [10] 1452 	ld	(hl),#0x00
                           1453 ;src/game.c:463: matched = 1;
   4759 0E 01         [ 7] 1454 	ld	c,#0x01
   475B 18 17         [12] 1455 	jr	00115$
   475D                    1456 00107$:
                           1457 ;src/game.c:464: } else if ((cells[i][j + 1] == cells[i][j]) && (cells[i][j] > 2)) {
   475D 78            [ 4] 1458 	ld	a,b
   475E 92            [ 4] 1459 	sub	a, d
   475F 20 13         [12] 1460 	jr	NZ,00115$
   4761 3E 02         [ 7] 1461 	ld	a,#0x02
   4763 92            [ 4] 1462 	sub	a, d
   4764 30 0E         [12] 1463 	jr	NC,00115$
                           1464 ;src/game.c:465: cells[i][j + 1]++;
   4766 04            [ 4] 1465 	inc	b
   4767 FD 70 00      [19] 1466 	ld	0 (iy), b
                           1467 ;src/game.c:466: cells[i][j] = 0;
   476A DD 6E FE      [19] 1468 	ld	l,-2 (ix)
   476D DD 66 FF      [19] 1469 	ld	h,-1 (ix)
   4770 36 00         [10] 1470 	ld	(hl),#0x00
                           1471 ;src/game.c:467: matched = 1;
   4772 0E 01         [ 7] 1472 	ld	c,#0x01
   4774                    1473 00115$:
                           1474 ;src/game.c:470: } while (j > 0);
   4774 7B            [ 4] 1475 	ld	a,e
   4775 B7            [ 4] 1476 	or	a, a
   4776 C2 DC 46      [10] 1477 	jp	NZ,00114$
                           1478 ;src/game.c:449: for (i = 0; i < 4; i++) {
   4779 DD 34 FB      [23] 1479 	inc	-5 (ix)
   477C DD 7E FB      [19] 1480 	ld	a,-5 (ix)
   477F D6 04         [ 7] 1481 	sub	a, #0x04
   4781 DA DA 46      [10] 1482 	jp	C,00128$
                           1483 ;src/game.c:472: return matched;
   4784 69            [ 4] 1484 	ld	l,c
   4785 DD F9         [10] 1485 	ld	sp, ix
   4787 DD E1         [14] 1486 	pop	ix
   4789 C9            [10] 1487 	ret
                           1488 ;src/game.c:483: u8 rotateCellsUp() {
                           1489 ;	---------------------------------
                           1490 ; Function rotateCellsUp
                           1491 ; ---------------------------------
   478A                    1492 _rotateCellsUp::
   478A DD E5         [15] 1493 	push	ix
   478C DD 21 00 00   [14] 1494 	ld	ix,#0
   4790 DD 39         [15] 1495 	add	ix,sp
   4792 F5            [11] 1496 	push	af
   4793 F5            [11] 1497 	push	af
                           1498 ;src/game.c:487: matched = 0;
                           1499 ;src/game.c:488: for (i = 1; i < 4; i++) {
   4794 01 00 01      [10] 1500 	ld	bc,#0x0100
                           1501 ;src/game.c:489: for (j = 0; j < 4; j++) {
   4797                    1502 00129$:
   4797 78            [ 4] 1503 	ld	a,b
   4798 C6 FF         [ 7] 1504 	add	a,#0xFF
   479A DD 77 FE      [19] 1505 	ld	-2 (ix),a
   479D 1E 00         [ 7] 1506 	ld	e,#0x00
   479F                    1507 00117$:
                           1508 ;src/game.c:490: if (cells[i][j] != 0) {
   479F 68            [ 4] 1509 	ld	l,b
   47A0 26 00         [ 7] 1510 	ld	h,#0x00
   47A2 29            [11] 1511 	add	hl, hl
   47A3 29            [11] 1512 	add	hl, hl
   47A4 3E 4E         [ 7] 1513 	ld	a,#<(_cells)
   47A6 85            [ 4] 1514 	add	a, l
   47A7 57            [ 4] 1515 	ld	d,a
   47A8 3E 91         [ 7] 1516 	ld	a,#>(_cells)
   47AA 8C            [ 4] 1517 	adc	a, h
   47AB 6F            [ 4] 1518 	ld	l,a
   47AC 7A            [ 4] 1519 	ld	a,d
   47AD 83            [ 4] 1520 	add	a, e
   47AE DD 77 FC      [19] 1521 	ld	-4 (ix),a
   47B1 7D            [ 4] 1522 	ld	a,l
   47B2 CE 00         [ 7] 1523 	adc	a, #0x00
   47B4 DD 77 FD      [19] 1524 	ld	-3 (ix),a
                           1525 ;src/game.c:497: ((cells[i - 1][j] == 2) && (cells[i][j] == 1))) {
   47B7 E1            [10] 1526 	pop	hl
   47B8 E5            [11] 1527 	push	hl
   47B9 56            [ 7] 1528 	ld	d,(hl)
                           1529 ;src/game.c:490: if (cells[i][j] != 0) {
   47BA 7A            [ 4] 1530 	ld	a,d
   47BB B7            [ 4] 1531 	or	a, a
   47BC 28 65         [12] 1532 	jr	Z,00118$
                           1533 ;src/game.c:492: if (cells[i - 1][j] == 0) {
   47BE DD 6E FE      [19] 1534 	ld	l,-2 (ix)
   47C1 26 00         [ 7] 1535 	ld	h,#0x00
   47C3 29            [11] 1536 	add	hl, hl
   47C4 29            [11] 1537 	add	hl, hl
   47C5 FD 21 4E 91   [14] 1538 	ld	iy,#_cells
   47C9 C5            [11] 1539 	push	bc
   47CA 4D            [ 4] 1540 	ld	c, l
   47CB 44            [ 4] 1541 	ld	b, h
   47CC FD 09         [15] 1542 	add	iy, bc
   47CE C1            [10] 1543 	pop	bc
   47CF D5            [11] 1544 	push	de
   47D0 16 00         [ 7] 1545 	ld	d,#0x00
   47D2 FD 19         [15] 1546 	add	iy, de
   47D4 D1            [10] 1547 	pop	de
   47D5 FD 7E 00      [19] 1548 	ld	a, 0 (iy)
   47D8 DD 77 FF      [19] 1549 	ld	-1 (ix), a
   47DB B7            [ 4] 1550 	or	a, a
   47DC 20 0B         [12] 1551 	jr	NZ,00111$
                           1552 ;src/game.c:493: cells[i - 1][j] = cells[i][j];
   47DE FD 72 00      [19] 1553 	ld	0 (iy), d
                           1554 ;src/game.c:494: cells[i][j] = 0;
   47E1 E1            [10] 1555 	pop	hl
   47E2 E5            [11] 1556 	push	hl
   47E3 36 00         [10] 1557 	ld	(hl),#0x00
                           1558 ;src/game.c:495: matched = 1;
   47E5 0E 01         [ 7] 1559 	ld	c,#0x01
   47E7 18 3A         [12] 1560 	jr	00118$
   47E9                    1561 00111$:
                           1562 ;src/game.c:496: } else if (((cells[i - 1][j] == 1) && (cells[i][j] == 2)) ||
   47E9 DD 7E FF      [19] 1563 	ld	a,-1 (ix)
   47EC 3D            [ 4] 1564 	dec	a
   47ED 20 05         [12] 1565 	jr	NZ,00109$
   47EF 7A            [ 4] 1566 	ld	a,d
   47F0 D6 02         [ 7] 1567 	sub	a, #0x02
   47F2 28 0B         [12] 1568 	jr	Z,00104$
   47F4                    1569 00109$:
                           1570 ;src/game.c:497: ((cells[i - 1][j] == 2) && (cells[i][j] == 1))) {
   47F4 DD 7E FF      [19] 1571 	ld	a,-1 (ix)
   47F7 D6 02         [ 7] 1572 	sub	a, #0x02
   47F9 20 10         [12] 1573 	jr	NZ,00105$
   47FB 7A            [ 4] 1574 	ld	a,d
   47FC 3D            [ 4] 1575 	dec	a
   47FD 20 0C         [12] 1576 	jr	NZ,00105$
   47FF                    1577 00104$:
                           1578 ;src/game.c:498: cells[i - 1][j] = 3;
   47FF FD 36 00 03   [19] 1579 	ld	0 (iy), #0x03
                           1580 ;src/game.c:499: cells[i][j] = 0;
   4803 E1            [10] 1581 	pop	hl
   4804 E5            [11] 1582 	push	hl
   4805 36 00         [10] 1583 	ld	(hl),#0x00
                           1584 ;src/game.c:500: matched = 1;
   4807 0E 01         [ 7] 1585 	ld	c,#0x01
   4809 18 18         [12] 1586 	jr	00118$
   480B                    1587 00105$:
                           1588 ;src/game.c:501: } else if ((cells[i - 1][j] == cells[i][j]) && (cells[i][j] > 2)) {
   480B 7A            [ 4] 1589 	ld	a,d
   480C DD 96 FF      [19] 1590 	sub	a, -1 (ix)
   480F 20 12         [12] 1591 	jr	NZ,00118$
   4811 3E 02         [ 7] 1592 	ld	a,#0x02
   4813 92            [ 4] 1593 	sub	a, d
   4814 30 0D         [12] 1594 	jr	NC,00118$
                           1595 ;src/game.c:502: cells[i - 1][j]++;
   4816 DD 4E FF      [19] 1596 	ld	c,-1 (ix)
   4819 0C            [ 4] 1597 	inc	c
   481A FD 71 00      [19] 1598 	ld	0 (iy), c
                           1599 ;src/game.c:503: cells[i][j] = 0;
   481D E1            [10] 1600 	pop	hl
   481E E5            [11] 1601 	push	hl
   481F 36 00         [10] 1602 	ld	(hl),#0x00
                           1603 ;src/game.c:504: matched = 1;
   4821 0E 01         [ 7] 1604 	ld	c,#0x01
   4823                    1605 00118$:
                           1606 ;src/game.c:489: for (j = 0; j < 4; j++) {
   4823 1C            [ 4] 1607 	inc	e
   4824 7B            [ 4] 1608 	ld	a,e
   4825 D6 04         [ 7] 1609 	sub	a, #0x04
   4827 DA 9F 47      [10] 1610 	jp	C,00117$
                           1611 ;src/game.c:488: for (i = 1; i < 4; i++) {
   482A 04            [ 4] 1612 	inc	b
   482B 78            [ 4] 1613 	ld	a,b
   482C D6 04         [ 7] 1614 	sub	a, #0x04
   482E DA 97 47      [10] 1615 	jp	C,00129$
                           1616 ;src/game.c:509: return matched;
   4831 69            [ 4] 1617 	ld	l,c
   4832 DD F9         [10] 1618 	ld	sp, ix
   4834 DD E1         [14] 1619 	pop	ix
   4836 C9            [10] 1620 	ret
                           1621 ;src/game.c:520: u8 rotateCellsDown() {
                           1622 ;	---------------------------------
                           1623 ; Function rotateCellsDown
                           1624 ; ---------------------------------
   4837                    1625 _rotateCellsDown::
   4837 DD E5         [15] 1626 	push	ix
   4839 DD 21 00 00   [14] 1627 	ld	ix,#0
   483D DD 39         [15] 1628 	add	ix,sp
   483F F5            [11] 1629 	push	af
   4840 F5            [11] 1630 	push	af
                           1631 ;src/game.c:524: matched = 0;
   4841 0E 00         [ 7] 1632 	ld	c,#0x00
                           1633 ;src/game.c:526: do {
   4843 DD 36 FC 03   [19] 1634 	ld	-4 (ix),#0x03
   4847                    1635 00115$:
                           1636 ;src/game.c:527: i--;
   4847 DD 35 FC      [23] 1637 	dec	-4 (ix)
                           1638 ;src/game.c:528: for (j = 0; j < 4; j++) {
   484A DD 7E FC      [19] 1639 	ld	a,-4 (ix)
   484D 3C            [ 4] 1640 	inc	a
   484E DD 77 FD      [19] 1641 	ld	-3 (ix),a
   4851 1E 00         [ 7] 1642 	ld	e,#0x00
   4853                    1643 00118$:
                           1644 ;src/game.c:529: if (cells[i][j] != 0) {
   4853 DD 6E FC      [19] 1645 	ld	l,-4 (ix)
   4856 26 00         [ 7] 1646 	ld	h,#0x00
   4858 29            [11] 1647 	add	hl, hl
   4859 29            [11] 1648 	add	hl, hl
   485A 3E 4E         [ 7] 1649 	ld	a,#<(_cells)
   485C 85            [ 4] 1650 	add	a, l
   485D 47            [ 4] 1651 	ld	b,a
   485E 3E 91         [ 7] 1652 	ld	a,#>(_cells)
   4860 8C            [ 4] 1653 	adc	a, h
   4861 57            [ 4] 1654 	ld	d,a
   4862 78            [ 4] 1655 	ld	a,b
   4863 83            [ 4] 1656 	add	a, e
   4864 DD 77 FE      [19] 1657 	ld	-2 (ix),a
   4867 7A            [ 4] 1658 	ld	a,d
   4868 CE 00         [ 7] 1659 	adc	a, #0x00
   486A DD 77 FF      [19] 1660 	ld	-1 (ix),a
   486D DD 6E FE      [19] 1661 	ld	l,-2 (ix)
   4870 DD 66 FF      [19] 1662 	ld	h,-1 (ix)
   4873 46            [ 7] 1663 	ld	b,(hl)
   4874 78            [ 4] 1664 	ld	a,b
   4875 B7            [ 4] 1665 	or	a, a
   4876 28 6D         [12] 1666 	jr	Z,00119$
                           1667 ;src/game.c:531: if (cells[i + 1][j] == 0) {
   4878 DD 6E FD      [19] 1668 	ld	l,-3 (ix)
   487B 26 00         [ 7] 1669 	ld	h,#0x00
   487D 29            [11] 1670 	add	hl, hl
   487E 29            [11] 1671 	add	hl, hl
   487F FD 21 4E 91   [14] 1672 	ld	iy,#_cells
   4883 C5            [11] 1673 	push	bc
   4884 4D            [ 4] 1674 	ld	c, l
   4885 44            [ 4] 1675 	ld	b, h
   4886 FD 09         [15] 1676 	add	iy, bc
   4888 C1            [10] 1677 	pop	bc
   4889 D5            [11] 1678 	push	de
   488A 16 00         [ 7] 1679 	ld	d,#0x00
   488C FD 19         [15] 1680 	add	iy, de
   488E D1            [10] 1681 	pop	de
   488F FD 7E 00      [19] 1682 	ld	a, 0 (iy)
   4892 B7            [ 4] 1683 	or	a, a
   4893 20 0D         [12] 1684 	jr	NZ,00102$
                           1685 ;src/game.c:532: cells[i + 1][j] = cells[i][j];
   4895 FD 70 00      [19] 1686 	ld	0 (iy), b
                           1687 ;src/game.c:533: cells[i][j] = 0;
   4898 DD 6E FE      [19] 1688 	ld	l,-2 (ix)
   489B DD 66 FF      [19] 1689 	ld	h,-1 (ix)
   489E 36 00         [10] 1690 	ld	(hl),#0x00
                           1691 ;src/game.c:534: matched = 1;
   48A0 0E 01         [ 7] 1692 	ld	c,#0x01
   48A2                    1693 00102$:
                           1694 ;src/game.c:531: if (cells[i + 1][j] == 0) {
   48A2 FD 46 00      [19] 1695 	ld	b, 0 (iy)
                           1696 ;src/game.c:529: if (cells[i][j] != 0) {
   48A5 DD 6E FE      [19] 1697 	ld	l,-2 (ix)
   48A8 DD 66 FF      [19] 1698 	ld	h,-1 (ix)
   48AB 56            [ 7] 1699 	ld	d,(hl)
                           1700 ;src/game.c:535: } if (((cells[i + 1][j] == 1) && (cells[i][j] == 2)) ||
   48AC 78            [ 4] 1701 	ld	a,b
   48AD 3D            [ 4] 1702 	dec	a
   48AE 20 05         [12] 1703 	jr	NZ,00111$
   48B0 7A            [ 4] 1704 	ld	a,d
   48B1 D6 02         [ 7] 1705 	sub	a, #0x02
   48B3 28 09         [12] 1706 	jr	Z,00106$
   48B5                    1707 00111$:
                           1708 ;src/game.c:536: ((cells[i + 1][j] == 2) && (cells[i][j] == 1))) {
   48B5 78            [ 4] 1709 	ld	a,b
   48B6 D6 02         [ 7] 1710 	sub	a, #0x02
   48B8 20 14         [12] 1711 	jr	NZ,00107$
   48BA 7A            [ 4] 1712 	ld	a,d
   48BB 3D            [ 4] 1713 	dec	a
   48BC 20 10         [12] 1714 	jr	NZ,00107$
   48BE                    1715 00106$:
                           1716 ;src/game.c:537: cells[i + 1][j] = 3;
   48BE FD 36 00 03   [19] 1717 	ld	0 (iy), #0x03
                           1718 ;src/game.c:538: cells[i][j] = 0;
   48C2 DD 6E FE      [19] 1719 	ld	l,-2 (ix)
   48C5 DD 66 FF      [19] 1720 	ld	h,-1 (ix)
   48C8 36 00         [10] 1721 	ld	(hl),#0x00
                           1722 ;src/game.c:539: matched = 1;
   48CA 0E 01         [ 7] 1723 	ld	c,#0x01
   48CC 18 17         [12] 1724 	jr	00119$
   48CE                    1725 00107$:
                           1726 ;src/game.c:540: } else if ((cells[i + 1][j] == cells[i][j]) && (cells[i][j] > 2)) {
   48CE 78            [ 4] 1727 	ld	a,b
   48CF 92            [ 4] 1728 	sub	a, d
   48D0 20 13         [12] 1729 	jr	NZ,00119$
   48D2 3E 02         [ 7] 1730 	ld	a,#0x02
   48D4 92            [ 4] 1731 	sub	a, d
   48D5 30 0E         [12] 1732 	jr	NC,00119$
                           1733 ;src/game.c:541: cells[i + 1][j]++;
   48D7 04            [ 4] 1734 	inc	b
   48D8 FD 70 00      [19] 1735 	ld	0 (iy), b
                           1736 ;src/game.c:542: cells[i][j] = 0;
   48DB DD 6E FE      [19] 1737 	ld	l,-2 (ix)
   48DE DD 66 FF      [19] 1738 	ld	h,-1 (ix)
   48E1 36 00         [10] 1739 	ld	(hl),#0x00
                           1740 ;src/game.c:543: matched = 1;
   48E3 0E 01         [ 7] 1741 	ld	c,#0x01
   48E5                    1742 00119$:
                           1743 ;src/game.c:528: for (j = 0; j < 4; j++) {
   48E5 1C            [ 4] 1744 	inc	e
   48E6 7B            [ 4] 1745 	ld	a,e
   48E7 D6 04         [ 7] 1746 	sub	a, #0x04
   48E9 DA 53 48      [10] 1747 	jp	C,00118$
                           1748 ;src/game.c:548: } while (i > 0);
   48EC DD 7E FC      [19] 1749 	ld	a,-4 (ix)
   48EF B7            [ 4] 1750 	or	a, a
   48F0 C2 47 48      [10] 1751 	jp	NZ,00115$
                           1752 ;src/game.c:550: return matched;
   48F3 69            [ 4] 1753 	ld	l,c
   48F4 DD F9         [10] 1754 	ld	sp, ix
   48F6 DD E1         [14] 1755 	pop	ix
   48F8 C9            [10] 1756 	ret
                           1757 ;src/game.c:561: void printCells() {
                           1758 ;	---------------------------------
                           1759 ; Function printCells
                           1760 ; ---------------------------------
   48F9                    1761 _printCells::
   48F9 DD E5         [15] 1762 	push	ix
   48FB DD 21 00 00   [14] 1763 	ld	ix,#0
   48FF DD 39         [15] 1764 	add	ix,sp
   4901 F5            [11] 1765 	push	af
   4902 F5            [11] 1766 	push	af
   4903 3B            [ 6] 1767 	dec	sp
                           1768 ;src/game.c:568: for (i = 0; i < 4; i++) {
   4904 0E 00         [ 7] 1769 	ld	c,#0x00
   4906 DD 36 FD 00   [19] 1770 	ld	-3 (ix),#0x00
   490A                    1771 00105$:
                           1772 ;src/game.c:570: y = 6 + (i * 44);
   490A DD 7E FD      [19] 1773 	ld	a,-3 (ix)
   490D C6 06         [ 7] 1774 	add	a, #0x06
   490F DD 77 FB      [19] 1775 	ld	-5 (ix),a
                           1776 ;src/game.c:571: for (j = 0; j < 4; j++) {
   4912 DD 36 FC 00   [19] 1777 	ld	-4 (ix),#0x00
   4916 06 00         [ 7] 1778 	ld	b,#0x00
   4918                    1779 00103$:
                           1780 ;src/game.c:573: x = 4 + (j * 11);
   4918 50            [ 4] 1781 	ld	d,b
   4919 14            [ 4] 1782 	inc	d
   491A 14            [ 4] 1783 	inc	d
   491B 14            [ 4] 1784 	inc	d
   491C 14            [ 4] 1785 	inc	d
                           1786 ;src/game.c:574: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, x, y);
   491D C5            [11] 1787 	push	bc
   491E DD 7E FB      [19] 1788 	ld	a,-5 (ix)
   4921 F5            [11] 1789 	push	af
   4922 33            [ 6] 1790 	inc	sp
   4923 D5            [11] 1791 	push	de
   4924 33            [ 6] 1792 	inc	sp
   4925 21 00 C0      [10] 1793 	ld	hl,#0xC000
   4928 E5            [11] 1794 	push	hl
   4929 CD A1 85      [17] 1795 	call	_cpct_getScreenPtr
   492C C1            [10] 1796 	pop	bc
                           1797 ;src/game.c:575: cpct_drawSprite(tiles[cells[i][j]], pvmem, 10, 40);
   492D DD 75 FE      [19] 1798 	ld	-2 (ix),l
   4930 DD 74 FF      [19] 1799 	ld	-1 (ix),h
   4933 69            [ 4] 1800 	ld	l,c
   4934 26 00         [ 7] 1801 	ld	h,#0x00
   4936 29            [11] 1802 	add	hl, hl
   4937 29            [11] 1803 	add	hl, hl
   4938 11 4E 91      [10] 1804 	ld	de,#_cells
   493B 19            [11] 1805 	add	hl,de
   493C DD 5E FC      [19] 1806 	ld	e,-4 (ix)
   493F 16 00         [ 7] 1807 	ld	d,#0x00
   4941 19            [11] 1808 	add	hl,de
   4942 6E            [ 7] 1809 	ld	l,(hl)
   4943 26 00         [ 7] 1810 	ld	h,#0x00
   4945 29            [11] 1811 	add	hl, hl
   4946 11 BB 40      [10] 1812 	ld	de,#_tiles
   4949 19            [11] 1813 	add	hl,de
   494A 5E            [ 7] 1814 	ld	e,(hl)
   494B 23            [ 6] 1815 	inc	hl
   494C 56            [ 7] 1816 	ld	d,(hl)
   494D C5            [11] 1817 	push	bc
   494E 21 0A 28      [10] 1818 	ld	hl,#0x280A
   4951 E5            [11] 1819 	push	hl
   4952 DD 6E FE      [19] 1820 	ld	l,-2 (ix)
   4955 DD 66 FF      [19] 1821 	ld	h,-1 (ix)
   4958 E5            [11] 1822 	push	hl
   4959 D5            [11] 1823 	push	de
   495A CD 1B 82      [17] 1824 	call	_cpct_drawSprite
   495D C1            [10] 1825 	pop	bc
                           1826 ;src/game.c:571: for (j = 0; j < 4; j++) {
   495E 78            [ 4] 1827 	ld	a,b
   495F C6 0B         [ 7] 1828 	add	a, #0x0B
   4961 47            [ 4] 1829 	ld	b,a
   4962 DD 34 FC      [23] 1830 	inc	-4 (ix)
   4965 DD 7E FC      [19] 1831 	ld	a,-4 (ix)
   4968 D6 04         [ 7] 1832 	sub	a, #0x04
   496A 38 AC         [12] 1833 	jr	C,00103$
                           1834 ;src/game.c:568: for (i = 0; i < 4; i++) {
   496C DD 7E FD      [19] 1835 	ld	a,-3 (ix)
   496F C6 2C         [ 7] 1836 	add	a, #0x2C
   4971 DD 77 FD      [19] 1837 	ld	-3 (ix),a
   4974 0C            [ 4] 1838 	inc	c
   4975 79            [ 4] 1839 	ld	a,c
   4976 D6 04         [ 7] 1840 	sub	a, #0x04
   4978 38 90         [12] 1841 	jr	C,00105$
                           1842 ;src/game.c:578: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 62, 20);
   497A 21 3E 14      [10] 1843 	ld	hl,#0x143E
   497D E5            [11] 1844 	push	hl
   497E 21 00 C0      [10] 1845 	ld	hl,#0xC000
   4981 E5            [11] 1846 	push	hl
   4982 CD A1 85      [17] 1847 	call	_cpct_getScreenPtr
   4985 4D            [ 4] 1848 	ld	c,l
   4986 44            [ 4] 1849 	ld	b,h
                           1850 ;src/game.c:579: cpct_drawSprite(tiles[tileBag[currentTile]], pvmem, 10, 40);
   4987 FD 21 03 92   [14] 1851 	ld	iy,#_tileBag
   498B ED 5B 0F 92   [20] 1852 	ld	de,(_currentTile)
   498F 16 00         [ 7] 1853 	ld	d,#0x00
   4991 FD 19         [15] 1854 	add	iy, de
   4993 FD 6E 00      [19] 1855 	ld	l, 0 (iy)
   4996 26 00         [ 7] 1856 	ld	h,#0x00
   4998 29            [11] 1857 	add	hl, hl
   4999 11 BB 40      [10] 1858 	ld	de,#_tiles
   499C 19            [11] 1859 	add	hl,de
   499D 5E            [ 7] 1860 	ld	e,(hl)
   499E 23            [ 6] 1861 	inc	hl
   499F 56            [ 7] 1862 	ld	d,(hl)
   49A0 21 0A 28      [10] 1863 	ld	hl,#0x280A
   49A3 E5            [11] 1864 	push	hl
   49A4 C5            [11] 1865 	push	bc
   49A5 D5            [11] 1866 	push	de
   49A6 CD 1B 82      [17] 1867 	call	_cpct_drawSprite
   49A9 DD F9         [10] 1868 	ld	sp, ix
   49AB DD E1         [14] 1869 	pop	ix
   49AD C9            [10] 1870 	ret
                           1871 ;src/game.c:590: void drawScore() {
                           1872 ;	---------------------------------
                           1873 ; Function drawScore
                           1874 ; ---------------------------------
   49AE                    1875 _drawScore::
   49AE DD E5         [15] 1876 	push	ix
   49B0 DD 21 00 00   [14] 1877 	ld	ix,#0
   49B4 DD 39         [15] 1878 	add	ix,sp
   49B6 21 F9 FF      [10] 1879 	ld	hl,#-7
   49B9 39            [11] 1880 	add	hl,sp
   49BA F9            [ 6] 1881 	ld	sp,hl
                           1882 ;src/game.c:594: for (i = 0; i < 4; i++) {
   49BB 0E 00         [ 7] 1883 	ld	c,#0x00
   49BD DD 36 FE 00   [19] 1884 	ld	-2 (ix),#0x00
                           1885 ;src/game.c:595: for (j = 0; j < 4; j++) {
   49C1                    1886 00116$:
   49C1 DD 7E FE      [19] 1887 	ld	a,-2 (ix)
   49C4 C6 06         [ 7] 1888 	add	a, #0x06
   49C6 DD 77 FF      [19] 1889 	ld	-1 (ix),a
   49C9 DD 36 F9 00   [19] 1890 	ld	-7 (ix),#0x00
   49CD 06 00         [ 7] 1891 	ld	b,#0x00
   49CF                    1892 00108$:
                           1893 ;src/game.c:597: z = cells[i][j];
   49CF 69            [ 4] 1894 	ld	l,c
   49D0 26 00         [ 7] 1895 	ld	h,#0x00
   49D2 29            [11] 1896 	add	hl, hl
   49D3 29            [11] 1897 	add	hl, hl
   49D4 11 4E 91      [10] 1898 	ld	de,#_cells
   49D7 19            [11] 1899 	add	hl,de
   49D8 DD 5E F9      [19] 1900 	ld	e,-7 (ix)
   49DB 16 00         [ 7] 1901 	ld	d,#0x00
   49DD 19            [11] 1902 	add	hl,de
   49DE 5E            [ 7] 1903 	ld	e,(hl)
                           1904 ;src/game.c:598: if (z >= 3) {
                           1905 ;src/game.c:599: if (z == 3) {
   49DF 7B            [ 4] 1906 	ld	a,e
   49E0 FE 03         [ 7] 1907 	cp	a,#0x03
   49E2 38 65         [12] 1908 	jr	C,00109$
   49E4 D6 03         [ 7] 1909 	sub	a, #0x03
   49E6 20 10         [12] 1910 	jr	NZ,00102$
                           1911 ;src/game.c:600: partialScore = 1;
   49E8 DD 36 FA 01   [19] 1912 	ld	-6 (ix),#0x01
   49EC AF            [ 4] 1913 	xor	a, a
   49ED DD 77 FB      [19] 1914 	ld	-5 (ix),a
   49F0 DD 77 FC      [19] 1915 	ld	-4 (ix),a
   49F3 DD 77 FD      [19] 1916 	ld	-3 (ix),a
   49F6 18 16         [12] 1917 	jr	00103$
   49F8                    1918 00102$:
                           1919 ;src/game.c:602: partialScore = scores[z];
   49F8 26 00         [ 7] 1920 	ld	h,#0x00
   49FA 6B            [ 4] 1921 	ld	l, e
   49FB 29            [11] 1922 	add	hl, hl
   49FC 29            [11] 1923 	add	hl, hl
   49FD 11 7F 40      [10] 1924 	ld	de,#_scores
   4A00 19            [11] 1925 	add	hl,de
   4A01 C5            [11] 1926 	push	bc
   4A02 EB            [ 4] 1927 	ex	de,hl
   4A03 21 03 00      [10] 1928 	ld	hl, #0x0003
   4A06 39            [11] 1929 	add	hl, sp
   4A07 EB            [ 4] 1930 	ex	de, hl
   4A08 01 04 00      [10] 1931 	ld	bc, #0x0004
   4A0B ED B0         [21] 1932 	ldir
   4A0D C1            [10] 1933 	pop	bc
   4A0E                    1934 00103$:
                           1935 ;src/game.c:604: score += partialScore;
   4A0E 21 63 91      [10] 1936 	ld	hl,#_score
   4A11 7E            [ 7] 1937 	ld	a,(hl)
   4A12 DD 86 FA      [19] 1938 	add	a, -6 (ix)
   4A15 77            [ 7] 1939 	ld	(hl),a
   4A16 23            [ 6] 1940 	inc	hl
   4A17 7E            [ 7] 1941 	ld	a,(hl)
   4A18 DD 8E FB      [19] 1942 	adc	a, -5 (ix)
   4A1B 77            [ 7] 1943 	ld	(hl),a
   4A1C 23            [ 6] 1944 	inc	hl
   4A1D 7E            [ 7] 1945 	ld	a,(hl)
   4A1E DD 8E FC      [19] 1946 	adc	a, -4 (ix)
   4A21 77            [ 7] 1947 	ld	(hl),a
   4A22 23            [ 6] 1948 	inc	hl
   4A23 7E            [ 7] 1949 	ld	a,(hl)
   4A24 DD 8E FD      [19] 1950 	adc	a, -3 (ix)
   4A27 77            [ 7] 1951 	ld	(hl),a
                           1952 ;src/game.c:605: drawNumber(partialScore, 4, 3 + (11 * j), 6 + (44 * i));
   4A28 50            [ 4] 1953 	ld	d,b
   4A29 14            [ 4] 1954 	inc	d
   4A2A 14            [ 4] 1955 	inc	d
   4A2B 14            [ 4] 1956 	inc	d
   4A2C E5            [11] 1957 	push	hl
   4A2D DD 6E FA      [19] 1958 	ld	l,-6 (ix)
   4A30 DD 66 FB      [19] 1959 	ld	h,-5 (ix)
   4A33 E5            [11] 1960 	push	hl
   4A34 FD E1         [14] 1961 	pop	iy
   4A36 E1            [10] 1962 	pop	hl
   4A37 C5            [11] 1963 	push	bc
   4A38 DD 7E FF      [19] 1964 	ld	a,-1 (ix)
   4A3B F5            [11] 1965 	push	af
   4A3C 33            [ 6] 1966 	inc	sp
   4A3D 1E 04         [ 7] 1967 	ld	e, #0x04
   4A3F D5            [11] 1968 	push	de
   4A40 FD E5         [15] 1969 	push	iy
   4A42 CD 56 76      [17] 1970 	call	_drawNumber
   4A45 F1            [10] 1971 	pop	af
   4A46 F1            [10] 1972 	pop	af
   4A47 33            [ 6] 1973 	inc	sp
   4A48 C1            [10] 1974 	pop	bc
   4A49                    1975 00109$:
                           1976 ;src/game.c:595: for (j = 0; j < 4; j++) {
   4A49 78            [ 4] 1977 	ld	a,b
   4A4A C6 0B         [ 7] 1978 	add	a, #0x0B
   4A4C 47            [ 4] 1979 	ld	b,a
   4A4D DD 34 F9      [23] 1980 	inc	-7 (ix)
   4A50 DD 7E F9      [19] 1981 	ld	a,-7 (ix)
   4A53 D6 04         [ 7] 1982 	sub	a, #0x04
   4A55 DA CF 49      [10] 1983 	jp	C,00108$
                           1984 ;src/game.c:594: for (i = 0; i < 4; i++) {
   4A58 DD 7E FE      [19] 1985 	ld	a,-2 (ix)
   4A5B C6 2C         [ 7] 1986 	add	a, #0x2C
   4A5D DD 77 FE      [19] 1987 	ld	-2 (ix),a
   4A60 0C            [ 4] 1988 	inc	c
   4A61 79            [ 4] 1989 	ld	a,c
   4A62 D6 04         [ 7] 1990 	sub	a, #0x04
   4A64 DA C1 49      [10] 1991 	jp	C,00116$
   4A67 DD F9         [10] 1992 	ld	sp, ix
   4A69 DD E1         [14] 1993 	pop	ix
   4A6B C9            [10] 1994 	ret
                           1995 ;src/game.c:619: void getName() {
                           1996 ;	---------------------------------
                           1997 ; Function getName
                           1998 ; ---------------------------------
   4A6C                    1999 _getName::
   4A6C DD E5         [15] 2000 	push	ix
   4A6E DD 21 00 00   [14] 2001 	ld	ix,#0
   4A72 DD 39         [15] 2002 	add	ix,sp
   4A74 21 FA FF      [10] 2003 	ld	hl,#-6
   4A77 39            [11] 2004 	add	hl,sp
   4A78 F9            [ 6] 2005 	ld	sp,hl
                           2006 ;src/game.c:623: drawFrame(9, 60, 73, 150);
   4A79 21 49 96      [10] 2007 	ld	hl,#0x9649
   4A7C E5            [11] 2008 	push	hl
   4A7D 21 09 3C      [10] 2009 	ld	hl,#0x3C09
   4A80 E5            [11] 2010 	push	hl
   4A81 CD 28 7E      [17] 2011 	call	_drawFrame
   4A84 F1            [10] 2012 	pop	af
                           2013 ;src/game.c:625: drawText("NEW HIGH SCORE", 20, 70, 1);
   4A85 21 46 01      [10] 2014 	ld	hl, #0x0146
   4A88 E3            [19] 2015 	ex	(sp),hl
   4A89 3E 14         [ 7] 2016 	ld	a,#0x14
   4A8B F5            [11] 2017 	push	af
   4A8C 33            [ 6] 2018 	inc	sp
   4A8D 21 97 4C      [10] 2019 	ld	hl,#___str_10
   4A90 E5            [11] 2020 	push	hl
   4A91 CD F3 76      [17] 2021 	call	_drawText
   4A94 F1            [10] 2022 	pop	af
                           2023 ;src/game.c:626: drawText("ENTER YOUR NAME", 18, 85, 1);
   4A95 33            [ 6] 2024 	inc	sp
   4A96 21 55 01      [10] 2025 	ld	hl,#0x0155
   4A99 E3            [19] 2026 	ex	(sp),hl
   4A9A 3E 12         [ 7] 2027 	ld	a,#0x12
   4A9C F5            [11] 2028 	push	af
   4A9D 33            [ 6] 2029 	inc	sp
   4A9E 21 A6 4C      [10] 2030 	ld	hl,#___str_11
   4AA1 E5            [11] 2031 	push	hl
   4AA2 CD F3 76      [17] 2032 	call	_drawText
   4AA5 F1            [10] 2033 	pop	af
                           2034 ;src/game.c:627: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 11, 100);
   4AA6 33            [ 6] 2035 	inc	sp
   4AA7 21 0B 64      [10] 2036 	ld	hl,#0x640B
   4AAA E3            [19] 2037 	ex	(sp),hl
   4AAB 21 00 C0      [10] 2038 	ld	hl,#0xC000
   4AAE E5            [11] 2039 	push	hl
   4AAF CD A1 85      [17] 2040 	call	_cpct_getScreenPtr
   4AB2 4D            [ 4] 2041 	ld	c,l
   4AB3 44            [ 4] 2042 	ld	b,h
                           2043 ;src/game.c:628: cpct_drawSprite(g_tile_symbols_1, pvmem, 3, 11);
   4AB4 21 03 0B      [10] 2044 	ld	hl,#0x0B03
   4AB7 E5            [11] 2045 	push	hl
   4AB8 C5            [11] 2046 	push	bc
   4AB9 21 58 5C      [10] 2047 	ld	hl,#_g_tile_symbols_1
   4ABC E5            [11] 2048 	push	hl
   4ABD CD 1B 82      [17] 2049 	call	_cpct_drawSprite
                           2050 ;src/game.c:629: drawText(" TO CHANGE LETTER", 19, 100, 0);
   4AC0 21 64 00      [10] 2051 	ld	hl,#0x0064
   4AC3 E5            [11] 2052 	push	hl
   4AC4 3E 13         [ 7] 2053 	ld	a,#0x13
   4AC6 F5            [11] 2054 	push	af
   4AC7 33            [ 6] 2055 	inc	sp
   4AC8 21 B6 4C      [10] 2056 	ld	hl,#___str_12
   4ACB E5            [11] 2057 	push	hl
   4ACC CD F3 76      [17] 2058 	call	_drawText
   4ACF F1            [10] 2059 	pop	af
                           2060 ;src/game.c:630: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 16, 100);
   4AD0 33            [ 6] 2061 	inc	sp
   4AD1 21 10 64      [10] 2062 	ld	hl,#0x6410
   4AD4 E3            [19] 2063 	ex	(sp),hl
   4AD5 21 00 C0      [10] 2064 	ld	hl,#0xC000
   4AD8 E5            [11] 2065 	push	hl
   4AD9 CD A1 85      [17] 2066 	call	_cpct_getScreenPtr
   4ADC 4D            [ 4] 2067 	ld	c,l
   4ADD 44            [ 4] 2068 	ld	b,h
                           2069 ;src/game.c:631: cpct_drawSprite(g_tile_symbols_2, pvmem, 3, 11);
   4ADE 21 03 0B      [10] 2070 	ld	hl,#0x0B03
   4AE1 E5            [11] 2071 	push	hl
   4AE2 C5            [11] 2072 	push	bc
   4AE3 21 79 5C      [10] 2073 	ld	hl,#_g_tile_symbols_2
   4AE6 E5            [11] 2074 	push	hl
   4AE7 CD 1B 82      [17] 2075 	call	_cpct_drawSprite
                           2076 ;src/game.c:632: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 16, 100);
   4AEA 21 10 64      [10] 2077 	ld	hl,#0x6410
   4AED E5            [11] 2078 	push	hl
   4AEE 21 00 C0      [10] 2079 	ld	hl,#0xC000
   4AF1 E5            [11] 2080 	push	hl
   4AF2 CD A1 85      [17] 2081 	call	_cpct_getScreenPtr
   4AF5 4D            [ 4] 2082 	ld	c,l
   4AF6 44            [ 4] 2083 	ld	b,h
                           2084 ;src/game.c:633: cpct_drawSprite(g_font_big[38], pvmem, 3, 11);
   4AF7 21 03 0B      [10] 2085 	ld	hl,#0x0B03
   4AFA E5            [11] 2086 	push	hl
   4AFB C5            [11] 2087 	push	bc
   4AFC 21 B3 59      [10] 2088 	ld	hl,#(_g_font_big + 0x04e6)
   4AFF E5            [11] 2089 	push	hl
   4B00 CD 1B 82      [17] 2090 	call	_cpct_drawSprite
                           2091 ;src/game.c:634: drawText(" [ TO END", 20, 115, 1);
   4B03 21 73 01      [10] 2092 	ld	hl,#0x0173
   4B06 E5            [11] 2093 	push	hl
   4B07 3E 14         [ 7] 2094 	ld	a,#0x14
   4B09 F5            [11] 2095 	push	af
   4B0A 33            [ 6] 2096 	inc	sp
   4B0B 21 C8 4C      [10] 2097 	ld	hl,#___str_13
   4B0E E5            [11] 2098 	push	hl
   4B0F CD F3 76      [17] 2099 	call	_drawText
   4B12 F1            [10] 2100 	pop	af
                           2101 ;src/game.c:635: drawFrame(12, 130, 70, 160);
   4B13 33            [ 6] 2102 	inc	sp
   4B14 21 46 A0      [10] 2103 	ld	hl,#0xA046
   4B17 E3            [19] 2104 	ex	(sp),hl
   4B18 21 0C 82      [10] 2105 	ld	hl,#0x820C
   4B1B E5            [11] 2106 	push	hl
   4B1C CD 28 7E      [17] 2107 	call	_drawFrame
   4B1F F1            [10] 2108 	pop	af
   4B20 F1            [10] 2109 	pop	af
                           2110 ;src/game.c:636: strcpy(newNameHighScore, "A");
   4B21 11 12 92      [10] 2111 	ld	de,#_newNameHighScore
   4B24 21 D2 4C      [10] 2112 	ld	hl,#___str_14
   4B27 AF            [ 4] 2113 	xor	a, a
   4B28                    2114 00166$:
   4B28 BE            [ 7] 2115 	cp	a, (hl)
   4B29 ED A0         [16] 2116 	ldi
   4B2B 20 FB         [12] 2117 	jr	NZ, 00166$
                           2118 ;src/game.c:637: drawText(newNameHighScore, 0, 140, 1);
   4B2D 21 8C 01      [10] 2119 	ld	hl,#0x018C
   4B30 E5            [11] 2120 	push	hl
   4B31 AF            [ 4] 2121 	xor	a, a
   4B32 F5            [11] 2122 	push	af
   4B33 33            [ 6] 2123 	inc	sp
   4B34 21 12 92      [10] 2124 	ld	hl,#_newNameHighScore
   4B37 E5            [11] 2125 	push	hl
   4B38 CD F3 76      [17] 2126 	call	_drawText
   4B3B F1            [10] 2127 	pop	af
   4B3C F1            [10] 2128 	pop	af
   4B3D 33            [ 6] 2129 	inc	sp
                           2130 ;src/game.c:638: pos = 0;
   4B3E DD 36 FB 00   [19] 2131 	ld	-5 (ix),#0x00
                           2132 ;src/game.c:639: chr = 65;
   4B42 DD 36 FA 41   [19] 2133 	ld	-6 (ix),#0x41
                           2134 ;src/game.c:640: moved = 0;
   4B46 DD 36 FC 00   [19] 2135 	ld	-4 (ix),#0x00
                           2136 ;src/game.c:641: while (1) {
   4B4A                    2137 00126$:
                           2138 ;src/game.c:642: delay(24);
   4B4A 21 00 00      [10] 2139 	ld	hl,#0x0000
   4B4D E5            [11] 2140 	push	hl
   4B4E 21 18 00      [10] 2141 	ld	hl,#0x0018
   4B51 E5            [11] 2142 	push	hl
   4B52 CD D9 40      [17] 2143 	call	_delay
   4B55 F1            [10] 2144 	pop	af
   4B56 F1            [10] 2145 	pop	af
                           2146 ;src/game.c:643: cpct_scanKeyboard_f();
   4B57 CD A5 81      [17] 2147 	call	_cpct_scanKeyboard_f
                           2148 ;src/game.c:645: if (cpct_isKeyPressed(keys.down)) {
   4B5A 2A 42 91      [16] 2149 	ld	hl, (#_keys + 2)
   4B5D CD 99 81      [17] 2150 	call	_cpct_isKeyPressed
   4B60 DD 75 FF      [19] 2151 	ld	-1 (ix),l
                           2152 ;src/game.c:653: newNameHighScore[pos] = '\0';
   4B63 3E 12         [ 7] 2153 	ld	a,#<(_newNameHighScore)
   4B65 DD 86 FB      [19] 2154 	add	a, -5 (ix)
   4B68 DD 77 FD      [19] 2155 	ld	-3 (ix),a
   4B6B 3E 92         [ 7] 2156 	ld	a,#>(_newNameHighScore)
   4B6D CE 00         [ 7] 2157 	adc	a, #0x00
   4B6F DD 77 FE      [19] 2158 	ld	-2 (ix),a
                           2159 ;src/game.c:645: if (cpct_isKeyPressed(keys.down)) {
   4B72 DD 7E FF      [19] 2160 	ld	a,-1 (ix)
   4B75 B7            [ 4] 2161 	or	a, a
   4B76 28 0A         [12] 2162 	jr	Z,00116$
                           2163 ;src/game.c:646: chr++;
   4B78 DD 34 FA      [23] 2164 	inc	-6 (ix)
                           2165 ;src/game.c:647: moved = 1;
   4B7B DD 36 FC 01   [19] 2166 	ld	-4 (ix),#0x01
   4B7F C3 20 4C      [10] 2167 	jp	00117$
   4B82                    2168 00116$:
                           2169 ;src/game.c:648: } else if (cpct_isKeyPressed(keys.up)) {
   4B82 2A 40 91      [16] 2170 	ld	hl, (#_keys + 0)
   4B85 CD 99 81      [17] 2171 	call	_cpct_isKeyPressed
   4B88 7D            [ 4] 2172 	ld	a,l
   4B89 B7            [ 4] 2173 	or	a, a
   4B8A 28 0A         [12] 2174 	jr	Z,00113$
                           2175 ;src/game.c:649: chr--;
   4B8C DD 35 FA      [23] 2176 	dec	-6 (ix)
                           2177 ;src/game.c:650: moved = 1;
   4B8F DD 36 FC 01   [19] 2178 	ld	-4 (ix),#0x01
   4B93 C3 20 4C      [10] 2179 	jp	00117$
   4B96                    2180 00113$:
                           2181 ;src/game.c:651: } else if (cpct_isKeyPressed(keys.right)) {
   4B96 2A 46 91      [16] 2182 	ld	hl, (#_keys + 6)
   4B99 CD 99 81      [17] 2183 	call	_cpct_isKeyPressed
   4B9C 7D            [ 4] 2184 	ld	a,l
   4B9D B7            [ 4] 2185 	or	a, a
   4B9E 28 42         [12] 2186 	jr	Z,00110$
                           2187 ;src/game.c:652: if (chr == 91) {
   4BA0 DD 7E FA      [19] 2188 	ld	a,-6 (ix)
   4BA3 D6 5B         [ 7] 2189 	sub	a, #0x5B
   4BA5 20 0B         [12] 2190 	jr	NZ,00102$
                           2191 ;src/game.c:653: newNameHighScore[pos] = '\0';
   4BA7 DD 6E FD      [19] 2192 	ld	l,-3 (ix)
   4BAA DD 66 FE      [19] 2193 	ld	h,-2 (ix)
   4BAD 36 00         [10] 2194 	ld	(hl),#0x00
                           2195 ;src/game.c:654: break;
   4BAF C3 92 4C      [10] 2196 	jp	00128$
   4BB2                    2197 00102$:
                           2198 ;src/game.c:657: pos++;
   4BB2 DD 34 FB      [23] 2199 	inc	-5 (ix)
                           2200 ;src/game.c:653: newNameHighScore[pos] = '\0';
   4BB5 3E 12         [ 7] 2201 	ld	a,#<(_newNameHighScore)
   4BB7 DD 86 FB      [19] 2202 	add	a, -5 (ix)
   4BBA DD 77 FD      [19] 2203 	ld	-3 (ix),a
   4BBD 3E 92         [ 7] 2204 	ld	a,#>(_newNameHighScore)
   4BBF CE 00         [ 7] 2205 	adc	a, #0x00
   4BC1 DD 77 FE      [19] 2206 	ld	-2 (ix),a
                           2207 ;src/game.c:658: newNameHighScore[pos] = 65;
   4BC4 DD 6E FD      [19] 2208 	ld	l,-3 (ix)
   4BC7 DD 66 FE      [19] 2209 	ld	h,-2 (ix)
   4BCA 36 41         [10] 2210 	ld	(hl),#0x41
                           2211 ;src/game.c:659: newNameHighScore[pos + 1] = '\0';
   4BCC DD 4E FB      [19] 2212 	ld	c,-5 (ix)
   4BCF 0C            [ 4] 2213 	inc	c
   4BD0 21 12 92      [10] 2214 	ld	hl,#_newNameHighScore
   4BD3 06 00         [ 7] 2215 	ld	b,#0x00
   4BD5 09            [11] 2216 	add	hl, bc
   4BD6 36 00         [10] 2217 	ld	(hl),#0x00
                           2218 ;src/game.c:660: chr = 65;
   4BD8 DD 36 FA 41   [19] 2219 	ld	-6 (ix),#0x41
                           2220 ;src/game.c:661: moved = 1;
   4BDC DD 36 FC 01   [19] 2221 	ld	-4 (ix),#0x01
   4BE0 18 3E         [12] 2222 	jr	00117$
   4BE2                    2223 00110$:
                           2224 ;src/game.c:664: } else if (cpct_isKeyPressed(keys.left)) {
   4BE2 2A 44 91      [16] 2225 	ld	hl, (#_keys + 4)
   4BE5 CD 99 81      [17] 2226 	call	_cpct_isKeyPressed
   4BE8 7D            [ 4] 2227 	ld	a,l
   4BE9 B7            [ 4] 2228 	or	a, a
   4BEA 28 2A         [12] 2229 	jr	Z,00107$
                           2230 ;src/game.c:665: newNameHighScore[pos] = '\0';
   4BEC DD 6E FD      [19] 2231 	ld	l,-3 (ix)
   4BEF DD 66 FE      [19] 2232 	ld	h,-2 (ix)
   4BF2 36 00         [10] 2233 	ld	(hl),#0x00
                           2234 ;src/game.c:666: pos--;
   4BF4 DD 35 FB      [23] 2235 	dec	-5 (ix)
                           2236 ;src/game.c:653: newNameHighScore[pos] = '\0';
   4BF7 3E 12         [ 7] 2237 	ld	a,#<(_newNameHighScore)
   4BF9 DD 86 FB      [19] 2238 	add	a, -5 (ix)
   4BFC DD 77 FD      [19] 2239 	ld	-3 (ix),a
   4BFF 3E 92         [ 7] 2240 	ld	a,#>(_newNameHighScore)
   4C01 CE 00         [ 7] 2241 	adc	a, #0x00
   4C03 DD 77 FE      [19] 2242 	ld	-2 (ix),a
                           2243 ;src/game.c:667: chr = newNameHighScore[pos];
   4C06 DD 6E FD      [19] 2244 	ld	l,-3 (ix)
   4C09 DD 66 FE      [19] 2245 	ld	h,-2 (ix)
   4C0C 7E            [ 7] 2246 	ld	a,(hl)
   4C0D DD 77 FA      [19] 2247 	ld	-6 (ix),a
                           2248 ;src/game.c:668: moved = 1;
   4C10 DD 36 FC 01   [19] 2249 	ld	-4 (ix),#0x01
   4C14 18 0A         [12] 2250 	jr	00117$
   4C16                    2251 00107$:
                           2252 ;src/game.c:669: } else if (cpct_isKeyPressed(keys.abort)) {
   4C16 2A 4C 91      [16] 2253 	ld	hl, (#_keys + 12)
   4C19 CD 99 81      [17] 2254 	call	_cpct_isKeyPressed
   4C1C 7D            [ 4] 2255 	ld	a,l
   4C1D B7            [ 4] 2256 	or	a, a
   4C1E 20 72         [12] 2257 	jr	NZ,00128$
                           2258 ;src/game.c:670: break;
   4C20                    2259 00117$:
                           2260 ;src/game.c:672: if (moved) {
   4C20 DD 7E FC      [19] 2261 	ld	a,-4 (ix)
   4C23 B7            [ 4] 2262 	or	a, a
   4C24 CA 4A 4B      [10] 2263 	jp	Z,00126$
                           2264 ;src/game.c:673: moved = 0;
   4C27 DD 36 FC 00   [19] 2265 	ld	-4 (ix),#0x00
                           2266 ;src/game.c:674: if (chr > 91)
   4C2B 3E 5B         [ 7] 2267 	ld	a,#0x5B
   4C2D DD 96 FA      [19] 2268 	sub	a, -6 (ix)
   4C30 30 06         [12] 2269 	jr	NC,00121$
                           2270 ;src/game.c:675: chr = 65;
   4C32 DD 36 FA 41   [19] 2271 	ld	-6 (ix),#0x41
   4C36 18 0B         [12] 2272 	jr	00122$
   4C38                    2273 00121$:
                           2274 ;src/game.c:676: else if (chr < 65)
   4C38 DD 7E FA      [19] 2275 	ld	a,-6 (ix)
   4C3B D6 41         [ 7] 2276 	sub	a, #0x41
   4C3D 30 04         [12] 2277 	jr	NC,00122$
                           2278 ;src/game.c:677: chr = 91;
   4C3F DD 36 FA 5B   [19] 2279 	ld	-6 (ix),#0x5B
   4C43                    2280 00122$:
                           2281 ;src/game.c:678: newNameHighScore[pos] = chr;
   4C43 DD 6E FD      [19] 2282 	ld	l,-3 (ix)
   4C46 DD 66 FE      [19] 2283 	ld	h,-2 (ix)
   4C49 DD 7E FA      [19] 2284 	ld	a,-6 (ix)
   4C4C 77            [ 7] 2285 	ld	(hl),a
                           2286 ;src/game.c:679: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 13, 140);
   4C4D 21 0D 8C      [10] 2287 	ld	hl,#0x8C0D
   4C50 E5            [11] 2288 	push	hl
   4C51 21 00 C0      [10] 2289 	ld	hl,#0xC000
   4C54 E5            [11] 2290 	push	hl
   4C55 CD A1 85      [17] 2291 	call	_cpct_getScreenPtr
   4C58 DD 75 FD      [19] 2292 	ld	-3 (ix),l
   4C5B DD 74 FE      [19] 2293 	ld	-2 (ix),h
                           2294 ;src/game.c:680: cpct_drawSolidBox(pvmem, cpct_px2byteM0(5, 5), 60, 11);
   4C5E 21 05 05      [10] 2295 	ld	hl,#0x0505
   4C61 E5            [11] 2296 	push	hl
   4C62 CD 6E 84      [17] 2297 	call	_cpct_px2byteM0
   4C65 DD 75 FF      [19] 2298 	ld	-1 (ix),l
   4C68 21 3C 0B      [10] 2299 	ld	hl,#0x0B3C
   4C6B E5            [11] 2300 	push	hl
   4C6C DD 7E FF      [19] 2301 	ld	a,-1 (ix)
   4C6F F5            [11] 2302 	push	af
   4C70 33            [ 6] 2303 	inc	sp
   4C71 DD 6E FD      [19] 2304 	ld	l,-3 (ix)
   4C74 DD 66 FE      [19] 2305 	ld	h,-2 (ix)
   4C77 E5            [11] 2306 	push	hl
   4C78 CD B7 84      [17] 2307 	call	_cpct_drawSolidBox
   4C7B F1            [10] 2308 	pop	af
                           2309 ;src/game.c:681: drawText(newNameHighScore, 20, 140, 1);
   4C7C 33            [ 6] 2310 	inc	sp
   4C7D 21 8C 01      [10] 2311 	ld	hl,#0x018C
   4C80 E3            [19] 2312 	ex	(sp),hl
   4C81 3E 14         [ 7] 2313 	ld	a,#0x14
   4C83 F5            [11] 2314 	push	af
   4C84 33            [ 6] 2315 	inc	sp
   4C85 21 12 92      [10] 2316 	ld	hl,#_newNameHighScore
   4C88 E5            [11] 2317 	push	hl
   4C89 CD F3 76      [17] 2318 	call	_drawText
   4C8C F1            [10] 2319 	pop	af
   4C8D F1            [10] 2320 	pop	af
   4C8E 33            [ 6] 2321 	inc	sp
   4C8F C3 4A 4B      [10] 2322 	jp	00126$
   4C92                    2323 00128$:
   4C92 DD F9         [10] 2324 	ld	sp, ix
   4C94 DD E1         [14] 2325 	pop	ix
   4C96 C9            [10] 2326 	ret
   4C97                    2327 ___str_10:
   4C97 4E 45 57 20 48 49  2328 	.ascii "NEW HIGH SCORE"
        47 48 20 53 43 4F
        52 45
   4CA5 00                 2329 	.db 0x00
   4CA6                    2330 ___str_11:
   4CA6 45 4E 54 45 52 20  2331 	.ascii "ENTER YOUR NAME"
        59 4F 55 52 20 4E
        41 4D 45
   4CB5 00                 2332 	.db 0x00
   4CB6                    2333 ___str_12:
   4CB6 20 54 4F 20 43 48  2334 	.ascii " TO CHANGE LETTER"
        41 4E 47 45 20 4C
        45 54 54 45 52
   4CC7 00                 2335 	.db 0x00
   4CC8                    2336 ___str_13:
   4CC8 20 5B 20 54 4F 20  2337 	.ascii " [ TO END"
        45 4E 44
   4CD1 00                 2338 	.db 0x00
   4CD2                    2339 ___str_14:
   4CD2 41                 2340 	.ascii "A"
   4CD3 00                 2341 	.db 0x00
                           2342 ;src/game.c:696: void setHighScore(u32 score) {
                           2343 ;	---------------------------------
                           2344 ; Function setHighScore
                           2345 ; ---------------------------------
   4CD4                    2346 _setHighScore::
   4CD4 DD E5         [15] 2347 	push	ix
   4CD6 DD 21 00 00   [14] 2348 	ld	ix,#0
   4CDA DD 39         [15] 2349 	add	ix,sp
   4CDC 21 F6 FF      [10] 2350 	ld	hl,#-10
   4CDF 39            [11] 2351 	add	hl,sp
   4CE0 F9            [ 6] 2352 	ld	sp,hl
                           2353 ;src/game.c:699: i = 8;
   4CE1 0E 08         [ 7] 2354 	ld	c,#0x08
                           2355 ;src/game.c:700: while ((score > scoreHallOfFame[i - 1]) && (i > 0)) {
   4CE3 11 67 91      [10] 2356 	ld	de,#_scoreHallOfFame+0
   4CE6                    2357 00102$:
   4CE6 41            [ 4] 2358 	ld	b,c
   4CE7 05            [ 4] 2359 	dec	b
   4CE8 68            [ 4] 2360 	ld	l,b
   4CE9 26 00         [ 7] 2361 	ld	h,#0x00
   4CEB 29            [11] 2362 	add	hl, hl
   4CEC 29            [11] 2363 	add	hl, hl
   4CED 19            [11] 2364 	add	hl,de
   4CEE D5            [11] 2365 	push	de
   4CEF C5            [11] 2366 	push	bc
   4CF0 EB            [ 4] 2367 	ex	de,hl
   4CF1 21 0A 00      [10] 2368 	ld	hl, #0x000A
   4CF4 39            [11] 2369 	add	hl, sp
   4CF5 EB            [ 4] 2370 	ex	de, hl
   4CF6 01 04 00      [10] 2371 	ld	bc, #0x0004
   4CF9 ED B0         [21] 2372 	ldir
   4CFB C1            [10] 2373 	pop	bc
   4CFC D1            [10] 2374 	pop	de
   4CFD DD 7E FC      [19] 2375 	ld	a,-4 (ix)
   4D00 DD 96 04      [19] 2376 	sub	a, 4 (ix)
   4D03 DD 7E FD      [19] 2377 	ld	a,-3 (ix)
   4D06 DD 9E 05      [19] 2378 	sbc	a, 5 (ix)
   4D09 DD 7E FE      [19] 2379 	ld	a,-2 (ix)
   4D0C DD 9E 06      [19] 2380 	sbc	a, 6 (ix)
   4D0F DD 7E FF      [19] 2381 	ld	a,-1 (ix)
   4D12 DD 9E 07      [19] 2382 	sbc	a, 7 (ix)
   4D15 30 07         [12] 2383 	jr	NC,00104$
   4D17 79            [ 4] 2384 	ld	a,c
   4D18 B7            [ 4] 2385 	or	a, a
   4D19 28 03         [12] 2386 	jr	Z,00104$
                           2387 ;src/game.c:701: i--;
   4D1B 48            [ 4] 2388 	ld	c,b
   4D1C 18 C8         [12] 2389 	jr	00102$
   4D1E                    2390 00104$:
                           2391 ;src/game.c:703: j = 7;
                           2392 ;src/game.c:704: if (i <= j) {
   4D1E 3E 07         [ 7] 2393 	ld	a,#0x07
   4D20 47            [ 4] 2394 	ld	b,a
   4D21 91            [ 4] 2395 	sub	a, c
   4D22 DA CC 4D      [10] 2396 	jp	C,00111$
                           2397 ;src/game.c:705: while ((i < j) && (j > 0)) {
   4D25                    2398 00106$:
                           2399 ;src/game.c:706: scoreHallOfFame[j] = scoreHallOfFame[j - 1];
   4D25 DD 70 FC      [19] 2400 	ld	-4 (ix),b
   4D28 DD 36 FD 00   [19] 2401 	ld	-3 (ix),#0x00
                           2402 ;src/game.c:707: strcpy(nameHallOfFame[j], nameHallOfFame[j - 1]);
   4D2C D5            [11] 2403 	push	de
   4D2D 58            [ 4] 2404 	ld	e,b
   4D2E 16 00         [ 7] 2405 	ld	d,#0x00
   4D30 6B            [ 4] 2406 	ld	l, e
   4D31 62            [ 4] 2407 	ld	h, d
   4D32 29            [11] 2408 	add	hl, hl
   4D33 19            [11] 2409 	add	hl, de
   4D34 29            [11] 2410 	add	hl, hl
   4D35 19            [11] 2411 	add	hl, de
   4D36 29            [11] 2412 	add	hl, hl
   4D37 19            [11] 2413 	add	hl, de
   4D38 D1            [10] 2414 	pop	de
   4D39 E3            [19] 2415 	ex	(sp), hl
                           2416 ;src/game.c:706: scoreHallOfFame[j] = scoreHallOfFame[j - 1];
   4D3A DD 6E FC      [19] 2417 	ld	l,-4 (ix)
   4D3D DD 66 FD      [19] 2418 	ld	h,-3 (ix)
   4D40 29            [11] 2419 	add	hl, hl
   4D41 29            [11] 2420 	add	hl, hl
                           2421 ;src/game.c:707: strcpy(nameHallOfFame[j], nameHallOfFame[j - 1]);
   4D42 3E 87         [ 7] 2422 	ld	a,#<(_nameHallOfFame)
   4D44 DD 86 F6      [19] 2423 	add	a, -10 (ix)
   4D47 DD 77 F6      [19] 2424 	ld	-10 (ix),a
   4D4A 3E 91         [ 7] 2425 	ld	a,#>(_nameHallOfFame)
   4D4C DD 8E F7      [19] 2426 	adc	a, -9 (ix)
   4D4F DD 77 F7      [19] 2427 	ld	-9 (ix),a
                           2428 ;src/game.c:706: scoreHallOfFame[j] = scoreHallOfFame[j - 1];
   4D52 19            [11] 2429 	add	hl,de
   4D53 DD 75 FC      [19] 2430 	ld	-4 (ix),l
   4D56 DD 74 FD      [19] 2431 	ld	-3 (ix),h
                           2432 ;src/game.c:707: strcpy(nameHallOfFame[j], nameHallOfFame[j - 1]);
                           2433 ;src/game.c:705: while ((i < j) && (j > 0)) {
   4D59 79            [ 4] 2434 	ld	a,c
   4D5A 90            [ 4] 2435 	sub	a, b
   4D5B 30 4F         [12] 2436 	jr	NC,00108$
   4D5D 78            [ 4] 2437 	ld	a,b
   4D5E B7            [ 4] 2438 	or	a, a
   4D5F 28 4B         [12] 2439 	jr	Z,00108$
                           2440 ;src/game.c:706: scoreHallOfFame[j] = scoreHallOfFame[j - 1];
   4D61 05            [ 4] 2441 	dec	b
   4D62 68            [ 4] 2442 	ld	l,b
   4D63 26 00         [ 7] 2443 	ld	h,#0x00
   4D65 29            [11] 2444 	add	hl, hl
   4D66 29            [11] 2445 	add	hl, hl
   4D67 19            [11] 2446 	add	hl,de
   4D68 D5            [11] 2447 	push	de
   4D69 C5            [11] 2448 	push	bc
   4D6A EB            [ 4] 2449 	ex	de,hl
   4D6B 21 06 00      [10] 2450 	ld	hl, #0x0006
   4D6E 39            [11] 2451 	add	hl, sp
   4D6F EB            [ 4] 2452 	ex	de, hl
   4D70 01 04 00      [10] 2453 	ld	bc, #0x0004
   4D73 ED B0         [21] 2454 	ldir
   4D75 DD 5E FC      [19] 2455 	ld	e,-4 (ix)
   4D78 DD 56 FD      [19] 2456 	ld	d,-3 (ix)
   4D7B 21 06 00      [10] 2457 	ld	hl, #0x0006
   4D7E 39            [11] 2458 	add	hl, sp
   4D7F 01 04 00      [10] 2459 	ld	bc, #0x0004
   4D82 ED B0         [21] 2460 	ldir
   4D84 C1            [10] 2461 	pop	bc
   4D85 58            [ 4] 2462 	ld	e,b
   4D86 16 00         [ 7] 2463 	ld	d,#0x00
   4D88 6B            [ 4] 2464 	ld	l, e
   4D89 62            [ 4] 2465 	ld	h, d
   4D8A 29            [11] 2466 	add	hl, hl
   4D8B 19            [11] 2467 	add	hl, de
   4D8C 29            [11] 2468 	add	hl, hl
   4D8D 19            [11] 2469 	add	hl, de
   4D8E 29            [11] 2470 	add	hl, hl
   4D8F 19            [11] 2471 	add	hl, de
   4D90 D1            [10] 2472 	pop	de
   4D91 3E 87         [ 7] 2473 	ld	a,#<(_nameHallOfFame)
   4D93 85            [ 4] 2474 	add	a, l
   4D94 6F            [ 4] 2475 	ld	l,a
   4D95 3E 91         [ 7] 2476 	ld	a,#>(_nameHallOfFame)
   4D97 8C            [ 4] 2477 	adc	a, h
   4D98 67            [ 4] 2478 	ld	h,a
   4D99 C5            [11] 2479 	push	bc
   4D9A D5            [11] 2480 	push	de
   4D9B DD 5E F6      [19] 2481 	ld	e,-10 (ix)
   4D9E DD 56 F7      [19] 2482 	ld	d,-9 (ix)
   4DA1 AF            [ 4] 2483 	xor	a, a
   4DA2                    2484 00140$:
   4DA2 BE            [ 7] 2485 	cp	a, (hl)
   4DA3 ED A0         [16] 2486 	ldi
   4DA5 20 FB         [12] 2487 	jr	NZ, 00140$
   4DA7 D1            [10] 2488 	pop	de
   4DA8 C1            [10] 2489 	pop	bc
                           2490 ;src/game.c:708: j--;
   4DA9 C3 25 4D      [10] 2491 	jp	00106$
   4DAC                    2492 00108$:
                           2493 ;src/game.c:710: getName();
   4DAC CD 6C 4A      [17] 2494 	call	_getName
                           2495 ;src/game.c:711: wait4UserKeypress();
   4DAF CD 01 7C      [17] 2496 	call	_wait4UserKeypress
                           2497 ;src/game.c:712: scoreHallOfFame[j] = score;
   4DB2 DD 5E FC      [19] 2498 	ld	e,-4 (ix)
   4DB5 DD 56 FD      [19] 2499 	ld	d,-3 (ix)
   4DB8 21 0E 00      [10] 2500 	ld	hl, #0x000E
   4DBB 39            [11] 2501 	add	hl, sp
   4DBC 01 04 00      [10] 2502 	ld	bc, #0x0004
   4DBF ED B0         [21] 2503 	ldir
                           2504 ;src/game.c:713: strcpy(nameHallOfFame[j], newNameHighScore);
   4DC1 D1            [10] 2505 	pop	de
   4DC2 D5            [11] 2506 	push	de
   4DC3 21 12 92      [10] 2507 	ld	hl,#_newNameHighScore
   4DC6 AF            [ 4] 2508 	xor	a, a
   4DC7                    2509 00141$:
   4DC7 BE            [ 7] 2510 	cp	a, (hl)
   4DC8 ED A0         [16] 2511 	ldi
   4DCA 20 FB         [12] 2512 	jr	NZ, 00141$
   4DCC                    2513 00111$:
   4DCC DD F9         [10] 2514 	ld	sp, ix
   4DCE DD E1         [14] 2515 	pop	ix
   4DD0 C9            [10] 2516 	ret
                           2517 ;src/game.c:717: void drawScoreBoard() {
                           2518 ;	---------------------------------
                           2519 ; Function drawScoreBoard
                           2520 ; ---------------------------------
   4DD1                    2521 _drawScoreBoard::
   4DD1 DD E5         [15] 2522 	push	ix
   4DD3 DD 21 00 00   [14] 2523 	ld	ix,#0
   4DD7 DD 39         [15] 2524 	add	ix,sp
   4DD9 F5            [11] 2525 	push	af
   4DDA F5            [11] 2526 	push	af
                           2527 ;src/game.c:721: cpct_memset(CPCT_VMEM_START, cpct_px2byteM0(5, 5), 0x4000);
   4DDB 21 05 05      [10] 2528 	ld	hl,#0x0505
   4DDE E5            [11] 2529 	push	hl
   4DDF CD 6E 84      [17] 2530 	call	_cpct_px2byteM0
   4DE2 45            [ 4] 2531 	ld	b,l
   4DE3 21 00 40      [10] 2532 	ld	hl,#0x4000
   4DE6 E5            [11] 2533 	push	hl
   4DE7 C5            [11] 2534 	push	bc
   4DE8 33            [ 6] 2535 	inc	sp
   4DE9 26 C0         [ 7] 2536 	ld	h, #0xC0
   4DEB E5            [11] 2537 	push	hl
   4DEC CD 8A 84      [17] 2538 	call	_cpct_memset
                           2539 ;src/game.c:723: drawText("AMSTHREES SCOREBOARD", 13, 2, 1);
   4DEF 21 02 01      [10] 2540 	ld	hl,#0x0102
   4DF2 E5            [11] 2541 	push	hl
   4DF3 3E 0D         [ 7] 2542 	ld	a,#0x0D
   4DF5 F5            [11] 2543 	push	af
   4DF6 33            [ 6] 2544 	inc	sp
   4DF7 21 EE 4E      [10] 2545 	ld	hl,#___str_15
   4DFA E5            [11] 2546 	push	hl
   4DFB CD F3 76      [17] 2547 	call	_drawText
   4DFE F1            [10] 2548 	pop	af
   4DFF F1            [10] 2549 	pop	af
   4E00 33            [ 6] 2550 	inc	sp
                           2551 ;src/game.c:725: for (i = 0; i < 8; i++) {
   4E01 DD 36 FC 00   [19] 2552 	ld	-4 (ix),#0x00
   4E05 DD 36 FF 00   [19] 2553 	ld	-1 (ix),#0x00
   4E09 01 00 00      [10] 2554 	ld	bc,#0x0000
   4E0C DD 36 FD 00   [19] 2555 	ld	-3 (ix),#0x00
   4E10                    2556 00106$:
                           2557 ;src/game.c:726: drawNumber(i + 1, 2, 5, 30 + (i * 15));
   4E10 DD 7E FF      [19] 2558 	ld	a,-1 (ix)
   4E13 C6 1E         [ 7] 2559 	add	a, #0x1E
   4E15 DD 77 FE      [19] 2560 	ld	-2 (ix),a
   4E18 DD 5E FC      [19] 2561 	ld	e,-4 (ix)
   4E1B 16 00         [ 7] 2562 	ld	d,#0x00
   4E1D D5            [11] 2563 	push	de
   4E1E FD E1         [14] 2564 	pop	iy
   4E20 FD 23         [10] 2565 	inc	iy
   4E22 C5            [11] 2566 	push	bc
   4E23 D5            [11] 2567 	push	de
   4E24 DD 7E FE      [19] 2568 	ld	a,-2 (ix)
   4E27 F5            [11] 2569 	push	af
   4E28 33            [ 6] 2570 	inc	sp
   4E29 21 02 05      [10] 2571 	ld	hl,#0x0502
   4E2C E5            [11] 2572 	push	hl
   4E2D FD E5         [15] 2573 	push	iy
   4E2F CD 56 76      [17] 2574 	call	_drawNumber
   4E32 F1            [10] 2575 	pop	af
   4E33 F1            [10] 2576 	pop	af
   4E34 33            [ 6] 2577 	inc	sp
   4E35 D1            [10] 2578 	pop	de
   4E36 C1            [10] 2579 	pop	bc
                           2580 ;src/game.c:727: drawText(nameHallOfFame[i], 14, 30 + (i * 15), 0);
   4E37 FD 21 87 91   [14] 2581 	ld	iy,#_nameHallOfFame
   4E3B FD 09         [15] 2582 	add	iy, bc
   4E3D C5            [11] 2583 	push	bc
   4E3E D5            [11] 2584 	push	de
   4E3F AF            [ 4] 2585 	xor	a, a
   4E40 F5            [11] 2586 	push	af
   4E41 33            [ 6] 2587 	inc	sp
   4E42 DD 56 FE      [19] 2588 	ld	d, -2 (ix)
   4E45 1E 0E         [ 7] 2589 	ld	e,#0x0E
   4E47 D5            [11] 2590 	push	de
   4E48 FD E5         [15] 2591 	push	iy
   4E4A CD F3 76      [17] 2592 	call	_drawText
   4E4D F1            [10] 2593 	pop	af
   4E4E F1            [10] 2594 	pop	af
   4E4F 33            [ 6] 2595 	inc	sp
   4E50 D1            [10] 2596 	pop	de
   4E51 C1            [10] 2597 	pop	bc
                           2598 ;src/game.c:728: drawNumber(scoreHallOfFame[i], 1, 69, 30 + (i * 15));
   4E52 DD 7E FD      [19] 2599 	ld	a,-3 (ix)
   4E55 C6 1E         [ 7] 2600 	add	a, #0x1E
   4E57 DD 77 FE      [19] 2601 	ld	-2 (ix),a
   4E5A EB            [ 4] 2602 	ex	de,hl
   4E5B 29            [11] 2603 	add	hl, hl
   4E5C 29            [11] 2604 	add	hl, hl
   4E5D 11 67 91      [10] 2605 	ld	de,#_scoreHallOfFame
   4E60 19            [11] 2606 	add	hl,de
   4E61 5E            [ 7] 2607 	ld	e,(hl)
   4E62 23            [ 6] 2608 	inc	hl
   4E63 56            [ 7] 2609 	ld	d,(hl)
   4E64 23            [ 6] 2610 	inc	hl
   4E65 23            [ 6] 2611 	inc	hl
   4E66 7E            [ 7] 2612 	ld	a,(hl)
   4E67 2B            [ 6] 2613 	dec	hl
   4E68 6E            [ 7] 2614 	ld	l,(hl)
   4E69 C5            [11] 2615 	push	bc
   4E6A DD 7E FE      [19] 2616 	ld	a,-2 (ix)
   4E6D F5            [11] 2617 	push	af
   4E6E 33            [ 6] 2618 	inc	sp
   4E6F 21 01 45      [10] 2619 	ld	hl,#0x4501
   4E72 E5            [11] 2620 	push	hl
   4E73 D5            [11] 2621 	push	de
   4E74 CD 56 76      [17] 2622 	call	_drawNumber
   4E77 F1            [10] 2623 	pop	af
   4E78 F1            [10] 2624 	pop	af
   4E79 33            [ 6] 2625 	inc	sp
   4E7A C1            [10] 2626 	pop	bc
                           2627 ;src/game.c:725: for (i = 0; i < 8; i++) {
   4E7B DD 7E FF      [19] 2628 	ld	a,-1 (ix)
   4E7E C6 0F         [ 7] 2629 	add	a, #0x0F
   4E80 DD 77 FF      [19] 2630 	ld	-1 (ix),a
   4E83 21 0F 00      [10] 2631 	ld	hl,#0x000F
   4E86 09            [11] 2632 	add	hl,bc
   4E87 4D            [ 4] 2633 	ld	c,l
   4E88 44            [ 4] 2634 	ld	b,h
   4E89 DD 7E FD      [19] 2635 	ld	a,-3 (ix)
   4E8C C6 0F         [ 7] 2636 	add	a, #0x0F
   4E8E DD 77 FD      [19] 2637 	ld	-3 (ix),a
   4E91 DD 34 FC      [23] 2638 	inc	-4 (ix)
   4E94 DD 7E FC      [19] 2639 	ld	a,-4 (ix)
   4E97 D6 08         [ 7] 2640 	sub	a, #0x08
   4E99 DA 10 4E      [10] 2641 	jp	C,00106$
                           2642 ;src/game.c:731: drawText("JOHN LOBO", 25, 170, 1);
   4E9C 21 AA 01      [10] 2643 	ld	hl,#0x01AA
   4E9F E5            [11] 2644 	push	hl
   4EA0 3E 19         [ 7] 2645 	ld	a,#0x19
   4EA2 F5            [11] 2646 	push	af
   4EA3 33            [ 6] 2647 	inc	sp
   4EA4 21 03 4F      [10] 2648 	ld	hl,#___str_16
   4EA7 E5            [11] 2649 	push	hl
   4EA8 CD F3 76      [17] 2650 	call	_drawText
   4EAB F1            [10] 2651 	pop	af
                           2652 ;src/game.c:732: drawText("@ GLASNOST CORP 2016", 11, 185, 1);
   4EAC 33            [ 6] 2653 	inc	sp
   4EAD 21 B9 01      [10] 2654 	ld	hl,#0x01B9
   4EB0 E3            [19] 2655 	ex	(sp),hl
   4EB1 3E 0B         [ 7] 2656 	ld	a,#0x0B
   4EB3 F5            [11] 2657 	push	af
   4EB4 33            [ 6] 2658 	inc	sp
   4EB5 21 0D 4F      [10] 2659 	ld	hl,#___str_17
   4EB8 E5            [11] 2660 	push	hl
   4EB9 CD F3 76      [17] 2661 	call	_drawText
   4EBC F1            [10] 2662 	pop	af
   4EBD F1            [10] 2663 	pop	af
   4EBE 33            [ 6] 2664 	inc	sp
                           2665 ;src/game.c:736: do {
   4EBF 01 40 9C      [10] 2666 	ld	bc,#0x9C40
   4EC2 11 00 00      [10] 2667 	ld	de,#0x0000
   4EC5                    2668 00103$:
                           2669 ;src/game.c:737: c--;                       // One more cycle
   4EC5 79            [ 4] 2670 	ld	a,c
   4EC6 C6 FF         [ 7] 2671 	add	a,#0xFF
   4EC8 4F            [ 4] 2672 	ld	c,a
   4EC9 78            [ 4] 2673 	ld	a,b
   4ECA CE FF         [ 7] 2674 	adc	a,#0xFF
   4ECC 47            [ 4] 2675 	ld	b,a
   4ECD 7B            [ 4] 2676 	ld	a,e
   4ECE CE FF         [ 7] 2677 	adc	a,#0xFF
   4ED0 5F            [ 4] 2678 	ld	e,a
   4ED1 7A            [ 4] 2679 	ld	a,d
   4ED2 CE FF         [ 7] 2680 	adc	a,#0xFF
   4ED4 57            [ 4] 2681 	ld	d,a
                           2682 ;src/game.c:738: cpct_scanKeyboard_f();     // Scan the scan the keyboard
   4ED5 C5            [11] 2683 	push	bc
   4ED6 D5            [11] 2684 	push	de
   4ED7 CD A5 81      [17] 2685 	call	_cpct_scanKeyboard_f
   4EDA CD 53 84      [17] 2686 	call	_cpct_isAnyKeyPressed_f
   4EDD D1            [10] 2687 	pop	de
   4EDE C1            [10] 2688 	pop	bc
   4EDF 7D            [ 4] 2689 	ld	a,l
   4EE0 B7            [ 4] 2690 	or	a, a
   4EE1 20 06         [12] 2691 	jr	NZ,00108$
   4EE3 7A            [ 4] 2692 	ld	a,d
   4EE4 B3            [ 4] 2693 	or	a, e
   4EE5 B0            [ 4] 2694 	or	a, b
   4EE6 B1            [ 4] 2695 	or	a,c
   4EE7 20 DC         [12] 2696 	jr	NZ,00103$
   4EE9                    2697 00108$:
   4EE9 DD F9         [10] 2698 	ld	sp, ix
   4EEB DD E1         [14] 2699 	pop	ix
   4EED C9            [10] 2700 	ret
   4EEE                    2701 ___str_15:
   4EEE 41 4D 53 54 48 52  2702 	.ascii "AMSTHREES SCOREBOARD"
        45 45 53 20 53 43
        4F 52 45 42 4F 41
        52 44
   4F02 00                 2703 	.db 0x00
   4F03                    2704 ___str_16:
   4F03 4A 4F 48 4E 20 4C  2705 	.ascii "JOHN LOBO"
        4F 42 4F
   4F0C 00                 2706 	.db 0x00
   4F0D                    2707 ___str_17:
   4F0D 40 20 47 4C 41 53  2708 	.ascii "@ GLASNOST CORP 2016"
        4E 4F 53 54 20 43
        4F 52 50 20 32 30
        31 36
   4F21 00                 2709 	.db 0x00
                           2710 ;src/game.c:751: void game(void) {
                           2711 ;	---------------------------------
                           2712 ; Function game
                           2713 ; ---------------------------------
   4F22                    2714 _game::
   4F22 DD E5         [15] 2715 	push	ix
   4F24 DD 21 00 00   [14] 2716 	ld	ix,#0
   4F28 DD 39         [15] 2717 	add	ix,sp
   4F2A 3B            [ 6] 2718 	dec	sp
                           2719 ;src/game.c:754: initGame();
   4F2B CD 7F 45      [17] 2720 	call	_initGame
                           2721 ;src/game.c:757: clearScreen();
   4F2E CD 36 81      [17] 2722 	call	_clearScreen
                           2723 ;src/game.c:760: drawFrame(2, 1, 49, 182);
   4F31 21 31 B6      [10] 2724 	ld	hl,#0xB631
   4F34 E5            [11] 2725 	push	hl
   4F35 21 02 01      [10] 2726 	ld	hl,#0x0102
   4F38 E5            [11] 2727 	push	hl
   4F39 CD 28 7E      [17] 2728 	call	_drawFrame
   4F3C F1            [10] 2729 	pop	af
   4F3D F1            [10] 2730 	pop	af
                           2731 ;src/game.c:761: printCells();
   4F3E CD F9 48      [17] 2732 	call	_printCells
                           2733 ;src/game.c:762: drawText("NEXT", 62, 2, 0);
   4F41 21 02 00      [10] 2734 	ld	hl,#0x0002
   4F44 E5            [11] 2735 	push	hl
   4F45 3E 3E         [ 7] 2736 	ld	a,#0x3E
   4F47 F5            [11] 2737 	push	af
   4F48 33            [ 6] 2738 	inc	sp
   4F49 21 7C 50      [10] 2739 	ld	hl,#___str_18
   4F4C E5            [11] 2740 	push	hl
   4F4D CD F3 76      [17] 2741 	call	_drawText
   4F50 F1            [10] 2742 	pop	af
   4F51 F1            [10] 2743 	pop	af
   4F52 33            [ 6] 2744 	inc	sp
                           2745 ;src/game.c:764: wait4UserKeypress();
   4F53 CD 01 7C      [17] 2746 	call	_wait4UserKeypress
                           2747 ;src/game.c:766: moved = 0;
   4F56 DD 36 FF 00   [19] 2748 	ld	-1 (ix),#0x00
                           2749 ;src/game.c:768: while (1) {
   4F5A                    2750 00128$:
                           2751 ;src/game.c:769: delay(24);
   4F5A 21 00 00      [10] 2752 	ld	hl,#0x0000
   4F5D E5            [11] 2753 	push	hl
   4F5E 21 18 00      [10] 2754 	ld	hl,#0x0018
   4F61 E5            [11] 2755 	push	hl
   4F62 CD D9 40      [17] 2756 	call	_delay
   4F65 F1            [10] 2757 	pop	af
   4F66 F1            [10] 2758 	pop	af
                           2759 ;src/game.c:770: cpct_scanKeyboard_f();
   4F67 CD A5 81      [17] 2760 	call	_cpct_scanKeyboard_f
                           2761 ;src/game.c:772: if (cpct_isKeyPressed(keys.right)) {
   4F6A 2A 46 91      [16] 2762 	ld	hl, (#_keys + 6)
   4F6D CD 99 81      [17] 2763 	call	_cpct_isKeyPressed
   4F70 7D            [ 4] 2764 	ld	a,l
   4F71 B7            [ 4] 2765 	or	a, a
   4F72 28 15         [12] 2766 	jr	Z,00121$
                           2767 ;src/game.c:773: if (rotateCellsRight()) {
   4F74 CD C9 46      [17] 2768 	call	_rotateCellsRight
   4F77 7D            [ 4] 2769 	ld	a,l
   4F78 B7            [ 4] 2770 	or	a, a
   4F79 28 75         [12] 2771 	jr	Z,00122$
                           2772 ;src/game.c:774: addRandomCellTurn(RIGHT);
   4F7B 3E 01         [ 7] 2773 	ld	a,#0x01
   4F7D F5            [11] 2774 	push	af
   4F7E 33            [ 6] 2775 	inc	sp
   4F7F CD BB 42      [17] 2776 	call	_addRandomCellTurn
   4F82 33            [ 6] 2777 	inc	sp
                           2778 ;src/game.c:775: moved = 1;
   4F83 DD 36 FF 01   [19] 2779 	ld	-1 (ix),#0x01
   4F87 18 67         [12] 2780 	jr	00122$
   4F89                    2781 00121$:
                           2782 ;src/game.c:777: } else if (cpct_isKeyPressed(keys.left)) {
   4F89 2A 44 91      [16] 2783 	ld	hl, (#_keys + 4)
   4F8C CD 99 81      [17] 2784 	call	_cpct_isKeyPressed
   4F8F 7D            [ 4] 2785 	ld	a,l
   4F90 B7            [ 4] 2786 	or	a, a
   4F91 28 14         [12] 2787 	jr	Z,00118$
                           2788 ;src/game.c:778: if (rotateCellsLeft()) {
   4F93 CD 0E 46      [17] 2789 	call	_rotateCellsLeft
   4F96 7D            [ 4] 2790 	ld	a,l
   4F97 B7            [ 4] 2791 	or	a, a
   4F98 28 56         [12] 2792 	jr	Z,00122$
                           2793 ;src/game.c:779: addRandomCellTurn(LEFT);
   4F9A AF            [ 4] 2794 	xor	a, a
   4F9B F5            [11] 2795 	push	af
   4F9C 33            [ 6] 2796 	inc	sp
   4F9D CD BB 42      [17] 2797 	call	_addRandomCellTurn
   4FA0 33            [ 6] 2798 	inc	sp
                           2799 ;src/game.c:780: moved = 1;
   4FA1 DD 36 FF 01   [19] 2800 	ld	-1 (ix),#0x01
   4FA5 18 49         [12] 2801 	jr	00122$
   4FA7                    2802 00118$:
                           2803 ;src/game.c:782: } else if (cpct_isKeyPressed(keys.down)) {
   4FA7 2A 42 91      [16] 2804 	ld	hl, (#_keys + 2)
   4FAA CD 99 81      [17] 2805 	call	_cpct_isKeyPressed
   4FAD 7D            [ 4] 2806 	ld	a,l
   4FAE B7            [ 4] 2807 	or	a, a
   4FAF 28 15         [12] 2808 	jr	Z,00115$
                           2809 ;src/game.c:783: if (rotateCellsDown()) {
   4FB1 CD 37 48      [17] 2810 	call	_rotateCellsDown
   4FB4 7D            [ 4] 2811 	ld	a,l
   4FB5 B7            [ 4] 2812 	or	a, a
   4FB6 28 38         [12] 2813 	jr	Z,00122$
                           2814 ;src/game.c:784: addRandomCellTurn(DOWN);
   4FB8 3E 03         [ 7] 2815 	ld	a,#0x03
   4FBA F5            [11] 2816 	push	af
   4FBB 33            [ 6] 2817 	inc	sp
   4FBC CD BB 42      [17] 2818 	call	_addRandomCellTurn
   4FBF 33            [ 6] 2819 	inc	sp
                           2820 ;src/game.c:785: moved = 1;
   4FC0 DD 36 FF 01   [19] 2821 	ld	-1 (ix),#0x01
   4FC4 18 2A         [12] 2822 	jr	00122$
   4FC6                    2823 00115$:
                           2824 ;src/game.c:787: } else if (cpct_isKeyPressed(keys.up)) {
   4FC6 2A 40 91      [16] 2825 	ld	hl, (#_keys + 0)
   4FC9 CD 99 81      [17] 2826 	call	_cpct_isKeyPressed
   4FCC 7D            [ 4] 2827 	ld	a,l
   4FCD B7            [ 4] 2828 	or	a, a
   4FCE 28 15         [12] 2829 	jr	Z,00112$
                           2830 ;src/game.c:788: if (rotateCellsUp()) {
   4FD0 CD 8A 47      [17] 2831 	call	_rotateCellsUp
   4FD3 7D            [ 4] 2832 	ld	a,l
   4FD4 B7            [ 4] 2833 	or	a, a
   4FD5 28 19         [12] 2834 	jr	Z,00122$
                           2835 ;src/game.c:789: addRandomCellTurn(UP);
   4FD7 3E 02         [ 7] 2836 	ld	a,#0x02
   4FD9 F5            [11] 2837 	push	af
   4FDA 33            [ 6] 2838 	inc	sp
   4FDB CD BB 42      [17] 2839 	call	_addRandomCellTurn
   4FDE 33            [ 6] 2840 	inc	sp
                           2841 ;src/game.c:790: moved = 1;
   4FDF DD 36 FF 01   [19] 2842 	ld	-1 (ix),#0x01
   4FE3 18 0B         [12] 2843 	jr	00122$
   4FE5                    2844 00112$:
                           2845 ;src/game.c:792: } else if (cpct_isKeyPressed(keys.abort))
   4FE5 2A 4C 91      [16] 2846 	ld	hl, (#_keys + 12)
   4FE8 CD 99 81      [17] 2847 	call	_cpct_isKeyPressed
   4FEB 7D            [ 4] 2848 	ld	a,l
   4FEC B7            [ 4] 2849 	or	a, a
   4FED C2 78 50      [10] 2850 	jp	NZ,00130$
                           2851 ;src/game.c:793: break;
   4FF0                    2852 00122$:
                           2853 ;src/game.c:795: if (moved) {
   4FF0 DD 7E FF      [19] 2854 	ld	a,-1 (ix)
   4FF3 B7            [ 4] 2855 	or	a, a
   4FF4 CA 5A 4F      [10] 2856 	jp	Z,00128$
                           2857 ;src/game.c:796: printCells();
   4FF7 CD F9 48      [17] 2858 	call	_printCells
                           2859 ;src/game.c:797: moved = 0;
   4FFA DD 36 FF 00   [19] 2860 	ld	-1 (ix),#0x00
                           2861 ;src/game.c:798: if (anyMovesLeft() == 0) {
   4FFE CD 34 42      [17] 2862 	call	_anyMovesLeft
   5001 7D            [ 4] 2863 	ld	a,l
   5002 B7            [ 4] 2864 	or	a, a
   5003 C2 5A 4F      [10] 2865 	jp	NZ,00128$
                           2866 ;src/game.c:799: drawScore();
   5006 CD AE 49      [17] 2867 	call	_drawScore
                           2868 ;src/game.c:800: wait4UserKeypress();
   5009 CD 01 7C      [17] 2869 	call	_wait4UserKeypress
                           2870 ;src/game.c:801: drawFrame(14, 60, 68, 142);
   500C 21 44 8E      [10] 2871 	ld	hl,#0x8E44
   500F E5            [11] 2872 	push	hl
   5010 21 0E 3C      [10] 2873 	ld	hl,#0x3C0E
   5013 E5            [11] 2874 	push	hl
   5014 CD 28 7E      [17] 2875 	call	_drawFrame
   5017 F1            [10] 2876 	pop	af
                           2877 ;src/game.c:802: drawFallingText("NO MORE MOVES", 20, 90, 96);
   5018 21 5A 60      [10] 2878 	ld	hl, #0x605A
   501B E3            [19] 2879 	ex	(sp),hl
   501C 3E 14         [ 7] 2880 	ld	a,#0x14
   501E F5            [11] 2881 	push	af
   501F 33            [ 6] 2882 	inc	sp
   5020 21 81 50      [10] 2883 	ld	hl,#___str_19
   5023 E5            [11] 2884 	push	hl
   5024 CD DD 79      [17] 2885 	call	_drawFallingText
   5027 F1            [10] 2886 	pop	af
                           2887 ;src/game.c:803: drawText("GAME OVER", 22, 70, 1);
   5028 33            [ 6] 2888 	inc	sp
   5029 21 46 01      [10] 2889 	ld	hl,#0x0146
   502C E3            [19] 2890 	ex	(sp),hl
   502D 3E 16         [ 7] 2891 	ld	a,#0x16
   502F F5            [11] 2892 	push	af
   5030 33            [ 6] 2893 	inc	sp
   5031 21 8F 50      [10] 2894 	ld	hl,#___str_20
   5034 E5            [11] 2895 	push	hl
   5035 CD F3 76      [17] 2896 	call	_drawText
   5038 F1            [10] 2897 	pop	af
   5039 F1            [10] 2898 	pop	af
   503A 33            [ 6] 2899 	inc	sp
                           2900 ;src/game.c:804: sprintf(aux_txt, "SCORE  %d", score);
   503B 2A 65 91      [16] 2901 	ld	hl,(_score + 2)
   503E E5            [11] 2902 	push	hl
   503F 2A 63 91      [16] 2903 	ld	hl,(_score)
   5042 E5            [11] 2904 	push	hl
   5043 21 99 50      [10] 2905 	ld	hl,#___str_21
   5046 E5            [11] 2906 	push	hl
   5047 2A 01 92      [16] 2907 	ld	hl,(_aux_txt)
   504A E5            [11] 2908 	push	hl
   504B CD BD 83      [17] 2909 	call	_sprintf
   504E 21 08 00      [10] 2910 	ld	hl,#8
   5051 39            [11] 2911 	add	hl,sp
   5052 F9            [ 6] 2912 	ld	sp,hl
                           2913 ;src/game.c:805: drawText(aux_txt, 22, 120, 1);
   5053 21 78 01      [10] 2914 	ld	hl,#0x0178
   5056 E5            [11] 2915 	push	hl
   5057 3E 16         [ 7] 2916 	ld	a,#0x16
   5059 F5            [11] 2917 	push	af
   505A 33            [ 6] 2918 	inc	sp
   505B 2A 01 92      [16] 2919 	ld	hl,(_aux_txt)
   505E E5            [11] 2920 	push	hl
   505F CD F3 76      [17] 2921 	call	_drawText
   5062 F1            [10] 2922 	pop	af
   5063 F1            [10] 2923 	pop	af
   5064 33            [ 6] 2924 	inc	sp
                           2925 ;src/game.c:806: wait4UserKeypress();
   5065 CD 01 7C      [17] 2926 	call	_wait4UserKeypress
                           2927 ;src/game.c:807: setHighScore(score);
   5068 2A 65 91      [16] 2928 	ld	hl,(_score + 2)
   506B E5            [11] 2929 	push	hl
   506C 2A 63 91      [16] 2930 	ld	hl,(_score)
   506F E5            [11] 2931 	push	hl
   5070 CD D4 4C      [17] 2932 	call	_setHighScore
   5073 F1            [10] 2933 	pop	af
   5074 F1            [10] 2934 	pop	af
                           2935 ;src/game.c:808: drawScoreBoard();
   5075 CD D1 4D      [17] 2936 	call	_drawScoreBoard
                           2937 ;src/game.c:809: break;
   5078                    2938 00130$:
   5078 33            [ 6] 2939 	inc	sp
   5079 DD E1         [14] 2940 	pop	ix
   507B C9            [10] 2941 	ret
   507C                    2942 ___str_18:
   507C 4E 45 58 54        2943 	.ascii "NEXT"
   5080 00                 2944 	.db 0x00
   5081                    2945 ___str_19:
   5081 4E 4F 20 4D 4F 52  2946 	.ascii "NO MORE MOVES"
        45 20 4D 4F 56 45
        53
   508E 00                 2947 	.db 0x00
   508F                    2948 ___str_20:
   508F 47 41 4D 45 20 4F  2949 	.ascii "GAME OVER"
        56 45 52
   5098 00                 2950 	.db 0x00
   5099                    2951 ___str_21:
   5099 53 43 4F 52 45 20  2952 	.ascii "SCORE  %d"
        20 25 64
   50A2 00                 2953 	.db 0x00
                           2954 ;src/game.c:816: void checkKeyboardMenu() {
                           2955 ;	---------------------------------
                           2956 ; Function checkKeyboardMenu
                           2957 ; ---------------------------------
   50A3                    2958 _checkKeyboardMenu::
                           2959 ;src/game.c:820: cpct_scanKeyboard_f();
   50A3 CD A5 81      [17] 2960 	call	_cpct_scanKeyboard_f
                           2961 ;src/game.c:822: if (selectedOption == 1) {
   50A6 3A 00 92      [13] 2962 	ld	a,(#_selectedOption + 0)
   50A9 3D            [ 4] 2963 	dec	a
   50AA 20 66         [12] 2964 	jr	NZ,00102$
                           2965 ;src/game.c:823: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 27, 71);
   50AC 21 1B 47      [10] 2966 	ld	hl,#0x471B
   50AF E5            [11] 2967 	push	hl
   50B0 21 00 C0      [10] 2968 	ld	hl,#0xC000
   50B3 E5            [11] 2969 	push	hl
   50B4 CD A1 85      [17] 2970 	call	_cpct_getScreenPtr
   50B7 4D            [ 4] 2971 	ld	c,l
   50B8 44            [ 4] 2972 	ld	b,h
                           2973 ;src/game.c:824: cpct_drawSprite(g_tile_marker_3, pvideo, 2, 9);
   50B9 21 02 09      [10] 2974 	ld	hl,#0x0902
   50BC E5            [11] 2975 	push	hl
   50BD C5            [11] 2976 	push	bc
   50BE 21 D0 5B      [10] 2977 	ld	hl,#_g_tile_marker_3
   50C1 E5            [11] 2978 	push	hl
   50C2 CD 1B 82      [17] 2979 	call	_cpct_drawSprite
                           2980 ;src/game.c:825: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 54, 71);
   50C5 21 36 47      [10] 2981 	ld	hl,#0x4736
   50C8 E5            [11] 2982 	push	hl
   50C9 21 00 C0      [10] 2983 	ld	hl,#0xC000
   50CC E5            [11] 2984 	push	hl
   50CD CD A1 85      [17] 2985 	call	_cpct_getScreenPtr
   50D0 4D            [ 4] 2986 	ld	c,l
   50D1 44            [ 4] 2987 	ld	b,h
                           2988 ;src/game.c:826: cpct_drawSprite(g_tile_marker_3, pvideo, 2, 9);
   50D2 21 02 09      [10] 2989 	ld	hl,#0x0902
   50D5 E5            [11] 2990 	push	hl
   50D6 C5            [11] 2991 	push	bc
   50D7 21 D0 5B      [10] 2992 	ld	hl,#_g_tile_marker_3
   50DA E5            [11] 2993 	push	hl
   50DB CD 1B 82      [17] 2994 	call	_cpct_drawSprite
                           2995 ;src/game.c:827: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 27, 51);
   50DE 21 1B 33      [10] 2996 	ld	hl,#0x331B
   50E1 E5            [11] 2997 	push	hl
   50E2 21 00 C0      [10] 2998 	ld	hl,#0xC000
   50E5 E5            [11] 2999 	push	hl
   50E6 CD A1 85      [17] 3000 	call	_cpct_getScreenPtr
   50E9 4D            [ 4] 3001 	ld	c,l
   50EA 44            [ 4] 3002 	ld	b,h
                           3003 ;src/game.c:828: cpct_drawSprite(g_tile_marker_0, pvideo, 2, 9);
   50EB 21 02 09      [10] 3004 	ld	hl,#0x0902
   50EE E5            [11] 3005 	push	hl
   50EF C5            [11] 3006 	push	bc
   50F0 21 BE 5B      [10] 3007 	ld	hl,#_g_tile_marker_0
   50F3 E5            [11] 3008 	push	hl
   50F4 CD 1B 82      [17] 3009 	call	_cpct_drawSprite
                           3010 ;src/game.c:829: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 54, 51);
   50F7 21 36 33      [10] 3011 	ld	hl,#0x3336
   50FA E5            [11] 3012 	push	hl
   50FB 21 00 C0      [10] 3013 	ld	hl,#0xC000
   50FE E5            [11] 3014 	push	hl
   50FF CD A1 85      [17] 3015 	call	_cpct_getScreenPtr
   5102 4D            [ 4] 3016 	ld	c,l
   5103 44            [ 4] 3017 	ld	b,h
                           3018 ;src/game.c:830: cpct_drawSprite(g_tile_marker_0, pvideo, 2, 9);
   5104 21 02 09      [10] 3019 	ld	hl,#0x0902
   5107 E5            [11] 3020 	push	hl
   5108 C5            [11] 3021 	push	bc
   5109 21 BE 5B      [10] 3022 	ld	hl,#_g_tile_marker_0
   510C E5            [11] 3023 	push	hl
   510D CD 1B 82      [17] 3024 	call	_cpct_drawSprite
   5110 18 64         [12] 3025 	jr	00103$
   5112                    3026 00102$:
                           3027 ;src/game.c:832: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 27, 51);
   5112 21 1B 33      [10] 3028 	ld	hl,#0x331B
   5115 E5            [11] 3029 	push	hl
   5116 21 00 C0      [10] 3030 	ld	hl,#0xC000
   5119 E5            [11] 3031 	push	hl
   511A CD A1 85      [17] 3032 	call	_cpct_getScreenPtr
   511D 4D            [ 4] 3033 	ld	c,l
   511E 44            [ 4] 3034 	ld	b,h
                           3035 ;src/game.c:833: cpct_drawSprite(g_tile_marker_3, pvideo, 2, 9);
   511F 21 02 09      [10] 3036 	ld	hl,#0x0902
   5122 E5            [11] 3037 	push	hl
   5123 C5            [11] 3038 	push	bc
   5124 21 D0 5B      [10] 3039 	ld	hl,#_g_tile_marker_3
   5127 E5            [11] 3040 	push	hl
   5128 CD 1B 82      [17] 3041 	call	_cpct_drawSprite
                           3042 ;src/game.c:834: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 54, 51);
   512B 21 36 33      [10] 3043 	ld	hl,#0x3336
   512E E5            [11] 3044 	push	hl
   512F 21 00 C0      [10] 3045 	ld	hl,#0xC000
   5132 E5            [11] 3046 	push	hl
   5133 CD A1 85      [17] 3047 	call	_cpct_getScreenPtr
   5136 4D            [ 4] 3048 	ld	c,l
   5137 44            [ 4] 3049 	ld	b,h
                           3050 ;src/game.c:835: cpct_drawSprite(g_tile_marker_3, pvideo, 2, 9);
   5138 21 02 09      [10] 3051 	ld	hl,#0x0902
   513B E5            [11] 3052 	push	hl
   513C C5            [11] 3053 	push	bc
   513D 21 D0 5B      [10] 3054 	ld	hl,#_g_tile_marker_3
   5140 E5            [11] 3055 	push	hl
   5141 CD 1B 82      [17] 3056 	call	_cpct_drawSprite
                           3057 ;src/game.c:836: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 27, 71);
   5144 21 1B 47      [10] 3058 	ld	hl,#0x471B
   5147 E5            [11] 3059 	push	hl
   5148 21 00 C0      [10] 3060 	ld	hl,#0xC000
   514B E5            [11] 3061 	push	hl
   514C CD A1 85      [17] 3062 	call	_cpct_getScreenPtr
   514F 4D            [ 4] 3063 	ld	c,l
   5150 44            [ 4] 3064 	ld	b,h
                           3065 ;src/game.c:837: cpct_drawSprite(g_tile_marker_0, pvideo, 2, 9);
   5151 21 02 09      [10] 3066 	ld	hl,#0x0902
   5154 E5            [11] 3067 	push	hl
   5155 C5            [11] 3068 	push	bc
   5156 21 BE 5B      [10] 3069 	ld	hl,#_g_tile_marker_0
   5159 E5            [11] 3070 	push	hl
   515A CD 1B 82      [17] 3071 	call	_cpct_drawSprite
                           3072 ;src/game.c:838: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 54, 71);
   515D 21 36 47      [10] 3073 	ld	hl,#0x4736
   5160 E5            [11] 3074 	push	hl
   5161 21 00 C0      [10] 3075 	ld	hl,#0xC000
   5164 E5            [11] 3076 	push	hl
   5165 CD A1 85      [17] 3077 	call	_cpct_getScreenPtr
   5168 4D            [ 4] 3078 	ld	c,l
   5169 44            [ 4] 3079 	ld	b,h
                           3080 ;src/game.c:839: cpct_drawSprite(g_tile_marker_0, pvideo, 2, 9);
   516A 21 02 09      [10] 3081 	ld	hl,#0x0902
   516D E5            [11] 3082 	push	hl
   516E C5            [11] 3083 	push	bc
   516F 21 BE 5B      [10] 3084 	ld	hl,#_g_tile_marker_0
   5172 E5            [11] 3085 	push	hl
   5173 CD 1B 82      [17] 3086 	call	_cpct_drawSprite
   5176                    3087 00103$:
                           3088 ;src/game.c:843: if (cpct_isKeyPressed(Key_1)) {
   5176 21 08 01      [10] 3089 	ld	hl,#0x0108
   5179 CD 99 81      [17] 3090 	call	_cpct_isKeyPressed
   517C 7D            [ 4] 3091 	ld	a,l
   517D B7            [ 4] 3092 	or	a, a
   517E CA 04 52      [10] 3093 	jp	Z,00110$
                           3094 ;src/game.c:845: selectedOption = 1;
   5181 21 00 92      [10] 3095 	ld	hl,#_selectedOption + 0
   5184 36 01         [10] 3096 	ld	(hl), #0x01
                           3097 ;src/game.c:847: waitKeyUp(Key_1);
   5186 21 08 01      [10] 3098 	ld	hl,#0x0108
   5189 E5            [11] 3099 	push	hl
   518A CD 68 7C      [17] 3100 	call	_waitKeyUp
                           3101 ;src/game.c:849: keys.up    = redefineKey("UP");
   518D 21 86 52      [10] 3102 	ld	hl, #___str_22
   5190 E3            [19] 3103 	ex	(sp),hl
   5191 CD 94 7C      [17] 3104 	call	_redefineKey
   5194 F1            [10] 3105 	pop	af
   5195 4D            [ 4] 3106 	ld	c,l
   5196 44            [ 4] 3107 	ld	b,h
   5197 ED 43 40 91   [20] 3108 	ld	(_keys), bc
                           3109 ;src/game.c:850: keys.down  = redefineKey("DOWN");
   519B 21 89 52      [10] 3110 	ld	hl,#___str_23
   519E E5            [11] 3111 	push	hl
   519F CD 94 7C      [17] 3112 	call	_redefineKey
   51A2 F1            [10] 3113 	pop	af
   51A3 4D            [ 4] 3114 	ld	c,l
   51A4 44            [ 4] 3115 	ld	b,h
   51A5 ED 43 42 91   [20] 3116 	ld	((_keys + 0x0002)), bc
                           3117 ;src/game.c:851: keys.left  = redefineKey("LEFT");
   51A9 21 8E 52      [10] 3118 	ld	hl,#___str_24
   51AC E5            [11] 3119 	push	hl
   51AD CD 94 7C      [17] 3120 	call	_redefineKey
   51B0 F1            [10] 3121 	pop	af
   51B1 4D            [ 4] 3122 	ld	c,l
   51B2 44            [ 4] 3123 	ld	b,h
   51B3 ED 43 44 91   [20] 3124 	ld	((_keys + 0x0004)), bc
                           3125 ;src/game.c:852: keys.right = redefineKey("RIGHT");
   51B7 21 93 52      [10] 3126 	ld	hl,#___str_25
   51BA E5            [11] 3127 	push	hl
   51BB CD 94 7C      [17] 3128 	call	_redefineKey
   51BE F1            [10] 3129 	pop	af
   51BF 4D            [ 4] 3130 	ld	c,l
   51C0 44            [ 4] 3131 	ld	b,h
   51C1 ED 43 46 91   [20] 3132 	ld	((_keys + 0x0006)), bc
                           3133 ;src/game.c:853: keys.pause = redefineKey("PAUSE");
   51C5 21 99 52      [10] 3134 	ld	hl,#___str_26
   51C8 E5            [11] 3135 	push	hl
   51C9 CD 94 7C      [17] 3136 	call	_redefineKey
   51CC F1            [10] 3137 	pop	af
   51CD 4D            [ 4] 3138 	ld	c,l
   51CE 44            [ 4] 3139 	ld	b,h
   51CF ED 43 4A 91   [20] 3140 	ld	((_keys + 0x000a)), bc
                           3141 ;src/game.c:854: keys.abort = redefineKey("ABORT");
   51D3 21 9F 52      [10] 3142 	ld	hl,#___str_27
   51D6 E5            [11] 3143 	push	hl
   51D7 CD 94 7C      [17] 3144 	call	_redefineKey
   51DA F1            [10] 3145 	pop	af
   51DB 4D            [ 4] 3146 	ld	c,l
   51DC 44            [ 4] 3147 	ld	b,h
   51DD ED 43 4C 91   [20] 3148 	ld	((_keys + 0x000c)), bc
                           3149 ;src/game.c:856: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 39 - 10 * FONT_W, 144);
   51E1 21 09 90      [10] 3150 	ld	hl,#0x9009
   51E4 E5            [11] 3151 	push	hl
   51E5 21 00 C0      [10] 3152 	ld	hl,#0xC000
   51E8 E5            [11] 3153 	push	hl
   51E9 CD A1 85      [17] 3154 	call	_cpct_getScreenPtr
                           3155 ;src/game.c:857: cpct_drawSolidBox(pvideo, cpct_px2byteM0(5, 5), 15 * FONT_W, FONT_H);
   51EC E5            [11] 3156 	push	hl
   51ED 21 05 05      [10] 3157 	ld	hl,#0x0505
   51F0 E5            [11] 3158 	push	hl
   51F1 CD 6E 84      [17] 3159 	call	_cpct_px2byteM0
   51F4 55            [ 4] 3160 	ld	d,l
   51F5 C1            [10] 3161 	pop	bc
   51F6 21 2D 0B      [10] 3162 	ld	hl,#0x0B2D
   51F9 E5            [11] 3163 	push	hl
   51FA D5            [11] 3164 	push	de
   51FB 33            [ 6] 3165 	inc	sp
   51FC C5            [11] 3166 	push	bc
   51FD CD B7 84      [17] 3167 	call	_cpct_drawSolidBox
   5200 F1            [10] 3168 	pop	af
   5201 F1            [10] 3169 	pop	af
   5202 33            [ 6] 3170 	inc	sp
   5203 C9            [10] 3171 	ret
   5204                    3172 00110$:
                           3173 ;src/game.c:861: else if (cpct_isKeyPressed(Key_2)) {
   5204 21 08 02      [10] 3174 	ld	hl,#0x0208
   5207 CD 99 81      [17] 3175 	call	_cpct_isKeyPressed
   520A 7D            [ 4] 3176 	ld	a,l
   520B B7            [ 4] 3177 	or	a, a
   520C 28 60         [12] 3178 	jr	Z,00107$
                           3179 ;src/game.c:863: selectedOption = 2;
   520E 21 00 92      [10] 3180 	ld	hl,#_selectedOption + 0
   5211 36 02         [10] 3181 	ld	(hl), #0x02
                           3182 ;src/game.c:865: keys.up    = Joy0_Up;
   5213 21 09 01      [10] 3183 	ld	hl,#0x0109
   5216 22 40 91      [16] 3184 	ld	(_keys), hl
                           3185 ;src/game.c:866: keys.down  = Joy0_Down;
   5219 26 02         [ 7] 3186 	ld	h, #0x02
   521B 22 42 91      [16] 3187 	ld	((_keys + 0x0002)), hl
                           3188 ;src/game.c:867: keys.left  = Joy0_Left;
   521E 26 04         [ 7] 3189 	ld	h, #0x04
   5220 22 44 91      [16] 3190 	ld	((_keys + 0x0004)), hl
                           3191 ;src/game.c:868: keys.right = Joy0_Right;
   5223 26 08         [ 7] 3192 	ld	h, #0x08
   5225 22 46 91      [16] 3193 	ld	((_keys + 0x0006)), hl
                           3194 ;src/game.c:870: waitKeyUp(Key_2);
   5228 21 08 02      [10] 3195 	ld	hl,#0x0208
   522B E5            [11] 3196 	push	hl
   522C CD 68 7C      [17] 3197 	call	_waitKeyUp
                           3198 ;src/game.c:872: keys.pause = redefineKey("PAUSE");
   522F 21 99 52      [10] 3199 	ld	hl, #___str_26
   5232 E3            [19] 3200 	ex	(sp),hl
   5233 CD 94 7C      [17] 3201 	call	_redefineKey
   5236 F1            [10] 3202 	pop	af
   5237 4D            [ 4] 3203 	ld	c,l
   5238 44            [ 4] 3204 	ld	b,h
   5239 ED 43 4A 91   [20] 3205 	ld	((_keys + 0x000a)), bc
                           3206 ;src/game.c:873: keys.abort = redefineKey("ABORT");
   523D 21 9F 52      [10] 3207 	ld	hl,#___str_27
   5240 E5            [11] 3208 	push	hl
   5241 CD 94 7C      [17] 3209 	call	_redefineKey
   5244 F1            [10] 3210 	pop	af
   5245 4D            [ 4] 3211 	ld	c,l
   5246 44            [ 4] 3212 	ld	b,h
   5247 ED 43 4C 91   [20] 3213 	ld	((_keys + 0x000c)), bc
                           3214 ;src/game.c:875: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 39 - 10 * FONT_W, 144);
   524B 21 09 90      [10] 3215 	ld	hl,#0x9009
   524E E5            [11] 3216 	push	hl
   524F 21 00 C0      [10] 3217 	ld	hl,#0xC000
   5252 E5            [11] 3218 	push	hl
   5253 CD A1 85      [17] 3219 	call	_cpct_getScreenPtr
                           3220 ;src/game.c:876: cpct_drawSolidBox(pvideo, cpct_px2byteM0(5, 5), 15 * FONT_W, FONT_H);
   5256 E5            [11] 3221 	push	hl
   5257 21 05 05      [10] 3222 	ld	hl,#0x0505
   525A E5            [11] 3223 	push	hl
   525B CD 6E 84      [17] 3224 	call	_cpct_px2byteM0
   525E 55            [ 4] 3225 	ld	d,l
   525F C1            [10] 3226 	pop	bc
   5260 21 2D 0B      [10] 3227 	ld	hl,#0x0B2D
   5263 E5            [11] 3228 	push	hl
   5264 D5            [11] 3229 	push	de
   5265 33            [ 6] 3230 	inc	sp
   5266 C5            [11] 3231 	push	bc
   5267 CD B7 84      [17] 3232 	call	_cpct_drawSolidBox
   526A F1            [10] 3233 	pop	af
   526B F1            [10] 3234 	pop	af
   526C 33            [ 6] 3235 	inc	sp
   526D C9            [10] 3236 	ret
   526E                    3237 00107$:
                           3238 ;src/game.c:881: else if (cpct_isKeyPressed(Key_4)) {
   526E 21 07 01      [10] 3239 	ld	hl,#0x0107
   5271 CD 99 81      [17] 3240 	call	_cpct_isKeyPressed
   5274 7D            [ 4] 3241 	ld	a,l
   5275 B7            [ 4] 3242 	or	a, a
   5276 C8            [11] 3243 	ret	Z
                           3244 ;src/game.c:883: waitKeyUp(Key_1);
   5277 21 08 01      [10] 3245 	ld	hl,#0x0108
   527A E5            [11] 3246 	push	hl
   527B CD 68 7C      [17] 3247 	call	_waitKeyUp
   527E F1            [10] 3248 	pop	af
                           3249 ;src/game.c:884: game();
   527F CD 22 4F      [17] 3250 	call	_game
                           3251 ;src/game.c:885: drawMenu();
   5282 CD E8 7C      [17] 3252 	call	_drawMenu
   5285 C9            [10] 3253 	ret
   5286                    3254 ___str_22:
   5286 55 50              3255 	.ascii "UP"
   5288 00                 3256 	.db 0x00
   5289                    3257 ___str_23:
   5289 44 4F 57 4E        3258 	.ascii "DOWN"
   528D 00                 3259 	.db 0x00
   528E                    3260 ___str_24:
   528E 4C 45 46 54        3261 	.ascii "LEFT"
   5292 00                 3262 	.db 0x00
   5293                    3263 ___str_25:
   5293 52 49 47 48 54     3264 	.ascii "RIGHT"
   5298 00                 3265 	.db 0x00
   5299                    3266 ___str_26:
   5299 50 41 55 53 45     3267 	.ascii "PAUSE"
   529E 00                 3268 	.db 0x00
   529F                    3269 ___str_27:
   529F 41 42 4F 52 54     3270 	.ascii "ABORT"
   52A4 00                 3271 	.db 0x00
                           3272 ;src/game.c:893: void threes() {
                           3273 ;	---------------------------------
                           3274 ; Function threes
                           3275 ; ---------------------------------
   52A5                    3276 _threes::
                           3277 ;src/game.c:896: while (1) {
   52A5                    3278 00105$:
                           3279 ;src/game.c:898: drawMenu();
   52A5 CD E8 7C      [17] 3280 	call	_drawMenu
                           3281 ;src/game.c:902: while (lapso < SWITCH_SCREENS) {
   52A8 01 00 00      [10] 3282 	ld	bc,#0x0000
   52AB 11 00 00      [10] 3283 	ld	de,#0x0000
   52AE                    3284 00101$:
   52AE 79            [ 4] 3285 	ld	a,c
   52AF D6 58         [ 7] 3286 	sub	a, #0x58
   52B1 78            [ 4] 3287 	ld	a,b
   52B2 DE 1B         [ 7] 3288 	sbc	a, #0x1B
   52B4 7B            [ 4] 3289 	ld	a,e
   52B5 DE 00         [ 7] 3290 	sbc	a, #0x00
   52B7 7A            [ 4] 3291 	ld	a,d
   52B8 DE 00         [ 7] 3292 	sbc	a, #0x00
   52BA 30 13         [12] 3293 	jr	NC,00103$
                           3294 ;src/game.c:904: checkKeyboardMenu();
   52BC C5            [11] 3295 	push	bc
   52BD D5            [11] 3296 	push	de
   52BE CD A3 50      [17] 3297 	call	_checkKeyboardMenu
   52C1 D1            [10] 3298 	pop	de
   52C2 C1            [10] 3299 	pop	bc
                           3300 ;src/game.c:906: lapso++;
   52C3 0C            [ 4] 3301 	inc	c
   52C4 20 E8         [12] 3302 	jr	NZ,00101$
   52C6 04            [ 4] 3303 	inc	b
   52C7 20 E5         [12] 3304 	jr	NZ,00101$
   52C9 1C            [ 4] 3305 	inc	e
   52CA 20 E2         [12] 3306 	jr	NZ,00101$
   52CC 14            [ 4] 3307 	inc	d
   52CD 18 DF         [12] 3308 	jr	00101$
   52CF                    3309 00103$:
                           3310 ;src/game.c:910: drawScoreBoard();
   52CF CD D1 4D      [17] 3311 	call	_drawScoreBoard
   52D2 18 D1         [12] 3312 	jr	00105$
                           3313 	.area _CODE
                           3314 	.area _INITIALIZER
   9229                    3315 __xinit__newNameHighScore:
   9229 20                 3316 	.db #0x20	; 32
   922A 20                 3317 	.db #0x20	; 32
   922B 20                 3318 	.db #0x20	; 32
   922C 20                 3319 	.db #0x20	; 32
   922D 20                 3320 	.db #0x20	; 32
   922E 20                 3321 	.db #0x20	; 32
   922F 20                 3322 	.db #0x20	; 32
   9230 20                 3323 	.db #0x20	; 32
   9231 20                 3324 	.db #0x20	; 32
   9232 20                 3325 	.db #0x20	; 32
   9233 00                 3326 	.db #0x00	; 0
   9234 00                 3327 	.db 0x00
   9235 00                 3328 	.db 0x00
   9236 00                 3329 	.db 0x00
   9237 00                 3330 	.db 0x00
                           3331 	.area _CABS (ABS)
