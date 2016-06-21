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
   67C0                      58 _strLength::
                             59 ;src/text/text.c:26: while (str[result] != '\0') {
   67C0 0E 00         [ 7]   60 	ld	c,#0x00
   67C2                      61 00101$:
   67C2 21 02 00      [10]   62 	ld	hl, #2
   67C5 39            [11]   63 	add	hl, sp
   67C6 7E            [ 7]   64 	ld	a, (hl)
   67C7 23            [ 6]   65 	inc	hl
   67C8 66            [ 7]   66 	ld	h, (hl)
   67C9 6F            [ 4]   67 	ld	l, a
   67CA 06 00         [ 7]   68 	ld	b,#0x00
   67CC 09            [11]   69 	add	hl, bc
   67CD 7E            [ 7]   70 	ld	a,(hl)
   67CE B7            [ 4]   71 	or	a, a
   67CF 28 03         [12]   72 	jr	Z,00103$
                             73 ;src/text/text.c:27: result++;
   67D1 0C            [ 4]   74 	inc	c
   67D2 18 EE         [12]   75 	jr	00101$
   67D4                      76 00103$:
                             77 ;src/text/text.c:29: return result;
   67D4 69            [ 4]   78 	ld	l,c
   67D5 C9            [10]   79 	ret
                             80 ;src/text/text.c:35: void strCopy(i8* to, const i8* from) {
                             81 ;	---------------------------------
                             82 ; Function strCopy
                             83 ; ---------------------------------
   67D6                      84 _strCopy::
   67D6 DD E5         [15]   85 	push	ix
   67D8 DD 21 00 00   [14]   86 	ld	ix,#0
   67DC DD 39         [15]   87 	add	ix,sp
   67DE 3B            [ 6]   88 	dec	sp
                             89 ;src/text/text.c:38: while (i) {
   67DF DD 4E 06      [19]   90 	ld	c,6 (ix)
   67E2 DD 46 07      [19]   91 	ld	b,7 (ix)
   67E5 DD 5E 04      [19]   92 	ld	e,4 (ix)
   67E8 DD 56 05      [19]   93 	ld	d,5 (ix)
   67EB DD 36 FF 1E   [19]   94 	ld	-1 (ix),#0x1E
   67EF                      95 00101$:
   67EF DD 7E FF      [19]   96 	ld	a,-1 (ix)
   67F2 B7            [ 4]   97 	or	a, a
   67F3 28 09         [12]   98 	jr	Z,00104$
                             99 ;src/text/text.c:39: *to++ = *from++;
   67F5 0A            [ 7]  100 	ld	a,(bc)
   67F6 03            [ 6]  101 	inc	bc
   67F7 12            [ 7]  102 	ld	(de),a
   67F8 13            [ 6]  103 	inc	de
                            104 ;src/text/text.c:40: i--;
   67F9 DD 35 FF      [23]  105 	dec	-1 (ix)
   67FC 18 F1         [12]  106 	jr	00101$
   67FE                     107 00104$:
   67FE 33            [ 6]  108 	inc	sp
   67FF DD E1         [14]  109 	pop	ix
   6801 C9            [10]  110 	ret
                            111 ;src/text/text.c:44: void drawNumber(u16 aNumber, u8 length, u8 xPos, u8 yPos) {
                            112 ;	---------------------------------
                            113 ; Function drawNumber
                            114 ; ---------------------------------
   6802                     115 _drawNumber::
   6802 DD E5         [15]  116 	push	ix
   6804 DD 21 00 00   [14]  117 	ld	ix,#0
   6808 DD 39         [15]  118 	add	ix,sp
   680A 21 F8 FF      [10]  119 	ld	hl,#-8
   680D 39            [11]  120 	add	hl,sp
   680E F9            [ 6]  121 	ld	sp,hl
                            122 ;src/text/text.c:52: itoa(aNumber, str, 10);
   680F 21 01 00      [10]  123 	ld	hl,#0x0001
   6812 39            [11]  124 	add	hl,sp
   6813 4D            [ 4]  125 	ld	c,l
   6814 44            [ 4]  126 	ld	b,h
   6815 59            [ 4]  127 	ld	e, c
   6816 50            [ 4]  128 	ld	d, b
   6817 C5            [11]  129 	push	bc
   6818 21 0A 00      [10]  130 	ld	hl,#0x000A
   681B E5            [11]  131 	push	hl
   681C D5            [11]  132 	push	de
   681D DD 6E 04      [19]  133 	ld	l,4 (ix)
   6820 DD 66 05      [19]  134 	ld	h,5 (ix)
   6823 E5            [11]  135 	push	hl
   6824 CD 90 6C      [17]  136 	call	_itoa
   6827 21 06 00      [10]  137 	ld	hl,#6
   682A 39            [11]  138 	add	hl,sp
   682B F9            [ 6]  139 	ld	sp,hl
   682C C1            [10]  140 	pop	bc
                            141 ;src/text/text.c:54: zeros = length - strLength(str);
   682D 59            [ 4]  142 	ld	e, c
   682E 50            [ 4]  143 	ld	d, b
   682F C5            [11]  144 	push	bc
   6830 D5            [11]  145 	push	de
   6831 CD C0 67      [17]  146 	call	_strLength
   6834 F1            [10]  147 	pop	af
   6835 C1            [10]  148 	pop	bc
   6836 DD 7E 06      [19]  149 	ld	a,6 (ix)
   6839 95            [ 4]  150 	sub	a, l
   683A DD 77 F8      [19]  151 	ld	-8 (ix),a
                            152 ;src/text/text.c:56: number = str[x];
   683D 0A            [ 7]  153 	ld	a,(bc)
   683E 5F            [ 4]  154 	ld	e,a
                            155 ;src/text/text.c:58: while (number != '\0') {
   683F DD 36 FF 00   [19]  156 	ld	-1 (ix),#0x00
   6843                     157 00101$:
   6843 7B            [ 4]  158 	ld	a,e
   6844 B7            [ 4]  159 	or	a, a
   6845 28 55         [12]  160 	jr	Z,00104$
                            161 ;src/text/text.c:60: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, (zeros + x) * FONT_W + xPos, yPos);
   6847 DD 7E F8      [19]  162 	ld	a,-8 (ix)
   684A DD 86 FF      [19]  163 	add	a, -1 (ix)
   684D 6F            [ 4]  164 	ld	l,a
   684E D5            [11]  165 	push	de
   684F 5D            [ 4]  166 	ld	e,l
   6850 29            [11]  167 	add	hl, hl
   6851 19            [11]  168 	add	hl, de
   6852 D1            [10]  169 	pop	de
   6853 7D            [ 4]  170 	ld	a,l
   6854 DD 86 07      [19]  171 	add	a, 7 (ix)
   6857 57            [ 4]  172 	ld	d,a
   6858 C5            [11]  173 	push	bc
   6859 D5            [11]  174 	push	de
   685A DD 7E 08      [19]  175 	ld	a,8 (ix)
   685D F5            [11]  176 	push	af
   685E 33            [ 6]  177 	inc	sp
   685F D5            [11]  178 	push	de
   6860 33            [ 6]  179 	inc	sp
   6861 21 00 C0      [10]  180 	ld	hl,#0xC000
   6864 E5            [11]  181 	push	hl
   6865 CD 62 7E      [17]  182 	call	_cpct_getScreenPtr
   6868 D1            [10]  183 	pop	de
   6869 C1            [10]  184 	pop	bc
                            185 ;src/text/text.c:61: cpct_drawSprite(G_numbers_big[number - 48], pvideo, FONT_W, FONT_H);
   686A E5            [11]  186 	push	hl
   686B FD E1         [14]  187 	pop	iy
   686D 16 00         [ 7]  188 	ld	d,#0x00
   686F 7B            [ 4]  189 	ld	a,e
   6870 C6 D0         [ 7]  190 	add	a,#0xD0
   6872 5F            [ 4]  191 	ld	e,a
   6873 7A            [ 4]  192 	ld	a,d
   6874 CE FF         [ 7]  193 	adc	a,#0xFF
   6876 57            [ 4]  194 	ld	d,a
   6877 6B            [ 4]  195 	ld	l, e
   6878 62            [ 4]  196 	ld	h, d
   6879 29            [11]  197 	add	hl, hl
   687A 29            [11]  198 	add	hl, hl
   687B 29            [11]  199 	add	hl, hl
   687C 29            [11]  200 	add	hl, hl
   687D 29            [11]  201 	add	hl, hl
   687E 19            [11]  202 	add	hl, de
   687F 11 80 4B      [10]  203 	ld	de,#_G_numbers_big
   6882 19            [11]  204 	add	hl,de
   6883 EB            [ 4]  205 	ex	de,hl
   6884 C5            [11]  206 	push	bc
   6885 21 03 0B      [10]  207 	ld	hl,#0x0B03
   6888 E5            [11]  208 	push	hl
   6889 FD E5         [15]  209 	push	iy
   688B D5            [11]  210 	push	de
   688C CD DC 7A      [17]  211 	call	_cpct_drawSprite
   688F C1            [10]  212 	pop	bc
                            213 ;src/text/text.c:63: number = str[++x];
   6890 DD 34 FF      [23]  214 	inc	-1 (ix)
   6893 DD 6E FF      [19]  215 	ld	l,-1 (ix)
   6896 26 00         [ 7]  216 	ld	h,#0x00
   6898 09            [11]  217 	add	hl,bc
   6899 5E            [ 7]  218 	ld	e,(hl)
   689A 18 A7         [12]  219 	jr	00101$
   689C                     220 00104$:
   689C DD F9         [10]  221 	ld	sp, ix
   689E DD E1         [14]  222 	pop	ix
   68A0 C9            [10]  223 	ret
                            224 ;src/text/text.c:69: void drawText(u8 text[], u8 xPos, u8 yPos, u8 centered) {
                            225 ;	---------------------------------
                            226 ; Function drawText
                            227 ; ---------------------------------
   68A1                     228 _drawText::
   68A1 DD E5         [15]  229 	push	ix
   68A3 DD 21 00 00   [14]  230 	ld	ix,#0
   68A7 DD 39         [15]  231 	add	ix,sp
   68A9 F5            [11]  232 	push	af
   68AA F5            [11]  233 	push	af
   68AB 3B            [ 6]  234 	dec	sp
                            235 ;src/text/text.c:75: if (centered) {
   68AC DD 7E 08      [19]  236 	ld	a,8 (ix)
   68AF B7            [ 4]  237 	or	a, a
   68B0 28 16         [12]  238 	jr	Z,00102$
                            239 ;src/text/text.c:76: x = strLength(text);
   68B2 DD 6E 04      [19]  240 	ld	l,4 (ix)
   68B5 DD 66 05      [19]  241 	ld	h,5 (ix)
   68B8 E5            [11]  242 	push	hl
   68B9 CD C0 67      [17]  243 	call	_strLength
   68BC F1            [10]  244 	pop	af
                            245 ;src/text/text.c:77: xPos = 39 - (x / 2) * FONT_W;
   68BD CB 3D         [ 8]  246 	srl	l
   68BF 4D            [ 4]  247 	ld	c,l
   68C0 29            [11]  248 	add	hl, hl
   68C1 09            [11]  249 	add	hl, bc
   68C2 3E 27         [ 7]  250 	ld	a,#0x27
   68C4 95            [ 4]  251 	sub	a, l
   68C5 DD 77 06      [19]  252 	ld	6 (ix),a
   68C8                     253 00102$:
                            254 ;src/text/text.c:81: character = text[x];
   68C8 DD 4E 04      [19]  255 	ld	c,4 (ix)
   68CB DD 46 05      [19]  256 	ld	b,5 (ix)
   68CE 0A            [ 7]  257 	ld	a,(bc)
   68CF DD 77 FC      [19]  258 	ld	-4 (ix),a
                            259 ;src/text/text.c:83: while (character != '\0') {
   68D2 DD 36 FB 00   [19]  260 	ld	-5 (ix),#0x00
   68D6 DD 36 FF 00   [19]  261 	ld	-1 (ix),#0x00
   68DA                     262 00109$:
   68DA DD 7E FC      [19]  263 	ld	a,-4 (ix)
   68DD B7            [ 4]  264 	or	a, a
   68DE CA 7F 69      [10]  265 	jp	Z,00112$
                            266 ;src/text/text.c:85: pvideo = cpct_getScreenPtr(CPCT_VMEM_START, (x * FONT_W) + xPos, yPos);
   68E1 DD 7E FF      [19]  267 	ld	a,-1 (ix)
   68E4 DD 86 06      [19]  268 	add	a, 6 (ix)
   68E7 57            [ 4]  269 	ld	d,a
   68E8 C5            [11]  270 	push	bc
   68E9 DD 7E 07      [19]  271 	ld	a,7 (ix)
   68EC F5            [11]  272 	push	af
   68ED 33            [ 6]  273 	inc	sp
   68EE D5            [11]  274 	push	de
   68EF 33            [ 6]  275 	inc	sp
   68F0 21 00 C0      [10]  276 	ld	hl,#0xC000
   68F3 E5            [11]  277 	push	hl
   68F4 CD 62 7E      [17]  278 	call	_cpct_getScreenPtr
   68F7 C1            [10]  279 	pop	bc
                            280 ;src/text/text.c:90: cpct_drawSprite(G_numbers_big[character - 48], pvideo, FONT_W, FONT_H);
   68F8 DD 75 FD      [19]  281 	ld	-3 (ix),l
   68FB DD 74 FE      [19]  282 	ld	-2 (ix),h
   68FE DD 5E FC      [19]  283 	ld	e,-4 (ix)
   6901 16 00         [ 7]  284 	ld	d,#0x00
                            285 ;src/text/text.c:88: if (character >= 48 && character <= 57) {
   6903 DD 7E FC      [19]  286 	ld	a,-4 (ix)
   6906 D6 30         [ 7]  287 	sub	a, #0x30
   6908 38 2F         [12]  288 	jr	C,00106$
   690A 3E 39         [ 7]  289 	ld	a,#0x39
   690C DD 96 FC      [19]  290 	sub	a, -4 (ix)
   690F 38 28         [12]  291 	jr	C,00106$
                            292 ;src/text/text.c:90: cpct_drawSprite(G_numbers_big[character - 48], pvideo, FONT_W, FONT_H);
   6911 7B            [ 4]  293 	ld	a,e
   6912 C6 D0         [ 7]  294 	add	a,#0xD0
   6914 5F            [ 4]  295 	ld	e,a
   6915 7A            [ 4]  296 	ld	a,d
   6916 CE FF         [ 7]  297 	adc	a,#0xFF
   6918 57            [ 4]  298 	ld	d,a
   6919 6B            [ 4]  299 	ld	l, e
   691A 62            [ 4]  300 	ld	h, d
   691B 29            [11]  301 	add	hl, hl
   691C 29            [11]  302 	add	hl, hl
   691D 29            [11]  303 	add	hl, hl
   691E 29            [11]  304 	add	hl, hl
   691F 29            [11]  305 	add	hl, hl
   6920 19            [11]  306 	add	hl, de
   6921 11 80 4B      [10]  307 	ld	de,#_G_numbers_big
   6924 19            [11]  308 	add	hl,de
   6925 EB            [ 4]  309 	ex	de,hl
   6926 C5            [11]  310 	push	bc
   6927 21 03 0B      [10]  311 	ld	hl,#0x0B03
   692A E5            [11]  312 	push	hl
   692B DD 6E FD      [19]  313 	ld	l,-3 (ix)
   692E DD 66 FE      [19]  314 	ld	h,-2 (ix)
   6931 E5            [11]  315 	push	hl
   6932 D5            [11]  316 	push	de
   6933 CD DC 7A      [17]  317 	call	_cpct_drawSprite
   6936 C1            [10]  318 	pop	bc
   6937 18 2D         [12]  319 	jr	00107$
   6939                     320 00106$:
                            321 ;src/text/text.c:93: else if (character != 32) { //32 = SPACE
   6939 DD 7E FC      [19]  322 	ld	a,-4 (ix)
   693C D6 20         [ 7]  323 	sub	a, #0x20
   693E 28 26         [12]  324 	jr	Z,00107$
                            325 ;src/text/text.c:95: cpct_drawSprite(g_font_big[character - 64], pvideo, FONT_W, FONT_H);
   6940 7B            [ 4]  326 	ld	a,e
   6941 C6 C0         [ 7]  327 	add	a,#0xC0
   6943 5F            [ 4]  328 	ld	e,a
   6944 7A            [ 4]  329 	ld	a,d
   6945 CE FF         [ 7]  330 	adc	a,#0xFF
   6947 57            [ 4]  331 	ld	d,a
   6948 6B            [ 4]  332 	ld	l, e
   6949 62            [ 4]  333 	ld	h, d
   694A 29            [11]  334 	add	hl, hl
   694B 29            [11]  335 	add	hl, hl
   694C 29            [11]  336 	add	hl, hl
   694D 29            [11]  337 	add	hl, hl
   694E 29            [11]  338 	add	hl, hl
   694F 19            [11]  339 	add	hl, de
   6950 11 79 46      [10]  340 	ld	de,#_g_font_big
   6953 19            [11]  341 	add	hl,de
   6954 EB            [ 4]  342 	ex	de,hl
   6955 C5            [11]  343 	push	bc
   6956 21 03 0B      [10]  344 	ld	hl,#0x0B03
   6959 E5            [11]  345 	push	hl
   695A DD 6E FD      [19]  346 	ld	l,-3 (ix)
   695D DD 66 FE      [19]  347 	ld	h,-2 (ix)
   6960 E5            [11]  348 	push	hl
   6961 D5            [11]  349 	push	de
   6962 CD DC 7A      [17]  350 	call	_cpct_drawSprite
   6965 C1            [10]  351 	pop	bc
   6966                     352 00107$:
                            353 ;src/text/text.c:98: character = text[++x];
   6966 DD 34 FF      [23]  354 	inc	-1 (ix)
   6969 DD 34 FF      [23]  355 	inc	-1 (ix)
   696C DD 34 FF      [23]  356 	inc	-1 (ix)
   696F DD 34 FB      [23]  357 	inc	-5 (ix)
   6972 DD 6E FB      [19]  358 	ld	l,-5 (ix)
   6975 26 00         [ 7]  359 	ld	h,#0x00
   6977 09            [11]  360 	add	hl,bc
   6978 7E            [ 7]  361 	ld	a,(hl)
   6979 DD 77 FC      [19]  362 	ld	-4 (ix),a
   697C C3 DA 68      [10]  363 	jp	00109$
   697F                     364 00112$:
   697F DD F9         [10]  365 	ld	sp, ix
   6981 DD E1         [14]  366 	pop	ix
   6983 C9            [10]  367 	ret
                            368 ;src/text/text.c:102: void moveCharacter(FChar *character) {
                            369 ;	---------------------------------
                            370 ; Function moveCharacter
                            371 ; ---------------------------------
   6984                     372 _moveCharacter::
   6984 DD E5         [15]  373 	push	ix
   6986 DD 21 00 00   [14]  374 	ld	ix,#0
   698A DD 39         [15]  375 	add	ix,sp
   698C 21 F3 FF      [10]  376 	ld	hl,#-13
   698F 39            [11]  377 	add	hl,sp
   6990 F9            [ 6]  378 	ld	sp,hl
                            379 ;src/text/text.c:104: if (character->phase != FALLING_TEXT_MAX_BOUNCES) {
   6991 DD 4E 04      [19]  380 	ld	c,4 (ix)
   6994 DD 46 05      [19]  381 	ld	b,5 (ix)
   6997 0A            [ 7]  382 	ld	a,(bc)
   6998 57            [ 4]  383 	ld	d,a
                            384 ;src/text/text.c:109: if (character->yPos != character->startyPos) {
   6999 21 02 00      [10]  385 	ld	hl,#0x0002
   699C 09            [11]  386 	add	hl,bc
   699D DD 75 FE      [19]  387 	ld	-2 (ix),l
   69A0 DD 74 FF      [19]  388 	ld	-1 (ix),h
   69A3 DD 6E FE      [19]  389 	ld	l,-2 (ix)
   69A6 DD 66 FF      [19]  390 	ld	h,-1 (ix)
   69A9 5E            [ 7]  391 	ld	e,(hl)
                            392 ;src/text/text.c:111: clearWindow(character->xPos, character->yPos + (character->phase % 2 != 0 ? - FALLING_TEXT_SPEED : FALLING_TEXT_SPEED), FONT_W, FONT_H);
   69AA 21 01 00      [10]  393 	ld	hl,#0x0001
   69AD 09            [11]  394 	add	hl,bc
   69AE DD 75 FC      [19]  395 	ld	-4 (ix),l
   69B1 DD 74 FD      [19]  396 	ld	-3 (ix),h
                            397 ;src/text/text.c:143: drawText(character->character, character->xPos, character->yPos, 0);
   69B4 21 06 00      [10]  398 	ld	hl,#0x0006
   69B7 09            [11]  399 	add	hl,bc
   69B8 DD 75 FA      [19]  400 	ld	-6 (ix),l
   69BB DD 74 FB      [19]  401 	ld	-5 (ix),h
                            402 ;src/text/text.c:104: if (character->phase != FALLING_TEXT_MAX_BOUNCES) {
   69BE 7A            [ 4]  403 	ld	a,d
   69BF D6 06         [ 7]  404 	sub	a, #0x06
   69C1 CA B0 6A      [10]  405 	jp	Z,00111$
                            406 ;src/text/text.c:109: if (character->yPos != character->startyPos) {
   69C4 21 03 00      [10]  407 	ld	hl,#0x0003
   69C7 09            [11]  408 	add	hl,bc
   69C8 DD 75 F8      [19]  409 	ld	-8 (ix),l
   69CB DD 74 F9      [19]  410 	ld	-7 (ix),h
   69CE DD 6E F8      [19]  411 	ld	l,-8 (ix)
   69D1 DD 66 F9      [19]  412 	ld	h,-7 (ix)
   69D4 7E            [ 7]  413 	ld	a,(hl)
   69D5 DD 77 F7      [19]  414 	ld	-9 (ix),a
   69D8 7B            [ 4]  415 	ld	a,e
   69D9 DD 96 F7      [19]  416 	sub	a, -9 (ix)
   69DC 28 24         [12]  417 	jr	Z,00102$
                            418 ;src/text/text.c:111: clearWindow(character->xPos, character->yPos + (character->phase % 2 != 0 ? - FALLING_TEXT_SPEED : FALLING_TEXT_SPEED), FONT_W, FONT_H);
   69DE CB 42         [ 8]  419 	bit	0, d
   69E0 28 04         [12]  420 	jr	Z,00115$
   69E2 2E FD         [ 7]  421 	ld	l,#0xFD
   69E4 18 02         [12]  422 	jr	00116$
   69E6                     423 00115$:
   69E6 2E 03         [ 7]  424 	ld	l,#0x03
   69E8                     425 00116$:
   69E8 7B            [ 4]  426 	ld	a,e
   69E9 85            [ 4]  427 	add	a, l
   69EA 5F            [ 4]  428 	ld	e,a
   69EB DD 6E FC      [19]  429 	ld	l,-4 (ix)
   69EE DD 66 FD      [19]  430 	ld	h,-3 (ix)
   69F1 56            [ 7]  431 	ld	d,(hl)
   69F2 C5            [11]  432 	push	bc
   69F3 21 03 0B      [10]  433 	ld	hl,#0x0B03
   69F6 E5            [11]  434 	push	hl
   69F7 7B            [ 4]  435 	ld	a,e
   69F8 F5            [11]  436 	push	af
   69F9 33            [ 6]  437 	inc	sp
   69FA D5            [11]  438 	push	de
   69FB 33            [ 6]  439 	inc	sp
   69FC CD E3 71      [17]  440 	call	_clearWindow
   69FF F1            [10]  441 	pop	af
   6A00 F1            [10]  442 	pop	af
   6A01 C1            [10]  443 	pop	bc
   6A02                     444 00102$:
                            445 ;src/text/text.c:116: if (character->phase % 2 != 0) {
   6A02 0A            [ 7]  446 	ld	a,(bc)
   6A03 E6 01         [ 7]  447 	and	a, #0x01
   6A05 DD 77 F7      [19]  448 	ld	-9 (ix),a
                            449 ;src/text/text.c:109: if (character->yPos != character->startyPos) {
   6A08 DD 6E FE      [19]  450 	ld	l,-2 (ix)
   6A0B DD 66 FF      [19]  451 	ld	h,-1 (ix)
   6A0E 5E            [ 7]  452 	ld	e,(hl)
                            453 ;src/text/text.c:120: if (character->yPos >= character->destinationyPos) {
   6A0F 21 05 00      [10]  454 	ld	hl,#0x0005
   6A12 09            [11]  455 	add	hl,bc
   6A13 DD 75 F5      [19]  456 	ld	-11 (ix),l
   6A16 DD 74 F6      [19]  457 	ld	-10 (ix),h
                            458 ;src/text/text.c:124: character->destinationyPos = character->endyPos - ((character->endyPos - character->startyPos) / character->phase);
   6A19 21 04 00      [10]  459 	ld	hl,#0x0004
   6A1C 09            [11]  460 	add	hl,bc
   6A1D E3            [19]  461 	ex	(sp), hl
                            462 ;src/text/text.c:116: if (character->phase % 2 != 0) {
   6A1E DD 7E F7      [19]  463 	ld	a,-9 (ix)
   6A21 B7            [ 4]  464 	or	a, a
   6A22 28 48         [12]  465 	jr	Z,00108$
                            466 ;src/text/text.c:118: character->yPos += FALLING_TEXT_SPEED;
   6A24 1C            [ 4]  467 	inc	e
   6A25 1C            [ 4]  468 	inc	e
   6A26 1C            [ 4]  469 	inc	e
   6A27 DD 6E FE      [19]  470 	ld	l,-2 (ix)
   6A2A DD 66 FF      [19]  471 	ld	h,-1 (ix)
   6A2D 73            [ 7]  472 	ld	(hl),e
                            473 ;src/text/text.c:120: if (character->yPos >= character->destinationyPos) {
   6A2E DD 6E F5      [19]  474 	ld	l,-11 (ix)
   6A31 DD 66 F6      [19]  475 	ld	h,-10 (ix)
   6A34 56            [ 7]  476 	ld	d,(hl)
   6A35 7B            [ 4]  477 	ld	a,e
   6A36 92            [ 4]  478 	sub	a, d
   6A37 38 55         [12]  479 	jr	C,00109$
                            480 ;src/text/text.c:122: character->phase++;
   6A39 0A            [ 7]  481 	ld	a,(bc)
   6A3A 5F            [ 4]  482 	ld	e,a
   6A3B 1C            [ 4]  483 	inc	e
   6A3C 7B            [ 4]  484 	ld	a,e
   6A3D 02            [ 7]  485 	ld	(bc),a
                            486 ;src/text/text.c:124: character->destinationyPos = character->endyPos - ((character->endyPos - character->startyPos) / character->phase);
   6A3E E1            [10]  487 	pop	hl
   6A3F E5            [11]  488 	push	hl
   6A40 7E            [ 7]  489 	ld	a,(hl)
   6A41 DD 77 F7      [19]  490 	ld	-9 (ix), a
   6A44 4F            [ 4]  491 	ld	c, a
   6A45 06 00         [ 7]  492 	ld	b,#0x00
   6A47 DD 6E F8      [19]  493 	ld	l,-8 (ix)
   6A4A DD 66 F9      [19]  494 	ld	h,-7 (ix)
   6A4D 6E            [ 7]  495 	ld	l,(hl)
   6A4E 16 00         [ 7]  496 	ld	d,#0x00
   6A50 79            [ 4]  497 	ld	a,c
   6A51 95            [ 4]  498 	sub	a, l
   6A52 4F            [ 4]  499 	ld	c,a
   6A53 78            [ 4]  500 	ld	a,b
   6A54 9A            [ 4]  501 	sbc	a, d
   6A55 47            [ 4]  502 	ld	b,a
   6A56 16 00         [ 7]  503 	ld	d,#0x00
   6A58 D5            [11]  504 	push	de
   6A59 C5            [11]  505 	push	bc
   6A5A CD 82 7E      [17]  506 	call	__divsint
   6A5D F1            [10]  507 	pop	af
   6A5E F1            [10]  508 	pop	af
   6A5F DD 7E F7      [19]  509 	ld	a, -9 (ix)
   6A62 95            [ 4]  510 	sub	a, l
   6A63 DD 6E F5      [19]  511 	ld	l,-11 (ix)
   6A66 DD 66 F6      [19]  512 	ld	h,-10 (ix)
   6A69 77            [ 7]  513 	ld	(hl),a
   6A6A 18 22         [12]  514 	jr	00109$
   6A6C                     515 00108$:
                            516 ;src/text/text.c:131: character->yPos -= FALLING_TEXT_SPEED;
   6A6C 7B            [ 4]  517 	ld	a,e
   6A6D C6 FD         [ 7]  518 	add	a,#0xFD
   6A6F 5F            [ 4]  519 	ld	e,a
   6A70 DD 6E FE      [19]  520 	ld	l,-2 (ix)
   6A73 DD 66 FF      [19]  521 	ld	h,-1 (ix)
   6A76 73            [ 7]  522 	ld	(hl),e
                            523 ;src/text/text.c:133: if (character->yPos <= character->destinationyPos) {
   6A77 DD 6E F5      [19]  524 	ld	l,-11 (ix)
   6A7A DD 66 F6      [19]  525 	ld	h,-10 (ix)
   6A7D 7E            [ 7]  526 	ld	a, (hl)
   6A7E 93            [ 4]  527 	sub	a, e
   6A7F 38 0D         [12]  528 	jr	C,00109$
                            529 ;src/text/text.c:135: character->phase++;
   6A81 0A            [ 7]  530 	ld	a,(bc)
   6A82 3C            [ 4]  531 	inc	a
   6A83 02            [ 7]  532 	ld	(bc),a
                            533 ;src/text/text.c:137: character->destinationyPos = character->endyPos;
   6A84 E1            [10]  534 	pop	hl
   6A85 E5            [11]  535 	push	hl
   6A86 4E            [ 7]  536 	ld	c,(hl)
   6A87 DD 6E F5      [19]  537 	ld	l,-11 (ix)
   6A8A DD 66 F6      [19]  538 	ld	h,-10 (ix)
   6A8D 71            [ 7]  539 	ld	(hl),c
   6A8E                     540 00109$:
                            541 ;src/text/text.c:143: drawText(character->character, character->xPos, character->yPos, 0);
   6A8E DD 6E FE      [19]  542 	ld	l,-2 (ix)
   6A91 DD 66 FF      [19]  543 	ld	h,-1 (ix)
   6A94 46            [ 7]  544 	ld	b,(hl)
   6A95 DD 6E FC      [19]  545 	ld	l,-4 (ix)
   6A98 DD 66 FD      [19]  546 	ld	h,-3 (ix)
   6A9B 56            [ 7]  547 	ld	d,(hl)
   6A9C AF            [ 4]  548 	xor	a, a
   6A9D F5            [11]  549 	push	af
   6A9E 33            [ 6]  550 	inc	sp
   6A9F 4A            [ 4]  551 	ld	c, d
   6AA0 C5            [11]  552 	push	bc
   6AA1 DD 6E FA      [19]  553 	ld	l,-6 (ix)
   6AA4 DD 66 FB      [19]  554 	ld	h,-5 (ix)
   6AA7 E5            [11]  555 	push	hl
   6AA8 CD A1 68      [17]  556 	call	_drawText
   6AAB F1            [10]  557 	pop	af
   6AAC F1            [10]  558 	pop	af
   6AAD 33            [ 6]  559 	inc	sp
   6AAE 18 3A         [12]  560 	jr	00113$
   6AB0                     561 00111$:
                            562 ;src/text/text.c:147: clearWindow(character->xPos, character->yPos - FALLING_TEXT_SPEED, FONT_W, FONT_H);
   6AB0 7B            [ 4]  563 	ld	a,e
   6AB1 C6 FD         [ 7]  564 	add	a,#0xFD
   6AB3 57            [ 4]  565 	ld	d,a
   6AB4 DD 6E FC      [19]  566 	ld	l,-4 (ix)
   6AB7 DD 66 FD      [19]  567 	ld	h,-3 (ix)
   6ABA 46            [ 7]  568 	ld	b,(hl)
   6ABB 21 03 0B      [10]  569 	ld	hl,#0x0B03
   6ABE E5            [11]  570 	push	hl
   6ABF D5            [11]  571 	push	de
   6AC0 33            [ 6]  572 	inc	sp
   6AC1 C5            [11]  573 	push	bc
   6AC2 33            [ 6]  574 	inc	sp
   6AC3 CD E3 71      [17]  575 	call	_clearWindow
   6AC6 F1            [10]  576 	pop	af
   6AC7 F1            [10]  577 	pop	af
                            578 ;src/text/text.c:148: drawText(character->character, character->xPos, character->yPos, 0);
   6AC8 DD 6E FE      [19]  579 	ld	l,-2 (ix)
   6ACB DD 66 FF      [19]  580 	ld	h,-1 (ix)
   6ACE 56            [ 7]  581 	ld	d,(hl)
   6ACF DD 6E FC      [19]  582 	ld	l,-4 (ix)
   6AD2 DD 66 FD      [19]  583 	ld	h,-3 (ix)
   6AD5 46            [ 7]  584 	ld	b,(hl)
   6AD6 AF            [ 4]  585 	xor	a, a
   6AD7 F5            [11]  586 	push	af
   6AD8 33            [ 6]  587 	inc	sp
   6AD9 D5            [11]  588 	push	de
   6ADA 33            [ 6]  589 	inc	sp
   6ADB C5            [11]  590 	push	bc
   6ADC 33            [ 6]  591 	inc	sp
   6ADD DD 6E FA      [19]  592 	ld	l,-6 (ix)
   6AE0 DD 66 FB      [19]  593 	ld	h,-5 (ix)
   6AE3 E5            [11]  594 	push	hl
   6AE4 CD A1 68      [17]  595 	call	_drawText
   6AE7 F1            [10]  596 	pop	af
   6AE8 F1            [10]  597 	pop	af
   6AE9 33            [ 6]  598 	inc	sp
   6AEA                     599 00113$:
   6AEA DD F9         [10]  600 	ld	sp, ix
   6AEC DD E1         [14]  601 	pop	ix
   6AEE C9            [10]  602 	ret
                            603 ;src/text/text.c:153: u8 moveFallingText(FChar *text, u8 lenght) {
                            604 ;	---------------------------------
                            605 ; Function moveFallingText
                            606 ; ---------------------------------
   6AEF                     607 _moveFallingText::
   6AEF DD E5         [15]  608 	push	ix
   6AF1 DD 21 00 00   [14]  609 	ld	ix,#0
   6AF5 DD 39         [15]  610 	add	ix,sp
   6AF7 F5            [11]  611 	push	af
                            612 ;src/text/text.c:157: for (x = 0; x < lenght; x++) {
   6AF8 0E 00         [ 7]  613 	ld	c,#0x00
   6AFA                     614 00109$:
   6AFA 79            [ 4]  615 	ld	a,c
   6AFB DD 96 06      [19]  616 	sub	a, 6 (ix)
   6AFE 30 69         [12]  617 	jr	NC,00107$
                            618 ;src/text/text.c:159: if (x == 0 || (x > 0 && text[x - 1].phase == 1 && text[x - 1].yPos >= text[x].yPos + 15) || text[x - 1].phase > 1) moveCharacter(&text[x]);
   6B00 69            [ 4]  619 	ld	l,c
   6B01 26 00         [ 7]  620 	ld	h,#0x00
   6B03 5D            [ 4]  621 	ld	e, l
   6B04 54            [ 4]  622 	ld	d, h
   6B05 CB 23         [ 8]  623 	sla	e
   6B07 CB 12         [ 8]  624 	rl	d
   6B09 CB 23         [ 8]  625 	sla	e
   6B0B CB 12         [ 8]  626 	rl	d
   6B0D CB 23         [ 8]  627 	sla	e
   6B0F CB 12         [ 8]  628 	rl	d
   6B11 DD 7E 04      [19]  629 	ld	a,4 (ix)
   6B14 83            [ 4]  630 	add	a, e
   6B15 DD 77 FE      [19]  631 	ld	-2 (ix),a
   6B18 DD 7E 05      [19]  632 	ld	a,5 (ix)
   6B1B 8A            [ 4]  633 	adc	a, d
   6B1C DD 77 FF      [19]  634 	ld	-1 (ix),a
   6B1F 79            [ 4]  635 	ld	a,c
   6B20 B7            [ 4]  636 	or	a, a
   6B21 28 38         [12]  637 	jr	Z,00101$
   6B23 2B            [ 6]  638 	dec	hl
   6B24 29            [11]  639 	add	hl, hl
   6B25 29            [11]  640 	add	hl, hl
   6B26 29            [11]  641 	add	hl, hl
   6B27 EB            [ 4]  642 	ex	de,hl
   6B28 DD 6E 04      [19]  643 	ld	l,4 (ix)
   6B2B DD 66 05      [19]  644 	ld	h,5 (ix)
   6B2E 19            [11]  645 	add	hl,de
   6B2F 46            [ 7]  646 	ld	b,(hl)
   6B30 79            [ 4]  647 	ld	a,c
   6B31 B7            [ 4]  648 	or	a, a
   6B32 28 22         [12]  649 	jr	Z,00106$
   6B34 78            [ 4]  650 	ld	a,b
   6B35 3D            [ 4]  651 	dec	a
   6B36 20 1E         [12]  652 	jr	NZ,00106$
   6B38 23            [ 6]  653 	inc	hl
   6B39 23            [ 6]  654 	inc	hl
   6B3A 5E            [ 7]  655 	ld	e,(hl)
   6B3B E1            [10]  656 	pop	hl
   6B3C E5            [11]  657 	push	hl
   6B3D 23            [ 6]  658 	inc	hl
   6B3E 23            [ 6]  659 	inc	hl
   6B3F 6E            [ 7]  660 	ld	l,(hl)
   6B40 26 00         [ 7]  661 	ld	h,#0x00
   6B42 D5            [11]  662 	push	de
   6B43 11 0F 00      [10]  663 	ld	de,#0x000F
   6B46 19            [11]  664 	add	hl, de
   6B47 D1            [10]  665 	pop	de
   6B48 16 00         [ 7]  666 	ld	d,#0x00
   6B4A 7B            [ 4]  667 	ld	a,e
   6B4B 95            [ 4]  668 	sub	a, l
   6B4C 7A            [ 4]  669 	ld	a,d
   6B4D 9C            [ 4]  670 	sbc	a, h
   6B4E E2 53 6B      [10]  671 	jp	PO, 00138$
   6B51 EE 80         [ 7]  672 	xor	a, #0x80
   6B53                     673 00138$:
   6B53 F2 5B 6B      [10]  674 	jp	P,00101$
   6B56                     675 00106$:
   6B56 3E 01         [ 7]  676 	ld	a,#0x01
   6B58 90            [ 4]  677 	sub	a, b
   6B59 30 0B         [12]  678 	jr	NC,00110$
   6B5B                     679 00101$:
   6B5B C5            [11]  680 	push	bc
   6B5C D1            [10]  681 	pop	de
   6B5D E1            [10]  682 	pop	hl
   6B5E E5            [11]  683 	push	hl
   6B5F D5            [11]  684 	push	de
   6B60 E5            [11]  685 	push	hl
   6B61 CD 84 69      [17]  686 	call	_moveCharacter
   6B64 F1            [10]  687 	pop	af
   6B65 C1            [10]  688 	pop	bc
   6B66                     689 00110$:
                            690 ;src/text/text.c:157: for (x = 0; x < lenght; x++) {
   6B66 0C            [ 4]  691 	inc	c
   6B67 18 91         [12]  692 	jr	00109$
   6B69                     693 00107$:
                            694 ;src/text/text.c:162: return text[lenght - 1].phase == FALLING_TEXT_MAX_BOUNCES;
   6B69 DD 6E 06      [19]  695 	ld	l,6 (ix)
   6B6C 26 00         [ 7]  696 	ld	h,#0x00
   6B6E 2B            [ 6]  697 	dec	hl
   6B6F 29            [11]  698 	add	hl, hl
   6B70 29            [11]  699 	add	hl, hl
   6B71 29            [11]  700 	add	hl, hl
   6B72 4D            [ 4]  701 	ld	c, l
   6B73 44            [ 4]  702 	ld	b, h
   6B74 DD 6E 04      [19]  703 	ld	l,4 (ix)
   6B77 DD 66 05      [19]  704 	ld	h,5 (ix)
   6B7A 09            [11]  705 	add	hl,bc
   6B7B 7E            [ 7]  706 	ld	a,(hl)
   6B7C D6 06         [ 7]  707 	sub	a, #0x06
   6B7E 20 04         [12]  708 	jr	NZ,00139$
   6B80 3E 01         [ 7]  709 	ld	a,#0x01
   6B82 18 01         [12]  710 	jr	00140$
   6B84                     711 00139$:
   6B84 AF            [ 4]  712 	xor	a,a
   6B85                     713 00140$:
   6B85 6F            [ 4]  714 	ld	l,a
   6B86 DD F9         [10]  715 	ld	sp, ix
   6B88 DD E1         [14]  716 	pop	ix
   6B8A C9            [10]  717 	ret
                            718 ;src/text/text.c:168: void drawFallingText(u8 text[], u8 xPos, u8 yPos, u8 destinationyPos) {
                            719 ;	---------------------------------
                            720 ; Function drawFallingText
                            721 ; ---------------------------------
   6B8B                     722 _drawFallingText::
   6B8B DD E5         [15]  723 	push	ix
   6B8D DD 21 00 00   [14]  724 	ld	ix,#0
   6B91 DD 39         [15]  725 	add	ix,sp
   6B93 21 5A FF      [10]  726 	ld	hl,#-166
   6B96 39            [11]  727 	add	hl,sp
   6B97 F9            [ 6]  728 	ld	sp,hl
                            729 ;src/text/text.c:174: for (x = 0; x < strLength(text) && x < FALLING_TEXT_MAX_LENGHT; x++) {
   6B98 21 01 00      [10]  730 	ld	hl,#0x0001
   6B9B 39            [11]  731 	add	hl,sp
   6B9C DD 75 FE      [19]  732 	ld	-2 (ix),l
   6B9F DD 74 FF      [19]  733 	ld	-1 (ix),h
   6BA2 FD 21 00 00   [14]  734 	ld	iy,#0
   6BA6 FD 39         [15]  735 	add	iy,sp
   6BA8 FD 36 00 00   [19]  736 	ld	0 (iy),#0x00
   6BAC DD 36 FD 00   [19]  737 	ld	-3 (ix),#0x00
   6BB0                     738 00109$:
   6BB0 DD 6E 04      [19]  739 	ld	l,4 (ix)
   6BB3 DD 66 05      [19]  740 	ld	h,5 (ix)
   6BB6 E5            [11]  741 	push	hl
   6BB7 CD C0 67      [17]  742 	call	_strLength
   6BBA F1            [10]  743 	pop	af
   6BBB 4D            [ 4]  744 	ld	c,l
   6BBC FD 21 00 00   [14]  745 	ld	iy,#0
   6BC0 FD 39         [15]  746 	add	iy,sp
   6BC2 FD 7E 00      [19]  747 	ld	a,0 (iy)
   6BC5 91            [ 4]  748 	sub	a, c
   6BC6 D2 48 6C      [10]  749 	jp	NC,00120$
   6BC9 FD 7E 00      [19]  750 	ld	a,0 (iy)
   6BCC D6 14         [ 7]  751 	sub	a, #0x14
   6BCE 30 78         [12]  752 	jr	NC,00120$
                            753 ;src/text/text.c:176: ftext[x].phase = 1;
   6BD0 FD 6E 00      [19]  754 	ld	l,0 (iy)
   6BD3 26 00         [ 7]  755 	ld	h,#0x00
   6BD5 29            [11]  756 	add	hl, hl
   6BD6 29            [11]  757 	add	hl, hl
   6BD7 29            [11]  758 	add	hl, hl
   6BD8 4D            [ 4]  759 	ld	c, l
   6BD9 44            [ 4]  760 	ld	b, h
   6BDA DD 7E FE      [19]  761 	ld	a,-2 (ix)
   6BDD 81            [ 4]  762 	add	a, c
   6BDE 4F            [ 4]  763 	ld	c,a
   6BDF DD 7E FF      [19]  764 	ld	a,-1 (ix)
   6BE2 88            [ 4]  765 	adc	a, b
   6BE3 47            [ 4]  766 	ld	b,a
   6BE4 3E 01         [ 7]  767 	ld	a,#0x01
   6BE6 02            [ 7]  768 	ld	(bc),a
                            769 ;src/text/text.c:177: ftext[x].xPos = xPos + (x * FONT_W);
   6BE7 59            [ 4]  770 	ld	e, c
   6BE8 50            [ 4]  771 	ld	d, b
   6BE9 13            [ 6]  772 	inc	de
   6BEA DD 7E 06      [19]  773 	ld	a,6 (ix)
   6BED DD 86 FD      [19]  774 	add	a, -3 (ix)
   6BF0 12            [ 7]  775 	ld	(de),a
                            776 ;src/text/text.c:178: ftext[x].yPos = yPos;
   6BF1 59            [ 4]  777 	ld	e, c
   6BF2 50            [ 4]  778 	ld	d, b
   6BF3 13            [ 6]  779 	inc	de
   6BF4 13            [ 6]  780 	inc	de
   6BF5 DD 7E 07      [19]  781 	ld	a,7 (ix)
   6BF8 12            [ 7]  782 	ld	(de),a
                            783 ;src/text/text.c:179: ftext[x].startyPos = yPos;
   6BF9 59            [ 4]  784 	ld	e, c
   6BFA 50            [ 4]  785 	ld	d, b
   6BFB 13            [ 6]  786 	inc	de
   6BFC 13            [ 6]  787 	inc	de
   6BFD 13            [ 6]  788 	inc	de
   6BFE DD 7E 07      [19]  789 	ld	a,7 (ix)
   6C01 12            [ 7]  790 	ld	(de),a
                            791 ;src/text/text.c:180: ftext[x].endyPos = destinationyPos;
   6C02 21 04 00      [10]  792 	ld	hl,#0x0004
   6C05 09            [11]  793 	add	hl,bc
   6C06 DD 7E 08      [19]  794 	ld	a,8 (ix)
   6C09 77            [ 7]  795 	ld	(hl),a
                            796 ;src/text/text.c:181: ftext[x].destinationyPos = destinationyPos;
   6C0A 21 05 00      [10]  797 	ld	hl,#0x0005
   6C0D 09            [11]  798 	add	hl,bc
   6C0E DD 7E 08      [19]  799 	ld	a,8 (ix)
   6C11 77            [ 7]  800 	ld	(hl),a
                            801 ;src/text/text.c:182: ftext[x].character[0] = text[x];
   6C12 21 06 00      [10]  802 	ld	hl,#0x0006
   6C15 09            [11]  803 	add	hl,bc
   6C16 DD 75 FB      [19]  804 	ld	-5 (ix),l
   6C19 DD 74 FC      [19]  805 	ld	-4 (ix),h
   6C1C DD 7E 04      [19]  806 	ld	a,4 (ix)
   6C1F 21 00 00      [10]  807 	ld	hl,#0
   6C22 39            [11]  808 	add	hl,sp
   6C23 86            [ 7]  809 	add	a, (hl)
   6C24 5F            [ 4]  810 	ld	e,a
   6C25 DD 7E 05      [19]  811 	ld	a,5 (ix)
   6C28 CE 00         [ 7]  812 	adc	a, #0x00
   6C2A 57            [ 4]  813 	ld	d,a
   6C2B 1A            [ 7]  814 	ld	a,(de)
   6C2C DD 6E FB      [19]  815 	ld	l,-5 (ix)
   6C2F DD 66 FC      [19]  816 	ld	h,-4 (ix)
   6C32 77            [ 7]  817 	ld	(hl),a
                            818 ;src/text/text.c:183: ftext[x].character[1] = '\0';
   6C33 21 07 00      [10]  819 	ld	hl,#0x0007
   6C36 09            [11]  820 	add	hl,bc
   6C37 36 00         [10]  821 	ld	(hl),#0x00
                            822 ;src/text/text.c:174: for (x = 0; x < strLength(text) && x < FALLING_TEXT_MAX_LENGHT; x++) {
   6C39 DD 34 FD      [23]  823 	inc	-3 (ix)
   6C3C DD 34 FD      [23]  824 	inc	-3 (ix)
   6C3F DD 34 FD      [23]  825 	inc	-3 (ix)
   6C42 FD 34 00      [23]  826 	inc	0 (iy)
   6C45 C3 B0 6B      [10]  827 	jp	00109$
                            828 ;src/text/text.c:186: while (1) {
   6C48                     829 00120$:
   6C48 DD 7E FE      [19]  830 	ld	a,-2 (ix)
   6C4B DD 77 FB      [19]  831 	ld	-5 (ix),a
   6C4E DD 7E FF      [19]  832 	ld	a,-1 (ix)
   6C51 DD 77 FC      [19]  833 	ld	-4 (ix),a
   6C54                     834 00105$:
                            835 ;src/text/text.c:189: if (moveFallingText(ftext, strLength(text) <= FALLING_TEXT_MAX_LENGHT ? strLength(text) : FALLING_TEXT_MAX_LENGHT)) {
   6C54 DD 6E 04      [19]  836 	ld	l,4 (ix)
   6C57 DD 66 05      [19]  837 	ld	h,5 (ix)
   6C5A E5            [11]  838 	push	hl
   6C5B CD C0 67      [17]  839 	call	_strLength
   6C5E F1            [10]  840 	pop	af
   6C5F 3E 14         [ 7]  841 	ld	a,#0x14
   6C61 95            [ 4]  842 	sub	a, l
   6C62 38 0E         [12]  843 	jr	C,00113$
   6C64 DD 6E 04      [19]  844 	ld	l,4 (ix)
   6C67 DD 66 05      [19]  845 	ld	h,5 (ix)
   6C6A E5            [11]  846 	push	hl
   6C6B CD C0 67      [17]  847 	call	_strLength
   6C6E F1            [10]  848 	pop	af
   6C6F 45            [ 4]  849 	ld	b,l
   6C70 18 02         [12]  850 	jr	00114$
   6C72                     851 00113$:
   6C72 06 14         [ 7]  852 	ld	b,#0x14
   6C74                     853 00114$:
   6C74 DD 5E FB      [19]  854 	ld	e,-5 (ix)
   6C77 DD 56 FC      [19]  855 	ld	d,-4 (ix)
   6C7A C5            [11]  856 	push	bc
   6C7B 33            [ 6]  857 	inc	sp
   6C7C D5            [11]  858 	push	de
   6C7D CD EF 6A      [17]  859 	call	_moveFallingText
   6C80 F1            [10]  860 	pop	af
   6C81 33            [ 6]  861 	inc	sp
   6C82 7D            [ 4]  862 	ld	a,l
   6C83 B7            [ 4]  863 	or	a, a
                            864 ;src/text/text.c:191: return;
   6C84 20 05         [12]  865 	jr	NZ,00111$
                            866 ;src/text/text.c:195: cpct_waitVSYNC();
   6C86 CD 0C 7D      [17]  867 	call	_cpct_waitVSYNC
   6C89 18 C9         [12]  868 	jr	00105$
   6C8B                     869 00111$:
   6C8B DD F9         [10]  870 	ld	sp, ix
   6C8D DD E1         [14]  871 	pop	ix
   6C8F C9            [10]  872 	ret
                            873 	.area _CODE
                            874 	.area _INITIALIZER
                            875 	.area _CABS (ABS)
