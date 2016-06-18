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
   7614                      58 _strLength::
                             59 ;src/text/text.c:26: while (str[result] != '\0') {
   7614 0E 00         [ 7]   60 	ld	c,#0x00
   7616                      61 00101$:
   7616 21 02 00      [10]   62 	ld	hl, #2
   7619 39            [11]   63 	add	hl, sp
   761A 7E            [ 7]   64 	ld	a, (hl)
   761B 23            [ 6]   65 	inc	hl
   761C 66            [ 7]   66 	ld	h, (hl)
   761D 6F            [ 4]   67 	ld	l, a
   761E 06 00         [ 7]   68 	ld	b,#0x00
   7620 09            [11]   69 	add	hl, bc
   7621 7E            [ 7]   70 	ld	a,(hl)
   7622 B7            [ 4]   71 	or	a, a
   7623 28 03         [12]   72 	jr	Z,00103$
                             73 ;src/text/text.c:27: result++;
   7625 0C            [ 4]   74 	inc	c
   7626 18 EE         [12]   75 	jr	00101$
   7628                      76 00103$:
                             77 ;src/text/text.c:29: return result;
   7628 69            [ 4]   78 	ld	l,c
   7629 C9            [10]   79 	ret
                             80 ;src/text/text.c:35: void strCopy(i8* to, const i8* from) {
                             81 ;	---------------------------------
                             82 ; Function strCopy
                             83 ; ---------------------------------
   762A                      84 _strCopy::
   762A DD E5         [15]   85 	push	ix
   762C DD 21 00 00   [14]   86 	ld	ix,#0
   7630 DD 39         [15]   87 	add	ix,sp
   7632 3B            [ 6]   88 	dec	sp
                             89 ;src/text/text.c:38: while (i) {
   7633 DD 4E 06      [19]   90 	ld	c,6 (ix)
   7636 DD 46 07      [19]   91 	ld	b,7 (ix)
   7639 DD 5E 04      [19]   92 	ld	e,4 (ix)
   763C DD 56 05      [19]   93 	ld	d,5 (ix)
   763F DD 36 FF 1E   [19]   94 	ld	-1 (ix),#0x1E
   7643                      95 00101$:
   7643 DD 7E FF      [19]   96 	ld	a,-1 (ix)
   7646 B7            [ 4]   97 	or	a, a
   7647 28 09         [12]   98 	jr	Z,00104$
                             99 ;src/text/text.c:39: *to++ = *from++;
   7649 0A            [ 7]  100 	ld	a,(bc)
   764A 03            [ 6]  101 	inc	bc
   764B 12            [ 7]  102 	ld	(de),a
   764C 13            [ 6]  103 	inc	de
                            104 ;src/text/text.c:40: i--;
   764D DD 35 FF      [23]  105 	dec	-1 (ix)
   7650 18 F1         [12]  106 	jr	00101$
   7652                     107 00104$:
   7652 33            [ 6]  108 	inc	sp
   7653 DD E1         [14]  109 	pop	ix
   7655 C9            [10]  110 	ret
                            111 ;src/text/text.c:44: void drawNumber(u16 aNumber, u8 length, u8 xPos, u8 yPos) {
                            112 ;	---------------------------------
                            113 ; Function drawNumber
                            114 ; ---------------------------------
   7656                     115 _drawNumber::
   7656 DD E5         [15]  116 	push	ix
   7658 DD 21 00 00   [14]  117 	ld	ix,#0
   765C DD 39         [15]  118 	add	ix,sp
   765E 21 F8 FF      [10]  119 	ld	hl,#-8
   7661 39            [11]  120 	add	hl,sp
                            121 ;src/text/text.c:52: itoa(aNumber, str, 10);
   7662 F9            [ 6]  122 	ld	sp, hl
   7663 23            [ 6]  123 	inc	hl
   7664 23            [ 6]  124 	inc	hl
   7665 4D            [ 4]  125 	ld	c,l
   7666 44            [ 4]  126 	ld	b,h
   7667 59            [ 4]  127 	ld	e, c
   7668 50            [ 4]  128 	ld	d, b
   7669 C5            [11]  129 	push	bc
   766A 21 0A 00      [10]  130 	ld	hl,#0x000A
   766D E5            [11]  131 	push	hl
   766E D5            [11]  132 	push	de
   766F DD 6E 04      [19]  133 	ld	l,4 (ix)
   7672 DD 66 05      [19]  134 	ld	h,5 (ix)
   7675 E5            [11]  135 	push	hl
   7676 CD D4 7A      [17]  136 	call	_itoa
   7679 21 06 00      [10]  137 	ld	hl,#6
   767C 39            [11]  138 	add	hl,sp
   767D F9            [ 6]  139 	ld	sp,hl
   767E C1            [10]  140 	pop	bc
                            141 ;src/text/text.c:54: zeros = length - strLength(str);
   767F 59            [ 4]  142 	ld	e, c
   7680 50            [ 4]  143 	ld	d, b
   7681 C5            [11]  144 	push	bc
   7682 D5            [11]  145 	push	de
   7683 CD 14 76      [17]  146 	call	_strLength
   7686 F1            [10]  147 	pop	af
   7687 C1            [10]  148 	pop	bc
   7688 DD 7E 06      [19]  149 	ld	a,6 (ix)
   768B 95            [ 4]  150 	sub	a, l
   768C DD 77 F9      [19]  151 	ld	-7 (ix),a
                            152 ;src/text/text.c:56: number = str[x];
   768F 0A            [ 7]  153 	ld	a,(bc)
   7690 5F            [ 4]  154 	ld	e,a
                            155 ;src/text/text.c:58: while (number != '\0') {
   7691 DD 36 F8 00   [19]  156 	ld	-8 (ix),#0x00
   7695                     157 00101$:
   7695 7B            [ 4]  158 	ld	a,e
   7696 B7            [ 4]  159 	or	a, a
   7697 28 55         [12]  160 	jr	Z,00104$
                            161 ;src/text/text.c:60: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, (zeros + x) * FONT_W + xPos, yPos);
   7699 DD 7E F9      [19]  162 	ld	a,-7 (ix)
   769C DD 86 F8      [19]  163 	add	a, -8 (ix)
   769F 6F            [ 4]  164 	ld	l,a
   76A0 D5            [11]  165 	push	de
   76A1 5D            [ 4]  166 	ld	e,l
   76A2 29            [11]  167 	add	hl, hl
   76A3 19            [11]  168 	add	hl, de
   76A4 D1            [10]  169 	pop	de
   76A5 7D            [ 4]  170 	ld	a,l
   76A6 DD 86 07      [19]  171 	add	a, 7 (ix)
   76A9 57            [ 4]  172 	ld	d,a
   76AA C5            [11]  173 	push	bc
   76AB D5            [11]  174 	push	de
   76AC DD 7E 08      [19]  175 	ld	a,8 (ix)
   76AF F5            [11]  176 	push	af
   76B0 33            [ 6]  177 	inc	sp
   76B1 D5            [11]  178 	push	de
   76B2 33            [ 6]  179 	inc	sp
   76B3 21 00 C0      [10]  180 	ld	hl,#0xC000
   76B6 E5            [11]  181 	push	hl
   76B7 CD A1 85      [17]  182 	call	_cpct_getScreenPtr
   76BA D1            [10]  183 	pop	de
   76BB C1            [10]  184 	pop	bc
                            185 ;src/text/text.c:61: cpct_drawSprite(G_numbers_big[number - 48], pvideo, FONT_W, FONT_H);
   76BC E5            [11]  186 	push	hl
   76BD FD E1         [14]  187 	pop	iy
   76BF 16 00         [ 7]  188 	ld	d,#0x00
   76C1 7B            [ 4]  189 	ld	a,e
   76C2 C6 D0         [ 7]  190 	add	a,#0xD0
   76C4 5F            [ 4]  191 	ld	e,a
   76C5 7A            [ 4]  192 	ld	a,d
   76C6 CE FF         [ 7]  193 	adc	a,#0xFF
   76C8 57            [ 4]  194 	ld	d,a
   76C9 6B            [ 4]  195 	ld	l, e
   76CA 62            [ 4]  196 	ld	h, d
   76CB 29            [11]  197 	add	hl, hl
   76CC 29            [11]  198 	add	hl, hl
   76CD 29            [11]  199 	add	hl, hl
   76CE 29            [11]  200 	add	hl, hl
   76CF 29            [11]  201 	add	hl, hl
   76D0 19            [11]  202 	add	hl, de
   76D1 11 D4 59      [10]  203 	ld	de,#_G_numbers_big
   76D4 19            [11]  204 	add	hl,de
   76D5 EB            [ 4]  205 	ex	de,hl
   76D6 C5            [11]  206 	push	bc
   76D7 21 03 0B      [10]  207 	ld	hl,#0x0B03
   76DA E5            [11]  208 	push	hl
   76DB FD E5         [15]  209 	push	iy
   76DD D5            [11]  210 	push	de
   76DE CD 1B 82      [17]  211 	call	_cpct_drawSprite
   76E1 C1            [10]  212 	pop	bc
                            213 ;src/text/text.c:63: number = str[++x];
   76E2 DD 34 F8      [23]  214 	inc	-8 (ix)
   76E5 DD 6E F8      [19]  215 	ld	l,-8 (ix)
   76E8 26 00         [ 7]  216 	ld	h,#0x00
   76EA 09            [11]  217 	add	hl,bc
   76EB 5E            [ 7]  218 	ld	e,(hl)
   76EC 18 A7         [12]  219 	jr	00101$
   76EE                     220 00104$:
   76EE DD F9         [10]  221 	ld	sp, ix
   76F0 DD E1         [14]  222 	pop	ix
   76F2 C9            [10]  223 	ret
                            224 ;src/text/text.c:69: void drawText(u8 text[], u8 xPos, u8 yPos, u8 centered) {
                            225 ;	---------------------------------
                            226 ; Function drawText
                            227 ; ---------------------------------
   76F3                     228 _drawText::
   76F3 DD E5         [15]  229 	push	ix
   76F5 DD 21 00 00   [14]  230 	ld	ix,#0
   76F9 DD 39         [15]  231 	add	ix,sp
   76FB F5            [11]  232 	push	af
   76FC F5            [11]  233 	push	af
   76FD 3B            [ 6]  234 	dec	sp
                            235 ;src/text/text.c:75: if (centered) {
   76FE DD 7E 08      [19]  236 	ld	a,8 (ix)
   7701 B7            [ 4]  237 	or	a, a
   7702 28 16         [12]  238 	jr	Z,00102$
                            239 ;src/text/text.c:76: x = strLength(text);
   7704 DD 6E 04      [19]  240 	ld	l,4 (ix)
   7707 DD 66 05      [19]  241 	ld	h,5 (ix)
   770A E5            [11]  242 	push	hl
   770B CD 14 76      [17]  243 	call	_strLength
   770E F1            [10]  244 	pop	af
                            245 ;src/text/text.c:77: xPos = 39 - (x / 2) * FONT_W;
   770F CB 3D         [ 8]  246 	srl	l
   7711 4D            [ 4]  247 	ld	c,l
   7712 29            [11]  248 	add	hl, hl
   7713 09            [11]  249 	add	hl, bc
   7714 3E 27         [ 7]  250 	ld	a,#0x27
   7716 95            [ 4]  251 	sub	a, l
   7717 DD 77 06      [19]  252 	ld	6 (ix),a
   771A                     253 00102$:
                            254 ;src/text/text.c:81: character = text[x];
   771A DD 4E 04      [19]  255 	ld	c,4 (ix)
   771D DD 46 05      [19]  256 	ld	b,5 (ix)
   7720 0A            [ 7]  257 	ld	a,(bc)
   7721 DD 77 FB      [19]  258 	ld	-5 (ix),a
                            259 ;src/text/text.c:83: while (character != '\0') {
   7724 DD 36 FC 00   [19]  260 	ld	-4 (ix),#0x00
   7728 DD 36 FF 00   [19]  261 	ld	-1 (ix),#0x00
   772C                     262 00109$:
   772C DD 7E FB      [19]  263 	ld	a,-5 (ix)
   772F B7            [ 4]  264 	or	a, a
   7730 CA D1 77      [10]  265 	jp	Z,00112$
                            266 ;src/text/text.c:85: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, (x * FONT_W) + xPos, yPos);
   7733 DD 7E FF      [19]  267 	ld	a,-1 (ix)
   7736 DD 86 06      [19]  268 	add	a, 6 (ix)
   7739 57            [ 4]  269 	ld	d,a
   773A C5            [11]  270 	push	bc
   773B DD 7E 07      [19]  271 	ld	a,7 (ix)
   773E F5            [11]  272 	push	af
   773F 33            [ 6]  273 	inc	sp
   7740 D5            [11]  274 	push	de
   7741 33            [ 6]  275 	inc	sp
   7742 21 00 C0      [10]  276 	ld	hl,#0xC000
   7745 E5            [11]  277 	push	hl
   7746 CD A1 85      [17]  278 	call	_cpct_getScreenPtr
   7749 C1            [10]  279 	pop	bc
                            280 ;src/text/text.c:90: cpct_drawSprite(G_numbers_big[character - 48], pvideo, FONT_W, FONT_H);
   774A DD 75 FD      [19]  281 	ld	-3 (ix),l
   774D DD 74 FE      [19]  282 	ld	-2 (ix),h
   7750 DD 5E FB      [19]  283 	ld	e,-5 (ix)
   7753 16 00         [ 7]  284 	ld	d,#0x00
                            285 ;src/text/text.c:88: if (character >= 48 && character <= 57) {
   7755 DD 7E FB      [19]  286 	ld	a,-5 (ix)
   7758 D6 30         [ 7]  287 	sub	a, #0x30
   775A 38 2F         [12]  288 	jr	C,00106$
   775C 3E 39         [ 7]  289 	ld	a,#0x39
   775E DD 96 FB      [19]  290 	sub	a, -5 (ix)
   7761 38 28         [12]  291 	jr	C,00106$
                            292 ;src/text/text.c:90: cpct_drawSprite(G_numbers_big[character - 48], pvideo, FONT_W, FONT_H);
   7763 7B            [ 4]  293 	ld	a,e
   7764 C6 D0         [ 7]  294 	add	a,#0xD0
   7766 5F            [ 4]  295 	ld	e,a
   7767 7A            [ 4]  296 	ld	a,d
   7768 CE FF         [ 7]  297 	adc	a,#0xFF
   776A 57            [ 4]  298 	ld	d,a
   776B 6B            [ 4]  299 	ld	l, e
   776C 62            [ 4]  300 	ld	h, d
   776D 29            [11]  301 	add	hl, hl
   776E 29            [11]  302 	add	hl, hl
   776F 29            [11]  303 	add	hl, hl
   7770 29            [11]  304 	add	hl, hl
   7771 29            [11]  305 	add	hl, hl
   7772 19            [11]  306 	add	hl, de
   7773 11 D4 59      [10]  307 	ld	de,#_G_numbers_big
   7776 19            [11]  308 	add	hl,de
   7777 EB            [ 4]  309 	ex	de,hl
   7778 C5            [11]  310 	push	bc
   7779 21 03 0B      [10]  311 	ld	hl,#0x0B03
   777C E5            [11]  312 	push	hl
   777D DD 6E FD      [19]  313 	ld	l,-3 (ix)
   7780 DD 66 FE      [19]  314 	ld	h,-2 (ix)
   7783 E5            [11]  315 	push	hl
   7784 D5            [11]  316 	push	de
   7785 CD 1B 82      [17]  317 	call	_cpct_drawSprite
   7788 C1            [10]  318 	pop	bc
   7789 18 2D         [12]  319 	jr	00107$
   778B                     320 00106$:
                            321 ;src/text/text.c:93: else if (character != 32) { //32 = SPACE
   778B DD 7E FB      [19]  322 	ld	a,-5 (ix)
   778E D6 20         [ 7]  323 	sub	a, #0x20
   7790 28 26         [12]  324 	jr	Z,00107$
                            325 ;src/text/text.c:95: cpct_drawSprite(g_font_big[character - 64], pvideo, FONT_W, FONT_H);
   7792 7B            [ 4]  326 	ld	a,e
   7793 C6 C0         [ 7]  327 	add	a,#0xC0
   7795 5F            [ 4]  328 	ld	e,a
   7796 7A            [ 4]  329 	ld	a,d
   7797 CE FF         [ 7]  330 	adc	a,#0xFF
   7799 57            [ 4]  331 	ld	d,a
   779A 6B            [ 4]  332 	ld	l, e
   779B 62            [ 4]  333 	ld	h, d
   779C 29            [11]  334 	add	hl, hl
   779D 29            [11]  335 	add	hl, hl
   779E 29            [11]  336 	add	hl, hl
   779F 29            [11]  337 	add	hl, hl
   77A0 29            [11]  338 	add	hl, hl
   77A1 19            [11]  339 	add	hl, de
   77A2 11 CD 54      [10]  340 	ld	de,#_g_font_big
   77A5 19            [11]  341 	add	hl,de
   77A6 EB            [ 4]  342 	ex	de,hl
   77A7 C5            [11]  343 	push	bc
   77A8 21 03 0B      [10]  344 	ld	hl,#0x0B03
   77AB E5            [11]  345 	push	hl
   77AC DD 6E FD      [19]  346 	ld	l,-3 (ix)
   77AF DD 66 FE      [19]  347 	ld	h,-2 (ix)
   77B2 E5            [11]  348 	push	hl
   77B3 D5            [11]  349 	push	de
   77B4 CD 1B 82      [17]  350 	call	_cpct_drawSprite
   77B7 C1            [10]  351 	pop	bc
   77B8                     352 00107$:
                            353 ;src/text/text.c:98: character = text[++x];
   77B8 DD 34 FF      [23]  354 	inc	-1 (ix)
   77BB DD 34 FF      [23]  355 	inc	-1 (ix)
   77BE DD 34 FF      [23]  356 	inc	-1 (ix)
   77C1 DD 34 FC      [23]  357 	inc	-4 (ix)
   77C4 DD 6E FC      [19]  358 	ld	l,-4 (ix)
   77C7 26 00         [ 7]  359 	ld	h,#0x00
   77C9 09            [11]  360 	add	hl,bc
   77CA 7E            [ 7]  361 	ld	a,(hl)
   77CB DD 77 FB      [19]  362 	ld	-5 (ix),a
   77CE C3 2C 77      [10]  363 	jp	00109$
   77D1                     364 00112$:
   77D1 DD F9         [10]  365 	ld	sp, ix
   77D3 DD E1         [14]  366 	pop	ix
   77D5 C9            [10]  367 	ret
                            368 ;src/text/text.c:102: void moveCharacter(FChar *character) {
                            369 ;	---------------------------------
                            370 ; Function moveCharacter
                            371 ; ---------------------------------
   77D6                     372 _moveCharacter::
   77D6 DD E5         [15]  373 	push	ix
   77D8 DD 21 00 00   [14]  374 	ld	ix,#0
   77DC DD 39         [15]  375 	add	ix,sp
   77DE 21 F3 FF      [10]  376 	ld	hl,#-13
   77E1 39            [11]  377 	add	hl,sp
   77E2 F9            [ 6]  378 	ld	sp,hl
                            379 ;src/text/text.c:104: if (character->phase != FALLING_TEXT_MAX_BOUNCES) {
   77E3 DD 4E 04      [19]  380 	ld	c,4 (ix)
   77E6 DD 46 05      [19]  381 	ld	b,5 (ix)
   77E9 0A            [ 7]  382 	ld	a,(bc)
   77EA 57            [ 4]  383 	ld	d,a
                            384 ;src/text/text.c:109: if (character->yPos != character->startyPos) {
   77EB 21 02 00      [10]  385 	ld	hl,#0x0002
   77EE 09            [11]  386 	add	hl,bc
   77EF DD 75 FE      [19]  387 	ld	-2 (ix),l
   77F2 DD 74 FF      [19]  388 	ld	-1 (ix),h
   77F5 DD 6E FE      [19]  389 	ld	l,-2 (ix)
   77F8 DD 66 FF      [19]  390 	ld	h,-1 (ix)
   77FB 5E            [ 7]  391 	ld	e,(hl)
                            392 ;src/text/text.c:111: clearWindow(character->xPos, character->yPos + (character->phase % 2 != 0 ? - FALLING_TEXT_SPEED : FALLING_TEXT_SPEED), FONT_W, FONT_H);
   77FC 21 01 00      [10]  393 	ld	hl,#0x0001
   77FF 09            [11]  394 	add	hl,bc
   7800 DD 75 FC      [19]  395 	ld	-4 (ix),l
   7803 DD 74 FD      [19]  396 	ld	-3 (ix),h
                            397 ;src/text/text.c:143: drawText(character->character, character->xPos, character->yPos, 0);
   7806 21 06 00      [10]  398 	ld	hl,#0x0006
   7809 09            [11]  399 	add	hl,bc
   780A DD 75 FA      [19]  400 	ld	-6 (ix),l
   780D DD 74 FB      [19]  401 	ld	-5 (ix),h
                            402 ;src/text/text.c:104: if (character->phase != FALLING_TEXT_MAX_BOUNCES) {
   7810 7A            [ 4]  403 	ld	a,d
   7811 D6 06         [ 7]  404 	sub	a, #0x06
   7813 CA 02 79      [10]  405 	jp	Z,00111$
                            406 ;src/text/text.c:109: if (character->yPos != character->startyPos) {
   7816 21 03 00      [10]  407 	ld	hl,#0x0003
   7819 09            [11]  408 	add	hl,bc
   781A DD 75 F8      [19]  409 	ld	-8 (ix),l
   781D DD 74 F9      [19]  410 	ld	-7 (ix),h
   7820 DD 6E F8      [19]  411 	ld	l,-8 (ix)
   7823 DD 66 F9      [19]  412 	ld	h,-7 (ix)
   7826 7E            [ 7]  413 	ld	a,(hl)
   7827 DD 77 F7      [19]  414 	ld	-9 (ix),a
   782A 7B            [ 4]  415 	ld	a,e
   782B DD 96 F7      [19]  416 	sub	a, -9 (ix)
   782E 28 24         [12]  417 	jr	Z,00102$
                            418 ;src/text/text.c:111: clearWindow(character->xPos, character->yPos + (character->phase % 2 != 0 ? - FALLING_TEXT_SPEED : FALLING_TEXT_SPEED), FONT_W, FONT_H);
   7830 CB 42         [ 8]  419 	bit	0, d
   7832 28 04         [12]  420 	jr	Z,00115$
   7834 2E FD         [ 7]  421 	ld	l,#0xFD
   7836 18 02         [12]  422 	jr	00116$
   7838                     423 00115$:
   7838 2E 03         [ 7]  424 	ld	l,#0x03
   783A                     425 00116$:
   783A 7B            [ 4]  426 	ld	a,e
   783B 85            [ 4]  427 	add	a, l
   783C 5F            [ 4]  428 	ld	e,a
   783D DD 6E FC      [19]  429 	ld	l,-4 (ix)
   7840 DD 66 FD      [19]  430 	ld	h,-3 (ix)
   7843 56            [ 7]  431 	ld	d,(hl)
   7844 C5            [11]  432 	push	bc
   7845 21 03 0B      [10]  433 	ld	hl,#0x0B03
   7848 E5            [11]  434 	push	hl
   7849 7B            [ 4]  435 	ld	a,e
   784A F5            [11]  436 	push	af
   784B 33            [ 6]  437 	inc	sp
   784C D5            [11]  438 	push	de
   784D 33            [ 6]  439 	inc	sp
   784E CD 4B 81      [17]  440 	call	_clearWindow
   7851 F1            [10]  441 	pop	af
   7852 F1            [10]  442 	pop	af
   7853 C1            [10]  443 	pop	bc
   7854                     444 00102$:
                            445 ;src/text/text.c:116: if (character->phase % 2 != 0) {
   7854 0A            [ 7]  446 	ld	a,(bc)
   7855 E6 01         [ 7]  447 	and	a, #0x01
   7857 DD 77 F7      [19]  448 	ld	-9 (ix),a
                            449 ;src/text/text.c:109: if (character->yPos != character->startyPos) {
   785A DD 6E FE      [19]  450 	ld	l,-2 (ix)
   785D DD 66 FF      [19]  451 	ld	h,-1 (ix)
   7860 5E            [ 7]  452 	ld	e,(hl)
                            453 ;src/text/text.c:120: if (character->yPos >= character->destinationyPos) {
   7861 21 05 00      [10]  454 	ld	hl,#0x0005
   7864 09            [11]  455 	add	hl,bc
   7865 DD 75 F5      [19]  456 	ld	-11 (ix),l
   7868 DD 74 F6      [19]  457 	ld	-10 (ix),h
                            458 ;src/text/text.c:124: character->destinationyPos = character->endyPos - ((character->endyPos - character->startyPos) / character->phase);
   786B 21 04 00      [10]  459 	ld	hl,#0x0004
   786E 09            [11]  460 	add	hl,bc
   786F E3            [19]  461 	ex	(sp), hl
                            462 ;src/text/text.c:116: if (character->phase % 2 != 0) {
   7870 DD 7E F7      [19]  463 	ld	a,-9 (ix)
   7873 B7            [ 4]  464 	or	a, a
   7874 28 48         [12]  465 	jr	Z,00108$
                            466 ;src/text/text.c:118: character->yPos += FALLING_TEXT_SPEED;
   7876 1C            [ 4]  467 	inc	e
   7877 1C            [ 4]  468 	inc	e
   7878 1C            [ 4]  469 	inc	e
   7879 DD 6E FE      [19]  470 	ld	l,-2 (ix)
   787C DD 66 FF      [19]  471 	ld	h,-1 (ix)
   787F 73            [ 7]  472 	ld	(hl),e
                            473 ;src/text/text.c:120: if (character->yPos >= character->destinationyPos) {
   7880 DD 6E F5      [19]  474 	ld	l,-11 (ix)
   7883 DD 66 F6      [19]  475 	ld	h,-10 (ix)
   7886 56            [ 7]  476 	ld	d,(hl)
   7887 7B            [ 4]  477 	ld	a,e
   7888 92            [ 4]  478 	sub	a, d
   7889 38 55         [12]  479 	jr	C,00109$
                            480 ;src/text/text.c:122: character->phase++;
   788B 0A            [ 7]  481 	ld	a,(bc)
   788C 5F            [ 4]  482 	ld	e,a
   788D 1C            [ 4]  483 	inc	e
   788E 7B            [ 4]  484 	ld	a,e
   788F 02            [ 7]  485 	ld	(bc),a
                            486 ;src/text/text.c:124: character->destinationyPos = character->endyPos - ((character->endyPos - character->startyPos) / character->phase);
   7890 E1            [10]  487 	pop	hl
   7891 E5            [11]  488 	push	hl
   7892 7E            [ 7]  489 	ld	a,(hl)
   7893 DD 77 F7      [19]  490 	ld	-9 (ix), a
   7896 4F            [ 4]  491 	ld	c, a
   7897 06 00         [ 7]  492 	ld	b,#0x00
   7899 DD 6E F8      [19]  493 	ld	l,-8 (ix)
   789C DD 66 F9      [19]  494 	ld	h,-7 (ix)
   789F 6E            [ 7]  495 	ld	l,(hl)
   78A0 16 00         [ 7]  496 	ld	d,#0x00
   78A2 79            [ 4]  497 	ld	a,c
   78A3 95            [ 4]  498 	sub	a, l
   78A4 4F            [ 4]  499 	ld	c,a
   78A5 78            [ 4]  500 	ld	a,b
   78A6 9A            [ 4]  501 	sbc	a, d
   78A7 47            [ 4]  502 	ld	b,a
   78A8 16 00         [ 7]  503 	ld	d,#0x00
   78AA D5            [11]  504 	push	de
   78AB C5            [11]  505 	push	bc
   78AC CD C1 85      [17]  506 	call	__divsint
   78AF F1            [10]  507 	pop	af
   78B0 F1            [10]  508 	pop	af
   78B1 DD 7E F7      [19]  509 	ld	a, -9 (ix)
   78B4 95            [ 4]  510 	sub	a, l
   78B5 DD 6E F5      [19]  511 	ld	l,-11 (ix)
   78B8 DD 66 F6      [19]  512 	ld	h,-10 (ix)
   78BB 77            [ 7]  513 	ld	(hl),a
   78BC 18 22         [12]  514 	jr	00109$
   78BE                     515 00108$:
                            516 ;src/text/text.c:131: character->yPos -= FALLING_TEXT_SPEED;
   78BE 7B            [ 4]  517 	ld	a,e
   78BF C6 FD         [ 7]  518 	add	a,#0xFD
   78C1 5F            [ 4]  519 	ld	e,a
   78C2 DD 6E FE      [19]  520 	ld	l,-2 (ix)
   78C5 DD 66 FF      [19]  521 	ld	h,-1 (ix)
   78C8 73            [ 7]  522 	ld	(hl),e
                            523 ;src/text/text.c:133: if (character->yPos <= character->destinationyPos) {
   78C9 DD 6E F5      [19]  524 	ld	l,-11 (ix)
   78CC DD 66 F6      [19]  525 	ld	h,-10 (ix)
   78CF 7E            [ 7]  526 	ld	a, (hl)
   78D0 93            [ 4]  527 	sub	a, e
   78D1 38 0D         [12]  528 	jr	C,00109$
                            529 ;src/text/text.c:135: character->phase++;
   78D3 0A            [ 7]  530 	ld	a,(bc)
   78D4 3C            [ 4]  531 	inc	a
   78D5 02            [ 7]  532 	ld	(bc),a
                            533 ;src/text/text.c:137: character->destinationyPos = character->endyPos;
   78D6 E1            [10]  534 	pop	hl
   78D7 E5            [11]  535 	push	hl
   78D8 4E            [ 7]  536 	ld	c,(hl)
   78D9 DD 6E F5      [19]  537 	ld	l,-11 (ix)
   78DC DD 66 F6      [19]  538 	ld	h,-10 (ix)
   78DF 71            [ 7]  539 	ld	(hl),c
   78E0                     540 00109$:
                            541 ;src/text/text.c:143: drawText(character->character, character->xPos, character->yPos, 0);
   78E0 DD 6E FE      [19]  542 	ld	l,-2 (ix)
   78E3 DD 66 FF      [19]  543 	ld	h,-1 (ix)
   78E6 46            [ 7]  544 	ld	b,(hl)
   78E7 DD 6E FC      [19]  545 	ld	l,-4 (ix)
   78EA DD 66 FD      [19]  546 	ld	h,-3 (ix)
   78ED 56            [ 7]  547 	ld	d,(hl)
   78EE AF            [ 4]  548 	xor	a, a
   78EF F5            [11]  549 	push	af
   78F0 33            [ 6]  550 	inc	sp
   78F1 4A            [ 4]  551 	ld	c, d
   78F2 C5            [11]  552 	push	bc
   78F3 DD 6E FA      [19]  553 	ld	l,-6 (ix)
   78F6 DD 66 FB      [19]  554 	ld	h,-5 (ix)
   78F9 E5            [11]  555 	push	hl
   78FA CD F3 76      [17]  556 	call	_drawText
   78FD F1            [10]  557 	pop	af
   78FE F1            [10]  558 	pop	af
   78FF 33            [ 6]  559 	inc	sp
   7900 18 3A         [12]  560 	jr	00113$
   7902                     561 00111$:
                            562 ;src/text/text.c:147: clearWindow(character->xPos, character->yPos - FALLING_TEXT_SPEED, FONT_W, FONT_H);
   7902 7B            [ 4]  563 	ld	a,e
   7903 C6 FD         [ 7]  564 	add	a,#0xFD
   7905 57            [ 4]  565 	ld	d,a
   7906 DD 6E FC      [19]  566 	ld	l,-4 (ix)
   7909 DD 66 FD      [19]  567 	ld	h,-3 (ix)
   790C 46            [ 7]  568 	ld	b,(hl)
   790D 21 03 0B      [10]  569 	ld	hl,#0x0B03
   7910 E5            [11]  570 	push	hl
   7911 D5            [11]  571 	push	de
   7912 33            [ 6]  572 	inc	sp
   7913 C5            [11]  573 	push	bc
   7914 33            [ 6]  574 	inc	sp
   7915 CD 4B 81      [17]  575 	call	_clearWindow
   7918 F1            [10]  576 	pop	af
   7919 F1            [10]  577 	pop	af
                            578 ;src/text/text.c:148: drawText(character->character, character->xPos, character->yPos, 0);
   791A DD 6E FE      [19]  579 	ld	l,-2 (ix)
   791D DD 66 FF      [19]  580 	ld	h,-1 (ix)
   7920 56            [ 7]  581 	ld	d,(hl)
   7921 DD 6E FC      [19]  582 	ld	l,-4 (ix)
   7924 DD 66 FD      [19]  583 	ld	h,-3 (ix)
   7927 46            [ 7]  584 	ld	b,(hl)
   7928 AF            [ 4]  585 	xor	a, a
   7929 F5            [11]  586 	push	af
   792A 33            [ 6]  587 	inc	sp
   792B D5            [11]  588 	push	de
   792C 33            [ 6]  589 	inc	sp
   792D C5            [11]  590 	push	bc
   792E 33            [ 6]  591 	inc	sp
   792F DD 6E FA      [19]  592 	ld	l,-6 (ix)
   7932 DD 66 FB      [19]  593 	ld	h,-5 (ix)
   7935 E5            [11]  594 	push	hl
   7936 CD F3 76      [17]  595 	call	_drawText
   7939 F1            [10]  596 	pop	af
   793A F1            [10]  597 	pop	af
   793B 33            [ 6]  598 	inc	sp
   793C                     599 00113$:
   793C DD F9         [10]  600 	ld	sp, ix
   793E DD E1         [14]  601 	pop	ix
   7940 C9            [10]  602 	ret
                            603 ;src/text/text.c:153: u8 moveFallingText(FChar *text, u8 lenght) {
                            604 ;	---------------------------------
                            605 ; Function moveFallingText
                            606 ; ---------------------------------
   7941                     607 _moveFallingText::
   7941 DD E5         [15]  608 	push	ix
   7943 DD 21 00 00   [14]  609 	ld	ix,#0
   7947 DD 39         [15]  610 	add	ix,sp
   7949 F5            [11]  611 	push	af
                            612 ;src/text/text.c:157: for (x = 0; x < lenght; x++) {
   794A 0E 00         [ 7]  613 	ld	c,#0x00
   794C                     614 00109$:
   794C 79            [ 4]  615 	ld	a,c
   794D DD 96 06      [19]  616 	sub	a, 6 (ix)
   7950 30 69         [12]  617 	jr	NC,00107$
                            618 ;src/text/text.c:159: if (x == 0 || (x > 0 && text[x - 1].phase == 1 && text[x - 1].yPos >= text[x].yPos + 15) || text[x - 1].phase > 1) moveCharacter(&text[x]);
   7952 69            [ 4]  619 	ld	l,c
   7953 26 00         [ 7]  620 	ld	h,#0x00
   7955 5D            [ 4]  621 	ld	e, l
   7956 54            [ 4]  622 	ld	d, h
   7957 CB 23         [ 8]  623 	sla	e
   7959 CB 12         [ 8]  624 	rl	d
   795B CB 23         [ 8]  625 	sla	e
   795D CB 12         [ 8]  626 	rl	d
   795F CB 23         [ 8]  627 	sla	e
   7961 CB 12         [ 8]  628 	rl	d
   7963 DD 7E 04      [19]  629 	ld	a,4 (ix)
   7966 83            [ 4]  630 	add	a, e
   7967 DD 77 FE      [19]  631 	ld	-2 (ix),a
   796A DD 7E 05      [19]  632 	ld	a,5 (ix)
   796D 8A            [ 4]  633 	adc	a, d
   796E DD 77 FF      [19]  634 	ld	-1 (ix),a
   7971 79            [ 4]  635 	ld	a,c
   7972 B7            [ 4]  636 	or	a, a
   7973 28 38         [12]  637 	jr	Z,00101$
   7975 2B            [ 6]  638 	dec	hl
   7976 29            [11]  639 	add	hl, hl
   7977 29            [11]  640 	add	hl, hl
   7978 29            [11]  641 	add	hl, hl
   7979 EB            [ 4]  642 	ex	de,hl
   797A DD 6E 04      [19]  643 	ld	l,4 (ix)
   797D DD 66 05      [19]  644 	ld	h,5 (ix)
   7980 19            [11]  645 	add	hl,de
   7981 46            [ 7]  646 	ld	b,(hl)
   7982 79            [ 4]  647 	ld	a,c
   7983 B7            [ 4]  648 	or	a, a
   7984 28 22         [12]  649 	jr	Z,00106$
   7986 78            [ 4]  650 	ld	a,b
   7987 3D            [ 4]  651 	dec	a
   7988 20 1E         [12]  652 	jr	NZ,00106$
   798A 23            [ 6]  653 	inc	hl
   798B 23            [ 6]  654 	inc	hl
   798C 5E            [ 7]  655 	ld	e,(hl)
   798D E1            [10]  656 	pop	hl
   798E E5            [11]  657 	push	hl
   798F 23            [ 6]  658 	inc	hl
   7990 23            [ 6]  659 	inc	hl
   7991 6E            [ 7]  660 	ld	l,(hl)
   7992 26 00         [ 7]  661 	ld	h,#0x00
   7994 D5            [11]  662 	push	de
   7995 11 0F 00      [10]  663 	ld	de,#0x000F
   7998 19            [11]  664 	add	hl, de
   7999 D1            [10]  665 	pop	de
   799A 16 00         [ 7]  666 	ld	d,#0x00
   799C 7B            [ 4]  667 	ld	a,e
   799D 95            [ 4]  668 	sub	a, l
   799E 7A            [ 4]  669 	ld	a,d
   799F 9C            [ 4]  670 	sbc	a, h
   79A0 E2 A5 79      [10]  671 	jp	PO, 00138$
   79A3 EE 80         [ 7]  672 	xor	a, #0x80
   79A5                     673 00138$:
   79A5 F2 AD 79      [10]  674 	jp	P,00101$
   79A8                     675 00106$:
   79A8 3E 01         [ 7]  676 	ld	a,#0x01
   79AA 90            [ 4]  677 	sub	a, b
   79AB 30 0B         [12]  678 	jr	NC,00110$
   79AD                     679 00101$:
   79AD C5            [11]  680 	push	bc
   79AE D1            [10]  681 	pop	de
   79AF E1            [10]  682 	pop	hl
   79B0 E5            [11]  683 	push	hl
   79B1 D5            [11]  684 	push	de
   79B2 E5            [11]  685 	push	hl
   79B3 CD D6 77      [17]  686 	call	_moveCharacter
   79B6 F1            [10]  687 	pop	af
   79B7 C1            [10]  688 	pop	bc
   79B8                     689 00110$:
                            690 ;src/text/text.c:157: for (x = 0; x < lenght; x++) {
   79B8 0C            [ 4]  691 	inc	c
   79B9 18 91         [12]  692 	jr	00109$
   79BB                     693 00107$:
                            694 ;src/text/text.c:162: return text[lenght - 1].phase == FALLING_TEXT_MAX_BOUNCES;
   79BB DD 6E 06      [19]  695 	ld	l,6 (ix)
   79BE 26 00         [ 7]  696 	ld	h,#0x00
   79C0 2B            [ 6]  697 	dec	hl
   79C1 29            [11]  698 	add	hl, hl
   79C2 29            [11]  699 	add	hl, hl
   79C3 29            [11]  700 	add	hl, hl
   79C4 4D            [ 4]  701 	ld	c, l
   79C5 44            [ 4]  702 	ld	b, h
   79C6 DD 6E 04      [19]  703 	ld	l,4 (ix)
   79C9 DD 66 05      [19]  704 	ld	h,5 (ix)
   79CC 09            [11]  705 	add	hl,bc
   79CD 7E            [ 7]  706 	ld	a,(hl)
   79CE D6 06         [ 7]  707 	sub	a, #0x06
   79D0 20 04         [12]  708 	jr	NZ,00139$
   79D2 3E 01         [ 7]  709 	ld	a,#0x01
   79D4 18 01         [12]  710 	jr	00140$
   79D6                     711 00139$:
   79D6 AF            [ 4]  712 	xor	a,a
   79D7                     713 00140$:
   79D7 6F            [ 4]  714 	ld	l,a
   79D8 DD F9         [10]  715 	ld	sp, ix
   79DA DD E1         [14]  716 	pop	ix
   79DC C9            [10]  717 	ret
                            718 ;src/text/text.c:168: void drawFallingText(u8 text[], u8 xPos, u8 yPos, u8 destinationyPos) {
                            719 ;	---------------------------------
                            720 ; Function drawFallingText
                            721 ; ---------------------------------
   79DD                     722 _drawFallingText::
   79DD DD E5         [15]  723 	push	ix
   79DF DD 21 00 00   [14]  724 	ld	ix,#0
   79E3 DD 39         [15]  725 	add	ix,sp
   79E5 21 5A FF      [10]  726 	ld	hl,#-166
   79E8 39            [11]  727 	add	hl,sp
   79E9 F9            [ 6]  728 	ld	sp,hl
                            729 ;src/text/text.c:174: for (x = 0; x < strLength(text) && x < FALLING_TEXT_MAX_LENGHT; x++) {
   79EA 21 00 00      [10]  730 	ld	hl,#0x0000
   79ED 39            [11]  731 	add	hl,sp
   79EE DD 75 FE      [19]  732 	ld	-2 (ix),l
   79F1 DD 74 FF      [19]  733 	ld	-1 (ix),h
   79F4 DD 36 FA 00   [19]  734 	ld	-6 (ix),#0x00
   79F8 DD 36 FD 00   [19]  735 	ld	-3 (ix),#0x00
   79FC                     736 00109$:
   79FC DD 6E 04      [19]  737 	ld	l,4 (ix)
   79FF DD 66 05      [19]  738 	ld	h,5 (ix)
   7A02 E5            [11]  739 	push	hl
   7A03 CD 14 76      [17]  740 	call	_strLength
   7A06 F1            [10]  741 	pop	af
   7A07 4D            [ 4]  742 	ld	c,l
   7A08 DD 7E FA      [19]  743 	ld	a,-6 (ix)
   7A0B 91            [ 4]  744 	sub	a, c
   7A0C D2 8C 7A      [10]  745 	jp	NC,00120$
   7A0F DD 7E FA      [19]  746 	ld	a,-6 (ix)
   7A12 D6 14         [ 7]  747 	sub	a, #0x14
   7A14 30 76         [12]  748 	jr	NC,00120$
                            749 ;src/text/text.c:176: ftext[x].phase = 1;
   7A16 DD 6E FA      [19]  750 	ld	l,-6 (ix)
   7A19 26 00         [ 7]  751 	ld	h,#0x00
   7A1B 29            [11]  752 	add	hl, hl
   7A1C 29            [11]  753 	add	hl, hl
   7A1D 29            [11]  754 	add	hl, hl
   7A1E 4D            [ 4]  755 	ld	c, l
   7A1F 44            [ 4]  756 	ld	b, h
   7A20 DD 7E FE      [19]  757 	ld	a,-2 (ix)
   7A23 81            [ 4]  758 	add	a, c
   7A24 4F            [ 4]  759 	ld	c,a
   7A25 DD 7E FF      [19]  760 	ld	a,-1 (ix)
   7A28 88            [ 4]  761 	adc	a, b
   7A29 47            [ 4]  762 	ld	b,a
   7A2A 3E 01         [ 7]  763 	ld	a,#0x01
   7A2C 02            [ 7]  764 	ld	(bc),a
                            765 ;src/text/text.c:177: ftext[x].xPos = xPos + (x * FONT_W);
   7A2D 59            [ 4]  766 	ld	e, c
   7A2E 50            [ 4]  767 	ld	d, b
   7A2F 13            [ 6]  768 	inc	de
   7A30 DD 7E 06      [19]  769 	ld	a,6 (ix)
   7A33 DD 86 FD      [19]  770 	add	a, -3 (ix)
   7A36 12            [ 7]  771 	ld	(de),a
                            772 ;src/text/text.c:178: ftext[x].yPos = yPos;
   7A37 59            [ 4]  773 	ld	e, c
   7A38 50            [ 4]  774 	ld	d, b
   7A39 13            [ 6]  775 	inc	de
   7A3A 13            [ 6]  776 	inc	de
   7A3B DD 7E 07      [19]  777 	ld	a,7 (ix)
   7A3E 12            [ 7]  778 	ld	(de),a
                            779 ;src/text/text.c:179: ftext[x].startyPos = yPos;
   7A3F 59            [ 4]  780 	ld	e, c
   7A40 50            [ 4]  781 	ld	d, b
   7A41 13            [ 6]  782 	inc	de
   7A42 13            [ 6]  783 	inc	de
   7A43 13            [ 6]  784 	inc	de
   7A44 DD 7E 07      [19]  785 	ld	a,7 (ix)
   7A47 12            [ 7]  786 	ld	(de),a
                            787 ;src/text/text.c:180: ftext[x].endyPos = destinationyPos;
   7A48 21 04 00      [10]  788 	ld	hl,#0x0004
   7A4B 09            [11]  789 	add	hl,bc
   7A4C DD 7E 08      [19]  790 	ld	a,8 (ix)
   7A4F 77            [ 7]  791 	ld	(hl),a
                            792 ;src/text/text.c:181: ftext[x].destinationyPos = destinationyPos;
   7A50 21 05 00      [10]  793 	ld	hl,#0x0005
   7A53 09            [11]  794 	add	hl,bc
   7A54 DD 7E 08      [19]  795 	ld	a,8 (ix)
   7A57 77            [ 7]  796 	ld	(hl),a
                            797 ;src/text/text.c:182: ftext[x].character[0] = text[x];
   7A58 21 06 00      [10]  798 	ld	hl,#0x0006
   7A5B 09            [11]  799 	add	hl,bc
   7A5C DD 75 FB      [19]  800 	ld	-5 (ix),l
   7A5F DD 74 FC      [19]  801 	ld	-4 (ix),h
   7A62 DD 7E 04      [19]  802 	ld	a,4 (ix)
   7A65 DD 86 FA      [19]  803 	add	a, -6 (ix)
   7A68 5F            [ 4]  804 	ld	e,a
   7A69 DD 7E 05      [19]  805 	ld	a,5 (ix)
   7A6C CE 00         [ 7]  806 	adc	a, #0x00
   7A6E 57            [ 4]  807 	ld	d,a
   7A6F 1A            [ 7]  808 	ld	a,(de)
   7A70 DD 6E FB      [19]  809 	ld	l,-5 (ix)
   7A73 DD 66 FC      [19]  810 	ld	h,-4 (ix)
   7A76 77            [ 7]  811 	ld	(hl),a
                            812 ;src/text/text.c:183: ftext[x].character[1] = '\0';
   7A77 21 07 00      [10]  813 	ld	hl,#0x0007
   7A7A 09            [11]  814 	add	hl,bc
   7A7B 36 00         [10]  815 	ld	(hl),#0x00
                            816 ;src/text/text.c:174: for (x = 0; x < strLength(text) && x < FALLING_TEXT_MAX_LENGHT; x++) {
   7A7D DD 34 FD      [23]  817 	inc	-3 (ix)
   7A80 DD 34 FD      [23]  818 	inc	-3 (ix)
   7A83 DD 34 FD      [23]  819 	inc	-3 (ix)
   7A86 DD 34 FA      [23]  820 	inc	-6 (ix)
   7A89 C3 FC 79      [10]  821 	jp	00109$
                            822 ;src/text/text.c:186: while (1) {
   7A8C                     823 00120$:
   7A8C DD 7E FE      [19]  824 	ld	a,-2 (ix)
   7A8F DD 77 FB      [19]  825 	ld	-5 (ix),a
   7A92 DD 7E FF      [19]  826 	ld	a,-1 (ix)
   7A95 DD 77 FC      [19]  827 	ld	-4 (ix),a
   7A98                     828 00105$:
                            829 ;src/text/text.c:189: if (moveFallingText(ftext, strLength(text) <= FALLING_TEXT_MAX_LENGHT ? strLength(text) : FALLING_TEXT_MAX_LENGHT)) {
   7A98 DD 6E 04      [19]  830 	ld	l,4 (ix)
   7A9B DD 66 05      [19]  831 	ld	h,5 (ix)
   7A9E E5            [11]  832 	push	hl
   7A9F CD 14 76      [17]  833 	call	_strLength
   7AA2 F1            [10]  834 	pop	af
   7AA3 3E 14         [ 7]  835 	ld	a,#0x14
   7AA5 95            [ 4]  836 	sub	a, l
   7AA6 38 0E         [12]  837 	jr	C,00113$
   7AA8 DD 6E 04      [19]  838 	ld	l,4 (ix)
   7AAB DD 66 05      [19]  839 	ld	h,5 (ix)
   7AAE E5            [11]  840 	push	hl
   7AAF CD 14 76      [17]  841 	call	_strLength
   7AB2 F1            [10]  842 	pop	af
   7AB3 45            [ 4]  843 	ld	b,l
   7AB4 18 02         [12]  844 	jr	00114$
   7AB6                     845 00113$:
   7AB6 06 14         [ 7]  846 	ld	b,#0x14
   7AB8                     847 00114$:
   7AB8 DD 5E FB      [19]  848 	ld	e,-5 (ix)
   7ABB DD 56 FC      [19]  849 	ld	d,-4 (ix)
   7ABE C5            [11]  850 	push	bc
   7ABF 33            [ 6]  851 	inc	sp
   7AC0 D5            [11]  852 	push	de
   7AC1 CD 41 79      [17]  853 	call	_moveFallingText
   7AC4 F1            [10]  854 	pop	af
   7AC5 33            [ 6]  855 	inc	sp
   7AC6 7D            [ 4]  856 	ld	a,l
   7AC7 B7            [ 4]  857 	or	a, a
                            858 ;src/text/text.c:191: return;
   7AC8 20 05         [12]  859 	jr	NZ,00111$
                            860 ;src/text/text.c:195: cpct_waitVSYNC();
   7ACA CD 4B 84      [17]  861 	call	_cpct_waitVSYNC
   7ACD 18 C9         [12]  862 	jr	00105$
   7ACF                     863 00111$:
   7ACF DD F9         [10]  864 	ld	sp, ix
   7AD1 DD E1         [14]  865 	pop	ix
   7AD3 C9            [10]  866 	ret
                            867 	.area _CODE
                            868 	.area _INITIALIZER
                            869 	.area _CABS (ABS)
