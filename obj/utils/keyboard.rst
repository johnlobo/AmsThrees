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
   6DBD                      61 _wait4UserKeypress::
                             62 ;src/utils/keyboard.c:34: do {
   6DBD 21 00 00      [10]   63 	ld	hl,#0x0000
   6DC0 5D            [ 4]   64 	ld	e,l
   6DC1 54            [ 4]   65 	ld	d,h
   6DC2                      66 00101$:
                             67 ;src/utils/keyboard.c:35: c++;                       // One more cycle
   6DC2 2C            [ 4]   68 	inc	l
   6DC3 20 07         [12]   69 	jr	NZ,00115$
   6DC5 24            [ 4]   70 	inc	h
   6DC6 20 04         [12]   71 	jr	NZ,00115$
   6DC8 1C            [ 4]   72 	inc	e
   6DC9 20 01         [12]   73 	jr	NZ,00115$
   6DCB 14            [ 4]   74 	inc	d
   6DCC                      75 00115$:
                             76 ;src/utils/keyboard.c:36: cpct_scanKeyboard_f();     // Scan the scan the keyboard
   6DCC E5            [11]   77 	push	hl
   6DCD D5            [11]   78 	push	de
   6DCE CD 3D 72      [17]   79 	call	_cpct_scanKeyboard_f
   6DD1 CD 14 7D      [17]   80 	call	_cpct_isAnyKeyPressed_f
   6DD4 7D            [ 4]   81 	ld	a,l
   6DD5 D1            [10]   82 	pop	de
   6DD6 E1            [10]   83 	pop	hl
   6DD7 B7            [ 4]   84 	or	a, a
   6DD8 28 E8         [12]   85 	jr	Z,00101$
                             86 ;src/utils/keyboard.c:39: return c;
   6DDA C9            [10]   87 	ret
                             88 ;src/utils/keyboard.c:43: cpct_keyID esperaUnaTecla() {
                             89 ;	---------------------------------
                             90 ; Function esperaUnaTecla
                             91 ; ---------------------------------
   6DDB                      92 _esperaUnaTecla::
   6DDB DD E5         [15]   93 	push	ix
   6DDD DD 21 00 00   [14]   94 	ld	ix,#0
   6DE1 DD 39         [15]   95 	add	ix,sp
   6DE3 F5            [11]   96 	push	af
                             97 ;src/utils/keyboard.c:46: u8 i = 10, *keys = cpct_keyboardStatusBuffer + 9;
   6DE4 16 0A         [ 7]   98 	ld	d,#0x0A
                             99 ;src/utils/keyboard.c:50: do { cpct_scanKeyboard(); } while ( ! cpct_isAnyKeyPressed() );
   6DE6                     100 00101$:
   6DE6 D5            [11]  101 	push	de
   6DE7 CD 31 7E      [17]  102 	call	_cpct_scanKeyboard
   6DEA CD F1 7C      [17]  103 	call	_cpct_isAnyKeyPressed
   6DED D1            [10]  104 	pop	de
   6DEE 7D            [ 4]  105 	ld	a,l
   6DEF B7            [ 4]  106 	or	a, a
   6DF0 28 F4         [12]  107 	jr	Z,00101$
                            108 ;src/utils/keyboard.c:53: do {
   6DF2 01 F5 7B      [10]  109 	ld	bc,#(_cpct_keyboardStatusBuffer + 0x0009)
   6DF5 1E 0A         [ 7]  110 	ld	e,#0x0A
   6DF7                     111 00106$:
                            112 ;src/utils/keyboard.c:56: keypressed = *keys ^ 0xFF;
   6DF7 0A            [ 7]  113 	ld	a,(bc)
   6DF8 EE FF         [ 7]  114 	xor	a, #0xFF
   6DFA DD 77 FE      [19]  115 	ld	-2 (ix),a
   6DFD DD 36 FF 00   [19]  116 	ld	-1 (ix),#0x00
                            117 ;src/utils/keyboard.c:58: return (keypressed << 8) + (i - 1);  // Formato cpct_keyID: 8 primeros bits = máscara de tecla, 8 siguientes fila del teclado (0-9)
   6E01 DD 66 FE      [19]  118 	ld	h,-2 (ix)
   6E04 2E 00         [ 7]  119 	ld	l,#0x00
                            120 ;src/utils/keyboard.c:57: if (keypressed)
   6E06 DD 7E FF      [19]  121 	ld	a,-1 (ix)
   6E09 DD B6 FE      [19]  122 	or	a,-2 (ix)
   6E0C 28 07         [12]  123 	jr	Z,00105$
                            124 ;src/utils/keyboard.c:58: return (keypressed << 8) + (i - 1);  // Formato cpct_keyID: 8 primeros bits = máscara de tecla, 8 siguientes fila del teclado (0-9)
   6E0E 4A            [ 4]  125 	ld	c,d
   6E0F 06 00         [ 7]  126 	ld	b,#0x00
   6E11 0B            [ 6]  127 	dec	bc
   6E12 09            [11]  128 	add	hl,bc
   6E13 18 0A         [12]  129 	jr	00109$
   6E15                     130 00105$:
                            131 ;src/utils/keyboard.c:59: keys--;
   6E15 0B            [ 6]  132 	dec	bc
                            133 ;src/utils/keyboard.c:60: } while (--i);
   6E16 1D            [ 4]  134 	dec	e
   6E17 7B            [ 4]  135 	ld	a,e
   6E18 57            [ 4]  136 	ld	d,a
                            137 ;src/utils/keyboard.c:61: return (keypressed << 8) + (i - 1);
   6E19 B7            [ 4]  138 	or	a,a
   6E1A 20 DB         [12]  139 	jr	NZ,00106$
   6E1C 57            [ 4]  140 	ld	d,a
   6E1D 1B            [ 6]  141 	dec	de
   6E1E 19            [11]  142 	add	hl,de
   6E1F                     143 00109$:
   6E1F DD F9         [10]  144 	ld	sp, ix
   6E21 DD E1         [14]  145 	pop	ix
   6E23 C9            [10]  146 	ret
                            147 ;src/utils/keyboard.c:64: void waitKeyUp(cpct_keyID key) {
                            148 ;	---------------------------------
                            149 ; Function waitKeyUp
                            150 ; ---------------------------------
   6E24                     151 _waitKeyUp::
                            152 ;src/utils/keyboard.c:66: while (cpct_isKeyPressed(key)) {
   6E24                     153 00101$:
   6E24 C1            [10]  154 	pop	bc
   6E25 E1            [10]  155 	pop	hl
   6E26 E5            [11]  156 	push	hl
   6E27 C5            [11]  157 	push	bc
   6E28 CD 31 72      [17]  158 	call	_cpct_isKeyPressed
   6E2B 7D            [ 4]  159 	ld	a,l
   6E2C B7            [ 4]  160 	or	a, a
   6E2D C8            [11]  161 	ret	Z
                            162 ;src/utils/keyboard.c:67: cpct_scanKeyboard_f();
   6E2E CD 3D 72      [17]  163 	call	_cpct_scanKeyboard_f
   6E31 18 F1         [12]  164 	jr	00101$
                            165 ;src/utils/keyboard.c:71: void wait4Key(cpct_keyID key) {
                            166 ;	---------------------------------
                            167 ; Function wait4Key
                            168 ; ---------------------------------
   6E33                     169 _wait4Key::
                            170 ;src/utils/keyboard.c:72: do
   6E33                     171 00101$:
                            172 ;src/utils/keyboard.c:73: cpct_scanKeyboard_f();
   6E33 CD 3D 72      [17]  173 	call	_cpct_scanKeyboard_f
                            174 ;src/utils/keyboard.c:74: while ( ! cpct_isKeyPressed(key) );
   6E36 C1            [10]  175 	pop	bc
   6E37 E1            [10]  176 	pop	hl
   6E38 E5            [11]  177 	push	hl
   6E39 C5            [11]  178 	push	bc
   6E3A CD 31 72      [17]  179 	call	_cpct_isKeyPressed
   6E3D 7D            [ 4]  180 	ld	a,l
   6E3E B7            [ 4]  181 	or	a, a
   6E3F 28 F2         [12]  182 	jr	Z,00101$
                            183 ;src/utils/keyboard.c:75: do
   6E41                     184 00104$:
                            185 ;src/utils/keyboard.c:76: cpct_scanKeyboard_f();
   6E41 CD 3D 72      [17]  186 	call	_cpct_scanKeyboard_f
                            187 ;src/utils/keyboard.c:77: while ( cpct_isKeyPressed(key) );
   6E44 C1            [10]  188 	pop	bc
   6E45 E1            [10]  189 	pop	hl
   6E46 E5            [11]  190 	push	hl
   6E47 C5            [11]  191 	push	bc
   6E48 CD 31 72      [17]  192 	call	_cpct_isKeyPressed
   6E4B 7D            [ 4]  193 	ld	a,l
   6E4C B7            [ 4]  194 	or	a, a
   6E4D 20 F2         [12]  195 	jr	NZ,00104$
   6E4F C9            [10]  196 	ret
                            197 ;src/utils/keyboard.c:80: cpct_keyID redefineKey(u8 text[]) {
                            198 ;	---------------------------------
                            199 ; Function redefineKey
                            200 ; ---------------------------------
   6E50                     201 _redefineKey::
                            202 ;src/utils/keyboard.c:85: u8* pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 39 - 10 * FONT_W, 144);
   6E50 21 09 90      [10]  203 	ld	hl,#0x9009
   6E53 E5            [11]  204 	push	hl
   6E54 21 00 C0      [10]  205 	ld	hl,#0xC000
   6E57 E5            [11]  206 	push	hl
   6E58 CD 62 7E      [17]  207 	call	_cpct_getScreenPtr
                            208 ;src/utils/keyboard.c:86: cpct_drawSolidBox(pvideo, cpct_px2byteM0(5,5), 15 * FONT_W, FONT_H);
   6E5B E5            [11]  209 	push	hl
   6E5C 21 05 05      [10]  210 	ld	hl,#0x0505
   6E5F E5            [11]  211 	push	hl
   6E60 CD 2F 7D      [17]  212 	call	_cpct_px2byteM0
   6E63 55            [ 4]  213 	ld	d,l
   6E64 C1            [10]  214 	pop	bc
   6E65 21 2D 0B      [10]  215 	ld	hl,#0x0B2D
   6E68 E5            [11]  216 	push	hl
   6E69 D5            [11]  217 	push	de
   6E6A 33            [ 6]  218 	inc	sp
   6E6B C5            [11]  219 	push	bc
   6E6C CD 78 7D      [17]  220 	call	_cpct_drawSolidBox
   6E6F F1            [10]  221 	pop	af
   6E70 F1            [10]  222 	pop	af
   6E71 33            [ 6]  223 	inc	sp
                            224 ;src/utils/keyboard.c:88: x = strlen(text);
   6E72 C1            [10]  225 	pop	bc
   6E73 E1            [10]  226 	pop	hl
   6E74 E5            [11]  227 	push	hl
   6E75 C5            [11]  228 	push	bc
   6E76 E5            [11]  229 	push	hl
   6E77 CD 59 7D      [17]  230 	call	_strlen
   6E7A F1            [10]  231 	pop	af
                            232 ;src/utils/keyboard.c:90: drawText(text, 39 - ((x / 2) * FONT_W), 144,1);
   6E7B CB 3D         [ 8]  233 	srl	l
   6E7D 4D            [ 4]  234 	ld	c,l
   6E7E 29            [11]  235 	add	hl, hl
   6E7F 09            [11]  236 	add	hl, bc
   6E80 4D            [ 4]  237 	ld	c,l
   6E81 3E 27         [ 7]  238 	ld	a,#0x27
   6E83 91            [ 4]  239 	sub	a, c
   6E84 47            [ 4]  240 	ld	b,a
   6E85 21 90 01      [10]  241 	ld	hl,#0x0190
   6E88 E5            [11]  242 	push	hl
   6E89 C5            [11]  243 	push	bc
   6E8A 33            [ 6]  244 	inc	sp
   6E8B 21 05 00      [10]  245 	ld	hl, #5
   6E8E 39            [11]  246 	add	hl, sp
   6E8F 4E            [ 7]  247 	ld	c, (hl)
   6E90 23            [ 6]  248 	inc	hl
   6E91 46            [ 7]  249 	ld	b, (hl)
   6E92 C5            [11]  250 	push	bc
   6E93 CD A1 68      [17]  251 	call	_drawText
   6E96 F1            [10]  252 	pop	af
   6E97 F1            [10]  253 	pop	af
   6E98 33            [ 6]  254 	inc	sp
                            255 ;src/utils/keyboard.c:92: key = esperaUnaTecla();
   6E99 CD DB 6D      [17]  256 	call	_esperaUnaTecla
                            257 ;src/utils/keyboard.c:93: waitKeyUp(key);
   6E9C E5            [11]  258 	push	hl
   6E9D E5            [11]  259 	push	hl
   6E9E CD 24 6E      [17]  260 	call	_waitKeyUp
   6EA1 F1            [10]  261 	pop	af
   6EA2 E1            [10]  262 	pop	hl
                            263 ;src/utils/keyboard.c:95: return key;
   6EA3 C9            [10]  264 	ret
                            265 	.area _CODE
                            266 	.area _INITIALIZER
                            267 	.area _CABS (ABS)
