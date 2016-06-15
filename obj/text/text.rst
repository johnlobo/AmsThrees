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
                             54 ;src/text/text.c:22: u8 strLength(u8 str[]) {
                             55 ;	---------------------------------
                             56 ; Function strLength
                             57 ; ---------------------------------
   75A2                      58 _strLength::
                             59 ;src/text/text.c:26: while (str[result] != '\0') {
   75A2 0E 00         [ 7]   60 	ld	c,#0x00
   75A4                      61 00101$:
   75A4 21 02 00      [10]   62 	ld	hl, #2
   75A7 39            [11]   63 	add	hl, sp
   75A8 7E            [ 7]   64 	ld	a, (hl)
   75A9 23            [ 6]   65 	inc	hl
   75AA 66            [ 7]   66 	ld	h, (hl)
   75AB 6F            [ 4]   67 	ld	l, a
   75AC 06 00         [ 7]   68 	ld	b,#0x00
   75AE 09            [11]   69 	add	hl, bc
   75AF 7E            [ 7]   70 	ld	a,(hl)
   75B0 B7            [ 4]   71 	or	a, a
   75B1 28 03         [12]   72 	jr	Z,00103$
                             73 ;src/text/text.c:27: result++;
   75B3 0C            [ 4]   74 	inc	c
   75B4 18 EE         [12]   75 	jr	00101$
   75B6                      76 00103$:
                             77 ;src/text/text.c:29: return result;
   75B6 69            [ 4]   78 	ld	l,c
   75B7 C9            [10]   79 	ret
                             80 ;src/text/text.c:35: void strCopy(i8* to, const i8* from) {
                             81 ;	---------------------------------
                             82 ; Function strCopy
                             83 ; ---------------------------------
   75B8                      84 _strCopy::
   75B8 DD E5         [15]   85 	push	ix
   75BA DD 21 00 00   [14]   86 	ld	ix,#0
   75BE DD 39         [15]   87 	add	ix,sp
   75C0 3B            [ 6]   88 	dec	sp
                             89 ;src/text/text.c:38: while (i) {
   75C1 DD 4E 06      [19]   90 	ld	c,6 (ix)
   75C4 DD 46 07      [19]   91 	ld	b,7 (ix)
   75C7 DD 5E 04      [19]   92 	ld	e,4 (ix)
   75CA DD 56 05      [19]   93 	ld	d,5 (ix)
   75CD DD 36 FF 1E   [19]   94 	ld	-1 (ix),#0x1E
   75D1                      95 00101$:
   75D1 DD 7E FF      [19]   96 	ld	a,-1 (ix)
   75D4 B7            [ 4]   97 	or	a, a
   75D5 28 09         [12]   98 	jr	Z,00104$
                             99 ;src/text/text.c:39: *to++ = *from++;
   75D7 0A            [ 7]  100 	ld	a,(bc)
   75D8 03            [ 6]  101 	inc	bc
   75D9 12            [ 7]  102 	ld	(de),a
   75DA 13            [ 6]  103 	inc	de
                            104 ;src/text/text.c:40: i--;
   75DB DD 35 FF      [23]  105 	dec	-1 (ix)
   75DE 18 F1         [12]  106 	jr	00101$
   75E0                     107 00104$:
   75E0 33            [ 6]  108 	inc	sp
   75E1 DD E1         [14]  109 	pop	ix
   75E3 C9            [10]  110 	ret
                            111 ;src/text/text.c:44: void drawNumber(u16 aNumber, u8 length, u8 xPos, u8 yPos) {
                            112 ;	---------------------------------
                            113 ; Function drawNumber
                            114 ; ---------------------------------
   75E4                     115 _drawNumber::
   75E4 DD E5         [15]  116 	push	ix
   75E6 DD 21 00 00   [14]  117 	ld	ix,#0
   75EA DD 39         [15]  118 	add	ix,sp
   75EC 21 F8 FF      [10]  119 	ld	hl,#-8
   75EF 39            [11]  120 	add	hl,sp
                            121 ;src/text/text.c:52: itoa(aNumber, str, 10);
   75F0 F9            [ 6]  122 	ld	sp, hl
   75F1 23            [ 6]  123 	inc	hl
   75F2 23            [ 6]  124 	inc	hl
   75F3 4D            [ 4]  125 	ld	c,l
   75F4 44            [ 4]  126 	ld	b,h
   75F5 59            [ 4]  127 	ld	e, c
   75F6 50            [ 4]  128 	ld	d, b
   75F7 C5            [11]  129 	push	bc
   75F8 21 0A 00      [10]  130 	ld	hl,#0x000A
   75FB E5            [11]  131 	push	hl
   75FC D5            [11]  132 	push	de
   75FD DD 6E 04      [19]  133 	ld	l,4 (ix)
   7600 DD 66 05      [19]  134 	ld	h,5 (ix)
   7603 E5            [11]  135 	push	hl
   7604 CD 62 7A      [17]  136 	call	_itoa
   7607 21 06 00      [10]  137 	ld	hl,#6
   760A 39            [11]  138 	add	hl,sp
   760B F9            [ 6]  139 	ld	sp,hl
   760C C1            [10]  140 	pop	bc
                            141 ;src/text/text.c:54: zeros = length - strLength(str);
   760D 59            [ 4]  142 	ld	e, c
   760E 50            [ 4]  143 	ld	d, b
   760F C5            [11]  144 	push	bc
   7610 D5            [11]  145 	push	de
   7611 CD A2 75      [17]  146 	call	_strLength
   7614 F1            [10]  147 	pop	af
   7615 C1            [10]  148 	pop	bc
   7616 DD 7E 06      [19]  149 	ld	a,6 (ix)
   7619 95            [ 4]  150 	sub	a, l
   761A DD 77 F9      [19]  151 	ld	-7 (ix),a
                            152 ;src/text/text.c:56: number = str[x];
   761D 0A            [ 7]  153 	ld	a,(bc)
   761E 5F            [ 4]  154 	ld	e,a
                            155 ;src/text/text.c:58: while (number != '\0') {
   761F DD 36 F8 00   [19]  156 	ld	-8 (ix),#0x00
   7623                     157 00101$:
   7623 7B            [ 4]  158 	ld	a,e
   7624 B7            [ 4]  159 	or	a, a
   7625 28 55         [12]  160 	jr	Z,00104$
                            161 ;src/text/text.c:60: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, (zeros + x) * FONT_W + xPos, yPos);
   7627 DD 7E F9      [19]  162 	ld	a,-7 (ix)
   762A DD 86 F8      [19]  163 	add	a, -8 (ix)
   762D 6F            [ 4]  164 	ld	l,a
   762E D5            [11]  165 	push	de
   762F 5D            [ 4]  166 	ld	e,l
   7630 29            [11]  167 	add	hl, hl
   7631 19            [11]  168 	add	hl, de
   7632 D1            [10]  169 	pop	de
   7633 7D            [ 4]  170 	ld	a,l
   7634 DD 86 07      [19]  171 	add	a, 7 (ix)
   7637 57            [ 4]  172 	ld	d,a
   7638 C5            [11]  173 	push	bc
   7639 D5            [11]  174 	push	de
   763A DD 7E 08      [19]  175 	ld	a,8 (ix)
   763D F5            [11]  176 	push	af
   763E 33            [ 6]  177 	inc	sp
   763F D5            [11]  178 	push	de
   7640 33            [ 6]  179 	inc	sp
   7641 21 00 C0      [10]  180 	ld	hl,#0xC000
   7644 E5            [11]  181 	push	hl
   7645 CD 2F 85      [17]  182 	call	_cpct_getScreenPtr
   7648 D1            [10]  183 	pop	de
   7649 C1            [10]  184 	pop	bc
                            185 ;src/text/text.c:61: cpct_drawSprite(G_numbers_big[number - 48], pvideo, FONT_W, FONT_H);
   764A E5            [11]  186 	push	hl
   764B FD E1         [14]  187 	pop	iy
   764D 16 00         [ 7]  188 	ld	d,#0x00
   764F 7B            [ 4]  189 	ld	a,e
   7650 C6 D0         [ 7]  190 	add	a,#0xD0
   7652 5F            [ 4]  191 	ld	e,a
   7653 7A            [ 4]  192 	ld	a,d
   7654 CE FF         [ 7]  193 	adc	a,#0xFF
   7656 57            [ 4]  194 	ld	d,a
   7657 6B            [ 4]  195 	ld	l, e
   7658 62            [ 4]  196 	ld	h, d
   7659 29            [11]  197 	add	hl, hl
   765A 29            [11]  198 	add	hl, hl
   765B 29            [11]  199 	add	hl, hl
   765C 29            [11]  200 	add	hl, hl
   765D 29            [11]  201 	add	hl, hl
   765E 19            [11]  202 	add	hl, de
   765F 11 62 59      [10]  203 	ld	de,#_G_numbers_big
   7662 19            [11]  204 	add	hl,de
   7663 EB            [ 4]  205 	ex	de,hl
   7664 C5            [11]  206 	push	bc
   7665 21 03 0B      [10]  207 	ld	hl,#0x0B03
   7668 E5            [11]  208 	push	hl
   7669 FD E5         [15]  209 	push	iy
   766B D5            [11]  210 	push	de
   766C CD A9 81      [17]  211 	call	_cpct_drawSprite
   766F C1            [10]  212 	pop	bc
                            213 ;src/text/text.c:63: number = str[++x];
   7670 DD 34 F8      [23]  214 	inc	-8 (ix)
   7673 DD 6E F8      [19]  215 	ld	l,-8 (ix)
   7676 26 00         [ 7]  216 	ld	h,#0x00
   7678 09            [11]  217 	add	hl,bc
   7679 5E            [ 7]  218 	ld	e,(hl)
   767A 18 A7         [12]  219 	jr	00101$
   767C                     220 00104$:
   767C DD F9         [10]  221 	ld	sp, ix
   767E DD E1         [14]  222 	pop	ix
   7680 C9            [10]  223 	ret
                            224 ;src/text/text.c:69: void drawText(u8 text[], u8 xPos, u8 yPos, u8 centered) {
                            225 ;	---------------------------------
                            226 ; Function drawText
                            227 ; ---------------------------------
   7681                     228 _drawText::
   7681 DD E5         [15]  229 	push	ix
   7683 DD 21 00 00   [14]  230 	ld	ix,#0
   7687 DD 39         [15]  231 	add	ix,sp
   7689 F5            [11]  232 	push	af
   768A F5            [11]  233 	push	af
   768B 3B            [ 6]  234 	dec	sp
                            235 ;src/text/text.c:75: if (centered) {
   768C DD 7E 08      [19]  236 	ld	a,8 (ix)
   768F B7            [ 4]  237 	or	a, a
   7690 28 16         [12]  238 	jr	Z,00102$
                            239 ;src/text/text.c:76: x = strLength(text);
   7692 DD 6E 04      [19]  240 	ld	l,4 (ix)
   7695 DD 66 05      [19]  241 	ld	h,5 (ix)
   7698 E5            [11]  242 	push	hl
   7699 CD A2 75      [17]  243 	call	_strLength
   769C F1            [10]  244 	pop	af
                            245 ;src/text/text.c:77: xPos = 39 - (x / 2) * FONT_W;
   769D CB 3D         [ 8]  246 	srl	l
   769F 4D            [ 4]  247 	ld	c,l
   76A0 29            [11]  248 	add	hl, hl
   76A1 09            [11]  249 	add	hl, bc
   76A2 3E 27         [ 7]  250 	ld	a,#0x27
   76A4 95            [ 4]  251 	sub	a, l
   76A5 DD 77 06      [19]  252 	ld	6 (ix),a
   76A8                     253 00102$:
                            254 ;src/text/text.c:81: character = text[x];
   76A8 DD 4E 04      [19]  255 	ld	c,4 (ix)
   76AB DD 46 05      [19]  256 	ld	b,5 (ix)
   76AE 0A            [ 7]  257 	ld	a,(bc)
   76AF DD 77 FB      [19]  258 	ld	-5 (ix),a
                            259 ;src/text/text.c:83: while (character != '\0') {
   76B2 DD 36 FC 00   [19]  260 	ld	-4 (ix),#0x00
   76B6 DD 36 FF 00   [19]  261 	ld	-1 (ix),#0x00
   76BA                     262 00109$:
   76BA DD 7E FB      [19]  263 	ld	a,-5 (ix)
   76BD B7            [ 4]  264 	or	a, a
   76BE CA 5F 77      [10]  265 	jp	Z,00112$
                            266 ;src/text/text.c:85: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, (x * FONT_W) + xPos, yPos);
   76C1 DD 7E FF      [19]  267 	ld	a,-1 (ix)
   76C4 DD 86 06      [19]  268 	add	a, 6 (ix)
   76C7 57            [ 4]  269 	ld	d,a
   76C8 C5            [11]  270 	push	bc
   76C9 DD 7E 07      [19]  271 	ld	a,7 (ix)
   76CC F5            [11]  272 	push	af
   76CD 33            [ 6]  273 	inc	sp
   76CE D5            [11]  274 	push	de
   76CF 33            [ 6]  275 	inc	sp
   76D0 21 00 C0      [10]  276 	ld	hl,#0xC000
   76D3 E5            [11]  277 	push	hl
   76D4 CD 2F 85      [17]  278 	call	_cpct_getScreenPtr
   76D7 C1            [10]  279 	pop	bc
                            280 ;src/text/text.c:90: cpct_drawSprite(G_numbers_big[character - 48], pvideo, FONT_W, FONT_H);
   76D8 DD 75 FD      [19]  281 	ld	-3 (ix),l
   76DB DD 74 FE      [19]  282 	ld	-2 (ix),h
   76DE DD 5E FB      [19]  283 	ld	e,-5 (ix)
   76E1 16 00         [ 7]  284 	ld	d,#0x00
                            285 ;src/text/text.c:88: if (character >= 48 && character <= 57) {
   76E3 DD 7E FB      [19]  286 	ld	a,-5 (ix)
   76E6 D6 30         [ 7]  287 	sub	a, #0x30
   76E8 38 2F         [12]  288 	jr	C,00106$
   76EA 3E 39         [ 7]  289 	ld	a,#0x39
   76EC DD 96 FB      [19]  290 	sub	a, -5 (ix)
   76EF 38 28         [12]  291 	jr	C,00106$
                            292 ;src/text/text.c:90: cpct_drawSprite(G_numbers_big[character - 48], pvideo, FONT_W, FONT_H);
   76F1 7B            [ 4]  293 	ld	a,e
   76F2 C6 D0         [ 7]  294 	add	a,#0xD0
   76F4 5F            [ 4]  295 	ld	e,a
   76F5 7A            [ 4]  296 	ld	a,d
   76F6 CE FF         [ 7]  297 	adc	a,#0xFF
   76F8 57            [ 4]  298 	ld	d,a
   76F9 6B            [ 4]  299 	ld	l, e
   76FA 62            [ 4]  300 	ld	h, d
   76FB 29            [11]  301 	add	hl, hl
   76FC 29            [11]  302 	add	hl, hl
   76FD 29            [11]  303 	add	hl, hl
   76FE 29            [11]  304 	add	hl, hl
   76FF 29            [11]  305 	add	hl, hl
   7700 19            [11]  306 	add	hl, de
   7701 11 62 59      [10]  307 	ld	de,#_G_numbers_big
   7704 19            [11]  308 	add	hl,de
   7705 EB            [ 4]  309 	ex	de,hl
   7706 C5            [11]  310 	push	bc
   7707 21 03 0B      [10]  311 	ld	hl,#0x0B03
   770A E5            [11]  312 	push	hl
   770B DD 6E FD      [19]  313 	ld	l,-3 (ix)
   770E DD 66 FE      [19]  314 	ld	h,-2 (ix)
   7711 E5            [11]  315 	push	hl
   7712 D5            [11]  316 	push	de
   7713 CD A9 81      [17]  317 	call	_cpct_drawSprite
   7716 C1            [10]  318 	pop	bc
   7717 18 2D         [12]  319 	jr	00107$
   7719                     320 00106$:
                            321 ;src/text/text.c:93: else if (character != 32) { //32 = SPACE
   7719 DD 7E FB      [19]  322 	ld	a,-5 (ix)
   771C D6 20         [ 7]  323 	sub	a, #0x20
   771E 28 26         [12]  324 	jr	Z,00107$
                            325 ;src/text/text.c:95: cpct_drawSprite(g_font_big[character - 64], pvideo, FONT_W, FONT_H);
   7720 7B            [ 4]  326 	ld	a,e
   7721 C6 C0         [ 7]  327 	add	a,#0xC0
   7723 5F            [ 4]  328 	ld	e,a
   7724 7A            [ 4]  329 	ld	a,d
   7725 CE FF         [ 7]  330 	adc	a,#0xFF
   7727 57            [ 4]  331 	ld	d,a
   7728 6B            [ 4]  332 	ld	l, e
   7729 62            [ 4]  333 	ld	h, d
   772A 29            [11]  334 	add	hl, hl
   772B 29            [11]  335 	add	hl, hl
   772C 29            [11]  336 	add	hl, hl
   772D 29            [11]  337 	add	hl, hl
   772E 29            [11]  338 	add	hl, hl
   772F 19            [11]  339 	add	hl, de
   7730 11 5B 54      [10]  340 	ld	de,#_g_font_big
   7733 19            [11]  341 	add	hl,de
   7734 EB            [ 4]  342 	ex	de,hl
   7735 C5            [11]  343 	push	bc
   7736 21 03 0B      [10]  344 	ld	hl,#0x0B03
   7739 E5            [11]  345 	push	hl
   773A DD 6E FD      [19]  346 	ld	l,-3 (ix)
   773D DD 66 FE      [19]  347 	ld	h,-2 (ix)
   7740 E5            [11]  348 	push	hl
   7741 D5            [11]  349 	push	de
   7742 CD A9 81      [17]  350 	call	_cpct_drawSprite
   7745 C1            [10]  351 	pop	bc
   7746                     352 00107$:
                            353 ;src/text/text.c:98: character = text[++x];
   7746 DD 34 FF      [23]  354 	inc	-1 (ix)
   7749 DD 34 FF      [23]  355 	inc	-1 (ix)
   774C DD 34 FF      [23]  356 	inc	-1 (ix)
   774F DD 34 FC      [23]  357 	inc	-4 (ix)
   7752 DD 6E FC      [19]  358 	ld	l,-4 (ix)
   7755 26 00         [ 7]  359 	ld	h,#0x00
   7757 09            [11]  360 	add	hl,bc
   7758 7E            [ 7]  361 	ld	a,(hl)
   7759 DD 77 FB      [19]  362 	ld	-5 (ix),a
   775C C3 BA 76      [10]  363 	jp	00109$
   775F                     364 00112$:
   775F DD F9         [10]  365 	ld	sp, ix
   7761 DD E1         [14]  366 	pop	ix
   7763 C9            [10]  367 	ret
                            368 ;src/text/text.c:102: void moveCharacter(FChar *character) {
                            369 ;	---------------------------------
                            370 ; Function moveCharacter
                            371 ; ---------------------------------
   7764                     372 _moveCharacter::
   7764 DD E5         [15]  373 	push	ix
   7766 DD 21 00 00   [14]  374 	ld	ix,#0
   776A DD 39         [15]  375 	add	ix,sp
   776C 21 F3 FF      [10]  376 	ld	hl,#-13
   776F 39            [11]  377 	add	hl,sp
   7770 F9            [ 6]  378 	ld	sp,hl
                            379 ;src/text/text.c:104: if (character->phase != FALLING_TEXT_MAX_BOUNCES) {
   7771 DD 4E 04      [19]  380 	ld	c,4 (ix)
   7774 DD 46 05      [19]  381 	ld	b,5 (ix)
   7777 0A            [ 7]  382 	ld	a,(bc)
   7778 57            [ 4]  383 	ld	d,a
                            384 ;src/text/text.c:109: if (character->yPos != character->startyPos) {
   7779 21 02 00      [10]  385 	ld	hl,#0x0002
   777C 09            [11]  386 	add	hl,bc
   777D DD 75 FE      [19]  387 	ld	-2 (ix),l
   7780 DD 74 FF      [19]  388 	ld	-1 (ix),h
   7783 DD 6E FE      [19]  389 	ld	l,-2 (ix)
   7786 DD 66 FF      [19]  390 	ld	h,-1 (ix)
   7789 5E            [ 7]  391 	ld	e,(hl)
                            392 ;src/text/text.c:111: clearWindow(character->xPos, character->yPos + (character->phase % 2 != 0 ? - FALLING_TEXT_SPEED : FALLING_TEXT_SPEED), FONT_W, FONT_H);
   778A 21 01 00      [10]  393 	ld	hl,#0x0001
   778D 09            [11]  394 	add	hl,bc
   778E DD 75 FC      [19]  395 	ld	-4 (ix),l
   7791 DD 74 FD      [19]  396 	ld	-3 (ix),h
                            397 ;src/text/text.c:143: drawText(character->character, character->xPos, character->yPos, 0);
   7794 21 06 00      [10]  398 	ld	hl,#0x0006
   7797 09            [11]  399 	add	hl,bc
   7798 DD 75 FA      [19]  400 	ld	-6 (ix),l
   779B DD 74 FB      [19]  401 	ld	-5 (ix),h
                            402 ;src/text/text.c:104: if (character->phase != FALLING_TEXT_MAX_BOUNCES) {
   779E 7A            [ 4]  403 	ld	a,d
   779F D6 06         [ 7]  404 	sub	a, #0x06
   77A1 CA 90 78      [10]  405 	jp	Z,00111$
                            406 ;src/text/text.c:109: if (character->yPos != character->startyPos) {
   77A4 21 03 00      [10]  407 	ld	hl,#0x0003
   77A7 09            [11]  408 	add	hl,bc
   77A8 DD 75 F8      [19]  409 	ld	-8 (ix),l
   77AB DD 74 F9      [19]  410 	ld	-7 (ix),h
   77AE DD 6E F8      [19]  411 	ld	l,-8 (ix)
   77B1 DD 66 F9      [19]  412 	ld	h,-7 (ix)
   77B4 7E            [ 7]  413 	ld	a,(hl)
   77B5 DD 77 F7      [19]  414 	ld	-9 (ix),a
   77B8 7B            [ 4]  415 	ld	a,e
   77B9 DD 96 F7      [19]  416 	sub	a, -9 (ix)
   77BC 28 24         [12]  417 	jr	Z,00102$
                            418 ;src/text/text.c:111: clearWindow(character->xPos, character->yPos + (character->phase % 2 != 0 ? - FALLING_TEXT_SPEED : FALLING_TEXT_SPEED), FONT_W, FONT_H);
   77BE CB 42         [ 8]  419 	bit	0, d
   77C0 28 04         [12]  420 	jr	Z,00115$
   77C2 2E FD         [ 7]  421 	ld	l,#0xFD
   77C4 18 02         [12]  422 	jr	00116$
   77C6                     423 00115$:
   77C6 2E 03         [ 7]  424 	ld	l,#0x03
   77C8                     425 00116$:
   77C8 7B            [ 4]  426 	ld	a,e
   77C9 85            [ 4]  427 	add	a, l
   77CA 5F            [ 4]  428 	ld	e,a
   77CB DD 6E FC      [19]  429 	ld	l,-4 (ix)
   77CE DD 66 FD      [19]  430 	ld	h,-3 (ix)
   77D1 56            [ 7]  431 	ld	d,(hl)
   77D2 C5            [11]  432 	push	bc
   77D3 21 03 0B      [10]  433 	ld	hl,#0x0B03
   77D6 E5            [11]  434 	push	hl
   77D7 7B            [ 4]  435 	ld	a,e
   77D8 F5            [11]  436 	push	af
   77D9 33            [ 6]  437 	inc	sp
   77DA D5            [11]  438 	push	de
   77DB 33            [ 6]  439 	inc	sp
   77DC CD D9 80      [17]  440 	call	_clearWindow
   77DF F1            [10]  441 	pop	af
   77E0 F1            [10]  442 	pop	af
   77E1 C1            [10]  443 	pop	bc
   77E2                     444 00102$:
                            445 ;src/text/text.c:116: if (character->phase % 2 != 0) {
   77E2 0A            [ 7]  446 	ld	a,(bc)
   77E3 E6 01         [ 7]  447 	and	a, #0x01
   77E5 DD 77 F7      [19]  448 	ld	-9 (ix),a
                            449 ;src/text/text.c:109: if (character->yPos != character->startyPos) {
   77E8 DD 6E FE      [19]  450 	ld	l,-2 (ix)
   77EB DD 66 FF      [19]  451 	ld	h,-1 (ix)
   77EE 5E            [ 7]  452 	ld	e,(hl)
                            453 ;src/text/text.c:120: if (character->yPos >= character->destinationyPos) {
   77EF 21 05 00      [10]  454 	ld	hl,#0x0005
   77F2 09            [11]  455 	add	hl,bc
   77F3 DD 75 F5      [19]  456 	ld	-11 (ix),l
   77F6 DD 74 F6      [19]  457 	ld	-10 (ix),h
                            458 ;src/text/text.c:124: character->destinationyPos = character->endyPos - ((character->endyPos - character->startyPos) / character->phase);
   77F9 21 04 00      [10]  459 	ld	hl,#0x0004
   77FC 09            [11]  460 	add	hl,bc
   77FD E3            [19]  461 	ex	(sp), hl
                            462 ;src/text/text.c:116: if (character->phase % 2 != 0) {
   77FE DD 7E F7      [19]  463 	ld	a,-9 (ix)
   7801 B7            [ 4]  464 	or	a, a
   7802 28 48         [12]  465 	jr	Z,00108$
                            466 ;src/text/text.c:118: character->yPos += FALLING_TEXT_SPEED;
   7804 1C            [ 4]  467 	inc	e
   7805 1C            [ 4]  468 	inc	e
   7806 1C            [ 4]  469 	inc	e
   7807 DD 6E FE      [19]  470 	ld	l,-2 (ix)
   780A DD 66 FF      [19]  471 	ld	h,-1 (ix)
   780D 73            [ 7]  472 	ld	(hl),e
                            473 ;src/text/text.c:120: if (character->yPos >= character->destinationyPos) {
   780E DD 6E F5      [19]  474 	ld	l,-11 (ix)
   7811 DD 66 F6      [19]  475 	ld	h,-10 (ix)
   7814 56            [ 7]  476 	ld	d,(hl)
   7815 7B            [ 4]  477 	ld	a,e
   7816 92            [ 4]  478 	sub	a, d
   7817 38 55         [12]  479 	jr	C,00109$
                            480 ;src/text/text.c:122: character->phase++;
   7819 0A            [ 7]  481 	ld	a,(bc)
   781A 5F            [ 4]  482 	ld	e,a
   781B 1C            [ 4]  483 	inc	e
   781C 7B            [ 4]  484 	ld	a,e
   781D 02            [ 7]  485 	ld	(bc),a
                            486 ;src/text/text.c:124: character->destinationyPos = character->endyPos - ((character->endyPos - character->startyPos) / character->phase);
   781E E1            [10]  487 	pop	hl
   781F E5            [11]  488 	push	hl
   7820 7E            [ 7]  489 	ld	a,(hl)
   7821 DD 77 F7      [19]  490 	ld	-9 (ix), a
   7824 4F            [ 4]  491 	ld	c, a
   7825 06 00         [ 7]  492 	ld	b,#0x00
   7827 DD 6E F8      [19]  493 	ld	l,-8 (ix)
   782A DD 66 F9      [19]  494 	ld	h,-7 (ix)
   782D 6E            [ 7]  495 	ld	l,(hl)
   782E 16 00         [ 7]  496 	ld	d,#0x00
   7830 79            [ 4]  497 	ld	a,c
   7831 95            [ 4]  498 	sub	a, l
   7832 4F            [ 4]  499 	ld	c,a
   7833 78            [ 4]  500 	ld	a,b
   7834 9A            [ 4]  501 	sbc	a, d
   7835 47            [ 4]  502 	ld	b,a
   7836 16 00         [ 7]  503 	ld	d,#0x00
   7838 D5            [11]  504 	push	de
   7839 C5            [11]  505 	push	bc
   783A CD 4F 85      [17]  506 	call	__divsint
   783D F1            [10]  507 	pop	af
   783E F1            [10]  508 	pop	af
   783F DD 7E F7      [19]  509 	ld	a, -9 (ix)
   7842 95            [ 4]  510 	sub	a, l
   7843 DD 6E F5      [19]  511 	ld	l,-11 (ix)
   7846 DD 66 F6      [19]  512 	ld	h,-10 (ix)
   7849 77            [ 7]  513 	ld	(hl),a
   784A 18 22         [12]  514 	jr	00109$
   784C                     515 00108$:
                            516 ;src/text/text.c:131: character->yPos -= FALLING_TEXT_SPEED;
   784C 7B            [ 4]  517 	ld	a,e
   784D C6 FD         [ 7]  518 	add	a,#0xFD
   784F 5F            [ 4]  519 	ld	e,a
   7850 DD 6E FE      [19]  520 	ld	l,-2 (ix)
   7853 DD 66 FF      [19]  521 	ld	h,-1 (ix)
   7856 73            [ 7]  522 	ld	(hl),e
                            523 ;src/text/text.c:133: if (character->yPos <= character->destinationyPos) {
   7857 DD 6E F5      [19]  524 	ld	l,-11 (ix)
   785A DD 66 F6      [19]  525 	ld	h,-10 (ix)
   785D 7E            [ 7]  526 	ld	a, (hl)
   785E 93            [ 4]  527 	sub	a, e
   785F 38 0D         [12]  528 	jr	C,00109$
                            529 ;src/text/text.c:135: character->phase++;
   7861 0A            [ 7]  530 	ld	a,(bc)
   7862 3C            [ 4]  531 	inc	a
   7863 02            [ 7]  532 	ld	(bc),a
                            533 ;src/text/text.c:137: character->destinationyPos = character->endyPos;
   7864 E1            [10]  534 	pop	hl
   7865 E5            [11]  535 	push	hl
   7866 4E            [ 7]  536 	ld	c,(hl)
   7867 DD 6E F5      [19]  537 	ld	l,-11 (ix)
   786A DD 66 F6      [19]  538 	ld	h,-10 (ix)
   786D 71            [ 7]  539 	ld	(hl),c
   786E                     540 00109$:
                            541 ;src/text/text.c:143: drawText(character->character, character->xPos, character->yPos, 0);
   786E DD 6E FE      [19]  542 	ld	l,-2 (ix)
   7871 DD 66 FF      [19]  543 	ld	h,-1 (ix)
   7874 46            [ 7]  544 	ld	b,(hl)
   7875 DD 6E FC      [19]  545 	ld	l,-4 (ix)
   7878 DD 66 FD      [19]  546 	ld	h,-3 (ix)
   787B 56            [ 7]  547 	ld	d,(hl)
   787C AF            [ 4]  548 	xor	a, a
   787D F5            [11]  549 	push	af
   787E 33            [ 6]  550 	inc	sp
   787F 4A            [ 4]  551 	ld	c, d
   7880 C5            [11]  552 	push	bc
   7881 DD 6E FA      [19]  553 	ld	l,-6 (ix)
   7884 DD 66 FB      [19]  554 	ld	h,-5 (ix)
   7887 E5            [11]  555 	push	hl
   7888 CD 81 76      [17]  556 	call	_drawText
   788B F1            [10]  557 	pop	af
   788C F1            [10]  558 	pop	af
   788D 33            [ 6]  559 	inc	sp
   788E 18 3A         [12]  560 	jr	00113$
   7890                     561 00111$:
                            562 ;src/text/text.c:147: clearWindow(character->xPos, character->yPos - FALLING_TEXT_SPEED, FONT_W, FONT_H);
   7890 7B            [ 4]  563 	ld	a,e
   7891 C6 FD         [ 7]  564 	add	a,#0xFD
   7893 57            [ 4]  565 	ld	d,a
   7894 DD 6E FC      [19]  566 	ld	l,-4 (ix)
   7897 DD 66 FD      [19]  567 	ld	h,-3 (ix)
   789A 46            [ 7]  568 	ld	b,(hl)
   789B 21 03 0B      [10]  569 	ld	hl,#0x0B03
   789E E5            [11]  570 	push	hl
   789F D5            [11]  571 	push	de
   78A0 33            [ 6]  572 	inc	sp
   78A1 C5            [11]  573 	push	bc
   78A2 33            [ 6]  574 	inc	sp
   78A3 CD D9 80      [17]  575 	call	_clearWindow
   78A6 F1            [10]  576 	pop	af
   78A7 F1            [10]  577 	pop	af
                            578 ;src/text/text.c:148: drawText(character->character, character->xPos, character->yPos, 0);
   78A8 DD 6E FE      [19]  579 	ld	l,-2 (ix)
   78AB DD 66 FF      [19]  580 	ld	h,-1 (ix)
   78AE 56            [ 7]  581 	ld	d,(hl)
   78AF DD 6E FC      [19]  582 	ld	l,-4 (ix)
   78B2 DD 66 FD      [19]  583 	ld	h,-3 (ix)
   78B5 46            [ 7]  584 	ld	b,(hl)
   78B6 AF            [ 4]  585 	xor	a, a
   78B7 F5            [11]  586 	push	af
   78B8 33            [ 6]  587 	inc	sp
   78B9 D5            [11]  588 	push	de
   78BA 33            [ 6]  589 	inc	sp
   78BB C5            [11]  590 	push	bc
   78BC 33            [ 6]  591 	inc	sp
   78BD DD 6E FA      [19]  592 	ld	l,-6 (ix)
   78C0 DD 66 FB      [19]  593 	ld	h,-5 (ix)
   78C3 E5            [11]  594 	push	hl
   78C4 CD 81 76      [17]  595 	call	_drawText
   78C7 F1            [10]  596 	pop	af
   78C8 F1            [10]  597 	pop	af
   78C9 33            [ 6]  598 	inc	sp
   78CA                     599 00113$:
   78CA DD F9         [10]  600 	ld	sp, ix
   78CC DD E1         [14]  601 	pop	ix
   78CE C9            [10]  602 	ret
                            603 ;src/text/text.c:153: u8 moveFallingText(FChar *text, u8 lenght) {
                            604 ;	---------------------------------
                            605 ; Function moveFallingText
                            606 ; ---------------------------------
   78CF                     607 _moveFallingText::
   78CF DD E5         [15]  608 	push	ix
   78D1 DD 21 00 00   [14]  609 	ld	ix,#0
   78D5 DD 39         [15]  610 	add	ix,sp
   78D7 F5            [11]  611 	push	af
                            612 ;src/text/text.c:157: for (x = 0; x < lenght; x++) {
   78D8 0E 00         [ 7]  613 	ld	c,#0x00
   78DA                     614 00109$:
   78DA 79            [ 4]  615 	ld	a,c
   78DB DD 96 06      [19]  616 	sub	a, 6 (ix)
   78DE 30 69         [12]  617 	jr	NC,00107$
                            618 ;src/text/text.c:159: if (x == 0 || (x > 0 && text[x - 1].phase == 1 && text[x - 1].yPos >= text[x].yPos + 15) || text[x - 1].phase > 1) moveCharacter(&text[x]);
   78E0 69            [ 4]  619 	ld	l,c
   78E1 26 00         [ 7]  620 	ld	h,#0x00
   78E3 5D            [ 4]  621 	ld	e, l
   78E4 54            [ 4]  622 	ld	d, h
   78E5 CB 23         [ 8]  623 	sla	e
   78E7 CB 12         [ 8]  624 	rl	d
   78E9 CB 23         [ 8]  625 	sla	e
   78EB CB 12         [ 8]  626 	rl	d
   78ED CB 23         [ 8]  627 	sla	e
   78EF CB 12         [ 8]  628 	rl	d
   78F1 DD 7E 04      [19]  629 	ld	a,4 (ix)
   78F4 83            [ 4]  630 	add	a, e
   78F5 DD 77 FE      [19]  631 	ld	-2 (ix),a
   78F8 DD 7E 05      [19]  632 	ld	a,5 (ix)
   78FB 8A            [ 4]  633 	adc	a, d
   78FC DD 77 FF      [19]  634 	ld	-1 (ix),a
   78FF 79            [ 4]  635 	ld	a,c
   7900 B7            [ 4]  636 	or	a, a
   7901 28 38         [12]  637 	jr	Z,00101$
   7903 2B            [ 6]  638 	dec	hl
   7904 29            [11]  639 	add	hl, hl
   7905 29            [11]  640 	add	hl, hl
   7906 29            [11]  641 	add	hl, hl
   7907 EB            [ 4]  642 	ex	de,hl
   7908 DD 6E 04      [19]  643 	ld	l,4 (ix)
   790B DD 66 05      [19]  644 	ld	h,5 (ix)
   790E 19            [11]  645 	add	hl,de
   790F 46            [ 7]  646 	ld	b,(hl)
   7910 79            [ 4]  647 	ld	a,c
   7911 B7            [ 4]  648 	or	a, a
   7912 28 22         [12]  649 	jr	Z,00106$
   7914 78            [ 4]  650 	ld	a,b
   7915 3D            [ 4]  651 	dec	a
   7916 20 1E         [12]  652 	jr	NZ,00106$
   7918 23            [ 6]  653 	inc	hl
   7919 23            [ 6]  654 	inc	hl
   791A 5E            [ 7]  655 	ld	e,(hl)
   791B E1            [10]  656 	pop	hl
   791C E5            [11]  657 	push	hl
   791D 23            [ 6]  658 	inc	hl
   791E 23            [ 6]  659 	inc	hl
   791F 6E            [ 7]  660 	ld	l,(hl)
   7920 26 00         [ 7]  661 	ld	h,#0x00
   7922 D5            [11]  662 	push	de
   7923 11 0F 00      [10]  663 	ld	de,#0x000F
   7926 19            [11]  664 	add	hl, de
   7927 D1            [10]  665 	pop	de
   7928 16 00         [ 7]  666 	ld	d,#0x00
   792A 7B            [ 4]  667 	ld	a,e
   792B 95            [ 4]  668 	sub	a, l
   792C 7A            [ 4]  669 	ld	a,d
   792D 9C            [ 4]  670 	sbc	a, h
   792E E2 33 79      [10]  671 	jp	PO, 00138$
   7931 EE 80         [ 7]  672 	xor	a, #0x80
   7933                     673 00138$:
   7933 F2 3B 79      [10]  674 	jp	P,00101$
   7936                     675 00106$:
   7936 3E 01         [ 7]  676 	ld	a,#0x01
   7938 90            [ 4]  677 	sub	a, b
   7939 30 0B         [12]  678 	jr	NC,00110$
   793B                     679 00101$:
   793B C5            [11]  680 	push	bc
   793C D1            [10]  681 	pop	de
   793D E1            [10]  682 	pop	hl
   793E E5            [11]  683 	push	hl
   793F D5            [11]  684 	push	de
   7940 E5            [11]  685 	push	hl
   7941 CD 64 77      [17]  686 	call	_moveCharacter
   7944 F1            [10]  687 	pop	af
   7945 C1            [10]  688 	pop	bc
   7946                     689 00110$:
                            690 ;src/text/text.c:157: for (x = 0; x < lenght; x++) {
   7946 0C            [ 4]  691 	inc	c
   7947 18 91         [12]  692 	jr	00109$
   7949                     693 00107$:
                            694 ;src/text/text.c:162: return text[lenght - 1].phase == FALLING_TEXT_MAX_BOUNCES;
   7949 DD 6E 06      [19]  695 	ld	l,6 (ix)
   794C 26 00         [ 7]  696 	ld	h,#0x00
   794E 2B            [ 6]  697 	dec	hl
   794F 29            [11]  698 	add	hl, hl
   7950 29            [11]  699 	add	hl, hl
   7951 29            [11]  700 	add	hl, hl
   7952 4D            [ 4]  701 	ld	c, l
   7953 44            [ 4]  702 	ld	b, h
   7954 DD 6E 04      [19]  703 	ld	l,4 (ix)
   7957 DD 66 05      [19]  704 	ld	h,5 (ix)
   795A 09            [11]  705 	add	hl,bc
   795B 7E            [ 7]  706 	ld	a,(hl)
   795C D6 06         [ 7]  707 	sub	a, #0x06
   795E 20 04         [12]  708 	jr	NZ,00139$
   7960 3E 01         [ 7]  709 	ld	a,#0x01
   7962 18 01         [12]  710 	jr	00140$
   7964                     711 00139$:
   7964 AF            [ 4]  712 	xor	a,a
   7965                     713 00140$:
   7965 6F            [ 4]  714 	ld	l,a
   7966 DD F9         [10]  715 	ld	sp, ix
   7968 DD E1         [14]  716 	pop	ix
   796A C9            [10]  717 	ret
                            718 ;src/text/text.c:168: void drawFallingText(u8 text[], u8 xPos, u8 yPos, u8 destinationyPos) {
                            719 ;	---------------------------------
                            720 ; Function drawFallingText
                            721 ; ---------------------------------
   796B                     722 _drawFallingText::
   796B DD E5         [15]  723 	push	ix
   796D DD 21 00 00   [14]  724 	ld	ix,#0
   7971 DD 39         [15]  725 	add	ix,sp
   7973 21 5A FF      [10]  726 	ld	hl,#-166
   7976 39            [11]  727 	add	hl,sp
   7977 F9            [ 6]  728 	ld	sp,hl
                            729 ;src/text/text.c:174: for (x = 0; x < strLength(text) && x < FALLING_TEXT_MAX_LENGHT; x++) {
   7978 21 00 00      [10]  730 	ld	hl,#0x0000
   797B 39            [11]  731 	add	hl,sp
   797C DD 75 FE      [19]  732 	ld	-2 (ix),l
   797F DD 74 FF      [19]  733 	ld	-1 (ix),h
   7982 DD 36 FA 00   [19]  734 	ld	-6 (ix),#0x00
   7986 DD 36 FD 00   [19]  735 	ld	-3 (ix),#0x00
   798A                     736 00109$:
   798A DD 6E 04      [19]  737 	ld	l,4 (ix)
   798D DD 66 05      [19]  738 	ld	h,5 (ix)
   7990 E5            [11]  739 	push	hl
   7991 CD A2 75      [17]  740 	call	_strLength
   7994 F1            [10]  741 	pop	af
   7995 4D            [ 4]  742 	ld	c,l
   7996 DD 7E FA      [19]  743 	ld	a,-6 (ix)
   7999 91            [ 4]  744 	sub	a, c
   799A D2 1A 7A      [10]  745 	jp	NC,00120$
   799D DD 7E FA      [19]  746 	ld	a,-6 (ix)
   79A0 D6 14         [ 7]  747 	sub	a, #0x14
   79A2 30 76         [12]  748 	jr	NC,00120$
                            749 ;src/text/text.c:176: ftext[x].phase = 1;
   79A4 DD 6E FA      [19]  750 	ld	l,-6 (ix)
   79A7 26 00         [ 7]  751 	ld	h,#0x00
   79A9 29            [11]  752 	add	hl, hl
   79AA 29            [11]  753 	add	hl, hl
   79AB 29            [11]  754 	add	hl, hl
   79AC 4D            [ 4]  755 	ld	c, l
   79AD 44            [ 4]  756 	ld	b, h
   79AE DD 7E FE      [19]  757 	ld	a,-2 (ix)
   79B1 81            [ 4]  758 	add	a, c
   79B2 4F            [ 4]  759 	ld	c,a
   79B3 DD 7E FF      [19]  760 	ld	a,-1 (ix)
   79B6 88            [ 4]  761 	adc	a, b
   79B7 47            [ 4]  762 	ld	b,a
   79B8 3E 01         [ 7]  763 	ld	a,#0x01
   79BA 02            [ 7]  764 	ld	(bc),a
                            765 ;src/text/text.c:177: ftext[x].xPos = xPos + (x * FONT_W);
   79BB 59            [ 4]  766 	ld	e, c
   79BC 50            [ 4]  767 	ld	d, b
   79BD 13            [ 6]  768 	inc	de
   79BE DD 7E 06      [19]  769 	ld	a,6 (ix)
   79C1 DD 86 FD      [19]  770 	add	a, -3 (ix)
   79C4 12            [ 7]  771 	ld	(de),a
                            772 ;src/text/text.c:178: ftext[x].yPos = yPos;
   79C5 59            [ 4]  773 	ld	e, c
   79C6 50            [ 4]  774 	ld	d, b
   79C7 13            [ 6]  775 	inc	de
   79C8 13            [ 6]  776 	inc	de
   79C9 DD 7E 07      [19]  777 	ld	a,7 (ix)
   79CC 12            [ 7]  778 	ld	(de),a
                            779 ;src/text/text.c:179: ftext[x].startyPos = yPos;
   79CD 59            [ 4]  780 	ld	e, c
   79CE 50            [ 4]  781 	ld	d, b
   79CF 13            [ 6]  782 	inc	de
   79D0 13            [ 6]  783 	inc	de
   79D1 13            [ 6]  784 	inc	de
   79D2 DD 7E 07      [19]  785 	ld	a,7 (ix)
   79D5 12            [ 7]  786 	ld	(de),a
                            787 ;src/text/text.c:180: ftext[x].endyPos = destinationyPos;
   79D6 21 04 00      [10]  788 	ld	hl,#0x0004
   79D9 09            [11]  789 	add	hl,bc
   79DA DD 7E 08      [19]  790 	ld	a,8 (ix)
   79DD 77            [ 7]  791 	ld	(hl),a
                            792 ;src/text/text.c:181: ftext[x].destinationyPos = destinationyPos;
   79DE 21 05 00      [10]  793 	ld	hl,#0x0005
   79E1 09            [11]  794 	add	hl,bc
   79E2 DD 7E 08      [19]  795 	ld	a,8 (ix)
   79E5 77            [ 7]  796 	ld	(hl),a
                            797 ;src/text/text.c:182: ftext[x].character[0] = text[x];
   79E6 21 06 00      [10]  798 	ld	hl,#0x0006
   79E9 09            [11]  799 	add	hl,bc
   79EA DD 75 FB      [19]  800 	ld	-5 (ix),l
   79ED DD 74 FC      [19]  801 	ld	-4 (ix),h
   79F0 DD 7E 04      [19]  802 	ld	a,4 (ix)
   79F3 DD 86 FA      [19]  803 	add	a, -6 (ix)
   79F6 5F            [ 4]  804 	ld	e,a
   79F7 DD 7E 05      [19]  805 	ld	a,5 (ix)
   79FA CE 00         [ 7]  806 	adc	a, #0x00
   79FC 57            [ 4]  807 	ld	d,a
   79FD 1A            [ 7]  808 	ld	a,(de)
   79FE DD 6E FB      [19]  809 	ld	l,-5 (ix)
   7A01 DD 66 FC      [19]  810 	ld	h,-4 (ix)
   7A04 77            [ 7]  811 	ld	(hl),a
                            812 ;src/text/text.c:183: ftext[x].character[1] = '\0';
   7A05 21 07 00      [10]  813 	ld	hl,#0x0007
   7A08 09            [11]  814 	add	hl,bc
   7A09 36 00         [10]  815 	ld	(hl),#0x00
                            816 ;src/text/text.c:174: for (x = 0; x < strLength(text) && x < FALLING_TEXT_MAX_LENGHT; x++) {
   7A0B DD 34 FD      [23]  817 	inc	-3 (ix)
   7A0E DD 34 FD      [23]  818 	inc	-3 (ix)
   7A11 DD 34 FD      [23]  819 	inc	-3 (ix)
   7A14 DD 34 FA      [23]  820 	inc	-6 (ix)
   7A17 C3 8A 79      [10]  821 	jp	00109$
                            822 ;src/text/text.c:186: while (1) {
   7A1A                     823 00120$:
   7A1A DD 7E FE      [19]  824 	ld	a,-2 (ix)
   7A1D DD 77 FB      [19]  825 	ld	-5 (ix),a
   7A20 DD 7E FF      [19]  826 	ld	a,-1 (ix)
   7A23 DD 77 FC      [19]  827 	ld	-4 (ix),a
   7A26                     828 00105$:
                            829 ;src/text/text.c:189: if (moveFallingText(ftext, strLength(text) <= FALLING_TEXT_MAX_LENGHT ? strLength(text) : FALLING_TEXT_MAX_LENGHT)) {
   7A26 DD 6E 04      [19]  830 	ld	l,4 (ix)
   7A29 DD 66 05      [19]  831 	ld	h,5 (ix)
   7A2C E5            [11]  832 	push	hl
   7A2D CD A2 75      [17]  833 	call	_strLength
   7A30 F1            [10]  834 	pop	af
   7A31 3E 14         [ 7]  835 	ld	a,#0x14
   7A33 95            [ 4]  836 	sub	a, l
   7A34 38 0E         [12]  837 	jr	C,00113$
   7A36 DD 6E 04      [19]  838 	ld	l,4 (ix)
   7A39 DD 66 05      [19]  839 	ld	h,5 (ix)
   7A3C E5            [11]  840 	push	hl
   7A3D CD A2 75      [17]  841 	call	_strLength
   7A40 F1            [10]  842 	pop	af
   7A41 45            [ 4]  843 	ld	b,l
   7A42 18 02         [12]  844 	jr	00114$
   7A44                     845 00113$:
   7A44 06 14         [ 7]  846 	ld	b,#0x14
   7A46                     847 00114$:
   7A46 DD 5E FB      [19]  848 	ld	e,-5 (ix)
   7A49 DD 56 FC      [19]  849 	ld	d,-4 (ix)
   7A4C C5            [11]  850 	push	bc
   7A4D 33            [ 6]  851 	inc	sp
   7A4E D5            [11]  852 	push	de
   7A4F CD CF 78      [17]  853 	call	_moveFallingText
   7A52 F1            [10]  854 	pop	af
   7A53 33            [ 6]  855 	inc	sp
   7A54 7D            [ 4]  856 	ld	a,l
   7A55 B7            [ 4]  857 	or	a, a
                            858 ;src/text/text.c:191: return;
   7A56 20 05         [12]  859 	jr	NZ,00111$
                            860 ;src/text/text.c:195: cpct_waitVSYNC();
   7A58 CD D9 83      [17]  861 	call	_cpct_waitVSYNC
   7A5B 18 C9         [12]  862 	jr	00105$
   7A5D                     863 00111$:
   7A5D DD F9         [10]  864 	ld	sp, ix
   7A5F DD E1         [14]  865 	pop	ix
   7A61 C9            [10]  866 	ret
                            867 	.area _CODE
                            868 	.area _INITIALIZER
                            869 	.area _CABS (ABS)
