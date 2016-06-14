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
   895C                      47 _itoa::
   895C DD E5         [15]   48 	push	ix
   895E DD 21 00 00   [14]   49 	ld	ix,#0
   8962 DD 39         [15]   50 	add	ix,sp
   8964 21 F9 FF      [10]   51 	ld	hl,#-7
   8967 39            [11]   52 	add	hl,sp
   8968 F9            [ 6]   53 	ld	sp,hl
                             54 ;src/utils/itoa.c:9: char* ptr = result, *ptr1 = result, tmp_char;
   8969 DD 5E 06      [19]   55 	ld	e,6 (ix)
   896C DD 56 07      [19]   56 	ld	d,7 (ix)
   896F DD 73 FA      [19]   57 	ld	-6 (ix),e
   8972 DD 72 FB      [19]   58 	ld	-5 (ix),d
                             59 ;src/utils/itoa.c:12: if (base < 2 || base > 36) { *result = '\0'; return result; }
   8975 DD 7E 08      [19]   60 	ld	a,8 (ix)
   8978 D6 02         [ 7]   61 	sub	a, #0x02
   897A DD 7E 09      [19]   62 	ld	a,9 (ix)
   897D 17            [ 4]   63 	rla
   897E 3F            [ 4]   64 	ccf
   897F 1F            [ 4]   65 	rra
   8980 DE 80         [ 7]   66 	sbc	a, #0x80
   8982 38 12         [12]   67 	jr	C,00101$
   8984 3E 24         [ 7]   68 	ld	a,#0x24
   8986 DD BE 08      [19]   69 	cp	a, 8 (ix)
   8989 3E 00         [ 7]   70 	ld	a,#0x00
   898B DD 9E 09      [19]   71 	sbc	a, 9 (ix)
   898E E2 93 89      [10]   72 	jp	PO, 00140$
   8991 EE 80         [ 7]   73 	xor	a, #0x80
   8993                      74 00140$:
   8993 F2 9C 89      [10]   75 	jp	P,00115$
   8996                      76 00101$:
   8996 AF            [ 4]   77 	xor	a, a
   8997 12            [ 7]   78 	ld	(de),a
   8998 EB            [ 4]   79 	ex	de,hl
   8999 C3 3C 8A      [10]   80 	jp	00112$
                             81 ;src/utils/itoa.c:14: do {
   899C                      82 00115$:
   899C DD 73 FE      [19]   83 	ld	-2 (ix),e
   899F DD 72 FF      [19]   84 	ld	-1 (ix),d
   89A2                      85 00104$:
                             86 ;src/utils/itoa.c:15: tmp_value = value;
   89A2 DD 7E 04      [19]   87 	ld	a,4 (ix)
   89A5 DD 77 FC      [19]   88 	ld	-4 (ix),a
   89A8 DD 7E 05      [19]   89 	ld	a,5 (ix)
   89AB DD 77 FD      [19]   90 	ld	-3 (ix),a
                             91 ;src/utils/itoa.c:16: value /= base;
   89AE DD 6E 08      [19]   92 	ld	l,8 (ix)
   89B1 DD 66 09      [19]   93 	ld	h,9 (ix)
   89B4 E5            [11]   94 	push	hl
   89B5 DD 6E FC      [19]   95 	ld	l,-4 (ix)
   89B8 DD 66 FD      [19]   96 	ld	h,-3 (ix)
   89BB E5            [11]   97 	push	hl
   89BC CD 49 94      [17]   98 	call	__divsint
   89BF F1            [10]   99 	pop	af
   89C0 F1            [10]  100 	pop	af
   89C1 DD 75 04      [19]  101 	ld	4 (ix),l
   89C4 DD 74 05      [19]  102 	ld	5 (ix),h
                            103 ;src/utils/itoa.c:17: *ptr++ = "zyxwvutsrqponmlkjihgfedcba9876543210123456789abcdefghijklmnopqrstuvwxyz" [35 + (tmp_value - value * base)];
   89C7 DD 4E FC      [19]  104 	ld	c,-4 (ix)
   89CA DD 5E 04      [19]  105 	ld	e,4 (ix)
   89CD DD 66 08      [19]  106 	ld	h,8 (ix)
   89D0 2E 00         [ 7]  107 	ld	l, #0x00
   89D2 55            [ 4]  108 	ld	d, l
   89D3 06 08         [ 7]  109 	ld	b, #0x08
   89D5                     110 00141$:
   89D5 29            [11]  111 	add	hl,hl
   89D6 30 01         [12]  112 	jr	NC,00142$
   89D8 19            [11]  113 	add	hl,de
   89D9                     114 00142$:
   89D9 10 FA         [13]  115 	djnz	00141$
   89DB 79            [ 4]  116 	ld	a,c
   89DC 95            [ 4]  117 	sub	a, l
   89DD C6 23         [ 7]  118 	add	a, #0x23
   89DF 4F            [ 4]  119 	ld	c,a
   89E0 21 41 8A      [10]  120 	ld	hl,#___str_0
   89E3 06 00         [ 7]  121 	ld	b,#0x00
   89E5 09            [11]  122 	add	hl, bc
   89E6 4E            [ 7]  123 	ld	c,(hl)
   89E7 DD 6E FE      [19]  124 	ld	l,-2 (ix)
   89EA DD 66 FF      [19]  125 	ld	h,-1 (ix)
   89ED 71            [ 7]  126 	ld	(hl),c
   89EE DD 34 FE      [23]  127 	inc	-2 (ix)
   89F1 20 03         [12]  128 	jr	NZ,00143$
   89F3 DD 34 FF      [23]  129 	inc	-1 (ix)
   89F6                     130 00143$:
                            131 ;src/utils/itoa.c:18: } while ( value );
   89F6 DD 7E 05      [19]  132 	ld	a,5 (ix)
   89F9 DD B6 04      [19]  133 	or	a,4 (ix)
   89FC 20 A4         [12]  134 	jr	NZ,00104$
                            135 ;src/utils/itoa.c:21: if (tmp_value < 0) *ptr++ = '-';
   89FE DD 4E FE      [19]  136 	ld	c,-2 (ix)
   8A01 DD 46 FF      [19]  137 	ld	b,-1 (ix)
   8A04 DD CB FD 7E   [20]  138 	bit	7, -3 (ix)
   8A08 28 0F         [12]  139 	jr	Z,00108$
   8A0A DD 6E FE      [19]  140 	ld	l,-2 (ix)
   8A0D DD 66 FF      [19]  141 	ld	h,-1 (ix)
   8A10 36 2D         [10]  142 	ld	(hl),#0x2D
   8A12 DD 4E FE      [19]  143 	ld	c,-2 (ix)
   8A15 DD 46 FF      [19]  144 	ld	b,-1 (ix)
   8A18 03            [ 6]  145 	inc	bc
   8A19                     146 00108$:
                            147 ;src/utils/itoa.c:22: *ptr-- = '\0';
   8A19 AF            [ 4]  148 	xor	a, a
   8A1A 02            [ 7]  149 	ld	(bc),a
   8A1B 0B            [ 6]  150 	dec	bc
                            151 ;src/utils/itoa.c:23: while(ptr1 < ptr) {
   8A1C DD 5E FA      [19]  152 	ld	e,-6 (ix)
   8A1F DD 56 FB      [19]  153 	ld	d,-5 (ix)
   8A22                     154 00109$:
   8A22 7B            [ 4]  155 	ld	a,e
   8A23 91            [ 4]  156 	sub	a, c
   8A24 7A            [ 4]  157 	ld	a,d
   8A25 98            [ 4]  158 	sbc	a, b
   8A26 30 0E         [12]  159 	jr	NC,00111$
                            160 ;src/utils/itoa.c:24: tmp_char = *ptr;
   8A28 0A            [ 7]  161 	ld	a,(bc)
   8A29 DD 77 F9      [19]  162 	ld	-7 (ix),a
                            163 ;src/utils/itoa.c:25: *ptr--= *ptr1;
   8A2C 1A            [ 7]  164 	ld	a,(de)
   8A2D 02            [ 7]  165 	ld	(bc),a
   8A2E 0B            [ 6]  166 	dec	bc
                            167 ;src/utils/itoa.c:26: *ptr1++ = tmp_char;
   8A2F DD 7E F9      [19]  168 	ld	a,-7 (ix)
   8A32 12            [ 7]  169 	ld	(de),a
   8A33 13            [ 6]  170 	inc	de
   8A34 18 EC         [12]  171 	jr	00109$
   8A36                     172 00111$:
                            173 ;src/utils/itoa.c:28: return result;
   8A36 DD 6E 06      [19]  174 	ld	l,6 (ix)
   8A39 DD 66 07      [19]  175 	ld	h,7 (ix)
   8A3C                     176 00112$:
   8A3C DD F9         [10]  177 	ld	sp, ix
   8A3E DD E1         [14]  178 	pop	ix
   8A40 C9            [10]  179 	ret
   8A41                     180 ___str_0:
   8A41 7A 79 78 77 76 75   181 	.ascii "zyxwvutsrqponmlkjihgfedcba9876543210123456789abcdefghijklmno"
        74 73 72 71 70 6F
        6E 6D 6C 6B 6A 69
        68 67 66 65 64 63
        62 61 39 38 37 36
        35 34 33 32 31 30
        31 32 33 34 35 36
        37 38 39 61 62 63
        64 65 66 67 68 69
        6A 6B 6C 6D 6E 6F
   8A7D 70 71 72 73 74 75   182 	.ascii "pqrstuvwxyz"
        76 77 78 79 7A
   8A88 00                  183 	.db 0x00
                            184 	.area _CODE
                            185 	.area _INITIALIZER
                            186 	.area _CABS (ABS)
