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
   7C01                      61 _wait4UserKeypress::
                             62 ;src/utils/keyboard.c:34: do {
   7C01 21 00 00      [10]   63 	ld	hl,#0x0000
   7C04 5D            [ 4]   64 	ld	e,l
   7C05 54            [ 4]   65 	ld	d,h
   7C06                      66 00101$:
                             67 ;src/utils/keyboard.c:35: c++;                       // One more cycle
   7C06 2C            [ 4]   68 	inc	l
   7C07 20 07         [12]   69 	jr	NZ,00115$
   7C09 24            [ 4]   70 	inc	h
   7C0A 20 04         [12]   71 	jr	NZ,00115$
   7C0C 1C            [ 4]   72 	inc	e
   7C0D 20 01         [12]   73 	jr	NZ,00115$
   7C0F 14            [ 4]   74 	inc	d
   7C10                      75 00115$:
                             76 ;src/utils/keyboard.c:36: cpct_scanKeyboard_f();     // Scan the scan the keyboard
   7C10 E5            [11]   77 	push	hl
   7C11 D5            [11]   78 	push	de
   7C12 CD A5 81      [17]   79 	call	_cpct_scanKeyboard_f
   7C15 CD 53 84      [17]   80 	call	_cpct_isAnyKeyPressed_f
   7C18 7D            [ 4]   81 	ld	a,l
   7C19 D1            [10]   82 	pop	de
   7C1A E1            [10]   83 	pop	hl
   7C1B B7            [ 4]   84 	or	a, a
   7C1C 28 E8         [12]   85 	jr	Z,00101$
                             86 ;src/utils/keyboard.c:39: return c;
   7C1E C9            [10]   87 	ret
                             88 ;src/utils/keyboard.c:43: cpct_keyID esperaUnaTecla() {
                             89 ;	---------------------------------
                             90 ; Function esperaUnaTecla
                             91 ; ---------------------------------
   7C1F                      92 _esperaUnaTecla::
   7C1F DD E5         [15]   93 	push	ix
   7C21 DD 21 00 00   [14]   94 	ld	ix,#0
   7C25 DD 39         [15]   95 	add	ix,sp
   7C27 F5            [11]   96 	push	af
                             97 ;src/utils/keyboard.c:46: u8 i = 10, *keys = cpct_keyboardStatusBuffer + 9;
   7C28 16 0A         [ 7]   98 	ld	d,#0x0A
                             99 ;src/utils/keyboard.c:50: do { cpct_scanKeyboard(); } while ( ! cpct_isAnyKeyPressed() );
   7C2A                     100 00101$:
   7C2A D5            [11]  101 	push	de
   7C2B CD 70 85      [17]  102 	call	_cpct_scanKeyboard
   7C2E CD 30 84      [17]  103 	call	_cpct_isAnyKeyPressed
   7C31 D1            [10]  104 	pop	de
   7C32 7D            [ 4]  105 	ld	a,l
   7C33 B7            [ 4]  106 	or	a, a
   7C34 28 F4         [12]  107 	jr	Z,00101$
                            108 ;src/utils/keyboard.c:53: do {
   7C36 01 34 83      [10]  109 	ld	bc,#(_cpct_keyboardStatusBuffer + 0x0009)
   7C39 1E 0A         [ 7]  110 	ld	e,#0x0A
   7C3B                     111 00106$:
                            112 ;src/utils/keyboard.c:56: keypressed = *keys ^ 0xFF;
   7C3B 0A            [ 7]  113 	ld	a,(bc)
   7C3C EE FF         [ 7]  114 	xor	a, #0xFF
   7C3E DD 77 FE      [19]  115 	ld	-2 (ix),a
   7C41 DD 36 FF 00   [19]  116 	ld	-1 (ix),#0x00
                            117 ;src/utils/keyboard.c:58: return (keypressed << 8) + (i - 1);  // Formato cpct_keyID: 8 primeros bits = máscara de tecla, 8 siguientes fila del teclado (0-9)
   7C45 DD 66 FE      [19]  118 	ld	h,-2 (ix)
   7C48 2E 00         [ 7]  119 	ld	l,#0x00
                            120 ;src/utils/keyboard.c:57: if (keypressed)
   7C4A DD 7E FF      [19]  121 	ld	a,-1 (ix)
   7C4D DD B6 FE      [19]  122 	or	a,-2 (ix)
   7C50 28 07         [12]  123 	jr	Z,00105$
                            124 ;src/utils/keyboard.c:58: return (keypressed << 8) + (i - 1);  // Formato cpct_keyID: 8 primeros bits = máscara de tecla, 8 siguientes fila del teclado (0-9)
   7C52 4A            [ 4]  125 	ld	c,d
   7C53 06 00         [ 7]  126 	ld	b,#0x00
   7C55 0B            [ 6]  127 	dec	bc
   7C56 09            [11]  128 	add	hl,bc
   7C57 18 0A         [12]  129 	jr	00109$
   7C59                     130 00105$:
                            131 ;src/utils/keyboard.c:59: keys--;
   7C59 0B            [ 6]  132 	dec	bc
                            133 ;src/utils/keyboard.c:60: } while (--i);
   7C5A 1D            [ 4]  134 	dec	e
   7C5B 7B            [ 4]  135 	ld	a,e
   7C5C 57            [ 4]  136 	ld	d,a
                            137 ;src/utils/keyboard.c:61: return (keypressed << 8) + (i - 1);
   7C5D B7            [ 4]  138 	or	a,a
   7C5E 20 DB         [12]  139 	jr	NZ,00106$
   7C60 57            [ 4]  140 	ld	d,a
   7C61 1B            [ 6]  141 	dec	de
   7C62 19            [11]  142 	add	hl,de
   7C63                     143 00109$:
   7C63 DD F9         [10]  144 	ld	sp, ix
   7C65 DD E1         [14]  145 	pop	ix
   7C67 C9            [10]  146 	ret
                            147 ;src/utils/keyboard.c:64: void waitKeyUp(cpct_keyID key) {
                            148 ;	---------------------------------
                            149 ; Function waitKeyUp
                            150 ; ---------------------------------
   7C68                     151 _waitKeyUp::
                            152 ;src/utils/keyboard.c:66: while (cpct_isKeyPressed(key)) {
   7C68                     153 00101$:
   7C68 C1            [10]  154 	pop	bc
   7C69 E1            [10]  155 	pop	hl
   7C6A E5            [11]  156 	push	hl
   7C6B C5            [11]  157 	push	bc
   7C6C CD 99 81      [17]  158 	call	_cpct_isKeyPressed
   7C6F 7D            [ 4]  159 	ld	a,l
   7C70 B7            [ 4]  160 	or	a, a
   7C71 C8            [11]  161 	ret	Z
                            162 ;src/utils/keyboard.c:67: cpct_scanKeyboard_f();
   7C72 CD A5 81      [17]  163 	call	_cpct_scanKeyboard_f
   7C75 18 F1         [12]  164 	jr	00101$
                            165 ;src/utils/keyboard.c:71: void wait4Key(cpct_keyID key) {
                            166 ;	---------------------------------
                            167 ; Function wait4Key
                            168 ; ---------------------------------
   7C77                     169 _wait4Key::
                            170 ;src/utils/keyboard.c:72: do
   7C77                     171 00101$:
                            172 ;src/utils/keyboard.c:73: cpct_scanKeyboard_f();
   7C77 CD A5 81      [17]  173 	call	_cpct_scanKeyboard_f
                            174 ;src/utils/keyboard.c:74: while ( ! cpct_isKeyPressed(key) );
   7C7A C1            [10]  175 	pop	bc
   7C7B E1            [10]  176 	pop	hl
   7C7C E5            [11]  177 	push	hl
   7C7D C5            [11]  178 	push	bc
   7C7E CD 99 81      [17]  179 	call	_cpct_isKeyPressed
   7C81 7D            [ 4]  180 	ld	a,l
   7C82 B7            [ 4]  181 	or	a, a
   7C83 28 F2         [12]  182 	jr	Z,00101$
                            183 ;src/utils/keyboard.c:75: do
   7C85                     184 00104$:
                            185 ;src/utils/keyboard.c:76: cpct_scanKeyboard_f();
   7C85 CD A5 81      [17]  186 	call	_cpct_scanKeyboard_f
                            187 ;src/utils/keyboard.c:77: while ( cpct_isKeyPressed(key) );
   7C88 C1            [10]  188 	pop	bc
   7C89 E1            [10]  189 	pop	hl
   7C8A E5            [11]  190 	push	hl
   7C8B C5            [11]  191 	push	bc
   7C8C CD 99 81      [17]  192 	call	_cpct_isKeyPressed
   7C8F 7D            [ 4]  193 	ld	a,l
   7C90 B7            [ 4]  194 	or	a, a
   7C91 20 F2         [12]  195 	jr	NZ,00104$
   7C93 C9            [10]  196 	ret
                            197 ;src/utils/keyboard.c:80: cpct_keyID redefineKey(u8 text[]) {
                            198 ;	---------------------------------
                            199 ; Function redefineKey
                            200 ; ---------------------------------
   7C94                     201 _redefineKey::
                            202 ;src/utils/keyboard.c:85: u8* pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 39 - 10 * FONT_W, 144);
   7C94 21 09 90      [10]  203 	ld	hl,#0x9009
   7C97 E5            [11]  204 	push	hl
   7C98 21 00 C0      [10]  205 	ld	hl,#0xC000
   7C9B E5            [11]  206 	push	hl
   7C9C CD A1 85      [17]  207 	call	_cpct_getScreenPtr
                            208 ;src/utils/keyboard.c:86: cpct_drawSolidBox(pvideo, cpct_px2byteM0(5,5), 15 * FONT_W, FONT_H);
   7C9F E5            [11]  209 	push	hl
   7CA0 21 05 05      [10]  210 	ld	hl,#0x0505
   7CA3 E5            [11]  211 	push	hl
   7CA4 CD 6E 84      [17]  212 	call	_cpct_px2byteM0
   7CA7 55            [ 4]  213 	ld	d,l
   7CA8 C1            [10]  214 	pop	bc
   7CA9 21 2D 0B      [10]  215 	ld	hl,#0x0B2D
   7CAC E5            [11]  216 	push	hl
   7CAD D5            [11]  217 	push	de
   7CAE 33            [ 6]  218 	inc	sp
   7CAF C5            [11]  219 	push	bc
   7CB0 CD B7 84      [17]  220 	call	_cpct_drawSolidBox
   7CB3 F1            [10]  221 	pop	af
   7CB4 F1            [10]  222 	pop	af
   7CB5 33            [ 6]  223 	inc	sp
                            224 ;src/utils/keyboard.c:88: x = strlen(text);
   7CB6 C1            [10]  225 	pop	bc
   7CB7 E1            [10]  226 	pop	hl
   7CB8 E5            [11]  227 	push	hl
   7CB9 C5            [11]  228 	push	bc
   7CBA E5            [11]  229 	push	hl
   7CBB CD 98 84      [17]  230 	call	_strlen
   7CBE F1            [10]  231 	pop	af
                            232 ;src/utils/keyboard.c:90: drawText(text, 39 - ((x / 2) * FONT_W), 144,1);
   7CBF CB 3D         [ 8]  233 	srl	l
   7CC1 4D            [ 4]  234 	ld	c,l
   7CC2 29            [11]  235 	add	hl, hl
   7CC3 09            [11]  236 	add	hl, bc
   7CC4 4D            [ 4]  237 	ld	c,l
   7CC5 3E 27         [ 7]  238 	ld	a,#0x27
   7CC7 91            [ 4]  239 	sub	a, c
   7CC8 47            [ 4]  240 	ld	b,a
   7CC9 21 90 01      [10]  241 	ld	hl,#0x0190
   7CCC E5            [11]  242 	push	hl
   7CCD C5            [11]  243 	push	bc
   7CCE 33            [ 6]  244 	inc	sp
   7CCF 21 05 00      [10]  245 	ld	hl, #5
   7CD2 39            [11]  246 	add	hl, sp
   7CD3 4E            [ 7]  247 	ld	c, (hl)
   7CD4 23            [ 6]  248 	inc	hl
   7CD5 46            [ 7]  249 	ld	b, (hl)
   7CD6 C5            [11]  250 	push	bc
   7CD7 CD F3 76      [17]  251 	call	_drawText
   7CDA F1            [10]  252 	pop	af
   7CDB F1            [10]  253 	pop	af
   7CDC 33            [ 6]  254 	inc	sp
                            255 ;src/utils/keyboard.c:92: key = esperaUnaTecla();
   7CDD CD 1F 7C      [17]  256 	call	_esperaUnaTecla
                            257 ;src/utils/keyboard.c:93: waitKeyUp(key);
   7CE0 E5            [11]  258 	push	hl
   7CE1 E5            [11]  259 	push	hl
   7CE2 CD 68 7C      [17]  260 	call	_waitKeyUp
   7CE5 F1            [10]  261 	pop	af
   7CE6 E1            [10]  262 	pop	hl
                            263 ;src/utils/keyboard.c:95: return key;
   7CE7 C9            [10]  264 	ret
                            265 	.area _CODE
                            266 	.area _INITIALIZER
                            267 	.area _CABS (ABS)
