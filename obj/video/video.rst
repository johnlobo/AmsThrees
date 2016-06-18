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
   80F7                      59 _setUpVideo::
                             60 ;src/video/video.c:37: cpct_disableFirmware();
   80F7 CD A7 84      [17]   61 	call	_cpct_disableFirmware
                             62 ;src/video/video.c:39: cpct_fw2hw(G_graphics_palette, 16);
   80FA 21 10 00      [10]   63 	ld	hl,#0x0010
   80FD E5            [11]   64 	push	hl
   80FE 21 26 81      [10]   65 	ld	hl,#_G_graphics_palette
   8101 E5            [11]   66 	push	hl
   8102 CD 18 83      [17]   67 	call	_cpct_fw2hw
                             68 ;src/video/video.c:40: cpct_setPalette  (G_graphics_palette, 16);
   8105 21 10 00      [10]   69 	ld	hl,#0x0010
   8108 E5            [11]   70 	push	hl
   8109 21 26 81      [10]   71 	ld	hl,#_G_graphics_palette
   810C E5            [11]   72 	push	hl
   810D CD 82 81      [17]   73 	call	_cpct_setPalette
                             74 ;src/video/video.c:41: cpct_setBorder(G_graphics_palette[5]);
   8110 21 2B 81      [10]   75 	ld	hl, #_G_graphics_palette + 5
   8113 46            [ 7]   76 	ld	b,(hl)
   8114 C5            [11]   77 	push	bc
   8115 33            [ 6]   78 	inc	sp
   8116 3E 10         [ 7]   79 	ld	a,#0x10
   8118 F5            [11]   80 	push	af
   8119 33            [ 6]   81 	inc	sp
   811A CD 0F 82      [17]   82 	call	_cpct_setPALColour
                             83 ;src/video/video.c:42: cpct_setVideoMode(0);
   811D 2E 00         [ 7]   84 	ld	l,#0x00
   811F CD 3D 84      [17]   85 	call	_cpct_setVideoMode
                             86 ;src/video/video.c:43: clearScreen();
   8122 CD 36 81      [17]   87 	call	_clearScreen
   8125 C9            [10]   88 	ret
   8126                      89 _G_graphics_palette:
   8126 01                   90 	.db #0x01	; 1
   8127 18                   91 	.db #0x18	; 24
   8128 14                   92 	.db #0x14	; 20
   8129 06                   93 	.db #0x06	; 6
   812A 1A                   94 	.db #0x1A	; 26
   812B 00                   95 	.db #0x00	; 0
   812C 02                   96 	.db #0x02	; 2
   812D 08                   97 	.db #0x08	; 8
   812E 0A                   98 	.db #0x0A	; 10
   812F 0C                   99 	.db #0x0C	; 12
   8130 0E                  100 	.db #0x0E	; 14
   8131 10                  101 	.db #0x10	; 16
   8132 12                  102 	.db #0x12	; 18
   8133 16                  103 	.db #0x16	; 22
   8134 18                  104 	.db #0x18	; 24
   8135 10                  105 	.db #0x10	; 16
                            106 ;src/video/video.c:55: void clearScreen() {
                            107 ;	---------------------------------
                            108 ; Function clearScreen
                            109 ; ---------------------------------
   8136                     110 _clearScreen::
                            111 ;src/video/video.c:57: cpct_memset(CPCT_VMEM_START, cpct_px2byteM0(5,5), 0x4000);
   8136 21 05 05      [10]  112 	ld	hl,#0x0505
   8139 E5            [11]  113 	push	hl
   813A CD 6E 84      [17]  114 	call	_cpct_px2byteM0
   813D 45            [ 4]  115 	ld	b,l
   813E 21 00 40      [10]  116 	ld	hl,#0x4000
   8141 E5            [11]  117 	push	hl
   8142 C5            [11]  118 	push	bc
   8143 33            [ 6]  119 	inc	sp
   8144 26 C0         [ 7]  120 	ld	h, #0xC0
   8146 E5            [11]  121 	push	hl
   8147 CD 8A 84      [17]  122 	call	_cpct_memset
   814A C9            [10]  123 	ret
                            124 ;src/video/video.c:68: void clearWindow(u8 xPos, u8 yPos, u8 width, u8 height) {
                            125 ;	---------------------------------
                            126 ; Function clearWindow
                            127 ; ---------------------------------
   814B                     128 _clearWindow::
                            129 ;src/video/video.c:70: u8* pvideo = cpct_getScreenPtr(CPCT_VMEM_START, xPos, yPos);
   814B 21 03 00      [10]  130 	ld	hl, #3+0
   814E 39            [11]  131 	add	hl, sp
   814F 7E            [ 7]  132 	ld	a, (hl)
   8150 F5            [11]  133 	push	af
   8151 33            [ 6]  134 	inc	sp
   8152 21 03 00      [10]  135 	ld	hl, #3+0
   8155 39            [11]  136 	add	hl, sp
   8156 7E            [ 7]  137 	ld	a, (hl)
   8157 F5            [11]  138 	push	af
   8158 33            [ 6]  139 	inc	sp
   8159 21 00 C0      [10]  140 	ld	hl,#0xC000
   815C E5            [11]  141 	push	hl
   815D CD A1 85      [17]  142 	call	_cpct_getScreenPtr
                            143 ;src/video/video.c:71: cpct_drawSolidBox(pvideo, cpct_px2byteM0(5,5), width, height);
   8160 E5            [11]  144 	push	hl
   8161 21 05 05      [10]  145 	ld	hl,#0x0505
   8164 E5            [11]  146 	push	hl
   8165 CD 6E 84      [17]  147 	call	_cpct_px2byteM0
   8168 55            [ 4]  148 	ld	d,l
   8169 C1            [10]  149 	pop	bc
   816A 21 05 00      [10]  150 	ld	hl, #5+0
   816D 39            [11]  151 	add	hl, sp
   816E 7E            [ 7]  152 	ld	a, (hl)
   816F F5            [11]  153 	push	af
   8170 33            [ 6]  154 	inc	sp
   8171 21 05 00      [10]  155 	ld	hl, #5+0
   8174 39            [11]  156 	add	hl, sp
   8175 7E            [ 7]  157 	ld	a, (hl)
   8176 F5            [11]  158 	push	af
   8177 33            [ 6]  159 	inc	sp
   8178 D5            [11]  160 	push	de
   8179 33            [ 6]  161 	inc	sp
   817A C5            [11]  162 	push	bc
   817B CD B7 84      [17]  163 	call	_cpct_drawSolidBox
   817E F1            [10]  164 	pop	af
   817F F1            [10]  165 	pop	af
   8180 33            [ 6]  166 	inc	sp
   8181 C9            [10]  167 	ret
                            168 	.area _CODE
                            169 	.area _INITIALIZER
                            170 	.area _CABS (ABS)
