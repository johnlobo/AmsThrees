                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.5 #9498 (Mac OS X x86_64)
                              4 ;--------------------------------------------------------
                              5 	.module itoa
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _itoa
                             12 ;--------------------------------------------------------
                             13 ; special function registers
                             14 ;--------------------------------------------------------
                             15 ;--------------------------------------------------------
                             16 ; ram data
                             17 ;--------------------------------------------------------
                             18 	.area _DATA
                             19 ;--------------------------------------------------------
                             20 ; ram data
                             21 ;--------------------------------------------------------
                             22 	.area _INITIALIZED
                             23 ;--------------------------------------------------------
                             24 ; absolute external ram data
                             25 ;--------------------------------------------------------
                             26 	.area _DABS (ABS)
                             27 ;--------------------------------------------------------
                             28 ; global & static initialisations
                             29 ;--------------------------------------------------------
                             30 	.area _HOME
                             31 	.area _GSINIT
                             32 	.area _GSFINAL
                             33 	.area _GSINIT
                             34 ;--------------------------------------------------------
                             35 ; Home
                             36 ;--------------------------------------------------------
                             37 	.area _HOME
                             38 	.area _HOME
                             39 ;--------------------------------------------------------
                             40 ; code
                             41 ;--------------------------------------------------------
                             42 	.area _CODE
                             43 ;src/utils/itoa.c:6: char* itoa(int value, char* result, int base) {
                             44 ;	---------------------------------
                             45 ; Function itoa
                             46 ; ---------------------------------
   6C90                      47 _itoa::
   6C90 DD E5         [15]   48 	push	ix
   6C92 DD 21 00 00   [14]   49 	ld	ix,#0
   6C96 DD 39         [15]   50 	add	ix,sp
   6C98 21 F9 FF      [10]   51 	ld	hl,#-7
   6C9B 39            [11]   52 	add	hl,sp
   6C9C F9            [ 6]   53 	ld	sp,hl
                             54 ;src/utils/itoa.c:9: char* ptr = result, *ptr1 = result, tmp_char;
   6C9D DD 5E 06      [19]   55 	ld	e,6 (ix)
   6CA0 DD 56 07      [19]   56 	ld	d,7 (ix)
   6CA3 DD 73 FA      [19]   57 	ld	-6 (ix),e
   6CA6 DD 72 FB      [19]   58 	ld	-5 (ix),d
                             59 ;src/utils/itoa.c:12: if (base < 2 || base > 36) { *result = '\0'; return result; }
   6CA9 DD 7E 08      [19]   60 	ld	a,8 (ix)
   6CAC D6 02         [ 7]   61 	sub	a, #0x02
   6CAE DD 7E 09      [19]   62 	ld	a,9 (ix)
   6CB1 17            [ 4]   63 	rla
   6CB2 3F            [ 4]   64 	ccf
   6CB3 1F            [ 4]   65 	rra
   6CB4 DE 80         [ 7]   66 	sbc	a, #0x80
   6CB6 38 12         [12]   67 	jr	C,00101$
   6CB8 3E 24         [ 7]   68 	ld	a,#0x24
   6CBA DD BE 08      [19]   69 	cp	a, 8 (ix)
   6CBD 3E 00         [ 7]   70 	ld	a,#0x00
   6CBF DD 9E 09      [19]   71 	sbc	a, 9 (ix)
   6CC2 E2 C7 6C      [10]   72 	jp	PO, 00140$
   6CC5 EE 80         [ 7]   73 	xor	a, #0x80
   6CC7                      74 00140$:
   6CC7 F2 D0 6C      [10]   75 	jp	P,00115$
   6CCA                      76 00101$:
   6CCA AF            [ 4]   77 	xor	a, a
   6CCB 12            [ 7]   78 	ld	(de),a
   6CCC EB            [ 4]   79 	ex	de,hl
   6CCD C3 70 6D      [10]   80 	jp	00112$
                             81 ;src/utils/itoa.c:14: do {
   6CD0                      82 00115$:
   6CD0 DD 73 FE      [19]   83 	ld	-2 (ix),e
   6CD3 DD 72 FF      [19]   84 	ld	-1 (ix),d
   6CD6                      85 00104$:
                             86 ;src/utils/itoa.c:15: tmp_value = value;
   6CD6 DD 7E 04      [19]   87 	ld	a,4 (ix)
   6CD9 DD 77 FC      [19]   88 	ld	-4 (ix),a
   6CDC DD 7E 05      [19]   89 	ld	a,5 (ix)
   6CDF DD 77 FD      [19]   90 	ld	-3 (ix),a
                             91 ;src/utils/itoa.c:16: value /= base;
   6CE2 DD 6E 08      [19]   92 	ld	l,8 (ix)
   6CE5 DD 66 09      [19]   93 	ld	h,9 (ix)
   6CE8 E5            [11]   94 	push	hl
   6CE9 DD 6E FC      [19]   95 	ld	l,-4 (ix)
   6CEC DD 66 FD      [19]   96 	ld	h,-3 (ix)
   6CEF E5            [11]   97 	push	hl
   6CF0 CD 82 7E      [17]   98 	call	__divsint
   6CF3 F1            [10]   99 	pop	af
   6CF4 F1            [10]  100 	pop	af
   6CF5 DD 75 04      [19]  101 	ld	4 (ix),l
   6CF8 DD 74 05      [19]  102 	ld	5 (ix),h
                            103 ;src/utils/itoa.c:17: *ptr++ = "zyxwvutsrqponmlkjihgfedcba9876543210123456789abcdefghijklmnopqrstuvwxyz" [35 + (tmp_value - value * base)];
   6CFB DD 4E FC      [19]  104 	ld	c,-4 (ix)
   6CFE DD 5E 04      [19]  105 	ld	e,4 (ix)
   6D01 DD 66 08      [19]  106 	ld	h,8 (ix)
   6D04 2E 00         [ 7]  107 	ld	l, #0x00
   6D06 55            [ 4]  108 	ld	d, l
   6D07 06 08         [ 7]  109 	ld	b, #0x08
   6D09                     110 00141$:
   6D09 29            [11]  111 	add	hl,hl
   6D0A 30 01         [12]  112 	jr	NC,00142$
   6D0C 19            [11]  113 	add	hl,de
   6D0D                     114 00142$:
   6D0D 10 FA         [13]  115 	djnz	00141$
   6D0F 79            [ 4]  116 	ld	a,c
   6D10 95            [ 4]  117 	sub	a, l
   6D11 C6 23         [ 7]  118 	add	a, #0x23
   6D13 4F            [ 4]  119 	ld	c,a
   6D14 21 75 6D      [10]  120 	ld	hl,#___str_0
   6D17 06 00         [ 7]  121 	ld	b,#0x00
   6D19 09            [11]  122 	add	hl, bc
   6D1A 4E            [ 7]  123 	ld	c,(hl)
   6D1B DD 6E FE      [19]  124 	ld	l,-2 (ix)
   6D1E DD 66 FF      [19]  125 	ld	h,-1 (ix)
   6D21 71            [ 7]  126 	ld	(hl),c
   6D22 DD 34 FE      [23]  127 	inc	-2 (ix)
   6D25 20 03         [12]  128 	jr	NZ,00143$
   6D27 DD 34 FF      [23]  129 	inc	-1 (ix)
   6D2A                     130 00143$:
                            131 ;src/utils/itoa.c:18: } while ( value );
   6D2A DD 7E 05      [19]  132 	ld	a,5 (ix)
   6D2D DD B6 04      [19]  133 	or	a,4 (ix)
   6D30 20 A4         [12]  134 	jr	NZ,00104$
                            135 ;src/utils/itoa.c:21: if (tmp_value < 0) *ptr++ = '-';
   6D32 DD 4E FE      [19]  136 	ld	c,-2 (ix)
   6D35 DD 46 FF      [19]  137 	ld	b,-1 (ix)
   6D38 DD CB FD 7E   [20]  138 	bit	7, -3 (ix)
   6D3C 28 0F         [12]  139 	jr	Z,00108$
   6D3E DD 6E FE      [19]  140 	ld	l,-2 (ix)
   6D41 DD 66 FF      [19]  141 	ld	h,-1 (ix)
   6D44 36 2D         [10]  142 	ld	(hl),#0x2D
   6D46 DD 4E FE      [19]  143 	ld	c,-2 (ix)
   6D49 DD 46 FF      [19]  144 	ld	b,-1 (ix)
   6D4C 03            [ 6]  145 	inc	bc
   6D4D                     146 00108$:
                            147 ;src/utils/itoa.c:22: *ptr-- = '\0';
   6D4D AF            [ 4]  148 	xor	a, a
   6D4E 02            [ 7]  149 	ld	(bc),a
   6D4F 0B            [ 6]  150 	dec	bc
                            151 ;src/utils/itoa.c:23: while(ptr1 < ptr) {
   6D50 DD 5E FA      [19]  152 	ld	e,-6 (ix)
   6D53 DD 56 FB      [19]  153 	ld	d,-5 (ix)
   6D56                     154 00109$:
   6D56 7B            [ 4]  155 	ld	a,e
   6D57 91            [ 4]  156 	sub	a, c
   6D58 7A            [ 4]  157 	ld	a,d
   6D59 98            [ 4]  158 	sbc	a, b
   6D5A 30 0E         [12]  159 	jr	NC,00111$
                            160 ;src/utils/itoa.c:24: tmp_char = *ptr;
   6D5C 0A            [ 7]  161 	ld	a,(bc)
   6D5D DD 77 F9      [19]  162 	ld	-7 (ix),a
                            163 ;src/utils/itoa.c:25: *ptr--= *ptr1;
   6D60 1A            [ 7]  164 	ld	a,(de)
   6D61 02            [ 7]  165 	ld	(bc),a
   6D62 0B            [ 6]  166 	dec	bc
                            167 ;src/utils/itoa.c:26: *ptr1++ = tmp_char;
   6D63 DD 7E F9      [19]  168 	ld	a,-7 (ix)
   6D66 12            [ 7]  169 	ld	(de),a
   6D67 13            [ 6]  170 	inc	de
   6D68 18 EC         [12]  171 	jr	00109$
   6D6A                     172 00111$:
                            173 ;src/utils/itoa.c:28: return result;
   6D6A DD 6E 06      [19]  174 	ld	l,6 (ix)
   6D6D DD 66 07      [19]  175 	ld	h,7 (ix)
   6D70                     176 00112$:
   6D70 DD F9         [10]  177 	ld	sp, ix
   6D72 DD E1         [14]  178 	pop	ix
   6D74 C9            [10]  179 	ret
   6D75                     180 ___str_0:
   6D75 7A 79 78 77 76 75   181 	.ascii "zyxwvutsrqponmlkjihgfedcba9876543210123456789abcdefghijklmno"
        74 73 72 71 70 6F
        6E 6D 6C 6B 6A 69
        68 67 66 65 64 63
        62 61 39 38 37 36
        35 34 33 32 31 30
        31 32 33 34 35 36
        37 38 39 61 62 63
        64 65 66 67 68 69
        6A 6B 6C 6D 6E 6F
   6DB1 70 71 72 73 74 75   182 	.ascii "pqrstuvwxyz"
        76 77 78 79 7A
   6DBC 00                  183 	.db 0x00
                            184 	.area _CODE
                            185 	.area _INITIALIZER
                            186 	.area _CABS (ABS)
