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
   7B8F                      61 _wait4UserKeypress::
                             62 ;src/utils/keyboard.c:34: do {
   7B8F 21 00 00      [10]   63 	ld	hl,#0x0000
   7B92 5D            [ 4]   64 	ld	e,l
   7B93 54            [ 4]   65 	ld	d,h
   7B94                      66 00101$:
                             67 ;src/utils/keyboard.c:35: c++;                       // One more cycle
   7B94 2C            [ 4]   68 	inc	l
   7B95 20 07         [12]   69 	jr	NZ,00115$
   7B97 24            [ 4]   70 	inc	h
   7B98 20 04         [12]   71 	jr	NZ,00115$
   7B9A 1C            [ 4]   72 	inc	e
   7B9B 20 01         [12]   73 	jr	NZ,00115$
   7B9D 14            [ 4]   74 	inc	d
   7B9E                      75 00115$:
                             76 ;src/utils/keyboard.c:36: cpct_scanKeyboard_f();     // Scan the scan the keyboard
   7B9E E5            [11]   77 	push	hl
   7B9F D5            [11]   78 	push	de
   7BA0 CD 33 81      [17]   79 	call	_cpct_scanKeyboard_f
   7BA3 CD E1 83      [17]   80 	call	_cpct_isAnyKeyPressed_f
   7BA6 7D            [ 4]   81 	ld	a,l
   7BA7 D1            [10]   82 	pop	de
   7BA8 E1            [10]   83 	pop	hl
   7BA9 B7            [ 4]   84 	or	a, a
   7BAA 28 E8         [12]   85 	jr	Z,00101$
                             86 ;src/utils/keyboard.c:39: return c;
   7BAC C9            [10]   87 	ret
                             88 ;src/utils/keyboard.c:43: cpct_keyID esperaUnaTecla() {
                             89 ;	---------------------------------
                             90 ; Function esperaUnaTecla
                             91 ; ---------------------------------
   7BAD                      92 _esperaUnaTecla::
   7BAD DD E5         [15]   93 	push	ix
   7BAF DD 21 00 00   [14]   94 	ld	ix,#0
   7BB3 DD 39         [15]   95 	add	ix,sp
   7BB5 F5            [11]   96 	push	af
                             97 ;src/utils/keyboard.c:46: u8 i = 10, *keys = cpct_keyboardStatusBuffer + 9;
   7BB6 16 0A         [ 7]   98 	ld	d,#0x0A
                             99 ;src/utils/keyboard.c:50: do { cpct_scanKeyboard(); } while ( ! cpct_isAnyKeyPressed() );
   7BB8                     100 00101$:
   7BB8 D5            [11]  101 	push	de
   7BB9 CD FE 84      [17]  102 	call	_cpct_scanKeyboard
   7BBC CD BE 83      [17]  103 	call	_cpct_isAnyKeyPressed
   7BBF D1            [10]  104 	pop	de
   7BC0 7D            [ 4]  105 	ld	a,l
   7BC1 B7            [ 4]  106 	or	a, a
   7BC2 28 F4         [12]  107 	jr	Z,00101$
                            108 ;src/utils/keyboard.c:53: do {
   7BC4 01 C2 82      [10]  109 	ld	bc,#(_cpct_keyboardStatusBuffer + 0x0009)
   7BC7 1E 0A         [ 7]  110 	ld	e,#0x0A
   7BC9                     111 00106$:
                            112 ;src/utils/keyboard.c:56: keypressed = *keys ^ 0xFF;
   7BC9 0A            [ 7]  113 	ld	a,(bc)
   7BCA EE FF         [ 7]  114 	xor	a, #0xFF
   7BCC DD 77 FE      [19]  115 	ld	-2 (ix),a
   7BCF DD 36 FF 00   [19]  116 	ld	-1 (ix),#0x00
                            117 ;src/utils/keyboard.c:58: return (keypressed << 8) + (i - 1);  // Formato cpct_keyID: 8 primeros bits = máscara de tecla, 8 siguientes fila del teclado (0-9)
   7BD3 DD 66 FE      [19]  118 	ld	h,-2 (ix)
   7BD6 2E 00         [ 7]  119 	ld	l,#0x00
                            120 ;src/utils/keyboard.c:57: if (keypressed)
   7BD8 DD 7E FF      [19]  121 	ld	a,-1 (ix)
   7BDB DD B6 FE      [19]  122 	or	a,-2 (ix)
   7BDE 28 07         [12]  123 	jr	Z,00105$
                            124 ;src/utils/keyboard.c:58: return (keypressed << 8) + (i - 1);  // Formato cpct_keyID: 8 primeros bits = máscara de tecla, 8 siguientes fila del teclado (0-9)
   7BE0 4A            [ 4]  125 	ld	c,d
   7BE1 06 00         [ 7]  126 	ld	b,#0x00
   7BE3 0B            [ 6]  127 	dec	bc
   7BE4 09            [11]  128 	add	hl,bc
   7BE5 18 0A         [12]  129 	jr	00109$
   7BE7                     130 00105$:
                            131 ;src/utils/keyboard.c:59: keys--;
   7BE7 0B            [ 6]  132 	dec	bc
                            133 ;src/utils/keyboard.c:60: } while (--i);
   7BE8 1D            [ 4]  134 	dec	e
   7BE9 7B            [ 4]  135 	ld	a,e
   7BEA 57            [ 4]  136 	ld	d,a
                            137 ;src/utils/keyboard.c:61: return (keypressed << 8) + (i - 1);
   7BEB B7            [ 4]  138 	or	a,a
   7BEC 20 DB         [12]  139 	jr	NZ,00106$
   7BEE 57            [ 4]  140 	ld	d,a
   7BEF 1B            [ 6]  141 	dec	de
   7BF0 19            [11]  142 	add	hl,de
   7BF1                     143 00109$:
   7BF1 DD F9         [10]  144 	ld	sp, ix
   7BF3 DD E1         [14]  145 	pop	ix
   7BF5 C9            [10]  146 	ret
                            147 ;src/utils/keyboard.c:64: void waitKeyUp(cpct_keyID key) {
                            148 ;	---------------------------------
                            149 ; Function waitKeyUp
                            150 ; ---------------------------------
   7BF6                     151 _waitKeyUp::
                            152 ;src/utils/keyboard.c:66: while (cpct_isKeyPressed(key)) {
   7BF6                     153 00101$:
   7BF6 C1            [10]  154 	pop	bc
   7BF7 E1            [10]  155 	pop	hl
   7BF8 E5            [11]  156 	push	hl
   7BF9 C5            [11]  157 	push	bc
   7BFA CD 27 81      [17]  158 	call	_cpct_isKeyPressed
   7BFD 7D            [ 4]  159 	ld	a,l
   7BFE B7            [ 4]  160 	or	a, a
   7BFF C8            [11]  161 	ret	Z
                            162 ;src/utils/keyboard.c:67: cpct_scanKeyboard_f();
   7C00 CD 33 81      [17]  163 	call	_cpct_scanKeyboard_f
   7C03 18 F1         [12]  164 	jr	00101$
                            165 ;src/utils/keyboard.c:71: void wait4Key(cpct_keyID key) {
                            166 ;	---------------------------------
                            167 ; Function wait4Key
                            168 ; ---------------------------------
   7C05                     169 _wait4Key::
                            170 ;src/utils/keyboard.c:72: do
   7C05                     171 00101$:
                            172 ;src/utils/keyboard.c:73: cpct_scanKeyboard_f();
   7C05 CD 33 81      [17]  173 	call	_cpct_scanKeyboard_f
                            174 ;src/utils/keyboard.c:74: while ( ! cpct_isKeyPressed(key) );
   7C08 C1            [10]  175 	pop	bc
   7C09 E1            [10]  176 	pop	hl
   7C0A E5            [11]  177 	push	hl
   7C0B C5            [11]  178 	push	bc
   7C0C CD 27 81      [17]  179 	call	_cpct_isKeyPressed
   7C0F 7D            [ 4]  180 	ld	a,l
   7C10 B7            [ 4]  181 	or	a, a
   7C11 28 F2         [12]  182 	jr	Z,00101$
                            183 ;src/utils/keyboard.c:75: do
   7C13                     184 00104$:
                            185 ;src/utils/keyboard.c:76: cpct_scanKeyboard_f();
   7C13 CD 33 81      [17]  186 	call	_cpct_scanKeyboard_f
                            187 ;src/utils/keyboard.c:77: while ( cpct_isKeyPressed(key) );
   7C16 C1            [10]  188 	pop	bc
   7C17 E1            [10]  189 	pop	hl
   7C18 E5            [11]  190 	push	hl
   7C19 C5            [11]  191 	push	bc
   7C1A CD 27 81      [17]  192 	call	_cpct_isKeyPressed
   7C1D 7D            [ 4]  193 	ld	a,l
   7C1E B7            [ 4]  194 	or	a, a
   7C1F 20 F2         [12]  195 	jr	NZ,00104$
   7C21 C9            [10]  196 	ret
                            197 ;src/utils/keyboard.c:80: cpct_keyID redefineKey(u8 text[]) {
                            198 ;	---------------------------------
                            199 ; Function redefineKey
                            200 ; ---------------------------------
   7C22                     201 _redefineKey::
                            202 ;src/utils/keyboard.c:85: u8* pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 39 - 10 * FONT_W, 144);
   7C22 21 09 90      [10]  203 	ld	hl,#0x9009
   7C25 E5            [11]  204 	push	hl
   7C26 21 00 C0      [10]  205 	ld	hl,#0xC000
   7C29 E5            [11]  206 	push	hl
   7C2A CD 2F 85      [17]  207 	call	_cpct_getScreenPtr
                            208 ;src/utils/keyboard.c:86: cpct_drawSolidBox(pvideo, cpct_px2byteM0(5,5), 15 * FONT_W, FONT_H);
   7C2D E5            [11]  209 	push	hl
   7C2E 21 05 05      [10]  210 	ld	hl,#0x0505
   7C31 E5            [11]  211 	push	hl
   7C32 CD FC 83      [17]  212 	call	_cpct_px2byteM0
   7C35 55            [ 4]  213 	ld	d,l
   7C36 C1            [10]  214 	pop	bc
   7C37 21 2D 0B      [10]  215 	ld	hl,#0x0B2D
   7C3A E5            [11]  216 	push	hl
   7C3B D5            [11]  217 	push	de
   7C3C 33            [ 6]  218 	inc	sp
   7C3D C5            [11]  219 	push	bc
   7C3E CD 45 84      [17]  220 	call	_cpct_drawSolidBox
   7C41 F1            [10]  221 	pop	af
   7C42 F1            [10]  222 	pop	af
   7C43 33            [ 6]  223 	inc	sp
                            224 ;src/utils/keyboard.c:88: x = strlen(text);
   7C44 C1            [10]  225 	pop	bc
   7C45 E1            [10]  226 	pop	hl
   7C46 E5            [11]  227 	push	hl
   7C47 C5            [11]  228 	push	bc
   7C48 E5            [11]  229 	push	hl
   7C49 CD 26 84      [17]  230 	call	_strlen
   7C4C F1            [10]  231 	pop	af
                            232 ;src/utils/keyboard.c:90: drawText(text, 39 - ((x / 2) * FONT_W), 144,1);
   7C4D CB 3D         [ 8]  233 	srl	l
   7C4F 4D            [ 4]  234 	ld	c,l
   7C50 29            [11]  235 	add	hl, hl
   7C51 09            [11]  236 	add	hl, bc
   7C52 4D            [ 4]  237 	ld	c,l
   7C53 3E 27         [ 7]  238 	ld	a,#0x27
   7C55 91            [ 4]  239 	sub	a, c
   7C56 47            [ 4]  240 	ld	b,a
   7C57 21 90 01      [10]  241 	ld	hl,#0x0190
   7C5A E5            [11]  242 	push	hl
   7C5B C5            [11]  243 	push	bc
   7C5C 33            [ 6]  244 	inc	sp
   7C5D 21 05 00      [10]  245 	ld	hl, #5
   7C60 39            [11]  246 	add	hl, sp
   7C61 4E            [ 7]  247 	ld	c, (hl)
   7C62 23            [ 6]  248 	inc	hl
   7C63 46            [ 7]  249 	ld	b, (hl)
   7C64 C5            [11]  250 	push	bc
   7C65 CD 81 76      [17]  251 	call	_drawText
   7C68 F1            [10]  252 	pop	af
   7C69 F1            [10]  253 	pop	af
   7C6A 33            [ 6]  254 	inc	sp
                            255 ;src/utils/keyboard.c:92: key = esperaUnaTecla();
   7C6B CD AD 7B      [17]  256 	call	_esperaUnaTecla
                            257 ;src/utils/keyboard.c:93: waitKeyUp(key);
   7C6E E5            [11]  258 	push	hl
   7C6F E5            [11]  259 	push	hl
   7C70 CD F6 7B      [17]  260 	call	_waitKeyUp
   7C73 F1            [10]  261 	pop	af
   7C74 E1            [10]  262 	pop	hl
                            263 ;src/utils/keyboard.c:95: return key;
   7C75 C9            [10]  264 	ret
                            265 	.area _CODE
                            266 	.area _INITIALIZER
                            267 	.area _CABS (ABS)
