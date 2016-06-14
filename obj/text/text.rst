                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.5 #9498 (Mac OS X x86_64)
                              4 ;--------------------------------------------------------
                              5 	.module text
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _moveCharacter
                             12 	.globl _strLength
                             13 	.globl _itoa
                             14 	.globl _clearWindow
                             15 	.globl _cpct_getScreenPtr
                             16 	.globl _cpct_waitVSYNC
                             17 	.globl _cpct_drawSprite
                             18 	.globl _strCopy
                             19 	.globl _drawNumber
                             20 	.globl _drawText
                             21 	.globl _moveFallingText
                             22 	.globl _drawFallingText
                             23 ;--------------------------------------------------------
                             24 ; special function registers
                             25 ;--------------------------------------------------------
                             26 ;--------------------------------------------------------
                             27 ; ram data
                             28 ;--------------------------------------------------------
                             29 	.area _DATA
                             30 ;--------------------------------------------------------
                             31 ; ram data
                             32 ;--------------------------------------------------------
                             33 	.area _INITIALIZED
                             34 ;--------------------------------------------------------
                             35 ; absolute external ram data
                             36 ;--------------------------------------------------------
                             37 	.area _DABS (ABS)
                             38 ;--------------------------------------------------------
                             39 ; global & static initialisations
                             40 ;--------------------------------------------------------
                             41 	.area _HOME
                             42 	.area _GSINIT
                             43 	.area _GSFINAL
                             44 	.area _GSINIT
                             45 ;--------------------------------------------------------
                             46 ; Home
                             47 ;--------------------------------------------------------
                             48 	.area _HOME
                             49 	.area _HOME
                             50 ;--------------------------------------------------------
                             51 ; code
                             52 ;--------------------------------------------------------
                             53 	.area _CODE
                             54 ;src/text/text.c:22: u8 strLength(u8 str[]){
                             55 ;	---------------------------------
                             56 ; Function strLength
                             57 ; ---------------------------------
   848E                      58 _strLength::
                             59 ;src/text/text.c:26: while(str[result]!='\0'){
   848E 0E 00         [ 7]   60 	ld	c,#0x00
   8490                      61 00101$:
   8490 21 02 00      [10]   62 	ld	hl, #2
   8493 39            [11]   63 	add	hl, sp
   8494 7E            [ 7]   64 	ld	a, (hl)
   8495 23            [ 6]   65 	inc	hl
   8496 66            [ 7]   66 	ld	h, (hl)
   8497 6F            [ 4]   67 	ld	l, a
   8498 06 00         [ 7]   68 	ld	b,#0x00
   849A 09            [11]   69 	add	hl, bc
   849B 7E            [ 7]   70 	ld	a,(hl)
   849C B7            [ 4]   71 	or	a, a
   849D 28 03         [12]   72 	jr	Z,00103$
                             73 ;src/text/text.c:27: result++;
   849F 0C            [ 4]   74 	inc	c
   84A0 18 EE         [12]   75 	jr	00101$
   84A2                      76 00103$:
                             77 ;src/text/text.c:29: return result;
   84A2 69            [ 4]   78 	ld	l,c
   84A3 C9            [10]   79 	ret
                             80 ;src/text/text.c:35: void strCopy(i8* to, const i8* from) {
                             81 ;	---------------------------------
                             82 ; Function strCopy
                             83 ; ---------------------------------
   84A4                      84 _strCopy::
   84A4 DD E5         [15]   85 	push	ix
   84A6 DD 21 00 00   [14]   86 	ld	ix,#0
   84AA DD 39         [15]   87 	add	ix,sp
   84AC 3B            [ 6]   88 	dec	sp
                             89 ;src/text/text.c:38: while (i) {
   84AD DD 4E 06      [19]   90 	ld	c,6 (ix)
   84B0 DD 46 07      [19]   91 	ld	b,7 (ix)
   84B3 DD 5E 04      [19]   92 	ld	e,4 (ix)
   84B6 DD 56 05      [19]   93 	ld	d,5 (ix)
   84B9 DD 36 FF 1E   [19]   94 	ld	-1 (ix),#0x1E
   84BD                      95 00101$:
   84BD DD 7E FF      [19]   96 	ld	a,-1 (ix)
   84C0 B7            [ 4]   97 	or	a, a
   84C1 28 09         [12]   98 	jr	Z,00104$
                             99 ;src/text/text.c:39: *to++ = *from++;
   84C3 0A            [ 7]  100 	ld	a,(bc)
   84C4 03            [ 6]  101 	inc	bc
   84C5 12            [ 7]  102 	ld	(de),a
   84C6 13            [ 6]  103 	inc	de
                            104 ;src/text/text.c:40: i--;
   84C7 DD 35 FF      [23]  105 	dec	-1 (ix)
   84CA 18 F1         [12]  106 	jr	00101$
   84CC                     107 00104$:
   84CC 33            [ 6]  108 	inc	sp
   84CD DD E1         [14]  109 	pop	ix
   84CF C9            [10]  110 	ret
                            111 ;src/text/text.c:44: void drawNumber(u16 aNumber, u8 length, u8 xPos, u8 yPos){
                            112 ;	---------------------------------
                            113 ; Function drawNumber
                            114 ; ---------------------------------
   84D0                     115 _drawNumber::
   84D0 DD E5         [15]  116 	push	ix
   84D2 DD 21 00 00   [14]  117 	ld	ix,#0
   84D6 DD 39         [15]  118 	add	ix,sp
   84D8 21 F8 FF      [10]  119 	ld	hl,#-8
   84DB 39            [11]  120 	add	hl,sp
                            121 ;src/text/text.c:52: itoa(aNumber, str, 10);
   84DC F9            [ 6]  122 	ld	sp, hl
   84DD 23            [ 6]  123 	inc	hl
   84DE 23            [ 6]  124 	inc	hl
   84DF 4D            [ 4]  125 	ld	c,l
   84E0 44            [ 4]  126 	ld	b,h
   84E1 59            [ 4]  127 	ld	e, c
   84E2 50            [ 4]  128 	ld	d, b
   84E3 C5            [11]  129 	push	bc
   84E4 21 0A 00      [10]  130 	ld	hl,#0x000A
   84E7 E5            [11]  131 	push	hl
   84E8 D5            [11]  132 	push	de
   84E9 DD 6E 04      [19]  133 	ld	l,4 (ix)
   84EC DD 66 05      [19]  134 	ld	h,5 (ix)
   84EF E5            [11]  135 	push	hl
   84F0 CD 5C 89      [17]  136 	call	_itoa
   84F3 21 06 00      [10]  137 	ld	hl,#6
   84F6 39            [11]  138 	add	hl,sp
   84F7 F9            [ 6]  139 	ld	sp,hl
   84F8 C1            [10]  140 	pop	bc
                            141 ;src/text/text.c:54: zeros = length - strLength(str);
   84F9 59            [ 4]  142 	ld	e, c
   84FA 50            [ 4]  143 	ld	d, b
   84FB C5            [11]  144 	push	bc
   84FC D5            [11]  145 	push	de
   84FD CD 8E 84      [17]  146 	call	_strLength
   8500 F1            [10]  147 	pop	af
   8501 C1            [10]  148 	pop	bc
   8502 DD 7E 06      [19]  149 	ld	a,6 (ix)
   8505 95            [ 4]  150 	sub	a, l
   8506 DD 77 F9      [19]  151 	ld	-7 (ix),a
                            152 ;src/text/text.c:56: number = str[x];
   8509 0A            [ 7]  153 	ld	a,(bc)
   850A 5F            [ 4]  154 	ld	e,a
                            155 ;src/text/text.c:58: while(number != '\0'){
   850B DD 36 F8 00   [19]  156 	ld	-8 (ix),#0x00
   850F                     157 00101$:
   850F 7B            [ 4]  158 	ld	a,e
   8510 B7            [ 4]  159 	or	a, a
   8511 28 55         [12]  160 	jr	Z,00104$
                            161 ;src/text/text.c:60: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, (zeros + x) * FONT_W + xPos, yPos);
   8513 DD 7E F9      [19]  162 	ld	a,-7 (ix)
   8516 DD 86 F8      [19]  163 	add	a, -8 (ix)
   8519 6F            [ 4]  164 	ld	l,a
   851A D5            [11]  165 	push	de
   851B 5D            [ 4]  166 	ld	e,l
   851C 29            [11]  167 	add	hl, hl
   851D 19            [11]  168 	add	hl, de
   851E D1            [10]  169 	pop	de
   851F 7D            [ 4]  170 	ld	a,l
   8520 DD 86 07      [19]  171 	add	a, 7 (ix)
   8523 57            [ 4]  172 	ld	d,a
   8524 C5            [11]  173 	push	bc
   8525 D5            [11]  174 	push	de
   8526 DD 7E 08      [19]  175 	ld	a,8 (ix)
   8529 F5            [11]  176 	push	af
   852A 33            [ 6]  177 	inc	sp
   852B D5            [11]  178 	push	de
   852C 33            [ 6]  179 	inc	sp
   852D 21 00 C0      [10]  180 	ld	hl,#0xC000
   8530 E5            [11]  181 	push	hl
   8531 CD 29 94      [17]  182 	call	_cpct_getScreenPtr
   8534 D1            [10]  183 	pop	de
   8535 C1            [10]  184 	pop	bc
                            185 ;src/text/text.c:61: cpct_drawSprite(G_numbers_big[number - 48], pvideo, FONT_W, FONT_H);
   8536 E5            [11]  186 	push	hl
   8537 FD E1         [14]  187 	pop	iy
   8539 16 00         [ 7]  188 	ld	d,#0x00
   853B 7B            [ 4]  189 	ld	a,e
   853C C6 D0         [ 7]  190 	add	a,#0xD0
   853E 5F            [ 4]  191 	ld	e,a
   853F 7A            [ 4]  192 	ld	a,d
   8540 CE FF         [ 7]  193 	adc	a,#0xFF
   8542 57            [ 4]  194 	ld	d,a
   8543 6B            [ 4]  195 	ld	l, e
   8544 62            [ 4]  196 	ld	h, d
   8545 29            [11]  197 	add	hl, hl
   8546 29            [11]  198 	add	hl, hl
   8547 29            [11]  199 	add	hl, hl
   8548 29            [11]  200 	add	hl, hl
   8549 29            [11]  201 	add	hl, hl
   854A 19            [11]  202 	add	hl, de
   854B 11 D2 68      [10]  203 	ld	de,#_G_numbers_big
   854E 19            [11]  204 	add	hl,de
   854F EB            [ 4]  205 	ex	de,hl
   8550 C5            [11]  206 	push	bc
   8551 21 03 0B      [10]  207 	ld	hl,#0x0B03
   8554 E5            [11]  208 	push	hl
   8555 FD E5         [15]  209 	push	iy
   8557 D5            [11]  210 	push	de
   8558 CD A3 90      [17]  211 	call	_cpct_drawSprite
   855B C1            [10]  212 	pop	bc
                            213 ;src/text/text.c:63: number = str[++x];
   855C DD 34 F8      [23]  214 	inc	-8 (ix)
   855F DD 6E F8      [19]  215 	ld	l,-8 (ix)
   8562 26 00         [ 7]  216 	ld	h,#0x00
   8564 09            [11]  217 	add	hl,bc
   8565 5E            [ 7]  218 	ld	e,(hl)
   8566 18 A7         [12]  219 	jr	00101$
   8568                     220 00104$:
   8568 DD F9         [10]  221 	ld	sp, ix
   856A DD E1         [14]  222 	pop	ix
   856C C9            [10]  223 	ret
                            224 ;src/text/text.c:69: void drawText(u8 text[], u8 xPos, u8 yPos, u8 centered){
                            225 ;	---------------------------------
                            226 ; Function drawText
                            227 ; ---------------------------------
   856D                     228 _drawText::
   856D DD E5         [15]  229 	push	ix
   856F DD 21 00 00   [14]  230 	ld	ix,#0
   8573 DD 39         [15]  231 	add	ix,sp
   8575 F5            [11]  232 	push	af
   8576 F5            [11]  233 	push	af
   8577 3B            [ 6]  234 	dec	sp
                            235 ;src/text/text.c:75: if (centered){
   8578 DD 7E 08      [19]  236 	ld	a,8 (ix)
   857B B7            [ 4]  237 	or	a, a
   857C 28 16         [12]  238 	jr	Z,00102$
                            239 ;src/text/text.c:76: x = strLength(text);
   857E DD 6E 04      [19]  240 	ld	l,4 (ix)
   8581 DD 66 05      [19]  241 	ld	h,5 (ix)
   8584 E5            [11]  242 	push	hl
   8585 CD 8E 84      [17]  243 	call	_strLength
   8588 F1            [10]  244 	pop	af
                            245 ;src/text/text.c:77: xPos = 39 - (x/2)*FONT_W;
   8589 CB 3D         [ 8]  246 	srl	l
   858B 4D            [ 4]  247 	ld	c,l
   858C 29            [11]  248 	add	hl, hl
   858D 09            [11]  249 	add	hl, bc
   858E 3E 27         [ 7]  250 	ld	a,#0x27
   8590 95            [ 4]  251 	sub	a, l
   8591 DD 77 06      [19]  252 	ld	6 (ix),a
   8594                     253 00102$:
                            254 ;src/text/text.c:81: character = text[x];
   8594 DD 4E 04      [19]  255 	ld	c,4 (ix)
   8597 DD 46 05      [19]  256 	ld	b,5 (ix)
   859A 0A            [ 7]  257 	ld	a,(bc)
   859B DD 77 FC      [19]  258 	ld	-4 (ix),a
                            259 ;src/text/text.c:83: while(character != '\0'){
   859E DD 36 FB 00   [19]  260 	ld	-5 (ix),#0x00
   85A2 DD 36 FF 00   [19]  261 	ld	-1 (ix),#0x00
   85A6                     262 00109$:
   85A6 DD 7E FC      [19]  263 	ld	a,-4 (ix)
   85A9 B7            [ 4]  264 	or	a, a
   85AA CA 4B 86      [10]  265 	jp	Z,00112$
                            266 ;src/text/text.c:85: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, (x * FONT_W) + xPos, yPos);
   85AD DD 7E FF      [19]  267 	ld	a,-1 (ix)
   85B0 DD 86 06      [19]  268 	add	a, 6 (ix)
   85B3 57            [ 4]  269 	ld	d,a
   85B4 C5            [11]  270 	push	bc
   85B5 DD 7E 07      [19]  271 	ld	a,7 (ix)
   85B8 F5            [11]  272 	push	af
   85B9 33            [ 6]  273 	inc	sp
   85BA D5            [11]  274 	push	de
   85BB 33            [ 6]  275 	inc	sp
   85BC 21 00 C0      [10]  276 	ld	hl,#0xC000
   85BF E5            [11]  277 	push	hl
   85C0 CD 29 94      [17]  278 	call	_cpct_getScreenPtr
   85C3 C1            [10]  279 	pop	bc
                            280 ;src/text/text.c:90: cpct_drawSprite(G_numbers_big[character - 48], pvideo, FONT_W, FONT_H);
   85C4 DD 75 FD      [19]  281 	ld	-3 (ix),l
   85C7 DD 74 FE      [19]  282 	ld	-2 (ix),h
   85CA DD 5E FC      [19]  283 	ld	e,-4 (ix)
   85CD 16 00         [ 7]  284 	ld	d,#0x00
                            285 ;src/text/text.c:88: if(character >= 48 && character <= 57){
   85CF DD 7E FC      [19]  286 	ld	a,-4 (ix)
   85D2 D6 30         [ 7]  287 	sub	a, #0x30
   85D4 38 2F         [12]  288 	jr	C,00106$
   85D6 3E 39         [ 7]  289 	ld	a,#0x39
   85D8 DD 96 FC      [19]  290 	sub	a, -4 (ix)
   85DB 38 28         [12]  291 	jr	C,00106$
                            292 ;src/text/text.c:90: cpct_drawSprite(G_numbers_big[character - 48], pvideo, FONT_W, FONT_H);
   85DD 7B            [ 4]  293 	ld	a,e
   85DE C6 D0         [ 7]  294 	add	a,#0xD0
   85E0 5F            [ 4]  295 	ld	e,a
   85E1 7A            [ 4]  296 	ld	a,d
   85E2 CE FF         [ 7]  297 	adc	a,#0xFF
   85E4 57            [ 4]  298 	ld	d,a
   85E5 6B            [ 4]  299 	ld	l, e
   85E6 62            [ 4]  300 	ld	h, d
   85E7 29            [11]  301 	add	hl, hl
   85E8 29            [11]  302 	add	hl, hl
   85E9 29            [11]  303 	add	hl, hl
   85EA 29            [11]  304 	add	hl, hl
   85EB 29            [11]  305 	add	hl, hl
   85EC 19            [11]  306 	add	hl, de
   85ED 11 D2 68      [10]  307 	ld	de,#_G_numbers_big
   85F0 19            [11]  308 	add	hl,de
   85F1 EB            [ 4]  309 	ex	de,hl
   85F2 C5            [11]  310 	push	bc
   85F3 21 03 0B      [10]  311 	ld	hl,#0x0B03
   85F6 E5            [11]  312 	push	hl
   85F7 DD 6E FD      [19]  313 	ld	l,-3 (ix)
   85FA DD 66 FE      [19]  314 	ld	h,-2 (ix)
   85FD E5            [11]  315 	push	hl
   85FE D5            [11]  316 	push	de
   85FF CD A3 90      [17]  317 	call	_cpct_drawSprite
   8602 C1            [10]  318 	pop	bc
   8603 18 2D         [12]  319 	jr	00107$
   8605                     320 00106$:
                            321 ;src/text/text.c:93: else if(character != 32){ //32 = SPACE
   8605 DD 7E FC      [19]  322 	ld	a,-4 (ix)
   8608 D6 20         [ 7]  323 	sub	a, #0x20
   860A 28 26         [12]  324 	jr	Z,00107$
                            325 ;src/text/text.c:96: cpct_drawSprite(g_font_big[character - 64], pvideo, FONT_W, FONT_H);
   860C 7B            [ 4]  326 	ld	a,e
   860D C6 C0         [ 7]  327 	add	a,#0xC0
   860F 5F            [ 4]  328 	ld	e,a
   8610 7A            [ 4]  329 	ld	a,d
   8611 CE FF         [ 7]  330 	adc	a,#0xFF
   8613 57            [ 4]  331 	ld	d,a
   8614 6B            [ 4]  332 	ld	l, e
   8615 62            [ 4]  333 	ld	h, d
   8616 29            [11]  334 	add	hl, hl
   8617 29            [11]  335 	add	hl, hl
   8618 29            [11]  336 	add	hl, hl
   8619 29            [11]  337 	add	hl, hl
   861A 29            [11]  338 	add	hl, hl
   861B 19            [11]  339 	add	hl, de
   861C 11 EC 63      [10]  340 	ld	de,#_g_font_big
   861F 19            [11]  341 	add	hl,de
   8620 EB            [ 4]  342 	ex	de,hl
   8621 C5            [11]  343 	push	bc
   8622 21 03 0B      [10]  344 	ld	hl,#0x0B03
   8625 E5            [11]  345 	push	hl
   8626 DD 6E FD      [19]  346 	ld	l,-3 (ix)
   8629 DD 66 FE      [19]  347 	ld	h,-2 (ix)
   862C E5            [11]  348 	push	hl
   862D D5            [11]  349 	push	de
   862E CD A3 90      [17]  350 	call	_cpct_drawSprite
   8631 C1            [10]  351 	pop	bc
   8632                     352 00107$:
                            353 ;src/text/text.c:99: character = text[++x];
   8632 DD 34 FF      [23]  354 	inc	-1 (ix)
   8635 DD 34 FF      [23]  355 	inc	-1 (ix)
   8638 DD 34 FF      [23]  356 	inc	-1 (ix)
   863B DD 34 FB      [23]  357 	inc	-5 (ix)
   863E DD 6E FB      [19]  358 	ld	l,-5 (ix)
   8641 26 00         [ 7]  359 	ld	h,#0x00
   8643 09            [11]  360 	add	hl,bc
   8644 7E            [ 7]  361 	ld	a,(hl)
   8645 DD 77 FC      [19]  362 	ld	-4 (ix),a
   8648 C3 A6 85      [10]  363 	jp	00109$
   864B                     364 00112$:
   864B DD F9         [10]  365 	ld	sp, ix
   864D DD E1         [14]  366 	pop	ix
   864F C9            [10]  367 	ret
                            368 ;src/text/text.c:105: void moveCharacter(FChar *character){
                            369 ;	---------------------------------
                            370 ; Function moveCharacter
                            371 ; ---------------------------------
   8650                     372 _moveCharacter::
   8650 DD E5         [15]  373 	push	ix
   8652 DD 21 00 00   [14]  374 	ld	ix,#0
   8656 DD 39         [15]  375 	add	ix,sp
   8658 21 F3 FF      [10]  376 	ld	hl,#-13
   865B 39            [11]  377 	add	hl,sp
   865C F9            [ 6]  378 	ld	sp,hl
                            379 ;src/text/text.c:107: if(character->phase != FALLING_TEXT_MAX_BOUNCES){
   865D DD 4E 04      [19]  380 	ld	c,4 (ix)
   8660 DD 46 05      [19]  381 	ld	b,5 (ix)
   8663 0A            [ 7]  382 	ld	a,(bc)
   8664 57            [ 4]  383 	ld	d,a
                            384 ;src/text/text.c:112: if(character->yPos != character->startyPos){
   8665 21 02 00      [10]  385 	ld	hl,#0x0002
   8668 09            [11]  386 	add	hl,bc
   8669 DD 75 FE      [19]  387 	ld	-2 (ix),l
   866C DD 74 FF      [19]  388 	ld	-1 (ix),h
   866F DD 6E FE      [19]  389 	ld	l,-2 (ix)
   8672 DD 66 FF      [19]  390 	ld	h,-1 (ix)
   8675 5E            [ 7]  391 	ld	e,(hl)
                            392 ;src/text/text.c:114: clearWindow(character->xPos, character->yPos + (character->phase %2 != 0 ? - FALLING_TEXT_SPEED:FALLING_TEXT_SPEED), FONT_W, FONT_H);
   8676 21 01 00      [10]  393 	ld	hl,#0x0001
   8679 09            [11]  394 	add	hl,bc
   867A DD 75 FC      [19]  395 	ld	-4 (ix),l
   867D DD 74 FD      [19]  396 	ld	-3 (ix),h
                            397 ;src/text/text.c:146: drawText(character->character, character->xPos, character->yPos,0);
   8680 21 06 00      [10]  398 	ld	hl,#0x0006
   8683 09            [11]  399 	add	hl,bc
   8684 DD 75 FA      [19]  400 	ld	-6 (ix),l
   8687 DD 74 FB      [19]  401 	ld	-5 (ix),h
                            402 ;src/text/text.c:107: if(character->phase != FALLING_TEXT_MAX_BOUNCES){
   868A 7A            [ 4]  403 	ld	a,d
   868B D6 06         [ 7]  404 	sub	a, #0x06
   868D CA 7C 87      [10]  405 	jp	Z,00111$
                            406 ;src/text/text.c:112: if(character->yPos != character->startyPos){
   8690 21 03 00      [10]  407 	ld	hl,#0x0003
   8693 09            [11]  408 	add	hl,bc
   8694 DD 75 F8      [19]  409 	ld	-8 (ix),l
   8697 DD 74 F9      [19]  410 	ld	-7 (ix),h
   869A DD 6E F8      [19]  411 	ld	l,-8 (ix)
   869D DD 66 F9      [19]  412 	ld	h,-7 (ix)
   86A0 7E            [ 7]  413 	ld	a,(hl)
   86A1 DD 77 F7      [19]  414 	ld	-9 (ix),a
   86A4 7B            [ 4]  415 	ld	a,e
   86A5 DD 96 F7      [19]  416 	sub	a, -9 (ix)
   86A8 28 24         [12]  417 	jr	Z,00102$
                            418 ;src/text/text.c:114: clearWindow(character->xPos, character->yPos + (character->phase %2 != 0 ? - FALLING_TEXT_SPEED:FALLING_TEXT_SPEED), FONT_W, FONT_H);
   86AA CB 42         [ 8]  419 	bit	0, d
   86AC 28 04         [12]  420 	jr	Z,00115$
   86AE 2E FD         [ 7]  421 	ld	l,#0xFD
   86B0 18 02         [12]  422 	jr	00116$
   86B2                     423 00115$:
   86B2 2E 03         [ 7]  424 	ld	l,#0x03
   86B4                     425 00116$:
   86B4 7B            [ 4]  426 	ld	a,e
   86B5 85            [ 4]  427 	add	a, l
   86B6 5F            [ 4]  428 	ld	e,a
   86B7 DD 6E FC      [19]  429 	ld	l,-4 (ix)
   86BA DD 66 FD      [19]  430 	ld	h,-3 (ix)
   86BD 56            [ 7]  431 	ld	d,(hl)
   86BE C5            [11]  432 	push	bc
   86BF 21 03 0B      [10]  433 	ld	hl,#0x0B03
   86C2 E5            [11]  434 	push	hl
   86C3 7B            [ 4]  435 	ld	a,e
   86C4 F5            [11]  436 	push	af
   86C5 33            [ 6]  437 	inc	sp
   86C6 D5            [11]  438 	push	de
   86C7 33            [ 6]  439 	inc	sp
   86C8 CD D3 8F      [17]  440 	call	_clearWindow
   86CB F1            [10]  441 	pop	af
   86CC F1            [10]  442 	pop	af
   86CD C1            [10]  443 	pop	bc
   86CE                     444 00102$:
                            445 ;src/text/text.c:119: if(character->phase %2 != 0){
   86CE 0A            [ 7]  446 	ld	a,(bc)
   86CF E6 01         [ 7]  447 	and	a, #0x01
   86D1 DD 77 F7      [19]  448 	ld	-9 (ix),a
                            449 ;src/text/text.c:112: if(character->yPos != character->startyPos){
   86D4 DD 6E FE      [19]  450 	ld	l,-2 (ix)
   86D7 DD 66 FF      [19]  451 	ld	h,-1 (ix)
   86DA 5E            [ 7]  452 	ld	e,(hl)
                            453 ;src/text/text.c:123: if(character->yPos >= character->destinationyPos){
   86DB 21 05 00      [10]  454 	ld	hl,#0x0005
   86DE 09            [11]  455 	add	hl,bc
   86DF DD 75 F5      [19]  456 	ld	-11 (ix),l
   86E2 DD 74 F6      [19]  457 	ld	-10 (ix),h
                            458 ;src/text/text.c:127: character->destinationyPos = character->endyPos - ((character->endyPos - character->startyPos) / character->phase);
   86E5 21 04 00      [10]  459 	ld	hl,#0x0004
   86E8 09            [11]  460 	add	hl,bc
   86E9 E3            [19]  461 	ex	(sp), hl
                            462 ;src/text/text.c:119: if(character->phase %2 != 0){
   86EA DD 7E F7      [19]  463 	ld	a,-9 (ix)
   86ED B7            [ 4]  464 	or	a, a
   86EE 28 48         [12]  465 	jr	Z,00108$
                            466 ;src/text/text.c:121: character->yPos += FALLING_TEXT_SPEED;
   86F0 1C            [ 4]  467 	inc	e
   86F1 1C            [ 4]  468 	inc	e
   86F2 1C            [ 4]  469 	inc	e
   86F3 DD 6E FE      [19]  470 	ld	l,-2 (ix)
   86F6 DD 66 FF      [19]  471 	ld	h,-1 (ix)
   86F9 73            [ 7]  472 	ld	(hl),e
                            473 ;src/text/text.c:123: if(character->yPos >= character->destinationyPos){
   86FA DD 6E F5      [19]  474 	ld	l,-11 (ix)
   86FD DD 66 F6      [19]  475 	ld	h,-10 (ix)
   8700 56            [ 7]  476 	ld	d,(hl)
   8701 7B            [ 4]  477 	ld	a,e
   8702 92            [ 4]  478 	sub	a, d
   8703 38 55         [12]  479 	jr	C,00109$
                            480 ;src/text/text.c:125: character->phase++;
   8705 0A            [ 7]  481 	ld	a,(bc)
   8706 5F            [ 4]  482 	ld	e,a
   8707 1C            [ 4]  483 	inc	e
   8708 7B            [ 4]  484 	ld	a,e
   8709 02            [ 7]  485 	ld	(bc),a
                            486 ;src/text/text.c:127: character->destinationyPos = character->endyPos - ((character->endyPos - character->startyPos) / character->phase);
   870A E1            [10]  487 	pop	hl
   870B E5            [11]  488 	push	hl
   870C 7E            [ 7]  489 	ld	a,(hl)
   870D DD 77 F7      [19]  490 	ld	-9 (ix), a
   8710 4F            [ 4]  491 	ld	c, a
   8711 06 00         [ 7]  492 	ld	b,#0x00
   8713 DD 6E F8      [19]  493 	ld	l,-8 (ix)
   8716 DD 66 F9      [19]  494 	ld	h,-7 (ix)
   8719 6E            [ 7]  495 	ld	l,(hl)
   871A 16 00         [ 7]  496 	ld	d,#0x00
   871C 79            [ 4]  497 	ld	a,c
   871D 95            [ 4]  498 	sub	a, l
   871E 4F            [ 4]  499 	ld	c,a
   871F 78            [ 4]  500 	ld	a,b
   8720 9A            [ 4]  501 	sbc	a, d
   8721 47            [ 4]  502 	ld	b,a
   8722 16 00         [ 7]  503 	ld	d,#0x00
   8724 D5            [11]  504 	push	de
   8725 C5            [11]  505 	push	bc
   8726 CD 49 94      [17]  506 	call	__divsint
   8729 F1            [10]  507 	pop	af
   872A F1            [10]  508 	pop	af
   872B DD 7E F7      [19]  509 	ld	a, -9 (ix)
   872E 95            [ 4]  510 	sub	a, l
   872F DD 6E F5      [19]  511 	ld	l,-11 (ix)
   8732 DD 66 F6      [19]  512 	ld	h,-10 (ix)
   8735 77            [ 7]  513 	ld	(hl),a
   8736 18 22         [12]  514 	jr	00109$
   8738                     515 00108$:
                            516 ;src/text/text.c:134: character->yPos -= FALLING_TEXT_SPEED;
   8738 7B            [ 4]  517 	ld	a,e
   8739 C6 FD         [ 7]  518 	add	a,#0xFD
   873B 5F            [ 4]  519 	ld	e,a
   873C DD 6E FE      [19]  520 	ld	l,-2 (ix)
   873F DD 66 FF      [19]  521 	ld	h,-1 (ix)
   8742 73            [ 7]  522 	ld	(hl),e
                            523 ;src/text/text.c:136: if(character->yPos <= character->destinationyPos){
   8743 DD 6E F5      [19]  524 	ld	l,-11 (ix)
   8746 DD 66 F6      [19]  525 	ld	h,-10 (ix)
   8749 7E            [ 7]  526 	ld	a, (hl)
   874A 93            [ 4]  527 	sub	a, e
   874B 38 0D         [12]  528 	jr	C,00109$
                            529 ;src/text/text.c:138: character->phase++;
   874D 0A            [ 7]  530 	ld	a,(bc)
   874E 3C            [ 4]  531 	inc	a
   874F 02            [ 7]  532 	ld	(bc),a
                            533 ;src/text/text.c:140: character->destinationyPos = character->endyPos;
   8750 E1            [10]  534 	pop	hl
   8751 E5            [11]  535 	push	hl
   8752 4E            [ 7]  536 	ld	c,(hl)
   8753 DD 6E F5      [19]  537 	ld	l,-11 (ix)
   8756 DD 66 F6      [19]  538 	ld	h,-10 (ix)
   8759 71            [ 7]  539 	ld	(hl),c
   875A                     540 00109$:
                            541 ;src/text/text.c:146: drawText(character->character, character->xPos, character->yPos,0);
   875A DD 6E FE      [19]  542 	ld	l,-2 (ix)
   875D DD 66 FF      [19]  543 	ld	h,-1 (ix)
   8760 46            [ 7]  544 	ld	b,(hl)
   8761 DD 6E FC      [19]  545 	ld	l,-4 (ix)
   8764 DD 66 FD      [19]  546 	ld	h,-3 (ix)
   8767 56            [ 7]  547 	ld	d,(hl)
   8768 AF            [ 4]  548 	xor	a, a
   8769 F5            [11]  549 	push	af
   876A 33            [ 6]  550 	inc	sp
   876B 4A            [ 4]  551 	ld	c, d
   876C C5            [11]  552 	push	bc
   876D DD 6E FA      [19]  553 	ld	l,-6 (ix)
   8770 DD 66 FB      [19]  554 	ld	h,-5 (ix)
   8773 E5            [11]  555 	push	hl
   8774 CD 6D 85      [17]  556 	call	_drawText
   8777 F1            [10]  557 	pop	af
   8778 F1            [10]  558 	pop	af
   8779 33            [ 6]  559 	inc	sp
   877A 18 3A         [12]  560 	jr	00113$
   877C                     561 00111$:
                            562 ;src/text/text.c:150: clearWindow(character->xPos, character->yPos - FALLING_TEXT_SPEED, FONT_W, FONT_H);
   877C 7B            [ 4]  563 	ld	a,e
   877D C6 FD         [ 7]  564 	add	a,#0xFD
   877F 57            [ 4]  565 	ld	d,a
   8780 DD 6E FC      [19]  566 	ld	l,-4 (ix)
   8783 DD 66 FD      [19]  567 	ld	h,-3 (ix)
   8786 46            [ 7]  568 	ld	b,(hl)
   8787 21 03 0B      [10]  569 	ld	hl,#0x0B03
   878A E5            [11]  570 	push	hl
   878B D5            [11]  571 	push	de
   878C 33            [ 6]  572 	inc	sp
   878D C5            [11]  573 	push	bc
   878E 33            [ 6]  574 	inc	sp
   878F CD D3 8F      [17]  575 	call	_clearWindow
   8792 F1            [10]  576 	pop	af
   8793 F1            [10]  577 	pop	af
                            578 ;src/text/text.c:151: drawText(character->character, character->xPos, character->yPos,0);
   8794 DD 6E FE      [19]  579 	ld	l,-2 (ix)
   8797 DD 66 FF      [19]  580 	ld	h,-1 (ix)
   879A 56            [ 7]  581 	ld	d,(hl)
   879B DD 6E FC      [19]  582 	ld	l,-4 (ix)
   879E DD 66 FD      [19]  583 	ld	h,-3 (ix)
   87A1 46            [ 7]  584 	ld	b,(hl)
   87A2 AF            [ 4]  585 	xor	a, a
   87A3 F5            [11]  586 	push	af
   87A4 33            [ 6]  587 	inc	sp
   87A5 D5            [11]  588 	push	de
   87A6 33            [ 6]  589 	inc	sp
   87A7 C5            [11]  590 	push	bc
   87A8 33            [ 6]  591 	inc	sp
   87A9 DD 6E FA      [19]  592 	ld	l,-6 (ix)
   87AC DD 66 FB      [19]  593 	ld	h,-5 (ix)
   87AF E5            [11]  594 	push	hl
   87B0 CD 6D 85      [17]  595 	call	_drawText
   87B3 F1            [10]  596 	pop	af
   87B4 F1            [10]  597 	pop	af
   87B5 33            [ 6]  598 	inc	sp
   87B6                     599 00113$:
   87B6 DD F9         [10]  600 	ld	sp, ix
   87B8 DD E1         [14]  601 	pop	ix
   87BA C9            [10]  602 	ret
                            603 ;src/text/text.c:156: u8 moveFallingText(FChar *text, u8 lenght){
                            604 ;	---------------------------------
                            605 ; Function moveFallingText
                            606 ; ---------------------------------
   87BB                     607 _moveFallingText::
   87BB DD E5         [15]  608 	push	ix
   87BD DD 21 00 00   [14]  609 	ld	ix,#0
   87C1 DD 39         [15]  610 	add	ix,sp
   87C3 F5            [11]  611 	push	af
                            612 ;src/text/text.c:160: for(x=0;x<lenght;x++){
   87C4 0E 00         [ 7]  613 	ld	c,#0x00
   87C6                     614 00109$:
   87C6 79            [ 4]  615 	ld	a,c
   87C7 DD 96 06      [19]  616 	sub	a, 6 (ix)
   87CA 30 69         [12]  617 	jr	NC,00107$
                            618 ;src/text/text.c:162: if(x == 0 || (x > 0 && text[x-1].phase == 1 && text[x-1].yPos >= text[x].yPos + 15) || text[x-1].phase > 1) moveCharacter(&text[x]);
   87CC 69            [ 4]  619 	ld	l,c
   87CD 26 00         [ 7]  620 	ld	h,#0x00
   87CF 5D            [ 4]  621 	ld	e, l
   87D0 54            [ 4]  622 	ld	d, h
   87D1 CB 23         [ 8]  623 	sla	e
   87D3 CB 12         [ 8]  624 	rl	d
   87D5 CB 23         [ 8]  625 	sla	e
   87D7 CB 12         [ 8]  626 	rl	d
   87D9 CB 23         [ 8]  627 	sla	e
   87DB CB 12         [ 8]  628 	rl	d
   87DD DD 7E 04      [19]  629 	ld	a,4 (ix)
   87E0 83            [ 4]  630 	add	a, e
   87E1 DD 77 FE      [19]  631 	ld	-2 (ix),a
   87E4 DD 7E 05      [19]  632 	ld	a,5 (ix)
   87E7 8A            [ 4]  633 	adc	a, d
   87E8 DD 77 FF      [19]  634 	ld	-1 (ix),a
   87EB 79            [ 4]  635 	ld	a,c
   87EC B7            [ 4]  636 	or	a, a
   87ED 28 38         [12]  637 	jr	Z,00101$
   87EF 2B            [ 6]  638 	dec	hl
   87F0 29            [11]  639 	add	hl, hl
   87F1 29            [11]  640 	add	hl, hl
   87F2 29            [11]  641 	add	hl, hl
   87F3 EB            [ 4]  642 	ex	de,hl
   87F4 DD 6E 04      [19]  643 	ld	l,4 (ix)
   87F7 DD 66 05      [19]  644 	ld	h,5 (ix)
   87FA 19            [11]  645 	add	hl,de
   87FB 46            [ 7]  646 	ld	b,(hl)
   87FC 79            [ 4]  647 	ld	a,c
   87FD B7            [ 4]  648 	or	a, a
   87FE 28 22         [12]  649 	jr	Z,00106$
   8800 78            [ 4]  650 	ld	a,b
   8801 3D            [ 4]  651 	dec	a
   8802 20 1E         [12]  652 	jr	NZ,00106$
   8804 23            [ 6]  653 	inc	hl
   8805 23            [ 6]  654 	inc	hl
   8806 5E            [ 7]  655 	ld	e,(hl)
   8807 E1            [10]  656 	pop	hl
   8808 E5            [11]  657 	push	hl
   8809 23            [ 6]  658 	inc	hl
   880A 23            [ 6]  659 	inc	hl
   880B 6E            [ 7]  660 	ld	l,(hl)
   880C 26 00         [ 7]  661 	ld	h,#0x00
   880E D5            [11]  662 	push	de
   880F 11 0F 00      [10]  663 	ld	de,#0x000F
   8812 19            [11]  664 	add	hl, de
   8813 D1            [10]  665 	pop	de
   8814 16 00         [ 7]  666 	ld	d,#0x00
   8816 7B            [ 4]  667 	ld	a,e
   8817 95            [ 4]  668 	sub	a, l
   8818 7A            [ 4]  669 	ld	a,d
   8819 9C            [ 4]  670 	sbc	a, h
   881A E2 1F 88      [10]  671 	jp	PO, 00138$
   881D EE 80         [ 7]  672 	xor	a, #0x80
   881F                     673 00138$:
   881F F2 27 88      [10]  674 	jp	P,00101$
   8822                     675 00106$:
   8822 3E 01         [ 7]  676 	ld	a,#0x01
   8824 90            [ 4]  677 	sub	a, b
   8825 30 0B         [12]  678 	jr	NC,00110$
   8827                     679 00101$:
   8827 C5            [11]  680 	push	bc
   8828 D1            [10]  681 	pop	de
   8829 E1            [10]  682 	pop	hl
   882A E5            [11]  683 	push	hl
   882B D5            [11]  684 	push	de
   882C E5            [11]  685 	push	hl
   882D CD 50 86      [17]  686 	call	_moveCharacter
   8830 F1            [10]  687 	pop	af
   8831 C1            [10]  688 	pop	bc
   8832                     689 00110$:
                            690 ;src/text/text.c:160: for(x=0;x<lenght;x++){
   8832 0C            [ 4]  691 	inc	c
   8833 18 91         [12]  692 	jr	00109$
   8835                     693 00107$:
                            694 ;src/text/text.c:165: return text[lenght-1].phase == FALLING_TEXT_MAX_BOUNCES;
   8835 DD 6E 06      [19]  695 	ld	l,6 (ix)
   8838 26 00         [ 7]  696 	ld	h,#0x00
   883A 2B            [ 6]  697 	dec	hl
   883B 29            [11]  698 	add	hl, hl
   883C 29            [11]  699 	add	hl, hl
   883D 29            [11]  700 	add	hl, hl
   883E 4D            [ 4]  701 	ld	c, l
   883F 44            [ 4]  702 	ld	b, h
   8840 DD 6E 04      [19]  703 	ld	l,4 (ix)
   8843 DD 66 05      [19]  704 	ld	h,5 (ix)
   8846 09            [11]  705 	add	hl,bc
   8847 7E            [ 7]  706 	ld	a,(hl)
   8848 D6 06         [ 7]  707 	sub	a, #0x06
   884A 20 04         [12]  708 	jr	NZ,00139$
   884C 3E 01         [ 7]  709 	ld	a,#0x01
   884E 18 01         [12]  710 	jr	00140$
   8850                     711 00139$:
   8850 AF            [ 4]  712 	xor	a,a
   8851                     713 00140$:
   8851 6F            [ 4]  714 	ld	l,a
   8852 DD F9         [10]  715 	ld	sp, ix
   8854 DD E1         [14]  716 	pop	ix
   8856 C9            [10]  717 	ret
                            718 ;src/text/text.c:171: void drawFallingText(u8 text[], u8 xPos, u8 yPos, u8 destinationyPos){
                            719 ;	---------------------------------
                            720 ; Function drawFallingText
                            721 ; ---------------------------------
   8857                     722 _drawFallingText::
   8857 DD E5         [15]  723 	push	ix
   8859 DD 21 00 00   [14]  724 	ld	ix,#0
   885D DD 39         [15]  725 	add	ix,sp
   885F 21 5A FF      [10]  726 	ld	hl,#-166
   8862 39            [11]  727 	add	hl,sp
   8863 F9            [ 6]  728 	ld	sp,hl
                            729 ;src/text/text.c:177: for(x=0;x<strLength(text) && x<FALLING_TEXT_MAX_LENGHT;x++){
   8864 21 01 00      [10]  730 	ld	hl,#0x0001
   8867 39            [11]  731 	add	hl,sp
   8868 DD 75 FE      [19]  732 	ld	-2 (ix),l
   886B DD 74 FF      [19]  733 	ld	-1 (ix),h
   886E FD 21 00 00   [14]  734 	ld	iy,#0
   8872 FD 39         [15]  735 	add	iy,sp
   8874 FD 36 00 00   [19]  736 	ld	0 (iy),#0x00
   8878 DD 36 FD 00   [19]  737 	ld	-3 (ix),#0x00
   887C                     738 00109$:
   887C DD 6E 04      [19]  739 	ld	l,4 (ix)
   887F DD 66 05      [19]  740 	ld	h,5 (ix)
   8882 E5            [11]  741 	push	hl
   8883 CD 8E 84      [17]  742 	call	_strLength
   8886 F1            [10]  743 	pop	af
   8887 4D            [ 4]  744 	ld	c,l
   8888 FD 21 00 00   [14]  745 	ld	iy,#0
   888C FD 39         [15]  746 	add	iy,sp
   888E FD 7E 00      [19]  747 	ld	a,0 (iy)
   8891 91            [ 4]  748 	sub	a, c
   8892 D2 14 89      [10]  749 	jp	NC,00120$
   8895 FD 7E 00      [19]  750 	ld	a,0 (iy)
   8898 D6 14         [ 7]  751 	sub	a, #0x14
   889A 30 78         [12]  752 	jr	NC,00120$
                            753 ;src/text/text.c:179: ftext[x].phase = 1;
   889C FD 6E 00      [19]  754 	ld	l,0 (iy)
   889F 26 00         [ 7]  755 	ld	h,#0x00
   88A1 29            [11]  756 	add	hl, hl
   88A2 29            [11]  757 	add	hl, hl
   88A3 29            [11]  758 	add	hl, hl
   88A4 4D            [ 4]  759 	ld	c, l
   88A5 44            [ 4]  760 	ld	b, h
   88A6 DD 7E FE      [19]  761 	ld	a,-2 (ix)
   88A9 81            [ 4]  762 	add	a, c
   88AA 4F            [ 4]  763 	ld	c,a
   88AB DD 7E FF      [19]  764 	ld	a,-1 (ix)
   88AE 88            [ 4]  765 	adc	a, b
   88AF 47            [ 4]  766 	ld	b,a
   88B0 3E 01         [ 7]  767 	ld	a,#0x01
   88B2 02            [ 7]  768 	ld	(bc),a
                            769 ;src/text/text.c:180: ftext[x].xPos = xPos + (x * FONT_W);
   88B3 59            [ 4]  770 	ld	e, c
   88B4 50            [ 4]  771 	ld	d, b
   88B5 13            [ 6]  772 	inc	de
   88B6 DD 7E 06      [19]  773 	ld	a,6 (ix)
   88B9 DD 86 FD      [19]  774 	add	a, -3 (ix)
   88BC 12            [ 7]  775 	ld	(de),a
                            776 ;src/text/text.c:181: ftext[x].yPos = yPos;
   88BD 59            [ 4]  777 	ld	e, c
   88BE 50            [ 4]  778 	ld	d, b
   88BF 13            [ 6]  779 	inc	de
   88C0 13            [ 6]  780 	inc	de
   88C1 DD 7E 07      [19]  781 	ld	a,7 (ix)
   88C4 12            [ 7]  782 	ld	(de),a
                            783 ;src/text/text.c:182: ftext[x].startyPos = yPos;
   88C5 59            [ 4]  784 	ld	e, c
   88C6 50            [ 4]  785 	ld	d, b
   88C7 13            [ 6]  786 	inc	de
   88C8 13            [ 6]  787 	inc	de
   88C9 13            [ 6]  788 	inc	de
   88CA DD 7E 07      [19]  789 	ld	a,7 (ix)
   88CD 12            [ 7]  790 	ld	(de),a
                            791 ;src/text/text.c:183: ftext[x].endyPos = destinationyPos;
   88CE 21 04 00      [10]  792 	ld	hl,#0x0004
   88D1 09            [11]  793 	add	hl,bc
   88D2 DD 7E 08      [19]  794 	ld	a,8 (ix)
   88D5 77            [ 7]  795 	ld	(hl),a
                            796 ;src/text/text.c:184: ftext[x].destinationyPos = destinationyPos;
   88D6 21 05 00      [10]  797 	ld	hl,#0x0005
   88D9 09            [11]  798 	add	hl,bc
   88DA DD 7E 08      [19]  799 	ld	a,8 (ix)
   88DD 77            [ 7]  800 	ld	(hl),a
                            801 ;src/text/text.c:185: ftext[x].character[0] = text[x];
   88DE 21 06 00      [10]  802 	ld	hl,#0x0006
   88E1 09            [11]  803 	add	hl,bc
   88E2 DD 75 FB      [19]  804 	ld	-5 (ix),l
   88E5 DD 74 FC      [19]  805 	ld	-4 (ix),h
   88E8 DD 7E 04      [19]  806 	ld	a,4 (ix)
   88EB 21 00 00      [10]  807 	ld	hl,#0
   88EE 39            [11]  808 	add	hl,sp
   88EF 86            [ 7]  809 	add	a, (hl)
   88F0 5F            [ 4]  810 	ld	e,a
   88F1 DD 7E 05      [19]  811 	ld	a,5 (ix)
   88F4 CE 00         [ 7]  812 	adc	a, #0x00
   88F6 57            [ 4]  813 	ld	d,a
   88F7 1A            [ 7]  814 	ld	a,(de)
   88F8 DD 6E FB      [19]  815 	ld	l,-5 (ix)
   88FB DD 66 FC      [19]  816 	ld	h,-4 (ix)
   88FE 77            [ 7]  817 	ld	(hl),a
                            818 ;src/text/text.c:186: ftext[x].character[1] = '\0';
   88FF 21 07 00      [10]  819 	ld	hl,#0x0007
   8902 09            [11]  820 	add	hl,bc
   8903 36 00         [10]  821 	ld	(hl),#0x00
                            822 ;src/text/text.c:177: for(x=0;x<strLength(text) && x<FALLING_TEXT_MAX_LENGHT;x++){
   8905 DD 34 FD      [23]  823 	inc	-3 (ix)
   8908 DD 34 FD      [23]  824 	inc	-3 (ix)
   890B DD 34 FD      [23]  825 	inc	-3 (ix)
   890E FD 34 00      [23]  826 	inc	0 (iy)
   8911 C3 7C 88      [10]  827 	jp	00109$
                            828 ;src/text/text.c:189: while(1){
   8914                     829 00120$:
   8914 DD 7E FE      [19]  830 	ld	a,-2 (ix)
   8917 DD 77 FB      [19]  831 	ld	-5 (ix),a
   891A DD 7E FF      [19]  832 	ld	a,-1 (ix)
   891D DD 77 FC      [19]  833 	ld	-4 (ix),a
   8920                     834 00105$:
                            835 ;src/text/text.c:192: if(moveFallingText(ftext, strLength(text) <= FALLING_TEXT_MAX_LENGHT ? strLength(text) : FALLING_TEXT_MAX_LENGHT)){
   8920 DD 6E 04      [19]  836 	ld	l,4 (ix)
   8923 DD 66 05      [19]  837 	ld	h,5 (ix)
   8926 E5            [11]  838 	push	hl
   8927 CD 8E 84      [17]  839 	call	_strLength
   892A F1            [10]  840 	pop	af
   892B 3E 14         [ 7]  841 	ld	a,#0x14
   892D 95            [ 4]  842 	sub	a, l
   892E 38 0E         [12]  843 	jr	C,00113$
   8930 DD 6E 04      [19]  844 	ld	l,4 (ix)
   8933 DD 66 05      [19]  845 	ld	h,5 (ix)
   8936 E5            [11]  846 	push	hl
   8937 CD 8E 84      [17]  847 	call	_strLength
   893A F1            [10]  848 	pop	af
   893B 45            [ 4]  849 	ld	b,l
   893C 18 02         [12]  850 	jr	00114$
   893E                     851 00113$:
   893E 06 14         [ 7]  852 	ld	b,#0x14
   8940                     853 00114$:
   8940 DD 5E FB      [19]  854 	ld	e,-5 (ix)
   8943 DD 56 FC      [19]  855 	ld	d,-4 (ix)
   8946 C5            [11]  856 	push	bc
   8947 33            [ 6]  857 	inc	sp
   8948 D5            [11]  858 	push	de
   8949 CD BB 87      [17]  859 	call	_moveFallingText
   894C F1            [10]  860 	pop	af
   894D 33            [ 6]  861 	inc	sp
   894E 7D            [ 4]  862 	ld	a,l
   894F B7            [ 4]  863 	or	a, a
                            864 ;src/text/text.c:194: return;
   8950 20 05         [12]  865 	jr	NZ,00111$
                            866 ;src/text/text.c:198: cpct_waitVSYNC();
   8952 CD D3 92      [17]  867 	call	_cpct_waitVSYNC
   8955 18 C9         [12]  868 	jr	00105$
   8957                     869 00111$:
   8957 DD F9         [10]  870 	ld	sp, ix
   8959 DD E1         [14]  871 	pop	ix
   895B C9            [10]  872 	ret
                            873 	.area _CODE
                            874 	.area _INITIALIZER
                            875 	.area _CABS (ABS)
