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
   9211                      32 _drawStars_starsCycles_1_120:
   9211                      33 	.ds 1
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
   9221 FD 21 11 92   [14]   50 	ld	iy,#_drawStars_starsCycles_1_120
   9225 FD 36 00 01   [19]   51 	ld	0 (iy),#0x01
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
   7CE8                      65 _drawMenu::
                             66 ;src/video/draw.c:25: cpct_memset(CPCT_VMEM_START, cpct_px2byteM0(5, 5), 0x4000);
   7CE8 21 05 05      [10]   67 	ld	hl,#0x0505
   7CEB E5            [11]   68 	push	hl
   7CEC CD 6E 84      [17]   69 	call	_cpct_px2byteM0
   7CEF 45            [ 4]   70 	ld	b,l
   7CF0 21 00 40      [10]   71 	ld	hl,#0x4000
   7CF3 E5            [11]   72 	push	hl
   7CF4 C5            [11]   73 	push	bc
   7CF5 33            [ 6]   74 	inc	sp
   7CF6 26 C0         [ 7]   75 	ld	h, #0xC0
   7CF8 E5            [11]   76 	push	hl
   7CF9 CD 8A 84      [17]   77 	call	_cpct_memset
                             78 ;src/video/draw.c:27: drawFrame(15, 38, 63, 134);
   7CFC 21 3F 86      [10]   79 	ld	hl,#0x863F
   7CFF E5            [11]   80 	push	hl
   7D00 21 0F 26      [10]   81 	ld	hl,#0x260F
   7D03 E5            [11]   82 	push	hl
   7D04 CD 28 7E      [17]   83 	call	_drawFrame
   7D07 F1            [10]   84 	pop	af
                             85 ;src/video/draw.c:29: drawText("AMSTHREES", 31, 2,1);
   7D08 21 02 01      [10]   86 	ld	hl, #0x0102
   7D0B E3            [19]   87 	ex	(sp),hl
   7D0C 3E 1F         [ 7]   88 	ld	a,#0x1F
   7D0E F5            [11]   89 	push	af
   7D0F 33            [ 6]   90 	inc	sp
   7D10 21 C5 7D      [10]   91 	ld	hl,#___str_0
   7D13 E5            [11]   92 	push	hl
   7D14 CD F3 76      [17]   93 	call	_drawText
   7D17 F1            [10]   94 	pop	af
                             95 ;src/video/draw.c:31: drawText("TECLADO", 30, 50,0);
   7D18 33            [ 6]   96 	inc	sp
   7D19 21 32 00      [10]   97 	ld	hl,#0x0032
   7D1C E3            [19]   98 	ex	(sp),hl
   7D1D 3E 1E         [ 7]   99 	ld	a,#0x1E
   7D1F F5            [11]  100 	push	af
   7D20 33            [ 6]  101 	inc	sp
   7D21 21 CF 7D      [10]  102 	ld	hl,#___str_1
   7D24 E5            [11]  103 	push	hl
   7D25 CD F3 76      [17]  104 	call	_drawText
   7D28 F1            [10]  105 	pop	af
                            106 ;src/video/draw.c:32: drawText("JOYSTICK", 30, 70,0);
   7D29 33            [ 6]  107 	inc	sp
   7D2A 21 46 00      [10]  108 	ld	hl,#0x0046
   7D2D E3            [19]  109 	ex	(sp),hl
   7D2E 3E 1E         [ 7]  110 	ld	a,#0x1E
   7D30 F5            [11]  111 	push	af
   7D31 33            [ 6]  112 	inc	sp
   7D32 21 D7 7D      [10]  113 	ld	hl,#___str_2
   7D35 E5            [11]  114 	push	hl
   7D36 CD F3 76      [17]  115 	call	_drawText
   7D39 F1            [10]  116 	pop	af
                            117 ;src/video/draw.c:33: drawText("MUSICA", 30, 90,0);
   7D3A 33            [ 6]  118 	inc	sp
   7D3B 21 5A 00      [10]  119 	ld	hl,#0x005A
   7D3E E3            [19]  120 	ex	(sp),hl
   7D3F 3E 1E         [ 7]  121 	ld	a,#0x1E
   7D41 F5            [11]  122 	push	af
   7D42 33            [ 6]  123 	inc	sp
   7D43 21 E0 7D      [10]  124 	ld	hl,#___str_3
   7D46 E5            [11]  125 	push	hl
   7D47 CD F3 76      [17]  126 	call	_drawText
   7D4A F1            [10]  127 	pop	af
                            128 ;src/video/draw.c:34: drawText("JUGAR", 30, 110,0);
   7D4B 33            [ 6]  129 	inc	sp
   7D4C 21 6E 00      [10]  130 	ld	hl,#0x006E
   7D4F E3            [19]  131 	ex	(sp),hl
   7D50 3E 1E         [ 7]  132 	ld	a,#0x1E
   7D52 F5            [11]  133 	push	af
   7D53 33            [ 6]  134 	inc	sp
   7D54 21 E7 7D      [10]  135 	ld	hl,#___str_4
   7D57 E5            [11]  136 	push	hl
   7D58 CD F3 76      [17]  137 	call	_drawText
   7D5B F1            [10]  138 	pop	af
                            139 ;src/video/draw.c:36: drawNumber(1, 1, 23, 50);
   7D5C 33            [ 6]  140 	inc	sp
   7D5D 21 17 32      [10]  141 	ld	hl,#0x3217
   7D60 E3            [19]  142 	ex	(sp),hl
   7D61 3E 01         [ 7]  143 	ld	a,#0x01
   7D63 F5            [11]  144 	push	af
   7D64 33            [ 6]  145 	inc	sp
   7D65 21 01 00      [10]  146 	ld	hl,#0x0001
   7D68 E5            [11]  147 	push	hl
   7D69 CD 56 76      [17]  148 	call	_drawNumber
   7D6C F1            [10]  149 	pop	af
                            150 ;src/video/draw.c:37: drawNumber(2, 1, 23, 70);
   7D6D 33            [ 6]  151 	inc	sp
   7D6E 21 17 46      [10]  152 	ld	hl,#0x4617
   7D71 E3            [19]  153 	ex	(sp),hl
   7D72 3E 01         [ 7]  154 	ld	a,#0x01
   7D74 F5            [11]  155 	push	af
   7D75 33            [ 6]  156 	inc	sp
   7D76 21 02 00      [10]  157 	ld	hl,#0x0002
   7D79 E5            [11]  158 	push	hl
   7D7A CD 56 76      [17]  159 	call	_drawNumber
   7D7D F1            [10]  160 	pop	af
                            161 ;src/video/draw.c:38: drawNumber(3, 1, 23, 90);
   7D7E 33            [ 6]  162 	inc	sp
   7D7F 21 17 5A      [10]  163 	ld	hl,#0x5A17
   7D82 E3            [19]  164 	ex	(sp),hl
   7D83 3E 01         [ 7]  165 	ld	a,#0x01
   7D85 F5            [11]  166 	push	af
   7D86 33            [ 6]  167 	inc	sp
   7D87 21 03 00      [10]  168 	ld	hl,#0x0003
   7D8A E5            [11]  169 	push	hl
   7D8B CD 56 76      [17]  170 	call	_drawNumber
   7D8E F1            [10]  171 	pop	af
                            172 ;src/video/draw.c:39: drawNumber(4, 1, 23, 110);
   7D8F 33            [ 6]  173 	inc	sp
   7D90 21 17 6E      [10]  174 	ld	hl,#0x6E17
   7D93 E3            [19]  175 	ex	(sp),hl
   7D94 3E 01         [ 7]  176 	ld	a,#0x01
   7D96 F5            [11]  177 	push	af
   7D97 33            [ 6]  178 	inc	sp
   7D98 21 04 00      [10]  179 	ld	hl,#0x0004
   7D9B E5            [11]  180 	push	hl
   7D9C CD 56 76      [17]  181 	call	_drawNumber
   7D9F F1            [10]  182 	pop	af
                            183 ;src/video/draw.c:42: drawText("JOHN LOBO", 25, 170,1);
   7DA0 33            [ 6]  184 	inc	sp
   7DA1 21 AA 01      [10]  185 	ld	hl,#0x01AA
   7DA4 E3            [19]  186 	ex	(sp),hl
   7DA5 3E 19         [ 7]  187 	ld	a,#0x19
   7DA7 F5            [11]  188 	push	af
   7DA8 33            [ 6]  189 	inc	sp
   7DA9 21 ED 7D      [10]  190 	ld	hl,#___str_5
   7DAC E5            [11]  191 	push	hl
   7DAD CD F3 76      [17]  192 	call	_drawText
   7DB0 F1            [10]  193 	pop	af
                            194 ;src/video/draw.c:43: drawText("@ GLASNOST CORP 2016", 11, 185,1);
   7DB1 33            [ 6]  195 	inc	sp
   7DB2 21 B9 01      [10]  196 	ld	hl,#0x01B9
   7DB5 E3            [19]  197 	ex	(sp),hl
   7DB6 3E 0B         [ 7]  198 	ld	a,#0x0B
   7DB8 F5            [11]  199 	push	af
   7DB9 33            [ 6]  200 	inc	sp
   7DBA 21 F7 7D      [10]  201 	ld	hl,#___str_6
   7DBD E5            [11]  202 	push	hl
   7DBE CD F3 76      [17]  203 	call	_drawText
   7DC1 F1            [10]  204 	pop	af
   7DC2 F1            [10]  205 	pop	af
   7DC3 33            [ 6]  206 	inc	sp
   7DC4 C9            [10]  207 	ret
   7DC5                     208 ___str_0:
   7DC5 41 4D 53 54 48 52   209 	.ascii "AMSTHREES"
        45 45 53
   7DCE 00                  210 	.db 0x00
   7DCF                     211 ___str_1:
   7DCF 54 45 43 4C 41 44   212 	.ascii "TECLADO"
        4F
   7DD6 00                  213 	.db 0x00
   7DD7                     214 ___str_2:
   7DD7 4A 4F 59 53 54 49   215 	.ascii "JOYSTICK"
        43 4B
   7DDF 00                  216 	.db 0x00
   7DE0                     217 ___str_3:
   7DE0 4D 55 53 49 43 41   218 	.ascii "MUSICA"
   7DE6 00                  219 	.db 0x00
   7DE7                     220 ___str_4:
   7DE7 4A 55 47 41 52      221 	.ascii "JUGAR"
   7DEC 00                  222 	.db 0x00
   7DED                     223 ___str_5:
   7DED 4A 4F 48 4E 20 4C   224 	.ascii "JOHN LOBO"
        4F 42 4F
   7DF6 00                  225 	.db 0x00
   7DF7                     226 ___str_6:
   7DF7 40 20 47 4C 41 53   227 	.ascii "@ GLASNOST CORP 2016"
        4E 4F 53 54 20 43
        4F 52 50 20 32 30
        31 36
   7E0B 00                  228 	.db 0x00
                            229 ;src/video/draw.c:47: void clearGameScreen() {
                            230 ;	---------------------------------
                            231 ; Function clearGameScreen
                            232 ; ---------------------------------
   7E0C                     233 _clearGameScreen::
                            234 ;src/video/draw.c:49: u8* pvideo = cpct_getScreenPtr(CPCT_VMEM_START, MIN_X, MIN_Y);
   7E0C 21 09 05      [10]  235 	ld	hl,#0x0509
   7E0F E5            [11]  236 	push	hl
   7E10 21 00 C0      [10]  237 	ld	hl,#0xC000
   7E13 E5            [11]  238 	push	hl
   7E14 CD A1 85      [17]  239 	call	_cpct_getScreenPtr
   7E17 4D            [ 4]  240 	ld	c,l
   7E18 44            [ 4]  241 	ld	b,h
                            242 ;src/video/draw.c:51: cpct_drawSolidBox(pvideo, 0, MAX_X - MIN_X + 1, MAX_Y - MIN_Y);
   7E19 21 44 F1      [10]  243 	ld	hl,#0xF144
   7E1C E5            [11]  244 	push	hl
   7E1D AF            [ 4]  245 	xor	a, a
   7E1E F5            [11]  246 	push	af
   7E1F 33            [ 6]  247 	inc	sp
   7E20 C5            [11]  248 	push	bc
   7E21 CD B7 84      [17]  249 	call	_cpct_drawSolidBox
   7E24 F1            [10]  250 	pop	af
   7E25 F1            [10]  251 	pop	af
   7E26 33            [ 6]  252 	inc	sp
   7E27 C9            [10]  253 	ret
                            254 ;src/video/draw.c:56: void drawFrame(u8 x1, u8 y1, u8 x2, u8 y2) {
                            255 ;	---------------------------------
                            256 ; Function drawFrame
                            257 ; ---------------------------------
   7E28                     258 _drawFrame::
   7E28 DD E5         [15]  259 	push	ix
   7E2A DD 21 00 00   [14]  260 	ld	ix,#0
   7E2E DD 39         [15]  261 	add	ix,sp
   7E30 21 F7 FF      [10]  262 	ld	hl,#-9
   7E33 39            [11]  263 	add	hl,sp
   7E34 F9            [ 6]  264 	ld	sp,hl
                            265 ;src/video/draw.c:61: frame_w = x2 - x1;
   7E35 DD 7E 06      [19]  266 	ld	a,6 (ix)
   7E38 DD 96 04      [19]  267 	sub	a, 4 (ix)
   7E3B 47            [ 4]  268 	ld	b,a
   7E3C DD 70 FF      [19]  269 	ld	-1 (ix),b
                            270 ;src/video/draw.c:64: clearWindow(x1, y1, x2 - x1, y2 - y1);
   7E3F DD 7E 07      [19]  271 	ld	a,7 (ix)
   7E42 DD 96 05      [19]  272 	sub	a, 5 (ix)
   7E45 57            [ 4]  273 	ld	d,a
   7E46 D5            [11]  274 	push	de
   7E47 33            [ 6]  275 	inc	sp
   7E48 C5            [11]  276 	push	bc
   7E49 33            [ 6]  277 	inc	sp
   7E4A DD 66 05      [19]  278 	ld	h,5 (ix)
   7E4D DD 6E 04      [19]  279 	ld	l,4 (ix)
   7E50 E5            [11]  280 	push	hl
   7E51 CD 4B 81      [17]  281 	call	_clearWindow
   7E54 F1            [10]  282 	pop	af
   7E55 F1            [10]  283 	pop	af
                            284 ;src/video/draw.c:67: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, x1, y1);
   7E56 DD 66 05      [19]  285 	ld	h,5 (ix)
   7E59 DD 6E 04      [19]  286 	ld	l,4 (ix)
   7E5C E5            [11]  287 	push	hl
   7E5D 21 00 C0      [10]  288 	ld	hl,#0xC000
   7E60 E5            [11]  289 	push	hl
   7E61 CD A1 85      [17]  290 	call	_cpct_getScreenPtr
   7E64 4D            [ 4]  291 	ld	c,l
   7E65 44            [ 4]  292 	ld	b,h
                            293 ;src/video/draw.c:68: cpct_drawSprite(g_tile_border_0,  pvideo, 2, 4);
   7E66 59            [ 4]  294 	ld	e, c
   7E67 50            [ 4]  295 	ld	d, b
   7E68 C5            [11]  296 	push	bc
   7E69 21 02 04      [10]  297 	ld	hl,#0x0402
   7E6C E5            [11]  298 	push	hl
   7E6D D5            [11]  299 	push	de
   7E6E 21 DD 52      [10]  300 	ld	hl,#_g_tile_border_0
   7E71 E5            [11]  301 	push	hl
   7E72 CD 1B 82      [17]  302 	call	_cpct_drawSprite
   7E75 C1            [10]  303 	pop	bc
                            304 ;src/video/draw.c:72: for (x = x1 + 2; x < (x2 - 2); x = x + 2) {
   7E76 DD 7E 04      [19]  305 	ld	a,4 (ix)
   7E79 C6 02         [ 7]  306 	add	a, #0x02
   7E7B DD 77 FE      [19]  307 	ld	-2 (ix), a
   7E7E DD 77 FD      [19]  308 	ld	-3 (ix),a
   7E81 11 FD 52      [10]  309 	ld	de,#_g_tile_border_4+0
   7E84                     310 00105$:
   7E84 DD 7E 06      [19]  311 	ld	a, 6 (ix)
   7E87 26 00         [ 7]  312 	ld	h, #0x00
   7E89 C6 FE         [ 7]  313 	add	a,#0xFE
   7E8B DD 77 F9      [19]  314 	ld	-7 (ix),a
   7E8E 7C            [ 4]  315 	ld	a,h
   7E8F CE FF         [ 7]  316 	adc	a,#0xFF
   7E91 DD 77 FA      [19]  317 	ld	-6 (ix),a
   7E94 DD 6E FD      [19]  318 	ld	l,-3 (ix)
   7E97 26 00         [ 7]  319 	ld	h,#0x00
                            320 ;src/video/draw.c:74: cpct_drawSprite(g_tile_border_4,  pvideo + (x - x1), 2, 4);
   7E99 DD 7E 04      [19]  321 	ld	a,4 (ix)
   7E9C DD 77 FB      [19]  322 	ld	-5 (ix),a
   7E9F DD 36 FC 00   [19]  323 	ld	-4 (ix),#0x00
                            324 ;src/video/draw.c:72: for (x = x1 + 2; x < (x2 - 2); x = x + 2) {
   7EA3 7D            [ 4]  325 	ld	a,l
   7EA4 DD 96 F9      [19]  326 	sub	a, -7 (ix)
   7EA7 7C            [ 4]  327 	ld	a,h
   7EA8 DD 9E FA      [19]  328 	sbc	a, -6 (ix)
   7EAB E2 B0 7E      [10]  329 	jp	PO, 00142$
   7EAE EE 80         [ 7]  330 	xor	a, #0x80
   7EB0                     331 00142$:
   7EB0 F2 DA 7E      [10]  332 	jp	P,00101$
                            333 ;src/video/draw.c:74: cpct_drawSprite(g_tile_border_4,  pvideo + (x - x1), 2, 4);
   7EB3 7D            [ 4]  334 	ld	a,l
   7EB4 DD 96 FB      [19]  335 	sub	a, -5 (ix)
   7EB7 6F            [ 4]  336 	ld	l,a
   7EB8 7C            [ 4]  337 	ld	a,h
   7EB9 DD 9E FC      [19]  338 	sbc	a, -4 (ix)
   7EBC 67            [ 4]  339 	ld	h,a
   7EBD 09            [11]  340 	add	hl,bc
   7EBE E5            [11]  341 	push	hl
   7EBF FD E1         [14]  342 	pop	iy
   7EC1 C5            [11]  343 	push	bc
   7EC2 D5            [11]  344 	push	de
   7EC3 21 02 04      [10]  345 	ld	hl,#0x0402
   7EC6 E5            [11]  346 	push	hl
   7EC7 FD E5         [15]  347 	push	iy
   7EC9 21 FD 52      [10]  348 	ld	hl,#_g_tile_border_4
   7ECC E5            [11]  349 	push	hl
   7ECD CD 1B 82      [17]  350 	call	_cpct_drawSprite
   7ED0 D1            [10]  351 	pop	de
   7ED1 C1            [10]  352 	pop	bc
                            353 ;src/video/draw.c:72: for (x = x1 + 2; x < (x2 - 2); x = x + 2) {
   7ED2 DD 34 FD      [23]  354 	inc	-3 (ix)
   7ED5 DD 34 FD      [23]  355 	inc	-3 (ix)
   7ED8 18 AA         [12]  356 	jr	00105$
   7EDA                     357 00101$:
                            358 ;src/video/draw.c:78: cpct_drawSprite(g_tile_border_1,  pvideo + (frame_w - 2), 2,4);
   7EDA DD 5E FF      [19]  359 	ld	e,-1 (ix)
   7EDD 16 00         [ 7]  360 	ld	d,#0x00
   7EDF 1B            [ 6]  361 	dec	de
   7EE0 1B            [ 6]  362 	dec	de
   7EE1 6B            [ 4]  363 	ld	l, e
   7EE2 62            [ 4]  364 	ld	h, d
   7EE3 09            [11]  365 	add	hl,bc
   7EE4 4D            [ 4]  366 	ld	c, l
   7EE5 44            [ 4]  367 	ld	b, h
   7EE6 D5            [11]  368 	push	de
   7EE7 21 02 04      [10]  369 	ld	hl,#0x0402
   7EEA E5            [11]  370 	push	hl
   7EEB C5            [11]  371 	push	bc
   7EEC 21 E5 52      [10]  372 	ld	hl,#_g_tile_border_1
   7EEF E5            [11]  373 	push	hl
   7EF0 CD 1B 82      [17]  374 	call	_cpct_drawSprite
   7EF3 D1            [10]  375 	pop	de
                            376 ;src/video/draw.c:82: for (x = y1 + 4; x < (y2 - 4); x = x + 4) {
   7EF4 DD 7E 05      [19]  377 	ld	a,5 (ix)
   7EF7 C6 04         [ 7]  378 	add	a, #0x04
   7EF9 DD 77 FD      [19]  379 	ld	-3 (ix),a
   7EFC                     380 00108$:
   7EFC DD 4E 07      [19]  381 	ld	c,7 (ix)
   7EFF 06 00         [ 7]  382 	ld	b,#0x00
   7F01 79            [ 4]  383 	ld	a,c
   7F02 C6 FC         [ 7]  384 	add	a,#0xFC
   7F04 4F            [ 4]  385 	ld	c,a
   7F05 78            [ 4]  386 	ld	a,b
   7F06 CE FF         [ 7]  387 	adc	a,#0xFF
   7F08 47            [ 4]  388 	ld	b,a
   7F09 DD 7E FD      [19]  389 	ld	a, -3 (ix)
   7F0C 26 00         [ 7]  390 	ld	h, #0x00
   7F0E 91            [ 4]  391 	sub	a, c
   7F0F 7C            [ 4]  392 	ld	a,h
   7F10 98            [ 4]  393 	sbc	a, b
   7F11 E2 16 7F      [10]  394 	jp	PO, 00143$
   7F14 EE 80         [ 7]  395 	xor	a, #0x80
   7F16                     396 00143$:
   7F16 F2 5E 7F      [10]  397 	jp	P,00102$
                            398 ;src/video/draw.c:84: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, x1, x);
   7F19 D5            [11]  399 	push	de
   7F1A DD 66 FD      [19]  400 	ld	h,-3 (ix)
   7F1D DD 6E 04      [19]  401 	ld	l,4 (ix)
   7F20 E5            [11]  402 	push	hl
   7F21 21 00 C0      [10]  403 	ld	hl,#0xC000
   7F24 E5            [11]  404 	push	hl
   7F25 CD A1 85      [17]  405 	call	_cpct_getScreenPtr
   7F28 4D            [ 4]  406 	ld	c,l
   7F29 44            [ 4]  407 	ld	b,h
   7F2A D1            [10]  408 	pop	de
                            409 ;src/video/draw.c:85: cpct_drawSprite(g_tile_border_5,  pvideo, 2, 4);
   7F2B C5            [11]  410 	push	bc
   7F2C FD E1         [14]  411 	pop	iy
   7F2E C5            [11]  412 	push	bc
   7F2F D5            [11]  413 	push	de
   7F30 21 02 04      [10]  414 	ld	hl,#0x0402
   7F33 E5            [11]  415 	push	hl
   7F34 FD E5         [15]  416 	push	iy
   7F36 21 05 53      [10]  417 	ld	hl,#_g_tile_border_5
   7F39 E5            [11]  418 	push	hl
   7F3A CD 1B 82      [17]  419 	call	_cpct_drawSprite
   7F3D D1            [10]  420 	pop	de
                            421 ;src/video/draw.c:86: cpct_drawSprite(g_tile_border_6,  pvideo + (frame_w - 2), 2, 4);
   7F3E E1            [10]  422 	pop	hl
   7F3F 19            [11]  423 	add	hl,de
   7F40 4D            [ 4]  424 	ld	c, l
   7F41 44            [ 4]  425 	ld	b, h
   7F42 D5            [11]  426 	push	de
   7F43 21 02 04      [10]  427 	ld	hl,#0x0402
   7F46 E5            [11]  428 	push	hl
   7F47 C5            [11]  429 	push	bc
   7F48 21 0D 53      [10]  430 	ld	hl,#_g_tile_border_6
   7F4B E5            [11]  431 	push	hl
   7F4C CD 1B 82      [17]  432 	call	_cpct_drawSprite
   7F4F D1            [10]  433 	pop	de
                            434 ;src/video/draw.c:82: for (x = y1 + 4; x < (y2 - 4); x = x + 4) {
   7F50 DD 34 FD      [23]  435 	inc	-3 (ix)
   7F53 DD 34 FD      [23]  436 	inc	-3 (ix)
   7F56 DD 34 FD      [23]  437 	inc	-3 (ix)
   7F59 DD 34 FD      [23]  438 	inc	-3 (ix)
   7F5C 18 9E         [12]  439 	jr	00108$
   7F5E                     440 00102$:
                            441 ;src/video/draw.c:90: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, x1, y2 - 4);
   7F5E DD 7E 07      [19]  442 	ld	a,7 (ix)
   7F61 C6 FC         [ 7]  443 	add	a,#0xFC
   7F63 47            [ 4]  444 	ld	b,a
   7F64 D5            [11]  445 	push	de
   7F65 C5            [11]  446 	push	bc
   7F66 33            [ 6]  447 	inc	sp
   7F67 DD 7E 04      [19]  448 	ld	a,4 (ix)
   7F6A F5            [11]  449 	push	af
   7F6B 33            [ 6]  450 	inc	sp
   7F6C 21 00 C0      [10]  451 	ld	hl,#0xC000
   7F6F E5            [11]  452 	push	hl
   7F70 CD A1 85      [17]  453 	call	_cpct_getScreenPtr
   7F73 4D            [ 4]  454 	ld	c,l
   7F74 44            [ 4]  455 	ld	b,h
   7F75 D1            [10]  456 	pop	de
                            457 ;src/video/draw.c:93: cpct_drawSprite(g_tile_border_2,  pvideo, 2, 4);
   7F76 33            [ 6]  458 	inc	sp
   7F77 33            [ 6]  459 	inc	sp
   7F78 C5            [11]  460 	push	bc
   7F79 C5            [11]  461 	push	bc
   7F7A D5            [11]  462 	push	de
   7F7B 21 02 04      [10]  463 	ld	hl,#0x0402
   7F7E E5            [11]  464 	push	hl
   7F7F DD 6E F7      [19]  465 	ld	l,-9 (ix)
   7F82 DD 66 F8      [19]  466 	ld	h,-8 (ix)
   7F85 E5            [11]  467 	push	hl
   7F86 21 ED 52      [10]  468 	ld	hl,#_g_tile_border_2
   7F89 E5            [11]  469 	push	hl
   7F8A CD 1B 82      [17]  470 	call	_cpct_drawSprite
   7F8D D1            [10]  471 	pop	de
   7F8E C1            [10]  472 	pop	bc
                            473 ;src/video/draw.c:97: for (x = x1 + 2; x < (x2 - 2); x = x + 2) {
   7F8F DD 7E FE      [19]  474 	ld	a,-2 (ix)
   7F92 DD 77 F7      [19]  475 	ld	-9 (ix),a
   7F95                     476 00111$:
   7F95 DD 6E F7      [19]  477 	ld	l,-9 (ix)
   7F98 26 00         [ 7]  478 	ld	h,#0x00
   7F9A 7D            [ 4]  479 	ld	a,l
   7F9B DD 96 F9      [19]  480 	sub	a, -7 (ix)
   7F9E 7C            [ 4]  481 	ld	a,h
   7F9F DD 9E FA      [19]  482 	sbc	a, -6 (ix)
   7FA2 E2 A7 7F      [10]  483 	jp	PO, 00144$
   7FA5 EE 80         [ 7]  484 	xor	a, #0x80
   7FA7                     485 00144$:
   7FA7 F2 D1 7F      [10]  486 	jp	P,00103$
                            487 ;src/video/draw.c:99: cpct_drawSprite(g_tile_border_7,  pvideo + (x - x1), 2, 4);
   7FAA 7D            [ 4]  488 	ld	a,l
   7FAB DD 96 FB      [19]  489 	sub	a, -5 (ix)
   7FAE 6F            [ 4]  490 	ld	l,a
   7FAF 7C            [ 4]  491 	ld	a,h
   7FB0 DD 9E FC      [19]  492 	sbc	a, -4 (ix)
   7FB3 67            [ 4]  493 	ld	h,a
   7FB4 09            [11]  494 	add	hl,bc
   7FB5 E5            [11]  495 	push	hl
   7FB6 FD E1         [14]  496 	pop	iy
   7FB8 C5            [11]  497 	push	bc
   7FB9 D5            [11]  498 	push	de
   7FBA 21 02 04      [10]  499 	ld	hl,#0x0402
   7FBD E5            [11]  500 	push	hl
   7FBE FD E5         [15]  501 	push	iy
   7FC0 21 15 53      [10]  502 	ld	hl,#_g_tile_border_7
   7FC3 E5            [11]  503 	push	hl
   7FC4 CD 1B 82      [17]  504 	call	_cpct_drawSprite
   7FC7 D1            [10]  505 	pop	de
   7FC8 C1            [10]  506 	pop	bc
                            507 ;src/video/draw.c:97: for (x = x1 + 2; x < (x2 - 2); x = x + 2) {
   7FC9 DD 34 F7      [23]  508 	inc	-9 (ix)
   7FCC DD 34 F7      [23]  509 	inc	-9 (ix)
   7FCF 18 C4         [12]  510 	jr	00111$
   7FD1                     511 00103$:
                            512 ;src/video/draw.c:103: cpct_drawSprite(g_tile_border_3,  pvideo + (frame_w - 2), 2, 4);
   7FD1 69            [ 4]  513 	ld	l, c
   7FD2 60            [ 4]  514 	ld	h, b
   7FD3 19            [11]  515 	add	hl,de
   7FD4 4D            [ 4]  516 	ld	c, l
   7FD5 44            [ 4]  517 	ld	b, h
   7FD6 21 02 04      [10]  518 	ld	hl,#0x0402
   7FD9 E5            [11]  519 	push	hl
   7FDA C5            [11]  520 	push	bc
   7FDB 21 F5 52      [10]  521 	ld	hl,#_g_tile_border_3
   7FDE E5            [11]  522 	push	hl
   7FDF CD 1B 82      [17]  523 	call	_cpct_drawSprite
   7FE2 DD F9         [10]  524 	ld	sp, ix
   7FE4 DD E1         [14]  525 	pop	ix
   7FE6 C9            [10]  526 	ret
                            527 ;src/video/draw.c:107: void drawStar(u8 color1, u8 color2, u8 xPos, u8 yPos) {
                            528 ;	---------------------------------
                            529 ; Function drawStar
                            530 ; ---------------------------------
   7FE7                     531 _drawStar::
                            532 ;src/video/draw.c:109: u8* pvideo = cpct_getScreenPtr(CPCT_VMEM_START, xPos, yPos);
   7FE7 21 05 00      [10]  533 	ld	hl, #5+0
   7FEA 39            [11]  534 	add	hl, sp
   7FEB 7E            [ 7]  535 	ld	a, (hl)
   7FEC F5            [11]  536 	push	af
   7FED 33            [ 6]  537 	inc	sp
   7FEE 21 05 00      [10]  538 	ld	hl, #5+0
   7FF1 39            [11]  539 	add	hl, sp
   7FF2 7E            [ 7]  540 	ld	a, (hl)
   7FF3 F5            [11]  541 	push	af
   7FF4 33            [ 6]  542 	inc	sp
   7FF5 21 00 C0      [10]  543 	ld	hl,#0xC000
   7FF8 E5            [11]  544 	push	hl
   7FF9 CD A1 85      [17]  545 	call	_cpct_getScreenPtr
                            546 ;src/video/draw.c:110: cpct_drawSolidBox(pvideo, cpct_px2byteM0(color1, color2), 1, 1);
   7FFC E5            [11]  547 	push	hl
   7FFD 21 05 00      [10]  548 	ld	hl, #5+0
   8000 39            [11]  549 	add	hl, sp
   8001 7E            [ 7]  550 	ld	a, (hl)
   8002 F5            [11]  551 	push	af
   8003 33            [ 6]  552 	inc	sp
   8004 21 05 00      [10]  553 	ld	hl, #5+0
   8007 39            [11]  554 	add	hl, sp
   8008 7E            [ 7]  555 	ld	a, (hl)
   8009 F5            [11]  556 	push	af
   800A 33            [ 6]  557 	inc	sp
   800B CD 6E 84      [17]  558 	call	_cpct_px2byteM0
   800E 55            [ 4]  559 	ld	d,l
   800F C1            [10]  560 	pop	bc
   8010 21 01 01      [10]  561 	ld	hl,#0x0101
   8013 E5            [11]  562 	push	hl
   8014 D5            [11]  563 	push	de
   8015 33            [ 6]  564 	inc	sp
   8016 C5            [11]  565 	push	bc
   8017 CD B7 84      [17]  566 	call	_cpct_drawSolidBox
   801A F1            [10]  567 	pop	af
   801B F1            [10]  568 	pop	af
   801C 33            [ 6]  569 	inc	sp
   801D C9            [10]  570 	ret
                            571 ;src/video/draw.c:115: void drawStars(Coords *stars) {
                            572 ;	---------------------------------
                            573 ; Function drawStars
                            574 ; ---------------------------------
   801E                     575 _drawStars::
   801E DD E5         [15]  576 	push	ix
   8020 DD 21 00 00   [14]  577 	ld	ix,#0
   8024 DD 39         [15]  578 	add	ix,sp
   8026 F5            [11]  579 	push	af
   8027 3B            [ 6]  580 	dec	sp
                            581 ;src/video/draw.c:122: for (x = 0; x < MAX_STARS + MAX_COLOR_STARS; x++) {
   8028 DD 36 FD 00   [19]  582 	ld	-3 (ix),#0x00
   802C                     583 00114$:
                            584 ;src/video/draw.c:128: drawStar(1, 0, stars[x].xPos, stars[x].yPos);
   802C DD 6E FD      [19]  585 	ld	l,-3 (ix)
   802F 26 00         [ 7]  586 	ld	h,#0x00
   8031 29            [11]  587 	add	hl, hl
   8032 4D            [ 4]  588 	ld	c, l
   8033 44            [ 4]  589 	ld	b, h
   8034 DD 7E 04      [19]  590 	ld	a,4 (ix)
   8037 81            [ 4]  591 	add	a, c
   8038 4F            [ 4]  592 	ld	c,a
   8039 DD 7E 05      [19]  593 	ld	a,5 (ix)
   803C 88            [ 4]  594 	adc	a, b
   803D 47            [ 4]  595 	ld	b,a
   803E 0A            [ 7]  596 	ld	a,(bc)
   803F DD 77 FF      [19]  597 	ld	-1 (ix),a
   8042 59            [ 4]  598 	ld	e, c
   8043 50            [ 4]  599 	ld	d, b
   8044 13            [ 6]  600 	inc	de
   8045 1A            [ 7]  601 	ld	a,(de)
   8046 DD 77 FE      [19]  602 	ld	-2 (ix),a
                            603 ;src/video/draw.c:124: if (x < MAX_STARS) {
   8049 DD 7E FD      [19]  604 	ld	a,-3 (ix)
   804C D6 08         [ 7]  605 	sub	a, #0x08
   804E 30 3A         [12]  606 	jr	NC,00109$
                            607 ;src/video/draw.c:126: if (starsCycles == 2) {
   8050 3A 11 92      [13]  608 	ld	a,(#_drawStars_starsCycles_1_120 + 0)
   8053 D6 02         [ 7]  609 	sub	a, #0x02
   8055 20 21         [12]  610 	jr	NZ,00104$
                            611 ;src/video/draw.c:128: drawStar(1, 0, stars[x].xPos, stars[x].yPos);
   8057 C5            [11]  612 	push	bc
   8058 DD 66 FE      [19]  613 	ld	h,-2 (ix)
   805B DD 6E FF      [19]  614 	ld	l,-1 (ix)
   805E E5            [11]  615 	push	hl
   805F 21 01 00      [10]  616 	ld	hl,#0x0001
   8062 E5            [11]  617 	push	hl
   8063 CD E7 7F      [17]  618 	call	_drawStar
   8066 F1            [10]  619 	pop	af
   8067 F1            [10]  620 	pop	af
   8068 C1            [10]  621 	pop	bc
                            622 ;src/video/draw.c:129: stars[x].xPos--;
   8069 0A            [ 7]  623 	ld	a,(bc)
   806A 5F            [ 4]  624 	ld	e,a
   806B 1D            [ 4]  625 	dec	e
   806C 7B            [ 4]  626 	ld	a,e
   806D 02            [ 7]  627 	ld	(bc),a
                            628 ;src/video/draw.c:131: if (stars[x].xPos < MIN_X) {
   806E 7B            [ 4]  629 	ld	a,e
   806F D6 09         [ 7]  630 	sub	a, #0x09
   8071 30 62         [12]  631 	jr	NC,00115$
                            632 ;src/video/draw.c:133: stars[x].xPos = MAX_X;
   8073 3E 4C         [ 7]  633 	ld	a,#0x4C
   8075 02            [ 7]  634 	ld	(bc),a
   8076 18 5D         [12]  635 	jr	00115$
   8078                     636 00104$:
                            637 ;src/video/draw.c:139: drawStar(0, 1, stars[x].xPos, stars[x].yPos);
   8078 DD 66 FE      [19]  638 	ld	h,-2 (ix)
   807B DD 6E FF      [19]  639 	ld	l,-1 (ix)
   807E E5            [11]  640 	push	hl
   807F 21 00 01      [10]  641 	ld	hl,#0x0100
   8082 E5            [11]  642 	push	hl
   8083 CD E7 7F      [17]  643 	call	_drawStar
   8086 F1            [10]  644 	pop	af
   8087 F1            [10]  645 	pop	af
   8088 18 4B         [12]  646 	jr	00115$
   808A                     647 00109$:
                            648 ;src/video/draw.c:145: pvideo = cpct_getScreenPtr(CPCT_VMEM_START,  stars[x].xPos, stars[x].yPos);
   808A C5            [11]  649 	push	bc
   808B D5            [11]  650 	push	de
   808C DD 66 FE      [19]  651 	ld	h,-2 (ix)
   808F DD 6E FF      [19]  652 	ld	l,-1 (ix)
   8092 E5            [11]  653 	push	hl
   8093 21 00 C0      [10]  654 	ld	hl,#0xC000
   8096 E5            [11]  655 	push	hl
   8097 CD A1 85      [17]  656 	call	_cpct_getScreenPtr
   809A D1            [10]  657 	pop	de
   809B C1            [10]  658 	pop	bc
                            659 ;src/video/draw.c:147: cpct_drawSprite(G_bluestar, pvideo, COLOR_STAR_W, COLOR_STAR_H);
   809C E5            [11]  660 	push	hl
   809D FD E1         [14]  661 	pop	iy
   809F C5            [11]  662 	push	bc
   80A0 D5            [11]  663 	push	de
   80A1 21 02 07      [10]  664 	ld	hl,#0x0702
   80A4 E5            [11]  665 	push	hl
   80A5 FD E5         [15]  666 	push	iy
   80A7 21 F0 5B      [10]  667 	ld	hl,#_G_bluestar
   80AA E5            [11]  668 	push	hl
   80AB CD 1B 82      [17]  669 	call	_cpct_drawSprite
   80AE D1            [10]  670 	pop	de
   80AF C1            [10]  671 	pop	bc
                            672 ;src/video/draw.c:149: stars[x].xPos--;
   80B0 0A            [ 7]  673 	ld	a,(bc)
   80B1 C6 FF         [ 7]  674 	add	a,#0xFF
   80B3 DD 77 FE      [19]  675 	ld	-2 (ix), a
   80B6 02            [ 7]  676 	ld	(bc),a
                            677 ;src/video/draw.c:151: if (stars[x].xPos < MIN_X) {
   80B7 DD 7E FE      [19]  678 	ld	a,-2 (ix)
   80BA D6 09         [ 7]  679 	sub	a, #0x09
   80BC 30 17         [12]  680 	jr	NC,00115$
                            681 ;src/video/draw.c:153: stars[x].xPos = MAX_X - COLOR_STAR_W;
   80BE 3E 4A         [ 7]  682 	ld	a,#0x4A
   80C0 02            [ 7]  683 	ld	(bc),a
                            684 ;src/video/draw.c:154: stars[x].yPos = MIN_Y + cpct_rand() % (MAX_Y - COLOR_STAR_H - MIN_Y);
   80C1 D5            [11]  685 	push	de
   80C2 CD 43 83      [17]  686 	call	_cpct_getRandom_mxor_u8
   80C5 45            [ 4]  687 	ld	b,l
   80C6 3E EA         [ 7]  688 	ld	a,#0xEA
   80C8 F5            [11]  689 	push	af
   80C9 33            [ 6]  690 	inc	sp
   80CA C5            [11]  691 	push	bc
   80CB 33            [ 6]  692 	inc	sp
   80CC CD C0 82      [17]  693 	call	__moduchar
   80CF F1            [10]  694 	pop	af
   80D0 D1            [10]  695 	pop	de
   80D1 7D            [ 4]  696 	ld	a,l
   80D2 C6 05         [ 7]  697 	add	a, #0x05
   80D4 12            [ 7]  698 	ld	(de),a
   80D5                     699 00115$:
                            700 ;src/video/draw.c:122: for (x = 0; x < MAX_STARS + MAX_COLOR_STARS; x++) {
   80D5 DD 34 FD      [23]  701 	inc	-3 (ix)
   80D8 DD 7E FD      [19]  702 	ld	a,-3 (ix)
   80DB D6 0B         [ 7]  703 	sub	a, #0x0B
   80DD DA 2C 80      [10]  704 	jp	C,00114$
                            705 ;src/video/draw.c:163: if (starsCycles++ == 2) starsCycles = 1;
   80E0 21 11 92      [10]  706 	ld	hl,#_drawStars_starsCycles_1_120 + 0
   80E3 4E            [ 7]  707 	ld	c, (hl)
   80E4 21 11 92      [10]  708 	ld	hl, #_drawStars_starsCycles_1_120+0
   80E7 34            [11]  709 	inc	(hl)
   80E8 79            [ 4]  710 	ld	a,c
   80E9 D6 02         [ 7]  711 	sub	a, #0x02
   80EB 20 05         [12]  712 	jr	NZ,00116$
   80ED 21 11 92      [10]  713 	ld	hl,#_drawStars_starsCycles_1_120 + 0
   80F0 36 01         [10]  714 	ld	(hl), #0x01
   80F2                     715 00116$:
   80F2 DD F9         [10]  716 	ld	sp, ix
   80F4 DD E1         [14]  717 	pop	ix
   80F6 C9            [10]  718 	ret
                            719 	.area _CODE
                            720 	.area _INITIALIZER
                            721 	.area _CABS (ABS)
