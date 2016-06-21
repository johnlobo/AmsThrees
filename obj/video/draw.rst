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
                             12 	.globl _clearWindow
                             13 	.globl _cpct_getRandom_mxor_u8
                             14 	.globl _cpct_getScreenPtr
                             15 	.globl _cpct_drawSolidBox
                             16 	.globl _cpct_drawSprite
                             17 	.globl _cpct_px2byteM0
                             18 	.globl _drawFrame
                             19 	.globl _drawStar
                             20 	.globl _drawStars
                             21 ;--------------------------------------------------------
                             22 ; special function registers
                             23 ;--------------------------------------------------------
                             24 ;--------------------------------------------------------
                             25 ; ram data
                             26 ;--------------------------------------------------------
                             27 	.area _DATA
   8AFA                      28 _drawStars_starsCycles_1_119:
   8AFA                      29 	.ds 1
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
                             45 ;src/video/draw.c:97: static u8 starsCycles = 1;
   8B0B FD 21 FA 8A   [14]   46 	ld	iy,#_drawStars_starsCycles_1_119
   8B0F FD 36 00 01   [19]   47 	ld	0 (iy),#0x01
                             48 ;--------------------------------------------------------
                             49 ; Home
                             50 ;--------------------------------------------------------
                             51 	.area _HOME
                             52 	.area _HOME
                             53 ;--------------------------------------------------------
                             54 ; code
                             55 ;--------------------------------------------------------
                             56 	.area _CODE
                             57 ;src/video/draw.c:24: void clearGameScreen() {
                             58 ;	---------------------------------
                             59 ; Function clearGameScreen
                             60 ; ---------------------------------
   6EA4                      61 _clearGameScreen::
                             62 ;src/video/draw.c:26: u8* pvideo = cpct_getScreenPtr(CPCT_VMEM_START, MIN_X, MIN_Y);
   6EA4 21 09 05      [10]   63 	ld	hl,#0x0509
   6EA7 E5            [11]   64 	push	hl
   6EA8 21 00 C0      [10]   65 	ld	hl,#0xC000
   6EAB E5            [11]   66 	push	hl
   6EAC CD 62 7E      [17]   67 	call	_cpct_getScreenPtr
   6EAF 4D            [ 4]   68 	ld	c,l
   6EB0 44            [ 4]   69 	ld	b,h
                             70 ;src/video/draw.c:28: cpct_drawSolidBox(pvideo, 0, MAX_X - MIN_X + 1, MAX_Y - MIN_Y);
   6EB1 21 44 F1      [10]   71 	ld	hl,#0xF144
   6EB4 E5            [11]   72 	push	hl
   6EB5 AF            [ 4]   73 	xor	a, a
   6EB6 F5            [11]   74 	push	af
   6EB7 33            [ 6]   75 	inc	sp
   6EB8 C5            [11]   76 	push	bc
   6EB9 CD 78 7D      [17]   77 	call	_cpct_drawSolidBox
   6EBC F1            [10]   78 	pop	af
   6EBD F1            [10]   79 	pop	af
   6EBE 33            [ 6]   80 	inc	sp
   6EBF C9            [10]   81 	ret
                             82 ;src/video/draw.c:33: void drawFrame(u8 x1, u8 y1, u8 x2, u8 y2) {
                             83 ;	---------------------------------
                             84 ; Function drawFrame
                             85 ; ---------------------------------
   6EC0                      86 _drawFrame::
   6EC0 DD E5         [15]   87 	push	ix
   6EC2 DD 21 00 00   [14]   88 	ld	ix,#0
   6EC6 DD 39         [15]   89 	add	ix,sp
   6EC8 21 F7 FF      [10]   90 	ld	hl,#-9
   6ECB 39            [11]   91 	add	hl,sp
   6ECC F9            [ 6]   92 	ld	sp,hl
                             93 ;src/video/draw.c:38: frame_w = x2 - x1;
   6ECD DD 7E 06      [19]   94 	ld	a,6 (ix)
   6ED0 DD 96 04      [19]   95 	sub	a, 4 (ix)
   6ED3 47            [ 4]   96 	ld	b,a
   6ED4 DD 70 FF      [19]   97 	ld	-1 (ix),b
                             98 ;src/video/draw.c:41: clearWindow(x1, y1, x2 - x1, y2 - y1);
   6ED7 DD 7E 07      [19]   99 	ld	a,7 (ix)
   6EDA DD 96 05      [19]  100 	sub	a, 5 (ix)
   6EDD 57            [ 4]  101 	ld	d,a
   6EDE D5            [11]  102 	push	de
   6EDF 33            [ 6]  103 	inc	sp
   6EE0 C5            [11]  104 	push	bc
   6EE1 33            [ 6]  105 	inc	sp
   6EE2 DD 66 05      [19]  106 	ld	h,5 (ix)
   6EE5 DD 6E 04      [19]  107 	ld	l,4 (ix)
   6EE8 E5            [11]  108 	push	hl
   6EE9 CD E3 71      [17]  109 	call	_clearWindow
   6EEC F1            [10]  110 	pop	af
   6EED F1            [10]  111 	pop	af
                            112 ;src/video/draw.c:44: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, x1, y1);
   6EEE DD 66 05      [19]  113 	ld	h,5 (ix)
   6EF1 DD 6E 04      [19]  114 	ld	l,4 (ix)
   6EF4 E5            [11]  115 	push	hl
   6EF5 21 00 C0      [10]  116 	ld	hl,#0xC000
   6EF8 E5            [11]  117 	push	hl
   6EF9 CD 62 7E      [17]  118 	call	_cpct_getScreenPtr
   6EFC 4D            [ 4]  119 	ld	c,l
   6EFD 44            [ 4]  120 	ld	b,h
                            121 ;src/video/draw.c:45: cpct_drawSprite(g_tile_border_0,  pvideo, 2, 4);
   6EFE 59            [ 4]  122 	ld	e, c
   6EFF 50            [ 4]  123 	ld	d, b
   6F00 C5            [11]  124 	push	bc
   6F01 21 02 04      [10]  125 	ld	hl,#0x0402
   6F04 E5            [11]  126 	push	hl
   6F05 D5            [11]  127 	push	de
   6F06 21 89 44      [10]  128 	ld	hl,#_g_tile_border_0
   6F09 E5            [11]  129 	push	hl
   6F0A CD DC 7A      [17]  130 	call	_cpct_drawSprite
   6F0D C1            [10]  131 	pop	bc
                            132 ;src/video/draw.c:49: for (x = x1 + 2; x < (x2 - 2); x = x + 2) {
   6F0E DD 7E 04      [19]  133 	ld	a,4 (ix)
   6F11 C6 02         [ 7]  134 	add	a, #0x02
   6F13 DD 77 FE      [19]  135 	ld	-2 (ix), a
   6F16 DD 77 FD      [19]  136 	ld	-3 (ix),a
   6F19 11 A9 44      [10]  137 	ld	de,#_g_tile_border_4+0
   6F1C                     138 00105$:
   6F1C DD 7E 06      [19]  139 	ld	a, 6 (ix)
   6F1F 26 00         [ 7]  140 	ld	h, #0x00
   6F21 C6 FE         [ 7]  141 	add	a,#0xFE
   6F23 DD 77 FB      [19]  142 	ld	-5 (ix),a
   6F26 7C            [ 4]  143 	ld	a,h
   6F27 CE FF         [ 7]  144 	adc	a,#0xFF
   6F29 DD 77 FC      [19]  145 	ld	-4 (ix),a
   6F2C DD 6E FD      [19]  146 	ld	l,-3 (ix)
   6F2F 26 00         [ 7]  147 	ld	h,#0x00
                            148 ;src/video/draw.c:51: cpct_drawSprite(g_tile_border_4,  pvideo + (x - x1), 2, 4);
   6F31 DD 7E 04      [19]  149 	ld	a,4 (ix)
   6F34 DD 77 F9      [19]  150 	ld	-7 (ix),a
   6F37 DD 36 FA 00   [19]  151 	ld	-6 (ix),#0x00
                            152 ;src/video/draw.c:49: for (x = x1 + 2; x < (x2 - 2); x = x + 2) {
   6F3B 7D            [ 4]  153 	ld	a,l
   6F3C DD 96 FB      [19]  154 	sub	a, -5 (ix)
   6F3F 7C            [ 4]  155 	ld	a,h
   6F40 DD 9E FC      [19]  156 	sbc	a, -4 (ix)
   6F43 E2 48 6F      [10]  157 	jp	PO, 00142$
   6F46 EE 80         [ 7]  158 	xor	a, #0x80
   6F48                     159 00142$:
   6F48 F2 72 6F      [10]  160 	jp	P,00101$
                            161 ;src/video/draw.c:51: cpct_drawSprite(g_tile_border_4,  pvideo + (x - x1), 2, 4);
   6F4B 7D            [ 4]  162 	ld	a,l
   6F4C DD 96 F9      [19]  163 	sub	a, -7 (ix)
   6F4F 6F            [ 4]  164 	ld	l,a
   6F50 7C            [ 4]  165 	ld	a,h
   6F51 DD 9E FA      [19]  166 	sbc	a, -6 (ix)
   6F54 67            [ 4]  167 	ld	h,a
   6F55 09            [11]  168 	add	hl,bc
   6F56 E5            [11]  169 	push	hl
   6F57 FD E1         [14]  170 	pop	iy
   6F59 C5            [11]  171 	push	bc
   6F5A D5            [11]  172 	push	de
   6F5B 21 02 04      [10]  173 	ld	hl,#0x0402
   6F5E E5            [11]  174 	push	hl
   6F5F FD E5         [15]  175 	push	iy
   6F61 21 A9 44      [10]  176 	ld	hl,#_g_tile_border_4
   6F64 E5            [11]  177 	push	hl
   6F65 CD DC 7A      [17]  178 	call	_cpct_drawSprite
   6F68 D1            [10]  179 	pop	de
   6F69 C1            [10]  180 	pop	bc
                            181 ;src/video/draw.c:49: for (x = x1 + 2; x < (x2 - 2); x = x + 2) {
   6F6A DD 34 FD      [23]  182 	inc	-3 (ix)
   6F6D DD 34 FD      [23]  183 	inc	-3 (ix)
   6F70 18 AA         [12]  184 	jr	00105$
   6F72                     185 00101$:
                            186 ;src/video/draw.c:55: cpct_drawSprite(g_tile_border_1,  pvideo + (frame_w - 2), 2,4);
   6F72 DD 5E FF      [19]  187 	ld	e,-1 (ix)
   6F75 16 00         [ 7]  188 	ld	d,#0x00
   6F77 1B            [ 6]  189 	dec	de
   6F78 1B            [ 6]  190 	dec	de
   6F79 6B            [ 4]  191 	ld	l, e
   6F7A 62            [ 4]  192 	ld	h, d
   6F7B 09            [11]  193 	add	hl,bc
   6F7C 4D            [ 4]  194 	ld	c, l
   6F7D 44            [ 4]  195 	ld	b, h
   6F7E D5            [11]  196 	push	de
   6F7F 21 02 04      [10]  197 	ld	hl,#0x0402
   6F82 E5            [11]  198 	push	hl
   6F83 C5            [11]  199 	push	bc
   6F84 21 91 44      [10]  200 	ld	hl,#_g_tile_border_1
   6F87 E5            [11]  201 	push	hl
   6F88 CD DC 7A      [17]  202 	call	_cpct_drawSprite
   6F8B D1            [10]  203 	pop	de
                            204 ;src/video/draw.c:59: for (x = y1 + 4; x < (y2 - 4); x = x + 4) {
   6F8C DD 7E 05      [19]  205 	ld	a,5 (ix)
   6F8F C6 04         [ 7]  206 	add	a, #0x04
   6F91 DD 77 FD      [19]  207 	ld	-3 (ix),a
   6F94                     208 00108$:
   6F94 DD 4E 07      [19]  209 	ld	c,7 (ix)
   6F97 06 00         [ 7]  210 	ld	b,#0x00
   6F99 79            [ 4]  211 	ld	a,c
   6F9A C6 FC         [ 7]  212 	add	a,#0xFC
   6F9C 4F            [ 4]  213 	ld	c,a
   6F9D 78            [ 4]  214 	ld	a,b
   6F9E CE FF         [ 7]  215 	adc	a,#0xFF
   6FA0 47            [ 4]  216 	ld	b,a
   6FA1 DD 7E FD      [19]  217 	ld	a, -3 (ix)
   6FA4 26 00         [ 7]  218 	ld	h, #0x00
   6FA6 91            [ 4]  219 	sub	a, c
   6FA7 7C            [ 4]  220 	ld	a,h
   6FA8 98            [ 4]  221 	sbc	a, b
   6FA9 E2 AE 6F      [10]  222 	jp	PO, 00143$
   6FAC EE 80         [ 7]  223 	xor	a, #0x80
   6FAE                     224 00143$:
   6FAE F2 F6 6F      [10]  225 	jp	P,00102$
                            226 ;src/video/draw.c:61: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, x1, x);
   6FB1 D5            [11]  227 	push	de
   6FB2 DD 66 FD      [19]  228 	ld	h,-3 (ix)
   6FB5 DD 6E 04      [19]  229 	ld	l,4 (ix)
   6FB8 E5            [11]  230 	push	hl
   6FB9 21 00 C0      [10]  231 	ld	hl,#0xC000
   6FBC E5            [11]  232 	push	hl
   6FBD CD 62 7E      [17]  233 	call	_cpct_getScreenPtr
   6FC0 4D            [ 4]  234 	ld	c,l
   6FC1 44            [ 4]  235 	ld	b,h
   6FC2 D1            [10]  236 	pop	de
                            237 ;src/video/draw.c:62: cpct_drawSprite(g_tile_border_5,  pvideo, 2, 4);
   6FC3 C5            [11]  238 	push	bc
   6FC4 FD E1         [14]  239 	pop	iy
   6FC6 C5            [11]  240 	push	bc
   6FC7 D5            [11]  241 	push	de
   6FC8 21 02 04      [10]  242 	ld	hl,#0x0402
   6FCB E5            [11]  243 	push	hl
   6FCC FD E5         [15]  244 	push	iy
   6FCE 21 B1 44      [10]  245 	ld	hl,#_g_tile_border_5
   6FD1 E5            [11]  246 	push	hl
   6FD2 CD DC 7A      [17]  247 	call	_cpct_drawSprite
   6FD5 D1            [10]  248 	pop	de
                            249 ;src/video/draw.c:63: cpct_drawSprite(g_tile_border_6,  pvideo + (frame_w - 2), 2, 4);
   6FD6 E1            [10]  250 	pop	hl
   6FD7 19            [11]  251 	add	hl,de
   6FD8 4D            [ 4]  252 	ld	c, l
   6FD9 44            [ 4]  253 	ld	b, h
   6FDA D5            [11]  254 	push	de
   6FDB 21 02 04      [10]  255 	ld	hl,#0x0402
   6FDE E5            [11]  256 	push	hl
   6FDF C5            [11]  257 	push	bc
   6FE0 21 B9 44      [10]  258 	ld	hl,#_g_tile_border_6
   6FE3 E5            [11]  259 	push	hl
   6FE4 CD DC 7A      [17]  260 	call	_cpct_drawSprite
   6FE7 D1            [10]  261 	pop	de
                            262 ;src/video/draw.c:59: for (x = y1 + 4; x < (y2 - 4); x = x + 4) {
   6FE8 DD 34 FD      [23]  263 	inc	-3 (ix)
   6FEB DD 34 FD      [23]  264 	inc	-3 (ix)
   6FEE DD 34 FD      [23]  265 	inc	-3 (ix)
   6FF1 DD 34 FD      [23]  266 	inc	-3 (ix)
   6FF4 18 9E         [12]  267 	jr	00108$
   6FF6                     268 00102$:
                            269 ;src/video/draw.c:67: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, x1, y2 - 4);
   6FF6 DD 7E 07      [19]  270 	ld	a,7 (ix)
   6FF9 C6 FC         [ 7]  271 	add	a,#0xFC
   6FFB 47            [ 4]  272 	ld	b,a
   6FFC D5            [11]  273 	push	de
   6FFD C5            [11]  274 	push	bc
   6FFE 33            [ 6]  275 	inc	sp
   6FFF DD 7E 04      [19]  276 	ld	a,4 (ix)
   7002 F5            [11]  277 	push	af
   7003 33            [ 6]  278 	inc	sp
   7004 21 00 C0      [10]  279 	ld	hl,#0xC000
   7007 E5            [11]  280 	push	hl
   7008 CD 62 7E      [17]  281 	call	_cpct_getScreenPtr
   700B 4D            [ 4]  282 	ld	c,l
   700C 44            [ 4]  283 	ld	b,h
   700D D1            [10]  284 	pop	de
                            285 ;src/video/draw.c:70: cpct_drawSprite(g_tile_border_2,  pvideo, 2, 4);
   700E 33            [ 6]  286 	inc	sp
   700F 33            [ 6]  287 	inc	sp
   7010 C5            [11]  288 	push	bc
   7011 C5            [11]  289 	push	bc
   7012 D5            [11]  290 	push	de
   7013 21 02 04      [10]  291 	ld	hl,#0x0402
   7016 E5            [11]  292 	push	hl
   7017 DD 6E F7      [19]  293 	ld	l,-9 (ix)
   701A DD 66 F8      [19]  294 	ld	h,-8 (ix)
   701D E5            [11]  295 	push	hl
   701E 21 99 44      [10]  296 	ld	hl,#_g_tile_border_2
   7021 E5            [11]  297 	push	hl
   7022 CD DC 7A      [17]  298 	call	_cpct_drawSprite
   7025 D1            [10]  299 	pop	de
   7026 C1            [10]  300 	pop	bc
                            301 ;src/video/draw.c:74: for (x = x1 + 2; x < (x2 - 2); x = x + 2) {
   7027 DD 7E FE      [19]  302 	ld	a,-2 (ix)
   702A DD 77 F7      [19]  303 	ld	-9 (ix),a
   702D                     304 00111$:
   702D DD 6E F7      [19]  305 	ld	l,-9 (ix)
   7030 26 00         [ 7]  306 	ld	h,#0x00
   7032 7D            [ 4]  307 	ld	a,l
   7033 DD 96 FB      [19]  308 	sub	a, -5 (ix)
   7036 7C            [ 4]  309 	ld	a,h
   7037 DD 9E FC      [19]  310 	sbc	a, -4 (ix)
   703A E2 3F 70      [10]  311 	jp	PO, 00144$
   703D EE 80         [ 7]  312 	xor	a, #0x80
   703F                     313 00144$:
   703F F2 69 70      [10]  314 	jp	P,00103$
                            315 ;src/video/draw.c:76: cpct_drawSprite(g_tile_border_7,  pvideo + (x - x1), 2, 4);
   7042 7D            [ 4]  316 	ld	a,l
   7043 DD 96 F9      [19]  317 	sub	a, -7 (ix)
   7046 6F            [ 4]  318 	ld	l,a
   7047 7C            [ 4]  319 	ld	a,h
   7048 DD 9E FA      [19]  320 	sbc	a, -6 (ix)
   704B 67            [ 4]  321 	ld	h,a
   704C 09            [11]  322 	add	hl,bc
   704D E5            [11]  323 	push	hl
   704E FD E1         [14]  324 	pop	iy
   7050 C5            [11]  325 	push	bc
   7051 D5            [11]  326 	push	de
   7052 21 02 04      [10]  327 	ld	hl,#0x0402
   7055 E5            [11]  328 	push	hl
   7056 FD E5         [15]  329 	push	iy
   7058 21 C1 44      [10]  330 	ld	hl,#_g_tile_border_7
   705B E5            [11]  331 	push	hl
   705C CD DC 7A      [17]  332 	call	_cpct_drawSprite
   705F D1            [10]  333 	pop	de
   7060 C1            [10]  334 	pop	bc
                            335 ;src/video/draw.c:74: for (x = x1 + 2; x < (x2 - 2); x = x + 2) {
   7061 DD 34 F7      [23]  336 	inc	-9 (ix)
   7064 DD 34 F7      [23]  337 	inc	-9 (ix)
   7067 18 C4         [12]  338 	jr	00111$
   7069                     339 00103$:
                            340 ;src/video/draw.c:80: cpct_drawSprite(g_tile_border_3,  pvideo + (frame_w - 2), 2, 4);
   7069 69            [ 4]  341 	ld	l, c
   706A 60            [ 4]  342 	ld	h, b
   706B 19            [11]  343 	add	hl,de
   706C 4D            [ 4]  344 	ld	c, l
   706D 44            [ 4]  345 	ld	b, h
   706E 21 02 04      [10]  346 	ld	hl,#0x0402
   7071 E5            [11]  347 	push	hl
   7072 C5            [11]  348 	push	bc
   7073 21 A1 44      [10]  349 	ld	hl,#_g_tile_border_3
   7076 E5            [11]  350 	push	hl
   7077 CD DC 7A      [17]  351 	call	_cpct_drawSprite
   707A DD F9         [10]  352 	ld	sp, ix
   707C DD E1         [14]  353 	pop	ix
   707E C9            [10]  354 	ret
                            355 ;src/video/draw.c:84: void drawStar(u8 color1, u8 color2, u8 xPos, u8 yPos) {
                            356 ;	---------------------------------
                            357 ; Function drawStar
                            358 ; ---------------------------------
   707F                     359 _drawStar::
                            360 ;src/video/draw.c:86: u8* pvideo = cpct_getScreenPtr(CPCT_VMEM_START, xPos, yPos);
   707F 21 05 00      [10]  361 	ld	hl, #5+0
   7082 39            [11]  362 	add	hl, sp
   7083 7E            [ 7]  363 	ld	a, (hl)
   7084 F5            [11]  364 	push	af
   7085 33            [ 6]  365 	inc	sp
   7086 21 05 00      [10]  366 	ld	hl, #5+0
   7089 39            [11]  367 	add	hl, sp
   708A 7E            [ 7]  368 	ld	a, (hl)
   708B F5            [11]  369 	push	af
   708C 33            [ 6]  370 	inc	sp
   708D 21 00 C0      [10]  371 	ld	hl,#0xC000
   7090 E5            [11]  372 	push	hl
   7091 CD 62 7E      [17]  373 	call	_cpct_getScreenPtr
                            374 ;src/video/draw.c:87: cpct_drawSolidBox(pvideo, cpct_px2byteM0(color1, color2), 1, 1);
   7094 E5            [11]  375 	push	hl
   7095 21 05 00      [10]  376 	ld	hl, #5+0
   7098 39            [11]  377 	add	hl, sp
   7099 7E            [ 7]  378 	ld	a, (hl)
   709A F5            [11]  379 	push	af
   709B 33            [ 6]  380 	inc	sp
   709C 21 05 00      [10]  381 	ld	hl, #5+0
   709F 39            [11]  382 	add	hl, sp
   70A0 7E            [ 7]  383 	ld	a, (hl)
   70A1 F5            [11]  384 	push	af
   70A2 33            [ 6]  385 	inc	sp
   70A3 CD 2F 7D      [17]  386 	call	_cpct_px2byteM0
   70A6 55            [ 4]  387 	ld	d,l
   70A7 C1            [10]  388 	pop	bc
   70A8 21 01 01      [10]  389 	ld	hl,#0x0101
   70AB E5            [11]  390 	push	hl
   70AC D5            [11]  391 	push	de
   70AD 33            [ 6]  392 	inc	sp
   70AE C5            [11]  393 	push	bc
   70AF CD 78 7D      [17]  394 	call	_cpct_drawSolidBox
   70B2 F1            [10]  395 	pop	af
   70B3 F1            [10]  396 	pop	af
   70B4 33            [ 6]  397 	inc	sp
   70B5 C9            [10]  398 	ret
                            399 ;src/video/draw.c:92: void drawStars(Coords *stars) {
                            400 ;	---------------------------------
                            401 ; Function drawStars
                            402 ; ---------------------------------
   70B6                     403 _drawStars::
   70B6 DD E5         [15]  404 	push	ix
   70B8 DD 21 00 00   [14]  405 	ld	ix,#0
   70BC DD 39         [15]  406 	add	ix,sp
   70BE F5            [11]  407 	push	af
   70BF 3B            [ 6]  408 	dec	sp
                            409 ;src/video/draw.c:99: for (x = 0; x < MAX_STARS + MAX_COLOR_STARS; x++) {
   70C0 DD 36 FD 00   [19]  410 	ld	-3 (ix),#0x00
   70C4                     411 00114$:
                            412 ;src/video/draw.c:105: drawStar(1, 0, stars[x].xPos, stars[x].yPos);
   70C4 DD 6E FD      [19]  413 	ld	l,-3 (ix)
   70C7 26 00         [ 7]  414 	ld	h,#0x00
   70C9 29            [11]  415 	add	hl, hl
   70CA 4D            [ 4]  416 	ld	c, l
   70CB 44            [ 4]  417 	ld	b, h
   70CC DD 7E 04      [19]  418 	ld	a,4 (ix)
   70CF 81            [ 4]  419 	add	a, c
   70D0 4F            [ 4]  420 	ld	c,a
   70D1 DD 7E 05      [19]  421 	ld	a,5 (ix)
   70D4 88            [ 4]  422 	adc	a, b
   70D5 47            [ 4]  423 	ld	b,a
   70D6 0A            [ 7]  424 	ld	a,(bc)
   70D7 DD 77 FF      [19]  425 	ld	-1 (ix),a
   70DA 59            [ 4]  426 	ld	e, c
   70DB 50            [ 4]  427 	ld	d, b
   70DC 13            [ 6]  428 	inc	de
   70DD 1A            [ 7]  429 	ld	a,(de)
   70DE DD 77 FE      [19]  430 	ld	-2 (ix),a
                            431 ;src/video/draw.c:101: if (x < MAX_STARS) {
   70E1 DD 7E FD      [19]  432 	ld	a,-3 (ix)
   70E4 D6 08         [ 7]  433 	sub	a, #0x08
   70E6 30 3A         [12]  434 	jr	NC,00109$
                            435 ;src/video/draw.c:103: if (starsCycles == 2) {
   70E8 3A FA 8A      [13]  436 	ld	a,(#_drawStars_starsCycles_1_119 + 0)
   70EB D6 02         [ 7]  437 	sub	a, #0x02
   70ED 20 21         [12]  438 	jr	NZ,00104$
                            439 ;src/video/draw.c:105: drawStar(1, 0, stars[x].xPos, stars[x].yPos);
   70EF C5            [11]  440 	push	bc
   70F0 DD 66 FE      [19]  441 	ld	h,-2 (ix)
   70F3 DD 6E FF      [19]  442 	ld	l,-1 (ix)
   70F6 E5            [11]  443 	push	hl
   70F7 21 01 00      [10]  444 	ld	hl,#0x0001
   70FA E5            [11]  445 	push	hl
   70FB CD 7F 70      [17]  446 	call	_drawStar
   70FE F1            [10]  447 	pop	af
   70FF F1            [10]  448 	pop	af
   7100 C1            [10]  449 	pop	bc
                            450 ;src/video/draw.c:106: stars[x].xPos--;
   7101 0A            [ 7]  451 	ld	a,(bc)
   7102 5F            [ 4]  452 	ld	e,a
   7103 1D            [ 4]  453 	dec	e
   7104 7B            [ 4]  454 	ld	a,e
   7105 02            [ 7]  455 	ld	(bc),a
                            456 ;src/video/draw.c:108: if (stars[x].xPos < MIN_X) {
   7106 7B            [ 4]  457 	ld	a,e
   7107 D6 09         [ 7]  458 	sub	a, #0x09
   7109 30 62         [12]  459 	jr	NC,00115$
                            460 ;src/video/draw.c:110: stars[x].xPos = MAX_X;
   710B 3E 4C         [ 7]  461 	ld	a,#0x4C
   710D 02            [ 7]  462 	ld	(bc),a
   710E 18 5D         [12]  463 	jr	00115$
   7110                     464 00104$:
                            465 ;src/video/draw.c:116: drawStar(0, 1, stars[x].xPos, stars[x].yPos);
   7110 DD 66 FE      [19]  466 	ld	h,-2 (ix)
   7113 DD 6E FF      [19]  467 	ld	l,-1 (ix)
   7116 E5            [11]  468 	push	hl
   7117 21 00 01      [10]  469 	ld	hl,#0x0100
   711A E5            [11]  470 	push	hl
   711B CD 7F 70      [17]  471 	call	_drawStar
   711E F1            [10]  472 	pop	af
   711F F1            [10]  473 	pop	af
   7120 18 4B         [12]  474 	jr	00115$
   7122                     475 00109$:
                            476 ;src/video/draw.c:122: pvideo = cpct_getScreenPtr(CPCT_VMEM_START,  stars[x].xPos, stars[x].yPos);
   7122 C5            [11]  477 	push	bc
   7123 D5            [11]  478 	push	de
   7124 DD 66 FE      [19]  479 	ld	h,-2 (ix)
   7127 DD 6E FF      [19]  480 	ld	l,-1 (ix)
   712A E5            [11]  481 	push	hl
   712B 21 00 C0      [10]  482 	ld	hl,#0xC000
   712E E5            [11]  483 	push	hl
   712F CD 62 7E      [17]  484 	call	_cpct_getScreenPtr
   7132 D1            [10]  485 	pop	de
   7133 C1            [10]  486 	pop	bc
                            487 ;src/video/draw.c:124: cpct_drawSprite(G_bluestar, pvideo, COLOR_STAR_W, COLOR_STAR_H);
   7134 E5            [11]  488 	push	hl
   7135 FD E1         [14]  489 	pop	iy
   7137 C5            [11]  490 	push	bc
   7138 D5            [11]  491 	push	de
   7139 21 02 07      [10]  492 	ld	hl,#0x0702
   713C E5            [11]  493 	push	hl
   713D FD E5         [15]  494 	push	iy
   713F 21 9C 4D      [10]  495 	ld	hl,#_G_bluestar
   7142 E5            [11]  496 	push	hl
   7143 CD DC 7A      [17]  497 	call	_cpct_drawSprite
   7146 D1            [10]  498 	pop	de
   7147 C1            [10]  499 	pop	bc
                            500 ;src/video/draw.c:126: stars[x].xPos--;
   7148 0A            [ 7]  501 	ld	a,(bc)
   7149 C6 FF         [ 7]  502 	add	a,#0xFF
   714B DD 77 FE      [19]  503 	ld	-2 (ix), a
   714E 02            [ 7]  504 	ld	(bc),a
                            505 ;src/video/draw.c:128: if (stars[x].xPos < MIN_X) {
   714F DD 7E FE      [19]  506 	ld	a,-2 (ix)
   7152 D6 09         [ 7]  507 	sub	a, #0x09
   7154 30 17         [12]  508 	jr	NC,00115$
                            509 ;src/video/draw.c:130: stars[x].xPos = MAX_X - COLOR_STAR_W;
   7156 3E 4A         [ 7]  510 	ld	a,#0x4A
   7158 02            [ 7]  511 	ld	(bc),a
                            512 ;src/video/draw.c:131: stars[x].yPos = MIN_Y + cpct_rand() % (MAX_Y - COLOR_STAR_H - MIN_Y);
   7159 D5            [11]  513 	push	de
   715A CD 04 7C      [17]  514 	call	_cpct_getRandom_mxor_u8
   715D 45            [ 4]  515 	ld	b,l
   715E 3E EA         [ 7]  516 	ld	a,#0xEA
   7160 F5            [11]  517 	push	af
   7161 33            [ 6]  518 	inc	sp
   7162 C5            [11]  519 	push	bc
   7163 33            [ 6]  520 	inc	sp
   7164 CD 81 7B      [17]  521 	call	__moduchar
   7167 F1            [10]  522 	pop	af
   7168 D1            [10]  523 	pop	de
   7169 7D            [ 4]  524 	ld	a,l
   716A C6 05         [ 7]  525 	add	a, #0x05
   716C 12            [ 7]  526 	ld	(de),a
   716D                     527 00115$:
                            528 ;src/video/draw.c:99: for (x = 0; x < MAX_STARS + MAX_COLOR_STARS; x++) {
   716D DD 34 FD      [23]  529 	inc	-3 (ix)
   7170 DD 7E FD      [19]  530 	ld	a,-3 (ix)
   7173 D6 0B         [ 7]  531 	sub	a, #0x0B
   7175 DA C4 70      [10]  532 	jp	C,00114$
                            533 ;src/video/draw.c:140: if (starsCycles++ == 2) starsCycles = 1;
   7178 21 FA 8A      [10]  534 	ld	hl,#_drawStars_starsCycles_1_119 + 0
   717B 4E            [ 7]  535 	ld	c, (hl)
   717C 21 FA 8A      [10]  536 	ld	hl, #_drawStars_starsCycles_1_119+0
   717F 34            [11]  537 	inc	(hl)
   7180 79            [ 4]  538 	ld	a,c
   7181 D6 02         [ 7]  539 	sub	a, #0x02
   7183 20 05         [12]  540 	jr	NZ,00116$
   7185 21 FA 8A      [10]  541 	ld	hl,#_drawStars_starsCycles_1_119 + 0
   7188 36 01         [10]  542 	ld	(hl), #0x01
   718A                     543 00116$:
   718A DD F9         [10]  544 	ld	sp, ix
   718C DD E1         [14]  545 	pop	ix
   718E C9            [10]  546 	ret
                            547 	.area _CODE
                            548 	.area _INITIALIZER
                            549 	.area _CABS (ABS)
