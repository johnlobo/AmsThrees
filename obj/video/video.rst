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
   718F                      59 _setUpVideo::
                             60 ;src/video/video.c:37: cpct_disableFirmware();
   718F CD 68 7D      [17]   61 	call	_cpct_disableFirmware
                             62 ;src/video/video.c:39: cpct_fw2hw(G_graphics_palette, 16);
   7192 21 10 00      [10]   63 	ld	hl,#0x0010
   7195 E5            [11]   64 	push	hl
   7196 21 BE 71      [10]   65 	ld	hl,#_G_graphics_palette
   7199 E5            [11]   66 	push	hl
   719A CD D9 7B      [17]   67 	call	_cpct_fw2hw
                             68 ;src/video/video.c:40: cpct_setPalette  (G_graphics_palette, 16);
   719D 21 10 00      [10]   69 	ld	hl,#0x0010
   71A0 E5            [11]   70 	push	hl
   71A1 21 BE 71      [10]   71 	ld	hl,#_G_graphics_palette
   71A4 E5            [11]   72 	push	hl
   71A5 CD 1A 72      [17]   73 	call	_cpct_setPalette
                             74 ;src/video/video.c:41: cpct_setBorder(G_graphics_palette[5]);
   71A8 21 C3 71      [10]   75 	ld	hl, #_G_graphics_palette + 5
   71AB 46            [ 7]   76 	ld	b,(hl)
   71AC C5            [11]   77 	push	bc
   71AD 33            [ 6]   78 	inc	sp
   71AE 3E 10         [ 7]   79 	ld	a,#0x10
   71B0 F5            [11]   80 	push	af
   71B1 33            [ 6]   81 	inc	sp
   71B2 CD A7 72      [17]   82 	call	_cpct_setPALColour
                             83 ;src/video/video.c:42: cpct_setVideoMode(0);
   71B5 2E 00         [ 7]   84 	ld	l,#0x00
   71B7 CD FE 7C      [17]   85 	call	_cpct_setVideoMode
                             86 ;src/video/video.c:43: clearScreen();
   71BA CD CE 71      [17]   87 	call	_clearScreen
   71BD C9            [10]   88 	ret
   71BE                      89 _G_graphics_palette:
   71BE 01                   90 	.db #0x01	; 1
   71BF 18                   91 	.db #0x18	; 24
   71C0 14                   92 	.db #0x14	; 20
   71C1 06                   93 	.db #0x06	; 6
   71C2 1A                   94 	.db #0x1A	; 26
   71C3 00                   95 	.db #0x00	; 0
   71C4 02                   96 	.db #0x02	; 2
   71C5 08                   97 	.db #0x08	; 8
   71C6 0A                   98 	.db #0x0A	; 10
   71C7 0C                   99 	.db #0x0C	; 12
   71C8 0E                  100 	.db #0x0E	; 14
   71C9 10                  101 	.db #0x10	; 16
   71CA 12                  102 	.db #0x12	; 18
   71CB 16                  103 	.db #0x16	; 22
   71CC 18                  104 	.db #0x18	; 24
   71CD 10                  105 	.db #0x10	; 16
                            106 ;src/video/video.c:55: void clearScreen() {
                            107 ;	---------------------------------
                            108 ; Function clearScreen
                            109 ; ---------------------------------
   71CE                     110 _clearScreen::
                            111 ;src/video/video.c:57: cpct_memset(CPCT_VMEM_START, cpct_px2byteM0(5,5), 0x4000);
   71CE 21 05 05      [10]  112 	ld	hl,#0x0505
   71D1 E5            [11]  113 	push	hl
   71D2 CD 2F 7D      [17]  114 	call	_cpct_px2byteM0
   71D5 45            [ 4]  115 	ld	b,l
   71D6 21 00 40      [10]  116 	ld	hl,#0x4000
   71D9 E5            [11]  117 	push	hl
   71DA C5            [11]  118 	push	bc
   71DB 33            [ 6]  119 	inc	sp
   71DC 26 C0         [ 7]  120 	ld	h, #0xC0
   71DE E5            [11]  121 	push	hl
   71DF CD 4B 7D      [17]  122 	call	_cpct_memset
   71E2 C9            [10]  123 	ret
                            124 ;src/video/video.c:68: void clearWindow(u8 xPos, u8 yPos, u8 width, u8 height) {
                            125 ;	---------------------------------
                            126 ; Function clearWindow
                            127 ; ---------------------------------
   71E3                     128 _clearWindow::
                            129 ;src/video/video.c:70: u8* pvideo = cpct_getScreenPtr(CPCT_VMEM_START, xPos, yPos);
   71E3 21 03 00      [10]  130 	ld	hl, #3+0
   71E6 39            [11]  131 	add	hl, sp
   71E7 7E            [ 7]  132 	ld	a, (hl)
   71E8 F5            [11]  133 	push	af
   71E9 33            [ 6]  134 	inc	sp
   71EA 21 03 00      [10]  135 	ld	hl, #3+0
   71ED 39            [11]  136 	add	hl, sp
   71EE 7E            [ 7]  137 	ld	a, (hl)
   71EF F5            [11]  138 	push	af
   71F0 33            [ 6]  139 	inc	sp
   71F1 21 00 C0      [10]  140 	ld	hl,#0xC000
   71F4 E5            [11]  141 	push	hl
   71F5 CD 62 7E      [17]  142 	call	_cpct_getScreenPtr
                            143 ;src/video/video.c:71: cpct_drawSolidBox(pvideo, cpct_px2byteM0(5,5), width, height);
   71F8 E5            [11]  144 	push	hl
   71F9 21 05 05      [10]  145 	ld	hl,#0x0505
   71FC E5            [11]  146 	push	hl
   71FD CD 2F 7D      [17]  147 	call	_cpct_px2byteM0
   7200 55            [ 4]  148 	ld	d,l
   7201 C1            [10]  149 	pop	bc
   7202 21 05 00      [10]  150 	ld	hl, #5+0
   7205 39            [11]  151 	add	hl, sp
   7206 7E            [ 7]  152 	ld	a, (hl)
   7207 F5            [11]  153 	push	af
   7208 33            [ 6]  154 	inc	sp
   7209 21 05 00      [10]  155 	ld	hl, #5+0
   720C 39            [11]  156 	add	hl, sp
   720D 7E            [ 7]  157 	ld	a, (hl)
   720E F5            [11]  158 	push	af
   720F 33            [ 6]  159 	inc	sp
   7210 D5            [11]  160 	push	de
   7211 33            [ 6]  161 	inc	sp
   7212 C5            [11]  162 	push	bc
   7213 CD 78 7D      [17]  163 	call	_cpct_drawSolidBox
   7216 F1            [10]  164 	pop	af
   7217 F1            [10]  165 	pop	af
   7218 33            [ 6]  166 	inc	sp
   7219 C9            [10]  167 	ret
                            168 	.area _CODE
                            169 	.area _INITIALIZER
                            170 	.area _CABS (ABS)
