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
   919F                      32 _drawStars_starsCycles_1_120:
   919F                      33 	.ds 1
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
   91AF FD 21 9F 91   [14]   50 	ld	iy,#_drawStars_starsCycles_1_120
   91B3 FD 36 00 01   [19]   51 	ld	0 (iy),#0x01
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
   7C76                      65 _drawMenu::
                             66 ;src/video/draw.c:25: cpct_memset(CPCT_VMEM_START, cpct_px2byteM0(5, 5), 0x4000);
   7C76 21 05 05      [10]   67 	ld	hl,#0x0505
   7C79 E5            [11]   68 	push	hl
   7C7A CD FC 83      [17]   69 	call	_cpct_px2byteM0
   7C7D 45            [ 4]   70 	ld	b,l
   7C7E 21 00 40      [10]   71 	ld	hl,#0x4000
   7C81 E5            [11]   72 	push	hl
   7C82 C5            [11]   73 	push	bc
   7C83 33            [ 6]   74 	inc	sp
   7C84 26 C0         [ 7]   75 	ld	h, #0xC0
   7C86 E5            [11]   76 	push	hl
   7C87 CD 18 84      [17]   77 	call	_cpct_memset
                             78 ;src/video/draw.c:27: drawFrame(15, 38, 63, 134);
   7C8A 21 3F 86      [10]   79 	ld	hl,#0x863F
   7C8D E5            [11]   80 	push	hl
   7C8E 21 0F 26      [10]   81 	ld	hl,#0x260F
   7C91 E5            [11]   82 	push	hl
   7C92 CD B6 7D      [17]   83 	call	_drawFrame
   7C95 F1            [10]   84 	pop	af
                             85 ;src/video/draw.c:29: drawText("AMSTHREES", 31, 2,1);
   7C96 21 02 01      [10]   86 	ld	hl, #0x0102
   7C99 E3            [19]   87 	ex	(sp),hl
   7C9A 3E 1F         [ 7]   88 	ld	a,#0x1F
   7C9C F5            [11]   89 	push	af
   7C9D 33            [ 6]   90 	inc	sp
   7C9E 21 53 7D      [10]   91 	ld	hl,#___str_0
   7CA1 E5            [11]   92 	push	hl
   7CA2 CD 81 76      [17]   93 	call	_drawText
   7CA5 F1            [10]   94 	pop	af
                             95 ;src/video/draw.c:31: drawText("TECLADO", 30, 50,0);
   7CA6 33            [ 6]   96 	inc	sp
   7CA7 21 32 00      [10]   97 	ld	hl,#0x0032
   7CAA E3            [19]   98 	ex	(sp),hl
   7CAB 3E 1E         [ 7]   99 	ld	a,#0x1E
   7CAD F5            [11]  100 	push	af
   7CAE 33            [ 6]  101 	inc	sp
   7CAF 21 5D 7D      [10]  102 	ld	hl,#___str_1
   7CB2 E5            [11]  103 	push	hl
   7CB3 CD 81 76      [17]  104 	call	_drawText
   7CB6 F1            [10]  105 	pop	af
                            106 ;src/video/draw.c:32: drawText("JOYSTICK", 30, 70,0);
   7CB7 33            [ 6]  107 	inc	sp
   7CB8 21 46 00      [10]  108 	ld	hl,#0x0046
   7CBB E3            [19]  109 	ex	(sp),hl
   7CBC 3E 1E         [ 7]  110 	ld	a,#0x1E
   7CBE F5            [11]  111 	push	af
   7CBF 33            [ 6]  112 	inc	sp
   7CC0 21 65 7D      [10]  113 	ld	hl,#___str_2
   7CC3 E5            [11]  114 	push	hl
   7CC4 CD 81 76      [17]  115 	call	_drawText
   7CC7 F1            [10]  116 	pop	af
                            117 ;src/video/draw.c:33: drawText("MUSICA", 30, 90,0);
   7CC8 33            [ 6]  118 	inc	sp
   7CC9 21 5A 00      [10]  119 	ld	hl,#0x005A
   7CCC E3            [19]  120 	ex	(sp),hl
   7CCD 3E 1E         [ 7]  121 	ld	a,#0x1E
   7CCF F5            [11]  122 	push	af
   7CD0 33            [ 6]  123 	inc	sp
   7CD1 21 6E 7D      [10]  124 	ld	hl,#___str_3
   7CD4 E5            [11]  125 	push	hl
   7CD5 CD 81 76      [17]  126 	call	_drawText
   7CD8 F1            [10]  127 	pop	af
                            128 ;src/video/draw.c:34: drawText("JUGAR", 30, 110,0);
   7CD9 33            [ 6]  129 	inc	sp
   7CDA 21 6E 00      [10]  130 	ld	hl,#0x006E
   7CDD E3            [19]  131 	ex	(sp),hl
   7CDE 3E 1E         [ 7]  132 	ld	a,#0x1E
   7CE0 F5            [11]  133 	push	af
   7CE1 33            [ 6]  134 	inc	sp
   7CE2 21 75 7D      [10]  135 	ld	hl,#___str_4
   7CE5 E5            [11]  136 	push	hl
   7CE6 CD 81 76      [17]  137 	call	_drawText
   7CE9 F1            [10]  138 	pop	af
                            139 ;src/video/draw.c:36: drawNumber(1, 1, 23, 50);
   7CEA 33            [ 6]  140 	inc	sp
   7CEB 21 17 32      [10]  141 	ld	hl,#0x3217
   7CEE E3            [19]  142 	ex	(sp),hl
   7CEF 3E 01         [ 7]  143 	ld	a,#0x01
   7CF1 F5            [11]  144 	push	af
   7CF2 33            [ 6]  145 	inc	sp
   7CF3 21 01 00      [10]  146 	ld	hl,#0x0001
   7CF6 E5            [11]  147 	push	hl
   7CF7 CD E4 75      [17]  148 	call	_drawNumber
   7CFA F1            [10]  149 	pop	af
                            150 ;src/video/draw.c:37: drawNumber(2, 1, 23, 70);
   7CFB 33            [ 6]  151 	inc	sp
   7CFC 21 17 46      [10]  152 	ld	hl,#0x4617
   7CFF E3            [19]  153 	ex	(sp),hl
   7D00 3E 01         [ 7]  154 	ld	a,#0x01
   7D02 F5            [11]  155 	push	af
   7D03 33            [ 6]  156 	inc	sp
   7D04 21 02 00      [10]  157 	ld	hl,#0x0002
   7D07 E5            [11]  158 	push	hl
   7D08 CD E4 75      [17]  159 	call	_drawNumber
   7D0B F1            [10]  160 	pop	af
                            161 ;src/video/draw.c:38: drawNumber(3, 1, 23, 90);
   7D0C 33            [ 6]  162 	inc	sp
   7D0D 21 17 5A      [10]  163 	ld	hl,#0x5A17
   7D10 E3            [19]  164 	ex	(sp),hl
   7D11 3E 01         [ 7]  165 	ld	a,#0x01
   7D13 F5            [11]  166 	push	af
   7D14 33            [ 6]  167 	inc	sp
   7D15 21 03 00      [10]  168 	ld	hl,#0x0003
   7D18 E5            [11]  169 	push	hl
   7D19 CD E4 75      [17]  170 	call	_drawNumber
   7D1C F1            [10]  171 	pop	af
                            172 ;src/video/draw.c:39: drawNumber(4, 1, 23, 110);
   7D1D 33            [ 6]  173 	inc	sp
   7D1E 21 17 6E      [10]  174 	ld	hl,#0x6E17
   7D21 E3            [19]  175 	ex	(sp),hl
   7D22 3E 01         [ 7]  176 	ld	a,#0x01
   7D24 F5            [11]  177 	push	af
   7D25 33            [ 6]  178 	inc	sp
   7D26 21 04 00      [10]  179 	ld	hl,#0x0004
   7D29 E5            [11]  180 	push	hl
   7D2A CD E4 75      [17]  181 	call	_drawNumber
   7D2D F1            [10]  182 	pop	af
                            183 ;src/video/draw.c:42: drawText("JOHN LOBO", 25, 170,1);
   7D2E 33            [ 6]  184 	inc	sp
   7D2F 21 AA 01      [10]  185 	ld	hl,#0x01AA
   7D32 E3            [19]  186 	ex	(sp),hl
   7D33 3E 19         [ 7]  187 	ld	a,#0x19
   7D35 F5            [11]  188 	push	af
   7D36 33            [ 6]  189 	inc	sp
   7D37 21 7B 7D      [10]  190 	ld	hl,#___str_5
   7D3A E5            [11]  191 	push	hl
   7D3B CD 81 76      [17]  192 	call	_drawText
   7D3E F1            [10]  193 	pop	af
                            194 ;src/video/draw.c:43: drawText("@ GLASNOST CORP 2016", 11, 185,1);
   7D3F 33            [ 6]  195 	inc	sp
   7D40 21 B9 01      [10]  196 	ld	hl,#0x01B9
   7D43 E3            [19]  197 	ex	(sp),hl
   7D44 3E 0B         [ 7]  198 	ld	a,#0x0B
   7D46 F5            [11]  199 	push	af
   7D47 33            [ 6]  200 	inc	sp
   7D48 21 85 7D      [10]  201 	ld	hl,#___str_6
   7D4B E5            [11]  202 	push	hl
   7D4C CD 81 76      [17]  203 	call	_drawText
   7D4F F1            [10]  204 	pop	af
   7D50 F1            [10]  205 	pop	af
   7D51 33            [ 6]  206 	inc	sp
   7D52 C9            [10]  207 	ret
   7D53                     208 ___str_0:
   7D53 41 4D 53 54 48 52   209 	.ascii "AMSTHREES"
        45 45 53
   7D5C 00                  210 	.db 0x00
   7D5D                     211 ___str_1:
   7D5D 54 45 43 4C 41 44   212 	.ascii "TECLADO"
        4F
   7D64 00                  213 	.db 0x00
   7D65                     214 ___str_2:
   7D65 4A 4F 59 53 54 49   215 	.ascii "JOYSTICK"
        43 4B
   7D6D 00                  216 	.db 0x00
   7D6E                     217 ___str_3:
   7D6E 4D 55 53 49 43 41   218 	.ascii "MUSICA"
   7D74 00                  219 	.db 0x00
   7D75                     220 ___str_4:
   7D75 4A 55 47 41 52      221 	.ascii "JUGAR"
   7D7A 00                  222 	.db 0x00
   7D7B                     223 ___str_5:
   7D7B 4A 4F 48 4E 20 4C   224 	.ascii "JOHN LOBO"
        4F 42 4F
   7D84 00                  225 	.db 0x00
   7D85                     226 ___str_6:
   7D85 40 20 47 4C 41 53   227 	.ascii "@ GLASNOST CORP 2016"
        4E 4F 53 54 20 43
        4F 52 50 20 32 30
        31 36
   7D99 00                  228 	.db 0x00
                            229 ;src/video/draw.c:47: void clearGameScreen() {
                            230 ;	---------------------------------
                            231 ; Function clearGameScreen
                            232 ; ---------------------------------
   7D9A                     233 _clearGameScreen::
                            234 ;src/video/draw.c:49: u8* pvideo = cpct_getScreenPtr(CPCT_VMEM_START, MIN_X, MIN_Y);
   7D9A 21 09 05      [10]  235 	ld	hl,#0x0509
   7D9D E5            [11]  236 	push	hl
   7D9E 21 00 C0      [10]  237 	ld	hl,#0xC000
   7DA1 E5            [11]  238 	push	hl
   7DA2 CD 2F 85      [17]  239 	call	_cpct_getScreenPtr
   7DA5 4D            [ 4]  240 	ld	c,l
   7DA6 44            [ 4]  241 	ld	b,h
                            242 ;src/video/draw.c:51: cpct_drawSolidBox(pvideo, 0, MAX_X - MIN_X + 1, MAX_Y - MIN_Y);
   7DA7 21 44 F1      [10]  243 	ld	hl,#0xF144
   7DAA E5            [11]  244 	push	hl
   7DAB AF            [ 4]  245 	xor	a, a
   7DAC F5            [11]  246 	push	af
   7DAD 33            [ 6]  247 	inc	sp
   7DAE C5            [11]  248 	push	bc
   7DAF CD 45 84      [17]  249 	call	_cpct_drawSolidBox
   7DB2 F1            [10]  250 	pop	af
   7DB3 F1            [10]  251 	pop	af
   7DB4 33            [ 6]  252 	inc	sp
   7DB5 C9            [10]  253 	ret
                            254 ;src/video/draw.c:56: void drawFrame(u8 x1, u8 y1, u8 x2, u8 y2) {
                            255 ;	---------------------------------
                            256 ; Function drawFrame
                            257 ; ---------------------------------
   7DB6                     258 _drawFrame::
   7DB6 DD E5         [15]  259 	push	ix
   7DB8 DD 21 00 00   [14]  260 	ld	ix,#0
   7DBC DD 39         [15]  261 	add	ix,sp
   7DBE 21 F7 FF      [10]  262 	ld	hl,#-9
   7DC1 39            [11]  263 	add	hl,sp
   7DC2 F9            [ 6]  264 	ld	sp,hl
                            265 ;src/video/draw.c:61: frame_w = x2 - x1;
   7DC3 DD 7E 06      [19]  266 	ld	a,6 (ix)
   7DC6 DD 96 04      [19]  267 	sub	a, 4 (ix)
   7DC9 47            [ 4]  268 	ld	b,a
   7DCA DD 70 FF      [19]  269 	ld	-1 (ix),b
                            270 ;src/video/draw.c:64: clearWindow(x1, y1, x2 - x1, y2 - y1);
   7DCD DD 7E 07      [19]  271 	ld	a,7 (ix)
   7DD0 DD 96 05      [19]  272 	sub	a, 5 (ix)
   7DD3 57            [ 4]  273 	ld	d,a
   7DD4 D5            [11]  274 	push	de
   7DD5 33            [ 6]  275 	inc	sp
   7DD6 C5            [11]  276 	push	bc
   7DD7 33            [ 6]  277 	inc	sp
   7DD8 DD 66 05      [19]  278 	ld	h,5 (ix)
   7DDB DD 6E 04      [19]  279 	ld	l,4 (ix)
   7DDE E5            [11]  280 	push	hl
   7DDF CD D9 80      [17]  281 	call	_clearWindow
   7DE2 F1            [10]  282 	pop	af
   7DE3 F1            [10]  283 	pop	af
                            284 ;src/video/draw.c:67: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, x1, y1);
   7DE4 DD 66 05      [19]  285 	ld	h,5 (ix)
   7DE7 DD 6E 04      [19]  286 	ld	l,4 (ix)
   7DEA E5            [11]  287 	push	hl
   7DEB 21 00 C0      [10]  288 	ld	hl,#0xC000
   7DEE E5            [11]  289 	push	hl
   7DEF CD 2F 85      [17]  290 	call	_cpct_getScreenPtr
   7DF2 4D            [ 4]  291 	ld	c,l
   7DF3 44            [ 4]  292 	ld	b,h
                            293 ;src/video/draw.c:68: cpct_drawSprite(g_tile_border_0,  pvideo, 2, 4);
   7DF4 59            [ 4]  294 	ld	e, c
   7DF5 50            [ 4]  295 	ld	d, b
   7DF6 C5            [11]  296 	push	bc
   7DF7 21 02 04      [10]  297 	ld	hl,#0x0402
   7DFA E5            [11]  298 	push	hl
   7DFB D5            [11]  299 	push	de
   7DFC 21 6B 52      [10]  300 	ld	hl,#_g_tile_border_0
   7DFF E5            [11]  301 	push	hl
   7E00 CD A9 81      [17]  302 	call	_cpct_drawSprite
   7E03 C1            [10]  303 	pop	bc
                            304 ;src/video/draw.c:72: for (x = x1 + 2; x < (x2 - 2); x = x + 2) {
   7E04 DD 7E 04      [19]  305 	ld	a,4 (ix)
   7E07 C6 02         [ 7]  306 	add	a, #0x02
   7E09 DD 77 FE      [19]  307 	ld	-2 (ix), a
   7E0C DD 77 FD      [19]  308 	ld	-3 (ix),a
   7E0F 11 8B 52      [10]  309 	ld	de,#_g_tile_border_4+0
   7E12                     310 00105$:
   7E12 DD 7E 06      [19]  311 	ld	a, 6 (ix)
   7E15 26 00         [ 7]  312 	ld	h, #0x00
   7E17 C6 FE         [ 7]  313 	add	a,#0xFE
   7E19 DD 77 F9      [19]  314 	ld	-7 (ix),a
   7E1C 7C            [ 4]  315 	ld	a,h
   7E1D CE FF         [ 7]  316 	adc	a,#0xFF
   7E1F DD 77 FA      [19]  317 	ld	-6 (ix),a
   7E22 DD 6E FD      [19]  318 	ld	l,-3 (ix)
   7E25 26 00         [ 7]  319 	ld	h,#0x00
                            320 ;src/video/draw.c:74: cpct_drawSprite(g_tile_border_4,  pvideo + (x - x1), 2, 4);
   7E27 DD 7E 04      [19]  321 	ld	a,4 (ix)
   7E2A DD 77 FB      [19]  322 	ld	-5 (ix),a
   7E2D DD 36 FC 00   [19]  323 	ld	-4 (ix),#0x00
                            324 ;src/video/draw.c:72: for (x = x1 + 2; x < (x2 - 2); x = x + 2) {
   7E31 7D            [ 4]  325 	ld	a,l
   7E32 DD 96 F9      [19]  326 	sub	a, -7 (ix)
   7E35 7C            [ 4]  327 	ld	a,h
   7E36 DD 9E FA      [19]  328 	sbc	a, -6 (ix)
   7E39 E2 3E 7E      [10]  329 	jp	PO, 00142$
   7E3C EE 80         [ 7]  330 	xor	a, #0x80
   7E3E                     331 00142$:
   7E3E F2 68 7E      [10]  332 	jp	P,00101$
                            333 ;src/video/draw.c:74: cpct_drawSprite(g_tile_border_4,  pvideo + (x - x1), 2, 4);
   7E41 7D            [ 4]  334 	ld	a,l
   7E42 DD 96 FB      [19]  335 	sub	a, -5 (ix)
   7E45 6F            [ 4]  336 	ld	l,a
   7E46 7C            [ 4]  337 	ld	a,h
   7E47 DD 9E FC      [19]  338 	sbc	a, -4 (ix)
   7E4A 67            [ 4]  339 	ld	h,a
   7E4B 09            [11]  340 	add	hl,bc
   7E4C E5            [11]  341 	push	hl
   7E4D FD E1         [14]  342 	pop	iy
   7E4F C5            [11]  343 	push	bc
   7E50 D5            [11]  344 	push	de
   7E51 21 02 04      [10]  345 	ld	hl,#0x0402
   7E54 E5            [11]  346 	push	hl
   7E55 FD E5         [15]  347 	push	iy
   7E57 21 8B 52      [10]  348 	ld	hl,#_g_tile_border_4
   7E5A E5            [11]  349 	push	hl
   7E5B CD A9 81      [17]  350 	call	_cpct_drawSprite
   7E5E D1            [10]  351 	pop	de
   7E5F C1            [10]  352 	pop	bc
                            353 ;src/video/draw.c:72: for (x = x1 + 2; x < (x2 - 2); x = x + 2) {
   7E60 DD 34 FD      [23]  354 	inc	-3 (ix)
   7E63 DD 34 FD      [23]  355 	inc	-3 (ix)
   7E66 18 AA         [12]  356 	jr	00105$
   7E68                     357 00101$:
                            358 ;src/video/draw.c:78: cpct_drawSprite(g_tile_border_1,  pvideo + (frame_w - 2), 2,4);
   7E68 DD 5E FF      [19]  359 	ld	e,-1 (ix)
   7E6B 16 00         [ 7]  360 	ld	d,#0x00
   7E6D 1B            [ 6]  361 	dec	de
   7E6E 1B            [ 6]  362 	dec	de
   7E6F 6B            [ 4]  363 	ld	l, e
   7E70 62            [ 4]  364 	ld	h, d
   7E71 09            [11]  365 	add	hl,bc
   7E72 4D            [ 4]  366 	ld	c, l
   7E73 44            [ 4]  367 	ld	b, h
   7E74 D5            [11]  368 	push	de
   7E75 21 02 04      [10]  369 	ld	hl,#0x0402
   7E78 E5            [11]  370 	push	hl
   7E79 C5            [11]  371 	push	bc
   7E7A 21 73 52      [10]  372 	ld	hl,#_g_tile_border_1
   7E7D E5            [11]  373 	push	hl
   7E7E CD A9 81      [17]  374 	call	_cpct_drawSprite
   7E81 D1            [10]  375 	pop	de
                            376 ;src/video/draw.c:82: for (x = y1 + 4; x < (y2 - 4); x = x + 4) {
   7E82 DD 7E 05      [19]  377 	ld	a,5 (ix)
   7E85 C6 04         [ 7]  378 	add	a, #0x04
   7E87 DD 77 FD      [19]  379 	ld	-3 (ix),a
   7E8A                     380 00108$:
   7E8A DD 4E 07      [19]  381 	ld	c,7 (ix)
   7E8D 06 00         [ 7]  382 	ld	b,#0x00
   7E8F 79            [ 4]  383 	ld	a,c
   7E90 C6 FC         [ 7]  384 	add	a,#0xFC
   7E92 4F            [ 4]  385 	ld	c,a
   7E93 78            [ 4]  386 	ld	a,b
   7E94 CE FF         [ 7]  387 	adc	a,#0xFF
   7E96 47            [ 4]  388 	ld	b,a
   7E97 DD 7E FD      [19]  389 	ld	a, -3 (ix)
   7E9A 26 00         [ 7]  390 	ld	h, #0x00
   7E9C 91            [ 4]  391 	sub	a, c
   7E9D 7C            [ 4]  392 	ld	a,h
   7E9E 98            [ 4]  393 	sbc	a, b
   7E9F E2 A4 7E      [10]  394 	jp	PO, 00143$
   7EA2 EE 80         [ 7]  395 	xor	a, #0x80
   7EA4                     396 00143$:
   7EA4 F2 EC 7E      [10]  397 	jp	P,00102$
                            398 ;src/video/draw.c:84: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, x1, x);
   7EA7 D5            [11]  399 	push	de
   7EA8 DD 66 FD      [19]  400 	ld	h,-3 (ix)
   7EAB DD 6E 04      [19]  401 	ld	l,4 (ix)
   7EAE E5            [11]  402 	push	hl
   7EAF 21 00 C0      [10]  403 	ld	hl,#0xC000
   7EB2 E5            [11]  404 	push	hl
   7EB3 CD 2F 85      [17]  405 	call	_cpct_getScreenPtr
   7EB6 4D            [ 4]  406 	ld	c,l
   7EB7 44            [ 4]  407 	ld	b,h
   7EB8 D1            [10]  408 	pop	de
                            409 ;src/video/draw.c:85: cpct_drawSprite(g_tile_border_5,  pvideo, 2, 4);
   7EB9 C5            [11]  410 	push	bc
   7EBA FD E1         [14]  411 	pop	iy
   7EBC C5            [11]  412 	push	bc
   7EBD D5            [11]  413 	push	de
   7EBE 21 02 04      [10]  414 	ld	hl,#0x0402
   7EC1 E5            [11]  415 	push	hl
   7EC2 FD E5         [15]  416 	push	iy
   7EC4 21 93 52      [10]  417 	ld	hl,#_g_tile_border_5
   7EC7 E5            [11]  418 	push	hl
   7EC8 CD A9 81      [17]  419 	call	_cpct_drawSprite
   7ECB D1            [10]  420 	pop	de
                            421 ;src/video/draw.c:86: cpct_drawSprite(g_tile_border_6,  pvideo + (frame_w - 2), 2, 4);
   7ECC E1            [10]  422 	pop	hl
   7ECD 19            [11]  423 	add	hl,de
   7ECE 4D            [ 4]  424 	ld	c, l
   7ECF 44            [ 4]  425 	ld	b, h
   7ED0 D5            [11]  426 	push	de
   7ED1 21 02 04      [10]  427 	ld	hl,#0x0402
   7ED4 E5            [11]  428 	push	hl
   7ED5 C5            [11]  429 	push	bc
   7ED6 21 9B 52      [10]  430 	ld	hl,#_g_tile_border_6
   7ED9 E5            [11]  431 	push	hl
   7EDA CD A9 81      [17]  432 	call	_cpct_drawSprite
   7EDD D1            [10]  433 	pop	de
                            434 ;src/video/draw.c:82: for (x = y1 + 4; x < (y2 - 4); x = x + 4) {
   7EDE DD 34 FD      [23]  435 	inc	-3 (ix)
   7EE1 DD 34 FD      [23]  436 	inc	-3 (ix)
   7EE4 DD 34 FD      [23]  437 	inc	-3 (ix)
   7EE7 DD 34 FD      [23]  438 	inc	-3 (ix)
   7EEA 18 9E         [12]  439 	jr	00108$
   7EEC                     440 00102$:
                            441 ;src/video/draw.c:90: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, x1, y2 - 4);
   7EEC DD 7E 07      [19]  442 	ld	a,7 (ix)
   7EEF C6 FC         [ 7]  443 	add	a,#0xFC
   7EF1 47            [ 4]  444 	ld	b,a
   7EF2 D5            [11]  445 	push	de
   7EF3 C5            [11]  446 	push	bc
   7EF4 33            [ 6]  447 	inc	sp
   7EF5 DD 7E 04      [19]  448 	ld	a,4 (ix)
   7EF8 F5            [11]  449 	push	af
   7EF9 33            [ 6]  450 	inc	sp
   7EFA 21 00 C0      [10]  451 	ld	hl,#0xC000
   7EFD E5            [11]  452 	push	hl
   7EFE CD 2F 85      [17]  453 	call	_cpct_getScreenPtr
   7F01 4D            [ 4]  454 	ld	c,l
   7F02 44            [ 4]  455 	ld	b,h
   7F03 D1            [10]  456 	pop	de
                            457 ;src/video/draw.c:93: cpct_drawSprite(g_tile_border_2,  pvideo, 2, 4);
   7F04 33            [ 6]  458 	inc	sp
   7F05 33            [ 6]  459 	inc	sp
   7F06 C5            [11]  460 	push	bc
   7F07 C5            [11]  461 	push	bc
   7F08 D5            [11]  462 	push	de
   7F09 21 02 04      [10]  463 	ld	hl,#0x0402
   7F0C E5            [11]  464 	push	hl
   7F0D DD 6E F7      [19]  465 	ld	l,-9 (ix)
   7F10 DD 66 F8      [19]  466 	ld	h,-8 (ix)
   7F13 E5            [11]  467 	push	hl
   7F14 21 7B 52      [10]  468 	ld	hl,#_g_tile_border_2
   7F17 E5            [11]  469 	push	hl
   7F18 CD A9 81      [17]  470 	call	_cpct_drawSprite
   7F1B D1            [10]  471 	pop	de
   7F1C C1            [10]  472 	pop	bc
                            473 ;src/video/draw.c:97: for (x = x1 + 2; x < (x2 - 2); x = x + 2) {
   7F1D DD 7E FE      [19]  474 	ld	a,-2 (ix)
   7F20 DD 77 F7      [19]  475 	ld	-9 (ix),a
   7F23                     476 00111$:
   7F23 DD 6E F7      [19]  477 	ld	l,-9 (ix)
   7F26 26 00         [ 7]  478 	ld	h,#0x00
   7F28 7D            [ 4]  479 	ld	a,l
   7F29 DD 96 F9      [19]  480 	sub	a, -7 (ix)
   7F2C 7C            [ 4]  481 	ld	a,h
   7F2D DD 9E FA      [19]  482 	sbc	a, -6 (ix)
   7F30 E2 35 7F      [10]  483 	jp	PO, 00144$
   7F33 EE 80         [ 7]  484 	xor	a, #0x80
   7F35                     485 00144$:
   7F35 F2 5F 7F      [10]  486 	jp	P,00103$
                            487 ;src/video/draw.c:99: cpct_drawSprite(g_tile_border_7,  pvideo + (x - x1), 2, 4);
   7F38 7D            [ 4]  488 	ld	a,l
   7F39 DD 96 FB      [19]  489 	sub	a, -5 (ix)
   7F3C 6F            [ 4]  490 	ld	l,a
   7F3D 7C            [ 4]  491 	ld	a,h
   7F3E DD 9E FC      [19]  492 	sbc	a, -4 (ix)
   7F41 67            [ 4]  493 	ld	h,a
   7F42 09            [11]  494 	add	hl,bc
   7F43 E5            [11]  495 	push	hl
   7F44 FD E1         [14]  496 	pop	iy
   7F46 C5            [11]  497 	push	bc
   7F47 D5            [11]  498 	push	de
   7F48 21 02 04      [10]  499 	ld	hl,#0x0402
   7F4B E5            [11]  500 	push	hl
   7F4C FD E5         [15]  501 	push	iy
   7F4E 21 A3 52      [10]  502 	ld	hl,#_g_tile_border_7
   7F51 E5            [11]  503 	push	hl
   7F52 CD A9 81      [17]  504 	call	_cpct_drawSprite
   7F55 D1            [10]  505 	pop	de
   7F56 C1            [10]  506 	pop	bc
                            507 ;src/video/draw.c:97: for (x = x1 + 2; x < (x2 - 2); x = x + 2) {
   7F57 DD 34 F7      [23]  508 	inc	-9 (ix)
   7F5A DD 34 F7      [23]  509 	inc	-9 (ix)
   7F5D 18 C4         [12]  510 	jr	00111$
   7F5F                     511 00103$:
                            512 ;src/video/draw.c:103: cpct_drawSprite(g_tile_border_3,  pvideo + (frame_w - 2), 2, 4);
   7F5F 69            [ 4]  513 	ld	l, c
   7F60 60            [ 4]  514 	ld	h, b
   7F61 19            [11]  515 	add	hl,de
   7F62 4D            [ 4]  516 	ld	c, l
   7F63 44            [ 4]  517 	ld	b, h
   7F64 21 02 04      [10]  518 	ld	hl,#0x0402
   7F67 E5            [11]  519 	push	hl
   7F68 C5            [11]  520 	push	bc
   7F69 21 83 52      [10]  521 	ld	hl,#_g_tile_border_3
   7F6C E5            [11]  522 	push	hl
   7F6D CD A9 81      [17]  523 	call	_cpct_drawSprite
   7F70 DD F9         [10]  524 	ld	sp, ix
   7F72 DD E1         [14]  525 	pop	ix
   7F74 C9            [10]  526 	ret
                            527 ;src/video/draw.c:107: void drawStar(u8 color1, u8 color2, u8 xPos, u8 yPos) {
                            528 ;	---------------------------------
                            529 ; Function drawStar
                            530 ; ---------------------------------
   7F75                     531 _drawStar::
                            532 ;src/video/draw.c:109: u8* pvideo = cpct_getScreenPtr(CPCT_VMEM_START, xPos, yPos);
   7F75 21 05 00      [10]  533 	ld	hl, #5+0
   7F78 39            [11]  534 	add	hl, sp
   7F79 7E            [ 7]  535 	ld	a, (hl)
   7F7A F5            [11]  536 	push	af
   7F7B 33            [ 6]  537 	inc	sp
   7F7C 21 05 00      [10]  538 	ld	hl, #5+0
   7F7F 39            [11]  539 	add	hl, sp
   7F80 7E            [ 7]  540 	ld	a, (hl)
   7F81 F5            [11]  541 	push	af
   7F82 33            [ 6]  542 	inc	sp
   7F83 21 00 C0      [10]  543 	ld	hl,#0xC000
   7F86 E5            [11]  544 	push	hl
   7F87 CD 2F 85      [17]  545 	call	_cpct_getScreenPtr
                            546 ;src/video/draw.c:110: cpct_drawSolidBox(pvideo, cpct_px2byteM0(color1, color2), 1, 1);
   7F8A E5            [11]  547 	push	hl
   7F8B 21 05 00      [10]  548 	ld	hl, #5+0
   7F8E 39            [11]  549 	add	hl, sp
   7F8F 7E            [ 7]  550 	ld	a, (hl)
   7F90 F5            [11]  551 	push	af
   7F91 33            [ 6]  552 	inc	sp
   7F92 21 05 00      [10]  553 	ld	hl, #5+0
   7F95 39            [11]  554 	add	hl, sp
   7F96 7E            [ 7]  555 	ld	a, (hl)
   7F97 F5            [11]  556 	push	af
   7F98 33            [ 6]  557 	inc	sp
   7F99 CD FC 83      [17]  558 	call	_cpct_px2byteM0
   7F9C 55            [ 4]  559 	ld	d,l
   7F9D C1            [10]  560 	pop	bc
   7F9E 21 01 01      [10]  561 	ld	hl,#0x0101
   7FA1 E5            [11]  562 	push	hl
   7FA2 D5            [11]  563 	push	de
   7FA3 33            [ 6]  564 	inc	sp
   7FA4 C5            [11]  565 	push	bc
   7FA5 CD 45 84      [17]  566 	call	_cpct_drawSolidBox
   7FA8 F1            [10]  567 	pop	af
   7FA9 F1            [10]  568 	pop	af
   7FAA 33            [ 6]  569 	inc	sp
   7FAB C9            [10]  570 	ret
                            571 ;src/video/draw.c:115: void drawStars(Coords *stars) {
                            572 ;	---------------------------------
                            573 ; Function drawStars
                            574 ; ---------------------------------
   7FAC                     575 _drawStars::
   7FAC DD E5         [15]  576 	push	ix
   7FAE DD 21 00 00   [14]  577 	ld	ix,#0
   7FB2 DD 39         [15]  578 	add	ix,sp
   7FB4 F5            [11]  579 	push	af
   7FB5 3B            [ 6]  580 	dec	sp
                            581 ;src/video/draw.c:122: for (x = 0; x < MAX_STARS + MAX_COLOR_STARS; x++) {
   7FB6 DD 36 FD 00   [19]  582 	ld	-3 (ix),#0x00
   7FBA                     583 00114$:
                            584 ;src/video/draw.c:128: drawStar(1, 0, stars[x].xPos, stars[x].yPos);
   7FBA DD 6E FD      [19]  585 	ld	l,-3 (ix)
   7FBD 26 00         [ 7]  586 	ld	h,#0x00
   7FBF 29            [11]  587 	add	hl, hl
   7FC0 4D            [ 4]  588 	ld	c, l
   7FC1 44            [ 4]  589 	ld	b, h
   7FC2 DD 7E 04      [19]  590 	ld	a,4 (ix)
   7FC5 81            [ 4]  591 	add	a, c
   7FC6 4F            [ 4]  592 	ld	c,a
   7FC7 DD 7E 05      [19]  593 	ld	a,5 (ix)
   7FCA 88            [ 4]  594 	adc	a, b
   7FCB 47            [ 4]  595 	ld	b,a
   7FCC 0A            [ 7]  596 	ld	a,(bc)
   7FCD DD 77 FF      [19]  597 	ld	-1 (ix),a
   7FD0 59            [ 4]  598 	ld	e, c
   7FD1 50            [ 4]  599 	ld	d, b
   7FD2 13            [ 6]  600 	inc	de
   7FD3 1A            [ 7]  601 	ld	a,(de)
   7FD4 DD 77 FE      [19]  602 	ld	-2 (ix),a
                            603 ;src/video/draw.c:124: if (x < MAX_STARS) {
   7FD7 DD 7E FD      [19]  604 	ld	a,-3 (ix)
   7FDA D6 08         [ 7]  605 	sub	a, #0x08
   7FDC 30 3A         [12]  606 	jr	NC,00109$
                            607 ;src/video/draw.c:126: if (starsCycles == 2) {
   7FDE 3A 9F 91      [13]  608 	ld	a,(#_drawStars_starsCycles_1_120 + 0)
   7FE1 D6 02         [ 7]  609 	sub	a, #0x02
   7FE3 20 21         [12]  610 	jr	NZ,00104$
                            611 ;src/video/draw.c:128: drawStar(1, 0, stars[x].xPos, stars[x].yPos);
   7FE5 C5            [11]  612 	push	bc
   7FE6 DD 66 FE      [19]  613 	ld	h,-2 (ix)
   7FE9 DD 6E FF      [19]  614 	ld	l,-1 (ix)
   7FEC E5            [11]  615 	push	hl
   7FED 21 01 00      [10]  616 	ld	hl,#0x0001
   7FF0 E5            [11]  617 	push	hl
   7FF1 CD 75 7F      [17]  618 	call	_drawStar
   7FF4 F1            [10]  619 	pop	af
   7FF5 F1            [10]  620 	pop	af
   7FF6 C1            [10]  621 	pop	bc
                            622 ;src/video/draw.c:129: stars[x].xPos--;
   7FF7 0A            [ 7]  623 	ld	a,(bc)
   7FF8 5F            [ 4]  624 	ld	e,a
   7FF9 1D            [ 4]  625 	dec	e
   7FFA 7B            [ 4]  626 	ld	a,e
   7FFB 02            [ 7]  627 	ld	(bc),a
                            628 ;src/video/draw.c:131: if (stars[x].xPos < MIN_X) {
   7FFC 7B            [ 4]  629 	ld	a,e
   7FFD D6 09         [ 7]  630 	sub	a, #0x09
   7FFF 30 62         [12]  631 	jr	NC,00115$
                            632 ;src/video/draw.c:133: stars[x].xPos = MAX_X;
   8001 3E 4C         [ 7]  633 	ld	a,#0x4C
   8003 02            [ 7]  634 	ld	(bc),a
   8004 18 5D         [12]  635 	jr	00115$
   8006                     636 00104$:
                            637 ;src/video/draw.c:139: drawStar(0, 1, stars[x].xPos, stars[x].yPos);
   8006 DD 66 FE      [19]  638 	ld	h,-2 (ix)
   8009 DD 6E FF      [19]  639 	ld	l,-1 (ix)
   800C E5            [11]  640 	push	hl
   800D 21 00 01      [10]  641 	ld	hl,#0x0100
   8010 E5            [11]  642 	push	hl
   8011 CD 75 7F      [17]  643 	call	_drawStar
   8014 F1            [10]  644 	pop	af
   8015 F1            [10]  645 	pop	af
   8016 18 4B         [12]  646 	jr	00115$
   8018                     647 00109$:
                            648 ;src/video/draw.c:145: pvideo = cpct_getScreenPtr(CPCT_VMEM_START,  stars[x].xPos, stars[x].yPos);
   8018 C5            [11]  649 	push	bc
   8019 D5            [11]  650 	push	de
   801A DD 66 FE      [19]  651 	ld	h,-2 (ix)
   801D DD 6E FF      [19]  652 	ld	l,-1 (ix)
   8020 E5            [11]  653 	push	hl
   8021 21 00 C0      [10]  654 	ld	hl,#0xC000
   8024 E5            [11]  655 	push	hl
   8025 CD 2F 85      [17]  656 	call	_cpct_getScreenPtr
   8028 D1            [10]  657 	pop	de
   8029 C1            [10]  658 	pop	bc
                            659 ;src/video/draw.c:147: cpct_drawSprite(G_bluestar, pvideo, COLOR_STAR_W, COLOR_STAR_H);
   802A E5            [11]  660 	push	hl
   802B FD E1         [14]  661 	pop	iy
   802D C5            [11]  662 	push	bc
   802E D5            [11]  663 	push	de
   802F 21 02 07      [10]  664 	ld	hl,#0x0702
   8032 E5            [11]  665 	push	hl
   8033 FD E5         [15]  666 	push	iy
   8035 21 7E 5B      [10]  667 	ld	hl,#_G_bluestar
   8038 E5            [11]  668 	push	hl
   8039 CD A9 81      [17]  669 	call	_cpct_drawSprite
   803C D1            [10]  670 	pop	de
   803D C1            [10]  671 	pop	bc
                            672 ;src/video/draw.c:149: stars[x].xPos--;
   803E 0A            [ 7]  673 	ld	a,(bc)
   803F C6 FF         [ 7]  674 	add	a,#0xFF
   8041 DD 77 FE      [19]  675 	ld	-2 (ix), a
   8044 02            [ 7]  676 	ld	(bc),a
                            677 ;src/video/draw.c:151: if (stars[x].xPos < MIN_X) {
   8045 DD 7E FE      [19]  678 	ld	a,-2 (ix)
   8048 D6 09         [ 7]  679 	sub	a, #0x09
   804A 30 17         [12]  680 	jr	NC,00115$
                            681 ;src/video/draw.c:153: stars[x].xPos = MAX_X - COLOR_STAR_W;
   804C 3E 4A         [ 7]  682 	ld	a,#0x4A
   804E 02            [ 7]  683 	ld	(bc),a
                            684 ;src/video/draw.c:154: stars[x].yPos = MIN_Y + cpct_rand() % (MAX_Y - COLOR_STAR_H - MIN_Y);
   804F D5            [11]  685 	push	de
   8050 CD D1 82      [17]  686 	call	_cpct_getRandom_mxor_u8
   8053 45            [ 4]  687 	ld	b,l
   8054 3E EA         [ 7]  688 	ld	a,#0xEA
   8056 F5            [11]  689 	push	af
   8057 33            [ 6]  690 	inc	sp
   8058 C5            [11]  691 	push	bc
   8059 33            [ 6]  692 	inc	sp
   805A CD 4E 82      [17]  693 	call	__moduchar
   805D F1            [10]  694 	pop	af
   805E D1            [10]  695 	pop	de
   805F 7D            [ 4]  696 	ld	a,l
   8060 C6 05         [ 7]  697 	add	a, #0x05
   8062 12            [ 7]  698 	ld	(de),a
   8063                     699 00115$:
                            700 ;src/video/draw.c:122: for (x = 0; x < MAX_STARS + MAX_COLOR_STARS; x++) {
   8063 DD 34 FD      [23]  701 	inc	-3 (ix)
   8066 DD 7E FD      [19]  702 	ld	a,-3 (ix)
   8069 D6 0B         [ 7]  703 	sub	a, #0x0B
   806B DA BA 7F      [10]  704 	jp	C,00114$
                            705 ;src/video/draw.c:163: if (starsCycles++ == 2) starsCycles = 1;
   806E 21 9F 91      [10]  706 	ld	hl,#_drawStars_starsCycles_1_120 + 0
   8071 4E            [ 7]  707 	ld	c, (hl)
   8072 21 9F 91      [10]  708 	ld	hl, #_drawStars_starsCycles_1_120+0
   8075 34            [11]  709 	inc	(hl)
   8076 79            [ 4]  710 	ld	a,c
   8077 D6 02         [ 7]  711 	sub	a, #0x02
   8079 20 05         [12]  712 	jr	NZ,00116$
   807B 21 9F 91      [10]  713 	ld	hl,#_drawStars_starsCycles_1_120 + 0
   807E 36 01         [10]  714 	ld	(hl), #0x01
   8080                     715 00116$:
   8080 DD F9         [10]  716 	ld	sp, ix
   8082 DD E1         [14]  717 	pop	ix
   8084 C9            [10]  718 	ret
                            719 	.area _CODE
                            720 	.area _INITIALIZER
                            721 	.area _CABS (ABS)
