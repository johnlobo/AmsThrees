                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.5 #9498 (Mac OS X x86_64)
                              4 ;--------------------------------------------------------
                              5 	.module video
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _cpct_getScreenPtr
                             12 	.globl _cpct_setPALColour
                             13 	.globl _cpct_setPalette
                             14 	.globl _cpct_fw2hw
                             15 	.globl _cpct_setVideoMode
                             16 	.globl _cpct_drawSolidBox
                             17 	.globl _cpct_px2byteM0
                             18 	.globl _cpct_memset
                             19 	.globl _cpct_disableFirmware
                             20 	.globl _G_graphics_palette
                             21 	.globl _setUpVideo
                             22 	.globl _clearScreen
                             23 	.globl _clearWindow
                             24 ;--------------------------------------------------------
                             25 ; special function registers
                             26 ;--------------------------------------------------------
                             27 ;--------------------------------------------------------
                             28 ; ram data
                             29 ;--------------------------------------------------------
                             30 	.area _DATA
                             31 ;--------------------------------------------------------
                             32 ; ram data
                             33 ;--------------------------------------------------------
                             34 	.area _INITIALIZED
                             35 ;--------------------------------------------------------
                             36 ; absolute external ram data
                             37 ;--------------------------------------------------------
                             38 	.area _DABS (ABS)
                             39 ;--------------------------------------------------------
                             40 ; global & static initialisations
                             41 ;--------------------------------------------------------
                             42 	.area _HOME
                             43 	.area _GSINIT
                             44 	.area _GSFINAL
                             45 	.area _GSINIT
                             46 ;--------------------------------------------------------
                             47 ; Home
                             48 ;--------------------------------------------------------
                             49 	.area _HOME
                             50 	.area _HOME
                             51 ;--------------------------------------------------------
                             52 ; code
                             53 ;--------------------------------------------------------
                             54 	.area _CODE
                             55 ;src/video/video.c:34: void setUpVideo() {
                             56 ;	---------------------------------
                             57 ; Function setUpVideo
                             58 ; ---------------------------------
   8085                      59 _setUpVideo::
                             60 ;src/video/video.c:37: cpct_disableFirmware();
   8085 CD 35 84      [17]   61 	call	_cpct_disableFirmware
                             62 ;src/video/video.c:39: cpct_fw2hw(G_graphics_palette, 16);
   8088 21 10 00      [10]   63 	ld	hl,#0x0010
   808B E5            [11]   64 	push	hl
   808C 21 B4 80      [10]   65 	ld	hl,#_G_graphics_palette
   808F E5            [11]   66 	push	hl
   8090 CD A6 82      [17]   67 	call	_cpct_fw2hw
                             68 ;src/video/video.c:40: cpct_setPalette  (G_graphics_palette, 16);
   8093 21 10 00      [10]   69 	ld	hl,#0x0010
   8096 E5            [11]   70 	push	hl
   8097 21 B4 80      [10]   71 	ld	hl,#_G_graphics_palette
   809A E5            [11]   72 	push	hl
   809B CD 10 81      [17]   73 	call	_cpct_setPalette
                             74 ;src/video/video.c:41: cpct_setBorder(G_graphics_palette[5]);
   809E 21 B9 80      [10]   75 	ld	hl, #_G_graphics_palette + 5
   80A1 46            [ 7]   76 	ld	b,(hl)
   80A2 C5            [11]   77 	push	bc
   80A3 33            [ 6]   78 	inc	sp
   80A4 3E 10         [ 7]   79 	ld	a,#0x10
   80A6 F5            [11]   80 	push	af
   80A7 33            [ 6]   81 	inc	sp
   80A8 CD 9D 81      [17]   82 	call	_cpct_setPALColour
                             83 ;src/video/video.c:42: cpct_setVideoMode(0);
   80AB 2E 00         [ 7]   84 	ld	l,#0x00
   80AD CD CB 83      [17]   85 	call	_cpct_setVideoMode
                             86 ;src/video/video.c:43: clearScreen();
   80B0 CD C4 80      [17]   87 	call	_clearScreen
   80B3 C9            [10]   88 	ret
   80B4                      89 _G_graphics_palette:
   80B4 01                   90 	.db #0x01	; 1
   80B5 18                   91 	.db #0x18	; 24
   80B6 14                   92 	.db #0x14	; 20
   80B7 06                   93 	.db #0x06	; 6
   80B8 1A                   94 	.db #0x1A	; 26
   80B9 00                   95 	.db #0x00	; 0
   80BA 02                   96 	.db #0x02	; 2
   80BB 08                   97 	.db #0x08	; 8
   80BC 0A                   98 	.db #0x0A	; 10
   80BD 0C                   99 	.db #0x0C	; 12
   80BE 0E                  100 	.db #0x0E	; 14
   80BF 10                  101 	.db #0x10	; 16
   80C0 12                  102 	.db #0x12	; 18
   80C1 16                  103 	.db #0x16	; 22
   80C2 18                  104 	.db #0x18	; 24
   80C3 10                  105 	.db #0x10	; 16
                            106 ;src/video/video.c:55: void clearScreen() {
                            107 ;	---------------------------------
                            108 ; Function clearScreen
                            109 ; ---------------------------------
   80C4                     110 _clearScreen::
                            111 ;src/video/video.c:57: cpct_memset(CPCT_VMEM_START, cpct_px2byteM0(5,5), 0x4000);
   80C4 21 05 05      [10]  112 	ld	hl,#0x0505
   80C7 E5            [11]  113 	push	hl
   80C8 CD FC 83      [17]  114 	call	_cpct_px2byteM0
   80CB 45            [ 4]  115 	ld	b,l
   80CC 21 00 40      [10]  116 	ld	hl,#0x4000
   80CF E5            [11]  117 	push	hl
   80D0 C5            [11]  118 	push	bc
   80D1 33            [ 6]  119 	inc	sp
   80D2 26 C0         [ 7]  120 	ld	h, #0xC0
   80D4 E5            [11]  121 	push	hl
   80D5 CD 18 84      [17]  122 	call	_cpct_memset
   80D8 C9            [10]  123 	ret
                            124 ;src/video/video.c:68: void clearWindow(u8 xPos, u8 yPos, u8 width, u8 height) {
                            125 ;	---------------------------------
                            126 ; Function clearWindow
                            127 ; ---------------------------------
   80D9                     128 _clearWindow::
                            129 ;src/video/video.c:70: u8* pvideo = cpct_getScreenPtr(CPCT_VMEM_START, xPos, yPos);
   80D9 21 03 00      [10]  130 	ld	hl, #3+0
   80DC 39            [11]  131 	add	hl, sp
   80DD 7E            [ 7]  132 	ld	a, (hl)
   80DE F5            [11]  133 	push	af
   80DF 33            [ 6]  134 	inc	sp
   80E0 21 03 00      [10]  135 	ld	hl, #3+0
   80E3 39            [11]  136 	add	hl, sp
   80E4 7E            [ 7]  137 	ld	a, (hl)
   80E5 F5            [11]  138 	push	af
   80E6 33            [ 6]  139 	inc	sp
   80E7 21 00 C0      [10]  140 	ld	hl,#0xC000
   80EA E5            [11]  141 	push	hl
   80EB CD 2F 85      [17]  142 	call	_cpct_getScreenPtr
                            143 ;src/video/video.c:71: cpct_drawSolidBox(pvideo, cpct_px2byteM0(5,5), width, height);
   80EE E5            [11]  144 	push	hl
   80EF 21 05 05      [10]  145 	ld	hl,#0x0505
   80F2 E5            [11]  146 	push	hl
   80F3 CD FC 83      [17]  147 	call	_cpct_px2byteM0
   80F6 55            [ 4]  148 	ld	d,l
   80F7 C1            [10]  149 	pop	bc
   80F8 21 05 00      [10]  150 	ld	hl, #5+0
   80FB 39            [11]  151 	add	hl, sp
   80FC 7E            [ 7]  152 	ld	a, (hl)
   80FD F5            [11]  153 	push	af
   80FE 33            [ 6]  154 	inc	sp
   80FF 21 05 00      [10]  155 	ld	hl, #5+0
   8102 39            [11]  156 	add	hl, sp
   8103 7E            [ 7]  157 	ld	a, (hl)
   8104 F5            [11]  158 	push	af
   8105 33            [ 6]  159 	inc	sp
   8106 D5            [11]  160 	push	de
   8107 33            [ 6]  161 	inc	sp
   8108 C5            [11]  162 	push	bc
   8109 CD 45 84      [17]  163 	call	_cpct_drawSolidBox
   810C F1            [10]  164 	pop	af
   810D F1            [10]  165 	pop	af
   810E 33            [ 6]  166 	inc	sp
   810F C9            [10]  167 	ret
                            168 	.area _CODE
                            169 	.area _INITIALIZER
                            170 	.area _CABS (ABS)
