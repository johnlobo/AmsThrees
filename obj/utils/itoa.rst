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
   7AD4                      47 _itoa::
   7AD4 DD E5         [15]   48 	push	ix
   7AD6 DD 21 00 00   [14]   49 	ld	ix,#0
   7ADA DD 39         [15]   50 	add	ix,sp
   7ADC 21 F9 FF      [10]   51 	ld	hl,#-7
   7ADF 39            [11]   52 	add	hl,sp
   7AE0 F9            [ 6]   53 	ld	sp,hl
                             54 ;src/utils/itoa.c:9: char* ptr = result, *ptr1 = result, tmp_char;
   7AE1 DD 5E 06      [19]   55 	ld	e,6 (ix)
   7AE4 DD 56 07      [19]   56 	ld	d,7 (ix)
   7AE7 DD 73 FA      [19]   57 	ld	-6 (ix),e
   7AEA DD 72 FB      [19]   58 	ld	-5 (ix),d
                             59 ;src/utils/itoa.c:12: if (base < 2 || base > 36) { *result = '\0'; return result; }
   7AED DD 7E 08      [19]   60 	ld	a,8 (ix)
   7AF0 D6 02         [ 7]   61 	sub	a, #0x02
   7AF2 DD 7E 09      [19]   62 	ld	a,9 (ix)
   7AF5 17            [ 4]   63 	rla
   7AF6 3F            [ 4]   64 	ccf
   7AF7 1F            [ 4]   65 	rra
   7AF8 DE 80         [ 7]   66 	sbc	a, #0x80
   7AFA 38 12         [12]   67 	jr	C,00101$
   7AFC 3E 24         [ 7]   68 	ld	a,#0x24
   7AFE DD BE 08      [19]   69 	cp	a, 8 (ix)
   7B01 3E 00         [ 7]   70 	ld	a,#0x00
   7B03 DD 9E 09      [19]   71 	sbc	a, 9 (ix)
   7B06 E2 0B 7B      [10]   72 	jp	PO, 00140$
   7B09 EE 80         [ 7]   73 	xor	a, #0x80
   7B0B                      74 00140$:
   7B0B F2 14 7B      [10]   75 	jp	P,00115$
   7B0E                      76 00101$:
   7B0E AF            [ 4]   77 	xor	a, a
   7B0F 12            [ 7]   78 	ld	(de),a
   7B10 EB            [ 4]   79 	ex	de,hl
   7B11 C3 B4 7B      [10]   80 	jp	00112$
                             81 ;src/utils/itoa.c:14: do {
   7B14                      82 00115$:
   7B14 DD 73 FE      [19]   83 	ld	-2 (ix),e
   7B17 DD 72 FF      [19]   84 	ld	-1 (ix),d
   7B1A                      85 00104$:
                             86 ;src/utils/itoa.c:15: tmp_value = value;
   7B1A DD 7E 04      [19]   87 	ld	a,4 (ix)
   7B1D DD 77 FC      [19]   88 	ld	-4 (ix),a
   7B20 DD 7E 05      [19]   89 	ld	a,5 (ix)
   7B23 DD 77 FD      [19]   90 	ld	-3 (ix),a
                             91 ;src/utils/itoa.c:16: value /= base;
   7B26 DD 6E 08      [19]   92 	ld	l,8 (ix)
   7B29 DD 66 09      [19]   93 	ld	h,9 (ix)
   7B2C E5            [11]   94 	push	hl
   7B2D DD 6E FC      [19]   95 	ld	l,-4 (ix)
   7B30 DD 66 FD      [19]   96 	ld	h,-3 (ix)
   7B33 E5            [11]   97 	push	hl
   7B34 CD C1 85      [17]   98 	call	__divsint
   7B37 F1            [10]   99 	pop	af
   7B38 F1            [10]  100 	pop	af
   7B39 DD 75 04      [19]  101 	ld	4 (ix),l
   7B3C DD 74 05      [19]  102 	ld	5 (ix),h
                            103 ;src/utils/itoa.c:17: *ptr++ = "zyxwvutsrqponmlkjihgfedcba9876543210123456789abcdefghijklmnopqrstuvwxyz" [35 + (tmp_value - value * base)];
   7B3F DD 4E FC      [19]  104 	ld	c,-4 (ix)
   7B42 DD 5E 04      [19]  105 	ld	e,4 (ix)
   7B45 DD 66 08      [19]  106 	ld	h,8 (ix)
   7B48 2E 00         [ 7]  107 	ld	l, #0x00
   7B4A 55            [ 4]  108 	ld	d, l
   7B4B 06 08         [ 7]  109 	ld	b, #0x08
   7B4D                     110 00141$:
   7B4D 29            [11]  111 	add	hl,hl
   7B4E 30 01         [12]  112 	jr	NC,00142$
   7B50 19            [11]  113 	add	hl,de
   7B51                     114 00142$:
   7B51 10 FA         [13]  115 	djnz	00141$
   7B53 79            [ 4]  116 	ld	a,c
   7B54 95            [ 4]  117 	sub	a, l
   7B55 C6 23         [ 7]  118 	add	a, #0x23
   7B57 4F            [ 4]  119 	ld	c,a
   7B58 21 B9 7B      [10]  120 	ld	hl,#___str_0
   7B5B 06 00         [ 7]  121 	ld	b,#0x00
   7B5D 09            [11]  122 	add	hl, bc
   7B5E 4E            [ 7]  123 	ld	c,(hl)
   7B5F DD 6E FE      [19]  124 	ld	l,-2 (ix)
   7B62 DD 66 FF      [19]  125 	ld	h,-1 (ix)
   7B65 71            [ 7]  126 	ld	(hl),c
   7B66 DD 34 FE      [23]  127 	inc	-2 (ix)
   7B69 20 03         [12]  128 	jr	NZ,00143$
   7B6B DD 34 FF      [23]  129 	inc	-1 (ix)
   7B6E                     130 00143$:
                            131 ;src/utils/itoa.c:18: } while ( value );
   7B6E DD 7E 05      [19]  132 	ld	a,5 (ix)
   7B71 DD B6 04      [19]  133 	or	a,4 (ix)
   7B74 20 A4         [12]  134 	jr	NZ,00104$
                            135 ;src/utils/itoa.c:21: if (tmp_value < 0) *ptr++ = '-';
   7B76 DD 4E FE      [19]  136 	ld	c,-2 (ix)
   7B79 DD 46 FF      [19]  137 	ld	b,-1 (ix)
   7B7C DD CB FD 7E   [20]  138 	bit	7, -3 (ix)
   7B80 28 0F         [12]  139 	jr	Z,00108$
   7B82 DD 6E FE      [19]  140 	ld	l,-2 (ix)
   7B85 DD 66 FF      [19]  141 	ld	h,-1 (ix)
   7B88 36 2D         [10]  142 	ld	(hl),#0x2D
   7B8A DD 4E FE      [19]  143 	ld	c,-2 (ix)
   7B8D DD 46 FF      [19]  144 	ld	b,-1 (ix)
   7B90 03            [ 6]  145 	inc	bc
   7B91                     146 00108$:
                            147 ;src/utils/itoa.c:22: *ptr-- = '\0';
   7B91 AF            [ 4]  148 	xor	a, a
   7B92 02            [ 7]  149 	ld	(bc),a
   7B93 0B            [ 6]  150 	dec	bc
                            151 ;src/utils/itoa.c:23: while(ptr1 < ptr) {
   7B94 DD 5E FA      [19]  152 	ld	e,-6 (ix)
   7B97 DD 56 FB      [19]  153 	ld	d,-5 (ix)
   7B9A                     154 00109$:
   7B9A 7B            [ 4]  155 	ld	a,e
   7B9B 91            [ 4]  156 	sub	a, c
   7B9C 7A            [ 4]  157 	ld	a,d
   7B9D 98            [ 4]  158 	sbc	a, b
   7B9E 30 0E         [12]  159 	jr	NC,00111$
                            160 ;src/utils/itoa.c:24: tmp_char = *ptr;
   7BA0 0A            [ 7]  161 	ld	a,(bc)
   7BA1 DD 77 F9      [19]  162 	ld	-7 (ix),a
                            163 ;src/utils/itoa.c:25: *ptr--= *ptr1;
   7BA4 1A            [ 7]  164 	ld	a,(de)
   7BA5 02            [ 7]  165 	ld	(bc),a
   7BA6 0B            [ 6]  166 	dec	bc
                            167 ;src/utils/itoa.c:26: *ptr1++ = tmp_char;
   7BA7 DD 7E F9      [19]  168 	ld	a,-7 (ix)
   7BAA 12            [ 7]  169 	ld	(de),a
   7BAB 13            [ 6]  170 	inc	de
   7BAC 18 EC         [12]  171 	jr	00109$
   7BAE                     172 00111$:
                            173 ;src/utils/itoa.c:28: return result;
   7BAE DD 6E 06      [19]  174 	ld	l,6 (ix)
   7BB1 DD 66 07      [19]  175 	ld	h,7 (ix)
   7BB4                     176 00112$:
   7BB4 DD F9         [10]  177 	ld	sp, ix
   7BB6 DD E1         [14]  178 	pop	ix
   7BB8 C9            [10]  179 	ret
   7BB9                     180 ___str_0:
   7BB9 7A 79 78 77 76 75   181 	.ascii "zyxwvutsrqponmlkjihgfedcba9876543210123456789abcdefghijklmno"
        74 73 72 71 70 6F
        6E 6D 6C 6B 6A 69
        68 67 66 65 64 63
        62 61 39 38 37 36
        35 34 33 32 31 30
        31 32 33 34 35 36
        37 38 39 61 62 63
        64 65 66 67 68 69
        6A 6B 6C 6D 6E 6F
   7BF5 70 71 72 73 74 75   182 	.ascii "pqrstuvwxyz"
        76 77 78 79 7A
   7C00 00                  183 	.db 0x00
                            184 	.area _CODE
                            185 	.area _INITIALIZER
                            186 	.area _CABS (ABS)
