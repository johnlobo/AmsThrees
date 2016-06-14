                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.5 #9498 (Mac OS X x86_64)
                              4 ;--------------------------------------------------------
                              5 	.module keyboard
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _drawText
                             12 	.globl _strlen
                             13 	.globl _cpct_getScreenPtr
                             14 	.globl _cpct_drawSolidBox
                             15 	.globl _cpct_px2byteM0
                             16 	.globl _cpct_isAnyKeyPressed_f
                             17 	.globl _cpct_isAnyKeyPressed
                             18 	.globl _cpct_isKeyPressed
                             19 	.globl _cpct_scanKeyboard_f
                             20 	.globl _cpct_scanKeyboard
                             21 	.globl _wait4UserKeypress
                             22 	.globl _esperaUnaTecla
                             23 	.globl _waitKeyUp
                             24 	.globl _wait4Key
                             25 	.globl _redefineKey
                             26 ;--------------------------------------------------------
                             27 ; special function registers
                             28 ;--------------------------------------------------------
                             29 ;--------------------------------------------------------
                             30 ; ram data
                             31 ;--------------------------------------------------------
                             32 	.area _DATA
                             33 ;--------------------------------------------------------
                             34 ; ram data
                             35 ;--------------------------------------------------------
                             36 	.area _INITIALIZED
                             37 ;--------------------------------------------------------
                             38 ; absolute external ram data
                             39 ;--------------------------------------------------------
                             40 	.area _DABS (ABS)
                             41 ;--------------------------------------------------------
                             42 ; global & static initialisations
                             43 ;--------------------------------------------------------
                             44 	.area _HOME
                             45 	.area _GSINIT
                             46 	.area _GSFINAL
                             47 	.area _GSINIT
                             48 ;--------------------------------------------------------
                             49 ; Home
                             50 ;--------------------------------------------------------
                             51 	.area _HOME
                             52 	.area _HOME
                             53 ;--------------------------------------------------------
                             54 ; code
                             55 ;--------------------------------------------------------
                             56 	.area _CODE
                             57 ;src/utils/keyboard.c:30: u32 wait4UserKeypress() {
                             58 ;	---------------------------------
                             59 ; Function wait4UserKeypress
                             60 ; ---------------------------------
   8A89                      61 _wait4UserKeypress::
                             62 ;src/utils/keyboard.c:34: do {
   8A89 21 00 00      [10]   63 	ld	hl,#0x0000
   8A8C 5D            [ 4]   64 	ld	e,l
   8A8D 54            [ 4]   65 	ld	d,h
   8A8E                      66 00101$:
                             67 ;src/utils/keyboard.c:35: c++;                       // One more cycle
   8A8E 2C            [ 4]   68 	inc	l
   8A8F 20 07         [12]   69 	jr	NZ,00115$
   8A91 24            [ 4]   70 	inc	h
   8A92 20 04         [12]   71 	jr	NZ,00115$
   8A94 1C            [ 4]   72 	inc	e
   8A95 20 01         [12]   73 	jr	NZ,00115$
   8A97 14            [ 4]   74 	inc	d
   8A98                      75 00115$:
                             76 ;src/utils/keyboard.c:36: cpct_scanKeyboard_f();     // Scan the scan the keyboard
   8A98 E5            [11]   77 	push	hl
   8A99 D5            [11]   78 	push	de
   8A9A CD 2D 90      [17]   79 	call	_cpct_scanKeyboard_f
   8A9D CD DB 92      [17]   80 	call	_cpct_isAnyKeyPressed_f
   8AA0 7D            [ 4]   81 	ld	a,l
   8AA1 D1            [10]   82 	pop	de
   8AA2 E1            [10]   83 	pop	hl
   8AA3 B7            [ 4]   84 	or	a, a
   8AA4 28 E8         [12]   85 	jr	Z,00101$
                             86 ;src/utils/keyboard.c:39: return c;
   8AA6 C9            [10]   87 	ret
                             88 ;src/utils/keyboard.c:43: cpct_keyID esperaUnaTecla() {
                             89 ;	---------------------------------
                             90 ; Function esperaUnaTecla
                             91 ; ---------------------------------
   8AA7                      92 _esperaUnaTecla::
   8AA7 DD E5         [15]   93 	push	ix
   8AA9 DD 21 00 00   [14]   94 	ld	ix,#0
   8AAD DD 39         [15]   95 	add	ix,sp
   8AAF F5            [11]   96 	push	af
                             97 ;src/utils/keyboard.c:46: u8 i = 10, *keys = cpct_keyboardStatusBuffer + 9;
   8AB0 16 0A         [ 7]   98 	ld	d,#0x0A
                             99 ;src/utils/keyboard.c:50: do { cpct_scanKeyboard(); } while ( ! cpct_isAnyKeyPressed() );
   8AB2                     100 00101$:
   8AB2 D5            [11]  101 	push	de
   8AB3 CD F8 93      [17]  102 	call	_cpct_scanKeyboard
   8AB6 CD B8 92      [17]  103 	call	_cpct_isAnyKeyPressed
   8AB9 D1            [10]  104 	pop	de
   8ABA 7D            [ 4]  105 	ld	a,l
   8ABB B7            [ 4]  106 	or	a, a
   8ABC 28 F4         [12]  107 	jr	Z,00101$
                            108 ;src/utils/keyboard.c:53: do {
   8ABE 01 BC 91      [10]  109 	ld	bc,#(_cpct_keyboardStatusBuffer + 0x0009)
   8AC1 1E 0A         [ 7]  110 	ld	e,#0x0A
   8AC3                     111 00106$:
                            112 ;src/utils/keyboard.c:56: keypressed = *keys ^ 0xFF;
   8AC3 0A            [ 7]  113 	ld	a,(bc)
   8AC4 EE FF         [ 7]  114 	xor	a, #0xFF
   8AC6 DD 77 FE      [19]  115 	ld	-2 (ix),a
   8AC9 DD 36 FF 00   [19]  116 	ld	-1 (ix),#0x00
                            117 ;src/utils/keyboard.c:58: return (keypressed << 8) + (i - 1);  // Formato cpct_keyID: 8 primeros bits = máscara de tecla, 8 siguientes fila del teclado (0-9)
   8ACD DD 66 FE      [19]  118 	ld	h,-2 (ix)
   8AD0 2E 00         [ 7]  119 	ld	l,#0x00
                            120 ;src/utils/keyboard.c:57: if (keypressed)
   8AD2 DD 7E FF      [19]  121 	ld	a,-1 (ix)
   8AD5 DD B6 FE      [19]  122 	or	a,-2 (ix)
   8AD8 28 07         [12]  123 	jr	Z,00105$
                            124 ;src/utils/keyboard.c:58: return (keypressed << 8) + (i - 1);  // Formato cpct_keyID: 8 primeros bits = máscara de tecla, 8 siguientes fila del teclado (0-9)
   8ADA 4A            [ 4]  125 	ld	c,d
   8ADB 06 00         [ 7]  126 	ld	b,#0x00
   8ADD 0B            [ 6]  127 	dec	bc
   8ADE 09            [11]  128 	add	hl,bc
   8ADF 18 0A         [12]  129 	jr	00109$
   8AE1                     130 00105$:
                            131 ;src/utils/keyboard.c:59: keys--;
   8AE1 0B            [ 6]  132 	dec	bc
                            133 ;src/utils/keyboard.c:60: } while (--i);
   8AE2 1D            [ 4]  134 	dec	e
   8AE3 7B            [ 4]  135 	ld	a,e
   8AE4 57            [ 4]  136 	ld	d,a
                            137 ;src/utils/keyboard.c:61: return (keypressed << 8) + (i - 1);
   8AE5 B7            [ 4]  138 	or	a,a
   8AE6 20 DB         [12]  139 	jr	NZ,00106$
   8AE8 57            [ 4]  140 	ld	d,a
   8AE9 1B            [ 6]  141 	dec	de
   8AEA 19            [11]  142 	add	hl,de
   8AEB                     143 00109$:
   8AEB DD F9         [10]  144 	ld	sp, ix
   8AED DD E1         [14]  145 	pop	ix
   8AEF C9            [10]  146 	ret
                            147 ;src/utils/keyboard.c:64: void waitKeyUp(cpct_keyID key) {
                            148 ;	---------------------------------
                            149 ; Function waitKeyUp
                            150 ; ---------------------------------
   8AF0                     151 _waitKeyUp::
                            152 ;src/utils/keyboard.c:66: while (cpct_isKeyPressed(key)) {
   8AF0                     153 00101$:
   8AF0 C1            [10]  154 	pop	bc
   8AF1 E1            [10]  155 	pop	hl
   8AF2 E5            [11]  156 	push	hl
   8AF3 C5            [11]  157 	push	bc
   8AF4 CD 21 90      [17]  158 	call	_cpct_isKeyPressed
   8AF7 7D            [ 4]  159 	ld	a,l
   8AF8 B7            [ 4]  160 	or	a, a
   8AF9 C8            [11]  161 	ret	Z
                            162 ;src/utils/keyboard.c:67: cpct_scanKeyboard_f();
   8AFA CD 2D 90      [17]  163 	call	_cpct_scanKeyboard_f
   8AFD 18 F1         [12]  164 	jr	00101$
                            165 ;src/utils/keyboard.c:71: void wait4Key(cpct_keyID key) {
                            166 ;	---------------------------------
                            167 ; Function wait4Key
                            168 ; ---------------------------------
   8AFF                     169 _wait4Key::
                            170 ;src/utils/keyboard.c:72: do
   8AFF                     171 00101$:
                            172 ;src/utils/keyboard.c:73: cpct_scanKeyboard_f();
   8AFF CD 2D 90      [17]  173 	call	_cpct_scanKeyboard_f
                            174 ;src/utils/keyboard.c:74: while ( ! cpct_isKeyPressed(key) );
   8B02 C1            [10]  175 	pop	bc
   8B03 E1            [10]  176 	pop	hl
   8B04 E5            [11]  177 	push	hl
   8B05 C5            [11]  178 	push	bc
   8B06 CD 21 90      [17]  179 	call	_cpct_isKeyPressed
   8B09 7D            [ 4]  180 	ld	a,l
   8B0A B7            [ 4]  181 	or	a, a
   8B0B 28 F2         [12]  182 	jr	Z,00101$
                            183 ;src/utils/keyboard.c:75: do
   8B0D                     184 00104$:
                            185 ;src/utils/keyboard.c:76: cpct_scanKeyboard_f();
   8B0D CD 2D 90      [17]  186 	call	_cpct_scanKeyboard_f
                            187 ;src/utils/keyboard.c:77: while ( cpct_isKeyPressed(key) );
   8B10 C1            [10]  188 	pop	bc
   8B11 E1            [10]  189 	pop	hl
   8B12 E5            [11]  190 	push	hl
   8B13 C5            [11]  191 	push	bc
   8B14 CD 21 90      [17]  192 	call	_cpct_isKeyPressed
   8B17 7D            [ 4]  193 	ld	a,l
   8B18 B7            [ 4]  194 	or	a, a
   8B19 20 F2         [12]  195 	jr	NZ,00104$
   8B1B C9            [10]  196 	ret
                            197 ;src/utils/keyboard.c:80: cpct_keyID redefineKey(u8 text[]) {
                            198 ;	---------------------------------
                            199 ; Function redefineKey
                            200 ; ---------------------------------
   8B1C                     201 _redefineKey::
                            202 ;src/utils/keyboard.c:85: u8* pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 39 - 10 * FONT_W, 144);
   8B1C 21 09 90      [10]  203 	ld	hl,#0x9009
   8B1F E5            [11]  204 	push	hl
   8B20 21 00 C0      [10]  205 	ld	hl,#0xC000
   8B23 E5            [11]  206 	push	hl
   8B24 CD 29 94      [17]  207 	call	_cpct_getScreenPtr
                            208 ;src/utils/keyboard.c:86: cpct_drawSolidBox(pvideo, cpct_px2byteM0(5,5), 15 * FONT_W, FONT_H);
   8B27 E5            [11]  209 	push	hl
   8B28 21 05 05      [10]  210 	ld	hl,#0x0505
   8B2B E5            [11]  211 	push	hl
   8B2C CD F6 92      [17]  212 	call	_cpct_px2byteM0
   8B2F 55            [ 4]  213 	ld	d,l
   8B30 C1            [10]  214 	pop	bc
   8B31 21 2D 0B      [10]  215 	ld	hl,#0x0B2D
   8B34 E5            [11]  216 	push	hl
   8B35 D5            [11]  217 	push	de
   8B36 33            [ 6]  218 	inc	sp
   8B37 C5            [11]  219 	push	bc
   8B38 CD 3F 93      [17]  220 	call	_cpct_drawSolidBox
   8B3B F1            [10]  221 	pop	af
   8B3C F1            [10]  222 	pop	af
   8B3D 33            [ 6]  223 	inc	sp
                            224 ;src/utils/keyboard.c:88: x = strlen(text);
   8B3E C1            [10]  225 	pop	bc
   8B3F E1            [10]  226 	pop	hl
   8B40 E5            [11]  227 	push	hl
   8B41 C5            [11]  228 	push	bc
   8B42 E5            [11]  229 	push	hl
   8B43 CD 20 93      [17]  230 	call	_strlen
   8B46 F1            [10]  231 	pop	af
                            232 ;src/utils/keyboard.c:90: drawText(text, 39 - ((x / 2) * FONT_W), 144,1);
   8B47 CB 3D         [ 8]  233 	srl	l
   8B49 4D            [ 4]  234 	ld	c,l
   8B4A 29            [11]  235 	add	hl, hl
   8B4B 09            [11]  236 	add	hl, bc
   8B4C 4D            [ 4]  237 	ld	c,l
   8B4D 3E 27         [ 7]  238 	ld	a,#0x27
   8B4F 91            [ 4]  239 	sub	a, c
   8B50 47            [ 4]  240 	ld	b,a
   8B51 21 90 01      [10]  241 	ld	hl,#0x0190
   8B54 E5            [11]  242 	push	hl
   8B55 C5            [11]  243 	push	bc
   8B56 33            [ 6]  244 	inc	sp
   8B57 21 05 00      [10]  245 	ld	hl, #5
   8B5A 39            [11]  246 	add	hl, sp
   8B5B 4E            [ 7]  247 	ld	c, (hl)
   8B5C 23            [ 6]  248 	inc	hl
   8B5D 46            [ 7]  249 	ld	b, (hl)
   8B5E C5            [11]  250 	push	bc
   8B5F CD 6D 85      [17]  251 	call	_drawText
   8B62 F1            [10]  252 	pop	af
   8B63 F1            [10]  253 	pop	af
   8B64 33            [ 6]  254 	inc	sp
                            255 ;src/utils/keyboard.c:92: key = esperaUnaTecla();
   8B65 CD A7 8A      [17]  256 	call	_esperaUnaTecla
                            257 ;src/utils/keyboard.c:93: waitKeyUp(key);
   8B68 E5            [11]  258 	push	hl
   8B69 E5            [11]  259 	push	hl
   8B6A CD F0 8A      [17]  260 	call	_waitKeyUp
   8B6D F1            [10]  261 	pop	af
   8B6E E1            [10]  262 	pop	hl
                            263 ;src/utils/keyboard.c:95: return key;
   8B6F C9            [10]  264 	ret
                            265 	.area _CODE
                            266 	.area _INITIALIZER
                            267 	.area _CABS (ABS)
