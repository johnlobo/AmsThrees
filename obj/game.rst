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
   90CE                      79 _keys::
   90CE                      80 	.ds 14
   90DC                      81 _cells::
   90DC                      82 	.ds 16
   90EC                      83 _adjacents::
   90EC                      84 	.ds 5
   90F1                      85 _score::
   90F1                      86 	.ds 4
   90F5                      87 _scoreHallOfFame::
   90F5                      88 	.ds 32
   9115                      89 _nameHallOfFame::
   9115                      90 	.ds 120
   918D                      91 _nextTile::
   918D                      92 	.ds 1
   918E                      93 _selectedOption::
   918E                      94 	.ds 1
   918F                      95 _aux_txt::
   918F                      96 	.ds 2
   9191                      97 _tileBag::
   9191                      98 	.ds 12
   919D                      99 _currentTile::
   919D                     100 	.ds 1
   919E                     101 _maxTiles::
   919E                     102 	.ds 1
                            103 ;--------------------------------------------------------
                            104 ; ram data
                            105 ;--------------------------------------------------------
                            106 	.area _INITIALIZED
   91A0                     107 _newNameHighScore::
   91A0                     108 	.ds 15
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
   4022 CD D1 82      [17]  164 	call	_cpct_getRandom_mxor_u8
   4025 55            [ 4]  165 	ld	d,l
   4026 3E 55         [ 7]  166 	ld	a,#0x55
   4028 F5            [11]  167 	push	af
   4029 33            [ 6]  168 	inc	sp
   402A D5            [11]  169 	push	de
   402B 33            [ 6]  170 	inc	sp
   402C CD 6D 82      [17]  171 	call	__divuchar
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
   4041 3E 91         [ 7]  190 	ld	a,#<(_tileBag)
   4043 DD 86 FF      [19]  191 	add	a, -1 (ix)
   4046 6F            [ 4]  192 	ld	l,a
   4047 3E 91         [ 7]  193 	ld	a,#>(_tileBag)
   4049 CE 00         [ 7]  194 	adc	a, #0x00
   404B 67            [ 4]  195 	ld	h,a
   404C 73            [ 7]  196 	ld	(hl),e
                            197 ;src/game.c:63: for (i = 0; i < 12; i++) {
   404D DD 34 FF      [23]  198 	inc	-1 (ix)
   4050 DD 7E FF      [19]  199 	ld	a,-1 (ix)
   4053 D6 0C         [ 7]  200 	sub	a, #0x0C
   4055 38 CA         [12]  201 	jr	C,00101$
                            202 ;src/game.c:70: currentTile = 0;
   4057 21 9D 91      [10]  203 	ld	hl,#_currentTile + 0
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
   40BB A2 5C               241 	.dw _tile_tiles_00
   40BD 32 5E               242 	.dw _tile_tiles_01
   40BF C2 5F               243 	.dw _tile_tiles_02
   40C1 52 61               244 	.dw _tile_tiles_03
   40C3 E2 62               245 	.dw _tile_tiles_04
   40C5 72 64               246 	.dw _tile_tiles_05
   40C7 02 66               247 	.dw _tile_tiles_06
   40C9 92 67               248 	.dw _tile_tiles_07
   40CB 22 69               249 	.dw _tile_tiles_08
   40CD B2 6A               250 	.dw _tile_tiles_09
   40CF 42 6C               251 	.dw _tile_tiles_10
   40D1 D2 6D               252 	.dw _tile_tiles_11
   40D3 62 6F               253 	.dw _tile_tiles_12
   40D5 F2 70               254 	.dw _tile_tiles_13
   40D7 82 72               255 	.dw _tile_tiles_14
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
   4108 3E DC         [ 7]  309 	ld	a,#<(_cells)
   410A 85            [ 4]  310 	add	a, l
   410B 6F            [ 4]  311 	ld	l,a
   410C 3E 90         [ 7]  312 	ld	a,#>(_cells)
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
   4127 01 ED 90      [10]  343 	ld	bc,#_adjacents + 1
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
   4138 21 EC 90      [10]  357 	ld	hl,#_adjacents
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
   4158 11 DC 90      [10]  381 	ld	de,#_cells+0
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
   4169 21 ED 90      [10]  392 	ld	hl,#(_adjacents + 0x0001)
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
   4188 C6 ED         [ 7]  410 	add	a, #<((_adjacents + 0x0001))
   418A 5F            [ 4]  411 	ld	e,a
   418B 3E 00         [ 7]  412 	ld	a,#0x00
   418D CE 90         [ 7]  413 	adc	a, #>((_adjacents + 0x0001))
   418F 57            [ 4]  414 	ld	d,a
   4190 DD 7E FE      [19]  415 	ld	a,-2 (ix)
   4193 C6 DC         [ 7]  416 	add	a, #<(_cells)
   4195 6F            [ 4]  417 	ld	l,a
   4196 DD 7E FF      [19]  418 	ld	a,-1 (ix)
   4199 CE 90         [ 7]  419 	adc	a, #>(_cells)
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
   41B6 C6 ED         [ 7]  440 	add	a, #<((_adjacents + 0x0001))
   41B8 5F            [ 4]  441 	ld	e,a
   41B9 3E 00         [ 7]  442 	ld	a,#0x00
   41BB CE 90         [ 7]  443 	adc	a, #>((_adjacents + 0x0001))
   41BD 57            [ 4]  444 	ld	d,a
   41BE DD 6E 04      [19]  445 	ld	l,4 (ix)
   41C1 2C            [ 4]  446 	inc	l
   41C2 26 00         [ 7]  447 	ld	h,#0x00
   41C4 29            [11]  448 	add	hl, hl
   41C5 29            [11]  449 	add	hl, hl
   41C6 3E DC         [ 7]  450 	ld	a,#<(_cells)
   41C8 85            [ 4]  451 	add	a, l
   41C9 6F            [ 4]  452 	ld	l,a
   41CA 3E 90         [ 7]  453 	ld	a,#>(_cells)
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
   41DF C6 ED         [ 7]  469 	add	a, #<((_adjacents + 0x0001))
   41E1 4F            [ 4]  470 	ld	c,a
   41E2 3E 00         [ 7]  471 	ld	a,#0x00
   41E4 CE 90         [ 7]  472 	adc	a, #>((_adjacents + 0x0001))
   41E6 47            [ 4]  473 	ld	b,a
   41E7 11 DC 90      [10]  474 	ld	de,#_cells+0
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
   41FD 21 EC 90      [10]  488 	ld	hl,#_adjacents
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
   4215 21 EC 90      [10]  507 	ld	hl, #_adjacents + 0
   4218 46            [ 7]  508 	ld	b,(hl)
   4219 7B            [ 4]  509 	ld	a,e
   421A 90            [ 4]  510 	sub	a, b
   421B 30 13         [12]  511 	jr	NC,00103$
                            512 ;src/game.c:179: if (adjacents.values[i] == value) {
   421D 21 ED 90      [10]  513 	ld	hl,#(_adjacents + 0x0001)
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
   4255 3E DC         [ 7]  569 	ld	a,#<(_cells)
   4257 85            [ 4]  570 	add	a, l
   4258 6F            [ 4]  571 	ld	l,a
   4259 3E 90         [ 7]  572 	ld	a,#>(_cells)
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
   42C4 DD 36 FE 00   [19]  669 	ld	-2 (ix),#0x00
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
   42EC DD 36 FE 03   [19]  702 	ld	-2 (ix),#0x03
                            703 ;src/game.c:243: break;
   42F0 18 04         [12]  704 	jr	00105$
                            705 ;src/game.c:244: case DOWN:
   42F2                     706 00104$:
                            707 ;src/game.c:245: i = 0;
   42F2 DD 36 FE 00   [19]  708 	ld	-2 (ix),#0x00
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
   430D CD D1 82      [17]  730 	call	_cpct_getRandom_mxor_u8
   4310 C1            [10]  731 	pop	bc
   4311 7D            [ 4]  732 	ld	a,l
   4312 07            [ 4]  733 	rlca
   4313 07            [ 4]  734 	rlca
   4314 E6 03         [ 7]  735 	and	a,#0x03
   4316 DD 77 FE      [19]  736 	ld	-2 (ix),a
   4319 18 0B         [12]  737 	jr	00126$
   431B                     738 00107$:
                            739 ;src/game.c:251: j = cpct_rand() / 64;
   431B C5            [11]  740 	push	bc
   431C CD D1 82      [17]  741 	call	_cpct_getRandom_mxor_u8
   431F C1            [10]  742 	pop	bc
   4320 7D            [ 4]  743 	ld	a,l
   4321 07            [ 4]  744 	rlca
   4322 07            [ 4]  745 	rlca
   4323 E6 03         [ 7]  746 	and	a,#0x03
   4325 4F            [ 4]  747 	ld	c,a
                            748 ;src/game.c:252: while (cells[i][j] != 0) {
   4326                     749 00126$:
   4326 DD 70 FF      [19]  750 	ld	-1 (ix),b
   4329                     751 00114$:
   4329 DD 6E FE      [19]  752 	ld	l,-2 (ix)
   432C 26 00         [ 7]  753 	ld	h,#0x00
   432E 29            [11]  754 	add	hl, hl
   432F 29            [11]  755 	add	hl, hl
   4330 11 DC 90      [10]  756 	ld	de,#_cells
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
   4345 DD 7E FF      [19]  771 	ld	a,-1 (ix)
   4348 B7            [ 4]  772 	or	a, a
   4349 28 0F         [12]  773 	jr	Z,00111$
   434B                     774 00110$:
                            775 ;src/game.c:254: i = cpct_rand() / 64;
   434B C5            [11]  776 	push	bc
   434C CD D1 82      [17]  777 	call	_cpct_getRandom_mxor_u8
   434F C1            [10]  778 	pop	bc
   4350 7D            [ 4]  779 	ld	a,l
   4351 07            [ 4]  780 	rlca
   4352 07            [ 4]  781 	rlca
   4353 E6 03         [ 7]  782 	and	a,#0x03
   4355 DD 77 FE      [19]  783 	ld	-2 (ix),a
   4358 18 CF         [12]  784 	jr	00114$
   435A                     785 00111$:
                            786 ;src/game.c:256: j = cpct_rand() / 64;
   435A CD D1 82      [17]  787 	call	_cpct_getRandom_mxor_u8
   435D 7D            [ 4]  788 	ld	a,l
   435E 07            [ 4]  789 	rlca
   435F 07            [ 4]  790 	rlca
   4360 E6 03         [ 7]  791 	and	a,#0x03
   4362 4F            [ 4]  792 	ld	c,a
   4363 18 C4         [12]  793 	jr	00114$
   4365                     794 00116$:
                            795 ;src/game.c:260: cells[i][j] = tileBag[currentTile];
   4365 3A 9D 91      [13]  796 	ld	a,(#_currentTile + 0)
   4368 C6 91         [ 7]  797 	add	a, #<(_tileBag)
   436A 4F            [ 4]  798 	ld	c,a
   436B 3E 00         [ 7]  799 	ld	a,#0x00
   436D CE 91         [ 7]  800 	adc	a, #>(_tileBag)
   436F 47            [ 4]  801 	ld	b,a
   4370 0A            [ 7]  802 	ld	a,(bc)
   4371 12            [ 7]  803 	ld	(de),a
                            804 ;src/game.c:261: if (currentTile < 11)
   4372 3A 9D 91      [13]  805 	ld	a,(#_currentTile + 0)
   4375 D6 0B         [ 7]  806 	sub	a, #0x0B
   4377 30 06         [12]  807 	jr	NC,00118$
                            808 ;src/game.c:262: currentTile++;
   4379 21 9D 91      [10]  809 	ld	hl, #_currentTile+0
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
   4387 CD D1 82      [17]  825 	call	_cpct_getRandom_mxor_u8
   438A 7D            [ 4]  826 	ld	a,l
   438B 07            [ 4]  827 	rlca
   438C 07            [ 4]  828 	rlca
   438D E6 03         [ 7]  829 	and	a,#0x03
   438F 4F            [ 4]  830 	ld	c,a
                            831 ;src/game.c:279: j = cpct_rand() / 64;
   4390 C5            [11]  832 	push	bc
   4391 CD D1 82      [17]  833 	call	_cpct_getRandom_mxor_u8
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
   43A0 11 DC 90      [10]  846 	ld	de,#_cells
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
   43AF CD D1 82      [17]  858 	call	_cpct_getRandom_mxor_u8
   43B2 7D            [ 4]  859 	ld	a,l
   43B3 07            [ 4]  860 	rlca
   43B4 07            [ 4]  861 	rlca
   43B5 E6 03         [ 7]  862 	and	a,#0x03
   43B7 4F            [ 4]  863 	ld	c,a
                            864 ;src/game.c:282: j = cpct_rand() / 64;
   43B8 C5            [11]  865 	push	bc
   43B9 CD D1 82      [17]  866 	call	_cpct_getRandom_mxor_u8
   43BC C1            [10]  867 	pop	bc
   43BD 7D            [ 4]  868 	ld	a,l
   43BE 07            [ 4]  869 	rlca
   43BF 07            [ 4]  870 	rlca
   43C0 E6 03         [ 7]  871 	and	a,#0x03
   43C2 47            [ 4]  872 	ld	b,a
   43C3 18 D6         [12]  873 	jr	00101$
   43C5                     874 00103$:
                            875 ;src/game.c:286: cells[i][j] = (cpct_rand() / 85) + 1;
   43C5 C5            [11]  876 	push	bc
   43C6 CD D1 82      [17]  877 	call	_cpct_getRandom_mxor_u8
   43C9 55            [ 4]  878 	ld	d,l
   43CA 3E 55         [ 7]  879 	ld	a,#0x55
   43CC F5            [11]  880 	push	af
   43CD 33            [ 6]  881 	inc	sp
   43CE D5            [11]  882 	push	de
   43CF 33            [ 6]  883 	inc	sp
   43D0 CD 6D 82      [17]  884 	call	__divuchar
   43D3 F1            [10]  885 	pop	af
   43D4 C1            [10]  886 	pop	bc
   43D5 7D            [ 4]  887 	ld	a,l
   43D6 3C            [ 4]  888 	inc	a
   43D7 02            [ 7]  889 	ld	(bc),a
   43D8 C9            [10]  890 	ret
                            891 ;src/game.c:297: void initCells() {
                            892 ;	---------------------------------
                            893 ; Function initCells
                            894 ; ---------------------------------
   43D9                     895 _initCells::
                            896 ;src/game.c:300: for (i = 0; i < 4; i++) {
   43D9 0E 00         [ 7]  897 	ld	c,#0x00
                            898 ;src/game.c:301: for (j = 0; j < 4; j++) {
   43DB                     899 00109$:
   43DB 06 00         [ 7]  900 	ld	b,#0x00
   43DD                     901 00103$:
                            902 ;src/game.c:302: cells[i][j] = 0;
   43DD 69            [ 4]  903 	ld	l,c
   43DE 26 00         [ 7]  904 	ld	h,#0x00
   43E0 29            [11]  905 	add	hl, hl
   43E1 29            [11]  906 	add	hl, hl
   43E2 11 DC 90      [10]  907 	ld	de,#_cells
   43E5 19            [11]  908 	add	hl,de
   43E6 58            [ 4]  909 	ld	e,b
   43E7 16 00         [ 7]  910 	ld	d,#0x00
   43E9 19            [11]  911 	add	hl,de
   43EA 36 00         [10]  912 	ld	(hl),#0x00
                            913 ;src/game.c:301: for (j = 0; j < 4; j++) {
   43EC 04            [ 4]  914 	inc	b
   43ED 78            [ 4]  915 	ld	a,b
   43EE D6 04         [ 7]  916 	sub	a, #0x04
   43F0 38 EB         [12]  917 	jr	C,00103$
                            918 ;src/game.c:300: for (i = 0; i < 4; i++) {
   43F2 0C            [ 4]  919 	inc	c
   43F3 79            [ 4]  920 	ld	a,c
   43F4 D6 04         [ 7]  921 	sub	a, #0x04
   43F6 38 E3         [12]  922 	jr	C,00109$
   43F8 C9            [10]  923 	ret
                            924 ;src/game.c:316: void initialization() {
                            925 ;	---------------------------------
                            926 ; Function initialization
                            927 ; ---------------------------------
   43F9                     928 _initialization::
                            929 ;src/game.c:319: drawText("AMSTHREES IS READY", 31, 76, 1);
   43F9 21 4C 01      [10]  930 	ld	hl,#0x014C
   43FC E5            [11]  931 	push	hl
   43FD 3E 1F         [ 7]  932 	ld	a,#0x1F
   43FF F5            [11]  933 	push	af
   4400 33            [ 6]  934 	inc	sp
   4401 21 21 45      [10]  935 	ld	hl,#___str_0
   4404 E5            [11]  936 	push	hl
   4405 CD 81 76      [17]  937 	call	_drawText
   4408 F1            [10]  938 	pop	af
                            939 ;src/game.c:320: drawText("PRESS ANY KEY", 20, 90, 1);
   4409 33            [ 6]  940 	inc	sp
   440A 21 5A 01      [10]  941 	ld	hl,#0x015A
   440D E3            [19]  942 	ex	(sp),hl
   440E 3E 14         [ 7]  943 	ld	a,#0x14
   4410 F5            [11]  944 	push	af
   4411 33            [ 6]  945 	inc	sp
   4412 21 34 45      [10]  946 	ld	hl,#___str_1
   4415 E5            [11]  947 	push	hl
   4416 CD 81 76      [17]  948 	call	_drawText
   4419 F1            [10]  949 	pop	af
   441A F1            [10]  950 	pop	af
   441B 33            [ 6]  951 	inc	sp
                            952 ;src/game.c:322: seed = wait4UserKeypress();
   441C CD 8F 7B      [17]  953 	call	_wait4UserKeypress
                            954 ;src/game.c:324: if (!seed)
   441F 7A            [ 4]  955 	ld	a,d
   4420 B3            [ 4]  956 	or	a, e
   4421 B4            [ 4]  957 	or	a, h
   4422 B5            [ 4]  958 	or	a,l
   4423 20 0A         [12]  959 	jr	NZ,00102$
                            960 ;src/game.c:325: seed++;
   4425 2C            [ 4]  961 	inc	l
   4426 20 07         [12]  962 	jr	NZ,00109$
   4428 24            [ 4]  963 	inc	h
   4429 20 04         [12]  964 	jr	NZ,00109$
   442B 1C            [ 4]  965 	inc	e
   442C 20 01         [12]  966 	jr	NZ,00109$
   442E 14            [ 4]  967 	inc	d
   442F                     968 00109$:
   442F                     969 00102$:
                            970 ;src/game.c:326: cpct_srand(seed);
   442F CD C3 82      [17]  971 	call	_cpct_setSeed_mxor
   4432 CD CB 82      [17]  972 	call	_cpct_restoreState_mxor_u8
                            973 ;src/game.c:328: scoreHallOfFame[0] = 6000;
   4435 21 70 17      [10]  974 	ld	hl,#0x1770
   4438 22 F5 90      [16]  975 	ld	(_scoreHallOfFame), hl
   443B 21 00 00      [10]  976 	ld	hl,#0x0000
   443E 22 F7 90      [16]  977 	ld	(_scoreHallOfFame+2), hl
                            978 ;src/game.c:329: scoreHallOfFame[1] = 5000;
   4441 21 88 13      [10]  979 	ld	hl,#0x1388
   4444 22 F9 90      [16]  980 	ld	((_scoreHallOfFame + 0x0004)), hl
   4447 21 00 00      [10]  981 	ld	hl,#0x0000
   444A 22 FB 90      [16]  982 	ld	((_scoreHallOfFame + 0x0004)+2), hl
                            983 ;src/game.c:330: scoreHallOfFame[2] = 4000;
   444D 21 A0 0F      [10]  984 	ld	hl,#0x0FA0
   4450 22 FD 90      [16]  985 	ld	((_scoreHallOfFame + 0x0008)), hl
   4453 21 00 00      [10]  986 	ld	hl,#0x0000
   4456 22 FF 90      [16]  987 	ld	((_scoreHallOfFame + 0x0008)+2), hl
                            988 ;src/game.c:331: scoreHallOfFame[3] = 3000;
   4459 21 B8 0B      [10]  989 	ld	hl,#0x0BB8
   445C 22 01 91      [16]  990 	ld	((_scoreHallOfFame + 0x000c)), hl
   445F 21 00 00      [10]  991 	ld	hl,#0x0000
   4462 22 03 91      [16]  992 	ld	((_scoreHallOfFame + 0x000c)+2), hl
                            993 ;src/game.c:332: scoreHallOfFame[4] = 1500;
   4465 21 DC 05      [10]  994 	ld	hl,#0x05DC
   4468 22 05 91      [16]  995 	ld	((_scoreHallOfFame + 0x0010)), hl
   446B 21 00 00      [10]  996 	ld	hl,#0x0000
   446E 22 07 91      [16]  997 	ld	((_scoreHallOfFame + 0x0010)+2), hl
                            998 ;src/game.c:333: scoreHallOfFame[5] = 1000;
   4471 21 E8 03      [10]  999 	ld	hl,#0x03E8
   4474 22 09 91      [16] 1000 	ld	((_scoreHallOfFame + 0x0014)), hl
   4477 21 00 00      [10] 1001 	ld	hl,#0x0000
   447A 22 0B 91      [16] 1002 	ld	((_scoreHallOfFame + 0x0014)+2), hl
                           1003 ;src/game.c:334: scoreHallOfFame[6] = 500;
   447D 21 F4 01      [10] 1004 	ld	hl,#0x01F4
   4480 22 0D 91      [16] 1005 	ld	((_scoreHallOfFame + 0x0018)), hl
   4483 21 00 00      [10] 1006 	ld	hl,#0x0000
   4486 22 0F 91      [16] 1007 	ld	((_scoreHallOfFame + 0x0018)+2), hl
                           1008 ;src/game.c:335: scoreHallOfFame[7] = 300;
   4489 21 2C 01      [10] 1009 	ld	hl,#0x012C
   448C 22 11 91      [16] 1010 	ld	((_scoreHallOfFame + 0x001c)), hl
   448F 21 00 00      [10] 1011 	ld	hl,#0x0000
   4492 22 13 91      [16] 1012 	ld	((_scoreHallOfFame + 0x001c)+2), hl
                           1013 ;src/game.c:337: strcpy(nameHallOfFame[0], "MARTIN");
   4495 11 15 91      [10] 1014 	ld	de,#_nameHallOfFame
   4498 21 42 45      [10] 1015 	ld	hl,#___str_2
   449B AF            [ 4] 1016 	xor	a, a
   449C                    1017 00110$:
   449C BE            [ 7] 1018 	cp	a, (hl)
   449D ED A0         [16] 1019 	ldi
   449F 20 FB         [12] 1020 	jr	NZ, 00110$
                           1021 ;src/game.c:338: strcpy(nameHallOfFame[1], "DIEGO");
   44A1 11 24 91      [10] 1022 	ld	de,#(_nameHallOfFame + 0x000f)
   44A4 21 49 45      [10] 1023 	ld	hl,#___str_3
   44A7 AF            [ 4] 1024 	xor	a, a
   44A8                    1025 00111$:
   44A8 BE            [ 7] 1026 	cp	a, (hl)
   44A9 ED A0         [16] 1027 	ldi
   44AB 20 FB         [12] 1028 	jr	NZ, 00111$
                           1029 ;src/game.c:339: strcpy(nameHallOfFame[2], "MARIA");
   44AD 11 33 91      [10] 1030 	ld	de,#(_nameHallOfFame + 0x001e)
   44B0 21 4F 45      [10] 1031 	ld	hl,#___str_4
   44B3 AF            [ 4] 1032 	xor	a, a
   44B4                    1033 00112$:
   44B4 BE            [ 7] 1034 	cp	a, (hl)
   44B5 ED A0         [16] 1035 	ldi
   44B7 20 FB         [12] 1036 	jr	NZ, 00112$
                           1037 ;src/game.c:340: strcpy(nameHallOfFame[3], "DAVID");
   44B9 11 42 91      [10] 1038 	ld	de,#(_nameHallOfFame + 0x002d)
   44BC 21 55 45      [10] 1039 	ld	hl,#___str_5
   44BF AF            [ 4] 1040 	xor	a, a
   44C0                    1041 00113$:
   44C0 BE            [ 7] 1042 	cp	a, (hl)
   44C1 ED A0         [16] 1043 	ldi
   44C3 20 FB         [12] 1044 	jr	NZ, 00113$
                           1045 ;src/game.c:341: strcpy(nameHallOfFame[4], "MASTER");
   44C5 11 51 91      [10] 1046 	ld	de,#(_nameHallOfFame + 0x003c)
   44C8 21 5B 45      [10] 1047 	ld	hl,#___str_6
   44CB AF            [ 4] 1048 	xor	a, a
   44CC                    1049 00114$:
   44CC BE            [ 7] 1050 	cp	a, (hl)
   44CD ED A0         [16] 1051 	ldi
   44CF 20 FB         [12] 1052 	jr	NZ, 00114$
                           1053 ;src/game.c:342: strcpy(nameHallOfFame[5], "EXPERT");
   44D1 11 60 91      [10] 1054 	ld	de,#(_nameHallOfFame + 0x004b)
   44D4 21 62 45      [10] 1055 	ld	hl,#___str_7
   44D7 AF            [ 4] 1056 	xor	a, a
   44D8                    1057 00115$:
   44D8 BE            [ 7] 1058 	cp	a, (hl)
   44D9 ED A0         [16] 1059 	ldi
   44DB 20 FB         [12] 1060 	jr	NZ, 00115$
                           1061 ;src/game.c:343: strcpy(nameHallOfFame[6], "INTERMEDIATE");
   44DD 11 6F 91      [10] 1062 	ld	de,#(_nameHallOfFame + 0x005a)
   44E0 21 69 45      [10] 1063 	ld	hl,#___str_8
   44E3 AF            [ 4] 1064 	xor	a, a
   44E4                    1065 00116$:
   44E4 BE            [ 7] 1066 	cp	a, (hl)
   44E5 ED A0         [16] 1067 	ldi
   44E7 20 FB         [12] 1068 	jr	NZ, 00116$
                           1069 ;src/game.c:344: strcpy(nameHallOfFame[7], "BEGINNER");
   44E9 11 7E 91      [10] 1070 	ld	de,#(_nameHallOfFame + 0x0069)
   44EC 21 76 45      [10] 1071 	ld	hl,#___str_9
   44EF AF            [ 4] 1072 	xor	a, a
   44F0                    1073 00117$:
   44F0 BE            [ 7] 1074 	cp	a, (hl)
   44F1 ED A0         [16] 1075 	ldi
   44F3 20 FB         [12] 1076 	jr	NZ, 00117$
                           1077 ;src/game.c:347: clearScreen();
   44F5 CD C4 80      [17] 1078 	call	_clearScreen
                           1079 ;src/game.c:349: keys.up    = Key_Q;
   44F8 21 08 08      [10] 1080 	ld	hl,#0x0808
   44FB 22 CE 90      [16] 1081 	ld	(_keys), hl
                           1082 ;src/game.c:350: keys.down  = Key_A;
   44FE 26 20         [ 7] 1083 	ld	h, #0x20
   4500 22 D0 90      [16] 1084 	ld	((_keys + 0x0002)), hl
                           1085 ;src/game.c:351: keys.left  = Key_O;
   4503 21 04 04      [10] 1086 	ld	hl,#0x0404
   4506 22 D2 90      [16] 1087 	ld	((_keys + 0x0004)), hl
                           1088 ;src/game.c:352: keys.right = Key_P;
   4509 21 03 08      [10] 1089 	ld	hl,#0x0803
   450C 22 D4 90      [16] 1090 	ld	((_keys + 0x0006)), hl
                           1091 ;src/game.c:354: keys.pause = Key_Del;
   450F 21 09 80      [10] 1092 	ld	hl,#0x8009
   4512 22 D8 90      [16] 1093 	ld	((_keys + 0x000a)), hl
                           1094 ;src/game.c:355: keys.abort = Key_Esc;
   4515 21 08 04      [10] 1095 	ld	hl,#0x0408
   4518 22 DA 90      [16] 1096 	ld	((_keys + 0x000c)), hl
                           1097 ;src/game.c:357: selectedOption = 1;
   451B 21 8E 91      [10] 1098 	ld	hl,#_selectedOption + 0
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
                           1131 ;src/game.c:369: void initGame() {
                           1132 ;	---------------------------------
                           1133 ; Function initGame
                           1134 ; ---------------------------------
   457F                    1135 _initGame::
                           1136 ;src/game.c:372: initCells();
   457F CD D9 43      [17] 1137 	call	_initCells
                           1138 ;src/game.c:374: for (i = 0; i < 9; i++) {
   4582 0E 09         [ 7] 1139 	ld	c,#0x09
   4584                    1140 00104$:
                           1141 ;src/game.c:375: addRandomCell();
   4584 C5            [11] 1142 	push	bc
   4585 CD 87 43      [17] 1143 	call	_addRandomCell
   4588 C1            [10] 1144 	pop	bc
   4589 41            [ 4] 1145 	ld	b,c
   458A 05            [ 4] 1146 	dec	b
                           1147 ;src/game.c:374: for (i = 0; i < 9; i++) {
   458B 78            [ 4] 1148 	ld	a,b
   458C 4F            [ 4] 1149 	ld	c,a
   458D B7            [ 4] 1150 	or	a, a
   458E 20 F4         [12] 1151 	jr	NZ,00104$
                           1152 ;src/game.c:378: score = 0;
   4590 AF            [ 4] 1153 	xor	a, a
   4591 32 F1 90      [13] 1154 	ld	(#_score + 0),a
   4594 32 F2 90      [13] 1155 	ld	(#_score + 1),a
   4597 32 F3 90      [13] 1156 	ld	(#_score + 2),a
   459A 32 F4 90      [13] 1157 	ld	(#_score + 3),a
                           1158 ;src/game.c:381: renewTileBag();
   459D C3 00 40      [10] 1159 	jp  _renewTileBag
                           1160 ;src/game.c:394: u8 rotateCellsLeft() {
                           1161 ;	---------------------------------
                           1162 ; Function rotateCellsLeft
                           1163 ; ---------------------------------
   45A0                    1164 _rotateCellsLeft::
   45A0 DD E5         [15] 1165 	push	ix
   45A2 DD 21 00 00   [14] 1166 	ld	ix,#0
   45A6 DD 39         [15] 1167 	add	ix,sp
   45A8 F5            [11] 1168 	push	af
   45A9 F5            [11] 1169 	push	af
   45AA 3B            [ 6] 1170 	dec	sp
                           1171 ;src/game.c:398: matched = 0;
   45AB 0E 00         [ 7] 1172 	ld	c,#0x00
                           1173 ;src/game.c:399: for (i = 0; i < 4; i++) {
   45AD DD 36 FB 00   [19] 1174 	ld	-5 (ix),#0x00
                           1175 ;src/game.c:400: for (j = 1; j < 4; j++) {
   45B1                    1176 00129$:
   45B1 1E 01         [ 7] 1177 	ld	e,#0x01
   45B3                    1178 00117$:
                           1179 ;src/game.c:401: if (cells[i][j] != 0) {
   45B3 DD 6E FB      [19] 1180 	ld	l,-5 (ix)
   45B6 26 00         [ 7] 1181 	ld	h,#0x00
   45B8 29            [11] 1182 	add	hl, hl
   45B9 29            [11] 1183 	add	hl, hl
   45BA 3E DC         [ 7] 1184 	ld	a,#<(_cells)
   45BC 85            [ 4] 1185 	add	a, l
   45BD DD 77 FC      [19] 1186 	ld	-4 (ix),a
   45C0 3E 90         [ 7] 1187 	ld	a,#>(_cells)
   45C2 8C            [ 4] 1188 	adc	a, h
   45C3 DD 77 FD      [19] 1189 	ld	-3 (ix),a
   45C6 DD 7E FC      [19] 1190 	ld	a,-4 (ix)
   45C9 83            [ 4] 1191 	add	a, e
   45CA DD 77 FE      [19] 1192 	ld	-2 (ix),a
   45CD DD 7E FD      [19] 1193 	ld	a,-3 (ix)
   45D0 CE 00         [ 7] 1194 	adc	a, #0x00
   45D2 DD 77 FF      [19] 1195 	ld	-1 (ix),a
   45D5 DD 6E FE      [19] 1196 	ld	l,-2 (ix)
   45D8 DD 66 FF      [19] 1197 	ld	h,-1 (ix)
   45DB 46            [ 7] 1198 	ld	b,(hl)
   45DC 78            [ 4] 1199 	ld	a,b
   45DD B7            [ 4] 1200 	or	a, a
   45DE 28 63         [12] 1201 	jr	Z,00118$
                           1202 ;src/game.c:403: if (cells[i][j - 1] == 0) {
   45E0 53            [ 4] 1203 	ld	d,e
   45E1 15            [ 4] 1204 	dec	d
   45E2 E5            [11] 1205 	push	hl
   45E3 DD 6E FC      [19] 1206 	ld	l,-4 (ix)
   45E6 DD 66 FD      [19] 1207 	ld	h,-3 (ix)
   45E9 E5            [11] 1208 	push	hl
   45EA FD E1         [14] 1209 	pop	iy
   45EC E1            [10] 1210 	pop	hl
   45ED C5            [11] 1211 	push	bc
   45EE 4A            [ 4] 1212 	ld	c,d
   45EF 06 00         [ 7] 1213 	ld	b,#0x00
   45F1 FD 09         [15] 1214 	add	iy, bc
   45F3 C1            [10] 1215 	pop	bc
   45F4 FD 56 00      [19] 1216 	ld	d, 0 (iy)
   45F7 7A            [ 4] 1217 	ld	a,d
   45F8 B7            [ 4] 1218 	or	a, a
   45F9 20 0F         [12] 1219 	jr	NZ,00111$
                           1220 ;src/game.c:404: cells[i][j - 1] = cells[i][j];
   45FB FD 70 00      [19] 1221 	ld	0 (iy), b
                           1222 ;src/game.c:405: cells[i][j] = 0;
   45FE DD 6E FE      [19] 1223 	ld	l,-2 (ix)
   4601 DD 66 FF      [19] 1224 	ld	h,-1 (ix)
   4604 36 00         [10] 1225 	ld	(hl),#0x00
                           1226 ;src/game.c:406: matched = 1;
   4606 0E 01         [ 7] 1227 	ld	c,#0x01
   4608 18 39         [12] 1228 	jr	00118$
   460A                    1229 00111$:
                           1230 ;src/game.c:407: } else if (((cells[i][j - 1] == 1) && (cells[i][j] == 2)) ||
   460A 7A            [ 4] 1231 	ld	a,d
   460B 3D            [ 4] 1232 	dec	a
   460C 20 05         [12] 1233 	jr	NZ,00109$
   460E 78            [ 4] 1234 	ld	a,b
   460F D6 02         [ 7] 1235 	sub	a, #0x02
   4611 28 09         [12] 1236 	jr	Z,00104$
   4613                    1237 00109$:
                           1238 ;src/game.c:408: ((cells[i][j - 1] == 2) && (cells[i][j] == 1))) {
   4613 7A            [ 4] 1239 	ld	a,d
   4614 D6 02         [ 7] 1240 	sub	a, #0x02
   4616 20 14         [12] 1241 	jr	NZ,00105$
   4618 78            [ 4] 1242 	ld	a,b
   4619 3D            [ 4] 1243 	dec	a
   461A 20 10         [12] 1244 	jr	NZ,00105$
   461C                    1245 00104$:
                           1246 ;src/game.c:409: cells[i][j - 1] = 3;
   461C FD 36 00 03   [19] 1247 	ld	0 (iy), #0x03
                           1248 ;src/game.c:410: cells[i][j] = 0;
   4620 DD 6E FE      [19] 1249 	ld	l,-2 (ix)
   4623 DD 66 FF      [19] 1250 	ld	h,-1 (ix)
   4626 36 00         [10] 1251 	ld	(hl),#0x00
                           1252 ;src/game.c:411: matched = 1;
   4628 0E 01         [ 7] 1253 	ld	c,#0x01
   462A 18 17         [12] 1254 	jr	00118$
   462C                    1255 00105$:
                           1256 ;src/game.c:412: } else if ((cells[i][j - 1] == cells[i][j]) && (cells[i][j] > 2)) {
   462C 78            [ 4] 1257 	ld	a,b
   462D 92            [ 4] 1258 	sub	a, d
   462E 20 13         [12] 1259 	jr	NZ,00118$
   4630 3E 02         [ 7] 1260 	ld	a,#0x02
   4632 90            [ 4] 1261 	sub	a, b
   4633 30 0E         [12] 1262 	jr	NC,00118$
                           1263 ;src/game.c:413: cells[i][j - 1]++;
   4635 14            [ 4] 1264 	inc	d
   4636 FD 72 00      [19] 1265 	ld	0 (iy), d
                           1266 ;src/game.c:414: cells[i][j] = 0;
   4639 DD 6E FE      [19] 1267 	ld	l,-2 (ix)
   463C DD 66 FF      [19] 1268 	ld	h,-1 (ix)
   463F 36 00         [10] 1269 	ld	(hl),#0x00
                           1270 ;src/game.c:415: matched = 1;
   4641 0E 01         [ 7] 1271 	ld	c,#0x01
   4643                    1272 00118$:
                           1273 ;src/game.c:400: for (j = 1; j < 4; j++) {
   4643 1C            [ 4] 1274 	inc	e
   4644 7B            [ 4] 1275 	ld	a,e
   4645 D6 04         [ 7] 1276 	sub	a, #0x04
   4647 DA B3 45      [10] 1277 	jp	C,00117$
                           1278 ;src/game.c:399: for (i = 0; i < 4; i++) {
   464A DD 34 FB      [23] 1279 	inc	-5 (ix)
   464D DD 7E FB      [19] 1280 	ld	a,-5 (ix)
   4650 D6 04         [ 7] 1281 	sub	a, #0x04
   4652 DA B1 45      [10] 1282 	jp	C,00129$
                           1283 ;src/game.c:420: return matched;
   4655 69            [ 4] 1284 	ld	l,c
   4656 DD F9         [10] 1285 	ld	sp, ix
   4658 DD E1         [14] 1286 	pop	ix
   465A C9            [10] 1287 	ret
                           1288 ;src/game.c:431: u8 rotateCellsRight() {
                           1289 ;	---------------------------------
                           1290 ; Function rotateCellsRight
                           1291 ; ---------------------------------
   465B                    1292 _rotateCellsRight::
   465B DD E5         [15] 1293 	push	ix
   465D DD 21 00 00   [14] 1294 	ld	ix,#0
   4661 DD 39         [15] 1295 	add	ix,sp
   4663 F5            [11] 1296 	push	af
   4664 F5            [11] 1297 	push	af
   4665 3B            [ 6] 1298 	dec	sp
                           1299 ;src/game.c:435: matched = 0;
   4666 0E 00         [ 7] 1300 	ld	c,#0x00
                           1301 ;src/game.c:436: for (i = 0; i < 4; i++) {
   4668 DD 36 FB 00   [19] 1302 	ld	-5 (ix),#0x00
                           1303 ;src/game.c:438: do {
   466C                    1304 00128$:
   466C 1E 03         [ 7] 1305 	ld	e,#0x03
   466E                    1306 00114$:
                           1307 ;src/game.c:439: j--;
   466E 1D            [ 4] 1308 	dec	e
                           1309 ;src/game.c:440: if (cells[i][j] != 0) {
   466F DD 6E FB      [19] 1310 	ld	l,-5 (ix)
   4672 26 00         [ 7] 1311 	ld	h,#0x00
   4674 29            [11] 1312 	add	hl, hl
   4675 29            [11] 1313 	add	hl, hl
   4676 3E DC         [ 7] 1314 	ld	a,#<(_cells)
   4678 85            [ 4] 1315 	add	a, l
   4679 DD 77 FE      [19] 1316 	ld	-2 (ix),a
   467C 3E 90         [ 7] 1317 	ld	a,#>(_cells)
   467E 8C            [ 4] 1318 	adc	a, h
   467F DD 77 FF      [19] 1319 	ld	-1 (ix),a
   4682 DD 7E FE      [19] 1320 	ld	a,-2 (ix)
   4685 83            [ 4] 1321 	add	a, e
   4686 DD 77 FC      [19] 1322 	ld	-4 (ix),a
   4689 DD 7E FF      [19] 1323 	ld	a,-1 (ix)
   468C CE 00         [ 7] 1324 	adc	a, #0x00
   468E DD 77 FD      [19] 1325 	ld	-3 (ix),a
   4691 DD 6E FC      [19] 1326 	ld	l,-4 (ix)
   4694 DD 66 FD      [19] 1327 	ld	h,-3 (ix)
   4697 46            [ 7] 1328 	ld	b,(hl)
   4698 78            [ 4] 1329 	ld	a,b
   4699 B7            [ 4] 1330 	or	a, a
   469A 28 6A         [12] 1331 	jr	Z,00115$
                           1332 ;src/game.c:442: if (cells[i][j + 1] == 0) {
   469C 53            [ 4] 1333 	ld	d,e
   469D 14            [ 4] 1334 	inc	d
   469E E5            [11] 1335 	push	hl
   469F DD 6E FE      [19] 1336 	ld	l,-2 (ix)
   46A2 DD 66 FF      [19] 1337 	ld	h,-1 (ix)
   46A5 E5            [11] 1338 	push	hl
   46A6 FD E1         [14] 1339 	pop	iy
   46A8 E1            [10] 1340 	pop	hl
   46A9 C5            [11] 1341 	push	bc
   46AA 4A            [ 4] 1342 	ld	c,d
   46AB 06 00         [ 7] 1343 	ld	b,#0x00
   46AD FD 09         [15] 1344 	add	iy, bc
   46AF C1            [10] 1345 	pop	bc
   46B0 FD 7E 00      [19] 1346 	ld	a, 0 (iy)
   46B3 B7            [ 4] 1347 	or	a, a
   46B4 20 0D         [12] 1348 	jr	NZ,00102$
                           1349 ;src/game.c:443: cells[i][j + 1] = cells[i][j];
   46B6 FD 70 00      [19] 1350 	ld	0 (iy), b
                           1351 ;src/game.c:444: cells[i][j] = 0;
   46B9 DD 6E FC      [19] 1352 	ld	l,-4 (ix)
   46BC DD 66 FD      [19] 1353 	ld	h,-3 (ix)
   46BF 36 00         [10] 1354 	ld	(hl),#0x00
                           1355 ;src/game.c:445: matched = 1;
   46C1 0E 01         [ 7] 1356 	ld	c,#0x01
   46C3                    1357 00102$:
                           1358 ;src/game.c:446: } if (((cells[i][j + 1] == 1) && (cells[i][j] == 2)) ||
   46C3 FD 46 00      [19] 1359 	ld	b, 0 (iy)
   46C6 DD 6E FC      [19] 1360 	ld	l,-4 (ix)
   46C9 DD 66 FD      [19] 1361 	ld	h,-3 (ix)
   46CC 56            [ 7] 1362 	ld	d,(hl)
   46CD 78            [ 4] 1363 	ld	a,b
   46CE 3D            [ 4] 1364 	dec	a
   46CF 20 05         [12] 1365 	jr	NZ,00111$
   46D1 7A            [ 4] 1366 	ld	a,d
   46D2 D6 02         [ 7] 1367 	sub	a, #0x02
   46D4 28 09         [12] 1368 	jr	Z,00106$
   46D6                    1369 00111$:
                           1370 ;src/game.c:447: ((cells[i][j + 1] == 2) && (cells[i][j] == 1))) {
   46D6 78            [ 4] 1371 	ld	a,b
   46D7 D6 02         [ 7] 1372 	sub	a, #0x02
   46D9 20 14         [12] 1373 	jr	NZ,00107$
   46DB 7A            [ 4] 1374 	ld	a,d
   46DC 3D            [ 4] 1375 	dec	a
   46DD 20 10         [12] 1376 	jr	NZ,00107$
   46DF                    1377 00106$:
                           1378 ;src/game.c:448: cells[i][j + 1] = 3;
   46DF FD 36 00 03   [19] 1379 	ld	0 (iy), #0x03
                           1380 ;src/game.c:449: cells[i][j] = 0;
   46E3 DD 6E FC      [19] 1381 	ld	l,-4 (ix)
   46E6 DD 66 FD      [19] 1382 	ld	h,-3 (ix)
   46E9 36 00         [10] 1383 	ld	(hl),#0x00
                           1384 ;src/game.c:450: matched = 1;
   46EB 0E 01         [ 7] 1385 	ld	c,#0x01
   46ED 18 17         [12] 1386 	jr	00115$
   46EF                    1387 00107$:
                           1388 ;src/game.c:451: } else if ((cells[i][j + 1] == cells[i][j]) && (cells[i][j] > 2)) {
   46EF 78            [ 4] 1389 	ld	a,b
   46F0 92            [ 4] 1390 	sub	a, d
   46F1 20 13         [12] 1391 	jr	NZ,00115$
   46F3 3E 02         [ 7] 1392 	ld	a,#0x02
   46F5 92            [ 4] 1393 	sub	a, d
   46F6 30 0E         [12] 1394 	jr	NC,00115$
                           1395 ;src/game.c:452: cells[i][j + 1]++;
   46F8 04            [ 4] 1396 	inc	b
   46F9 FD 70 00      [19] 1397 	ld	0 (iy), b
                           1398 ;src/game.c:453: cells[i][j] = 0;
   46FC DD 6E FC      [19] 1399 	ld	l,-4 (ix)
   46FF DD 66 FD      [19] 1400 	ld	h,-3 (ix)
   4702 36 00         [10] 1401 	ld	(hl),#0x00
                           1402 ;src/game.c:454: matched = 1;
   4704 0E 01         [ 7] 1403 	ld	c,#0x01
   4706                    1404 00115$:
                           1405 ;src/game.c:457: } while (j > 0);
   4706 7B            [ 4] 1406 	ld	a,e
   4707 B7            [ 4] 1407 	or	a, a
   4708 C2 6E 46      [10] 1408 	jp	NZ,00114$
                           1409 ;src/game.c:436: for (i = 0; i < 4; i++) {
   470B DD 34 FB      [23] 1410 	inc	-5 (ix)
   470E DD 7E FB      [19] 1411 	ld	a,-5 (ix)
   4711 D6 04         [ 7] 1412 	sub	a, #0x04
   4713 DA 6C 46      [10] 1413 	jp	C,00128$
                           1414 ;src/game.c:459: return matched;
   4716 69            [ 4] 1415 	ld	l,c
   4717 DD F9         [10] 1416 	ld	sp, ix
   4719 DD E1         [14] 1417 	pop	ix
   471B C9            [10] 1418 	ret
                           1419 ;src/game.c:470: u8 rotateCellsUp() {
                           1420 ;	---------------------------------
                           1421 ; Function rotateCellsUp
                           1422 ; ---------------------------------
   471C                    1423 _rotateCellsUp::
   471C DD E5         [15] 1424 	push	ix
   471E DD 21 00 00   [14] 1425 	ld	ix,#0
   4722 DD 39         [15] 1426 	add	ix,sp
   4724 F5            [11] 1427 	push	af
   4725 F5            [11] 1428 	push	af
                           1429 ;src/game.c:474: matched = 0;
                           1430 ;src/game.c:475: for (i = 1; i < 4; i++) {
   4726 01 00 01      [10] 1431 	ld	bc,#0x0100
                           1432 ;src/game.c:476: for (j = 0; j < 4; j++) {
   4729                    1433 00129$:
   4729 78            [ 4] 1434 	ld	a,b
   472A C6 FF         [ 7] 1435 	add	a,#0xFF
   472C DD 77 FE      [19] 1436 	ld	-2 (ix),a
   472F 1E 00         [ 7] 1437 	ld	e,#0x00
   4731                    1438 00117$:
                           1439 ;src/game.c:477: if (cells[i][j] != 0) {
   4731 68            [ 4] 1440 	ld	l,b
   4732 26 00         [ 7] 1441 	ld	h,#0x00
   4734 29            [11] 1442 	add	hl, hl
   4735 29            [11] 1443 	add	hl, hl
   4736 3E DC         [ 7] 1444 	ld	a,#<(_cells)
   4738 85            [ 4] 1445 	add	a, l
   4739 57            [ 4] 1446 	ld	d,a
   473A 3E 90         [ 7] 1447 	ld	a,#>(_cells)
   473C 8C            [ 4] 1448 	adc	a, h
   473D 6F            [ 4] 1449 	ld	l,a
   473E 7A            [ 4] 1450 	ld	a,d
   473F 83            [ 4] 1451 	add	a, e
   4740 DD 77 FC      [19] 1452 	ld	-4 (ix),a
   4743 7D            [ 4] 1453 	ld	a,l
   4744 CE 00         [ 7] 1454 	adc	a, #0x00
   4746 DD 77 FD      [19] 1455 	ld	-3 (ix),a
                           1456 ;src/game.c:484: ((cells[i - 1][j] == 2) && (cells[i][j] == 1))) {
   4749 E1            [10] 1457 	pop	hl
   474A E5            [11] 1458 	push	hl
   474B 56            [ 7] 1459 	ld	d,(hl)
                           1460 ;src/game.c:477: if (cells[i][j] != 0) {
   474C 7A            [ 4] 1461 	ld	a,d
   474D B7            [ 4] 1462 	or	a, a
   474E 28 65         [12] 1463 	jr	Z,00118$
                           1464 ;src/game.c:479: if (cells[i - 1][j] == 0) {
   4750 DD 6E FE      [19] 1465 	ld	l,-2 (ix)
   4753 26 00         [ 7] 1466 	ld	h,#0x00
   4755 29            [11] 1467 	add	hl, hl
   4756 29            [11] 1468 	add	hl, hl
   4757 FD 21 DC 90   [14] 1469 	ld	iy,#_cells
   475B C5            [11] 1470 	push	bc
   475C 4D            [ 4] 1471 	ld	c, l
   475D 44            [ 4] 1472 	ld	b, h
   475E FD 09         [15] 1473 	add	iy, bc
   4760 C1            [10] 1474 	pop	bc
   4761 D5            [11] 1475 	push	de
   4762 16 00         [ 7] 1476 	ld	d,#0x00
   4764 FD 19         [15] 1477 	add	iy, de
   4766 D1            [10] 1478 	pop	de
   4767 FD 7E 00      [19] 1479 	ld	a, 0 (iy)
   476A DD 77 FF      [19] 1480 	ld	-1 (ix), a
   476D B7            [ 4] 1481 	or	a, a
   476E 20 0B         [12] 1482 	jr	NZ,00111$
                           1483 ;src/game.c:480: cells[i - 1][j] = cells[i][j];
   4770 FD 72 00      [19] 1484 	ld	0 (iy), d
                           1485 ;src/game.c:481: cells[i][j] = 0;
   4773 E1            [10] 1486 	pop	hl
   4774 E5            [11] 1487 	push	hl
   4775 36 00         [10] 1488 	ld	(hl),#0x00
                           1489 ;src/game.c:482: matched = 1;
   4777 0E 01         [ 7] 1490 	ld	c,#0x01
   4779 18 3A         [12] 1491 	jr	00118$
   477B                    1492 00111$:
                           1493 ;src/game.c:483: } else if (((cells[i - 1][j] == 1) && (cells[i][j] == 2)) ||
   477B DD 7E FF      [19] 1494 	ld	a,-1 (ix)
   477E 3D            [ 4] 1495 	dec	a
   477F 20 05         [12] 1496 	jr	NZ,00109$
   4781 7A            [ 4] 1497 	ld	a,d
   4782 D6 02         [ 7] 1498 	sub	a, #0x02
   4784 28 0B         [12] 1499 	jr	Z,00104$
   4786                    1500 00109$:
                           1501 ;src/game.c:484: ((cells[i - 1][j] == 2) && (cells[i][j] == 1))) {
   4786 DD 7E FF      [19] 1502 	ld	a,-1 (ix)
   4789 D6 02         [ 7] 1503 	sub	a, #0x02
   478B 20 10         [12] 1504 	jr	NZ,00105$
   478D 7A            [ 4] 1505 	ld	a,d
   478E 3D            [ 4] 1506 	dec	a
   478F 20 0C         [12] 1507 	jr	NZ,00105$
   4791                    1508 00104$:
                           1509 ;src/game.c:485: cells[i - 1][j] = 3;
   4791 FD 36 00 03   [19] 1510 	ld	0 (iy), #0x03
                           1511 ;src/game.c:486: cells[i][j] = 0;
   4795 E1            [10] 1512 	pop	hl
   4796 E5            [11] 1513 	push	hl
   4797 36 00         [10] 1514 	ld	(hl),#0x00
                           1515 ;src/game.c:487: matched = 1;
   4799 0E 01         [ 7] 1516 	ld	c,#0x01
   479B 18 18         [12] 1517 	jr	00118$
   479D                    1518 00105$:
                           1519 ;src/game.c:488: } else if ((cells[i - 1][j] == cells[i][j]) && (cells[i][j] > 2)) {
   479D 7A            [ 4] 1520 	ld	a,d
   479E DD 96 FF      [19] 1521 	sub	a, -1 (ix)
   47A1 20 12         [12] 1522 	jr	NZ,00118$
   47A3 3E 02         [ 7] 1523 	ld	a,#0x02
   47A5 92            [ 4] 1524 	sub	a, d
   47A6 30 0D         [12] 1525 	jr	NC,00118$
                           1526 ;src/game.c:489: cells[i - 1][j]++;
   47A8 DD 4E FF      [19] 1527 	ld	c,-1 (ix)
   47AB 0C            [ 4] 1528 	inc	c
   47AC FD 71 00      [19] 1529 	ld	0 (iy), c
                           1530 ;src/game.c:490: cells[i][j] = 0;
   47AF E1            [10] 1531 	pop	hl
   47B0 E5            [11] 1532 	push	hl
   47B1 36 00         [10] 1533 	ld	(hl),#0x00
                           1534 ;src/game.c:491: matched = 1;
   47B3 0E 01         [ 7] 1535 	ld	c,#0x01
   47B5                    1536 00118$:
                           1537 ;src/game.c:476: for (j = 0; j < 4; j++) {
   47B5 1C            [ 4] 1538 	inc	e
   47B6 7B            [ 4] 1539 	ld	a,e
   47B7 D6 04         [ 7] 1540 	sub	a, #0x04
   47B9 DA 31 47      [10] 1541 	jp	C,00117$
                           1542 ;src/game.c:475: for (i = 1; i < 4; i++) {
   47BC 04            [ 4] 1543 	inc	b
   47BD 78            [ 4] 1544 	ld	a,b
   47BE D6 04         [ 7] 1545 	sub	a, #0x04
   47C0 DA 29 47      [10] 1546 	jp	C,00129$
                           1547 ;src/game.c:496: return matched;
   47C3 69            [ 4] 1548 	ld	l,c
   47C4 DD F9         [10] 1549 	ld	sp, ix
   47C6 DD E1         [14] 1550 	pop	ix
   47C8 C9            [10] 1551 	ret
                           1552 ;src/game.c:507: u8 rotateCellsDown() {
                           1553 ;	---------------------------------
                           1554 ; Function rotateCellsDown
                           1555 ; ---------------------------------
   47C9                    1556 _rotateCellsDown::
   47C9 DD E5         [15] 1557 	push	ix
   47CB DD 21 00 00   [14] 1558 	ld	ix,#0
   47CF DD 39         [15] 1559 	add	ix,sp
   47D1 F5            [11] 1560 	push	af
   47D2 F5            [11] 1561 	push	af
                           1562 ;src/game.c:511: matched = 0;
   47D3 0E 00         [ 7] 1563 	ld	c,#0x00
                           1564 ;src/game.c:513: do {
   47D5 DD 36 FC 03   [19] 1565 	ld	-4 (ix),#0x03
   47D9                    1566 00115$:
                           1567 ;src/game.c:514: i--;
   47D9 DD 35 FC      [23] 1568 	dec	-4 (ix)
                           1569 ;src/game.c:515: for (j = 0; j < 4; j++) {
   47DC DD 7E FC      [19] 1570 	ld	a,-4 (ix)
   47DF 3C            [ 4] 1571 	inc	a
   47E0 DD 77 FF      [19] 1572 	ld	-1 (ix),a
   47E3 1E 00         [ 7] 1573 	ld	e,#0x00
   47E5                    1574 00118$:
                           1575 ;src/game.c:516: if (cells[i][j] != 0) {
   47E5 DD 6E FC      [19] 1576 	ld	l,-4 (ix)
   47E8 26 00         [ 7] 1577 	ld	h,#0x00
   47EA 29            [11] 1578 	add	hl, hl
   47EB 29            [11] 1579 	add	hl, hl
   47EC 3E DC         [ 7] 1580 	ld	a,#<(_cells)
   47EE 85            [ 4] 1581 	add	a, l
   47EF 47            [ 4] 1582 	ld	b,a
   47F0 3E 90         [ 7] 1583 	ld	a,#>(_cells)
   47F2 8C            [ 4] 1584 	adc	a, h
   47F3 57            [ 4] 1585 	ld	d,a
   47F4 78            [ 4] 1586 	ld	a,b
   47F5 83            [ 4] 1587 	add	a, e
   47F6 DD 77 FD      [19] 1588 	ld	-3 (ix),a
   47F9 7A            [ 4] 1589 	ld	a,d
   47FA CE 00         [ 7] 1590 	adc	a, #0x00
   47FC DD 77 FE      [19] 1591 	ld	-2 (ix),a
   47FF DD 6E FD      [19] 1592 	ld	l,-3 (ix)
   4802 DD 66 FE      [19] 1593 	ld	h,-2 (ix)
   4805 46            [ 7] 1594 	ld	b,(hl)
   4806 78            [ 4] 1595 	ld	a,b
   4807 B7            [ 4] 1596 	or	a, a
   4808 28 6D         [12] 1597 	jr	Z,00119$
                           1598 ;src/game.c:518: if (cells[i + 1][j] == 0) {
   480A DD 6E FF      [19] 1599 	ld	l,-1 (ix)
   480D 26 00         [ 7] 1600 	ld	h,#0x00
   480F 29            [11] 1601 	add	hl, hl
   4810 29            [11] 1602 	add	hl, hl
   4811 FD 21 DC 90   [14] 1603 	ld	iy,#_cells
   4815 C5            [11] 1604 	push	bc
   4816 4D            [ 4] 1605 	ld	c, l
   4817 44            [ 4] 1606 	ld	b, h
   4818 FD 09         [15] 1607 	add	iy, bc
   481A C1            [10] 1608 	pop	bc
   481B D5            [11] 1609 	push	de
   481C 16 00         [ 7] 1610 	ld	d,#0x00
   481E FD 19         [15] 1611 	add	iy, de
   4820 D1            [10] 1612 	pop	de
   4821 FD 7E 00      [19] 1613 	ld	a, 0 (iy)
   4824 B7            [ 4] 1614 	or	a, a
   4825 20 0D         [12] 1615 	jr	NZ,00102$
                           1616 ;src/game.c:519: cells[i + 1][j] = cells[i][j];
   4827 FD 70 00      [19] 1617 	ld	0 (iy), b
                           1618 ;src/game.c:520: cells[i][j] = 0;
   482A DD 6E FD      [19] 1619 	ld	l,-3 (ix)
   482D DD 66 FE      [19] 1620 	ld	h,-2 (ix)
   4830 36 00         [10] 1621 	ld	(hl),#0x00
                           1622 ;src/game.c:521: matched = 1;
   4832 0E 01         [ 7] 1623 	ld	c,#0x01
   4834                    1624 00102$:
                           1625 ;src/game.c:518: if (cells[i + 1][j] == 0) {
   4834 FD 46 00      [19] 1626 	ld	b, 0 (iy)
                           1627 ;src/game.c:516: if (cells[i][j] != 0) {
   4837 DD 6E FD      [19] 1628 	ld	l,-3 (ix)
   483A DD 66 FE      [19] 1629 	ld	h,-2 (ix)
   483D 56            [ 7] 1630 	ld	d,(hl)
                           1631 ;src/game.c:522: } if (((cells[i + 1][j] == 1) && (cells[i][j] == 2)) ||
   483E 78            [ 4] 1632 	ld	a,b
   483F 3D            [ 4] 1633 	dec	a
   4840 20 05         [12] 1634 	jr	NZ,00111$
   4842 7A            [ 4] 1635 	ld	a,d
   4843 D6 02         [ 7] 1636 	sub	a, #0x02
   4845 28 09         [12] 1637 	jr	Z,00106$
   4847                    1638 00111$:
                           1639 ;src/game.c:523: ((cells[i + 1][j] == 2) && (cells[i][j] == 1))) {
   4847 78            [ 4] 1640 	ld	a,b
   4848 D6 02         [ 7] 1641 	sub	a, #0x02
   484A 20 14         [12] 1642 	jr	NZ,00107$
   484C 7A            [ 4] 1643 	ld	a,d
   484D 3D            [ 4] 1644 	dec	a
   484E 20 10         [12] 1645 	jr	NZ,00107$
   4850                    1646 00106$:
                           1647 ;src/game.c:524: cells[i + 1][j] = 3;
   4850 FD 36 00 03   [19] 1648 	ld	0 (iy), #0x03
                           1649 ;src/game.c:525: cells[i][j] = 0;
   4854 DD 6E FD      [19] 1650 	ld	l,-3 (ix)
   4857 DD 66 FE      [19] 1651 	ld	h,-2 (ix)
   485A 36 00         [10] 1652 	ld	(hl),#0x00
                           1653 ;src/game.c:526: matched = 1;
   485C 0E 01         [ 7] 1654 	ld	c,#0x01
   485E 18 17         [12] 1655 	jr	00119$
   4860                    1656 00107$:
                           1657 ;src/game.c:527: } else if ((cells[i + 1][j] == cells[i][j]) && (cells[i][j] > 2)) {
   4860 78            [ 4] 1658 	ld	a,b
   4861 92            [ 4] 1659 	sub	a, d
   4862 20 13         [12] 1660 	jr	NZ,00119$
   4864 3E 02         [ 7] 1661 	ld	a,#0x02
   4866 92            [ 4] 1662 	sub	a, d
   4867 30 0E         [12] 1663 	jr	NC,00119$
                           1664 ;src/game.c:528: cells[i + 1][j]++;
   4869 04            [ 4] 1665 	inc	b
   486A FD 70 00      [19] 1666 	ld	0 (iy), b
                           1667 ;src/game.c:529: cells[i][j] = 0;
   486D DD 6E FD      [19] 1668 	ld	l,-3 (ix)
   4870 DD 66 FE      [19] 1669 	ld	h,-2 (ix)
   4873 36 00         [10] 1670 	ld	(hl),#0x00
                           1671 ;src/game.c:530: matched = 1;
   4875 0E 01         [ 7] 1672 	ld	c,#0x01
   4877                    1673 00119$:
                           1674 ;src/game.c:515: for (j = 0; j < 4; j++) {
   4877 1C            [ 4] 1675 	inc	e
   4878 7B            [ 4] 1676 	ld	a,e
   4879 D6 04         [ 7] 1677 	sub	a, #0x04
   487B DA E5 47      [10] 1678 	jp	C,00118$
                           1679 ;src/game.c:535: } while (i > 0);
   487E DD 7E FC      [19] 1680 	ld	a,-4 (ix)
   4881 B7            [ 4] 1681 	or	a, a
   4882 C2 D9 47      [10] 1682 	jp	NZ,00115$
                           1683 ;src/game.c:537: return matched;
   4885 69            [ 4] 1684 	ld	l,c
   4886 DD F9         [10] 1685 	ld	sp, ix
   4888 DD E1         [14] 1686 	pop	ix
   488A C9            [10] 1687 	ret
                           1688 ;src/game.c:548: void printCells() {
                           1689 ;	---------------------------------
                           1690 ; Function printCells
                           1691 ; ---------------------------------
   488B                    1692 _printCells::
   488B DD E5         [15] 1693 	push	ix
   488D DD 21 00 00   [14] 1694 	ld	ix,#0
   4891 DD 39         [15] 1695 	add	ix,sp
   4893 F5            [11] 1696 	push	af
   4894 F5            [11] 1697 	push	af
   4895 3B            [ 6] 1698 	dec	sp
                           1699 ;src/game.c:555: for (i = 0; i < 4; i++) {
   4896 0E 00         [ 7] 1700 	ld	c,#0x00
   4898 DD 36 FF 00   [19] 1701 	ld	-1 (ix),#0x00
   489C                    1702 00105$:
                           1703 ;src/game.c:557: y = 6 + (i * 44);
   489C DD 7E FF      [19] 1704 	ld	a,-1 (ix)
   489F C6 06         [ 7] 1705 	add	a, #0x06
   48A1 DD 77 FB      [19] 1706 	ld	-5 (ix),a
                           1707 ;src/game.c:558: for (j = 0; j < 4; j++) {
   48A4 DD 36 FC 00   [19] 1708 	ld	-4 (ix),#0x00
   48A8 06 00         [ 7] 1709 	ld	b,#0x00
   48AA                    1710 00103$:
                           1711 ;src/game.c:560: x = 4 + (j * 11);
   48AA 50            [ 4] 1712 	ld	d,b
   48AB 14            [ 4] 1713 	inc	d
   48AC 14            [ 4] 1714 	inc	d
   48AD 14            [ 4] 1715 	inc	d
   48AE 14            [ 4] 1716 	inc	d
                           1717 ;src/game.c:561: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, x, y);
   48AF C5            [11] 1718 	push	bc
   48B0 DD 7E FB      [19] 1719 	ld	a,-5 (ix)
   48B3 F5            [11] 1720 	push	af
   48B4 33            [ 6] 1721 	inc	sp
   48B5 D5            [11] 1722 	push	de
   48B6 33            [ 6] 1723 	inc	sp
   48B7 21 00 C0      [10] 1724 	ld	hl,#0xC000
   48BA E5            [11] 1725 	push	hl
   48BB CD 2F 85      [17] 1726 	call	_cpct_getScreenPtr
   48BE C1            [10] 1727 	pop	bc
                           1728 ;src/game.c:562: cpct_drawSprite(tiles[cells[i][j]], pvmem, 10, 40);
   48BF DD 75 FD      [19] 1729 	ld	-3 (ix),l
   48C2 DD 74 FE      [19] 1730 	ld	-2 (ix),h
   48C5 69            [ 4] 1731 	ld	l,c
   48C6 26 00         [ 7] 1732 	ld	h,#0x00
   48C8 29            [11] 1733 	add	hl, hl
   48C9 29            [11] 1734 	add	hl, hl
   48CA 11 DC 90      [10] 1735 	ld	de,#_cells
   48CD 19            [11] 1736 	add	hl,de
   48CE DD 5E FC      [19] 1737 	ld	e,-4 (ix)
   48D1 16 00         [ 7] 1738 	ld	d,#0x00
   48D3 19            [11] 1739 	add	hl,de
   48D4 6E            [ 7] 1740 	ld	l,(hl)
   48D5 26 00         [ 7] 1741 	ld	h,#0x00
   48D7 29            [11] 1742 	add	hl, hl
   48D8 11 BB 40      [10] 1743 	ld	de,#_tiles
   48DB 19            [11] 1744 	add	hl,de
   48DC 5E            [ 7] 1745 	ld	e,(hl)
   48DD 23            [ 6] 1746 	inc	hl
   48DE 56            [ 7] 1747 	ld	d,(hl)
   48DF C5            [11] 1748 	push	bc
   48E0 21 0A 28      [10] 1749 	ld	hl,#0x280A
   48E3 E5            [11] 1750 	push	hl
   48E4 DD 6E FD      [19] 1751 	ld	l,-3 (ix)
   48E7 DD 66 FE      [19] 1752 	ld	h,-2 (ix)
   48EA E5            [11] 1753 	push	hl
   48EB D5            [11] 1754 	push	de
   48EC CD A9 81      [17] 1755 	call	_cpct_drawSprite
   48EF C1            [10] 1756 	pop	bc
                           1757 ;src/game.c:558: for (j = 0; j < 4; j++) {
   48F0 78            [ 4] 1758 	ld	a,b
   48F1 C6 0B         [ 7] 1759 	add	a, #0x0B
   48F3 47            [ 4] 1760 	ld	b,a
   48F4 DD 34 FC      [23] 1761 	inc	-4 (ix)
   48F7 DD 7E FC      [19] 1762 	ld	a,-4 (ix)
   48FA D6 04         [ 7] 1763 	sub	a, #0x04
   48FC 38 AC         [12] 1764 	jr	C,00103$
                           1765 ;src/game.c:555: for (i = 0; i < 4; i++) {
   48FE DD 7E FF      [19] 1766 	ld	a,-1 (ix)
   4901 C6 2C         [ 7] 1767 	add	a, #0x2C
   4903 DD 77 FF      [19] 1768 	ld	-1 (ix),a
   4906 0C            [ 4] 1769 	inc	c
   4907 79            [ 4] 1770 	ld	a,c
   4908 D6 04         [ 7] 1771 	sub	a, #0x04
   490A 38 90         [12] 1772 	jr	C,00105$
                           1773 ;src/game.c:565: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 62, 20);
   490C 21 3E 14      [10] 1774 	ld	hl,#0x143E
   490F E5            [11] 1775 	push	hl
   4910 21 00 C0      [10] 1776 	ld	hl,#0xC000
   4913 E5            [11] 1777 	push	hl
   4914 CD 2F 85      [17] 1778 	call	_cpct_getScreenPtr
   4917 4D            [ 4] 1779 	ld	c,l
   4918 44            [ 4] 1780 	ld	b,h
                           1781 ;src/game.c:566: cpct_drawSprite(tiles[tileBag[currentTile]], pvmem, 10, 40);
   4919 FD 21 91 91   [14] 1782 	ld	iy,#_tileBag
   491D ED 5B 9D 91   [20] 1783 	ld	de,(_currentTile)
   4921 16 00         [ 7] 1784 	ld	d,#0x00
   4923 FD 19         [15] 1785 	add	iy, de
   4925 FD 6E 00      [19] 1786 	ld	l, 0 (iy)
   4928 26 00         [ 7] 1787 	ld	h,#0x00
   492A 29            [11] 1788 	add	hl, hl
   492B 11 BB 40      [10] 1789 	ld	de,#_tiles
   492E 19            [11] 1790 	add	hl,de
   492F 5E            [ 7] 1791 	ld	e,(hl)
   4930 23            [ 6] 1792 	inc	hl
   4931 56            [ 7] 1793 	ld	d,(hl)
   4932 21 0A 28      [10] 1794 	ld	hl,#0x280A
   4935 E5            [11] 1795 	push	hl
   4936 C5            [11] 1796 	push	bc
   4937 D5            [11] 1797 	push	de
   4938 CD A9 81      [17] 1798 	call	_cpct_drawSprite
   493B DD F9         [10] 1799 	ld	sp, ix
   493D DD E1         [14] 1800 	pop	ix
   493F C9            [10] 1801 	ret
                           1802 ;src/game.c:577: void drawScore() {
                           1803 ;	---------------------------------
                           1804 ; Function drawScore
                           1805 ; ---------------------------------
   4940                    1806 _drawScore::
   4940 DD E5         [15] 1807 	push	ix
   4942 DD 21 00 00   [14] 1808 	ld	ix,#0
   4946 DD 39         [15] 1809 	add	ix,sp
   4948 21 F9 FF      [10] 1810 	ld	hl,#-7
   494B 39            [11] 1811 	add	hl,sp
   494C F9            [ 6] 1812 	ld	sp,hl
                           1813 ;src/game.c:581: for (i = 0; i < 4; i++) {
   494D 0E 00         [ 7] 1814 	ld	c,#0x00
   494F DD 36 FF 00   [19] 1815 	ld	-1 (ix),#0x00
                           1816 ;src/game.c:582: for (j = 0; j < 4; j++) {
   4953                    1817 00116$:
   4953 DD 7E FF      [19] 1818 	ld	a,-1 (ix)
   4956 C6 06         [ 7] 1819 	add	a, #0x06
   4958 DD 77 FE      [19] 1820 	ld	-2 (ix),a
   495B DD 36 F9 00   [19] 1821 	ld	-7 (ix),#0x00
   495F 06 00         [ 7] 1822 	ld	b,#0x00
   4961                    1823 00108$:
                           1824 ;src/game.c:584: z = cells[i][j];
   4961 69            [ 4] 1825 	ld	l,c
   4962 26 00         [ 7] 1826 	ld	h,#0x00
   4964 29            [11] 1827 	add	hl, hl
   4965 29            [11] 1828 	add	hl, hl
   4966 11 DC 90      [10] 1829 	ld	de,#_cells
   4969 19            [11] 1830 	add	hl,de
   496A DD 5E F9      [19] 1831 	ld	e,-7 (ix)
   496D 16 00         [ 7] 1832 	ld	d,#0x00
   496F 19            [11] 1833 	add	hl,de
   4970 5E            [ 7] 1834 	ld	e,(hl)
                           1835 ;src/game.c:585: if (z >= 3) {
                           1836 ;src/game.c:586: if (z == 3) {
   4971 7B            [ 4] 1837 	ld	a,e
   4972 FE 03         [ 7] 1838 	cp	a,#0x03
   4974 38 65         [12] 1839 	jr	C,00109$
   4976 D6 03         [ 7] 1840 	sub	a, #0x03
   4978 20 10         [12] 1841 	jr	NZ,00102$
                           1842 ;src/game.c:587: partialScore = 1;
   497A DD 36 FA 01   [19] 1843 	ld	-6 (ix),#0x01
   497E AF            [ 4] 1844 	xor	a, a
   497F DD 77 FB      [19] 1845 	ld	-5 (ix),a
   4982 DD 77 FC      [19] 1846 	ld	-4 (ix),a
   4985 DD 77 FD      [19] 1847 	ld	-3 (ix),a
   4988 18 16         [12] 1848 	jr	00103$
   498A                    1849 00102$:
                           1850 ;src/game.c:589: partialScore = scores[z];
   498A 26 00         [ 7] 1851 	ld	h,#0x00
   498C 6B            [ 4] 1852 	ld	l, e
   498D 29            [11] 1853 	add	hl, hl
   498E 29            [11] 1854 	add	hl, hl
   498F 11 7F 40      [10] 1855 	ld	de,#_scores
   4992 19            [11] 1856 	add	hl,de
   4993 C5            [11] 1857 	push	bc
   4994 EB            [ 4] 1858 	ex	de,hl
   4995 21 03 00      [10] 1859 	ld	hl, #0x0003
   4998 39            [11] 1860 	add	hl, sp
   4999 EB            [ 4] 1861 	ex	de, hl
   499A 01 04 00      [10] 1862 	ld	bc, #0x0004
   499D ED B0         [21] 1863 	ldir
   499F C1            [10] 1864 	pop	bc
   49A0                    1865 00103$:
                           1866 ;src/game.c:591: score += partialScore;
   49A0 21 F1 90      [10] 1867 	ld	hl,#_score
   49A3 7E            [ 7] 1868 	ld	a,(hl)
   49A4 DD 86 FA      [19] 1869 	add	a, -6 (ix)
   49A7 77            [ 7] 1870 	ld	(hl),a
   49A8 23            [ 6] 1871 	inc	hl
   49A9 7E            [ 7] 1872 	ld	a,(hl)
   49AA DD 8E FB      [19] 1873 	adc	a, -5 (ix)
   49AD 77            [ 7] 1874 	ld	(hl),a
   49AE 23            [ 6] 1875 	inc	hl
   49AF 7E            [ 7] 1876 	ld	a,(hl)
   49B0 DD 8E FC      [19] 1877 	adc	a, -4 (ix)
   49B3 77            [ 7] 1878 	ld	(hl),a
   49B4 23            [ 6] 1879 	inc	hl
   49B5 7E            [ 7] 1880 	ld	a,(hl)
   49B6 DD 8E FD      [19] 1881 	adc	a, -3 (ix)
   49B9 77            [ 7] 1882 	ld	(hl),a
                           1883 ;src/game.c:592: drawNumber(partialScore, 4, 3 + (11 * j), 6 + (44 * i));
   49BA 50            [ 4] 1884 	ld	d,b
   49BB 14            [ 4] 1885 	inc	d
   49BC 14            [ 4] 1886 	inc	d
   49BD 14            [ 4] 1887 	inc	d
   49BE E5            [11] 1888 	push	hl
   49BF DD 6E FA      [19] 1889 	ld	l,-6 (ix)
   49C2 DD 66 FB      [19] 1890 	ld	h,-5 (ix)
   49C5 E5            [11] 1891 	push	hl
   49C6 FD E1         [14] 1892 	pop	iy
   49C8 E1            [10] 1893 	pop	hl
   49C9 C5            [11] 1894 	push	bc
   49CA DD 7E FE      [19] 1895 	ld	a,-2 (ix)
   49CD F5            [11] 1896 	push	af
   49CE 33            [ 6] 1897 	inc	sp
   49CF 1E 04         [ 7] 1898 	ld	e, #0x04
   49D1 D5            [11] 1899 	push	de
   49D2 FD E5         [15] 1900 	push	iy
   49D4 CD E4 75      [17] 1901 	call	_drawNumber
   49D7 F1            [10] 1902 	pop	af
   49D8 F1            [10] 1903 	pop	af
   49D9 33            [ 6] 1904 	inc	sp
   49DA C1            [10] 1905 	pop	bc
   49DB                    1906 00109$:
                           1907 ;src/game.c:582: for (j = 0; j < 4; j++) {
   49DB 78            [ 4] 1908 	ld	a,b
   49DC C6 0B         [ 7] 1909 	add	a, #0x0B
   49DE 47            [ 4] 1910 	ld	b,a
   49DF DD 34 F9      [23] 1911 	inc	-7 (ix)
   49E2 DD 7E F9      [19] 1912 	ld	a,-7 (ix)
   49E5 D6 04         [ 7] 1913 	sub	a, #0x04
   49E7 DA 61 49      [10] 1914 	jp	C,00108$
                           1915 ;src/game.c:581: for (i = 0; i < 4; i++) {
   49EA DD 7E FF      [19] 1916 	ld	a,-1 (ix)
   49ED C6 2C         [ 7] 1917 	add	a, #0x2C
   49EF DD 77 FF      [19] 1918 	ld	-1 (ix),a
   49F2 0C            [ 4] 1919 	inc	c
   49F3 79            [ 4] 1920 	ld	a,c
   49F4 D6 04         [ 7] 1921 	sub	a, #0x04
   49F6 DA 53 49      [10] 1922 	jp	C,00116$
   49F9 DD F9         [10] 1923 	ld	sp, ix
   49FB DD E1         [14] 1924 	pop	ix
   49FD C9            [10] 1925 	ret
                           1926 ;src/game.c:606: void getName() {
                           1927 ;	---------------------------------
                           1928 ; Function getName
                           1929 ; ---------------------------------
   49FE                    1930 _getName::
   49FE DD E5         [15] 1931 	push	ix
   4A00 DD 21 00 00   [14] 1932 	ld	ix,#0
   4A04 DD 39         [15] 1933 	add	ix,sp
   4A06 21 FA FF      [10] 1934 	ld	hl,#-6
   4A09 39            [11] 1935 	add	hl,sp
   4A0A F9            [ 6] 1936 	ld	sp,hl
                           1937 ;src/game.c:610: drawFrame(9, 60, 73, 150);
   4A0B 21 49 96      [10] 1938 	ld	hl,#0x9649
   4A0E E5            [11] 1939 	push	hl
   4A0F 21 09 3C      [10] 1940 	ld	hl,#0x3C09
   4A12 E5            [11] 1941 	push	hl
   4A13 CD B6 7D      [17] 1942 	call	_drawFrame
   4A16 F1            [10] 1943 	pop	af
                           1944 ;src/game.c:612: drawText("NEW HIGH SCORE", 20, 70, 1);
   4A17 21 46 01      [10] 1945 	ld	hl, #0x0146
   4A1A E3            [19] 1946 	ex	(sp),hl
   4A1B 3E 14         [ 7] 1947 	ld	a,#0x14
   4A1D F5            [11] 1948 	push	af
   4A1E 33            [ 6] 1949 	inc	sp
   4A1F 21 29 4C      [10] 1950 	ld	hl,#___str_10
   4A22 E5            [11] 1951 	push	hl
   4A23 CD 81 76      [17] 1952 	call	_drawText
   4A26 F1            [10] 1953 	pop	af
                           1954 ;src/game.c:613: drawText("ENTER YOUR NAME", 18, 85, 1);
   4A27 33            [ 6] 1955 	inc	sp
   4A28 21 55 01      [10] 1956 	ld	hl,#0x0155
   4A2B E3            [19] 1957 	ex	(sp),hl
   4A2C 3E 12         [ 7] 1958 	ld	a,#0x12
   4A2E F5            [11] 1959 	push	af
   4A2F 33            [ 6] 1960 	inc	sp
   4A30 21 38 4C      [10] 1961 	ld	hl,#___str_11
   4A33 E5            [11] 1962 	push	hl
   4A34 CD 81 76      [17] 1963 	call	_drawText
   4A37 F1            [10] 1964 	pop	af
                           1965 ;src/game.c:614: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 11, 100);
   4A38 33            [ 6] 1966 	inc	sp
   4A39 21 0B 64      [10] 1967 	ld	hl,#0x640B
   4A3C E3            [19] 1968 	ex	(sp),hl
   4A3D 21 00 C0      [10] 1969 	ld	hl,#0xC000
   4A40 E5            [11] 1970 	push	hl
   4A41 CD 2F 85      [17] 1971 	call	_cpct_getScreenPtr
   4A44 4D            [ 4] 1972 	ld	c,l
   4A45 44            [ 4] 1973 	ld	b,h
                           1974 ;src/game.c:615: cpct_drawSprite(g_tile_symbols_1, pvmem, 3, 11);
   4A46 21 03 0B      [10] 1975 	ld	hl,#0x0B03
   4A49 E5            [11] 1976 	push	hl
   4A4A C5            [11] 1977 	push	bc
   4A4B 21 E6 5B      [10] 1978 	ld	hl,#_g_tile_symbols_1
   4A4E E5            [11] 1979 	push	hl
   4A4F CD A9 81      [17] 1980 	call	_cpct_drawSprite
                           1981 ;src/game.c:616: drawText(" TO CHANGE LETTER", 19, 100, 0);
   4A52 21 64 00      [10] 1982 	ld	hl,#0x0064
   4A55 E5            [11] 1983 	push	hl
   4A56 3E 13         [ 7] 1984 	ld	a,#0x13
   4A58 F5            [11] 1985 	push	af
   4A59 33            [ 6] 1986 	inc	sp
   4A5A 21 48 4C      [10] 1987 	ld	hl,#___str_12
   4A5D E5            [11] 1988 	push	hl
   4A5E CD 81 76      [17] 1989 	call	_drawText
   4A61 F1            [10] 1990 	pop	af
                           1991 ;src/game.c:617: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 16, 100);
   4A62 33            [ 6] 1992 	inc	sp
   4A63 21 10 64      [10] 1993 	ld	hl,#0x6410
   4A66 E3            [19] 1994 	ex	(sp),hl
   4A67 21 00 C0      [10] 1995 	ld	hl,#0xC000
   4A6A E5            [11] 1996 	push	hl
   4A6B CD 2F 85      [17] 1997 	call	_cpct_getScreenPtr
   4A6E 4D            [ 4] 1998 	ld	c,l
   4A6F 44            [ 4] 1999 	ld	b,h
                           2000 ;src/game.c:618: cpct_drawSprite(g_tile_symbols_2, pvmem, 3, 11);
   4A70 21 03 0B      [10] 2001 	ld	hl,#0x0B03
   4A73 E5            [11] 2002 	push	hl
   4A74 C5            [11] 2003 	push	bc
   4A75 21 07 5C      [10] 2004 	ld	hl,#_g_tile_symbols_2
   4A78 E5            [11] 2005 	push	hl
   4A79 CD A9 81      [17] 2006 	call	_cpct_drawSprite
                           2007 ;src/game.c:619: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 16, 100);
   4A7C 21 10 64      [10] 2008 	ld	hl,#0x6410
   4A7F E5            [11] 2009 	push	hl
   4A80 21 00 C0      [10] 2010 	ld	hl,#0xC000
   4A83 E5            [11] 2011 	push	hl
   4A84 CD 2F 85      [17] 2012 	call	_cpct_getScreenPtr
   4A87 4D            [ 4] 2013 	ld	c,l
   4A88 44            [ 4] 2014 	ld	b,h
                           2015 ;src/game.c:620: cpct_drawSprite(g_font_big[38], pvmem, 3, 11);
   4A89 21 03 0B      [10] 2016 	ld	hl,#0x0B03
   4A8C E5            [11] 2017 	push	hl
   4A8D C5            [11] 2018 	push	bc
   4A8E 21 41 59      [10] 2019 	ld	hl,#(_g_font_big + 0x04e6)
   4A91 E5            [11] 2020 	push	hl
   4A92 CD A9 81      [17] 2021 	call	_cpct_drawSprite
                           2022 ;src/game.c:621: drawText(" [ TO END", 20, 115, 1);
   4A95 21 73 01      [10] 2023 	ld	hl,#0x0173
   4A98 E5            [11] 2024 	push	hl
   4A99 3E 14         [ 7] 2025 	ld	a,#0x14
   4A9B F5            [11] 2026 	push	af
   4A9C 33            [ 6] 2027 	inc	sp
   4A9D 21 5A 4C      [10] 2028 	ld	hl,#___str_13
   4AA0 E5            [11] 2029 	push	hl
   4AA1 CD 81 76      [17] 2030 	call	_drawText
   4AA4 F1            [10] 2031 	pop	af
                           2032 ;src/game.c:622: drawFrame(12, 130, 70, 160);
   4AA5 33            [ 6] 2033 	inc	sp
   4AA6 21 46 A0      [10] 2034 	ld	hl,#0xA046
   4AA9 E3            [19] 2035 	ex	(sp),hl
   4AAA 21 0C 82      [10] 2036 	ld	hl,#0x820C
   4AAD E5            [11] 2037 	push	hl
   4AAE CD B6 7D      [17] 2038 	call	_drawFrame
   4AB1 F1            [10] 2039 	pop	af
   4AB2 F1            [10] 2040 	pop	af
                           2041 ;src/game.c:623: strcpy(newNameHighScore, "A");
   4AB3 11 A0 91      [10] 2042 	ld	de,#_newNameHighScore
   4AB6 21 64 4C      [10] 2043 	ld	hl,#___str_14
   4AB9 AF            [ 4] 2044 	xor	a, a
   4ABA                    2045 00166$:
   4ABA BE            [ 7] 2046 	cp	a, (hl)
   4ABB ED A0         [16] 2047 	ldi
   4ABD 20 FB         [12] 2048 	jr	NZ, 00166$
                           2049 ;src/game.c:624: drawText(newNameHighScore, 0, 140, 1);
   4ABF 21 8C 01      [10] 2050 	ld	hl,#0x018C
   4AC2 E5            [11] 2051 	push	hl
   4AC3 AF            [ 4] 2052 	xor	a, a
   4AC4 F5            [11] 2053 	push	af
   4AC5 33            [ 6] 2054 	inc	sp
   4AC6 21 A0 91      [10] 2055 	ld	hl,#_newNameHighScore
   4AC9 E5            [11] 2056 	push	hl
   4ACA CD 81 76      [17] 2057 	call	_drawText
   4ACD F1            [10] 2058 	pop	af
   4ACE F1            [10] 2059 	pop	af
   4ACF 33            [ 6] 2060 	inc	sp
                           2061 ;src/game.c:625: pos = 0;
   4AD0 DD 36 FB 00   [19] 2062 	ld	-5 (ix),#0x00
                           2063 ;src/game.c:626: chr = 65;
   4AD4 DD 36 FA 41   [19] 2064 	ld	-6 (ix),#0x41
                           2065 ;src/game.c:627: moved = 0;
   4AD8 DD 36 FC 00   [19] 2066 	ld	-4 (ix),#0x00
                           2067 ;src/game.c:628: while (1) {
   4ADC                    2068 00126$:
                           2069 ;src/game.c:629: delay(24);
   4ADC 21 00 00      [10] 2070 	ld	hl,#0x0000
   4ADF E5            [11] 2071 	push	hl
   4AE0 21 18 00      [10] 2072 	ld	hl,#0x0018
   4AE3 E5            [11] 2073 	push	hl
   4AE4 CD D9 40      [17] 2074 	call	_delay
   4AE7 F1            [10] 2075 	pop	af
   4AE8 F1            [10] 2076 	pop	af
                           2077 ;src/game.c:630: cpct_scanKeyboard_f();
   4AE9 CD 33 81      [17] 2078 	call	_cpct_scanKeyboard_f
                           2079 ;src/game.c:632: if (cpct_isKeyPressed(keys.down)) {
   4AEC 2A D0 90      [16] 2080 	ld	hl, (#_keys + 2)
   4AEF CD 27 81      [17] 2081 	call	_cpct_isKeyPressed
   4AF2 DD 75 FF      [19] 2082 	ld	-1 (ix),l
                           2083 ;src/game.c:640: newNameHighScore[pos] = '\0';
   4AF5 3E A0         [ 7] 2084 	ld	a,#<(_newNameHighScore)
   4AF7 DD 86 FB      [19] 2085 	add	a, -5 (ix)
   4AFA DD 77 FD      [19] 2086 	ld	-3 (ix),a
   4AFD 3E 91         [ 7] 2087 	ld	a,#>(_newNameHighScore)
   4AFF CE 00         [ 7] 2088 	adc	a, #0x00
   4B01 DD 77 FE      [19] 2089 	ld	-2 (ix),a
                           2090 ;src/game.c:632: if (cpct_isKeyPressed(keys.down)) {
   4B04 DD 7E FF      [19] 2091 	ld	a,-1 (ix)
   4B07 B7            [ 4] 2092 	or	a, a
   4B08 28 0A         [12] 2093 	jr	Z,00116$
                           2094 ;src/game.c:633: chr++;
   4B0A DD 34 FA      [23] 2095 	inc	-6 (ix)
                           2096 ;src/game.c:634: moved = 1;
   4B0D DD 36 FC 01   [19] 2097 	ld	-4 (ix),#0x01
   4B11 C3 B2 4B      [10] 2098 	jp	00117$
   4B14                    2099 00116$:
                           2100 ;src/game.c:635: } else if (cpct_isKeyPressed(keys.up)) {
   4B14 2A CE 90      [16] 2101 	ld	hl, (#_keys + 0)
   4B17 CD 27 81      [17] 2102 	call	_cpct_isKeyPressed
   4B1A 7D            [ 4] 2103 	ld	a,l
   4B1B B7            [ 4] 2104 	or	a, a
   4B1C 28 0A         [12] 2105 	jr	Z,00113$
                           2106 ;src/game.c:636: chr--;
   4B1E DD 35 FA      [23] 2107 	dec	-6 (ix)
                           2108 ;src/game.c:637: moved = 1;
   4B21 DD 36 FC 01   [19] 2109 	ld	-4 (ix),#0x01
   4B25 C3 B2 4B      [10] 2110 	jp	00117$
   4B28                    2111 00113$:
                           2112 ;src/game.c:638: } else if (cpct_isKeyPressed(keys.right)) {
   4B28 2A D4 90      [16] 2113 	ld	hl, (#_keys + 6)
   4B2B CD 27 81      [17] 2114 	call	_cpct_isKeyPressed
   4B2E 7D            [ 4] 2115 	ld	a,l
   4B2F B7            [ 4] 2116 	or	a, a
   4B30 28 42         [12] 2117 	jr	Z,00110$
                           2118 ;src/game.c:639: if (chr == 91) {
   4B32 DD 7E FA      [19] 2119 	ld	a,-6 (ix)
   4B35 D6 5B         [ 7] 2120 	sub	a, #0x5B
   4B37 20 0B         [12] 2121 	jr	NZ,00102$
                           2122 ;src/game.c:640: newNameHighScore[pos] = '\0';
   4B39 DD 6E FD      [19] 2123 	ld	l,-3 (ix)
   4B3C DD 66 FE      [19] 2124 	ld	h,-2 (ix)
   4B3F 36 00         [10] 2125 	ld	(hl),#0x00
                           2126 ;src/game.c:641: break;
   4B41 C3 24 4C      [10] 2127 	jp	00128$
   4B44                    2128 00102$:
                           2129 ;src/game.c:644: pos++;
   4B44 DD 34 FB      [23] 2130 	inc	-5 (ix)
                           2131 ;src/game.c:640: newNameHighScore[pos] = '\0';
   4B47 3E A0         [ 7] 2132 	ld	a,#<(_newNameHighScore)
   4B49 DD 86 FB      [19] 2133 	add	a, -5 (ix)
   4B4C DD 77 FD      [19] 2134 	ld	-3 (ix),a
   4B4F 3E 91         [ 7] 2135 	ld	a,#>(_newNameHighScore)
   4B51 CE 00         [ 7] 2136 	adc	a, #0x00
   4B53 DD 77 FE      [19] 2137 	ld	-2 (ix),a
                           2138 ;src/game.c:645: newNameHighScore[pos] = 65;
   4B56 DD 6E FD      [19] 2139 	ld	l,-3 (ix)
   4B59 DD 66 FE      [19] 2140 	ld	h,-2 (ix)
   4B5C 36 41         [10] 2141 	ld	(hl),#0x41
                           2142 ;src/game.c:646: newNameHighScore[pos + 1] = '\0';
   4B5E DD 4E FB      [19] 2143 	ld	c,-5 (ix)
   4B61 0C            [ 4] 2144 	inc	c
   4B62 21 A0 91      [10] 2145 	ld	hl,#_newNameHighScore
   4B65 06 00         [ 7] 2146 	ld	b,#0x00
   4B67 09            [11] 2147 	add	hl, bc
   4B68 36 00         [10] 2148 	ld	(hl),#0x00
                           2149 ;src/game.c:647: chr = 65;
   4B6A DD 36 FA 41   [19] 2150 	ld	-6 (ix),#0x41
                           2151 ;src/game.c:648: moved = 1;
   4B6E DD 36 FC 01   [19] 2152 	ld	-4 (ix),#0x01
   4B72 18 3E         [12] 2153 	jr	00117$
   4B74                    2154 00110$:
                           2155 ;src/game.c:651: } else if (cpct_isKeyPressed(keys.left)) {
   4B74 2A D2 90      [16] 2156 	ld	hl, (#_keys + 4)
   4B77 CD 27 81      [17] 2157 	call	_cpct_isKeyPressed
   4B7A 7D            [ 4] 2158 	ld	a,l
   4B7B B7            [ 4] 2159 	or	a, a
   4B7C 28 2A         [12] 2160 	jr	Z,00107$
                           2161 ;src/game.c:652: newNameHighScore[pos] = '\0';
   4B7E DD 6E FD      [19] 2162 	ld	l,-3 (ix)
   4B81 DD 66 FE      [19] 2163 	ld	h,-2 (ix)
   4B84 36 00         [10] 2164 	ld	(hl),#0x00
                           2165 ;src/game.c:653: pos--;
   4B86 DD 35 FB      [23] 2166 	dec	-5 (ix)
                           2167 ;src/game.c:640: newNameHighScore[pos] = '\0';
   4B89 3E A0         [ 7] 2168 	ld	a,#<(_newNameHighScore)
   4B8B DD 86 FB      [19] 2169 	add	a, -5 (ix)
   4B8E DD 77 FD      [19] 2170 	ld	-3 (ix),a
   4B91 3E 91         [ 7] 2171 	ld	a,#>(_newNameHighScore)
   4B93 CE 00         [ 7] 2172 	adc	a, #0x00
   4B95 DD 77 FE      [19] 2173 	ld	-2 (ix),a
                           2174 ;src/game.c:654: chr = newNameHighScore[pos];
   4B98 DD 6E FD      [19] 2175 	ld	l,-3 (ix)
   4B9B DD 66 FE      [19] 2176 	ld	h,-2 (ix)
   4B9E 7E            [ 7] 2177 	ld	a,(hl)
   4B9F DD 77 FA      [19] 2178 	ld	-6 (ix),a
                           2179 ;src/game.c:655: moved = 1;
   4BA2 DD 36 FC 01   [19] 2180 	ld	-4 (ix),#0x01
   4BA6 18 0A         [12] 2181 	jr	00117$
   4BA8                    2182 00107$:
                           2183 ;src/game.c:656: } else if (cpct_isKeyPressed(keys.abort)) {
   4BA8 2A DA 90      [16] 2184 	ld	hl, (#_keys + 12)
   4BAB CD 27 81      [17] 2185 	call	_cpct_isKeyPressed
   4BAE 7D            [ 4] 2186 	ld	a,l
   4BAF B7            [ 4] 2187 	or	a, a
   4BB0 20 72         [12] 2188 	jr	NZ,00128$
                           2189 ;src/game.c:657: break;
   4BB2                    2190 00117$:
                           2191 ;src/game.c:659: if (moved) {
   4BB2 DD 7E FC      [19] 2192 	ld	a,-4 (ix)
   4BB5 B7            [ 4] 2193 	or	a, a
   4BB6 CA DC 4A      [10] 2194 	jp	Z,00126$
                           2195 ;src/game.c:660: moved = 0;
   4BB9 DD 36 FC 00   [19] 2196 	ld	-4 (ix),#0x00
                           2197 ;src/game.c:661: if (chr > 91)
   4BBD 3E 5B         [ 7] 2198 	ld	a,#0x5B
   4BBF DD 96 FA      [19] 2199 	sub	a, -6 (ix)
   4BC2 30 06         [12] 2200 	jr	NC,00121$
                           2201 ;src/game.c:662: chr = 65;
   4BC4 DD 36 FA 41   [19] 2202 	ld	-6 (ix),#0x41
   4BC8 18 0B         [12] 2203 	jr	00122$
   4BCA                    2204 00121$:
                           2205 ;src/game.c:663: else if (chr < 65)
   4BCA DD 7E FA      [19] 2206 	ld	a,-6 (ix)
   4BCD D6 41         [ 7] 2207 	sub	a, #0x41
   4BCF 30 04         [12] 2208 	jr	NC,00122$
                           2209 ;src/game.c:664: chr = 91;
   4BD1 DD 36 FA 5B   [19] 2210 	ld	-6 (ix),#0x5B
   4BD5                    2211 00122$:
                           2212 ;src/game.c:665: newNameHighScore[pos] = chr;
   4BD5 DD 6E FD      [19] 2213 	ld	l,-3 (ix)
   4BD8 DD 66 FE      [19] 2214 	ld	h,-2 (ix)
   4BDB DD 7E FA      [19] 2215 	ld	a,-6 (ix)
   4BDE 77            [ 7] 2216 	ld	(hl),a
                           2217 ;src/game.c:666: pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 13, 140);
   4BDF 21 0D 8C      [10] 2218 	ld	hl,#0x8C0D
   4BE2 E5            [11] 2219 	push	hl
   4BE3 21 00 C0      [10] 2220 	ld	hl,#0xC000
   4BE6 E5            [11] 2221 	push	hl
   4BE7 CD 2F 85      [17] 2222 	call	_cpct_getScreenPtr
   4BEA DD 75 FD      [19] 2223 	ld	-3 (ix),l
   4BED DD 74 FE      [19] 2224 	ld	-2 (ix),h
                           2225 ;src/game.c:667: cpct_drawSolidBox(pvmem, cpct_px2byteM0(5, 5), 60, 11);
   4BF0 21 05 05      [10] 2226 	ld	hl,#0x0505
   4BF3 E5            [11] 2227 	push	hl
   4BF4 CD FC 83      [17] 2228 	call	_cpct_px2byteM0
   4BF7 DD 75 FF      [19] 2229 	ld	-1 (ix),l
   4BFA 21 3C 0B      [10] 2230 	ld	hl,#0x0B3C
   4BFD E5            [11] 2231 	push	hl
   4BFE DD 7E FF      [19] 2232 	ld	a,-1 (ix)
   4C01 F5            [11] 2233 	push	af
   4C02 33            [ 6] 2234 	inc	sp
   4C03 DD 6E FD      [19] 2235 	ld	l,-3 (ix)
   4C06 DD 66 FE      [19] 2236 	ld	h,-2 (ix)
   4C09 E5            [11] 2237 	push	hl
   4C0A CD 45 84      [17] 2238 	call	_cpct_drawSolidBox
   4C0D F1            [10] 2239 	pop	af
                           2240 ;src/game.c:668: drawText(newNameHighScore, 20, 140, 1);
   4C0E 33            [ 6] 2241 	inc	sp
   4C0F 21 8C 01      [10] 2242 	ld	hl,#0x018C
   4C12 E3            [19] 2243 	ex	(sp),hl
   4C13 3E 14         [ 7] 2244 	ld	a,#0x14
   4C15 F5            [11] 2245 	push	af
   4C16 33            [ 6] 2246 	inc	sp
   4C17 21 A0 91      [10] 2247 	ld	hl,#_newNameHighScore
   4C1A E5            [11] 2248 	push	hl
   4C1B CD 81 76      [17] 2249 	call	_drawText
   4C1E F1            [10] 2250 	pop	af
   4C1F F1            [10] 2251 	pop	af
   4C20 33            [ 6] 2252 	inc	sp
   4C21 C3 DC 4A      [10] 2253 	jp	00126$
   4C24                    2254 00128$:
   4C24 DD F9         [10] 2255 	ld	sp, ix
   4C26 DD E1         [14] 2256 	pop	ix
   4C28 C9            [10] 2257 	ret
   4C29                    2258 ___str_10:
   4C29 4E 45 57 20 48 49  2259 	.ascii "NEW HIGH SCORE"
        47 48 20 53 43 4F
        52 45
   4C37 00                 2260 	.db 0x00
   4C38                    2261 ___str_11:
   4C38 45 4E 54 45 52 20  2262 	.ascii "ENTER YOUR NAME"
        59 4F 55 52 20 4E
        41 4D 45
   4C47 00                 2263 	.db 0x00
   4C48                    2264 ___str_12:
   4C48 20 54 4F 20 43 48  2265 	.ascii " TO CHANGE LETTER"
        41 4E 47 45 20 4C
        45 54 54 45 52
   4C59 00                 2266 	.db 0x00
   4C5A                    2267 ___str_13:
   4C5A 20 5B 20 54 4F 20  2268 	.ascii " [ TO END"
        45 4E 44
   4C63 00                 2269 	.db 0x00
   4C64                    2270 ___str_14:
   4C64 41                 2271 	.ascii "A"
   4C65 00                 2272 	.db 0x00
                           2273 ;src/game.c:683: void setHighScore(u32 score) {
                           2274 ;	---------------------------------
                           2275 ; Function setHighScore
                           2276 ; ---------------------------------
   4C66                    2277 _setHighScore::
   4C66 DD E5         [15] 2278 	push	ix
   4C68 DD 21 00 00   [14] 2279 	ld	ix,#0
   4C6C DD 39         [15] 2280 	add	ix,sp
   4C6E 21 F6 FF      [10] 2281 	ld	hl,#-10
   4C71 39            [11] 2282 	add	hl,sp
   4C72 F9            [ 6] 2283 	ld	sp,hl
                           2284 ;src/game.c:686: i = 8;
   4C73 0E 08         [ 7] 2285 	ld	c,#0x08
                           2286 ;src/game.c:687: while ((score > scoreHallOfFame[i - 1]) && (i > 0)) {
   4C75 11 F5 90      [10] 2287 	ld	de,#_scoreHallOfFame+0
   4C78                    2288 00102$:
   4C78 41            [ 4] 2289 	ld	b,c
   4C79 05            [ 4] 2290 	dec	b
   4C7A 68            [ 4] 2291 	ld	l,b
   4C7B 26 00         [ 7] 2292 	ld	h,#0x00
   4C7D 29            [11] 2293 	add	hl, hl
   4C7E 29            [11] 2294 	add	hl, hl
   4C7F 19            [11] 2295 	add	hl,de
   4C80 D5            [11] 2296 	push	de
   4C81 C5            [11] 2297 	push	bc
   4C82 EB            [ 4] 2298 	ex	de,hl
   4C83 21 04 00      [10] 2299 	ld	hl, #0x0004
   4C86 39            [11] 2300 	add	hl, sp
   4C87 EB            [ 4] 2301 	ex	de, hl
   4C88 01 04 00      [10] 2302 	ld	bc, #0x0004
   4C8B ED B0         [21] 2303 	ldir
   4C8D C1            [10] 2304 	pop	bc
   4C8E D1            [10] 2305 	pop	de
   4C8F DD 7E F6      [19] 2306 	ld	a,-10 (ix)
   4C92 DD 96 04      [19] 2307 	sub	a, 4 (ix)
   4C95 DD 7E F7      [19] 2308 	ld	a,-9 (ix)
   4C98 DD 9E 05      [19] 2309 	sbc	a, 5 (ix)
   4C9B DD 7E F8      [19] 2310 	ld	a,-8 (ix)
   4C9E DD 9E 06      [19] 2311 	sbc	a, 6 (ix)
   4CA1 DD 7E F9      [19] 2312 	ld	a,-7 (ix)
   4CA4 DD 9E 07      [19] 2313 	sbc	a, 7 (ix)
   4CA7 30 07         [12] 2314 	jr	NC,00104$
   4CA9 79            [ 4] 2315 	ld	a,c
   4CAA B7            [ 4] 2316 	or	a, a
   4CAB 28 03         [12] 2317 	jr	Z,00104$
                           2318 ;src/game.c:688: i--;
   4CAD 48            [ 4] 2319 	ld	c,b
   4CAE 18 C8         [12] 2320 	jr	00102$
   4CB0                    2321 00104$:
                           2322 ;src/game.c:690: j = 7;
                           2323 ;src/game.c:691: if (i <= j) {
   4CB0 3E 07         [ 7] 2324 	ld	a,#0x07
   4CB2 47            [ 4] 2325 	ld	b,a
   4CB3 91            [ 4] 2326 	sub	a, c
   4CB4 DA 5A 4D      [10] 2327 	jp	C,00111$
                           2328 ;src/game.c:692: while ((i < j) && (j > 0)) {
   4CB7                    2329 00106$:
                           2330 ;src/game.c:693: scoreHallOfFame[j] = scoreHallOfFame[j - 1];
   4CB7 DD 70 F6      [19] 2331 	ld	-10 (ix),b
   4CBA DD 36 F7 00   [19] 2332 	ld	-9 (ix),#0x00
                           2333 ;src/game.c:694: strcpy(nameHallOfFame[j], nameHallOfFame[j - 1]);
   4CBE D5            [11] 2334 	push	de
   4CBF 58            [ 4] 2335 	ld	e,b
   4CC0 16 00         [ 7] 2336 	ld	d,#0x00
   4CC2 6B            [ 4] 2337 	ld	l, e
   4CC3 62            [ 4] 2338 	ld	h, d
   4CC4 29            [11] 2339 	add	hl, hl
   4CC5 19            [11] 2340 	add	hl, de
   4CC6 29            [11] 2341 	add	hl, hl
   4CC7 19            [11] 2342 	add	hl, de
   4CC8 29            [11] 2343 	add	hl, hl
   4CC9 19            [11] 2344 	add	hl, de
   4CCA D1            [10] 2345 	pop	de
   4CCB DD 75 FA      [19] 2346 	ld	-6 (ix),l
   4CCE DD 74 FB      [19] 2347 	ld	-5 (ix),h
                           2348 ;src/game.c:693: scoreHallOfFame[j] = scoreHallOfFame[j - 1];
   4CD1 E1            [10] 2349 	pop	hl
   4CD2 E5            [11] 2350 	push	hl
   4CD3 29            [11] 2351 	add	hl, hl
   4CD4 29            [11] 2352 	add	hl, hl
                           2353 ;src/game.c:694: strcpy(nameHallOfFame[j], nameHallOfFame[j - 1]);
   4CD5 3E 15         [ 7] 2354 	ld	a,#<(_nameHallOfFame)
   4CD7 DD 86 FA      [19] 2355 	add	a, -6 (ix)
   4CDA DD 77 FA      [19] 2356 	ld	-6 (ix),a
   4CDD 3E 91         [ 7] 2357 	ld	a,#>(_nameHallOfFame)
   4CDF DD 8E FB      [19] 2358 	adc	a, -5 (ix)
   4CE2 DD 77 FB      [19] 2359 	ld	-5 (ix),a
                           2360 ;src/game.c:693: scoreHallOfFame[j] = scoreHallOfFame[j - 1];
   4CE5 19            [11] 2361 	add	hl,de
   4CE6 E3            [19] 2362 	ex	(sp), hl
                           2363 ;src/game.c:694: strcpy(nameHallOfFame[j], nameHallOfFame[j - 1]);
                           2364 ;src/game.c:692: while ((i < j) && (j > 0)) {
   4CE7 79            [ 4] 2365 	ld	a,c
   4CE8 90            [ 4] 2366 	sub	a, b
   4CE9 30 4F         [12] 2367 	jr	NC,00108$
   4CEB 78            [ 4] 2368 	ld	a,b
   4CEC B7            [ 4] 2369 	or	a, a
   4CED 28 4B         [12] 2370 	jr	Z,00108$
                           2371 ;src/game.c:693: scoreHallOfFame[j] = scoreHallOfFame[j - 1];
   4CEF 05            [ 4] 2372 	dec	b
   4CF0 68            [ 4] 2373 	ld	l,b
   4CF1 26 00         [ 7] 2374 	ld	h,#0x00
   4CF3 29            [11] 2375 	add	hl, hl
   4CF4 29            [11] 2376 	add	hl, hl
   4CF5 19            [11] 2377 	add	hl,de
   4CF6 D5            [11] 2378 	push	de
   4CF7 C5            [11] 2379 	push	bc
   4CF8 EB            [ 4] 2380 	ex	de,hl
   4CF9 21 0A 00      [10] 2381 	ld	hl, #0x000A
   4CFC 39            [11] 2382 	add	hl, sp
   4CFD EB            [ 4] 2383 	ex	de, hl
   4CFE 01 04 00      [10] 2384 	ld	bc, #0x0004
   4D01 ED B0         [21] 2385 	ldir
   4D03 DD 5E F6      [19] 2386 	ld	e,-10 (ix)
   4D06 DD 56 F7      [19] 2387 	ld	d,-9 (ix)
   4D09 21 0A 00      [10] 2388 	ld	hl, #0x000A
   4D0C 39            [11] 2389 	add	hl, sp
   4D0D 01 04 00      [10] 2390 	ld	bc, #0x0004
   4D10 ED B0         [21] 2391 	ldir
   4D12 C1            [10] 2392 	pop	bc
   4D13 58            [ 4] 2393 	ld	e,b
   4D14 16 00         [ 7] 2394 	ld	d,#0x00
   4D16 6B            [ 4] 2395 	ld	l, e
   4D17 62            [ 4] 2396 	ld	h, d
   4D18 29            [11] 2397 	add	hl, hl
   4D19 19            [11] 2398 	add	hl, de
   4D1A 29            [11] 2399 	add	hl, hl
   4D1B 19            [11] 2400 	add	hl, de
   4D1C 29            [11] 2401 	add	hl, hl
   4D1D 19            [11] 2402 	add	hl, de
   4D1E D1            [10] 2403 	pop	de
   4D1F 3E 15         [ 7] 2404 	ld	a,#<(_nameHallOfFame)
   4D21 85            [ 4] 2405 	add	a, l
   4D22 6F            [ 4] 2406 	ld	l,a
   4D23 3E 91         [ 7] 2407 	ld	a,#>(_nameHallOfFame)
   4D25 8C            [ 4] 2408 	adc	a, h
   4D26 67            [ 4] 2409 	ld	h,a
   4D27 C5            [11] 2410 	push	bc
   4D28 D5            [11] 2411 	push	de
   4D29 DD 5E FA      [19] 2412 	ld	e,-6 (ix)
   4D2C DD 56 FB      [19] 2413 	ld	d,-5 (ix)
   4D2F AF            [ 4] 2414 	xor	a, a
   4D30                    2415 00140$:
   4D30 BE            [ 7] 2416 	cp	a, (hl)
   4D31 ED A0         [16] 2417 	ldi
   4D33 20 FB         [12] 2418 	jr	NZ, 00140$
   4D35 D1            [10] 2419 	pop	de
   4D36 C1            [10] 2420 	pop	bc
                           2421 ;src/game.c:695: j--;
   4D37 C3 B7 4C      [10] 2422 	jp	00106$
   4D3A                    2423 00108$:
                           2424 ;src/game.c:697: getName();
   4D3A CD FE 49      [17] 2425 	call	_getName
                           2426 ;src/game.c:698: wait4UserKeypress();
   4D3D CD 8F 7B      [17] 2427 	call	_wait4UserKeypress
                           2428 ;src/game.c:699: scoreHallOfFame[j] = score;
   4D40 D1            [10] 2429 	pop	de
   4D41 D5            [11] 2430 	push	de
   4D42 21 0E 00      [10] 2431 	ld	hl, #0x000E
   4D45 39            [11] 2432 	add	hl, sp
   4D46 01 04 00      [10] 2433 	ld	bc, #0x0004
   4D49 ED B0         [21] 2434 	ldir
                           2435 ;src/game.c:700: strcpy(nameHallOfFame[j], newNameHighScore);
   4D4B DD 5E FA      [19] 2436 	ld	e,-6 (ix)
   4D4E DD 56 FB      [19] 2437 	ld	d,-5 (ix)
   4D51 21 A0 91      [10] 2438 	ld	hl,#_newNameHighScore
   4D54 AF            [ 4] 2439 	xor	a, a
   4D55                    2440 00141$:
   4D55 BE            [ 7] 2441 	cp	a, (hl)
   4D56 ED A0         [16] 2442 	ldi
   4D58 20 FB         [12] 2443 	jr	NZ, 00141$
   4D5A                    2444 00111$:
   4D5A DD F9         [10] 2445 	ld	sp, ix
   4D5C DD E1         [14] 2446 	pop	ix
   4D5E C9            [10] 2447 	ret
                           2448 ;src/game.c:704: void drawScoreBoard() {
                           2449 ;	---------------------------------
                           2450 ; Function drawScoreBoard
                           2451 ; ---------------------------------
   4D5F                    2452 _drawScoreBoard::
   4D5F DD E5         [15] 2453 	push	ix
   4D61 DD 21 00 00   [14] 2454 	ld	ix,#0
   4D65 DD 39         [15] 2455 	add	ix,sp
   4D67 F5            [11] 2456 	push	af
   4D68 F5            [11] 2457 	push	af
                           2458 ;src/game.c:708: cpct_memset(CPCT_VMEM_START, cpct_px2byteM0(5, 5), 0x4000);
   4D69 21 05 05      [10] 2459 	ld	hl,#0x0505
   4D6C E5            [11] 2460 	push	hl
   4D6D CD FC 83      [17] 2461 	call	_cpct_px2byteM0
   4D70 45            [ 4] 2462 	ld	b,l
   4D71 21 00 40      [10] 2463 	ld	hl,#0x4000
   4D74 E5            [11] 2464 	push	hl
   4D75 C5            [11] 2465 	push	bc
   4D76 33            [ 6] 2466 	inc	sp
   4D77 26 C0         [ 7] 2467 	ld	h, #0xC0
   4D79 E5            [11] 2468 	push	hl
   4D7A CD 18 84      [17] 2469 	call	_cpct_memset
                           2470 ;src/game.c:710: drawText("AMSTHREES SCOREBOARD", 13, 2, 1);
   4D7D 21 02 01      [10] 2471 	ld	hl,#0x0102
   4D80 E5            [11] 2472 	push	hl
   4D81 3E 0D         [ 7] 2473 	ld	a,#0x0D
   4D83 F5            [11] 2474 	push	af
   4D84 33            [ 6] 2475 	inc	sp
   4D85 21 7C 4E      [10] 2476 	ld	hl,#___str_15
   4D88 E5            [11] 2477 	push	hl
   4D89 CD 81 76      [17] 2478 	call	_drawText
   4D8C F1            [10] 2479 	pop	af
   4D8D F1            [10] 2480 	pop	af
   4D8E 33            [ 6] 2481 	inc	sp
                           2482 ;src/game.c:712: for (i = 0; i < 8; i++) {
   4D8F DD 36 FC 00   [19] 2483 	ld	-4 (ix),#0x00
   4D93 DD 36 FD 00   [19] 2484 	ld	-3 (ix),#0x00
   4D97 01 00 00      [10] 2485 	ld	bc,#0x0000
   4D9A DD 36 FF 00   [19] 2486 	ld	-1 (ix),#0x00
   4D9E                    2487 00106$:
                           2488 ;src/game.c:713: drawNumber(i + 1, 2, 5, 30 + (i * 15));
   4D9E DD 7E FD      [19] 2489 	ld	a,-3 (ix)
   4DA1 C6 1E         [ 7] 2490 	add	a, #0x1E
   4DA3 DD 77 FE      [19] 2491 	ld	-2 (ix),a
   4DA6 DD 5E FC      [19] 2492 	ld	e,-4 (ix)
   4DA9 16 00         [ 7] 2493 	ld	d,#0x00
   4DAB D5            [11] 2494 	push	de
   4DAC FD E1         [14] 2495 	pop	iy
   4DAE FD 23         [10] 2496 	inc	iy
   4DB0 C5            [11] 2497 	push	bc
   4DB1 D5            [11] 2498 	push	de
   4DB2 DD 7E FE      [19] 2499 	ld	a,-2 (ix)
   4DB5 F5            [11] 2500 	push	af
   4DB6 33            [ 6] 2501 	inc	sp
   4DB7 21 02 05      [10] 2502 	ld	hl,#0x0502
   4DBA E5            [11] 2503 	push	hl
   4DBB FD E5         [15] 2504 	push	iy
   4DBD CD E4 75      [17] 2505 	call	_drawNumber
   4DC0 F1            [10] 2506 	pop	af
   4DC1 F1            [10] 2507 	pop	af
   4DC2 33            [ 6] 2508 	inc	sp
   4DC3 D1            [10] 2509 	pop	de
   4DC4 C1            [10] 2510 	pop	bc
                           2511 ;src/game.c:714: drawText(nameHallOfFame[i], 14, 30 + (i * 15), 0);
   4DC5 FD 21 15 91   [14] 2512 	ld	iy,#_nameHallOfFame
   4DC9 FD 09         [15] 2513 	add	iy, bc
   4DCB C5            [11] 2514 	push	bc
   4DCC D5            [11] 2515 	push	de
   4DCD AF            [ 4] 2516 	xor	a, a
   4DCE F5            [11] 2517 	push	af
   4DCF 33            [ 6] 2518 	inc	sp
   4DD0 DD 56 FE      [19] 2519 	ld	d, -2 (ix)
   4DD3 1E 0E         [ 7] 2520 	ld	e,#0x0E
   4DD5 D5            [11] 2521 	push	de
   4DD6 FD E5         [15] 2522 	push	iy
   4DD8 CD 81 76      [17] 2523 	call	_drawText
   4DDB F1            [10] 2524 	pop	af
   4DDC F1            [10] 2525 	pop	af
   4DDD 33            [ 6] 2526 	inc	sp
   4DDE D1            [10] 2527 	pop	de
   4DDF C1            [10] 2528 	pop	bc
                           2529 ;src/game.c:715: drawNumber(scoreHallOfFame[i], 1, 69, 30 + (i * 15));
   4DE0 DD 7E FF      [19] 2530 	ld	a,-1 (ix)
   4DE3 C6 1E         [ 7] 2531 	add	a, #0x1E
   4DE5 DD 77 FE      [19] 2532 	ld	-2 (ix),a
   4DE8 EB            [ 4] 2533 	ex	de,hl
   4DE9 29            [11] 2534 	add	hl, hl
   4DEA 29            [11] 2535 	add	hl, hl
   4DEB 11 F5 90      [10] 2536 	ld	de,#_scoreHallOfFame
   4DEE 19            [11] 2537 	add	hl,de
   4DEF 5E            [ 7] 2538 	ld	e,(hl)
   4DF0 23            [ 6] 2539 	inc	hl
   4DF1 56            [ 7] 2540 	ld	d,(hl)
   4DF2 23            [ 6] 2541 	inc	hl
   4DF3 23            [ 6] 2542 	inc	hl
   4DF4 7E            [ 7] 2543 	ld	a,(hl)
   4DF5 2B            [ 6] 2544 	dec	hl
   4DF6 6E            [ 7] 2545 	ld	l,(hl)
   4DF7 C5            [11] 2546 	push	bc
   4DF8 DD 7E FE      [19] 2547 	ld	a,-2 (ix)
   4DFB F5            [11] 2548 	push	af
   4DFC 33            [ 6] 2549 	inc	sp
   4DFD 21 01 45      [10] 2550 	ld	hl,#0x4501
   4E00 E5            [11] 2551 	push	hl
   4E01 D5            [11] 2552 	push	de
   4E02 CD E4 75      [17] 2553 	call	_drawNumber
   4E05 F1            [10] 2554 	pop	af
   4E06 F1            [10] 2555 	pop	af
   4E07 33            [ 6] 2556 	inc	sp
   4E08 C1            [10] 2557 	pop	bc
                           2558 ;src/game.c:712: for (i = 0; i < 8; i++) {
   4E09 DD 7E FD      [19] 2559 	ld	a,-3 (ix)
   4E0C C6 0F         [ 7] 2560 	add	a, #0x0F
   4E0E DD 77 FD      [19] 2561 	ld	-3 (ix),a
   4E11 21 0F 00      [10] 2562 	ld	hl,#0x000F
   4E14 09            [11] 2563 	add	hl,bc
   4E15 4D            [ 4] 2564 	ld	c,l
   4E16 44            [ 4] 2565 	ld	b,h
   4E17 DD 7E FF      [19] 2566 	ld	a,-1 (ix)
   4E1A C6 0F         [ 7] 2567 	add	a, #0x0F
   4E1C DD 77 FF      [19] 2568 	ld	-1 (ix),a
   4E1F DD 34 FC      [23] 2569 	inc	-4 (ix)
   4E22 DD 7E FC      [19] 2570 	ld	a,-4 (ix)
   4E25 D6 08         [ 7] 2571 	sub	a, #0x08
   4E27 DA 9E 4D      [10] 2572 	jp	C,00106$
                           2573 ;src/game.c:718: drawText("JOHN LOBO", 25, 170, 1);
   4E2A 21 AA 01      [10] 2574 	ld	hl,#0x01AA
   4E2D E5            [11] 2575 	push	hl
   4E2E 3E 19         [ 7] 2576 	ld	a,#0x19
   4E30 F5            [11] 2577 	push	af
   4E31 33            [ 6] 2578 	inc	sp
   4E32 21 91 4E      [10] 2579 	ld	hl,#___str_16
   4E35 E5            [11] 2580 	push	hl
   4E36 CD 81 76      [17] 2581 	call	_drawText
   4E39 F1            [10] 2582 	pop	af
                           2583 ;src/game.c:719: drawText("@ GLASNOST CORP 2016", 11, 185, 1);
   4E3A 33            [ 6] 2584 	inc	sp
   4E3B 21 B9 01      [10] 2585 	ld	hl,#0x01B9
   4E3E E3            [19] 2586 	ex	(sp),hl
   4E3F 3E 0B         [ 7] 2587 	ld	a,#0x0B
   4E41 F5            [11] 2588 	push	af
   4E42 33            [ 6] 2589 	inc	sp
   4E43 21 9B 4E      [10] 2590 	ld	hl,#___str_17
   4E46 E5            [11] 2591 	push	hl
   4E47 CD 81 76      [17] 2592 	call	_drawText
   4E4A F1            [10] 2593 	pop	af
   4E4B F1            [10] 2594 	pop	af
   4E4C 33            [ 6] 2595 	inc	sp
                           2596 ;src/game.c:723: do {
   4E4D 01 40 9C      [10] 2597 	ld	bc,#0x9C40
   4E50 11 00 00      [10] 2598 	ld	de,#0x0000
   4E53                    2599 00103$:
                           2600 ;src/game.c:724: c--;                       // One more cycle
   4E53 79            [ 4] 2601 	ld	a,c
   4E54 C6 FF         [ 7] 2602 	add	a,#0xFF
   4E56 4F            [ 4] 2603 	ld	c,a
   4E57 78            [ 4] 2604 	ld	a,b
   4E58 CE FF         [ 7] 2605 	adc	a,#0xFF
   4E5A 47            [ 4] 2606 	ld	b,a
   4E5B 7B            [ 4] 2607 	ld	a,e
   4E5C CE FF         [ 7] 2608 	adc	a,#0xFF
   4E5E 5F            [ 4] 2609 	ld	e,a
   4E5F 7A            [ 4] 2610 	ld	a,d
   4E60 CE FF         [ 7] 2611 	adc	a,#0xFF
   4E62 57            [ 4] 2612 	ld	d,a
                           2613 ;src/game.c:725: cpct_scanKeyboard_f();     // Scan the scan the keyboard
   4E63 C5            [11] 2614 	push	bc
   4E64 D5            [11] 2615 	push	de
   4E65 CD 33 81      [17] 2616 	call	_cpct_scanKeyboard_f
   4E68 CD E1 83      [17] 2617 	call	_cpct_isAnyKeyPressed_f
   4E6B D1            [10] 2618 	pop	de
   4E6C C1            [10] 2619 	pop	bc
   4E6D 7D            [ 4] 2620 	ld	a,l
   4E6E B7            [ 4] 2621 	or	a, a
   4E6F 20 06         [12] 2622 	jr	NZ,00108$
   4E71 7A            [ 4] 2623 	ld	a,d
   4E72 B3            [ 4] 2624 	or	a, e
   4E73 B0            [ 4] 2625 	or	a, b
   4E74 B1            [ 4] 2626 	or	a,c
   4E75 20 DC         [12] 2627 	jr	NZ,00103$
   4E77                    2628 00108$:
   4E77 DD F9         [10] 2629 	ld	sp, ix
   4E79 DD E1         [14] 2630 	pop	ix
   4E7B C9            [10] 2631 	ret
   4E7C                    2632 ___str_15:
   4E7C 41 4D 53 54 48 52  2633 	.ascii "AMSTHREES SCOREBOARD"
        45 45 53 20 53 43
        4F 52 45 42 4F 41
        52 44
   4E90 00                 2634 	.db 0x00
   4E91                    2635 ___str_16:
   4E91 4A 4F 48 4E 20 4C  2636 	.ascii "JOHN LOBO"
        4F 42 4F
   4E9A 00                 2637 	.db 0x00
   4E9B                    2638 ___str_17:
   4E9B 40 20 47 4C 41 53  2639 	.ascii "@ GLASNOST CORP 2016"
        4E 4F 53 54 20 43
        4F 52 50 20 32 30
        31 36
   4EAF 00                 2640 	.db 0x00
                           2641 ;src/game.c:738: void game(void) {
                           2642 ;	---------------------------------
                           2643 ; Function game
                           2644 ; ---------------------------------
   4EB0                    2645 _game::
   4EB0 DD E5         [15] 2646 	push	ix
   4EB2 DD 21 00 00   [14] 2647 	ld	ix,#0
   4EB6 DD 39         [15] 2648 	add	ix,sp
   4EB8 3B            [ 6] 2649 	dec	sp
                           2650 ;src/game.c:741: initGame();
   4EB9 CD 7F 45      [17] 2651 	call	_initGame
                           2652 ;src/game.c:744: clearScreen();
   4EBC CD C4 80      [17] 2653 	call	_clearScreen
                           2654 ;src/game.c:747: drawFrame(2, 1, 49, 182);
   4EBF 21 31 B6      [10] 2655 	ld	hl,#0xB631
   4EC2 E5            [11] 2656 	push	hl
   4EC3 21 02 01      [10] 2657 	ld	hl,#0x0102
   4EC6 E5            [11] 2658 	push	hl
   4EC7 CD B6 7D      [17] 2659 	call	_drawFrame
   4ECA F1            [10] 2660 	pop	af
   4ECB F1            [10] 2661 	pop	af
                           2662 ;src/game.c:748: printCells();
   4ECC CD 8B 48      [17] 2663 	call	_printCells
                           2664 ;src/game.c:749: drawText("NEXT", 62, 2, 0);
   4ECF 21 02 00      [10] 2665 	ld	hl,#0x0002
   4ED2 E5            [11] 2666 	push	hl
   4ED3 3E 3E         [ 7] 2667 	ld	a,#0x3E
   4ED5 F5            [11] 2668 	push	af
   4ED6 33            [ 6] 2669 	inc	sp
   4ED7 21 0A 50      [10] 2670 	ld	hl,#___str_18
   4EDA E5            [11] 2671 	push	hl
   4EDB CD 81 76      [17] 2672 	call	_drawText
   4EDE F1            [10] 2673 	pop	af
   4EDF F1            [10] 2674 	pop	af
   4EE0 33            [ 6] 2675 	inc	sp
                           2676 ;src/game.c:751: wait4UserKeypress();
   4EE1 CD 8F 7B      [17] 2677 	call	_wait4UserKeypress
                           2678 ;src/game.c:753: moved = 0;
   4EE4 DD 36 FF 00   [19] 2679 	ld	-1 (ix),#0x00
                           2680 ;src/game.c:755: while (1) {
   4EE8                    2681 00128$:
                           2682 ;src/game.c:756: delay(24);
   4EE8 21 00 00      [10] 2683 	ld	hl,#0x0000
   4EEB E5            [11] 2684 	push	hl
   4EEC 21 18 00      [10] 2685 	ld	hl,#0x0018
   4EEF E5            [11] 2686 	push	hl
   4EF0 CD D9 40      [17] 2687 	call	_delay
   4EF3 F1            [10] 2688 	pop	af
   4EF4 F1            [10] 2689 	pop	af
                           2690 ;src/game.c:757: cpct_scanKeyboard_f();
   4EF5 CD 33 81      [17] 2691 	call	_cpct_scanKeyboard_f
                           2692 ;src/game.c:759: if (cpct_isKeyPressed(keys.right)) {
   4EF8 2A D4 90      [16] 2693 	ld	hl, (#_keys + 6)
   4EFB CD 27 81      [17] 2694 	call	_cpct_isKeyPressed
   4EFE 7D            [ 4] 2695 	ld	a,l
   4EFF B7            [ 4] 2696 	or	a, a
   4F00 28 15         [12] 2697 	jr	Z,00121$
                           2698 ;src/game.c:760: if (rotateCellsRight()) {
   4F02 CD 5B 46      [17] 2699 	call	_rotateCellsRight
   4F05 7D            [ 4] 2700 	ld	a,l
   4F06 B7            [ 4] 2701 	or	a, a
   4F07 28 75         [12] 2702 	jr	Z,00122$
                           2703 ;src/game.c:761: addRandomCellTurn(RIGHT);
   4F09 3E 01         [ 7] 2704 	ld	a,#0x01
   4F0B F5            [11] 2705 	push	af
   4F0C 33            [ 6] 2706 	inc	sp
   4F0D CD BB 42      [17] 2707 	call	_addRandomCellTurn
   4F10 33            [ 6] 2708 	inc	sp
                           2709 ;src/game.c:762: moved = 1;
   4F11 DD 36 FF 01   [19] 2710 	ld	-1 (ix),#0x01
   4F15 18 67         [12] 2711 	jr	00122$
   4F17                    2712 00121$:
                           2713 ;src/game.c:764: } else if (cpct_isKeyPressed(keys.left)) {
   4F17 2A D2 90      [16] 2714 	ld	hl, (#_keys + 4)
   4F1A CD 27 81      [17] 2715 	call	_cpct_isKeyPressed
   4F1D 7D            [ 4] 2716 	ld	a,l
   4F1E B7            [ 4] 2717 	or	a, a
   4F1F 28 14         [12] 2718 	jr	Z,00118$
                           2719 ;src/game.c:765: if (rotateCellsLeft()) {
   4F21 CD A0 45      [17] 2720 	call	_rotateCellsLeft
   4F24 7D            [ 4] 2721 	ld	a,l
   4F25 B7            [ 4] 2722 	or	a, a
   4F26 28 56         [12] 2723 	jr	Z,00122$
                           2724 ;src/game.c:766: addRandomCellTurn(LEFT);
   4F28 AF            [ 4] 2725 	xor	a, a
   4F29 F5            [11] 2726 	push	af
   4F2A 33            [ 6] 2727 	inc	sp
   4F2B CD BB 42      [17] 2728 	call	_addRandomCellTurn
   4F2E 33            [ 6] 2729 	inc	sp
                           2730 ;src/game.c:767: moved = 1;
   4F2F DD 36 FF 01   [19] 2731 	ld	-1 (ix),#0x01
   4F33 18 49         [12] 2732 	jr	00122$
   4F35                    2733 00118$:
                           2734 ;src/game.c:769: } else if (cpct_isKeyPressed(keys.down)) {
   4F35 2A D0 90      [16] 2735 	ld	hl, (#_keys + 2)
   4F38 CD 27 81      [17] 2736 	call	_cpct_isKeyPressed
   4F3B 7D            [ 4] 2737 	ld	a,l
   4F3C B7            [ 4] 2738 	or	a, a
   4F3D 28 15         [12] 2739 	jr	Z,00115$
                           2740 ;src/game.c:770: if (rotateCellsDown()) {
   4F3F CD C9 47      [17] 2741 	call	_rotateCellsDown
   4F42 7D            [ 4] 2742 	ld	a,l
   4F43 B7            [ 4] 2743 	or	a, a
   4F44 28 38         [12] 2744 	jr	Z,00122$
                           2745 ;src/game.c:771: addRandomCellTurn(DOWN);
   4F46 3E 03         [ 7] 2746 	ld	a,#0x03
   4F48 F5            [11] 2747 	push	af
   4F49 33            [ 6] 2748 	inc	sp
   4F4A CD BB 42      [17] 2749 	call	_addRandomCellTurn
   4F4D 33            [ 6] 2750 	inc	sp
                           2751 ;src/game.c:772: moved = 1;
   4F4E DD 36 FF 01   [19] 2752 	ld	-1 (ix),#0x01
   4F52 18 2A         [12] 2753 	jr	00122$
   4F54                    2754 00115$:
                           2755 ;src/game.c:774: } else if (cpct_isKeyPressed(keys.up)) {
   4F54 2A CE 90      [16] 2756 	ld	hl, (#_keys + 0)
   4F57 CD 27 81      [17] 2757 	call	_cpct_isKeyPressed
   4F5A 7D            [ 4] 2758 	ld	a,l
   4F5B B7            [ 4] 2759 	or	a, a
   4F5C 28 15         [12] 2760 	jr	Z,00112$
                           2761 ;src/game.c:775: if (rotateCellsUp()) {
   4F5E CD 1C 47      [17] 2762 	call	_rotateCellsUp
   4F61 7D            [ 4] 2763 	ld	a,l
   4F62 B7            [ 4] 2764 	or	a, a
   4F63 28 19         [12] 2765 	jr	Z,00122$
                           2766 ;src/game.c:776: addRandomCellTurn(UP);
   4F65 3E 02         [ 7] 2767 	ld	a,#0x02
   4F67 F5            [11] 2768 	push	af
   4F68 33            [ 6] 2769 	inc	sp
   4F69 CD BB 42      [17] 2770 	call	_addRandomCellTurn
   4F6C 33            [ 6] 2771 	inc	sp
                           2772 ;src/game.c:777: moved = 1;
   4F6D DD 36 FF 01   [19] 2773 	ld	-1 (ix),#0x01
   4F71 18 0B         [12] 2774 	jr	00122$
   4F73                    2775 00112$:
                           2776 ;src/game.c:779: } else if (cpct_isKeyPressed(keys.abort))
   4F73 2A DA 90      [16] 2777 	ld	hl, (#_keys + 12)
   4F76 CD 27 81      [17] 2778 	call	_cpct_isKeyPressed
   4F79 7D            [ 4] 2779 	ld	a,l
   4F7A B7            [ 4] 2780 	or	a, a
   4F7B C2 06 50      [10] 2781 	jp	NZ,00130$
                           2782 ;src/game.c:780: break;
   4F7E                    2783 00122$:
                           2784 ;src/game.c:782: if (moved) {
   4F7E DD 7E FF      [19] 2785 	ld	a,-1 (ix)
   4F81 B7            [ 4] 2786 	or	a, a
   4F82 CA E8 4E      [10] 2787 	jp	Z,00128$
                           2788 ;src/game.c:783: printCells();
   4F85 CD 8B 48      [17] 2789 	call	_printCells
                           2790 ;src/game.c:784: moved = 0;
   4F88 DD 36 FF 00   [19] 2791 	ld	-1 (ix),#0x00
                           2792 ;src/game.c:785: if (anyMovesLeft() == 0) {
   4F8C CD 34 42      [17] 2793 	call	_anyMovesLeft
   4F8F 7D            [ 4] 2794 	ld	a,l
   4F90 B7            [ 4] 2795 	or	a, a
   4F91 C2 E8 4E      [10] 2796 	jp	NZ,00128$
                           2797 ;src/game.c:786: drawScore();
   4F94 CD 40 49      [17] 2798 	call	_drawScore
                           2799 ;src/game.c:787: wait4UserKeypress();
   4F97 CD 8F 7B      [17] 2800 	call	_wait4UserKeypress
                           2801 ;src/game.c:788: drawFrame(14, 60, 68, 142);
   4F9A 21 44 8E      [10] 2802 	ld	hl,#0x8E44
   4F9D E5            [11] 2803 	push	hl
   4F9E 21 0E 3C      [10] 2804 	ld	hl,#0x3C0E
   4FA1 E5            [11] 2805 	push	hl
   4FA2 CD B6 7D      [17] 2806 	call	_drawFrame
   4FA5 F1            [10] 2807 	pop	af
                           2808 ;src/game.c:789: drawFallingText("NO MORE MOVES", 20, 90, 96);
   4FA6 21 5A 60      [10] 2809 	ld	hl, #0x605A
   4FA9 E3            [19] 2810 	ex	(sp),hl
   4FAA 3E 14         [ 7] 2811 	ld	a,#0x14
   4FAC F5            [11] 2812 	push	af
   4FAD 33            [ 6] 2813 	inc	sp
   4FAE 21 0F 50      [10] 2814 	ld	hl,#___str_19
   4FB1 E5            [11] 2815 	push	hl
   4FB2 CD 6B 79      [17] 2816 	call	_drawFallingText
   4FB5 F1            [10] 2817 	pop	af
                           2818 ;src/game.c:790: drawText("GAME OVER", 22, 70, 1);
   4FB6 33            [ 6] 2819 	inc	sp
   4FB7 21 46 01      [10] 2820 	ld	hl,#0x0146
   4FBA E3            [19] 2821 	ex	(sp),hl
   4FBB 3E 16         [ 7] 2822 	ld	a,#0x16
   4FBD F5            [11] 2823 	push	af
   4FBE 33            [ 6] 2824 	inc	sp
   4FBF 21 1D 50      [10] 2825 	ld	hl,#___str_20
   4FC2 E5            [11] 2826 	push	hl
   4FC3 CD 81 76      [17] 2827 	call	_drawText
   4FC6 F1            [10] 2828 	pop	af
   4FC7 F1            [10] 2829 	pop	af
   4FC8 33            [ 6] 2830 	inc	sp
                           2831 ;src/game.c:791: sprintf(aux_txt, "SCORE  %d", score);
   4FC9 2A F3 90      [16] 2832 	ld	hl,(_score + 2)
   4FCC E5            [11] 2833 	push	hl
   4FCD 2A F1 90      [16] 2834 	ld	hl,(_score)
   4FD0 E5            [11] 2835 	push	hl
   4FD1 21 27 50      [10] 2836 	ld	hl,#___str_21
   4FD4 E5            [11] 2837 	push	hl
   4FD5 2A 8F 91      [16] 2838 	ld	hl,(_aux_txt)
   4FD8 E5            [11] 2839 	push	hl
   4FD9 CD 4B 83      [17] 2840 	call	_sprintf
   4FDC 21 08 00      [10] 2841 	ld	hl,#8
   4FDF 39            [11] 2842 	add	hl,sp
   4FE0 F9            [ 6] 2843 	ld	sp,hl
                           2844 ;src/game.c:792: drawText(aux_txt, 22, 120, 1);
   4FE1 21 78 01      [10] 2845 	ld	hl,#0x0178
   4FE4 E5            [11] 2846 	push	hl
   4FE5 3E 16         [ 7] 2847 	ld	a,#0x16
   4FE7 F5            [11] 2848 	push	af
   4FE8 33            [ 6] 2849 	inc	sp
   4FE9 2A 8F 91      [16] 2850 	ld	hl,(_aux_txt)
   4FEC E5            [11] 2851 	push	hl
   4FED CD 81 76      [17] 2852 	call	_drawText
   4FF0 F1            [10] 2853 	pop	af
   4FF1 F1            [10] 2854 	pop	af
   4FF2 33            [ 6] 2855 	inc	sp
                           2856 ;src/game.c:793: wait4UserKeypress();
   4FF3 CD 8F 7B      [17] 2857 	call	_wait4UserKeypress
                           2858 ;src/game.c:794: setHighScore(score);
   4FF6 2A F3 90      [16] 2859 	ld	hl,(_score + 2)
   4FF9 E5            [11] 2860 	push	hl
   4FFA 2A F1 90      [16] 2861 	ld	hl,(_score)
   4FFD E5            [11] 2862 	push	hl
   4FFE CD 66 4C      [17] 2863 	call	_setHighScore
   5001 F1            [10] 2864 	pop	af
   5002 F1            [10] 2865 	pop	af
                           2866 ;src/game.c:795: drawScoreBoard();
   5003 CD 5F 4D      [17] 2867 	call	_drawScoreBoard
                           2868 ;src/game.c:796: break;
   5006                    2869 00130$:
   5006 33            [ 6] 2870 	inc	sp
   5007 DD E1         [14] 2871 	pop	ix
   5009 C9            [10] 2872 	ret
   500A                    2873 ___str_18:
   500A 4E 45 58 54        2874 	.ascii "NEXT"
   500E 00                 2875 	.db 0x00
   500F                    2876 ___str_19:
   500F 4E 4F 20 4D 4F 52  2877 	.ascii "NO MORE MOVES"
        45 20 4D 4F 56 45
        53
   501C 00                 2878 	.db 0x00
   501D                    2879 ___str_20:
   501D 47 41 4D 45 20 4F  2880 	.ascii "GAME OVER"
        56 45 52
   5026 00                 2881 	.db 0x00
   5027                    2882 ___str_21:
   5027 53 43 4F 52 45 20  2883 	.ascii "SCORE  %d"
        20 25 64
   5030 00                 2884 	.db 0x00
                           2885 ;src/game.c:803: void checkKeyboardMenu() {
                           2886 ;	---------------------------------
                           2887 ; Function checkKeyboardMenu
                           2888 ; ---------------------------------
   5031                    2889 _checkKeyboardMenu::
                           2890 ;src/game.c:807: cpct_scanKeyboard_f();
   5031 CD 33 81      [17] 2891 	call	_cpct_scanKeyboard_f
                           2892 ;src/game.c:809: if (selectedOption == 1) {
   5034 3A 8E 91      [13] 2893 	ld	a,(#_selectedOption + 0)
   5037 3D            [ 4] 2894 	dec	a
   5038 20 66         [12] 2895 	jr	NZ,00102$
                           2896 ;src/game.c:810: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 27, 71);
   503A 21 1B 47      [10] 2897 	ld	hl,#0x471B
   503D E5            [11] 2898 	push	hl
   503E 21 00 C0      [10] 2899 	ld	hl,#0xC000
   5041 E5            [11] 2900 	push	hl
   5042 CD 2F 85      [17] 2901 	call	_cpct_getScreenPtr
   5045 4D            [ 4] 2902 	ld	c,l
   5046 44            [ 4] 2903 	ld	b,h
                           2904 ;src/game.c:811: cpct_drawSprite(g_tile_marker_3, pvideo, 2, 9);
   5047 21 02 09      [10] 2905 	ld	hl,#0x0902
   504A E5            [11] 2906 	push	hl
   504B C5            [11] 2907 	push	bc
   504C 21 5E 5B      [10] 2908 	ld	hl,#_g_tile_marker_3
   504F E5            [11] 2909 	push	hl
   5050 CD A9 81      [17] 2910 	call	_cpct_drawSprite
                           2911 ;src/game.c:812: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 54, 71);
   5053 21 36 47      [10] 2912 	ld	hl,#0x4736
   5056 E5            [11] 2913 	push	hl
   5057 21 00 C0      [10] 2914 	ld	hl,#0xC000
   505A E5            [11] 2915 	push	hl
   505B CD 2F 85      [17] 2916 	call	_cpct_getScreenPtr
   505E 4D            [ 4] 2917 	ld	c,l
   505F 44            [ 4] 2918 	ld	b,h
                           2919 ;src/game.c:813: cpct_drawSprite(g_tile_marker_3, pvideo, 2, 9);
   5060 21 02 09      [10] 2920 	ld	hl,#0x0902
   5063 E5            [11] 2921 	push	hl
   5064 C5            [11] 2922 	push	bc
   5065 21 5E 5B      [10] 2923 	ld	hl,#_g_tile_marker_3
   5068 E5            [11] 2924 	push	hl
   5069 CD A9 81      [17] 2925 	call	_cpct_drawSprite
                           2926 ;src/game.c:814: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 27, 51);
   506C 21 1B 33      [10] 2927 	ld	hl,#0x331B
   506F E5            [11] 2928 	push	hl
   5070 21 00 C0      [10] 2929 	ld	hl,#0xC000
   5073 E5            [11] 2930 	push	hl
   5074 CD 2F 85      [17] 2931 	call	_cpct_getScreenPtr
   5077 4D            [ 4] 2932 	ld	c,l
   5078 44            [ 4] 2933 	ld	b,h
                           2934 ;src/game.c:815: cpct_drawSprite(g_tile_marker_0, pvideo, 2, 9);
   5079 21 02 09      [10] 2935 	ld	hl,#0x0902
   507C E5            [11] 2936 	push	hl
   507D C5            [11] 2937 	push	bc
   507E 21 4C 5B      [10] 2938 	ld	hl,#_g_tile_marker_0
   5081 E5            [11] 2939 	push	hl
   5082 CD A9 81      [17] 2940 	call	_cpct_drawSprite
                           2941 ;src/game.c:816: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 54, 51);
   5085 21 36 33      [10] 2942 	ld	hl,#0x3336
   5088 E5            [11] 2943 	push	hl
   5089 21 00 C0      [10] 2944 	ld	hl,#0xC000
   508C E5            [11] 2945 	push	hl
   508D CD 2F 85      [17] 2946 	call	_cpct_getScreenPtr
   5090 4D            [ 4] 2947 	ld	c,l
   5091 44            [ 4] 2948 	ld	b,h
                           2949 ;src/game.c:817: cpct_drawSprite(g_tile_marker_0, pvideo, 2, 9);
   5092 21 02 09      [10] 2950 	ld	hl,#0x0902
   5095 E5            [11] 2951 	push	hl
   5096 C5            [11] 2952 	push	bc
   5097 21 4C 5B      [10] 2953 	ld	hl,#_g_tile_marker_0
   509A E5            [11] 2954 	push	hl
   509B CD A9 81      [17] 2955 	call	_cpct_drawSprite
   509E 18 64         [12] 2956 	jr	00103$
   50A0                    2957 00102$:
                           2958 ;src/game.c:819: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 27, 51);
   50A0 21 1B 33      [10] 2959 	ld	hl,#0x331B
   50A3 E5            [11] 2960 	push	hl
   50A4 21 00 C0      [10] 2961 	ld	hl,#0xC000
   50A7 E5            [11] 2962 	push	hl
   50A8 CD 2F 85      [17] 2963 	call	_cpct_getScreenPtr
   50AB 4D            [ 4] 2964 	ld	c,l
   50AC 44            [ 4] 2965 	ld	b,h
                           2966 ;src/game.c:820: cpct_drawSprite(g_tile_marker_3, pvideo, 2, 9);
   50AD 21 02 09      [10] 2967 	ld	hl,#0x0902
   50B0 E5            [11] 2968 	push	hl
   50B1 C5            [11] 2969 	push	bc
   50B2 21 5E 5B      [10] 2970 	ld	hl,#_g_tile_marker_3
   50B5 E5            [11] 2971 	push	hl
   50B6 CD A9 81      [17] 2972 	call	_cpct_drawSprite
                           2973 ;src/game.c:821: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 54, 51);
   50B9 21 36 33      [10] 2974 	ld	hl,#0x3336
   50BC E5            [11] 2975 	push	hl
   50BD 21 00 C0      [10] 2976 	ld	hl,#0xC000
   50C0 E5            [11] 2977 	push	hl
   50C1 CD 2F 85      [17] 2978 	call	_cpct_getScreenPtr
   50C4 4D            [ 4] 2979 	ld	c,l
   50C5 44            [ 4] 2980 	ld	b,h
                           2981 ;src/game.c:822: cpct_drawSprite(g_tile_marker_3, pvideo, 2, 9);
   50C6 21 02 09      [10] 2982 	ld	hl,#0x0902
   50C9 E5            [11] 2983 	push	hl
   50CA C5            [11] 2984 	push	bc
   50CB 21 5E 5B      [10] 2985 	ld	hl,#_g_tile_marker_3
   50CE E5            [11] 2986 	push	hl
   50CF CD A9 81      [17] 2987 	call	_cpct_drawSprite
                           2988 ;src/game.c:823: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 27, 71);
   50D2 21 1B 47      [10] 2989 	ld	hl,#0x471B
   50D5 E5            [11] 2990 	push	hl
   50D6 21 00 C0      [10] 2991 	ld	hl,#0xC000
   50D9 E5            [11] 2992 	push	hl
   50DA CD 2F 85      [17] 2993 	call	_cpct_getScreenPtr
   50DD 4D            [ 4] 2994 	ld	c,l
   50DE 44            [ 4] 2995 	ld	b,h
                           2996 ;src/game.c:824: cpct_drawSprite(g_tile_marker_0, pvideo, 2, 9);
   50DF 21 02 09      [10] 2997 	ld	hl,#0x0902
   50E2 E5            [11] 2998 	push	hl
   50E3 C5            [11] 2999 	push	bc
   50E4 21 4C 5B      [10] 3000 	ld	hl,#_g_tile_marker_0
   50E7 E5            [11] 3001 	push	hl
   50E8 CD A9 81      [17] 3002 	call	_cpct_drawSprite
                           3003 ;src/game.c:825: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 54, 71);
   50EB 21 36 47      [10] 3004 	ld	hl,#0x4736
   50EE E5            [11] 3005 	push	hl
   50EF 21 00 C0      [10] 3006 	ld	hl,#0xC000
   50F2 E5            [11] 3007 	push	hl
   50F3 CD 2F 85      [17] 3008 	call	_cpct_getScreenPtr
   50F6 4D            [ 4] 3009 	ld	c,l
   50F7 44            [ 4] 3010 	ld	b,h
                           3011 ;src/game.c:826: cpct_drawSprite(g_tile_marker_0, pvideo, 2, 9);
   50F8 21 02 09      [10] 3012 	ld	hl,#0x0902
   50FB E5            [11] 3013 	push	hl
   50FC C5            [11] 3014 	push	bc
   50FD 21 4C 5B      [10] 3015 	ld	hl,#_g_tile_marker_0
   5100 E5            [11] 3016 	push	hl
   5101 CD A9 81      [17] 3017 	call	_cpct_drawSprite
   5104                    3018 00103$:
                           3019 ;src/game.c:830: if (cpct_isKeyPressed(Key_1)) {
   5104 21 08 01      [10] 3020 	ld	hl,#0x0108
   5107 CD 27 81      [17] 3021 	call	_cpct_isKeyPressed
   510A 7D            [ 4] 3022 	ld	a,l
   510B B7            [ 4] 3023 	or	a, a
   510C CA 92 51      [10] 3024 	jp	Z,00110$
                           3025 ;src/game.c:832: selectedOption = 1;
   510F 21 8E 91      [10] 3026 	ld	hl,#_selectedOption + 0
   5112 36 01         [10] 3027 	ld	(hl), #0x01
                           3028 ;src/game.c:834: waitKeyUp(Key_1);
   5114 21 08 01      [10] 3029 	ld	hl,#0x0108
   5117 E5            [11] 3030 	push	hl
   5118 CD F6 7B      [17] 3031 	call	_waitKeyUp
                           3032 ;src/game.c:836: keys.up    = redefineKey("UP");
   511B 21 14 52      [10] 3033 	ld	hl, #___str_22
   511E E3            [19] 3034 	ex	(sp),hl
   511F CD 22 7C      [17] 3035 	call	_redefineKey
   5122 F1            [10] 3036 	pop	af
   5123 4D            [ 4] 3037 	ld	c,l
   5124 44            [ 4] 3038 	ld	b,h
   5125 ED 43 CE 90   [20] 3039 	ld	(_keys), bc
                           3040 ;src/game.c:837: keys.down  = redefineKey("DOWN");
   5129 21 17 52      [10] 3041 	ld	hl,#___str_23
   512C E5            [11] 3042 	push	hl
   512D CD 22 7C      [17] 3043 	call	_redefineKey
   5130 F1            [10] 3044 	pop	af
   5131 4D            [ 4] 3045 	ld	c,l
   5132 44            [ 4] 3046 	ld	b,h
   5133 ED 43 D0 90   [20] 3047 	ld	((_keys + 0x0002)), bc
                           3048 ;src/game.c:838: keys.left  = redefineKey("LEFT");
   5137 21 1C 52      [10] 3049 	ld	hl,#___str_24
   513A E5            [11] 3050 	push	hl
   513B CD 22 7C      [17] 3051 	call	_redefineKey
   513E F1            [10] 3052 	pop	af
   513F 4D            [ 4] 3053 	ld	c,l
   5140 44            [ 4] 3054 	ld	b,h
   5141 ED 43 D2 90   [20] 3055 	ld	((_keys + 0x0004)), bc
                           3056 ;src/game.c:839: keys.right = redefineKey("RIGHT");
   5145 21 21 52      [10] 3057 	ld	hl,#___str_25
   5148 E5            [11] 3058 	push	hl
   5149 CD 22 7C      [17] 3059 	call	_redefineKey
   514C F1            [10] 3060 	pop	af
   514D 4D            [ 4] 3061 	ld	c,l
   514E 44            [ 4] 3062 	ld	b,h
   514F ED 43 D4 90   [20] 3063 	ld	((_keys + 0x0006)), bc
                           3064 ;src/game.c:840: keys.pause = redefineKey("PAUSE");
   5153 21 27 52      [10] 3065 	ld	hl,#___str_26
   5156 E5            [11] 3066 	push	hl
   5157 CD 22 7C      [17] 3067 	call	_redefineKey
   515A F1            [10] 3068 	pop	af
   515B 4D            [ 4] 3069 	ld	c,l
   515C 44            [ 4] 3070 	ld	b,h
   515D ED 43 D8 90   [20] 3071 	ld	((_keys + 0x000a)), bc
                           3072 ;src/game.c:841: keys.abort = redefineKey("ABORT");
   5161 21 2D 52      [10] 3073 	ld	hl,#___str_27
   5164 E5            [11] 3074 	push	hl
   5165 CD 22 7C      [17] 3075 	call	_redefineKey
   5168 F1            [10] 3076 	pop	af
   5169 4D            [ 4] 3077 	ld	c,l
   516A 44            [ 4] 3078 	ld	b,h
   516B ED 43 DA 90   [20] 3079 	ld	((_keys + 0x000c)), bc
                           3080 ;src/game.c:843: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 39 - 10 * FONT_W, 144);
   516F 21 09 90      [10] 3081 	ld	hl,#0x9009
   5172 E5            [11] 3082 	push	hl
   5173 21 00 C0      [10] 3083 	ld	hl,#0xC000
   5176 E5            [11] 3084 	push	hl
   5177 CD 2F 85      [17] 3085 	call	_cpct_getScreenPtr
                           3086 ;src/game.c:844: cpct_drawSolidBox(pvideo, cpct_px2byteM0(5, 5), 15 * FONT_W, FONT_H);
   517A E5            [11] 3087 	push	hl
   517B 21 05 05      [10] 3088 	ld	hl,#0x0505
   517E E5            [11] 3089 	push	hl
   517F CD FC 83      [17] 3090 	call	_cpct_px2byteM0
   5182 55            [ 4] 3091 	ld	d,l
   5183 C1            [10] 3092 	pop	bc
   5184 21 2D 0B      [10] 3093 	ld	hl,#0x0B2D
   5187 E5            [11] 3094 	push	hl
   5188 D5            [11] 3095 	push	de
   5189 33            [ 6] 3096 	inc	sp
   518A C5            [11] 3097 	push	bc
   518B CD 45 84      [17] 3098 	call	_cpct_drawSolidBox
   518E F1            [10] 3099 	pop	af
   518F F1            [10] 3100 	pop	af
   5190 33            [ 6] 3101 	inc	sp
   5191 C9            [10] 3102 	ret
   5192                    3103 00110$:
                           3104 ;src/game.c:848: else if (cpct_isKeyPressed(Key_2)) {
   5192 21 08 02      [10] 3105 	ld	hl,#0x0208
   5195 CD 27 81      [17] 3106 	call	_cpct_isKeyPressed
   5198 7D            [ 4] 3107 	ld	a,l
   5199 B7            [ 4] 3108 	or	a, a
   519A 28 60         [12] 3109 	jr	Z,00107$
                           3110 ;src/game.c:850: selectedOption = 2;
   519C 21 8E 91      [10] 3111 	ld	hl,#_selectedOption + 0
   519F 36 02         [10] 3112 	ld	(hl), #0x02
                           3113 ;src/game.c:852: keys.up    = Joy0_Up;
   51A1 21 09 01      [10] 3114 	ld	hl,#0x0109
   51A4 22 CE 90      [16] 3115 	ld	(_keys), hl
                           3116 ;src/game.c:853: keys.down  = Joy0_Down;
   51A7 26 02         [ 7] 3117 	ld	h, #0x02
   51A9 22 D0 90      [16] 3118 	ld	((_keys + 0x0002)), hl
                           3119 ;src/game.c:854: keys.left  = Joy0_Left;
   51AC 26 04         [ 7] 3120 	ld	h, #0x04
   51AE 22 D2 90      [16] 3121 	ld	((_keys + 0x0004)), hl
                           3122 ;src/game.c:855: keys.right = Joy0_Right;
   51B1 26 08         [ 7] 3123 	ld	h, #0x08
   51B3 22 D4 90      [16] 3124 	ld	((_keys + 0x0006)), hl
                           3125 ;src/game.c:857: waitKeyUp(Key_2);
   51B6 21 08 02      [10] 3126 	ld	hl,#0x0208
   51B9 E5            [11] 3127 	push	hl
   51BA CD F6 7B      [17] 3128 	call	_waitKeyUp
                           3129 ;src/game.c:859: keys.pause = redefineKey("PAUSE");
   51BD 21 27 52      [10] 3130 	ld	hl, #___str_26
   51C0 E3            [19] 3131 	ex	(sp),hl
   51C1 CD 22 7C      [17] 3132 	call	_redefineKey
   51C4 F1            [10] 3133 	pop	af
   51C5 4D            [ 4] 3134 	ld	c,l
   51C6 44            [ 4] 3135 	ld	b,h
   51C7 ED 43 D8 90   [20] 3136 	ld	((_keys + 0x000a)), bc
                           3137 ;src/game.c:860: keys.abort = redefineKey("ABORT");
   51CB 21 2D 52      [10] 3138 	ld	hl,#___str_27
   51CE E5            [11] 3139 	push	hl
   51CF CD 22 7C      [17] 3140 	call	_redefineKey
   51D2 F1            [10] 3141 	pop	af
   51D3 4D            [ 4] 3142 	ld	c,l
   51D4 44            [ 4] 3143 	ld	b,h
   51D5 ED 43 DA 90   [20] 3144 	ld	((_keys + 0x000c)), bc
                           3145 ;src/game.c:862: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 39 - 10 * FONT_W, 144);
   51D9 21 09 90      [10] 3146 	ld	hl,#0x9009
   51DC E5            [11] 3147 	push	hl
   51DD 21 00 C0      [10] 3148 	ld	hl,#0xC000
   51E0 E5            [11] 3149 	push	hl
   51E1 CD 2F 85      [17] 3150 	call	_cpct_getScreenPtr
                           3151 ;src/game.c:863: cpct_drawSolidBox(pvideo, cpct_px2byteM0(5, 5), 15 * FONT_W, FONT_H);
   51E4 E5            [11] 3152 	push	hl
   51E5 21 05 05      [10] 3153 	ld	hl,#0x0505
   51E8 E5            [11] 3154 	push	hl
   51E9 CD FC 83      [17] 3155 	call	_cpct_px2byteM0
   51EC 55            [ 4] 3156 	ld	d,l
   51ED C1            [10] 3157 	pop	bc
   51EE 21 2D 0B      [10] 3158 	ld	hl,#0x0B2D
   51F1 E5            [11] 3159 	push	hl
   51F2 D5            [11] 3160 	push	de
   51F3 33            [ 6] 3161 	inc	sp
   51F4 C5            [11] 3162 	push	bc
   51F5 CD 45 84      [17] 3163 	call	_cpct_drawSolidBox
   51F8 F1            [10] 3164 	pop	af
   51F9 F1            [10] 3165 	pop	af
   51FA 33            [ 6] 3166 	inc	sp
   51FB C9            [10] 3167 	ret
   51FC                    3168 00107$:
                           3169 ;src/game.c:868: else if (cpct_isKeyPressed(Key_4)) {
   51FC 21 07 01      [10] 3170 	ld	hl,#0x0107
   51FF CD 27 81      [17] 3171 	call	_cpct_isKeyPressed
   5202 7D            [ 4] 3172 	ld	a,l
   5203 B7            [ 4] 3173 	or	a, a
   5204 C8            [11] 3174 	ret	Z
                           3175 ;src/game.c:870: waitKeyUp(Key_1);
   5205 21 08 01      [10] 3176 	ld	hl,#0x0108
   5208 E5            [11] 3177 	push	hl
   5209 CD F6 7B      [17] 3178 	call	_waitKeyUp
   520C F1            [10] 3179 	pop	af
                           3180 ;src/game.c:871: game();
   520D CD B0 4E      [17] 3181 	call	_game
                           3182 ;src/game.c:872: drawMenu();
   5210 CD 76 7C      [17] 3183 	call	_drawMenu
   5213 C9            [10] 3184 	ret
   5214                    3185 ___str_22:
   5214 55 50              3186 	.ascii "UP"
   5216 00                 3187 	.db 0x00
   5217                    3188 ___str_23:
   5217 44 4F 57 4E        3189 	.ascii "DOWN"
   521B 00                 3190 	.db 0x00
   521C                    3191 ___str_24:
   521C 4C 45 46 54        3192 	.ascii "LEFT"
   5220 00                 3193 	.db 0x00
   5221                    3194 ___str_25:
   5221 52 49 47 48 54     3195 	.ascii "RIGHT"
   5226 00                 3196 	.db 0x00
   5227                    3197 ___str_26:
   5227 50 41 55 53 45     3198 	.ascii "PAUSE"
   522C 00                 3199 	.db 0x00
   522D                    3200 ___str_27:
   522D 41 42 4F 52 54     3201 	.ascii "ABORT"
   5232 00                 3202 	.db 0x00
                           3203 ;src/game.c:880: void threes() {
                           3204 ;	---------------------------------
                           3205 ; Function threes
                           3206 ; ---------------------------------
   5233                    3207 _threes::
                           3208 ;src/game.c:883: while (1) {
   5233                    3209 00105$:
                           3210 ;src/game.c:885: drawMenu();
   5233 CD 76 7C      [17] 3211 	call	_drawMenu
                           3212 ;src/game.c:889: while (lapso < SWITCH_SCREENS) {
   5236 01 00 00      [10] 3213 	ld	bc,#0x0000
   5239 11 00 00      [10] 3214 	ld	de,#0x0000
   523C                    3215 00101$:
   523C 79            [ 4] 3216 	ld	a,c
   523D D6 58         [ 7] 3217 	sub	a, #0x58
   523F 78            [ 4] 3218 	ld	a,b
   5240 DE 1B         [ 7] 3219 	sbc	a, #0x1B
   5242 7B            [ 4] 3220 	ld	a,e
   5243 DE 00         [ 7] 3221 	sbc	a, #0x00
   5245 7A            [ 4] 3222 	ld	a,d
   5246 DE 00         [ 7] 3223 	sbc	a, #0x00
   5248 30 13         [12] 3224 	jr	NC,00103$
                           3225 ;src/game.c:891: checkKeyboardMenu();
   524A C5            [11] 3226 	push	bc
   524B D5            [11] 3227 	push	de
   524C CD 31 50      [17] 3228 	call	_checkKeyboardMenu
   524F D1            [10] 3229 	pop	de
   5250 C1            [10] 3230 	pop	bc
                           3231 ;src/game.c:893: lapso++;
   5251 0C            [ 4] 3232 	inc	c
   5252 20 E8         [12] 3233 	jr	NZ,00101$
   5254 04            [ 4] 3234 	inc	b
   5255 20 E5         [12] 3235 	jr	NZ,00101$
   5257 1C            [ 4] 3236 	inc	e
   5258 20 E2         [12] 3237 	jr	NZ,00101$
   525A 14            [ 4] 3238 	inc	d
   525B 18 DF         [12] 3239 	jr	00101$
   525D                    3240 00103$:
                           3241 ;src/game.c:897: drawScoreBoard();
   525D CD 5F 4D      [17] 3242 	call	_drawScoreBoard
   5260 18 D1         [12] 3243 	jr	00105$
                           3244 	.area _CODE
                           3245 	.area _INITIALIZER
   91B7                    3246 __xinit__newNameHighScore:
   91B7 20                 3247 	.db #0x20	; 32
   91B8 20                 3248 	.db #0x20	; 32
   91B9 20                 3249 	.db #0x20	; 32
   91BA 20                 3250 	.db #0x20	; 32
   91BB 20                 3251 	.db #0x20	; 32
   91BC 20                 3252 	.db #0x20	; 32
   91BD 20                 3253 	.db #0x20	; 32
   91BE 20                 3254 	.db #0x20	; 32
   91BF 20                 3255 	.db #0x20	; 32
   91C0 20                 3256 	.db #0x20	; 32
   91C1 00                 3257 	.db #0x00	; 0
   91C2 00                 3258 	.db 0x00
   91C3 00                 3259 	.db 0x00
   91C4 00                 3260 	.db 0x00
   91C5 00                 3261 	.db 0x00
                           3262 	.area _CABS (ABS)
