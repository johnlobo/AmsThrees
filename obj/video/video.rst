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
   8F7F                      59 _setUpVideo::
                             60 ;src/video/video.c:37: cpct_disableFirmware();
   8F7F CD 2F 93      [17]   61 	call	_cpct_disableFirmware
                             62 ;src/video/video.c:39: cpct_fw2hw(G_graphics_palette, 16);
   8F82 21 10 00      [10]   63 	ld	hl,#0x0010
   8F85 E5            [11]   64 	push	hl
   8F86 21 AE 8F      [10]   65 	ld	hl,#_G_graphics_palette
   8F89 E5            [11]   66 	push	hl
   8F8A CD A0 91      [17]   67 	call	_cpct_fw2hw
                             68 ;src/video/video.c:40: cpct_setPalette  (G_graphics_palette, 16);
   8F8D 21 10 00      [10]   69 	ld	hl,#0x0010
   8F90 E5            [11]   70 	push	hl
   8F91 21 AE 8F      [10]   71 	ld	hl,#_G_graphics_palette
   8F94 E5            [11]   72 	push	hl
   8F95 CD 0A 90      [17]   73 	call	_cpct_setPalette
                             74 ;src/video/video.c:41: cpct_setBorder(G_graphics_palette[5]);
   8F98 21 B3 8F      [10]   75 	ld	hl, #_G_graphics_palette + 5
   8F9B 46            [ 7]   76 	ld	b,(hl)
   8F9C C5            [11]   77 	push	bc
   8F9D 33            [ 6]   78 	inc	sp
   8F9E 3E 10         [ 7]   79 	ld	a,#0x10
   8FA0 F5            [11]   80 	push	af
   8FA1 33            [ 6]   81 	inc	sp
   8FA2 CD 97 90      [17]   82 	call	_cpct_setPALColour
                             83 ;src/video/video.c:42: cpct_setVideoMode(0);
   8FA5 2E 00         [ 7]   84 	ld	l,#0x00
   8FA7 CD C5 92      [17]   85 	call	_cpct_setVideoMode
                             86 ;src/video/video.c:43: clearScreen();
   8FAA CD BE 8F      [17]   87 	call	_clearScreen
   8FAD C9            [10]   88 	ret
   8FAE                      89 _G_graphics_palette:
   8FAE 01                   90 	.db #0x01	; 1
   8FAF 18                   91 	.db #0x18	; 24
   8FB0 14                   92 	.db #0x14	; 20
   8FB1 06                   93 	.db #0x06	; 6
   8FB2 1A                   94 	.db #0x1A	; 26
   8FB3 00                   95 	.db #0x00	; 0
   8FB4 02                   96 	.db #0x02	; 2
   8FB5 08                   97 	.db #0x08	; 8
   8FB6 0A                   98 	.db #0x0A	; 10
   8FB7 0C                   99 	.db #0x0C	; 12
   8FB8 0E                  100 	.db #0x0E	; 14
   8FB9 10                  101 	.db #0x10	; 16
   8FBA 12                  102 	.db #0x12	; 18
   8FBB 16                  103 	.db #0x16	; 22
   8FBC 18                  104 	.db #0x18	; 24
   8FBD 10                  105 	.db #0x10	; 16
                            106 ;src/video/video.c:55: void clearScreen() {
                            107 ;	---------------------------------
                            108 ; Function clearScreen
                            109 ; ---------------------------------
   8FBE                     110 _clearScreen::
                            111 ;src/video/video.c:57: cpct_memset(CPCT_VMEM_START, cpct_px2byteM0(5,5), 0x4000);
   8FBE 21 05 05      [10]  112 	ld	hl,#0x0505
   8FC1 E5            [11]  113 	push	hl
   8FC2 CD F6 92      [17]  114 	call	_cpct_px2byteM0
   8FC5 45            [ 4]  115 	ld	b,l
   8FC6 21 00 40      [10]  116 	ld	hl,#0x4000
   8FC9 E5            [11]  117 	push	hl
   8FCA C5            [11]  118 	push	bc
   8FCB 33            [ 6]  119 	inc	sp
   8FCC 26 C0         [ 7]  120 	ld	h, #0xC0
   8FCE E5            [11]  121 	push	hl
   8FCF CD 12 93      [17]  122 	call	_cpct_memset
   8FD2 C9            [10]  123 	ret
                            124 ;src/video/video.c:68: void clearWindow(u8 xPos, u8 yPos, u8 width, u8 height) {
                            125 ;	---------------------------------
                            126 ; Function clearWindow
                            127 ; ---------------------------------
   8FD3                     128 _clearWindow::
                            129 ;src/video/video.c:70: u8* pvideo = cpct_getScreenPtr(CPCT_VMEM_START, xPos, yPos);
   8FD3 21 03 00      [10]  130 	ld	hl, #3+0
   8FD6 39            [11]  131 	add	hl, sp
   8FD7 7E            [ 7]  132 	ld	a, (hl)
   8FD8 F5            [11]  133 	push	af
   8FD9 33            [ 6]  134 	inc	sp
   8FDA 21 03 00      [10]  135 	ld	hl, #3+0
   8FDD 39            [11]  136 	add	hl, sp
   8FDE 7E            [ 7]  137 	ld	a, (hl)
   8FDF F5            [11]  138 	push	af
   8FE0 33            [ 6]  139 	inc	sp
   8FE1 21 00 C0      [10]  140 	ld	hl,#0xC000
   8FE4 E5            [11]  141 	push	hl
   8FE5 CD 29 94      [17]  142 	call	_cpct_getScreenPtr
                            143 ;src/video/video.c:71: cpct_drawSolidBox(pvideo, cpct_px2byteM0(5,5), width, height);
   8FE8 E5            [11]  144 	push	hl
   8FE9 21 05 05      [10]  145 	ld	hl,#0x0505
   8FEC E5            [11]  146 	push	hl
   8FED CD F6 92      [17]  147 	call	_cpct_px2byteM0
   8FF0 55            [ 4]  148 	ld	d,l
   8FF1 C1            [10]  149 	pop	bc
   8FF2 21 05 00      [10]  150 	ld	hl, #5+0
   8FF5 39            [11]  151 	add	hl, sp
   8FF6 7E            [ 7]  152 	ld	a, (hl)
   8FF7 F5            [11]  153 	push	af
   8FF8 33            [ 6]  154 	inc	sp
   8FF9 21 05 00      [10]  155 	ld	hl, #5+0
   8FFC 39            [11]  156 	add	hl, sp
   8FFD 7E            [ 7]  157 	ld	a, (hl)
   8FFE F5            [11]  158 	push	af
   8FFF 33            [ 6]  159 	inc	sp
   9000 D5            [11]  160 	push	de
   9001 33            [ 6]  161 	inc	sp
   9002 C5            [11]  162 	push	bc
   9003 CD 3F 93      [17]  163 	call	_cpct_drawSolidBox
   9006 F1            [10]  164 	pop	af
   9007 F1            [10]  165 	pop	af
   9008 33            [ 6]  166 	inc	sp
   9009 C9            [10]  167 	ret
                            168 	.area _CODE
                            169 	.area _INITIALIZER
                            170 	.area _CABS (ABS)
