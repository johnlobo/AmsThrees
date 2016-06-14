                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.5 #9498 (Mac OS X x86_64)
                              4 ;--------------------------------------------------------
                              5 	.module draw
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _clearGameScreen
                             12 	.globl _drawText
                             13 	.globl _drawNumber
                             14 	.globl _clearWindow
                             15 	.globl _cpct_getRandom_mxor_u8
                             16 	.globl _cpct_getScreenPtr
                             17 	.globl _cpct_drawSolidBox
                             18 	.globl _cpct_drawSprite
                             19 	.globl _cpct_px2byteM0
                             20 	.globl _cpct_memset
                             21 	.globl _drawMenu
                             22 	.globl _drawFrame
                             23 	.globl _drawStar
                             24 	.globl _drawStars
                             25 ;--------------------------------------------------------
                             26 ; special function registers
                             27 ;--------------------------------------------------------
                             28 ;--------------------------------------------------------
                             29 ; ram data
                             30 ;--------------------------------------------------------
                             31 	.area _DATA
   A099                      32 _drawStars_starsCycles_1_120:
   A099                      33 	.ds 1
                             34 ;--------------------------------------------------------
                             35 ; ram data
                             36 ;--------------------------------------------------------
                             37 	.area _INITIALIZED
                             38 ;--------------------------------------------------------
                             39 ; absolute external ram data
                             40 ;--------------------------------------------------------
                             41 	.area _DABS (ABS)
                             42 ;--------------------------------------------------------
                             43 ; global & static initialisations
                             44 ;--------------------------------------------------------
                             45 	.area _HOME
                             46 	.area _GSINIT
                             47 	.area _GSFINAL
                             48 	.area _GSINIT
                             49 ;src/video/draw.c:120: static u8 starsCycles = 1;
   A0A9 FD 21 99 A0   [14]   50 	ld	iy,#_drawStars_starsCycles_1_120
   A0AD FD 36 00 01   [19]   51 	ld	0 (iy),#0x01
                             52 ;--------------------------------------------------------
                             53 ; Home
                             54 ;--------------------------------------------------------
                             55 	.area _HOME
                             56 	.area _HOME
                             57 ;--------------------------------------------------------
                             58 ; code
                             59 ;--------------------------------------------------------
                             60 	.area _CODE
                             61 ;src/video/draw.c:22: void drawMenu() {
                             62 ;	---------------------------------
                             63 ; Function drawMenu
                             64 ; ---------------------------------
   8B70                      65 _drawMenu::
                             66 ;src/video/draw.c:25: cpct_memset(CPCT_VMEM_START, cpct_px2byteM0(5, 5), 0x4000);
   8B70 21 05 05      [10]   67 	ld	hl,#0x0505
   8B73 E5            [11]   68 	push	hl
   8B74 CD F6 92      [17]   69 	call	_cpct_px2byteM0
   8B77 45            [ 4]   70 	ld	b,l
   8B78 21 00 40      [10]   71 	ld	hl,#0x4000
   8B7B E5            [11]   72 	push	hl
   8B7C C5            [11]   73 	push	bc
   8B7D 33            [ 6]   74 	inc	sp
   8B7E 26 C0         [ 7]   75 	ld	h, #0xC0
   8B80 E5            [11]   76 	push	hl
   8B81 CD 12 93      [17]   77 	call	_cpct_memset
                             78 ;src/video/draw.c:27: drawFrame(15, 38, 63, 134);
   8B84 21 3F 86      [10]   79 	ld	hl,#0x863F
   8B87 E5            [11]   80 	push	hl
   8B88 21 0F 26      [10]   81 	ld	hl,#0x260F
   8B8B E5            [11]   82 	push	hl
   8B8C CD AD 8C      [17]   83 	call	_drawFrame
   8B8F F1            [10]   84 	pop	af
                             85 ;src/video/draw.c:29: drawText("THREES", 31, 2,1);
   8B90 21 02 01      [10]   86 	ld	hl, #0x0102
   8B93 E3            [19]   87 	ex	(sp),hl
   8B94 3E 1F         [ 7]   88 	ld	a,#0x1F
   8B96 F5            [11]   89 	push	af
   8B97 33            [ 6]   90 	inc	sp
   8B98 21 4D 8C      [10]   91 	ld	hl,#___str_0
   8B9B E5            [11]   92 	push	hl
   8B9C CD 6D 85      [17]   93 	call	_drawText
   8B9F F1            [10]   94 	pop	af
                             95 ;src/video/draw.c:31: drawText("TECLADO", 30, 50,0);
   8BA0 33            [ 6]   96 	inc	sp
   8BA1 21 32 00      [10]   97 	ld	hl,#0x0032
   8BA4 E3            [19]   98 	ex	(sp),hl
   8BA5 3E 1E         [ 7]   99 	ld	a,#0x1E
   8BA7 F5            [11]  100 	push	af
   8BA8 33            [ 6]  101 	inc	sp
   8BA9 21 54 8C      [10]  102 	ld	hl,#___str_1
   8BAC E5            [11]  103 	push	hl
   8BAD CD 6D 85      [17]  104 	call	_drawText
   8BB0 F1            [10]  105 	pop	af
                            106 ;src/video/draw.c:32: drawText("JOYSTICK", 30, 70,0);
   8BB1 33            [ 6]  107 	inc	sp
   8BB2 21 46 00      [10]  108 	ld	hl,#0x0046
   8BB5 E3            [19]  109 	ex	(sp),hl
   8BB6 3E 1E         [ 7]  110 	ld	a,#0x1E
   8BB8 F5            [11]  111 	push	af
   8BB9 33            [ 6]  112 	inc	sp
   8BBA 21 5C 8C      [10]  113 	ld	hl,#___str_2
   8BBD E5            [11]  114 	push	hl
   8BBE CD 6D 85      [17]  115 	call	_drawText
   8BC1 F1            [10]  116 	pop	af
                            117 ;src/video/draw.c:33: drawText("MUSICA", 30, 90,0);
   8BC2 33            [ 6]  118 	inc	sp
   8BC3 21 5A 00      [10]  119 	ld	hl,#0x005A
   8BC6 E3            [19]  120 	ex	(sp),hl
   8BC7 3E 1E         [ 7]  121 	ld	a,#0x1E
   8BC9 F5            [11]  122 	push	af
   8BCA 33            [ 6]  123 	inc	sp
   8BCB 21 65 8C      [10]  124 	ld	hl,#___str_3
   8BCE E5            [11]  125 	push	hl
   8BCF CD 6D 85      [17]  126 	call	_drawText
   8BD2 F1            [10]  127 	pop	af
                            128 ;src/video/draw.c:34: drawText("JUGAR", 30, 110,0);
   8BD3 33            [ 6]  129 	inc	sp
   8BD4 21 6E 00      [10]  130 	ld	hl,#0x006E
   8BD7 E3            [19]  131 	ex	(sp),hl
   8BD8 3E 1E         [ 7]  132 	ld	a,#0x1E
   8BDA F5            [11]  133 	push	af
   8BDB 33            [ 6]  134 	inc	sp
   8BDC 21 6C 8C      [10]  135 	ld	hl,#___str_4
   8BDF E5            [11]  136 	push	hl
   8BE0 CD 6D 85      [17]  137 	call	_drawText
   8BE3 F1            [10]  138 	pop	af
                            139 ;src/video/draw.c:36: drawNumber(1, 1, 23, 50);
   8BE4 33            [ 6]  140 	inc	sp
   8BE5 21 17 32      [10]  141 	ld	hl,#0x3217
   8BE8 E3            [19]  142 	ex	(sp),hl
   8BE9 3E 01         [ 7]  143 	ld	a,#0x01
   8BEB F5            [11]  144 	push	af
   8BEC 33            [ 6]  145 	inc	sp
   8BED 21 01 00      [10]  146 	ld	hl,#0x0001
   8BF0 E5            [11]  147 	push	hl
   8BF1 CD D0 84      [17]  148 	call	_drawNumber
   8BF4 F1            [10]  149 	pop	af
                            150 ;src/video/draw.c:37: drawNumber(2, 1, 23, 70);
   8BF5 33            [ 6]  151 	inc	sp
   8BF6 21 17 46      [10]  152 	ld	hl,#0x4617
   8BF9 E3            [19]  153 	ex	(sp),hl
   8BFA 3E 01         [ 7]  154 	ld	a,#0x01
   8BFC F5            [11]  155 	push	af
   8BFD 33            [ 6]  156 	inc	sp
   8BFE 21 02 00      [10]  157 	ld	hl,#0x0002
   8C01 E5            [11]  158 	push	hl
   8C02 CD D0 84      [17]  159 	call	_drawNumber
   8C05 F1            [10]  160 	pop	af
                            161 ;src/video/draw.c:38: drawNumber(3, 1, 23, 90);
   8C06 33            [ 6]  162 	inc	sp
   8C07 21 17 5A      [10]  163 	ld	hl,#0x5A17
   8C0A E3            [19]  164 	ex	(sp),hl
   8C0B 3E 01         [ 7]  165 	ld	a,#0x01
   8C0D F5            [11]  166 	push	af
   8C0E 33            [ 6]  167 	inc	sp
   8C0F 21 03 00      [10]  168 	ld	hl,#0x0003
   8C12 E5            [11]  169 	push	hl
   8C13 CD D0 84      [17]  170 	call	_drawNumber
   8C16 F1            [10]  171 	pop	af
                            172 ;src/video/draw.c:39: drawNumber(4, 1, 23, 110);
   8C17 33            [ 6]  173 	inc	sp
   8C18 21 17 6E      [10]  174 	ld	hl,#0x6E17
   8C1B E3            [19]  175 	ex	(sp),hl
   8C1C 3E 01         [ 7]  176 	ld	a,#0x01
   8C1E F5            [11]  177 	push	af
   8C1F 33            [ 6]  178 	inc	sp
   8C20 21 04 00      [10]  179 	ld	hl,#0x0004
   8C23 E5            [11]  180 	push	hl
   8C24 CD D0 84      [17]  181 	call	_drawNumber
   8C27 F1            [10]  182 	pop	af
                            183 ;src/video/draw.c:42: drawText("JOHN LOBO", 25, 170,1);
   8C28 33            [ 6]  184 	inc	sp
   8C29 21 AA 01      [10]  185 	ld	hl,#0x01AA
   8C2C E3            [19]  186 	ex	(sp),hl
   8C2D 3E 19         [ 7]  187 	ld	a,#0x19
   8C2F F5            [11]  188 	push	af
   8C30 33            [ 6]  189 	inc	sp
   8C31 21 72 8C      [10]  190 	ld	hl,#___str_5
   8C34 E5            [11]  191 	push	hl
   8C35 CD 6D 85      [17]  192 	call	_drawText
   8C38 F1            [10]  193 	pop	af
                            194 ;src/video/draw.c:43: drawText("@ GLASNOST CORP 2015", 11, 185,1);
   8C39 33            [ 6]  195 	inc	sp
   8C3A 21 B9 01      [10]  196 	ld	hl,#0x01B9
   8C3D E3            [19]  197 	ex	(sp),hl
   8C3E 3E 0B         [ 7]  198 	ld	a,#0x0B
   8C40 F5            [11]  199 	push	af
   8C41 33            [ 6]  200 	inc	sp
   8C42 21 7C 8C      [10]  201 	ld	hl,#___str_6
   8C45 E5            [11]  202 	push	hl
   8C46 CD 6D 85      [17]  203 	call	_drawText
   8C49 F1            [10]  204 	pop	af
   8C4A F1            [10]  205 	pop	af
   8C4B 33            [ 6]  206 	inc	sp
   8C4C C9            [10]  207 	ret
   8C4D                     208 ___str_0:
   8C4D 54 48 52 45 45 53   209 	.ascii "THREES"
   8C53 00                  210 	.db 0x00
   8C54                     211 ___str_1:
   8C54 54 45 43 4C 41 44   212 	.ascii "TECLADO"
        4F
   8C5B 00                  213 	.db 0x00
   8C5C                     214 ___str_2:
   8C5C 4A 4F 59 53 54 49   215 	.ascii "JOYSTICK"
        43 4B
   8C64 00                  216 	.db 0x00
   8C65                     217 ___str_3:
   8C65 4D 55 53 49 43 41   218 	.ascii "MUSICA"
   8C6B 00                  219 	.db 0x00
   8C6C                     220 ___str_4:
   8C6C 4A 55 47 41 52      221 	.ascii "JUGAR"
   8C71 00                  222 	.db 0x00
   8C72                     223 ___str_5:
   8C72 4A 4F 48 4E 20 4C   224 	.ascii "JOHN LOBO"
        4F 42 4F
   8C7B 00                  225 	.db 0x00
   8C7C                     226 ___str_6:
   8C7C 40 20 47 4C 41 53   227 	.ascii "@ GLASNOST CORP 2015"
        4E 4F 53 54 20 43
        4F 52 50 20 32 30
        31 35
   8C90 00                  228 	.db 0x00
                            229 ;src/video/draw.c:47: void clearGameScreen() {
                            230 ;	---------------------------------
                            231 ; Function clearGameScreen
                            232 ; ---------------------------------
   8C91                     233 _clearGameScreen::
                            234 ;src/video/draw.c:49: u8* pvideo = cpct_getScreenPtr(CPCT_VMEM_START, MIN_X, MIN_Y);
   8C91 21 09 05      [10]  235 	ld	hl,#0x0509
   8C94 E5            [11]  236 	push	hl
   8C95 21 00 C0      [10]  237 	ld	hl,#0xC000
   8C98 E5            [11]  238 	push	hl
   8C99 CD 29 94      [17]  239 	call	_cpct_getScreenPtr
   8C9C 4D            [ 4]  240 	ld	c,l
   8C9D 44            [ 4]  241 	ld	b,h
                            242 ;src/video/draw.c:51: cpct_drawSolidBox(pvideo, 0, MAX_X - MIN_X + 1, MAX_Y - MIN_Y);
   8C9E 21 44 F1      [10]  243 	ld	hl,#0xF144
   8CA1 E5            [11]  244 	push	hl
   8CA2 AF            [ 4]  245 	xor	a, a
   8CA3 F5            [11]  246 	push	af
   8CA4 33            [ 6]  247 	inc	sp
   8CA5 C5            [11]  248 	push	bc
   8CA6 CD 3F 93      [17]  249 	call	_cpct_drawSolidBox
   8CA9 F1            [10]  250 	pop	af
   8CAA F1            [10]  251 	pop	af
   8CAB 33            [ 6]  252 	inc	sp
   8CAC C9            [10]  253 	ret
                            254 ;src/video/draw.c:56: void drawFrame(u8 x1, u8 y1, u8 x2, u8 y2) {
                            255 ;	---------------------------------
                            256 ; Function drawFrame
                            257 ; ---------------------------------
   8CAD                     258 _drawFrame::
   8CAD DD E5         [15]  259 	push	ix
   8CAF DD 21 00 00   [14]  260 	ld	ix,#0
   8CB3 DD 39         [15]  261 	add	ix,sp
   8CB5 21 F7 FF      [10]  262 	ld	hl,#-9
   8CB8 39            [11]  263 	add	hl,sp
   8CB9 F9            [ 6]  264 	ld	sp,hl
                            265 ;src/video/draw.c:61: frame_w = x2 - x1;
   8CBA DD 7E 06      [19]  266 	ld	a,6 (ix)
   8CBD DD 96 04      [19]  267 	sub	a, 4 (ix)
   8CC0 47            [ 4]  268 	ld	b,a
   8CC1 DD 70 F7      [19]  269 	ld	-9 (ix),b
                            270 ;src/video/draw.c:64: clearWindow(x1, y1, x2 - x1, y2 - y1);
   8CC4 DD 7E 07      [19]  271 	ld	a,7 (ix)
   8CC7 DD 96 05      [19]  272 	sub	a, 5 (ix)
   8CCA 57            [ 4]  273 	ld	d,a
   8CCB D5            [11]  274 	push	de
   8CCC 33            [ 6]  275 	inc	sp
   8CCD C5            [11]  276 	push	bc
   8CCE 33            [ 6]  277 	inc	sp
   8CCF DD 66 05      [19]  278 	ld	h,5 (ix)
   8CD2 DD 6E 04      [19]  279 	ld	l,4 (ix)
   8CD5 E5            [11]  280 	push	hl
   8CD6 CD D3 8F      [17]  281 	call	_clearWindow
   8CD9 F1            [10]  282 	pop	af
   8CDA F1            [10]  283 	pop	af
                            284 ;src/video/draw.c:67: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, x1, y1);
   8CDB DD 66 05      [19]  285 	ld	h,5 (ix)
   8CDE DD 6E 04      [19]  286 	ld	l,4 (ix)
   8CE1 E5            [11]  287 	push	hl
   8CE2 21 00 C0      [10]  288 	ld	hl,#0xC000
   8CE5 E5            [11]  289 	push	hl
   8CE6 CD 29 94      [17]  290 	call	_cpct_getScreenPtr
   8CE9 4D            [ 4]  291 	ld	c,l
   8CEA 44            [ 4]  292 	ld	b,h
                            293 ;src/video/draw.c:68: cpct_drawSprite(g_tile_border_0,  pvideo, 2, 4);
   8CEB 59            [ 4]  294 	ld	e, c
   8CEC 50            [ 4]  295 	ld	d, b
   8CED C5            [11]  296 	push	bc
   8CEE 21 02 04      [10]  297 	ld	hl,#0x0402
   8CF1 E5            [11]  298 	push	hl
   8CF2 D5            [11]  299 	push	de
   8CF3 21 FC 61      [10]  300 	ld	hl,#_g_tile_border_0
   8CF6 E5            [11]  301 	push	hl
   8CF7 CD A3 90      [17]  302 	call	_cpct_drawSprite
   8CFA C1            [10]  303 	pop	bc
                            304 ;src/video/draw.c:72: for (x = x1 + 2; x < (x2 - 2); x = x + 2) {
   8CFB DD 7E 04      [19]  305 	ld	a,4 (ix)
   8CFE C6 02         [ 7]  306 	add	a, #0x02
   8D00 DD 77 FF      [19]  307 	ld	-1 (ix), a
   8D03 DD 77 FE      [19]  308 	ld	-2 (ix),a
   8D06 11 1C 62      [10]  309 	ld	de,#_g_tile_border_4+0
   8D09                     310 00105$:
   8D09 DD 7E 06      [19]  311 	ld	a, 6 (ix)
   8D0C 26 00         [ 7]  312 	ld	h, #0x00
   8D0E C6 FE         [ 7]  313 	add	a,#0xFE
   8D10 DD 77 FC      [19]  314 	ld	-4 (ix),a
   8D13 7C            [ 4]  315 	ld	a,h
   8D14 CE FF         [ 7]  316 	adc	a,#0xFF
   8D16 DD 77 FD      [19]  317 	ld	-3 (ix),a
   8D19 DD 6E FE      [19]  318 	ld	l,-2 (ix)
   8D1C 26 00         [ 7]  319 	ld	h,#0x00
                            320 ;src/video/draw.c:74: cpct_drawSprite(g_tile_border_4,  pvideo + (x - x1), 2, 4);
   8D1E DD 7E 04      [19]  321 	ld	a,4 (ix)
   8D21 DD 77 FA      [19]  322 	ld	-6 (ix),a
   8D24 DD 36 FB 00   [19]  323 	ld	-5 (ix),#0x00
                            324 ;src/video/draw.c:72: for (x = x1 + 2; x < (x2 - 2); x = x + 2) {
   8D28 7D            [ 4]  325 	ld	a,l
   8D29 DD 96 FC      [19]  326 	sub	a, -4 (ix)
   8D2C 7C            [ 4]  327 	ld	a,h
   8D2D DD 9E FD      [19]  328 	sbc	a, -3 (ix)
   8D30 E2 35 8D      [10]  329 	jp	PO, 00142$
   8D33 EE 80         [ 7]  330 	xor	a, #0x80
   8D35                     331 00142$:
   8D35 F2 5F 8D      [10]  332 	jp	P,00101$
                            333 ;src/video/draw.c:74: cpct_drawSprite(g_tile_border_4,  pvideo + (x - x1), 2, 4);
   8D38 7D            [ 4]  334 	ld	a,l
   8D39 DD 96 FA      [19]  335 	sub	a, -6 (ix)
   8D3C 6F            [ 4]  336 	ld	l,a
   8D3D 7C            [ 4]  337 	ld	a,h
   8D3E DD 9E FB      [19]  338 	sbc	a, -5 (ix)
   8D41 67            [ 4]  339 	ld	h,a
   8D42 09            [11]  340 	add	hl,bc
   8D43 E5            [11]  341 	push	hl
   8D44 FD E1         [14]  342 	pop	iy
   8D46 C5            [11]  343 	push	bc
   8D47 D5            [11]  344 	push	de
   8D48 21 02 04      [10]  345 	ld	hl,#0x0402
   8D4B E5            [11]  346 	push	hl
   8D4C FD E5         [15]  347 	push	iy
   8D4E 21 1C 62      [10]  348 	ld	hl,#_g_tile_border_4
   8D51 E5            [11]  349 	push	hl
   8D52 CD A3 90      [17]  350 	call	_cpct_drawSprite
   8D55 D1            [10]  351 	pop	de
   8D56 C1            [10]  352 	pop	bc
                            353 ;src/video/draw.c:72: for (x = x1 + 2; x < (x2 - 2); x = x + 2) {
   8D57 DD 34 FE      [23]  354 	inc	-2 (ix)
   8D5A DD 34 FE      [23]  355 	inc	-2 (ix)
   8D5D 18 AA         [12]  356 	jr	00105$
   8D5F                     357 00101$:
                            358 ;src/video/draw.c:78: cpct_drawSprite(g_tile_border_1,  pvideo + (frame_w - 2), 2,4);
   8D5F DD 5E F7      [19]  359 	ld	e,-9 (ix)
   8D62 16 00         [ 7]  360 	ld	d,#0x00
   8D64 1B            [ 6]  361 	dec	de
   8D65 1B            [ 6]  362 	dec	de
   8D66 6B            [ 4]  363 	ld	l, e
   8D67 62            [ 4]  364 	ld	h, d
   8D68 09            [11]  365 	add	hl,bc
   8D69 4D            [ 4]  366 	ld	c, l
   8D6A 44            [ 4]  367 	ld	b, h
   8D6B D5            [11]  368 	push	de
   8D6C 21 02 04      [10]  369 	ld	hl,#0x0402
   8D6F E5            [11]  370 	push	hl
   8D70 C5            [11]  371 	push	bc
   8D71 21 04 62      [10]  372 	ld	hl,#_g_tile_border_1
   8D74 E5            [11]  373 	push	hl
   8D75 CD A3 90      [17]  374 	call	_cpct_drawSprite
   8D78 D1            [10]  375 	pop	de
                            376 ;src/video/draw.c:82: for (x = y1 + 4; x < (y2 - 4); x = x + 4) {
   8D79 DD 7E 05      [19]  377 	ld	a,5 (ix)
   8D7C C6 04         [ 7]  378 	add	a, #0x04
   8D7E DD 77 FE      [19]  379 	ld	-2 (ix),a
   8D81                     380 00108$:
   8D81 DD 4E 07      [19]  381 	ld	c,7 (ix)
   8D84 06 00         [ 7]  382 	ld	b,#0x00
   8D86 79            [ 4]  383 	ld	a,c
   8D87 C6 FC         [ 7]  384 	add	a,#0xFC
   8D89 4F            [ 4]  385 	ld	c,a
   8D8A 78            [ 4]  386 	ld	a,b
   8D8B CE FF         [ 7]  387 	adc	a,#0xFF
   8D8D 47            [ 4]  388 	ld	b,a
   8D8E DD 7E FE      [19]  389 	ld	a, -2 (ix)
   8D91 26 00         [ 7]  390 	ld	h, #0x00
   8D93 91            [ 4]  391 	sub	a, c
   8D94 7C            [ 4]  392 	ld	a,h
   8D95 98            [ 4]  393 	sbc	a, b
   8D96 E2 9B 8D      [10]  394 	jp	PO, 00143$
   8D99 EE 80         [ 7]  395 	xor	a, #0x80
   8D9B                     396 00143$:
   8D9B F2 E3 8D      [10]  397 	jp	P,00102$
                            398 ;src/video/draw.c:84: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, x1, x);
   8D9E D5            [11]  399 	push	de
   8D9F DD 66 FE      [19]  400 	ld	h,-2 (ix)
   8DA2 DD 6E 04      [19]  401 	ld	l,4 (ix)
   8DA5 E5            [11]  402 	push	hl
   8DA6 21 00 C0      [10]  403 	ld	hl,#0xC000
   8DA9 E5            [11]  404 	push	hl
   8DAA CD 29 94      [17]  405 	call	_cpct_getScreenPtr
   8DAD 4D            [ 4]  406 	ld	c,l
   8DAE 44            [ 4]  407 	ld	b,h
   8DAF D1            [10]  408 	pop	de
                            409 ;src/video/draw.c:85: cpct_drawSprite(g_tile_border_5,  pvideo, 2, 4);
   8DB0 C5            [11]  410 	push	bc
   8DB1 FD E1         [14]  411 	pop	iy
   8DB3 C5            [11]  412 	push	bc
   8DB4 D5            [11]  413 	push	de
   8DB5 21 02 04      [10]  414 	ld	hl,#0x0402
   8DB8 E5            [11]  415 	push	hl
   8DB9 FD E5         [15]  416 	push	iy
   8DBB 21 24 62      [10]  417 	ld	hl,#_g_tile_border_5
   8DBE E5            [11]  418 	push	hl
   8DBF CD A3 90      [17]  419 	call	_cpct_drawSprite
   8DC2 D1            [10]  420 	pop	de
                            421 ;src/video/draw.c:86: cpct_drawSprite(g_tile_border_6,  pvideo + (frame_w - 2), 2, 4);
   8DC3 E1            [10]  422 	pop	hl
   8DC4 19            [11]  423 	add	hl,de
   8DC5 4D            [ 4]  424 	ld	c, l
   8DC6 44            [ 4]  425 	ld	b, h
   8DC7 D5            [11]  426 	push	de
   8DC8 21 02 04      [10]  427 	ld	hl,#0x0402
   8DCB E5            [11]  428 	push	hl
   8DCC C5            [11]  429 	push	bc
   8DCD 21 2C 62      [10]  430 	ld	hl,#_g_tile_border_6
   8DD0 E5            [11]  431 	push	hl
   8DD1 CD A3 90      [17]  432 	call	_cpct_drawSprite
   8DD4 D1            [10]  433 	pop	de
                            434 ;src/video/draw.c:82: for (x = y1 + 4; x < (y2 - 4); x = x + 4) {
   8DD5 DD 34 FE      [23]  435 	inc	-2 (ix)
   8DD8 DD 34 FE      [23]  436 	inc	-2 (ix)
   8DDB DD 34 FE      [23]  437 	inc	-2 (ix)
   8DDE DD 34 FE      [23]  438 	inc	-2 (ix)
   8DE1 18 9E         [12]  439 	jr	00108$
   8DE3                     440 00102$:
                            441 ;src/video/draw.c:90: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, x1, y2 - 4);
   8DE3 DD 7E 07      [19]  442 	ld	a,7 (ix)
   8DE6 C6 FC         [ 7]  443 	add	a,#0xFC
   8DE8 47            [ 4]  444 	ld	b,a
   8DE9 D5            [11]  445 	push	de
   8DEA C5            [11]  446 	push	bc
   8DEB 33            [ 6]  447 	inc	sp
   8DEC DD 7E 04      [19]  448 	ld	a,4 (ix)
   8DEF F5            [11]  449 	push	af
   8DF0 33            [ 6]  450 	inc	sp
   8DF1 21 00 C0      [10]  451 	ld	hl,#0xC000
   8DF4 E5            [11]  452 	push	hl
   8DF5 CD 29 94      [17]  453 	call	_cpct_getScreenPtr
   8DF8 4D            [ 4]  454 	ld	c,l
   8DF9 44            [ 4]  455 	ld	b,h
   8DFA D1            [10]  456 	pop	de
                            457 ;src/video/draw.c:93: cpct_drawSprite(g_tile_border_2,  pvideo, 2, 4);
   8DFB DD 71 F8      [19]  458 	ld	-8 (ix),c
   8DFE DD 70 F9      [19]  459 	ld	-7 (ix),b
   8E01 C5            [11]  460 	push	bc
   8E02 D5            [11]  461 	push	de
   8E03 21 02 04      [10]  462 	ld	hl,#0x0402
   8E06 E5            [11]  463 	push	hl
   8E07 DD 6E F8      [19]  464 	ld	l,-8 (ix)
   8E0A DD 66 F9      [19]  465 	ld	h,-7 (ix)
   8E0D E5            [11]  466 	push	hl
   8E0E 21 0C 62      [10]  467 	ld	hl,#_g_tile_border_2
   8E11 E5            [11]  468 	push	hl
   8E12 CD A3 90      [17]  469 	call	_cpct_drawSprite
   8E15 D1            [10]  470 	pop	de
   8E16 C1            [10]  471 	pop	bc
                            472 ;src/video/draw.c:97: for (x = x1 + 2; x < (x2 - 2); x = x + 2) {
   8E17 DD 7E FF      [19]  473 	ld	a,-1 (ix)
   8E1A DD 77 F8      [19]  474 	ld	-8 (ix),a
   8E1D                     475 00111$:
   8E1D DD 6E F8      [19]  476 	ld	l,-8 (ix)
   8E20 26 00         [ 7]  477 	ld	h,#0x00
   8E22 7D            [ 4]  478 	ld	a,l
   8E23 DD 96 FC      [19]  479 	sub	a, -4 (ix)
   8E26 7C            [ 4]  480 	ld	a,h
   8E27 DD 9E FD      [19]  481 	sbc	a, -3 (ix)
   8E2A E2 2F 8E      [10]  482 	jp	PO, 00144$
   8E2D EE 80         [ 7]  483 	xor	a, #0x80
   8E2F                     484 00144$:
   8E2F F2 59 8E      [10]  485 	jp	P,00103$
                            486 ;src/video/draw.c:99: cpct_drawSprite(g_tile_border_7,  pvideo + (x - x1), 2, 4);
   8E32 7D            [ 4]  487 	ld	a,l
   8E33 DD 96 FA      [19]  488 	sub	a, -6 (ix)
   8E36 6F            [ 4]  489 	ld	l,a
   8E37 7C            [ 4]  490 	ld	a,h
   8E38 DD 9E FB      [19]  491 	sbc	a, -5 (ix)
   8E3B 67            [ 4]  492 	ld	h,a
   8E3C 09            [11]  493 	add	hl,bc
   8E3D E5            [11]  494 	push	hl
   8E3E FD E1         [14]  495 	pop	iy
   8E40 C5            [11]  496 	push	bc
   8E41 D5            [11]  497 	push	de
   8E42 21 02 04      [10]  498 	ld	hl,#0x0402
   8E45 E5            [11]  499 	push	hl
   8E46 FD E5         [15]  500 	push	iy
   8E48 21 34 62      [10]  501 	ld	hl,#_g_tile_border_7
   8E4B E5            [11]  502 	push	hl
   8E4C CD A3 90      [17]  503 	call	_cpct_drawSprite
   8E4F D1            [10]  504 	pop	de
   8E50 C1            [10]  505 	pop	bc
                            506 ;src/video/draw.c:97: for (x = x1 + 2; x < (x2 - 2); x = x + 2) {
   8E51 DD 34 F8      [23]  507 	inc	-8 (ix)
   8E54 DD 34 F8      [23]  508 	inc	-8 (ix)
   8E57 18 C4         [12]  509 	jr	00111$
   8E59                     510 00103$:
                            511 ;src/video/draw.c:103: cpct_drawSprite(g_tile_border_3,  pvideo + (frame_w - 2), 2, 4);
   8E59 69            [ 4]  512 	ld	l, c
   8E5A 60            [ 4]  513 	ld	h, b
   8E5B 19            [11]  514 	add	hl,de
   8E5C 4D            [ 4]  515 	ld	c, l
   8E5D 44            [ 4]  516 	ld	b, h
   8E5E 21 02 04      [10]  517 	ld	hl,#0x0402
   8E61 E5            [11]  518 	push	hl
   8E62 C5            [11]  519 	push	bc
   8E63 21 14 62      [10]  520 	ld	hl,#_g_tile_border_3
   8E66 E5            [11]  521 	push	hl
   8E67 CD A3 90      [17]  522 	call	_cpct_drawSprite
   8E6A DD F9         [10]  523 	ld	sp, ix
   8E6C DD E1         [14]  524 	pop	ix
   8E6E C9            [10]  525 	ret
                            526 ;src/video/draw.c:107: void drawStar(u8 color1, u8 color2, u8 xPos, u8 yPos) {
                            527 ;	---------------------------------
                            528 ; Function drawStar
                            529 ; ---------------------------------
   8E6F                     530 _drawStar::
                            531 ;src/video/draw.c:109: u8* pvideo = cpct_getScreenPtr(CPCT_VMEM_START, xPos, yPos);
   8E6F 21 05 00      [10]  532 	ld	hl, #5+0
   8E72 39            [11]  533 	add	hl, sp
   8E73 7E            [ 7]  534 	ld	a, (hl)
   8E74 F5            [11]  535 	push	af
   8E75 33            [ 6]  536 	inc	sp
   8E76 21 05 00      [10]  537 	ld	hl, #5+0
   8E79 39            [11]  538 	add	hl, sp
   8E7A 7E            [ 7]  539 	ld	a, (hl)
   8E7B F5            [11]  540 	push	af
   8E7C 33            [ 6]  541 	inc	sp
   8E7D 21 00 C0      [10]  542 	ld	hl,#0xC000
   8E80 E5            [11]  543 	push	hl
   8E81 CD 29 94      [17]  544 	call	_cpct_getScreenPtr
                            545 ;src/video/draw.c:110: cpct_drawSolidBox(pvideo, cpct_px2byteM0(color1, color2), 1, 1);
   8E84 E5            [11]  546 	push	hl
   8E85 21 05 00      [10]  547 	ld	hl, #5+0
   8E88 39            [11]  548 	add	hl, sp
   8E89 7E            [ 7]  549 	ld	a, (hl)
   8E8A F5            [11]  550 	push	af
   8E8B 33            [ 6]  551 	inc	sp
   8E8C 21 05 00      [10]  552 	ld	hl, #5+0
   8E8F 39            [11]  553 	add	hl, sp
   8E90 7E            [ 7]  554 	ld	a, (hl)
   8E91 F5            [11]  555 	push	af
   8E92 33            [ 6]  556 	inc	sp
   8E93 CD F6 92      [17]  557 	call	_cpct_px2byteM0
   8E96 55            [ 4]  558 	ld	d,l
   8E97 C1            [10]  559 	pop	bc
   8E98 21 01 01      [10]  560 	ld	hl,#0x0101
   8E9B E5            [11]  561 	push	hl
   8E9C D5            [11]  562 	push	de
   8E9D 33            [ 6]  563 	inc	sp
   8E9E C5            [11]  564 	push	bc
   8E9F CD 3F 93      [17]  565 	call	_cpct_drawSolidBox
   8EA2 F1            [10]  566 	pop	af
   8EA3 F1            [10]  567 	pop	af
   8EA4 33            [ 6]  568 	inc	sp
   8EA5 C9            [10]  569 	ret
                            570 ;src/video/draw.c:115: void drawStars(Coords *stars) {
                            571 ;	---------------------------------
                            572 ; Function drawStars
                            573 ; ---------------------------------
   8EA6                     574 _drawStars::
   8EA6 DD E5         [15]  575 	push	ix
   8EA8 DD 21 00 00   [14]  576 	ld	ix,#0
   8EAC DD 39         [15]  577 	add	ix,sp
   8EAE F5            [11]  578 	push	af
   8EAF 3B            [ 6]  579 	dec	sp
                            580 ;src/video/draw.c:122: for (x = 0; x < MAX_STARS + MAX_COLOR_STARS; x++) {
   8EB0 DD 36 FD 00   [19]  581 	ld	-3 (ix),#0x00
   8EB4                     582 00114$:
                            583 ;src/video/draw.c:128: drawStar(1, 0, stars[x].xPos, stars[x].yPos);
   8EB4 DD 6E FD      [19]  584 	ld	l,-3 (ix)
   8EB7 26 00         [ 7]  585 	ld	h,#0x00
   8EB9 29            [11]  586 	add	hl, hl
   8EBA 4D            [ 4]  587 	ld	c, l
   8EBB 44            [ 4]  588 	ld	b, h
   8EBC DD 7E 04      [19]  589 	ld	a,4 (ix)
   8EBF 81            [ 4]  590 	add	a, c
   8EC0 4F            [ 4]  591 	ld	c,a
   8EC1 DD 7E 05      [19]  592 	ld	a,5 (ix)
   8EC4 88            [ 4]  593 	adc	a, b
   8EC5 47            [ 4]  594 	ld	b,a
   8EC6 0A            [ 7]  595 	ld	a,(bc)
   8EC7 DD 77 FF      [19]  596 	ld	-1 (ix),a
   8ECA 59            [ 4]  597 	ld	e, c
   8ECB 50            [ 4]  598 	ld	d, b
   8ECC 13            [ 6]  599 	inc	de
   8ECD 1A            [ 7]  600 	ld	a,(de)
   8ECE DD 77 FE      [19]  601 	ld	-2 (ix),a
                            602 ;src/video/draw.c:124: if (x < MAX_STARS) {
   8ED1 DD 7E FD      [19]  603 	ld	a,-3 (ix)
   8ED4 D6 08         [ 7]  604 	sub	a, #0x08
   8ED6 30 3A         [12]  605 	jr	NC,00109$
                            606 ;src/video/draw.c:126: if (starsCycles == 2) {
   8ED8 3A 99 A0      [13]  607 	ld	a,(#_drawStars_starsCycles_1_120 + 0)
   8EDB D6 02         [ 7]  608 	sub	a, #0x02
   8EDD 20 21         [12]  609 	jr	NZ,00104$
                            610 ;src/video/draw.c:128: drawStar(1, 0, stars[x].xPos, stars[x].yPos);
   8EDF C5            [11]  611 	push	bc
   8EE0 DD 66 FE      [19]  612 	ld	h,-2 (ix)
   8EE3 DD 6E FF      [19]  613 	ld	l,-1 (ix)
   8EE6 E5            [11]  614 	push	hl
   8EE7 21 01 00      [10]  615 	ld	hl,#0x0001
   8EEA E5            [11]  616 	push	hl
   8EEB CD 6F 8E      [17]  617 	call	_drawStar
   8EEE F1            [10]  618 	pop	af
   8EEF F1            [10]  619 	pop	af
   8EF0 C1            [10]  620 	pop	bc
                            621 ;src/video/draw.c:129: stars[x].xPos--;
   8EF1 0A            [ 7]  622 	ld	a,(bc)
   8EF2 5F            [ 4]  623 	ld	e,a
   8EF3 1D            [ 4]  624 	dec	e
   8EF4 7B            [ 4]  625 	ld	a,e
   8EF5 02            [ 7]  626 	ld	(bc),a
                            627 ;src/video/draw.c:131: if (stars[x].xPos < MIN_X) {
   8EF6 7B            [ 4]  628 	ld	a,e
   8EF7 D6 09         [ 7]  629 	sub	a, #0x09
   8EF9 30 62         [12]  630 	jr	NC,00115$
                            631 ;src/video/draw.c:133: stars[x].xPos = MAX_X;
   8EFB 3E 4C         [ 7]  632 	ld	a,#0x4C
   8EFD 02            [ 7]  633 	ld	(bc),a
   8EFE 18 5D         [12]  634 	jr	00115$
   8F00                     635 00104$:
                            636 ;src/video/draw.c:139: drawStar(0, 1, stars[x].xPos, stars[x].yPos);
   8F00 DD 66 FE      [19]  637 	ld	h,-2 (ix)
   8F03 DD 6E FF      [19]  638 	ld	l,-1 (ix)
   8F06 E5            [11]  639 	push	hl
   8F07 21 00 01      [10]  640 	ld	hl,#0x0100
   8F0A E5            [11]  641 	push	hl
   8F0B CD 6F 8E      [17]  642 	call	_drawStar
   8F0E F1            [10]  643 	pop	af
   8F0F F1            [10]  644 	pop	af
   8F10 18 4B         [12]  645 	jr	00115$
   8F12                     646 00109$:
                            647 ;src/video/draw.c:145: pvideo = cpct_getScreenPtr(CPCT_VMEM_START,  stars[x].xPos, stars[x].yPos);
   8F12 C5            [11]  648 	push	bc
   8F13 D5            [11]  649 	push	de
   8F14 DD 66 FE      [19]  650 	ld	h,-2 (ix)
   8F17 DD 6E FF      [19]  651 	ld	l,-1 (ix)
   8F1A E5            [11]  652 	push	hl
   8F1B 21 00 C0      [10]  653 	ld	hl,#0xC000
   8F1E E5            [11]  654 	push	hl
   8F1F CD 29 94      [17]  655 	call	_cpct_getScreenPtr
   8F22 D1            [10]  656 	pop	de
   8F23 C1            [10]  657 	pop	bc
                            658 ;src/video/draw.c:147: cpct_drawSprite(G_bluestar, pvideo, COLOR_STAR_W, COLOR_STAR_H);
   8F24 E5            [11]  659 	push	hl
   8F25 FD E1         [14]  660 	pop	iy
   8F27 C5            [11]  661 	push	bc
   8F28 D5            [11]  662 	push	de
   8F29 21 02 07      [10]  663 	ld	hl,#0x0702
   8F2C E5            [11]  664 	push	hl
   8F2D FD E5         [15]  665 	push	iy
   8F2F 21 EE 6A      [10]  666 	ld	hl,#_G_bluestar
   8F32 E5            [11]  667 	push	hl
   8F33 CD A3 90      [17]  668 	call	_cpct_drawSprite
   8F36 D1            [10]  669 	pop	de
   8F37 C1            [10]  670 	pop	bc
                            671 ;src/video/draw.c:149: stars[x].xPos--;
   8F38 0A            [ 7]  672 	ld	a,(bc)
   8F39 C6 FF         [ 7]  673 	add	a,#0xFF
   8F3B DD 77 FE      [19]  674 	ld	-2 (ix), a
   8F3E 02            [ 7]  675 	ld	(bc),a
                            676 ;src/video/draw.c:151: if (stars[x].xPos < MIN_X) {
   8F3F DD 7E FE      [19]  677 	ld	a,-2 (ix)
   8F42 D6 09         [ 7]  678 	sub	a, #0x09
   8F44 30 17         [12]  679 	jr	NC,00115$
                            680 ;src/video/draw.c:153: stars[x].xPos = MAX_X - COLOR_STAR_W;
   8F46 3E 4A         [ 7]  681 	ld	a,#0x4A
   8F48 02            [ 7]  682 	ld	(bc),a
                            683 ;src/video/draw.c:154: stars[x].yPos = MIN_Y + cpct_rand() % (MAX_Y - COLOR_STAR_H - MIN_Y);
   8F49 D5            [11]  684 	push	de
   8F4A CD CB 91      [17]  685 	call	_cpct_getRandom_mxor_u8
   8F4D 45            [ 4]  686 	ld	b,l
   8F4E 3E EA         [ 7]  687 	ld	a,#0xEA
   8F50 F5            [11]  688 	push	af
   8F51 33            [ 6]  689 	inc	sp
   8F52 C5            [11]  690 	push	bc
   8F53 33            [ 6]  691 	inc	sp
   8F54 CD 48 91      [17]  692 	call	__moduchar
   8F57 F1            [10]  693 	pop	af
   8F58 D1            [10]  694 	pop	de
   8F59 7D            [ 4]  695 	ld	a,l
   8F5A C6 05         [ 7]  696 	add	a, #0x05
   8F5C 12            [ 7]  697 	ld	(de),a
   8F5D                     698 00115$:
                            699 ;src/video/draw.c:122: for (x = 0; x < MAX_STARS + MAX_COLOR_STARS; x++) {
   8F5D DD 34 FD      [23]  700 	inc	-3 (ix)
   8F60 DD 7E FD      [19]  701 	ld	a,-3 (ix)
   8F63 D6 0B         [ 7]  702 	sub	a, #0x0B
   8F65 DA B4 8E      [10]  703 	jp	C,00114$
                            704 ;src/video/draw.c:163: if (starsCycles++ == 2) starsCycles = 1;
   8F68 21 99 A0      [10]  705 	ld	hl,#_drawStars_starsCycles_1_120 + 0
   8F6B 4E            [ 7]  706 	ld	c, (hl)
   8F6C 21 99 A0      [10]  707 	ld	hl, #_drawStars_starsCycles_1_120+0
   8F6F 34            [11]  708 	inc	(hl)
   8F70 79            [ 4]  709 	ld	a,c
   8F71 D6 02         [ 7]  710 	sub	a, #0x02
   8F73 20 05         [12]  711 	jr	NZ,00116$
   8F75 21 99 A0      [10]  712 	ld	hl,#_drawStars_starsCycles_1_120 + 0
   8F78 36 01         [10]  713 	ld	(hl), #0x01
   8F7A                     714 00116$:
   8F7A DD F9         [10]  715 	ld	sp, ix
   8F7C DD E1         [14]  716 	pop	ix
   8F7E C9            [10]  717 	ret
                            718 	.area _CODE
                            719 	.area _INITIALIZER
                            720 	.area _CABS (ABS)
