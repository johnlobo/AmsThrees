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
   7A62                      47 _itoa::
   7A62 DD E5         [15]   48 	push	ix
   7A64 DD 21 00 00   [14]   49 	ld	ix,#0
   7A68 DD 39         [15]   50 	add	ix,sp
   7A6A 21 F9 FF      [10]   51 	ld	hl,#-7
   7A6D 39            [11]   52 	add	hl,sp
   7A6E F9            [ 6]   53 	ld	sp,hl
                             54 ;src/utils/itoa.c:9: char* ptr = result, *ptr1 = result, tmp_char;
   7A6F DD 5E 06      [19]   55 	ld	e,6 (ix)
   7A72 DD 56 07      [19]   56 	ld	d,7 (ix)
   7A75 DD 73 FA      [19]   57 	ld	-6 (ix),e
   7A78 DD 72 FB      [19]   58 	ld	-5 (ix),d
                             59 ;src/utils/itoa.c:12: if (base < 2 || base > 36) { *result = '\0'; return result; }
   7A7B DD 7E 08      [19]   60 	ld	a,8 (ix)
   7A7E D6 02         [ 7]   61 	sub	a, #0x02
   7A80 DD 7E 09      [19]   62 	ld	a,9 (ix)
   7A83 17            [ 4]   63 	rla
   7A84 3F            [ 4]   64 	ccf
   7A85 1F            [ 4]   65 	rra
   7A86 DE 80         [ 7]   66 	sbc	a, #0x80
   7A88 38 12         [12]   67 	jr	C,00101$
   7A8A 3E 24         [ 7]   68 	ld	a,#0x24
   7A8C DD BE 08      [19]   69 	cp	a, 8 (ix)
   7A8F 3E 00         [ 7]   70 	ld	a,#0x00
   7A91 DD 9E 09      [19]   71 	sbc	a, 9 (ix)
   7A94 E2 99 7A      [10]   72 	jp	PO, 00140$
   7A97 EE 80         [ 7]   73 	xor	a, #0x80
   7A99                      74 00140$:
   7A99 F2 A2 7A      [10]   75 	jp	P,00115$
   7A9C                      76 00101$:
   7A9C AF            [ 4]   77 	xor	a, a
   7A9D 12            [ 7]   78 	ld	(de),a
   7A9E EB            [ 4]   79 	ex	de,hl
   7A9F C3 42 7B      [10]   80 	jp	00112$
                             81 ;src/utils/itoa.c:14: do {
   7AA2                      82 00115$:
   7AA2 DD 73 FE      [19]   83 	ld	-2 (ix),e
   7AA5 DD 72 FF      [19]   84 	ld	-1 (ix),d
   7AA8                      85 00104$:
                             86 ;src/utils/itoa.c:15: tmp_value = value;
   7AA8 DD 7E 04      [19]   87 	ld	a,4 (ix)
   7AAB DD 77 FC      [19]   88 	ld	-4 (ix),a
   7AAE DD 7E 05      [19]   89 	ld	a,5 (ix)
   7AB1 DD 77 FD      [19]   90 	ld	-3 (ix),a
                             91 ;src/utils/itoa.c:16: value /= base;
   7AB4 DD 6E 08      [19]   92 	ld	l,8 (ix)
   7AB7 DD 66 09      [19]   93 	ld	h,9 (ix)
   7ABA E5            [11]   94 	push	hl
   7ABB DD 6E FC      [19]   95 	ld	l,-4 (ix)
   7ABE DD 66 FD      [19]   96 	ld	h,-3 (ix)
   7AC1 E5            [11]   97 	push	hl
   7AC2 CD 4F 85      [17]   98 	call	__divsint
   7AC5 F1            [10]   99 	pop	af
   7AC6 F1            [10]  100 	pop	af
   7AC7 DD 75 04      [19]  101 	ld	4 (ix),l
   7ACA DD 74 05      [19]  102 	ld	5 (ix),h
                            103 ;src/utils/itoa.c:17: *ptr++ = "zyxwvutsrqponmlkjihgfedcba9876543210123456789abcdefghijklmnopqrstuvwxyz" [35 + (tmp_value - value * base)];
   7ACD DD 4E FC      [19]  104 	ld	c,-4 (ix)
   7AD0 DD 5E 04      [19]  105 	ld	e,4 (ix)
   7AD3 DD 66 08      [19]  106 	ld	h,8 (ix)
   7AD6 2E 00         [ 7]  107 	ld	l, #0x00
   7AD8 55            [ 4]  108 	ld	d, l
   7AD9 06 08         [ 7]  109 	ld	b, #0x08
   7ADB                     110 00141$:
   7ADB 29            [11]  111 	add	hl,hl
   7ADC 30 01         [12]  112 	jr	NC,00142$
   7ADE 19            [11]  113 	add	hl,de
   7ADF                     114 00142$:
   7ADF 10 FA         [13]  115 	djnz	00141$
   7AE1 79            [ 4]  116 	ld	a,c
   7AE2 95            [ 4]  117 	sub	a, l
   7AE3 C6 23         [ 7]  118 	add	a, #0x23
   7AE5 4F            [ 4]  119 	ld	c,a
   7AE6 21 47 7B      [10]  120 	ld	hl,#___str_0
   7AE9 06 00         [ 7]  121 	ld	b,#0x00
   7AEB 09            [11]  122 	add	hl, bc
   7AEC 4E            [ 7]  123 	ld	c,(hl)
   7AED DD 6E FE      [19]  124 	ld	l,-2 (ix)
   7AF0 DD 66 FF      [19]  125 	ld	h,-1 (ix)
   7AF3 71            [ 7]  126 	ld	(hl),c
   7AF4 DD 34 FE      [23]  127 	inc	-2 (ix)
   7AF7 20 03         [12]  128 	jr	NZ,00143$
   7AF9 DD 34 FF      [23]  129 	inc	-1 (ix)
   7AFC                     130 00143$:
                            131 ;src/utils/itoa.c:18: } while ( value );
   7AFC DD 7E 05      [19]  132 	ld	a,5 (ix)
   7AFF DD B6 04      [19]  133 	or	a,4 (ix)
   7B02 20 A4         [12]  134 	jr	NZ,00104$
                            135 ;src/utils/itoa.c:21: if (tmp_value < 0) *ptr++ = '-';
   7B04 DD 4E FE      [19]  136 	ld	c,-2 (ix)
   7B07 DD 46 FF      [19]  137 	ld	b,-1 (ix)
   7B0A DD CB FD 7E   [20]  138 	bit	7, -3 (ix)
   7B0E 28 0F         [12]  139 	jr	Z,00108$
   7B10 DD 6E FE      [19]  140 	ld	l,-2 (ix)
   7B13 DD 66 FF      [19]  141 	ld	h,-1 (ix)
   7B16 36 2D         [10]  142 	ld	(hl),#0x2D
   7B18 DD 4E FE      [19]  143 	ld	c,-2 (ix)
   7B1B DD 46 FF      [19]  144 	ld	b,-1 (ix)
   7B1E 03            [ 6]  145 	inc	bc
   7B1F                     146 00108$:
                            147 ;src/utils/itoa.c:22: *ptr-- = '\0';
   7B1F AF            [ 4]  148 	xor	a, a
   7B20 02            [ 7]  149 	ld	(bc),a
   7B21 0B            [ 6]  150 	dec	bc
                            151 ;src/utils/itoa.c:23: while(ptr1 < ptr) {
   7B22 DD 5E FA      [19]  152 	ld	e,-6 (ix)
   7B25 DD 56 FB      [19]  153 	ld	d,-5 (ix)
   7B28                     154 00109$:
   7B28 7B            [ 4]  155 	ld	a,e
   7B29 91            [ 4]  156 	sub	a, c
   7B2A 7A            [ 4]  157 	ld	a,d
   7B2B 98            [ 4]  158 	sbc	a, b
   7B2C 30 0E         [12]  159 	jr	NC,00111$
                            160 ;src/utils/itoa.c:24: tmp_char = *ptr;
   7B2E 0A            [ 7]  161 	ld	a,(bc)
   7B2F DD 77 F9      [19]  162 	ld	-7 (ix),a
                            163 ;src/utils/itoa.c:25: *ptr--= *ptr1;
   7B32 1A            [ 7]  164 	ld	a,(de)
   7B33 02            [ 7]  165 	ld	(bc),a
   7B34 0B            [ 6]  166 	dec	bc
                            167 ;src/utils/itoa.c:26: *ptr1++ = tmp_char;
   7B35 DD 7E F9      [19]  168 	ld	a,-7 (ix)
   7B38 12            [ 7]  169 	ld	(de),a
   7B39 13            [ 6]  170 	inc	de
   7B3A 18 EC         [12]  171 	jr	00109$
   7B3C                     172 00111$:
                            173 ;src/utils/itoa.c:28: return result;
   7B3C DD 6E 06      [19]  174 	ld	l,6 (ix)
   7B3F DD 66 07      [19]  175 	ld	h,7 (ix)
   7B42                     176 00112$:
   7B42 DD F9         [10]  177 	ld	sp, ix
   7B44 DD E1         [14]  178 	pop	ix
   7B46 C9            [10]  179 	ret
   7B47                     180 ___str_0:
   7B47 7A 79 78 77 76 75   181 	.ascii "zyxwvutsrqponmlkjihgfedcba9876543210123456789abcdefghijklmno"
        74 73 72 71 70 6F
        6E 6D 6C 6B 6A 69
        68 67 66 65 64 63
        62 61 39 38 37 36
        35 34 33 32 31 30
        31 32 33 34 35 36
        37 38 39 61 62 63
        64 65 66 67 68 69
        6A 6B 6C 6D 6E 6F
   7B83 70 71 72 73 74 75   182 	.ascii "pqrstuvwxyz"
        76 77 78 79 7A
   7B8E 00                  183 	.db 0x00
                            184 	.area _CODE
                            185 	.area _INITIALIZER
                            186 	.area _CABS (ABS)
