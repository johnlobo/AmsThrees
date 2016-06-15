                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.5 #9498 (Mac OS X x86_64)
                              4 ;--------------------------------------------------------
                              5 	.module tiles
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _tile_tiles_15
                             12 	.globl _tile_tiles_14
                             13 	.globl _tile_tiles_13
                             14 	.globl _tile_tiles_12
                             15 	.globl _tile_tiles_11
                             16 	.globl _tile_tiles_10
                             17 	.globl _tile_tiles_09
                             18 	.globl _tile_tiles_08
                             19 	.globl _tile_tiles_07
                             20 	.globl _tile_tiles_06
                             21 	.globl _tile_tiles_05
                             22 	.globl _tile_tiles_04
                             23 	.globl _tile_tiles_03
                             24 	.globl _tile_tiles_02
                             25 	.globl _tile_tiles_01
                             26 	.globl _tile_tiles_00
                             27 ;--------------------------------------------------------
                             28 ; special function registers
                             29 ;--------------------------------------------------------
                             30 ;--------------------------------------------------------
                             31 ; ram data
                             32 ;--------------------------------------------------------
                             33 	.area _DATA
                             34 ;--------------------------------------------------------
                             35 ; ram data
                             36 ;--------------------------------------------------------
                             37 	.area _INITIALIZED
                             38 ;--------------------------------------------------------
                             39 ; absolute external ram data
                             40 ;--------------------------------------------------------
                             41 	.area _DABS (ABS)
                             42 ;--------------------------------------------------------
                             43 ; global & static initialisations
                             44 ;--------------------------------------------------------
                             45 	.area _HOME
                             46 	.area _GSINIT
                             47 	.area _GSFINAL
                             48 	.area _GSINIT
                             49 ;--------------------------------------------------------
                             50 ; Home
                             51 ;--------------------------------------------------------
                             52 	.area _HOME
                             53 	.area _HOME
                             54 ;--------------------------------------------------------
                             55 ; code
                             56 ;--------------------------------------------------------
                             57 	.area _CODE
                             58 	.area _CODE
   5CA2                      59 _tile_tiles_00:
   5CA2 F0                   60 	.db #0xF0	; 240
   5CA3 0F                   61 	.db #0x0F	; 15
   5CA4 0F                   62 	.db #0x0F	; 15
   5CA5 0F                   63 	.db #0x0F	; 15
   5CA6 0F                   64 	.db #0x0F	; 15
   5CA7 0F                   65 	.db #0x0F	; 15
   5CA8 0F                   66 	.db #0x0F	; 15
   5CA9 0F                   67 	.db #0x0F	; 15
   5CAA 0F                   68 	.db #0x0F	; 15
   5CAB F0                   69 	.db #0xF0	; 240
   5CAC F0                   70 	.db #0xF0	; 240
   5CAD 0F                   71 	.db #0x0F	; 15
   5CAE 0F                   72 	.db #0x0F	; 15
   5CAF 0F                   73 	.db #0x0F	; 15
   5CB0 0F                   74 	.db #0x0F	; 15
   5CB1 0F                   75 	.db #0x0F	; 15
   5CB2 0F                   76 	.db #0x0F	; 15
   5CB3 0F                   77 	.db #0x0F	; 15
   5CB4 0F                   78 	.db #0x0F	; 15
   5CB5 F0                   79 	.db #0xF0	; 240
   5CB6 0F                   80 	.db #0x0F	; 15
   5CB7 0F                   81 	.db #0x0F	; 15
   5CB8 0F                   82 	.db #0x0F	; 15
   5CB9 0F                   83 	.db #0x0F	; 15
   5CBA 0F                   84 	.db #0x0F	; 15
   5CBB 0F                   85 	.db #0x0F	; 15
   5CBC 0F                   86 	.db #0x0F	; 15
   5CBD 0F                   87 	.db #0x0F	; 15
   5CBE 0F                   88 	.db #0x0F	; 15
   5CBF 0F                   89 	.db #0x0F	; 15
   5CC0 0F                   90 	.db #0x0F	; 15
   5CC1 0F                   91 	.db #0x0F	; 15
   5CC2 0F                   92 	.db #0x0F	; 15
   5CC3 0F                   93 	.db #0x0F	; 15
   5CC4 0F                   94 	.db #0x0F	; 15
   5CC5 0F                   95 	.db #0x0F	; 15
   5CC6 0F                   96 	.db #0x0F	; 15
   5CC7 0F                   97 	.db #0x0F	; 15
   5CC8 0F                   98 	.db #0x0F	; 15
   5CC9 0F                   99 	.db #0x0F	; 15
   5CCA 0F                  100 	.db #0x0F	; 15
   5CCB 0F                  101 	.db #0x0F	; 15
   5CCC 0F                  102 	.db #0x0F	; 15
   5CCD 0F                  103 	.db #0x0F	; 15
   5CCE 0F                  104 	.db #0x0F	; 15
   5CCF 0F                  105 	.db #0x0F	; 15
   5CD0 0F                  106 	.db #0x0F	; 15
   5CD1 0F                  107 	.db #0x0F	; 15
   5CD2 0F                  108 	.db #0x0F	; 15
   5CD3 0F                  109 	.db #0x0F	; 15
   5CD4 0F                  110 	.db #0x0F	; 15
   5CD5 0F                  111 	.db #0x0F	; 15
   5CD6 0F                  112 	.db #0x0F	; 15
   5CD7 0F                  113 	.db #0x0F	; 15
   5CD8 0F                  114 	.db #0x0F	; 15
   5CD9 0F                  115 	.db #0x0F	; 15
   5CDA 0F                  116 	.db #0x0F	; 15
   5CDB 0F                  117 	.db #0x0F	; 15
   5CDC 0F                  118 	.db #0x0F	; 15
   5CDD 0F                  119 	.db #0x0F	; 15
   5CDE 0F                  120 	.db #0x0F	; 15
   5CDF 0F                  121 	.db #0x0F	; 15
   5CE0 0F                  122 	.db #0x0F	; 15
   5CE1 0F                  123 	.db #0x0F	; 15
   5CE2 0F                  124 	.db #0x0F	; 15
   5CE3 0F                  125 	.db #0x0F	; 15
   5CE4 0F                  126 	.db #0x0F	; 15
   5CE5 0F                  127 	.db #0x0F	; 15
   5CE6 0F                  128 	.db #0x0F	; 15
   5CE7 0F                  129 	.db #0x0F	; 15
   5CE8 0F                  130 	.db #0x0F	; 15
   5CE9 0F                  131 	.db #0x0F	; 15
   5CEA 0F                  132 	.db #0x0F	; 15
   5CEB 0F                  133 	.db #0x0F	; 15
   5CEC 0F                  134 	.db #0x0F	; 15
   5CED 0F                  135 	.db #0x0F	; 15
   5CEE 0F                  136 	.db #0x0F	; 15
   5CEF 0F                  137 	.db #0x0F	; 15
   5CF0 0F                  138 	.db #0x0F	; 15
   5CF1 0F                  139 	.db #0x0F	; 15
   5CF2 0F                  140 	.db #0x0F	; 15
   5CF3 0F                  141 	.db #0x0F	; 15
   5CF4 0F                  142 	.db #0x0F	; 15
   5CF5 0F                  143 	.db #0x0F	; 15
   5CF6 0F                  144 	.db #0x0F	; 15
   5CF7 0F                  145 	.db #0x0F	; 15
   5CF8 0F                  146 	.db #0x0F	; 15
   5CF9 0F                  147 	.db #0x0F	; 15
   5CFA 0F                  148 	.db #0x0F	; 15
   5CFB 0F                  149 	.db #0x0F	; 15
   5CFC 0F                  150 	.db #0x0F	; 15
   5CFD 0F                  151 	.db #0x0F	; 15
   5CFE 0F                  152 	.db #0x0F	; 15
   5CFF 0F                  153 	.db #0x0F	; 15
   5D00 0F                  154 	.db #0x0F	; 15
   5D01 0F                  155 	.db #0x0F	; 15
   5D02 0F                  156 	.db #0x0F	; 15
   5D03 0F                  157 	.db #0x0F	; 15
   5D04 0F                  158 	.db #0x0F	; 15
   5D05 0F                  159 	.db #0x0F	; 15
   5D06 0F                  160 	.db #0x0F	; 15
   5D07 0F                  161 	.db #0x0F	; 15
   5D08 0F                  162 	.db #0x0F	; 15
   5D09 0F                  163 	.db #0x0F	; 15
   5D0A 0F                  164 	.db #0x0F	; 15
   5D0B 0F                  165 	.db #0x0F	; 15
   5D0C 0F                  166 	.db #0x0F	; 15
   5D0D 0F                  167 	.db #0x0F	; 15
   5D0E 0F                  168 	.db #0x0F	; 15
   5D0F 0F                  169 	.db #0x0F	; 15
   5D10 0F                  170 	.db #0x0F	; 15
   5D11 0F                  171 	.db #0x0F	; 15
   5D12 0F                  172 	.db #0x0F	; 15
   5D13 0F                  173 	.db #0x0F	; 15
   5D14 0F                  174 	.db #0x0F	; 15
   5D15 0F                  175 	.db #0x0F	; 15
   5D16 0F                  176 	.db #0x0F	; 15
   5D17 0F                  177 	.db #0x0F	; 15
   5D18 0F                  178 	.db #0x0F	; 15
   5D19 0F                  179 	.db #0x0F	; 15
   5D1A 0F                  180 	.db #0x0F	; 15
   5D1B 0F                  181 	.db #0x0F	; 15
   5D1C 0F                  182 	.db #0x0F	; 15
   5D1D 0F                  183 	.db #0x0F	; 15
   5D1E 0F                  184 	.db #0x0F	; 15
   5D1F 0F                  185 	.db #0x0F	; 15
   5D20 0F                  186 	.db #0x0F	; 15
   5D21 0F                  187 	.db #0x0F	; 15
   5D22 0F                  188 	.db #0x0F	; 15
   5D23 0F                  189 	.db #0x0F	; 15
   5D24 0F                  190 	.db #0x0F	; 15
   5D25 0F                  191 	.db #0x0F	; 15
   5D26 0F                  192 	.db #0x0F	; 15
   5D27 0F                  193 	.db #0x0F	; 15
   5D28 0F                  194 	.db #0x0F	; 15
   5D29 0F                  195 	.db #0x0F	; 15
   5D2A 0F                  196 	.db #0x0F	; 15
   5D2B 0F                  197 	.db #0x0F	; 15
   5D2C 0F                  198 	.db #0x0F	; 15
   5D2D 0F                  199 	.db #0x0F	; 15
   5D2E 0F                  200 	.db #0x0F	; 15
   5D2F 0F                  201 	.db #0x0F	; 15
   5D30 0F                  202 	.db #0x0F	; 15
   5D31 0F                  203 	.db #0x0F	; 15
   5D32 0F                  204 	.db #0x0F	; 15
   5D33 0F                  205 	.db #0x0F	; 15
   5D34 0F                  206 	.db #0x0F	; 15
   5D35 0F                  207 	.db #0x0F	; 15
   5D36 0F                  208 	.db #0x0F	; 15
   5D37 0F                  209 	.db #0x0F	; 15
   5D38 0F                  210 	.db #0x0F	; 15
   5D39 0F                  211 	.db #0x0F	; 15
   5D3A 0F                  212 	.db #0x0F	; 15
   5D3B 0F                  213 	.db #0x0F	; 15
   5D3C 0F                  214 	.db #0x0F	; 15
   5D3D 0F                  215 	.db #0x0F	; 15
   5D3E 0F                  216 	.db #0x0F	; 15
   5D3F 0F                  217 	.db #0x0F	; 15
   5D40 0F                  218 	.db #0x0F	; 15
   5D41 0F                  219 	.db #0x0F	; 15
   5D42 0F                  220 	.db #0x0F	; 15
   5D43 0F                  221 	.db #0x0F	; 15
   5D44 0F                  222 	.db #0x0F	; 15
   5D45 0F                  223 	.db #0x0F	; 15
   5D46 0F                  224 	.db #0x0F	; 15
   5D47 0F                  225 	.db #0x0F	; 15
   5D48 0F                  226 	.db #0x0F	; 15
   5D49 0F                  227 	.db #0x0F	; 15
   5D4A 0F                  228 	.db #0x0F	; 15
   5D4B 0F                  229 	.db #0x0F	; 15
   5D4C 0F                  230 	.db #0x0F	; 15
   5D4D 0F                  231 	.db #0x0F	; 15
   5D4E 0F                  232 	.db #0x0F	; 15
   5D4F 0F                  233 	.db #0x0F	; 15
   5D50 0F                  234 	.db #0x0F	; 15
   5D51 0F                  235 	.db #0x0F	; 15
   5D52 0F                  236 	.db #0x0F	; 15
   5D53 0F                  237 	.db #0x0F	; 15
   5D54 0F                  238 	.db #0x0F	; 15
   5D55 0F                  239 	.db #0x0F	; 15
   5D56 0F                  240 	.db #0x0F	; 15
   5D57 0F                  241 	.db #0x0F	; 15
   5D58 0F                  242 	.db #0x0F	; 15
   5D59 0F                  243 	.db #0x0F	; 15
   5D5A 0F                  244 	.db #0x0F	; 15
   5D5B 0F                  245 	.db #0x0F	; 15
   5D5C 0F                  246 	.db #0x0F	; 15
   5D5D 0F                  247 	.db #0x0F	; 15
   5D5E 0F                  248 	.db #0x0F	; 15
   5D5F 0F                  249 	.db #0x0F	; 15
   5D60 0F                  250 	.db #0x0F	; 15
   5D61 0F                  251 	.db #0x0F	; 15
   5D62 0F                  252 	.db #0x0F	; 15
   5D63 0F                  253 	.db #0x0F	; 15
   5D64 0F                  254 	.db #0x0F	; 15
   5D65 0F                  255 	.db #0x0F	; 15
   5D66 0F                  256 	.db #0x0F	; 15
   5D67 0F                  257 	.db #0x0F	; 15
   5D68 0F                  258 	.db #0x0F	; 15
   5D69 0F                  259 	.db #0x0F	; 15
   5D6A 0F                  260 	.db #0x0F	; 15
   5D6B 0F                  261 	.db #0x0F	; 15
   5D6C 0F                  262 	.db #0x0F	; 15
   5D6D 0F                  263 	.db #0x0F	; 15
   5D6E 0F                  264 	.db #0x0F	; 15
   5D6F 0F                  265 	.db #0x0F	; 15
   5D70 0F                  266 	.db #0x0F	; 15
   5D71 0F                  267 	.db #0x0F	; 15
   5D72 0F                  268 	.db #0x0F	; 15
   5D73 0F                  269 	.db #0x0F	; 15
   5D74 0F                  270 	.db #0x0F	; 15
   5D75 0F                  271 	.db #0x0F	; 15
   5D76 0F                  272 	.db #0x0F	; 15
   5D77 0F                  273 	.db #0x0F	; 15
   5D78 0F                  274 	.db #0x0F	; 15
   5D79 0F                  275 	.db #0x0F	; 15
   5D7A 0F                  276 	.db #0x0F	; 15
   5D7B 0F                  277 	.db #0x0F	; 15
   5D7C 0F                  278 	.db #0x0F	; 15
   5D7D 0F                  279 	.db #0x0F	; 15
   5D7E 0F                  280 	.db #0x0F	; 15
   5D7F 0F                  281 	.db #0x0F	; 15
   5D80 0F                  282 	.db #0x0F	; 15
   5D81 0F                  283 	.db #0x0F	; 15
   5D82 0F                  284 	.db #0x0F	; 15
   5D83 0F                  285 	.db #0x0F	; 15
   5D84 0F                  286 	.db #0x0F	; 15
   5D85 0F                  287 	.db #0x0F	; 15
   5D86 0F                  288 	.db #0x0F	; 15
   5D87 0F                  289 	.db #0x0F	; 15
   5D88 0F                  290 	.db #0x0F	; 15
   5D89 0F                  291 	.db #0x0F	; 15
   5D8A 0F                  292 	.db #0x0F	; 15
   5D8B 0F                  293 	.db #0x0F	; 15
   5D8C 0F                  294 	.db #0x0F	; 15
   5D8D 0F                  295 	.db #0x0F	; 15
   5D8E 0F                  296 	.db #0x0F	; 15
   5D8F 0F                  297 	.db #0x0F	; 15
   5D90 0F                  298 	.db #0x0F	; 15
   5D91 0F                  299 	.db #0x0F	; 15
   5D92 0F                  300 	.db #0x0F	; 15
   5D93 0F                  301 	.db #0x0F	; 15
   5D94 0F                  302 	.db #0x0F	; 15
   5D95 0F                  303 	.db #0x0F	; 15
   5D96 0F                  304 	.db #0x0F	; 15
   5D97 0F                  305 	.db #0x0F	; 15
   5D98 0F                  306 	.db #0x0F	; 15
   5D99 0F                  307 	.db #0x0F	; 15
   5D9A 0F                  308 	.db #0x0F	; 15
   5D9B 0F                  309 	.db #0x0F	; 15
   5D9C 0F                  310 	.db #0x0F	; 15
   5D9D 0F                  311 	.db #0x0F	; 15
   5D9E 0F                  312 	.db #0x0F	; 15
   5D9F 0F                  313 	.db #0x0F	; 15
   5DA0 0F                  314 	.db #0x0F	; 15
   5DA1 0F                  315 	.db #0x0F	; 15
   5DA2 0F                  316 	.db #0x0F	; 15
   5DA3 0F                  317 	.db #0x0F	; 15
   5DA4 0F                  318 	.db #0x0F	; 15
   5DA5 0F                  319 	.db #0x0F	; 15
   5DA6 0F                  320 	.db #0x0F	; 15
   5DA7 0F                  321 	.db #0x0F	; 15
   5DA8 0F                  322 	.db #0x0F	; 15
   5DA9 0F                  323 	.db #0x0F	; 15
   5DAA 0F                  324 	.db #0x0F	; 15
   5DAB 0F                  325 	.db #0x0F	; 15
   5DAC 0F                  326 	.db #0x0F	; 15
   5DAD 0F                  327 	.db #0x0F	; 15
   5DAE 0F                  328 	.db #0x0F	; 15
   5DAF 0F                  329 	.db #0x0F	; 15
   5DB0 0F                  330 	.db #0x0F	; 15
   5DB1 0F                  331 	.db #0x0F	; 15
   5DB2 0F                  332 	.db #0x0F	; 15
   5DB3 0F                  333 	.db #0x0F	; 15
   5DB4 0F                  334 	.db #0x0F	; 15
   5DB5 0F                  335 	.db #0x0F	; 15
   5DB6 0F                  336 	.db #0x0F	; 15
   5DB7 0F                  337 	.db #0x0F	; 15
   5DB8 0F                  338 	.db #0x0F	; 15
   5DB9 0F                  339 	.db #0x0F	; 15
   5DBA 0F                  340 	.db #0x0F	; 15
   5DBB 0F                  341 	.db #0x0F	; 15
   5DBC 0F                  342 	.db #0x0F	; 15
   5DBD 0F                  343 	.db #0x0F	; 15
   5DBE 0F                  344 	.db #0x0F	; 15
   5DBF 0F                  345 	.db #0x0F	; 15
   5DC0 0F                  346 	.db #0x0F	; 15
   5DC1 0F                  347 	.db #0x0F	; 15
   5DC2 0F                  348 	.db #0x0F	; 15
   5DC3 0F                  349 	.db #0x0F	; 15
   5DC4 0F                  350 	.db #0x0F	; 15
   5DC5 0F                  351 	.db #0x0F	; 15
   5DC6 0F                  352 	.db #0x0F	; 15
   5DC7 0F                  353 	.db #0x0F	; 15
   5DC8 0F                  354 	.db #0x0F	; 15
   5DC9 0F                  355 	.db #0x0F	; 15
   5DCA 0F                  356 	.db #0x0F	; 15
   5DCB 0F                  357 	.db #0x0F	; 15
   5DCC 0F                  358 	.db #0x0F	; 15
   5DCD 0F                  359 	.db #0x0F	; 15
   5DCE 0F                  360 	.db #0x0F	; 15
   5DCF 0F                  361 	.db #0x0F	; 15
   5DD0 0F                  362 	.db #0x0F	; 15
   5DD1 0F                  363 	.db #0x0F	; 15
   5DD2 0F                  364 	.db #0x0F	; 15
   5DD3 0F                  365 	.db #0x0F	; 15
   5DD4 0F                  366 	.db #0x0F	; 15
   5DD5 0F                  367 	.db #0x0F	; 15
   5DD6 0F                  368 	.db #0x0F	; 15
   5DD7 0F                  369 	.db #0x0F	; 15
   5DD8 0F                  370 	.db #0x0F	; 15
   5DD9 0F                  371 	.db #0x0F	; 15
   5DDA 0F                  372 	.db #0x0F	; 15
   5DDB 0F                  373 	.db #0x0F	; 15
   5DDC 0F                  374 	.db #0x0F	; 15
   5DDD 0F                  375 	.db #0x0F	; 15
   5DDE 0F                  376 	.db #0x0F	; 15
   5DDF 0F                  377 	.db #0x0F	; 15
   5DE0 0F                  378 	.db #0x0F	; 15
   5DE1 0F                  379 	.db #0x0F	; 15
   5DE2 0F                  380 	.db #0x0F	; 15
   5DE3 0F                  381 	.db #0x0F	; 15
   5DE4 0F                  382 	.db #0x0F	; 15
   5DE5 0F                  383 	.db #0x0F	; 15
   5DE6 0F                  384 	.db #0x0F	; 15
   5DE7 0F                  385 	.db #0x0F	; 15
   5DE8 0F                  386 	.db #0x0F	; 15
   5DE9 0F                  387 	.db #0x0F	; 15
   5DEA 0F                  388 	.db #0x0F	; 15
   5DEB 0F                  389 	.db #0x0F	; 15
   5DEC 0F                  390 	.db #0x0F	; 15
   5DED 0F                  391 	.db #0x0F	; 15
   5DEE 0F                  392 	.db #0x0F	; 15
   5DEF 0F                  393 	.db #0x0F	; 15
   5DF0 0F                  394 	.db #0x0F	; 15
   5DF1 0F                  395 	.db #0x0F	; 15
   5DF2 0F                  396 	.db #0x0F	; 15
   5DF3 0F                  397 	.db #0x0F	; 15
   5DF4 0F                  398 	.db #0x0F	; 15
   5DF5 0F                  399 	.db #0x0F	; 15
   5DF6 0F                  400 	.db #0x0F	; 15
   5DF7 0F                  401 	.db #0x0F	; 15
   5DF8 0F                  402 	.db #0x0F	; 15
   5DF9 0F                  403 	.db #0x0F	; 15
   5DFA 0F                  404 	.db #0x0F	; 15
   5DFB 0F                  405 	.db #0x0F	; 15
   5DFC 0F                  406 	.db #0x0F	; 15
   5DFD 0F                  407 	.db #0x0F	; 15
   5DFE 0F                  408 	.db #0x0F	; 15
   5DFF 0F                  409 	.db #0x0F	; 15
   5E00 0F                  410 	.db #0x0F	; 15
   5E01 0F                  411 	.db #0x0F	; 15
   5E02 0F                  412 	.db #0x0F	; 15
   5E03 0F                  413 	.db #0x0F	; 15
   5E04 0F                  414 	.db #0x0F	; 15
   5E05 0F                  415 	.db #0x0F	; 15
   5E06 0F                  416 	.db #0x0F	; 15
   5E07 0F                  417 	.db #0x0F	; 15
   5E08 0F                  418 	.db #0x0F	; 15
   5E09 0F                  419 	.db #0x0F	; 15
   5E0A 0F                  420 	.db #0x0F	; 15
   5E0B 0F                  421 	.db #0x0F	; 15
   5E0C 0F                  422 	.db #0x0F	; 15
   5E0D 0F                  423 	.db #0x0F	; 15
   5E0E 0F                  424 	.db #0x0F	; 15
   5E0F 0F                  425 	.db #0x0F	; 15
   5E10 0F                  426 	.db #0x0F	; 15
   5E11 0F                  427 	.db #0x0F	; 15
   5E12 0F                  428 	.db #0x0F	; 15
   5E13 0F                  429 	.db #0x0F	; 15
   5E14 0F                  430 	.db #0x0F	; 15
   5E15 0F                  431 	.db #0x0F	; 15
   5E16 0F                  432 	.db #0x0F	; 15
   5E17 0F                  433 	.db #0x0F	; 15
   5E18 0F                  434 	.db #0x0F	; 15
   5E19 0F                  435 	.db #0x0F	; 15
   5E1A 0F                  436 	.db #0x0F	; 15
   5E1B 0F                  437 	.db #0x0F	; 15
   5E1C 0F                  438 	.db #0x0F	; 15
   5E1D 0F                  439 	.db #0x0F	; 15
   5E1E F0                  440 	.db #0xF0	; 240
   5E1F 0F                  441 	.db #0x0F	; 15
   5E20 0F                  442 	.db #0x0F	; 15
   5E21 0F                  443 	.db #0x0F	; 15
   5E22 0F                  444 	.db #0x0F	; 15
   5E23 0F                  445 	.db #0x0F	; 15
   5E24 0F                  446 	.db #0x0F	; 15
   5E25 0F                  447 	.db #0x0F	; 15
   5E26 0F                  448 	.db #0x0F	; 15
   5E27 F0                  449 	.db #0xF0	; 240
   5E28 F0                  450 	.db #0xF0	; 240
   5E29 0F                  451 	.db #0x0F	; 15
   5E2A 0F                  452 	.db #0x0F	; 15
   5E2B 0F                  453 	.db #0x0F	; 15
   5E2C 0F                  454 	.db #0x0F	; 15
   5E2D 0F                  455 	.db #0x0F	; 15
   5E2E 0F                  456 	.db #0x0F	; 15
   5E2F 0F                  457 	.db #0x0F	; 15
   5E30 0F                  458 	.db #0x0F	; 15
   5E31 F0                  459 	.db #0xF0	; 240
   5E32                     460 _tile_tiles_01:
   5E32 F0                  461 	.db #0xF0	; 240
   5E33 3C                  462 	.db #0x3C	; 60
   5E34 3C                  463 	.db #0x3C	; 60
   5E35 3C                  464 	.db #0x3C	; 60
   5E36 3C                  465 	.db #0x3C	; 60
   5E37 3C                  466 	.db #0x3C	; 60
   5E38 3C                  467 	.db #0x3C	; 60
   5E39 3C                  468 	.db #0x3C	; 60
   5E3A 3C                  469 	.db #0x3C	; 60
   5E3B F0                  470 	.db #0xF0	; 240
   5E3C F0                  471 	.db #0xF0	; 240
   5E3D 3C                  472 	.db #0x3C	; 60
   5E3E 3C                  473 	.db #0x3C	; 60
   5E3F 3C                  474 	.db #0x3C	; 60
   5E40 3C                  475 	.db #0x3C	; 60
   5E41 3C                  476 	.db #0x3C	; 60
   5E42 3C                  477 	.db #0x3C	; 60
   5E43 3C                  478 	.db #0x3C	; 60
   5E44 3C                  479 	.db #0x3C	; 60
   5E45 F0                  480 	.db #0xF0	; 240
   5E46 3C                  481 	.db #0x3C	; 60
   5E47 2D                  482 	.db #0x2D	; 45
   5E48 0F                  483 	.db #0x0F	; 15
   5E49 0F                  484 	.db #0x0F	; 15
   5E4A 0F                  485 	.db #0x0F	; 15
   5E4B 0F                  486 	.db #0x0F	; 15
   5E4C 0F                  487 	.db #0x0F	; 15
   5E4D 0F                  488 	.db #0x0F	; 15
   5E4E 1E                  489 	.db #0x1E	; 30
   5E4F 3C                  490 	.db #0x3C	; 60
   5E50 3C                  491 	.db #0x3C	; 60
   5E51 2D                  492 	.db #0x2D	; 45
   5E52 3C                  493 	.db #0x3C	; 60
   5E53 3C                  494 	.db #0x3C	; 60
   5E54 3C                  495 	.db #0x3C	; 60
   5E55 3C                  496 	.db #0x3C	; 60
   5E56 3C                  497 	.db #0x3C	; 60
   5E57 3C                  498 	.db #0x3C	; 60
   5E58 1E                  499 	.db #0x1E	; 30
   5E59 3C                  500 	.db #0x3C	; 60
   5E5A 3C                  501 	.db #0x3C	; 60
   5E5B 0F                  502 	.db #0x0F	; 15
   5E5C 3C                  503 	.db #0x3C	; 60
   5E5D 3C                  504 	.db #0x3C	; 60
   5E5E 3C                  505 	.db #0x3C	; 60
   5E5F 3C                  506 	.db #0x3C	; 60
   5E60 3C                  507 	.db #0x3C	; 60
   5E61 3C                  508 	.db #0x3C	; 60
   5E62 0F                  509 	.db #0x0F	; 15
   5E63 3C                  510 	.db #0x3C	; 60
   5E64 3C                  511 	.db #0x3C	; 60
   5E65 1E                  512 	.db #0x1E	; 30
   5E66 3C                  513 	.db #0x3C	; 60
   5E67 3C                  514 	.db #0x3C	; 60
   5E68 3C                  515 	.db #0x3C	; 60
   5E69 3C                  516 	.db #0x3C	; 60
   5E6A 3C                  517 	.db #0x3C	; 60
   5E6B 3C                  518 	.db #0x3C	; 60
   5E6C 2D                  519 	.db #0x2D	; 45
   5E6D 3C                  520 	.db #0x3C	; 60
   5E6E 3C                  521 	.db #0x3C	; 60
   5E6F 1E                  522 	.db #0x1E	; 30
   5E70 3C                  523 	.db #0x3C	; 60
   5E71 3C                  524 	.db #0x3C	; 60
   5E72 3C                  525 	.db #0x3C	; 60
   5E73 3C                  526 	.db #0x3C	; 60
   5E74 3C                  527 	.db #0x3C	; 60
   5E75 3C                  528 	.db #0x3C	; 60
   5E76 2D                  529 	.db #0x2D	; 45
   5E77 3C                  530 	.db #0x3C	; 60
   5E78 3C                  531 	.db #0x3C	; 60
   5E79 1E                  532 	.db #0x1E	; 30
   5E7A 3C                  533 	.db #0x3C	; 60
   5E7B 3C                  534 	.db #0x3C	; 60
   5E7C 3C                  535 	.db #0x3C	; 60
   5E7D 3C                  536 	.db #0x3C	; 60
   5E7E 3C                  537 	.db #0x3C	; 60
   5E7F 3C                  538 	.db #0x3C	; 60
   5E80 2D                  539 	.db #0x2D	; 45
   5E81 3C                  540 	.db #0x3C	; 60
   5E82 3C                  541 	.db #0x3C	; 60
   5E83 1E                  542 	.db #0x1E	; 30
   5E84 3C                  543 	.db #0x3C	; 60
   5E85 3C                  544 	.db #0x3C	; 60
   5E86 3C                  545 	.db #0x3C	; 60
   5E87 3C                  546 	.db #0x3C	; 60
   5E88 3C                  547 	.db #0x3C	; 60
   5E89 3C                  548 	.db #0x3C	; 60
   5E8A 2D                  549 	.db #0x2D	; 45
   5E8B 3C                  550 	.db #0x3C	; 60
   5E8C 3C                  551 	.db #0x3C	; 60
   5E8D 1E                  552 	.db #0x1E	; 30
   5E8E 3C                  553 	.db #0x3C	; 60
   5E8F 3C                  554 	.db #0x3C	; 60
   5E90 3C                  555 	.db #0x3C	; 60
   5E91 34                  556 	.db #0x34	; 52	'4'
   5E92 3C                  557 	.db #0x3C	; 60
   5E93 3C                  558 	.db #0x3C	; 60
   5E94 2D                  559 	.db #0x2D	; 45
   5E95 3C                  560 	.db #0x3C	; 60
   5E96 3C                  561 	.db #0x3C	; 60
   5E97 1E                  562 	.db #0x1E	; 30
   5E98 3C                  563 	.db #0x3C	; 60
   5E99 3C                  564 	.db #0x3C	; 60
   5E9A 38                  565 	.db #0x38	; 56	'8'
   5E9B 34                  566 	.db #0x34	; 52	'4'
   5E9C 3C                  567 	.db #0x3C	; 60
   5E9D 3C                  568 	.db #0x3C	; 60
   5E9E 2D                  569 	.db #0x2D	; 45
   5E9F 3C                  570 	.db #0x3C	; 60
   5EA0 3C                  571 	.db #0x3C	; 60
   5EA1 1E                  572 	.db #0x1E	; 30
   5EA2 3C                  573 	.db #0x3C	; 60
   5EA3 3C                  574 	.db #0x3C	; 60
   5EA4 30                  575 	.db #0x30	; 48	'0'
   5EA5 34                  576 	.db #0x34	; 52	'4'
   5EA6 3C                  577 	.db #0x3C	; 60
   5EA7 3C                  578 	.db #0x3C	; 60
   5EA8 2D                  579 	.db #0x2D	; 45
   5EA9 3C                  580 	.db #0x3C	; 60
   5EAA 3C                  581 	.db #0x3C	; 60
   5EAB 1E                  582 	.db #0x1E	; 30
   5EAC 3C                  583 	.db #0x3C	; 60
   5EAD 3C                  584 	.db #0x3C	; 60
   5EAE 34                  585 	.db #0x34	; 52	'4'
   5EAF 34                  586 	.db #0x34	; 52	'4'
   5EB0 3C                  587 	.db #0x3C	; 60
   5EB1 3C                  588 	.db #0x3C	; 60
   5EB2 2D                  589 	.db #0x2D	; 45
   5EB3 3C                  590 	.db #0x3C	; 60
   5EB4 3C                  591 	.db #0x3C	; 60
   5EB5 1E                  592 	.db #0x1E	; 30
   5EB6 3C                  593 	.db #0x3C	; 60
   5EB7 3C                  594 	.db #0x3C	; 60
   5EB8 3C                  595 	.db #0x3C	; 60
   5EB9 34                  596 	.db #0x34	; 52	'4'
   5EBA 3C                  597 	.db #0x3C	; 60
   5EBB 3C                  598 	.db #0x3C	; 60
   5EBC 2D                  599 	.db #0x2D	; 45
   5EBD 3C                  600 	.db #0x3C	; 60
   5EBE 3C                  601 	.db #0x3C	; 60
   5EBF 1E                  602 	.db #0x1E	; 30
   5EC0 3C                  603 	.db #0x3C	; 60
   5EC1 3C                  604 	.db #0x3C	; 60
   5EC2 3C                  605 	.db #0x3C	; 60
   5EC3 34                  606 	.db #0x34	; 52	'4'
   5EC4 3C                  607 	.db #0x3C	; 60
   5EC5 3C                  608 	.db #0x3C	; 60
   5EC6 2D                  609 	.db #0x2D	; 45
   5EC7 3C                  610 	.db #0x3C	; 60
   5EC8 3C                  611 	.db #0x3C	; 60
   5EC9 1E                  612 	.db #0x1E	; 30
   5ECA 3C                  613 	.db #0x3C	; 60
   5ECB 3C                  614 	.db #0x3C	; 60
   5ECC 3C                  615 	.db #0x3C	; 60
   5ECD 34                  616 	.db #0x34	; 52	'4'
   5ECE 3C                  617 	.db #0x3C	; 60
   5ECF 3C                  618 	.db #0x3C	; 60
   5ED0 2D                  619 	.db #0x2D	; 45
   5ED1 3C                  620 	.db #0x3C	; 60
   5ED2 3C                  621 	.db #0x3C	; 60
   5ED3 1E                  622 	.db #0x1E	; 30
   5ED4 3C                  623 	.db #0x3C	; 60
   5ED5 3C                  624 	.db #0x3C	; 60
   5ED6 3C                  625 	.db #0x3C	; 60
   5ED7 34                  626 	.db #0x34	; 52	'4'
   5ED8 3C                  627 	.db #0x3C	; 60
   5ED9 3C                  628 	.db #0x3C	; 60
   5EDA 2D                  629 	.db #0x2D	; 45
   5EDB 3C                  630 	.db #0x3C	; 60
   5EDC 3C                  631 	.db #0x3C	; 60
   5EDD 1E                  632 	.db #0x1E	; 30
   5EDE 3C                  633 	.db #0x3C	; 60
   5EDF 3C                  634 	.db #0x3C	; 60
   5EE0 3C                  635 	.db #0x3C	; 60
   5EE1 34                  636 	.db #0x34	; 52	'4'
   5EE2 3C                  637 	.db #0x3C	; 60
   5EE3 3C                  638 	.db #0x3C	; 60
   5EE4 2D                  639 	.db #0x2D	; 45
   5EE5 3C                  640 	.db #0x3C	; 60
   5EE6 3C                  641 	.db #0x3C	; 60
   5EE7 1E                  642 	.db #0x1E	; 30
   5EE8 3C                  643 	.db #0x3C	; 60
   5EE9 3C                  644 	.db #0x3C	; 60
   5EEA 3C                  645 	.db #0x3C	; 60
   5EEB 34                  646 	.db #0x34	; 52	'4'
   5EEC 3C                  647 	.db #0x3C	; 60
   5EED 3C                  648 	.db #0x3C	; 60
   5EEE 2D                  649 	.db #0x2D	; 45
   5EEF 3C                  650 	.db #0x3C	; 60
   5EF0 3C                  651 	.db #0x3C	; 60
   5EF1 1E                  652 	.db #0x1E	; 30
   5EF2 3C                  653 	.db #0x3C	; 60
   5EF3 3C                  654 	.db #0x3C	; 60
   5EF4 3C                  655 	.db #0x3C	; 60
   5EF5 34                  656 	.db #0x34	; 52	'4'
   5EF6 3C                  657 	.db #0x3C	; 60
   5EF7 3C                  658 	.db #0x3C	; 60
   5EF8 2D                  659 	.db #0x2D	; 45
   5EF9 3C                  660 	.db #0x3C	; 60
   5EFA 3C                  661 	.db #0x3C	; 60
   5EFB 1E                  662 	.db #0x1E	; 30
   5EFC 3C                  663 	.db #0x3C	; 60
   5EFD 3C                  664 	.db #0x3C	; 60
   5EFE 3C                  665 	.db #0x3C	; 60
   5EFF 34                  666 	.db #0x34	; 52	'4'
   5F00 3C                  667 	.db #0x3C	; 60
   5F01 3C                  668 	.db #0x3C	; 60
   5F02 2D                  669 	.db #0x2D	; 45
   5F03 3C                  670 	.db #0x3C	; 60
   5F04 3C                  671 	.db #0x3C	; 60
   5F05 1E                  672 	.db #0x1E	; 30
   5F06 3C                  673 	.db #0x3C	; 60
   5F07 3C                  674 	.db #0x3C	; 60
   5F08 3C                  675 	.db #0x3C	; 60
   5F09 34                  676 	.db #0x34	; 52	'4'
   5F0A 3C                  677 	.db #0x3C	; 60
   5F0B 3C                  678 	.db #0x3C	; 60
   5F0C 2D                  679 	.db #0x2D	; 45
   5F0D 3C                  680 	.db #0x3C	; 60
   5F0E 3C                  681 	.db #0x3C	; 60
   5F0F 1E                  682 	.db #0x1E	; 30
   5F10 3C                  683 	.db #0x3C	; 60
   5F11 3C                  684 	.db #0x3C	; 60
   5F12 3C                  685 	.db #0x3C	; 60
   5F13 34                  686 	.db #0x34	; 52	'4'
   5F14 3C                  687 	.db #0x3C	; 60
   5F15 3C                  688 	.db #0x3C	; 60
   5F16 2D                  689 	.db #0x2D	; 45
   5F17 3C                  690 	.db #0x3C	; 60
   5F18 3C                  691 	.db #0x3C	; 60
   5F19 1E                  692 	.db #0x1E	; 30
   5F1A 3C                  693 	.db #0x3C	; 60
   5F1B 3C                  694 	.db #0x3C	; 60
   5F1C 3C                  695 	.db #0x3C	; 60
   5F1D 34                  696 	.db #0x34	; 52	'4'
   5F1E 3C                  697 	.db #0x3C	; 60
   5F1F 3C                  698 	.db #0x3C	; 60
   5F20 2D                  699 	.db #0x2D	; 45
   5F21 3C                  700 	.db #0x3C	; 60
   5F22 3C                  701 	.db #0x3C	; 60
   5F23 1E                  702 	.db #0x1E	; 30
   5F24 3C                  703 	.db #0x3C	; 60
   5F25 3C                  704 	.db #0x3C	; 60
   5F26 3C                  705 	.db #0x3C	; 60
   5F27 34                  706 	.db #0x34	; 52	'4'
   5F28 3C                  707 	.db #0x3C	; 60
   5F29 3C                  708 	.db #0x3C	; 60
   5F2A 2D                  709 	.db #0x2D	; 45
   5F2B 3C                  710 	.db #0x3C	; 60
   5F2C 3C                  711 	.db #0x3C	; 60
   5F2D 1E                  712 	.db #0x1E	; 30
   5F2E 3C                  713 	.db #0x3C	; 60
   5F2F 3C                  714 	.db #0x3C	; 60
   5F30 3C                  715 	.db #0x3C	; 60
   5F31 34                  716 	.db #0x34	; 52	'4'
   5F32 3C                  717 	.db #0x3C	; 60
   5F33 3C                  718 	.db #0x3C	; 60
   5F34 2D                  719 	.db #0x2D	; 45
   5F35 3C                  720 	.db #0x3C	; 60
   5F36 3C                  721 	.db #0x3C	; 60
   5F37 1E                  722 	.db #0x1E	; 30
   5F38 3C                  723 	.db #0x3C	; 60
   5F39 3C                  724 	.db #0x3C	; 60
   5F3A 3C                  725 	.db #0x3C	; 60
   5F3B 34                  726 	.db #0x34	; 52	'4'
   5F3C 3C                  727 	.db #0x3C	; 60
   5F3D 3C                  728 	.db #0x3C	; 60
   5F3E 2D                  729 	.db #0x2D	; 45
   5F3F 3C                  730 	.db #0x3C	; 60
   5F40 3C                  731 	.db #0x3C	; 60
   5F41 1E                  732 	.db #0x1E	; 30
   5F42 3C                  733 	.db #0x3C	; 60
   5F43 3C                  734 	.db #0x3C	; 60
   5F44 3C                  735 	.db #0x3C	; 60
   5F45 34                  736 	.db #0x34	; 52	'4'
   5F46 3C                  737 	.db #0x3C	; 60
   5F47 3C                  738 	.db #0x3C	; 60
   5F48 2D                  739 	.db #0x2D	; 45
   5F49 3C                  740 	.db #0x3C	; 60
   5F4A 3C                  741 	.db #0x3C	; 60
   5F4B 1E                  742 	.db #0x1E	; 30
   5F4C 3C                  743 	.db #0x3C	; 60
   5F4D 3C                  744 	.db #0x3C	; 60
   5F4E 3C                  745 	.db #0x3C	; 60
   5F4F 34                  746 	.db #0x34	; 52	'4'
   5F50 3C                  747 	.db #0x3C	; 60
   5F51 3C                  748 	.db #0x3C	; 60
   5F52 2D                  749 	.db #0x2D	; 45
   5F53 3C                  750 	.db #0x3C	; 60
   5F54 3C                  751 	.db #0x3C	; 60
   5F55 1E                  752 	.db #0x1E	; 30
   5F56 3C                  753 	.db #0x3C	; 60
   5F57 3C                  754 	.db #0x3C	; 60
   5F58 30                  755 	.db #0x30	; 48	'0'
   5F59 30                  756 	.db #0x30	; 48	'0'
   5F5A 34                  757 	.db #0x34	; 52	'4'
   5F5B 3C                  758 	.db #0x3C	; 60
   5F5C 2D                  759 	.db #0x2D	; 45
   5F5D 3C                  760 	.db #0x3C	; 60
   5F5E 3C                  761 	.db #0x3C	; 60
   5F5F 1E                  762 	.db #0x1E	; 30
   5F60 3C                  763 	.db #0x3C	; 60
   5F61 3C                  764 	.db #0x3C	; 60
   5F62 30                  765 	.db #0x30	; 48	'0'
   5F63 30                  766 	.db #0x30	; 48	'0'
   5F64 34                  767 	.db #0x34	; 52	'4'
   5F65 3C                  768 	.db #0x3C	; 60
   5F66 2D                  769 	.db #0x2D	; 45
   5F67 3C                  770 	.db #0x3C	; 60
   5F68 3C                  771 	.db #0x3C	; 60
   5F69 1E                  772 	.db #0x1E	; 30
   5F6A 3C                  773 	.db #0x3C	; 60
   5F6B 3C                  774 	.db #0x3C	; 60
   5F6C 3C                  775 	.db #0x3C	; 60
   5F6D 3C                  776 	.db #0x3C	; 60
   5F6E 3C                  777 	.db #0x3C	; 60
   5F6F 3C                  778 	.db #0x3C	; 60
   5F70 2D                  779 	.db #0x2D	; 45
   5F71 3C                  780 	.db #0x3C	; 60
   5F72 3C                  781 	.db #0x3C	; 60
   5F73 1E                  782 	.db #0x1E	; 30
   5F74 3C                  783 	.db #0x3C	; 60
   5F75 3C                  784 	.db #0x3C	; 60
   5F76 3C                  785 	.db #0x3C	; 60
   5F77 3C                  786 	.db #0x3C	; 60
   5F78 3C                  787 	.db #0x3C	; 60
   5F79 3C                  788 	.db #0x3C	; 60
   5F7A 2D                  789 	.db #0x2D	; 45
   5F7B 3C                  790 	.db #0x3C	; 60
   5F7C 3C                  791 	.db #0x3C	; 60
   5F7D 1E                  792 	.db #0x1E	; 30
   5F7E 3C                  793 	.db #0x3C	; 60
   5F7F 3C                  794 	.db #0x3C	; 60
   5F80 3C                  795 	.db #0x3C	; 60
   5F81 3C                  796 	.db #0x3C	; 60
   5F82 3C                  797 	.db #0x3C	; 60
   5F83 3C                  798 	.db #0x3C	; 60
   5F84 2D                  799 	.db #0x2D	; 45
   5F85 3C                  800 	.db #0x3C	; 60
   5F86 3C                  801 	.db #0x3C	; 60
   5F87 1E                  802 	.db #0x1E	; 30
   5F88 3C                  803 	.db #0x3C	; 60
   5F89 3C                  804 	.db #0x3C	; 60
   5F8A 3C                  805 	.db #0x3C	; 60
   5F8B 3C                  806 	.db #0x3C	; 60
   5F8C 3C                  807 	.db #0x3C	; 60
   5F8D 3C                  808 	.db #0x3C	; 60
   5F8E 2D                  809 	.db #0x2D	; 45
   5F8F 3C                  810 	.db #0x3C	; 60
   5F90 3C                  811 	.db #0x3C	; 60
   5F91 0F                  812 	.db #0x0F	; 15
   5F92 3C                  813 	.db #0x3C	; 60
   5F93 3C                  814 	.db #0x3C	; 60
   5F94 3C                  815 	.db #0x3C	; 60
   5F95 3C                  816 	.db #0x3C	; 60
   5F96 3C                  817 	.db #0x3C	; 60
   5F97 3C                  818 	.db #0x3C	; 60
   5F98 0F                  819 	.db #0x0F	; 15
   5F99 3C                  820 	.db #0x3C	; 60
   5F9A 3C                  821 	.db #0x3C	; 60
   5F9B 2D                  822 	.db #0x2D	; 45
   5F9C 3C                  823 	.db #0x3C	; 60
   5F9D 3C                  824 	.db #0x3C	; 60
   5F9E 3C                  825 	.db #0x3C	; 60
   5F9F 3C                  826 	.db #0x3C	; 60
   5FA0 3C                  827 	.db #0x3C	; 60
   5FA1 3C                  828 	.db #0x3C	; 60
   5FA2 1E                  829 	.db #0x1E	; 30
   5FA3 3C                  830 	.db #0x3C	; 60
   5FA4 3C                  831 	.db #0x3C	; 60
   5FA5 2D                  832 	.db #0x2D	; 45
   5FA6 0F                  833 	.db #0x0F	; 15
   5FA7 0F                  834 	.db #0x0F	; 15
   5FA8 0F                  835 	.db #0x0F	; 15
   5FA9 0F                  836 	.db #0x0F	; 15
   5FAA 0F                  837 	.db #0x0F	; 15
   5FAB 0F                  838 	.db #0x0F	; 15
   5FAC 1E                  839 	.db #0x1E	; 30
   5FAD 3C                  840 	.db #0x3C	; 60
   5FAE F0                  841 	.db #0xF0	; 240
   5FAF 3C                  842 	.db #0x3C	; 60
   5FB0 3C                  843 	.db #0x3C	; 60
   5FB1 3C                  844 	.db #0x3C	; 60
   5FB2 3C                  845 	.db #0x3C	; 60
   5FB3 3C                  846 	.db #0x3C	; 60
   5FB4 3C                  847 	.db #0x3C	; 60
   5FB5 3C                  848 	.db #0x3C	; 60
   5FB6 3C                  849 	.db #0x3C	; 60
   5FB7 F0                  850 	.db #0xF0	; 240
   5FB8 F0                  851 	.db #0xF0	; 240
   5FB9 3C                  852 	.db #0x3C	; 60
   5FBA 3C                  853 	.db #0x3C	; 60
   5FBB 3C                  854 	.db #0x3C	; 60
   5FBC 3C                  855 	.db #0x3C	; 60
   5FBD 3C                  856 	.db #0x3C	; 60
   5FBE 3C                  857 	.db #0x3C	; 60
   5FBF 3C                  858 	.db #0x3C	; 60
   5FC0 3C                  859 	.db #0x3C	; 60
   5FC1 F0                  860 	.db #0xF0	; 240
   5FC2                     861 _tile_tiles_02:
   5FC2 F0                  862 	.db #0xF0	; 240
   5FC3 CC                  863 	.db #0xCC	; 204
   5FC4 CC                  864 	.db #0xCC	; 204
   5FC5 CC                  865 	.db #0xCC	; 204
   5FC6 CC                  866 	.db #0xCC	; 204
   5FC7 CC                  867 	.db #0xCC	; 204
   5FC8 CC                  868 	.db #0xCC	; 204
   5FC9 CC                  869 	.db #0xCC	; 204
   5FCA CC                  870 	.db #0xCC	; 204
   5FCB F0                  871 	.db #0xF0	; 240
   5FCC F0                  872 	.db #0xF0	; 240
   5FCD CC                  873 	.db #0xCC	; 204
   5FCE CC                  874 	.db #0xCC	; 204
   5FCF CC                  875 	.db #0xCC	; 204
   5FD0 CC                  876 	.db #0xCC	; 204
   5FD1 CC                  877 	.db #0xCC	; 204
   5FD2 CC                  878 	.db #0xCC	; 204
   5FD3 CC                  879 	.db #0xCC	; 204
   5FD4 CC                  880 	.db #0xCC	; 204
   5FD5 F0                  881 	.db #0xF0	; 240
   5FD6 CC                  882 	.db #0xCC	; 204
   5FD7 8D                  883 	.db #0x8D	; 141
   5FD8 0F                  884 	.db #0x0F	; 15
   5FD9 0F                  885 	.db #0x0F	; 15
   5FDA 0F                  886 	.db #0x0F	; 15
   5FDB 0F                  887 	.db #0x0F	; 15
   5FDC 0F                  888 	.db #0x0F	; 15
   5FDD 0F                  889 	.db #0x0F	; 15
   5FDE 4E                  890 	.db #0x4E	; 78	'N'
   5FDF CC                  891 	.db #0xCC	; 204
   5FE0 CC                  892 	.db #0xCC	; 204
   5FE1 8D                  893 	.db #0x8D	; 141
   5FE2 CC                  894 	.db #0xCC	; 204
   5FE3 CC                  895 	.db #0xCC	; 204
   5FE4 CC                  896 	.db #0xCC	; 204
   5FE5 CC                  897 	.db #0xCC	; 204
   5FE6 CC                  898 	.db #0xCC	; 204
   5FE7 CC                  899 	.db #0xCC	; 204
   5FE8 4E                  900 	.db #0x4E	; 78	'N'
   5FE9 CC                  901 	.db #0xCC	; 204
   5FEA CC                  902 	.db #0xCC	; 204
   5FEB 0F                  903 	.db #0x0F	; 15
   5FEC CC                  904 	.db #0xCC	; 204
   5FED CC                  905 	.db #0xCC	; 204
   5FEE CC                  906 	.db #0xCC	; 204
   5FEF CC                  907 	.db #0xCC	; 204
   5FF0 CC                  908 	.db #0xCC	; 204
   5FF1 CC                  909 	.db #0xCC	; 204
   5FF2 0F                  910 	.db #0x0F	; 15
   5FF3 CC                  911 	.db #0xCC	; 204
   5FF4 CC                  912 	.db #0xCC	; 204
   5FF5 4E                  913 	.db #0x4E	; 78	'N'
   5FF6 CC                  914 	.db #0xCC	; 204
   5FF7 CC                  915 	.db #0xCC	; 204
   5FF8 CC                  916 	.db #0xCC	; 204
   5FF9 CC                  917 	.db #0xCC	; 204
   5FFA CC                  918 	.db #0xCC	; 204
   5FFB CC                  919 	.db #0xCC	; 204
   5FFC 8D                  920 	.db #0x8D	; 141
   5FFD CC                  921 	.db #0xCC	; 204
   5FFE CC                  922 	.db #0xCC	; 204
   5FFF 4E                  923 	.db #0x4E	; 78	'N'
   6000 CC                  924 	.db #0xCC	; 204
   6001 CC                  925 	.db #0xCC	; 204
   6002 CC                  926 	.db #0xCC	; 204
   6003 CC                  927 	.db #0xCC	; 204
   6004 CC                  928 	.db #0xCC	; 204
   6005 CC                  929 	.db #0xCC	; 204
   6006 8D                  930 	.db #0x8D	; 141
   6007 CC                  931 	.db #0xCC	; 204
   6008 CC                  932 	.db #0xCC	; 204
   6009 4E                  933 	.db #0x4E	; 78	'N'
   600A CC                  934 	.db #0xCC	; 204
   600B CC                  935 	.db #0xCC	; 204
   600C CC                  936 	.db #0xCC	; 204
   600D CC                  937 	.db #0xCC	; 204
   600E CC                  938 	.db #0xCC	; 204
   600F CC                  939 	.db #0xCC	; 204
   6010 8D                  940 	.db #0x8D	; 141
   6011 CC                  941 	.db #0xCC	; 204
   6012 CC                  942 	.db #0xCC	; 204
   6013 4E                  943 	.db #0x4E	; 78	'N'
   6014 CC                  944 	.db #0xCC	; 204
   6015 CC                  945 	.db #0xCC	; 204
   6016 CC                  946 	.db #0xCC	; 204
   6017 CC                  947 	.db #0xCC	; 204
   6018 CC                  948 	.db #0xCC	; 204
   6019 CC                  949 	.db #0xCC	; 204
   601A 8D                  950 	.db #0x8D	; 141
   601B CC                  951 	.db #0xCC	; 204
   601C CC                  952 	.db #0xCC	; 204
   601D 4E                  953 	.db #0x4E	; 78	'N'
   601E CC                  954 	.db #0xCC	; 204
   601F CC                  955 	.db #0xCC	; 204
   6020 CC                  956 	.db #0xCC	; 204
   6021 30                  957 	.db #0x30	; 48	'0'
   6022 CC                  958 	.db #0xCC	; 204
   6023 CC                  959 	.db #0xCC	; 204
   6024 8D                  960 	.db #0x8D	; 141
   6025 CC                  961 	.db #0xCC	; 204
   6026 CC                  962 	.db #0xCC	; 204
   6027 4E                  963 	.db #0x4E	; 78	'N'
   6028 CC                  964 	.db #0xCC	; 204
   6029 CC                  965 	.db #0xCC	; 204
   602A 98                  966 	.db #0x98	; 152
   602B 30                  967 	.db #0x30	; 48	'0'
   602C CC                  968 	.db #0xCC	; 204
   602D CC                  969 	.db #0xCC	; 204
   602E 8D                  970 	.db #0x8D	; 141
   602F CC                  971 	.db #0xCC	; 204
   6030 CC                  972 	.db #0xCC	; 204
   6031 4E                  973 	.db #0x4E	; 78	'N'
   6032 CC                  974 	.db #0xCC	; 204
   6033 CC                  975 	.db #0xCC	; 204
   6034 98                  976 	.db #0x98	; 152
   6035 98                  977 	.db #0x98	; 152
   6036 64                  978 	.db #0x64	; 100	'd'
   6037 CC                  979 	.db #0xCC	; 204
   6038 8D                  980 	.db #0x8D	; 141
   6039 CC                  981 	.db #0xCC	; 204
   603A CC                  982 	.db #0xCC	; 204
   603B 4E                  983 	.db #0x4E	; 78	'N'
   603C CC                  984 	.db #0xCC	; 204
   603D CC                  985 	.db #0xCC	; 204
   603E 64                  986 	.db #0x64	; 100	'd'
   603F CC                  987 	.db #0xCC	; 204
   6040 64                  988 	.db #0x64	; 100	'd'
   6041 CC                  989 	.db #0xCC	; 204
   6042 8D                  990 	.db #0x8D	; 141
   6043 CC                  991 	.db #0xCC	; 204
   6044 CC                  992 	.db #0xCC	; 204
   6045 4E                  993 	.db #0x4E	; 78	'N'
   6046 CC                  994 	.db #0xCC	; 204
   6047 CC                  995 	.db #0xCC	; 204
   6048 64                  996 	.db #0x64	; 100	'd'
   6049 CC                  997 	.db #0xCC	; 204
   604A 64                  998 	.db #0x64	; 100	'd'
   604B CC                  999 	.db #0xCC	; 204
   604C 8D                 1000 	.db #0x8D	; 141
   604D CC                 1001 	.db #0xCC	; 204
   604E CC                 1002 	.db #0xCC	; 204
   604F 4E                 1003 	.db #0x4E	; 78	'N'
   6050 CC                 1004 	.db #0xCC	; 204
   6051 CC                 1005 	.db #0xCC	; 204
   6052 64                 1006 	.db #0x64	; 100	'd'
   6053 CC                 1007 	.db #0xCC	; 204
   6054 64                 1008 	.db #0x64	; 100	'd'
   6055 CC                 1009 	.db #0xCC	; 204
   6056 8D                 1010 	.db #0x8D	; 141
   6057 CC                 1011 	.db #0xCC	; 204
   6058 CC                 1012 	.db #0xCC	; 204
   6059 4E                 1013 	.db #0x4E	; 78	'N'
   605A CC                 1014 	.db #0xCC	; 204
   605B CC                 1015 	.db #0xCC	; 204
   605C CC                 1016 	.db #0xCC	; 204
   605D CC                 1017 	.db #0xCC	; 204
   605E 64                 1018 	.db #0x64	; 100	'd'
   605F CC                 1019 	.db #0xCC	; 204
   6060 8D                 1020 	.db #0x8D	; 141
   6061 CC                 1021 	.db #0xCC	; 204
   6062 CC                 1022 	.db #0xCC	; 204
   6063 4E                 1023 	.db #0x4E	; 78	'N'
   6064 CC                 1024 	.db #0xCC	; 204
   6065 CC                 1025 	.db #0xCC	; 204
   6066 CC                 1026 	.db #0xCC	; 204
   6067 CC                 1027 	.db #0xCC	; 204
   6068 64                 1028 	.db #0x64	; 100	'd'
   6069 CC                 1029 	.db #0xCC	; 204
   606A 8D                 1030 	.db #0x8D	; 141
   606B CC                 1031 	.db #0xCC	; 204
   606C CC                 1032 	.db #0xCC	; 204
   606D 4E                 1033 	.db #0x4E	; 78	'N'
   606E CC                 1034 	.db #0xCC	; 204
   606F CC                 1035 	.db #0xCC	; 204
   6070 CC                 1036 	.db #0xCC	; 204
   6071 98                 1037 	.db #0x98	; 152
   6072 CC                 1038 	.db #0xCC	; 204
   6073 CC                 1039 	.db #0xCC	; 204
   6074 8D                 1040 	.db #0x8D	; 141
   6075 CC                 1041 	.db #0xCC	; 204
   6076 CC                 1042 	.db #0xCC	; 204
   6077 4E                 1043 	.db #0x4E	; 78	'N'
   6078 CC                 1044 	.db #0xCC	; 204
   6079 CC                 1045 	.db #0xCC	; 204
   607A CC                 1046 	.db #0xCC	; 204
   607B 98                 1047 	.db #0x98	; 152
   607C CC                 1048 	.db #0xCC	; 204
   607D CC                 1049 	.db #0xCC	; 204
   607E 8D                 1050 	.db #0x8D	; 141
   607F CC                 1051 	.db #0xCC	; 204
   6080 CC                 1052 	.db #0xCC	; 204
   6081 4E                 1053 	.db #0x4E	; 78	'N'
   6082 CC                 1054 	.db #0xCC	; 204
   6083 CC                 1055 	.db #0xCC	; 204
   6084 CC                 1056 	.db #0xCC	; 204
   6085 30                 1057 	.db #0x30	; 48	'0'
   6086 CC                 1058 	.db #0xCC	; 204
   6087 CC                 1059 	.db #0xCC	; 204
   6088 8D                 1060 	.db #0x8D	; 141
   6089 CC                 1061 	.db #0xCC	; 204
   608A CC                 1062 	.db #0xCC	; 204
   608B 4E                 1063 	.db #0x4E	; 78	'N'
   608C CC                 1064 	.db #0xCC	; 204
   608D CC                 1065 	.db #0xCC	; 204
   608E CC                 1066 	.db #0xCC	; 204
   608F 64                 1067 	.db #0x64	; 100	'd'
   6090 CC                 1068 	.db #0xCC	; 204
   6091 CC                 1069 	.db #0xCC	; 204
   6092 8D                 1070 	.db #0x8D	; 141
   6093 CC                 1071 	.db #0xCC	; 204
   6094 CC                 1072 	.db #0xCC	; 204
   6095 4E                 1073 	.db #0x4E	; 78	'N'
   6096 CC                 1074 	.db #0xCC	; 204
   6097 CC                 1075 	.db #0xCC	; 204
   6098 CC                 1076 	.db #0xCC	; 204
   6099 64                 1077 	.db #0x64	; 100	'd'
   609A CC                 1078 	.db #0xCC	; 204
   609B CC                 1079 	.db #0xCC	; 204
   609C 8D                 1080 	.db #0x8D	; 141
   609D CC                 1081 	.db #0xCC	; 204
   609E CC                 1082 	.db #0xCC	; 204
   609F 4E                 1083 	.db #0x4E	; 78	'N'
   60A0 CC                 1084 	.db #0xCC	; 204
   60A1 CC                 1085 	.db #0xCC	; 204
   60A2 98                 1086 	.db #0x98	; 152
   60A3 64                 1087 	.db #0x64	; 100	'd'
   60A4 CC                 1088 	.db #0xCC	; 204
   60A5 CC                 1089 	.db #0xCC	; 204
   60A6 8D                 1090 	.db #0x8D	; 141
   60A7 CC                 1091 	.db #0xCC	; 204
   60A8 CC                 1092 	.db #0xCC	; 204
   60A9 4E                 1093 	.db #0x4E	; 78	'N'
   60AA CC                 1094 	.db #0xCC	; 204
   60AB CC                 1095 	.db #0xCC	; 204
   60AC 98                 1096 	.db #0x98	; 152
   60AD CC                 1097 	.db #0xCC	; 204
   60AE CC                 1098 	.db #0xCC	; 204
   60AF CC                 1099 	.db #0xCC	; 204
   60B0 8D                 1100 	.db #0x8D	; 141
   60B1 CC                 1101 	.db #0xCC	; 204
   60B2 CC                 1102 	.db #0xCC	; 204
   60B3 4E                 1103 	.db #0x4E	; 78	'N'
   60B4 CC                 1104 	.db #0xCC	; 204
   60B5 CC                 1105 	.db #0xCC	; 204
   60B6 98                 1106 	.db #0x98	; 152
   60B7 CC                 1107 	.db #0xCC	; 204
   60B8 CC                 1108 	.db #0xCC	; 204
   60B9 CC                 1109 	.db #0xCC	; 204
   60BA 8D                 1110 	.db #0x8D	; 141
   60BB CC                 1111 	.db #0xCC	; 204
   60BC CC                 1112 	.db #0xCC	; 204
   60BD 4E                 1113 	.db #0x4E	; 78	'N'
   60BE CC                 1114 	.db #0xCC	; 204
   60BF CC                 1115 	.db #0xCC	; 204
   60C0 64                 1116 	.db #0x64	; 100	'd'
   60C1 CC                 1117 	.db #0xCC	; 204
   60C2 CC                 1118 	.db #0xCC	; 204
   60C3 CC                 1119 	.db #0xCC	; 204
   60C4 8D                 1120 	.db #0x8D	; 141
   60C5 CC                 1121 	.db #0xCC	; 204
   60C6 CC                 1122 	.db #0xCC	; 204
   60C7 4E                 1123 	.db #0x4E	; 78	'N'
   60C8 CC                 1124 	.db #0xCC	; 204
   60C9 CC                 1125 	.db #0xCC	; 204
   60CA 64                 1126 	.db #0x64	; 100	'd'
   60CB CC                 1127 	.db #0xCC	; 204
   60CC CC                 1128 	.db #0xCC	; 204
   60CD CC                 1129 	.db #0xCC	; 204
   60CE 8D                 1130 	.db #0x8D	; 141
   60CF CC                 1131 	.db #0xCC	; 204
   60D0 CC                 1132 	.db #0xCC	; 204
   60D1 4E                 1133 	.db #0x4E	; 78	'N'
   60D2 CC                 1134 	.db #0xCC	; 204
   60D3 CC                 1135 	.db #0xCC	; 204
   60D4 64                 1136 	.db #0x64	; 100	'd'
   60D5 CC                 1137 	.db #0xCC	; 204
   60D6 CC                 1138 	.db #0xCC	; 204
   60D7 CC                 1139 	.db #0xCC	; 204
   60D8 8D                 1140 	.db #0x8D	; 141
   60D9 CC                 1141 	.db #0xCC	; 204
   60DA CC                 1142 	.db #0xCC	; 204
   60DB 4E                 1143 	.db #0x4E	; 78	'N'
   60DC CC                 1144 	.db #0xCC	; 204
   60DD CC                 1145 	.db #0xCC	; 204
   60DE 64                 1146 	.db #0x64	; 100	'd'
   60DF CC                 1147 	.db #0xCC	; 204
   60E0 CC                 1148 	.db #0xCC	; 204
   60E1 CC                 1149 	.db #0xCC	; 204
   60E2 8D                 1150 	.db #0x8D	; 141
   60E3 CC                 1151 	.db #0xCC	; 204
   60E4 CC                 1152 	.db #0xCC	; 204
   60E5 4E                 1153 	.db #0x4E	; 78	'N'
   60E6 CC                 1154 	.db #0xCC	; 204
   60E7 CC                 1155 	.db #0xCC	; 204
   60E8 30                 1156 	.db #0x30	; 48	'0'
   60E9 30                 1157 	.db #0x30	; 48	'0'
   60EA 64                 1158 	.db #0x64	; 100	'd'
   60EB CC                 1159 	.db #0xCC	; 204
   60EC 8D                 1160 	.db #0x8D	; 141
   60ED CC                 1161 	.db #0xCC	; 204
   60EE CC                 1162 	.db #0xCC	; 204
   60EF 4E                 1163 	.db #0x4E	; 78	'N'
   60F0 CC                 1164 	.db #0xCC	; 204
   60F1 CC                 1165 	.db #0xCC	; 204
   60F2 30                 1166 	.db #0x30	; 48	'0'
   60F3 30                 1167 	.db #0x30	; 48	'0'
   60F4 64                 1168 	.db #0x64	; 100	'd'
   60F5 CC                 1169 	.db #0xCC	; 204
   60F6 8D                 1170 	.db #0x8D	; 141
   60F7 CC                 1171 	.db #0xCC	; 204
   60F8 CC                 1172 	.db #0xCC	; 204
   60F9 4E                 1173 	.db #0x4E	; 78	'N'
   60FA CC                 1174 	.db #0xCC	; 204
   60FB CC                 1175 	.db #0xCC	; 204
   60FC CC                 1176 	.db #0xCC	; 204
   60FD CC                 1177 	.db #0xCC	; 204
   60FE CC                 1178 	.db #0xCC	; 204
   60FF CC                 1179 	.db #0xCC	; 204
   6100 8D                 1180 	.db #0x8D	; 141
   6101 CC                 1181 	.db #0xCC	; 204
   6102 CC                 1182 	.db #0xCC	; 204
   6103 4E                 1183 	.db #0x4E	; 78	'N'
   6104 CC                 1184 	.db #0xCC	; 204
   6105 CC                 1185 	.db #0xCC	; 204
   6106 CC                 1186 	.db #0xCC	; 204
   6107 CC                 1187 	.db #0xCC	; 204
   6108 CC                 1188 	.db #0xCC	; 204
   6109 CC                 1189 	.db #0xCC	; 204
   610A 8D                 1190 	.db #0x8D	; 141
   610B CC                 1191 	.db #0xCC	; 204
   610C CC                 1192 	.db #0xCC	; 204
   610D 4E                 1193 	.db #0x4E	; 78	'N'
   610E CC                 1194 	.db #0xCC	; 204
   610F CC                 1195 	.db #0xCC	; 204
   6110 CC                 1196 	.db #0xCC	; 204
   6111 CC                 1197 	.db #0xCC	; 204
   6112 CC                 1198 	.db #0xCC	; 204
   6113 CC                 1199 	.db #0xCC	; 204
   6114 8D                 1200 	.db #0x8D	; 141
   6115 CC                 1201 	.db #0xCC	; 204
   6116 CC                 1202 	.db #0xCC	; 204
   6117 4E                 1203 	.db #0x4E	; 78	'N'
   6118 CC                 1204 	.db #0xCC	; 204
   6119 CC                 1205 	.db #0xCC	; 204
   611A CC                 1206 	.db #0xCC	; 204
   611B CC                 1207 	.db #0xCC	; 204
   611C CC                 1208 	.db #0xCC	; 204
   611D CC                 1209 	.db #0xCC	; 204
   611E 8D                 1210 	.db #0x8D	; 141
   611F CC                 1211 	.db #0xCC	; 204
   6120 CC                 1212 	.db #0xCC	; 204
   6121 0F                 1213 	.db #0x0F	; 15
   6122 CC                 1214 	.db #0xCC	; 204
   6123 CC                 1215 	.db #0xCC	; 204
   6124 CC                 1216 	.db #0xCC	; 204
   6125 CC                 1217 	.db #0xCC	; 204
   6126 CC                 1218 	.db #0xCC	; 204
   6127 CC                 1219 	.db #0xCC	; 204
   6128 0F                 1220 	.db #0x0F	; 15
   6129 CC                 1221 	.db #0xCC	; 204
   612A CC                 1222 	.db #0xCC	; 204
   612B 8D                 1223 	.db #0x8D	; 141
   612C CC                 1224 	.db #0xCC	; 204
   612D CC                 1225 	.db #0xCC	; 204
   612E CC                 1226 	.db #0xCC	; 204
   612F CC                 1227 	.db #0xCC	; 204
   6130 CC                 1228 	.db #0xCC	; 204
   6131 CC                 1229 	.db #0xCC	; 204
   6132 4E                 1230 	.db #0x4E	; 78	'N'
   6133 CC                 1231 	.db #0xCC	; 204
   6134 CC                 1232 	.db #0xCC	; 204
   6135 8D                 1233 	.db #0x8D	; 141
   6136 0F                 1234 	.db #0x0F	; 15
   6137 0F                 1235 	.db #0x0F	; 15
   6138 0F                 1236 	.db #0x0F	; 15
   6139 0F                 1237 	.db #0x0F	; 15
   613A 0F                 1238 	.db #0x0F	; 15
   613B 0F                 1239 	.db #0x0F	; 15
   613C 4E                 1240 	.db #0x4E	; 78	'N'
   613D CC                 1241 	.db #0xCC	; 204
   613E F0                 1242 	.db #0xF0	; 240
   613F CC                 1243 	.db #0xCC	; 204
   6140 CC                 1244 	.db #0xCC	; 204
   6141 CC                 1245 	.db #0xCC	; 204
   6142 CC                 1246 	.db #0xCC	; 204
   6143 CC                 1247 	.db #0xCC	; 204
   6144 CC                 1248 	.db #0xCC	; 204
   6145 CC                 1249 	.db #0xCC	; 204
   6146 CC                 1250 	.db #0xCC	; 204
   6147 F0                 1251 	.db #0xF0	; 240
   6148 F0                 1252 	.db #0xF0	; 240
   6149 CC                 1253 	.db #0xCC	; 204
   614A CC                 1254 	.db #0xCC	; 204
   614B CC                 1255 	.db #0xCC	; 204
   614C CC                 1256 	.db #0xCC	; 204
   614D CC                 1257 	.db #0xCC	; 204
   614E CC                 1258 	.db #0xCC	; 204
   614F CC                 1259 	.db #0xCC	; 204
   6150 CC                 1260 	.db #0xCC	; 204
   6151 F0                 1261 	.db #0xF0	; 240
   6152                    1262 _tile_tiles_03:
   6152 F0                 1263 	.db #0xF0	; 240
   6153 30                 1264 	.db #0x30	; 48	'0'
   6154 30                 1265 	.db #0x30	; 48	'0'
   6155 30                 1266 	.db #0x30	; 48	'0'
   6156 30                 1267 	.db #0x30	; 48	'0'
   6157 30                 1268 	.db #0x30	; 48	'0'
   6158 30                 1269 	.db #0x30	; 48	'0'
   6159 30                 1270 	.db #0x30	; 48	'0'
   615A 30                 1271 	.db #0x30	; 48	'0'
   615B F0                 1272 	.db #0xF0	; 240
   615C F0                 1273 	.db #0xF0	; 240
   615D 30                 1274 	.db #0x30	; 48	'0'
   615E 30                 1275 	.db #0x30	; 48	'0'
   615F 30                 1276 	.db #0x30	; 48	'0'
   6160 30                 1277 	.db #0x30	; 48	'0'
   6161 30                 1278 	.db #0x30	; 48	'0'
   6162 30                 1279 	.db #0x30	; 48	'0'
   6163 30                 1280 	.db #0x30	; 48	'0'
   6164 30                 1281 	.db #0x30	; 48	'0'
   6165 F0                 1282 	.db #0xF0	; 240
   6166 30                 1283 	.db #0x30	; 48	'0'
   6167 25                 1284 	.db #0x25	; 37
   6168 0F                 1285 	.db #0x0F	; 15
   6169 0F                 1286 	.db #0x0F	; 15
   616A 0F                 1287 	.db #0x0F	; 15
   616B 0F                 1288 	.db #0x0F	; 15
   616C 0F                 1289 	.db #0x0F	; 15
   616D 0F                 1290 	.db #0x0F	; 15
   616E 1A                 1291 	.db #0x1A	; 26
   616F 30                 1292 	.db #0x30	; 48	'0'
   6170 30                 1293 	.db #0x30	; 48	'0'
   6171 25                 1294 	.db #0x25	; 37
   6172 30                 1295 	.db #0x30	; 48	'0'
   6173 30                 1296 	.db #0x30	; 48	'0'
   6174 30                 1297 	.db #0x30	; 48	'0'
   6175 30                 1298 	.db #0x30	; 48	'0'
   6176 30                 1299 	.db #0x30	; 48	'0'
   6177 30                 1300 	.db #0x30	; 48	'0'
   6178 1A                 1301 	.db #0x1A	; 26
   6179 30                 1302 	.db #0x30	; 48	'0'
   617A 30                 1303 	.db #0x30	; 48	'0'
   617B 0F                 1304 	.db #0x0F	; 15
   617C 30                 1305 	.db #0x30	; 48	'0'
   617D 30                 1306 	.db #0x30	; 48	'0'
   617E 30                 1307 	.db #0x30	; 48	'0'
   617F 30                 1308 	.db #0x30	; 48	'0'
   6180 30                 1309 	.db #0x30	; 48	'0'
   6181 30                 1310 	.db #0x30	; 48	'0'
   6182 0F                 1311 	.db #0x0F	; 15
   6183 30                 1312 	.db #0x30	; 48	'0'
   6184 30                 1313 	.db #0x30	; 48	'0'
   6185 1A                 1314 	.db #0x1A	; 26
   6186 30                 1315 	.db #0x30	; 48	'0'
   6187 30                 1316 	.db #0x30	; 48	'0'
   6188 30                 1317 	.db #0x30	; 48	'0'
   6189 30                 1318 	.db #0x30	; 48	'0'
   618A 30                 1319 	.db #0x30	; 48	'0'
   618B 30                 1320 	.db #0x30	; 48	'0'
   618C 25                 1321 	.db #0x25	; 37
   618D 30                 1322 	.db #0x30	; 48	'0'
   618E 30                 1323 	.db #0x30	; 48	'0'
   618F 1A                 1324 	.db #0x1A	; 26
   6190 30                 1325 	.db #0x30	; 48	'0'
   6191 30                 1326 	.db #0x30	; 48	'0'
   6192 30                 1327 	.db #0x30	; 48	'0'
   6193 30                 1328 	.db #0x30	; 48	'0'
   6194 30                 1329 	.db #0x30	; 48	'0'
   6195 30                 1330 	.db #0x30	; 48	'0'
   6196 25                 1331 	.db #0x25	; 37
   6197 30                 1332 	.db #0x30	; 48	'0'
   6198 30                 1333 	.db #0x30	; 48	'0'
   6199 1A                 1334 	.db #0x1A	; 26
   619A 30                 1335 	.db #0x30	; 48	'0'
   619B 30                 1336 	.db #0x30	; 48	'0'
   619C 30                 1337 	.db #0x30	; 48	'0'
   619D 30                 1338 	.db #0x30	; 48	'0'
   619E 30                 1339 	.db #0x30	; 48	'0'
   619F 30                 1340 	.db #0x30	; 48	'0'
   61A0 25                 1341 	.db #0x25	; 37
   61A1 30                 1342 	.db #0x30	; 48	'0'
   61A2 30                 1343 	.db #0x30	; 48	'0'
   61A3 1A                 1344 	.db #0x1A	; 26
   61A4 30                 1345 	.db #0x30	; 48	'0'
   61A5 30                 1346 	.db #0x30	; 48	'0'
   61A6 30                 1347 	.db #0x30	; 48	'0'
   61A7 30                 1348 	.db #0x30	; 48	'0'
   61A8 30                 1349 	.db #0x30	; 48	'0'
   61A9 30                 1350 	.db #0x30	; 48	'0'
   61AA 25                 1351 	.db #0x25	; 37
   61AB 30                 1352 	.db #0x30	; 48	'0'
   61AC 30                 1353 	.db #0x30	; 48	'0'
   61AD 1A                 1354 	.db #0x1A	; 26
   61AE 30                 1355 	.db #0x30	; 48	'0'
   61AF 30                 1356 	.db #0x30	; 48	'0'
   61B0 30                 1357 	.db #0x30	; 48	'0'
   61B1 30                 1358 	.db #0x30	; 48	'0'
   61B2 30                 1359 	.db #0x30	; 48	'0'
   61B3 30                 1360 	.db #0x30	; 48	'0'
   61B4 25                 1361 	.db #0x25	; 37
   61B5 30                 1362 	.db #0x30	; 48	'0'
   61B6 30                 1363 	.db #0x30	; 48	'0'
   61B7 1A                 1364 	.db #0x1A	; 26
   61B8 30                 1365 	.db #0x30	; 48	'0'
   61B9 30                 1366 	.db #0x30	; 48	'0'
   61BA 64                 1367 	.db #0x64	; 100	'd'
   61BB CC                 1368 	.db #0xCC	; 204
   61BC 30                 1369 	.db #0x30	; 48	'0'
   61BD 30                 1370 	.db #0x30	; 48	'0'
   61BE 25                 1371 	.db #0x25	; 37
   61BF 30                 1372 	.db #0x30	; 48	'0'
   61C0 30                 1373 	.db #0x30	; 48	'0'
   61C1 1A                 1374 	.db #0x1A	; 26
   61C2 30                 1375 	.db #0x30	; 48	'0'
   61C3 30                 1376 	.db #0x30	; 48	'0'
   61C4 CC                 1377 	.db #0xCC	; 204
   61C5 CC                 1378 	.db #0xCC	; 204
   61C6 98                 1379 	.db #0x98	; 152
   61C7 30                 1380 	.db #0x30	; 48	'0'
   61C8 25                 1381 	.db #0x25	; 37
   61C9 30                 1382 	.db #0x30	; 48	'0'
   61CA 30                 1383 	.db #0x30	; 48	'0'
   61CB 1A                 1384 	.db #0x1A	; 26
   61CC 30                 1385 	.db #0x30	; 48	'0'
   61CD 64                 1386 	.db #0x64	; 100	'd'
   61CE CC                 1387 	.db #0xCC	; 204
   61CF 64                 1388 	.db #0x64	; 100	'd'
   61D0 CC                 1389 	.db #0xCC	; 204
   61D1 30                 1390 	.db #0x30	; 48	'0'
   61D2 25                 1391 	.db #0x25	; 37
   61D3 30                 1392 	.db #0x30	; 48	'0'
   61D4 30                 1393 	.db #0x30	; 48	'0'
   61D5 1A                 1394 	.db #0x1A	; 26
   61D6 30                 1395 	.db #0x30	; 48	'0'
   61D7 64                 1396 	.db #0x64	; 100	'd'
   61D8 98                 1397 	.db #0x98	; 152
   61D9 30                 1398 	.db #0x30	; 48	'0'
   61DA CC                 1399 	.db #0xCC	; 204
   61DB 30                 1400 	.db #0x30	; 48	'0'
   61DC 25                 1401 	.db #0x25	; 37
   61DD 30                 1402 	.db #0x30	; 48	'0'
   61DE 30                 1403 	.db #0x30	; 48	'0'
   61DF 1A                 1404 	.db #0x1A	; 26
   61E0 30                 1405 	.db #0x30	; 48	'0'
   61E1 64                 1406 	.db #0x64	; 100	'd'
   61E2 98                 1407 	.db #0x98	; 152
   61E3 30                 1408 	.db #0x30	; 48	'0'
   61E4 CC                 1409 	.db #0xCC	; 204
   61E5 30                 1410 	.db #0x30	; 48	'0'
   61E6 25                 1411 	.db #0x25	; 37
   61E7 30                 1412 	.db #0x30	; 48	'0'
   61E8 30                 1413 	.db #0x30	; 48	'0'
   61E9 1A                 1414 	.db #0x1A	; 26
   61EA 30                 1415 	.db #0x30	; 48	'0'
   61EB 30                 1416 	.db #0x30	; 48	'0'
   61EC 30                 1417 	.db #0x30	; 48	'0'
   61ED 30                 1418 	.db #0x30	; 48	'0'
   61EE CC                 1419 	.db #0xCC	; 204
   61EF 30                 1420 	.db #0x30	; 48	'0'
   61F0 25                 1421 	.db #0x25	; 37
   61F1 30                 1422 	.db #0x30	; 48	'0'
   61F2 30                 1423 	.db #0x30	; 48	'0'
   61F3 1A                 1424 	.db #0x1A	; 26
   61F4 30                 1425 	.db #0x30	; 48	'0'
   61F5 30                 1426 	.db #0x30	; 48	'0'
   61F6 30                 1427 	.db #0x30	; 48	'0'
   61F7 30                 1428 	.db #0x30	; 48	'0'
   61F8 CC                 1429 	.db #0xCC	; 204
   61F9 30                 1430 	.db #0x30	; 48	'0'
   61FA 25                 1431 	.db #0x25	; 37
   61FB 30                 1432 	.db #0x30	; 48	'0'
   61FC 30                 1433 	.db #0x30	; 48	'0'
   61FD 1A                 1434 	.db #0x1A	; 26
   61FE 30                 1435 	.db #0x30	; 48	'0'
   61FF 30                 1436 	.db #0x30	; 48	'0'
   6200 30                 1437 	.db #0x30	; 48	'0'
   6201 30                 1438 	.db #0x30	; 48	'0'
   6202 CC                 1439 	.db #0xCC	; 204
   6203 30                 1440 	.db #0x30	; 48	'0'
   6204 25                 1441 	.db #0x25	; 37
   6205 30                 1442 	.db #0x30	; 48	'0'
   6206 30                 1443 	.db #0x30	; 48	'0'
   6207 1A                 1444 	.db #0x1A	; 26
   6208 30                 1445 	.db #0x30	; 48	'0'
   6209 30                 1446 	.db #0x30	; 48	'0'
   620A 30                 1447 	.db #0x30	; 48	'0'
   620B 64                 1448 	.db #0x64	; 100	'd'
   620C CC                 1449 	.db #0xCC	; 204
   620D 30                 1450 	.db #0x30	; 48	'0'
   620E 25                 1451 	.db #0x25	; 37
   620F 30                 1452 	.db #0x30	; 48	'0'
   6210 30                 1453 	.db #0x30	; 48	'0'
   6211 1A                 1454 	.db #0x1A	; 26
   6212 30                 1455 	.db #0x30	; 48	'0'
   6213 30                 1456 	.db #0x30	; 48	'0'
   6214 30                 1457 	.db #0x30	; 48	'0'
   6215 CC                 1458 	.db #0xCC	; 204
   6216 CC                 1459 	.db #0xCC	; 204
   6217 30                 1460 	.db #0x30	; 48	'0'
   6218 25                 1461 	.db #0x25	; 37
   6219 30                 1462 	.db #0x30	; 48	'0'
   621A 30                 1463 	.db #0x30	; 48	'0'
   621B 1A                 1464 	.db #0x1A	; 26
   621C 30                 1465 	.db #0x30	; 48	'0'
   621D 30                 1466 	.db #0x30	; 48	'0'
   621E 30                 1467 	.db #0x30	; 48	'0'
   621F CC                 1468 	.db #0xCC	; 204
   6220 98                 1469 	.db #0x98	; 152
   6221 30                 1470 	.db #0x30	; 48	'0'
   6222 25                 1471 	.db #0x25	; 37
   6223 30                 1472 	.db #0x30	; 48	'0'
   6224 30                 1473 	.db #0x30	; 48	'0'
   6225 1A                 1474 	.db #0x1A	; 26
   6226 30                 1475 	.db #0x30	; 48	'0'
   6227 30                 1476 	.db #0x30	; 48	'0'
   6228 30                 1477 	.db #0x30	; 48	'0'
   6229 64                 1478 	.db #0x64	; 100	'd'
   622A CC                 1479 	.db #0xCC	; 204
   622B 30                 1480 	.db #0x30	; 48	'0'
   622C 25                 1481 	.db #0x25	; 37
   622D 30                 1482 	.db #0x30	; 48	'0'
   622E 30                 1483 	.db #0x30	; 48	'0'
   622F 1A                 1484 	.db #0x1A	; 26
   6230 30                 1485 	.db #0x30	; 48	'0'
   6231 30                 1486 	.db #0x30	; 48	'0'
   6232 30                 1487 	.db #0x30	; 48	'0'
   6233 30                 1488 	.db #0x30	; 48	'0'
   6234 CC                 1489 	.db #0xCC	; 204
   6235 30                 1490 	.db #0x30	; 48	'0'
   6236 25                 1491 	.db #0x25	; 37
   6237 30                 1492 	.db #0x30	; 48	'0'
   6238 30                 1493 	.db #0x30	; 48	'0'
   6239 1A                 1494 	.db #0x1A	; 26
   623A 30                 1495 	.db #0x30	; 48	'0'
   623B 30                 1496 	.db #0x30	; 48	'0'
   623C 30                 1497 	.db #0x30	; 48	'0'
   623D 30                 1498 	.db #0x30	; 48	'0'
   623E CC                 1499 	.db #0xCC	; 204
   623F 30                 1500 	.db #0x30	; 48	'0'
   6240 25                 1501 	.db #0x25	; 37
   6241 30                 1502 	.db #0x30	; 48	'0'
   6242 30                 1503 	.db #0x30	; 48	'0'
   6243 1A                 1504 	.db #0x1A	; 26
   6244 30                 1505 	.db #0x30	; 48	'0'
   6245 30                 1506 	.db #0x30	; 48	'0'
   6246 30                 1507 	.db #0x30	; 48	'0'
   6247 30                 1508 	.db #0x30	; 48	'0'
   6248 CC                 1509 	.db #0xCC	; 204
   6249 30                 1510 	.db #0x30	; 48	'0'
   624A 25                 1511 	.db #0x25	; 37
   624B 30                 1512 	.db #0x30	; 48	'0'
   624C 30                 1513 	.db #0x30	; 48	'0'
   624D 1A                 1514 	.db #0x1A	; 26
   624E 30                 1515 	.db #0x30	; 48	'0'
   624F 30                 1516 	.db #0x30	; 48	'0'
   6250 30                 1517 	.db #0x30	; 48	'0'
   6251 30                 1518 	.db #0x30	; 48	'0'
   6252 CC                 1519 	.db #0xCC	; 204
   6253 30                 1520 	.db #0x30	; 48	'0'
   6254 25                 1521 	.db #0x25	; 37
   6255 30                 1522 	.db #0x30	; 48	'0'
   6256 30                 1523 	.db #0x30	; 48	'0'
   6257 1A                 1524 	.db #0x1A	; 26
   6258 30                 1525 	.db #0x30	; 48	'0'
   6259 30                 1526 	.db #0x30	; 48	'0'
   625A 30                 1527 	.db #0x30	; 48	'0'
   625B 30                 1528 	.db #0x30	; 48	'0'
   625C CC                 1529 	.db #0xCC	; 204
   625D 30                 1530 	.db #0x30	; 48	'0'
   625E 25                 1531 	.db #0x25	; 37
   625F 30                 1532 	.db #0x30	; 48	'0'
   6260 30                 1533 	.db #0x30	; 48	'0'
   6261 1A                 1534 	.db #0x1A	; 26
   6262 30                 1535 	.db #0x30	; 48	'0'
   6263 64                 1536 	.db #0x64	; 100	'd'
   6264 98                 1537 	.db #0x98	; 152
   6265 30                 1538 	.db #0x30	; 48	'0'
   6266 CC                 1539 	.db #0xCC	; 204
   6267 30                 1540 	.db #0x30	; 48	'0'
   6268 25                 1541 	.db #0x25	; 37
   6269 30                 1542 	.db #0x30	; 48	'0'
   626A 30                 1543 	.db #0x30	; 48	'0'
   626B 1A                 1544 	.db #0x1A	; 26
   626C 30                 1545 	.db #0x30	; 48	'0'
   626D 64                 1546 	.db #0x64	; 100	'd'
   626E CC                 1547 	.db #0xCC	; 204
   626F 64                 1548 	.db #0x64	; 100	'd'
   6270 CC                 1549 	.db #0xCC	; 204
   6271 30                 1550 	.db #0x30	; 48	'0'
   6272 25                 1551 	.db #0x25	; 37
   6273 30                 1552 	.db #0x30	; 48	'0'
   6274 30                 1553 	.db #0x30	; 48	'0'
   6275 1A                 1554 	.db #0x1A	; 26
   6276 30                 1555 	.db #0x30	; 48	'0'
   6277 64                 1556 	.db #0x64	; 100	'd'
   6278 CC                 1557 	.db #0xCC	; 204
   6279 CC                 1558 	.db #0xCC	; 204
   627A CC                 1559 	.db #0xCC	; 204
   627B 30                 1560 	.db #0x30	; 48	'0'
   627C 25                 1561 	.db #0x25	; 37
   627D 30                 1562 	.db #0x30	; 48	'0'
   627E 30                 1563 	.db #0x30	; 48	'0'
   627F 1A                 1564 	.db #0x1A	; 26
   6280 30                 1565 	.db #0x30	; 48	'0'
   6281 30                 1566 	.db #0x30	; 48	'0'
   6282 CC                 1567 	.db #0xCC	; 204
   6283 CC                 1568 	.db #0xCC	; 204
   6284 98                 1569 	.db #0x98	; 152
   6285 30                 1570 	.db #0x30	; 48	'0'
   6286 25                 1571 	.db #0x25	; 37
   6287 30                 1572 	.db #0x30	; 48	'0'
   6288 30                 1573 	.db #0x30	; 48	'0'
   6289 1A                 1574 	.db #0x1A	; 26
   628A 30                 1575 	.db #0x30	; 48	'0'
   628B 30                 1576 	.db #0x30	; 48	'0'
   628C 64                 1577 	.db #0x64	; 100	'd'
   628D CC                 1578 	.db #0xCC	; 204
   628E 30                 1579 	.db #0x30	; 48	'0'
   628F 30                 1580 	.db #0x30	; 48	'0'
   6290 25                 1581 	.db #0x25	; 37
   6291 30                 1582 	.db #0x30	; 48	'0'
   6292 30                 1583 	.db #0x30	; 48	'0'
   6293 1A                 1584 	.db #0x1A	; 26
   6294 30                 1585 	.db #0x30	; 48	'0'
   6295 30                 1586 	.db #0x30	; 48	'0'
   6296 30                 1587 	.db #0x30	; 48	'0'
   6297 30                 1588 	.db #0x30	; 48	'0'
   6298 30                 1589 	.db #0x30	; 48	'0'
   6299 30                 1590 	.db #0x30	; 48	'0'
   629A 25                 1591 	.db #0x25	; 37
   629B 30                 1592 	.db #0x30	; 48	'0'
   629C 30                 1593 	.db #0x30	; 48	'0'
   629D 1A                 1594 	.db #0x1A	; 26
   629E 30                 1595 	.db #0x30	; 48	'0'
   629F 30                 1596 	.db #0x30	; 48	'0'
   62A0 30                 1597 	.db #0x30	; 48	'0'
   62A1 30                 1598 	.db #0x30	; 48	'0'
   62A2 30                 1599 	.db #0x30	; 48	'0'
   62A3 30                 1600 	.db #0x30	; 48	'0'
   62A4 25                 1601 	.db #0x25	; 37
   62A5 30                 1602 	.db #0x30	; 48	'0'
   62A6 30                 1603 	.db #0x30	; 48	'0'
   62A7 1A                 1604 	.db #0x1A	; 26
   62A8 30                 1605 	.db #0x30	; 48	'0'
   62A9 30                 1606 	.db #0x30	; 48	'0'
   62AA 30                 1607 	.db #0x30	; 48	'0'
   62AB 30                 1608 	.db #0x30	; 48	'0'
   62AC 30                 1609 	.db #0x30	; 48	'0'
   62AD 30                 1610 	.db #0x30	; 48	'0'
   62AE 25                 1611 	.db #0x25	; 37
   62AF 30                 1612 	.db #0x30	; 48	'0'
   62B0 30                 1613 	.db #0x30	; 48	'0'
   62B1 0F                 1614 	.db #0x0F	; 15
   62B2 30                 1615 	.db #0x30	; 48	'0'
   62B3 30                 1616 	.db #0x30	; 48	'0'
   62B4 30                 1617 	.db #0x30	; 48	'0'
   62B5 30                 1618 	.db #0x30	; 48	'0'
   62B6 30                 1619 	.db #0x30	; 48	'0'
   62B7 30                 1620 	.db #0x30	; 48	'0'
   62B8 0F                 1621 	.db #0x0F	; 15
   62B9 30                 1622 	.db #0x30	; 48	'0'
   62BA 30                 1623 	.db #0x30	; 48	'0'
   62BB 25                 1624 	.db #0x25	; 37
   62BC 30                 1625 	.db #0x30	; 48	'0'
   62BD 30                 1626 	.db #0x30	; 48	'0'
   62BE 30                 1627 	.db #0x30	; 48	'0'
   62BF 30                 1628 	.db #0x30	; 48	'0'
   62C0 30                 1629 	.db #0x30	; 48	'0'
   62C1 30                 1630 	.db #0x30	; 48	'0'
   62C2 1A                 1631 	.db #0x1A	; 26
   62C3 30                 1632 	.db #0x30	; 48	'0'
   62C4 30                 1633 	.db #0x30	; 48	'0'
   62C5 25                 1634 	.db #0x25	; 37
   62C6 0F                 1635 	.db #0x0F	; 15
   62C7 0F                 1636 	.db #0x0F	; 15
   62C8 0F                 1637 	.db #0x0F	; 15
   62C9 0F                 1638 	.db #0x0F	; 15
   62CA 0F                 1639 	.db #0x0F	; 15
   62CB 0F                 1640 	.db #0x0F	; 15
   62CC 1A                 1641 	.db #0x1A	; 26
   62CD 30                 1642 	.db #0x30	; 48	'0'
   62CE F0                 1643 	.db #0xF0	; 240
   62CF 30                 1644 	.db #0x30	; 48	'0'
   62D0 30                 1645 	.db #0x30	; 48	'0'
   62D1 30                 1646 	.db #0x30	; 48	'0'
   62D2 30                 1647 	.db #0x30	; 48	'0'
   62D3 30                 1648 	.db #0x30	; 48	'0'
   62D4 30                 1649 	.db #0x30	; 48	'0'
   62D5 30                 1650 	.db #0x30	; 48	'0'
   62D6 30                 1651 	.db #0x30	; 48	'0'
   62D7 F0                 1652 	.db #0xF0	; 240
   62D8 F0                 1653 	.db #0xF0	; 240
   62D9 30                 1654 	.db #0x30	; 48	'0'
   62DA 30                 1655 	.db #0x30	; 48	'0'
   62DB 30                 1656 	.db #0x30	; 48	'0'
   62DC 30                 1657 	.db #0x30	; 48	'0'
   62DD 30                 1658 	.db #0x30	; 48	'0'
   62DE 30                 1659 	.db #0x30	; 48	'0'
   62DF 30                 1660 	.db #0x30	; 48	'0'
   62E0 30                 1661 	.db #0x30	; 48	'0'
   62E1 F0                 1662 	.db #0xF0	; 240
   62E2                    1663 _tile_tiles_04:
   62E2 F0                 1664 	.db #0xF0	; 240
   62E3 30                 1665 	.db #0x30	; 48	'0'
   62E4 30                 1666 	.db #0x30	; 48	'0'
   62E5 30                 1667 	.db #0x30	; 48	'0'
   62E6 30                 1668 	.db #0x30	; 48	'0'
   62E7 30                 1669 	.db #0x30	; 48	'0'
   62E8 30                 1670 	.db #0x30	; 48	'0'
   62E9 30                 1671 	.db #0x30	; 48	'0'
   62EA 30                 1672 	.db #0x30	; 48	'0'
   62EB F0                 1673 	.db #0xF0	; 240
   62EC F0                 1674 	.db #0xF0	; 240
   62ED 30                 1675 	.db #0x30	; 48	'0'
   62EE 30                 1676 	.db #0x30	; 48	'0'
   62EF 30                 1677 	.db #0x30	; 48	'0'
   62F0 30                 1678 	.db #0x30	; 48	'0'
   62F1 30                 1679 	.db #0x30	; 48	'0'
   62F2 30                 1680 	.db #0x30	; 48	'0'
   62F3 30                 1681 	.db #0x30	; 48	'0'
   62F4 30                 1682 	.db #0x30	; 48	'0'
   62F5 F0                 1683 	.db #0xF0	; 240
   62F6 30                 1684 	.db #0x30	; 48	'0'
   62F7 25                 1685 	.db #0x25	; 37
   62F8 0F                 1686 	.db #0x0F	; 15
   62F9 0F                 1687 	.db #0x0F	; 15
   62FA 0F                 1688 	.db #0x0F	; 15
   62FB 0F                 1689 	.db #0x0F	; 15
   62FC 0F                 1690 	.db #0x0F	; 15
   62FD 0F                 1691 	.db #0x0F	; 15
   62FE 1A                 1692 	.db #0x1A	; 26
   62FF 30                 1693 	.db #0x30	; 48	'0'
   6300 30                 1694 	.db #0x30	; 48	'0'
   6301 25                 1695 	.db #0x25	; 37
   6302 30                 1696 	.db #0x30	; 48	'0'
   6303 30                 1697 	.db #0x30	; 48	'0'
   6304 30                 1698 	.db #0x30	; 48	'0'
   6305 30                 1699 	.db #0x30	; 48	'0'
   6306 30                 1700 	.db #0x30	; 48	'0'
   6307 30                 1701 	.db #0x30	; 48	'0'
   6308 1A                 1702 	.db #0x1A	; 26
   6309 30                 1703 	.db #0x30	; 48	'0'
   630A 30                 1704 	.db #0x30	; 48	'0'
   630B 0F                 1705 	.db #0x0F	; 15
   630C 30                 1706 	.db #0x30	; 48	'0'
   630D 30                 1707 	.db #0x30	; 48	'0'
   630E 30                 1708 	.db #0x30	; 48	'0'
   630F 30                 1709 	.db #0x30	; 48	'0'
   6310 30                 1710 	.db #0x30	; 48	'0'
   6311 30                 1711 	.db #0x30	; 48	'0'
   6312 0F                 1712 	.db #0x0F	; 15
   6313 30                 1713 	.db #0x30	; 48	'0'
   6314 30                 1714 	.db #0x30	; 48	'0'
   6315 1A                 1715 	.db #0x1A	; 26
   6316 30                 1716 	.db #0x30	; 48	'0'
   6317 30                 1717 	.db #0x30	; 48	'0'
   6318 30                 1718 	.db #0x30	; 48	'0'
   6319 30                 1719 	.db #0x30	; 48	'0'
   631A 30                 1720 	.db #0x30	; 48	'0'
   631B 30                 1721 	.db #0x30	; 48	'0'
   631C 25                 1722 	.db #0x25	; 37
   631D 30                 1723 	.db #0x30	; 48	'0'
   631E 30                 1724 	.db #0x30	; 48	'0'
   631F 1A                 1725 	.db #0x1A	; 26
   6320 30                 1726 	.db #0x30	; 48	'0'
   6321 30                 1727 	.db #0x30	; 48	'0'
   6322 30                 1728 	.db #0x30	; 48	'0'
   6323 30                 1729 	.db #0x30	; 48	'0'
   6324 30                 1730 	.db #0x30	; 48	'0'
   6325 30                 1731 	.db #0x30	; 48	'0'
   6326 25                 1732 	.db #0x25	; 37
   6327 30                 1733 	.db #0x30	; 48	'0'
   6328 30                 1734 	.db #0x30	; 48	'0'
   6329 1A                 1735 	.db #0x1A	; 26
   632A 30                 1736 	.db #0x30	; 48	'0'
   632B 30                 1737 	.db #0x30	; 48	'0'
   632C 30                 1738 	.db #0x30	; 48	'0'
   632D 30                 1739 	.db #0x30	; 48	'0'
   632E 30                 1740 	.db #0x30	; 48	'0'
   632F 30                 1741 	.db #0x30	; 48	'0'
   6330 25                 1742 	.db #0x25	; 37
   6331 30                 1743 	.db #0x30	; 48	'0'
   6332 30                 1744 	.db #0x30	; 48	'0'
   6333 1A                 1745 	.db #0x1A	; 26
   6334 30                 1746 	.db #0x30	; 48	'0'
   6335 30                 1747 	.db #0x30	; 48	'0'
   6336 30                 1748 	.db #0x30	; 48	'0'
   6337 30                 1749 	.db #0x30	; 48	'0'
   6338 30                 1750 	.db #0x30	; 48	'0'
   6339 30                 1751 	.db #0x30	; 48	'0'
   633A 25                 1752 	.db #0x25	; 37
   633B 30                 1753 	.db #0x30	; 48	'0'
   633C 30                 1754 	.db #0x30	; 48	'0'
   633D 1A                 1755 	.db #0x1A	; 26
   633E 30                 1756 	.db #0x30	; 48	'0'
   633F 30                 1757 	.db #0x30	; 48	'0'
   6340 30                 1758 	.db #0x30	; 48	'0'
   6341 30                 1759 	.db #0x30	; 48	'0'
   6342 30                 1760 	.db #0x30	; 48	'0'
   6343 30                 1761 	.db #0x30	; 48	'0'
   6344 25                 1762 	.db #0x25	; 37
   6345 30                 1763 	.db #0x30	; 48	'0'
   6346 30                 1764 	.db #0x30	; 48	'0'
   6347 1A                 1765 	.db #0x1A	; 26
   6348 30                 1766 	.db #0x30	; 48	'0'
   6349 30                 1767 	.db #0x30	; 48	'0'
   634A 30                 1768 	.db #0x30	; 48	'0'
   634B CC                 1769 	.db #0xCC	; 204
   634C 98                 1770 	.db #0x98	; 152
   634D 30                 1771 	.db #0x30	; 48	'0'
   634E 25                 1772 	.db #0x25	; 37
   634F 30                 1773 	.db #0x30	; 48	'0'
   6350 30                 1774 	.db #0x30	; 48	'0'
   6351 1A                 1775 	.db #0x1A	; 26
   6352 30                 1776 	.db #0x30	; 48	'0'
   6353 30                 1777 	.db #0x30	; 48	'0'
   6354 64                 1778 	.db #0x64	; 100	'd'
   6355 CC                 1779 	.db #0xCC	; 204
   6356 CC                 1780 	.db #0xCC	; 204
   6357 30                 1781 	.db #0x30	; 48	'0'
   6358 25                 1782 	.db #0x25	; 37
   6359 30                 1783 	.db #0x30	; 48	'0'
   635A 30                 1784 	.db #0x30	; 48	'0'
   635B 1A                 1785 	.db #0x1A	; 26
   635C 30                 1786 	.db #0x30	; 48	'0'
   635D 30                 1787 	.db #0x30	; 48	'0'
   635E CC                 1788 	.db #0xCC	; 204
   635F 98                 1789 	.db #0x98	; 152
   6360 CC                 1790 	.db #0xCC	; 204
   6361 30                 1791 	.db #0x30	; 48	'0'
   6362 25                 1792 	.db #0x25	; 37
   6363 30                 1793 	.db #0x30	; 48	'0'
   6364 30                 1794 	.db #0x30	; 48	'0'
   6365 1A                 1795 	.db #0x1A	; 26
   6366 30                 1796 	.db #0x30	; 48	'0'
   6367 30                 1797 	.db #0x30	; 48	'0'
   6368 CC                 1798 	.db #0xCC	; 204
   6369 30                 1799 	.db #0x30	; 48	'0'
   636A 30                 1800 	.db #0x30	; 48	'0'
   636B 30                 1801 	.db #0x30	; 48	'0'
   636C 25                 1802 	.db #0x25	; 37
   636D 30                 1803 	.db #0x30	; 48	'0'
   636E 30                 1804 	.db #0x30	; 48	'0'
   636F 1A                 1805 	.db #0x1A	; 26
   6370 30                 1806 	.db #0x30	; 48	'0'
   6371 64                 1807 	.db #0x64	; 100	'd'
   6372 98                 1808 	.db #0x98	; 152
   6373 30                 1809 	.db #0x30	; 48	'0'
   6374 30                 1810 	.db #0x30	; 48	'0'
   6375 30                 1811 	.db #0x30	; 48	'0'
   6376 25                 1812 	.db #0x25	; 37
   6377 30                 1813 	.db #0x30	; 48	'0'
   6378 30                 1814 	.db #0x30	; 48	'0'
   6379 1A                 1815 	.db #0x1A	; 26
   637A 30                 1816 	.db #0x30	; 48	'0'
   637B 64                 1817 	.db #0x64	; 100	'd'
   637C 98                 1818 	.db #0x98	; 152
   637D 30                 1819 	.db #0x30	; 48	'0'
   637E 30                 1820 	.db #0x30	; 48	'0'
   637F 30                 1821 	.db #0x30	; 48	'0'
   6380 25                 1822 	.db #0x25	; 37
   6381 30                 1823 	.db #0x30	; 48	'0'
   6382 30                 1824 	.db #0x30	; 48	'0'
   6383 1A                 1825 	.db #0x1A	; 26
   6384 30                 1826 	.db #0x30	; 48	'0'
   6385 64                 1827 	.db #0x64	; 100	'd'
   6386 98                 1828 	.db #0x98	; 152
   6387 30                 1829 	.db #0x30	; 48	'0'
   6388 30                 1830 	.db #0x30	; 48	'0'
   6389 30                 1831 	.db #0x30	; 48	'0'
   638A 25                 1832 	.db #0x25	; 37
   638B 30                 1833 	.db #0x30	; 48	'0'
   638C 30                 1834 	.db #0x30	; 48	'0'
   638D 1A                 1835 	.db #0x1A	; 26
   638E 30                 1836 	.db #0x30	; 48	'0'
   638F 64                 1837 	.db #0x64	; 100	'd'
   6390 98                 1838 	.db #0x98	; 152
   6391 30                 1839 	.db #0x30	; 48	'0'
   6392 30                 1840 	.db #0x30	; 48	'0'
   6393 30                 1841 	.db #0x30	; 48	'0'
   6394 25                 1842 	.db #0x25	; 37
   6395 30                 1843 	.db #0x30	; 48	'0'
   6396 30                 1844 	.db #0x30	; 48	'0'
   6397 1A                 1845 	.db #0x1A	; 26
   6398 30                 1846 	.db #0x30	; 48	'0'
   6399 64                 1847 	.db #0x64	; 100	'd'
   639A 98                 1848 	.db #0x98	; 152
   639B CC                 1849 	.db #0xCC	; 204
   639C 30                 1850 	.db #0x30	; 48	'0'
   639D 30                 1851 	.db #0x30	; 48	'0'
   639E 25                 1852 	.db #0x25	; 37
   639F 30                 1853 	.db #0x30	; 48	'0'
   63A0 30                 1854 	.db #0x30	; 48	'0'
   63A1 1A                 1855 	.db #0x1A	; 26
   63A2 30                 1856 	.db #0x30	; 48	'0'
   63A3 64                 1857 	.db #0x64	; 100	'd'
   63A4 CC                 1858 	.db #0xCC	; 204
   63A5 CC                 1859 	.db #0xCC	; 204
   63A6 98                 1860 	.db #0x98	; 152
   63A7 30                 1861 	.db #0x30	; 48	'0'
   63A8 25                 1862 	.db #0x25	; 37
   63A9 30                 1863 	.db #0x30	; 48	'0'
   63AA 30                 1864 	.db #0x30	; 48	'0'
   63AB 1A                 1865 	.db #0x1A	; 26
   63AC 30                 1866 	.db #0x30	; 48	'0'
   63AD 64                 1867 	.db #0x64	; 100	'd'
   63AE CC                 1868 	.db #0xCC	; 204
   63AF CC                 1869 	.db #0xCC	; 204
   63B0 98                 1870 	.db #0x98	; 152
   63B1 30                 1871 	.db #0x30	; 48	'0'
   63B2 25                 1872 	.db #0x25	; 37
   63B3 30                 1873 	.db #0x30	; 48	'0'
   63B4 30                 1874 	.db #0x30	; 48	'0'
   63B5 1A                 1875 	.db #0x1A	; 26
   63B6 30                 1876 	.db #0x30	; 48	'0'
   63B7 64                 1877 	.db #0x64	; 100	'd'
   63B8 CC                 1878 	.db #0xCC	; 204
   63B9 30                 1879 	.db #0x30	; 48	'0'
   63BA CC                 1880 	.db #0xCC	; 204
   63BB 30                 1881 	.db #0x30	; 48	'0'
   63BC 25                 1882 	.db #0x25	; 37
   63BD 30                 1883 	.db #0x30	; 48	'0'
   63BE 30                 1884 	.db #0x30	; 48	'0'
   63BF 1A                 1885 	.db #0x1A	; 26
   63C0 30                 1886 	.db #0x30	; 48	'0'
   63C1 64                 1887 	.db #0x64	; 100	'd'
   63C2 98                 1888 	.db #0x98	; 152
   63C3 30                 1889 	.db #0x30	; 48	'0'
   63C4 CC                 1890 	.db #0xCC	; 204
   63C5 30                 1891 	.db #0x30	; 48	'0'
   63C6 25                 1892 	.db #0x25	; 37
   63C7 30                 1893 	.db #0x30	; 48	'0'
   63C8 30                 1894 	.db #0x30	; 48	'0'
   63C9 1A                 1895 	.db #0x1A	; 26
   63CA 30                 1896 	.db #0x30	; 48	'0'
   63CB 64                 1897 	.db #0x64	; 100	'd'
   63CC 98                 1898 	.db #0x98	; 152
   63CD 30                 1899 	.db #0x30	; 48	'0'
   63CE CC                 1900 	.db #0xCC	; 204
   63CF 30                 1901 	.db #0x30	; 48	'0'
   63D0 25                 1902 	.db #0x25	; 37
   63D1 30                 1903 	.db #0x30	; 48	'0'
   63D2 30                 1904 	.db #0x30	; 48	'0'
   63D3 1A                 1905 	.db #0x1A	; 26
   63D4 30                 1906 	.db #0x30	; 48	'0'
   63D5 64                 1907 	.db #0x64	; 100	'd'
   63D6 98                 1908 	.db #0x98	; 152
   63D7 30                 1909 	.db #0x30	; 48	'0'
   63D8 CC                 1910 	.db #0xCC	; 204
   63D9 30                 1911 	.db #0x30	; 48	'0'
   63DA 25                 1912 	.db #0x25	; 37
   63DB 30                 1913 	.db #0x30	; 48	'0'
   63DC 30                 1914 	.db #0x30	; 48	'0'
   63DD 1A                 1915 	.db #0x1A	; 26
   63DE 30                 1916 	.db #0x30	; 48	'0'
   63DF 64                 1917 	.db #0x64	; 100	'd'
   63E0 98                 1918 	.db #0x98	; 152
   63E1 30                 1919 	.db #0x30	; 48	'0'
   63E2 CC                 1920 	.db #0xCC	; 204
   63E3 30                 1921 	.db #0x30	; 48	'0'
   63E4 25                 1922 	.db #0x25	; 37
   63E5 30                 1923 	.db #0x30	; 48	'0'
   63E6 30                 1924 	.db #0x30	; 48	'0'
   63E7 1A                 1925 	.db #0x1A	; 26
   63E8 30                 1926 	.db #0x30	; 48	'0'
   63E9 64                 1927 	.db #0x64	; 100	'd'
   63EA 98                 1928 	.db #0x98	; 152
   63EB 30                 1929 	.db #0x30	; 48	'0'
   63EC CC                 1930 	.db #0xCC	; 204
   63ED 30                 1931 	.db #0x30	; 48	'0'
   63EE 25                 1932 	.db #0x25	; 37
   63EF 30                 1933 	.db #0x30	; 48	'0'
   63F0 30                 1934 	.db #0x30	; 48	'0'
   63F1 1A                 1935 	.db #0x1A	; 26
   63F2 30                 1936 	.db #0x30	; 48	'0'
   63F3 64                 1937 	.db #0x64	; 100	'd'
   63F4 98                 1938 	.db #0x98	; 152
   63F5 30                 1939 	.db #0x30	; 48	'0'
   63F6 CC                 1940 	.db #0xCC	; 204
   63F7 30                 1941 	.db #0x30	; 48	'0'
   63F8 25                 1942 	.db #0x25	; 37
   63F9 30                 1943 	.db #0x30	; 48	'0'
   63FA 30                 1944 	.db #0x30	; 48	'0'
   63FB 1A                 1945 	.db #0x1A	; 26
   63FC 30                 1946 	.db #0x30	; 48	'0'
   63FD 30                 1947 	.db #0x30	; 48	'0'
   63FE CC                 1948 	.db #0xCC	; 204
   63FF 64                 1949 	.db #0x64	; 100	'd'
   6400 98                 1950 	.db #0x98	; 152
   6401 30                 1951 	.db #0x30	; 48	'0'
   6402 25                 1952 	.db #0x25	; 37
   6403 30                 1953 	.db #0x30	; 48	'0'
   6404 30                 1954 	.db #0x30	; 48	'0'
   6405 1A                 1955 	.db #0x1A	; 26
   6406 30                 1956 	.db #0x30	; 48	'0'
   6407 30                 1957 	.db #0x30	; 48	'0'
   6408 CC                 1958 	.db #0xCC	; 204
   6409 CC                 1959 	.db #0xCC	; 204
   640A 98                 1960 	.db #0x98	; 152
   640B 30                 1961 	.db #0x30	; 48	'0'
   640C 25                 1962 	.db #0x25	; 37
   640D 30                 1963 	.db #0x30	; 48	'0'
   640E 30                 1964 	.db #0x30	; 48	'0'
   640F 1A                 1965 	.db #0x1A	; 26
   6410 30                 1966 	.db #0x30	; 48	'0'
   6411 30                 1967 	.db #0x30	; 48	'0'
   6412 CC                 1968 	.db #0xCC	; 204
   6413 CC                 1969 	.db #0xCC	; 204
   6414 98                 1970 	.db #0x98	; 152
   6415 30                 1971 	.db #0x30	; 48	'0'
   6416 25                 1972 	.db #0x25	; 37
   6417 30                 1973 	.db #0x30	; 48	'0'
   6418 30                 1974 	.db #0x30	; 48	'0'
   6419 1A                 1975 	.db #0x1A	; 26
   641A 30                 1976 	.db #0x30	; 48	'0'
   641B 30                 1977 	.db #0x30	; 48	'0'
   641C 64                 1978 	.db #0x64	; 100	'd'
   641D CC                 1979 	.db #0xCC	; 204
   641E 30                 1980 	.db #0x30	; 48	'0'
   641F 30                 1981 	.db #0x30	; 48	'0'
   6420 25                 1982 	.db #0x25	; 37
   6421 30                 1983 	.db #0x30	; 48	'0'
   6422 30                 1984 	.db #0x30	; 48	'0'
   6423 1A                 1985 	.db #0x1A	; 26
   6424 30                 1986 	.db #0x30	; 48	'0'
   6425 30                 1987 	.db #0x30	; 48	'0'
   6426 30                 1988 	.db #0x30	; 48	'0'
   6427 30                 1989 	.db #0x30	; 48	'0'
   6428 30                 1990 	.db #0x30	; 48	'0'
   6429 30                 1991 	.db #0x30	; 48	'0'
   642A 25                 1992 	.db #0x25	; 37
   642B 30                 1993 	.db #0x30	; 48	'0'
   642C 30                 1994 	.db #0x30	; 48	'0'
   642D 1A                 1995 	.db #0x1A	; 26
   642E 30                 1996 	.db #0x30	; 48	'0'
   642F 30                 1997 	.db #0x30	; 48	'0'
   6430 30                 1998 	.db #0x30	; 48	'0'
   6431 30                 1999 	.db #0x30	; 48	'0'
   6432 30                 2000 	.db #0x30	; 48	'0'
   6433 30                 2001 	.db #0x30	; 48	'0'
   6434 25                 2002 	.db #0x25	; 37
   6435 30                 2003 	.db #0x30	; 48	'0'
   6436 30                 2004 	.db #0x30	; 48	'0'
   6437 1A                 2005 	.db #0x1A	; 26
   6438 30                 2006 	.db #0x30	; 48	'0'
   6439 30                 2007 	.db #0x30	; 48	'0'
   643A 30                 2008 	.db #0x30	; 48	'0'
   643B 30                 2009 	.db #0x30	; 48	'0'
   643C 30                 2010 	.db #0x30	; 48	'0'
   643D 30                 2011 	.db #0x30	; 48	'0'
   643E 25                 2012 	.db #0x25	; 37
   643F 30                 2013 	.db #0x30	; 48	'0'
   6440 30                 2014 	.db #0x30	; 48	'0'
   6441 0F                 2015 	.db #0x0F	; 15
   6442 30                 2016 	.db #0x30	; 48	'0'
   6443 30                 2017 	.db #0x30	; 48	'0'
   6444 30                 2018 	.db #0x30	; 48	'0'
   6445 30                 2019 	.db #0x30	; 48	'0'
   6446 30                 2020 	.db #0x30	; 48	'0'
   6447 30                 2021 	.db #0x30	; 48	'0'
   6448 0F                 2022 	.db #0x0F	; 15
   6449 30                 2023 	.db #0x30	; 48	'0'
   644A 30                 2024 	.db #0x30	; 48	'0'
   644B 25                 2025 	.db #0x25	; 37
   644C 30                 2026 	.db #0x30	; 48	'0'
   644D 30                 2027 	.db #0x30	; 48	'0'
   644E 30                 2028 	.db #0x30	; 48	'0'
   644F 30                 2029 	.db #0x30	; 48	'0'
   6450 30                 2030 	.db #0x30	; 48	'0'
   6451 30                 2031 	.db #0x30	; 48	'0'
   6452 1A                 2032 	.db #0x1A	; 26
   6453 30                 2033 	.db #0x30	; 48	'0'
   6454 30                 2034 	.db #0x30	; 48	'0'
   6455 25                 2035 	.db #0x25	; 37
   6456 0F                 2036 	.db #0x0F	; 15
   6457 0F                 2037 	.db #0x0F	; 15
   6458 0F                 2038 	.db #0x0F	; 15
   6459 0F                 2039 	.db #0x0F	; 15
   645A 0F                 2040 	.db #0x0F	; 15
   645B 0F                 2041 	.db #0x0F	; 15
   645C 1A                 2042 	.db #0x1A	; 26
   645D 30                 2043 	.db #0x30	; 48	'0'
   645E F0                 2044 	.db #0xF0	; 240
   645F 30                 2045 	.db #0x30	; 48	'0'
   6460 30                 2046 	.db #0x30	; 48	'0'
   6461 30                 2047 	.db #0x30	; 48	'0'
   6462 30                 2048 	.db #0x30	; 48	'0'
   6463 30                 2049 	.db #0x30	; 48	'0'
   6464 30                 2050 	.db #0x30	; 48	'0'
   6465 30                 2051 	.db #0x30	; 48	'0'
   6466 30                 2052 	.db #0x30	; 48	'0'
   6467 F0                 2053 	.db #0xF0	; 240
   6468 F0                 2054 	.db #0xF0	; 240
   6469 30                 2055 	.db #0x30	; 48	'0'
   646A 30                 2056 	.db #0x30	; 48	'0'
   646B 30                 2057 	.db #0x30	; 48	'0'
   646C 30                 2058 	.db #0x30	; 48	'0'
   646D 30                 2059 	.db #0x30	; 48	'0'
   646E 30                 2060 	.db #0x30	; 48	'0'
   646F 30                 2061 	.db #0x30	; 48	'0'
   6470 30                 2062 	.db #0x30	; 48	'0'
   6471 F0                 2063 	.db #0xF0	; 240
   6472                    2064 _tile_tiles_05:
   6472 F0                 2065 	.db #0xF0	; 240
   6473 30                 2066 	.db #0x30	; 48	'0'
   6474 30                 2067 	.db #0x30	; 48	'0'
   6475 30                 2068 	.db #0x30	; 48	'0'
   6476 30                 2069 	.db #0x30	; 48	'0'
   6477 30                 2070 	.db #0x30	; 48	'0'
   6478 30                 2071 	.db #0x30	; 48	'0'
   6479 30                 2072 	.db #0x30	; 48	'0'
   647A 30                 2073 	.db #0x30	; 48	'0'
   647B F0                 2074 	.db #0xF0	; 240
   647C F0                 2075 	.db #0xF0	; 240
   647D 30                 2076 	.db #0x30	; 48	'0'
   647E 30                 2077 	.db #0x30	; 48	'0'
   647F 30                 2078 	.db #0x30	; 48	'0'
   6480 30                 2079 	.db #0x30	; 48	'0'
   6481 30                 2080 	.db #0x30	; 48	'0'
   6482 30                 2081 	.db #0x30	; 48	'0'
   6483 30                 2082 	.db #0x30	; 48	'0'
   6484 30                 2083 	.db #0x30	; 48	'0'
   6485 F0                 2084 	.db #0xF0	; 240
   6486 30                 2085 	.db #0x30	; 48	'0'
   6487 25                 2086 	.db #0x25	; 37
   6488 0F                 2087 	.db #0x0F	; 15
   6489 0F                 2088 	.db #0x0F	; 15
   648A 0F                 2089 	.db #0x0F	; 15
   648B 0F                 2090 	.db #0x0F	; 15
   648C 0F                 2091 	.db #0x0F	; 15
   648D 0F                 2092 	.db #0x0F	; 15
   648E 1A                 2093 	.db #0x1A	; 26
   648F 30                 2094 	.db #0x30	; 48	'0'
   6490 30                 2095 	.db #0x30	; 48	'0'
   6491 25                 2096 	.db #0x25	; 37
   6492 30                 2097 	.db #0x30	; 48	'0'
   6493 30                 2098 	.db #0x30	; 48	'0'
   6494 30                 2099 	.db #0x30	; 48	'0'
   6495 30                 2100 	.db #0x30	; 48	'0'
   6496 30                 2101 	.db #0x30	; 48	'0'
   6497 30                 2102 	.db #0x30	; 48	'0'
   6498 1A                 2103 	.db #0x1A	; 26
   6499 30                 2104 	.db #0x30	; 48	'0'
   649A 30                 2105 	.db #0x30	; 48	'0'
   649B 0F                 2106 	.db #0x0F	; 15
   649C 30                 2107 	.db #0x30	; 48	'0'
   649D 30                 2108 	.db #0x30	; 48	'0'
   649E 30                 2109 	.db #0x30	; 48	'0'
   649F 30                 2110 	.db #0x30	; 48	'0'
   64A0 30                 2111 	.db #0x30	; 48	'0'
   64A1 30                 2112 	.db #0x30	; 48	'0'
   64A2 0F                 2113 	.db #0x0F	; 15
   64A3 30                 2114 	.db #0x30	; 48	'0'
   64A4 30                 2115 	.db #0x30	; 48	'0'
   64A5 1A                 2116 	.db #0x1A	; 26
   64A6 30                 2117 	.db #0x30	; 48	'0'
   64A7 30                 2118 	.db #0x30	; 48	'0'
   64A8 30                 2119 	.db #0x30	; 48	'0'
   64A9 30                 2120 	.db #0x30	; 48	'0'
   64AA 30                 2121 	.db #0x30	; 48	'0'
   64AB 30                 2122 	.db #0x30	; 48	'0'
   64AC 25                 2123 	.db #0x25	; 37
   64AD 30                 2124 	.db #0x30	; 48	'0'
   64AE 30                 2125 	.db #0x30	; 48	'0'
   64AF 1A                 2126 	.db #0x1A	; 26
   64B0 30                 2127 	.db #0x30	; 48	'0'
   64B1 30                 2128 	.db #0x30	; 48	'0'
   64B2 30                 2129 	.db #0x30	; 48	'0'
   64B3 30                 2130 	.db #0x30	; 48	'0'
   64B4 30                 2131 	.db #0x30	; 48	'0'
   64B5 30                 2132 	.db #0x30	; 48	'0'
   64B6 25                 2133 	.db #0x25	; 37
   64B7 30                 2134 	.db #0x30	; 48	'0'
   64B8 30                 2135 	.db #0x30	; 48	'0'
   64B9 1A                 2136 	.db #0x1A	; 26
   64BA 30                 2137 	.db #0x30	; 48	'0'
   64BB 30                 2138 	.db #0x30	; 48	'0'
   64BC 30                 2139 	.db #0x30	; 48	'0'
   64BD 30                 2140 	.db #0x30	; 48	'0'
   64BE 30                 2141 	.db #0x30	; 48	'0'
   64BF 30                 2142 	.db #0x30	; 48	'0'
   64C0 25                 2143 	.db #0x25	; 37
   64C1 30                 2144 	.db #0x30	; 48	'0'
   64C2 30                 2145 	.db #0x30	; 48	'0'
   64C3 1A                 2146 	.db #0x1A	; 26
   64C4 30                 2147 	.db #0x30	; 48	'0'
   64C5 30                 2148 	.db #0x30	; 48	'0'
   64C6 30                 2149 	.db #0x30	; 48	'0'
   64C7 30                 2150 	.db #0x30	; 48	'0'
   64C8 30                 2151 	.db #0x30	; 48	'0'
   64C9 30                 2152 	.db #0x30	; 48	'0'
   64CA 25                 2153 	.db #0x25	; 37
   64CB 30                 2154 	.db #0x30	; 48	'0'
   64CC 30                 2155 	.db #0x30	; 48	'0'
   64CD 1A                 2156 	.db #0x1A	; 26
   64CE 30                 2157 	.db #0x30	; 48	'0'
   64CF 30                 2158 	.db #0x30	; 48	'0'
   64D0 30                 2159 	.db #0x30	; 48	'0'
   64D1 30                 2160 	.db #0x30	; 48	'0'
   64D2 30                 2161 	.db #0x30	; 48	'0'
   64D3 30                 2162 	.db #0x30	; 48	'0'
   64D4 25                 2163 	.db #0x25	; 37
   64D5 30                 2164 	.db #0x30	; 48	'0'
   64D6 30                 2165 	.db #0x30	; 48	'0'
   64D7 1A                 2166 	.db #0x1A	; 26
   64D8 30                 2167 	.db #0x30	; 48	'0'
   64D9 30                 2168 	.db #0x30	; 48	'0'
   64DA 30                 2169 	.db #0x30	; 48	'0'
   64DB 30                 2170 	.db #0x30	; 48	'0'
   64DC 30                 2171 	.db #0x30	; 48	'0'
   64DD 30                 2172 	.db #0x30	; 48	'0'
   64DE 25                 2173 	.db #0x25	; 37
   64DF 30                 2174 	.db #0x30	; 48	'0'
   64E0 30                 2175 	.db #0x30	; 48	'0'
   64E1 1A                 2176 	.db #0x1A	; 26
   64E2 30                 2177 	.db #0x30	; 48	'0'
   64E3 30                 2178 	.db #0x30	; 48	'0'
   64E4 30                 2179 	.db #0x30	; 48	'0'
   64E5 30                 2180 	.db #0x30	; 48	'0'
   64E6 30                 2181 	.db #0x30	; 48	'0'
   64E7 30                 2182 	.db #0x30	; 48	'0'
   64E8 25                 2183 	.db #0x25	; 37
   64E9 30                 2184 	.db #0x30	; 48	'0'
   64EA 30                 2185 	.db #0x30	; 48	'0'
   64EB 1A                 2186 	.db #0x1A	; 26
   64EC 30                 2187 	.db #0x30	; 48	'0'
   64ED 30                 2188 	.db #0x30	; 48	'0'
   64EE 30                 2189 	.db #0x30	; 48	'0'
   64EF 30                 2190 	.db #0x30	; 48	'0'
   64F0 30                 2191 	.db #0x30	; 48	'0'
   64F1 30                 2192 	.db #0x30	; 48	'0'
   64F2 25                 2193 	.db #0x25	; 37
   64F3 30                 2194 	.db #0x30	; 48	'0'
   64F4 30                 2195 	.db #0x30	; 48	'0'
   64F5 1A                 2196 	.db #0x1A	; 26
   64F6 30                 2197 	.db #0x30	; 48	'0'
   64F7 30                 2198 	.db #0x30	; 48	'0'
   64F8 30                 2199 	.db #0x30	; 48	'0'
   64F9 30                 2200 	.db #0x30	; 48	'0'
   64FA 30                 2201 	.db #0x30	; 48	'0'
   64FB 30                 2202 	.db #0x30	; 48	'0'
   64FC 25                 2203 	.db #0x25	; 37
   64FD 30                 2204 	.db #0x30	; 48	'0'
   64FE 30                 2205 	.db #0x30	; 48	'0'
   64FF 1A                 2206 	.db #0x1A	; 26
   6500 30                 2207 	.db #0x30	; 48	'0'
   6501 64                 2208 	.db #0x64	; 100	'd'
   6502 30                 2209 	.db #0x30	; 48	'0'
   6503 30                 2210 	.db #0x30	; 48	'0'
   6504 64                 2211 	.db #0x64	; 100	'd'
   6505 30                 2212 	.db #0x30	; 48	'0'
   6506 25                 2213 	.db #0x25	; 37
   6507 30                 2214 	.db #0x30	; 48	'0'
   6508 30                 2215 	.db #0x30	; 48	'0'
   6509 1A                 2216 	.db #0x1A	; 26
   650A 30                 2217 	.db #0x30	; 48	'0'
   650B CC                 2218 	.db #0xCC	; 204
   650C 30                 2219 	.db #0x30	; 48	'0'
   650D 30                 2220 	.db #0x30	; 48	'0'
   650E 98                 2221 	.db #0x98	; 152
   650F 98                 2222 	.db #0x98	; 152
   6510 25                 2223 	.db #0x25	; 37
   6511 30                 2224 	.db #0x30	; 48	'0'
   6512 30                 2225 	.db #0x30	; 48	'0'
   6513 1A                 2226 	.db #0x1A	; 26
   6514 64                 2227 	.db #0x64	; 100	'd'
   6515 64                 2228 	.db #0x64	; 100	'd'
   6516 30                 2229 	.db #0x30	; 48	'0'
   6517 64                 2230 	.db #0x64	; 100	'd'
   6518 30                 2231 	.db #0x30	; 48	'0'
   6519 98                 2232 	.db #0x98	; 152
   651A 25                 2233 	.db #0x25	; 37
   651B 30                 2234 	.db #0x30	; 48	'0'
   651C 30                 2235 	.db #0x30	; 48	'0'
   651D 1A                 2236 	.db #0x1A	; 26
   651E 30                 2237 	.db #0x30	; 48	'0'
   651F 64                 2238 	.db #0x64	; 100	'd'
   6520 30                 2239 	.db #0x30	; 48	'0'
   6521 64                 2240 	.db #0x64	; 100	'd'
   6522 30                 2241 	.db #0x30	; 48	'0'
   6523 98                 2242 	.db #0x98	; 152
   6524 25                 2243 	.db #0x25	; 37
   6525 30                 2244 	.db #0x30	; 48	'0'
   6526 30                 2245 	.db #0x30	; 48	'0'
   6527 1A                 2246 	.db #0x1A	; 26
   6528 30                 2247 	.db #0x30	; 48	'0'
   6529 64                 2248 	.db #0x64	; 100	'd'
   652A 30                 2249 	.db #0x30	; 48	'0'
   652B 30                 2250 	.db #0x30	; 48	'0'
   652C 30                 2251 	.db #0x30	; 48	'0'
   652D 98                 2252 	.db #0x98	; 152
   652E 25                 2253 	.db #0x25	; 37
   652F 30                 2254 	.db #0x30	; 48	'0'
   6530 30                 2255 	.db #0x30	; 48	'0'
   6531 1A                 2256 	.db #0x1A	; 26
   6532 30                 2257 	.db #0x30	; 48	'0'
   6533 64                 2258 	.db #0x64	; 100	'd'
   6534 30                 2259 	.db #0x30	; 48	'0'
   6535 30                 2260 	.db #0x30	; 48	'0'
   6536 30                 2261 	.db #0x30	; 48	'0'
   6537 98                 2262 	.db #0x98	; 152
   6538 25                 2263 	.db #0x25	; 37
   6539 30                 2264 	.db #0x30	; 48	'0'
   653A 30                 2265 	.db #0x30	; 48	'0'
   653B 1A                 2266 	.db #0x1A	; 26
   653C 30                 2267 	.db #0x30	; 48	'0'
   653D 64                 2268 	.db #0x64	; 100	'd'
   653E 30                 2269 	.db #0x30	; 48	'0'
   653F 30                 2270 	.db #0x30	; 48	'0'
   6540 64                 2271 	.db #0x64	; 100	'd'
   6541 30                 2272 	.db #0x30	; 48	'0'
   6542 25                 2273 	.db #0x25	; 37
   6543 30                 2274 	.db #0x30	; 48	'0'
   6544 30                 2275 	.db #0x30	; 48	'0'
   6545 1A                 2276 	.db #0x1A	; 26
   6546 30                 2277 	.db #0x30	; 48	'0'
   6547 64                 2278 	.db #0x64	; 100	'd'
   6548 30                 2279 	.db #0x30	; 48	'0'
   6549 30                 2280 	.db #0x30	; 48	'0'
   654A 64                 2281 	.db #0x64	; 100	'd'
   654B 30                 2282 	.db #0x30	; 48	'0'
   654C 25                 2283 	.db #0x25	; 37
   654D 30                 2284 	.db #0x30	; 48	'0'
   654E 30                 2285 	.db #0x30	; 48	'0'
   654F 1A                 2286 	.db #0x1A	; 26
   6550 30                 2287 	.db #0x30	; 48	'0'
   6551 64                 2288 	.db #0x64	; 100	'd'
   6552 30                 2289 	.db #0x30	; 48	'0'
   6553 30                 2290 	.db #0x30	; 48	'0'
   6554 98                 2291 	.db #0x98	; 152
   6555 30                 2292 	.db #0x30	; 48	'0'
   6556 25                 2293 	.db #0x25	; 37
   6557 30                 2294 	.db #0x30	; 48	'0'
   6558 30                 2295 	.db #0x30	; 48	'0'
   6559 1A                 2296 	.db #0x1A	; 26
   655A 30                 2297 	.db #0x30	; 48	'0'
   655B 64                 2298 	.db #0x64	; 100	'd'
   655C 30                 2299 	.db #0x30	; 48	'0'
   655D 30                 2300 	.db #0x30	; 48	'0'
   655E 98                 2301 	.db #0x98	; 152
   655F 30                 2302 	.db #0x30	; 48	'0'
   6560 25                 2303 	.db #0x25	; 37
   6561 30                 2304 	.db #0x30	; 48	'0'
   6562 30                 2305 	.db #0x30	; 48	'0'
   6563 1A                 2306 	.db #0x1A	; 26
   6564 30                 2307 	.db #0x30	; 48	'0'
   6565 64                 2308 	.db #0x64	; 100	'd'
   6566 30                 2309 	.db #0x30	; 48	'0'
   6567 30                 2310 	.db #0x30	; 48	'0'
   6568 98                 2311 	.db #0x98	; 152
   6569 30                 2312 	.db #0x30	; 48	'0'
   656A 25                 2313 	.db #0x25	; 37
   656B 30                 2314 	.db #0x30	; 48	'0'
   656C 30                 2315 	.db #0x30	; 48	'0'
   656D 1A                 2316 	.db #0x1A	; 26
   656E 30                 2317 	.db #0x30	; 48	'0'
   656F 64                 2318 	.db #0x64	; 100	'd'
   6570 30                 2319 	.db #0x30	; 48	'0'
   6571 64                 2320 	.db #0x64	; 100	'd'
   6572 30                 2321 	.db #0x30	; 48	'0'
   6573 30                 2322 	.db #0x30	; 48	'0'
   6574 25                 2323 	.db #0x25	; 37
   6575 30                 2324 	.db #0x30	; 48	'0'
   6576 30                 2325 	.db #0x30	; 48	'0'
   6577 1A                 2326 	.db #0x1A	; 26
   6578 30                 2327 	.db #0x30	; 48	'0'
   6579 64                 2328 	.db #0x64	; 100	'd'
   657A 30                 2329 	.db #0x30	; 48	'0'
   657B 64                 2330 	.db #0x64	; 100	'd'
   657C 30                 2331 	.db #0x30	; 48	'0'
   657D 30                 2332 	.db #0x30	; 48	'0'
   657E 25                 2333 	.db #0x25	; 37
   657F 30                 2334 	.db #0x30	; 48	'0'
   6580 30                 2335 	.db #0x30	; 48	'0'
   6581 1A                 2336 	.db #0x1A	; 26
   6582 30                 2337 	.db #0x30	; 48	'0'
   6583 64                 2338 	.db #0x64	; 100	'd'
   6584 30                 2339 	.db #0x30	; 48	'0'
   6585 64                 2340 	.db #0x64	; 100	'd'
   6586 30                 2341 	.db #0x30	; 48	'0'
   6587 30                 2342 	.db #0x30	; 48	'0'
   6588 25                 2343 	.db #0x25	; 37
   6589 30                 2344 	.db #0x30	; 48	'0'
   658A 30                 2345 	.db #0x30	; 48	'0'
   658B 1A                 2346 	.db #0x1A	; 26
   658C 64                 2347 	.db #0x64	; 100	'd'
   658D CC                 2348 	.db #0xCC	; 204
   658E 98                 2349 	.db #0x98	; 152
   658F 64                 2350 	.db #0x64	; 100	'd'
   6590 CC                 2351 	.db #0xCC	; 204
   6591 98                 2352 	.db #0x98	; 152
   6592 25                 2353 	.db #0x25	; 37
   6593 30                 2354 	.db #0x30	; 48	'0'
   6594 30                 2355 	.db #0x30	; 48	'0'
   6595 1A                 2356 	.db #0x1A	; 26
   6596 30                 2357 	.db #0x30	; 48	'0'
   6597 30                 2358 	.db #0x30	; 48	'0'
   6598 30                 2359 	.db #0x30	; 48	'0'
   6599 30                 2360 	.db #0x30	; 48	'0'
   659A 30                 2361 	.db #0x30	; 48	'0'
   659B 30                 2362 	.db #0x30	; 48	'0'
   659C 25                 2363 	.db #0x25	; 37
   659D 30                 2364 	.db #0x30	; 48	'0'
   659E 30                 2365 	.db #0x30	; 48	'0'
   659F 1A                 2366 	.db #0x1A	; 26
   65A0 30                 2367 	.db #0x30	; 48	'0'
   65A1 30                 2368 	.db #0x30	; 48	'0'
   65A2 30                 2369 	.db #0x30	; 48	'0'
   65A3 30                 2370 	.db #0x30	; 48	'0'
   65A4 30                 2371 	.db #0x30	; 48	'0'
   65A5 30                 2372 	.db #0x30	; 48	'0'
   65A6 25                 2373 	.db #0x25	; 37
   65A7 30                 2374 	.db #0x30	; 48	'0'
   65A8 30                 2375 	.db #0x30	; 48	'0'
   65A9 1A                 2376 	.db #0x1A	; 26
   65AA 30                 2377 	.db #0x30	; 48	'0'
   65AB 30                 2378 	.db #0x30	; 48	'0'
   65AC 30                 2379 	.db #0x30	; 48	'0'
   65AD 30                 2380 	.db #0x30	; 48	'0'
   65AE 30                 2381 	.db #0x30	; 48	'0'
   65AF 30                 2382 	.db #0x30	; 48	'0'
   65B0 25                 2383 	.db #0x25	; 37
   65B1 30                 2384 	.db #0x30	; 48	'0'
   65B2 30                 2385 	.db #0x30	; 48	'0'
   65B3 1A                 2386 	.db #0x1A	; 26
   65B4 30                 2387 	.db #0x30	; 48	'0'
   65B5 30                 2388 	.db #0x30	; 48	'0'
   65B6 30                 2389 	.db #0x30	; 48	'0'
   65B7 30                 2390 	.db #0x30	; 48	'0'
   65B8 30                 2391 	.db #0x30	; 48	'0'
   65B9 30                 2392 	.db #0x30	; 48	'0'
   65BA 25                 2393 	.db #0x25	; 37
   65BB 30                 2394 	.db #0x30	; 48	'0'
   65BC 30                 2395 	.db #0x30	; 48	'0'
   65BD 1A                 2396 	.db #0x1A	; 26
   65BE 30                 2397 	.db #0x30	; 48	'0'
   65BF 30                 2398 	.db #0x30	; 48	'0'
   65C0 30                 2399 	.db #0x30	; 48	'0'
   65C1 30                 2400 	.db #0x30	; 48	'0'
   65C2 30                 2401 	.db #0x30	; 48	'0'
   65C3 30                 2402 	.db #0x30	; 48	'0'
   65C4 25                 2403 	.db #0x25	; 37
   65C5 30                 2404 	.db #0x30	; 48	'0'
   65C6 30                 2405 	.db #0x30	; 48	'0'
   65C7 1A                 2406 	.db #0x1A	; 26
   65C8 30                 2407 	.db #0x30	; 48	'0'
   65C9 30                 2408 	.db #0x30	; 48	'0'
   65CA 30                 2409 	.db #0x30	; 48	'0'
   65CB 30                 2410 	.db #0x30	; 48	'0'
   65CC 30                 2411 	.db #0x30	; 48	'0'
   65CD 30                 2412 	.db #0x30	; 48	'0'
   65CE 25                 2413 	.db #0x25	; 37
   65CF 30                 2414 	.db #0x30	; 48	'0'
   65D0 30                 2415 	.db #0x30	; 48	'0'
   65D1 0F                 2416 	.db #0x0F	; 15
   65D2 30                 2417 	.db #0x30	; 48	'0'
   65D3 30                 2418 	.db #0x30	; 48	'0'
   65D4 30                 2419 	.db #0x30	; 48	'0'
   65D5 30                 2420 	.db #0x30	; 48	'0'
   65D6 30                 2421 	.db #0x30	; 48	'0'
   65D7 30                 2422 	.db #0x30	; 48	'0'
   65D8 0F                 2423 	.db #0x0F	; 15
   65D9 30                 2424 	.db #0x30	; 48	'0'
   65DA 30                 2425 	.db #0x30	; 48	'0'
   65DB 25                 2426 	.db #0x25	; 37
   65DC 30                 2427 	.db #0x30	; 48	'0'
   65DD 30                 2428 	.db #0x30	; 48	'0'
   65DE 30                 2429 	.db #0x30	; 48	'0'
   65DF 30                 2430 	.db #0x30	; 48	'0'
   65E0 30                 2431 	.db #0x30	; 48	'0'
   65E1 30                 2432 	.db #0x30	; 48	'0'
   65E2 1A                 2433 	.db #0x1A	; 26
   65E3 30                 2434 	.db #0x30	; 48	'0'
   65E4 30                 2435 	.db #0x30	; 48	'0'
   65E5 25                 2436 	.db #0x25	; 37
   65E6 0F                 2437 	.db #0x0F	; 15
   65E7 0F                 2438 	.db #0x0F	; 15
   65E8 0F                 2439 	.db #0x0F	; 15
   65E9 0F                 2440 	.db #0x0F	; 15
   65EA 0F                 2441 	.db #0x0F	; 15
   65EB 0F                 2442 	.db #0x0F	; 15
   65EC 1A                 2443 	.db #0x1A	; 26
   65ED 30                 2444 	.db #0x30	; 48	'0'
   65EE F0                 2445 	.db #0xF0	; 240
   65EF 30                 2446 	.db #0x30	; 48	'0'
   65F0 30                 2447 	.db #0x30	; 48	'0'
   65F1 30                 2448 	.db #0x30	; 48	'0'
   65F2 30                 2449 	.db #0x30	; 48	'0'
   65F3 30                 2450 	.db #0x30	; 48	'0'
   65F4 30                 2451 	.db #0x30	; 48	'0'
   65F5 30                 2452 	.db #0x30	; 48	'0'
   65F6 30                 2453 	.db #0x30	; 48	'0'
   65F7 F0                 2454 	.db #0xF0	; 240
   65F8 F0                 2455 	.db #0xF0	; 240
   65F9 30                 2456 	.db #0x30	; 48	'0'
   65FA 30                 2457 	.db #0x30	; 48	'0'
   65FB 30                 2458 	.db #0x30	; 48	'0'
   65FC 30                 2459 	.db #0x30	; 48	'0'
   65FD 30                 2460 	.db #0x30	; 48	'0'
   65FE 30                 2461 	.db #0x30	; 48	'0'
   65FF 30                 2462 	.db #0x30	; 48	'0'
   6600 30                 2463 	.db #0x30	; 48	'0'
   6601 F0                 2464 	.db #0xF0	; 240
   6602                    2465 _tile_tiles_06:
   6602 F0                 2466 	.db #0xF0	; 240
   6603 30                 2467 	.db #0x30	; 48	'0'
   6604 30                 2468 	.db #0x30	; 48	'0'
   6605 30                 2469 	.db #0x30	; 48	'0'
   6606 30                 2470 	.db #0x30	; 48	'0'
   6607 30                 2471 	.db #0x30	; 48	'0'
   6608 30                 2472 	.db #0x30	; 48	'0'
   6609 30                 2473 	.db #0x30	; 48	'0'
   660A 30                 2474 	.db #0x30	; 48	'0'
   660B F0                 2475 	.db #0xF0	; 240
   660C F0                 2476 	.db #0xF0	; 240
   660D 30                 2477 	.db #0x30	; 48	'0'
   660E 30                 2478 	.db #0x30	; 48	'0'
   660F 30                 2479 	.db #0x30	; 48	'0'
   6610 30                 2480 	.db #0x30	; 48	'0'
   6611 30                 2481 	.db #0x30	; 48	'0'
   6612 30                 2482 	.db #0x30	; 48	'0'
   6613 30                 2483 	.db #0x30	; 48	'0'
   6614 30                 2484 	.db #0x30	; 48	'0'
   6615 F0                 2485 	.db #0xF0	; 240
   6616 30                 2486 	.db #0x30	; 48	'0'
   6617 25                 2487 	.db #0x25	; 37
   6618 0F                 2488 	.db #0x0F	; 15
   6619 0F                 2489 	.db #0x0F	; 15
   661A 0F                 2490 	.db #0x0F	; 15
   661B 0F                 2491 	.db #0x0F	; 15
   661C 0F                 2492 	.db #0x0F	; 15
   661D 0F                 2493 	.db #0x0F	; 15
   661E 1A                 2494 	.db #0x1A	; 26
   661F 30                 2495 	.db #0x30	; 48	'0'
   6620 30                 2496 	.db #0x30	; 48	'0'
   6621 25                 2497 	.db #0x25	; 37
   6622 30                 2498 	.db #0x30	; 48	'0'
   6623 30                 2499 	.db #0x30	; 48	'0'
   6624 30                 2500 	.db #0x30	; 48	'0'
   6625 30                 2501 	.db #0x30	; 48	'0'
   6626 30                 2502 	.db #0x30	; 48	'0'
   6627 30                 2503 	.db #0x30	; 48	'0'
   6628 1A                 2504 	.db #0x1A	; 26
   6629 30                 2505 	.db #0x30	; 48	'0'
   662A 30                 2506 	.db #0x30	; 48	'0'
   662B 0F                 2507 	.db #0x0F	; 15
   662C 30                 2508 	.db #0x30	; 48	'0'
   662D 30                 2509 	.db #0x30	; 48	'0'
   662E 30                 2510 	.db #0x30	; 48	'0'
   662F 30                 2511 	.db #0x30	; 48	'0'
   6630 30                 2512 	.db #0x30	; 48	'0'
   6631 30                 2513 	.db #0x30	; 48	'0'
   6632 0F                 2514 	.db #0x0F	; 15
   6633 30                 2515 	.db #0x30	; 48	'0'
   6634 30                 2516 	.db #0x30	; 48	'0'
   6635 1A                 2517 	.db #0x1A	; 26
   6636 30                 2518 	.db #0x30	; 48	'0'
   6637 30                 2519 	.db #0x30	; 48	'0'
   6638 30                 2520 	.db #0x30	; 48	'0'
   6639 30                 2521 	.db #0x30	; 48	'0'
   663A 30                 2522 	.db #0x30	; 48	'0'
   663B 30                 2523 	.db #0x30	; 48	'0'
   663C 25                 2524 	.db #0x25	; 37
   663D 30                 2525 	.db #0x30	; 48	'0'
   663E 30                 2526 	.db #0x30	; 48	'0'
   663F 1A                 2527 	.db #0x1A	; 26
   6640 30                 2528 	.db #0x30	; 48	'0'
   6641 30                 2529 	.db #0x30	; 48	'0'
   6642 30                 2530 	.db #0x30	; 48	'0'
   6643 30                 2531 	.db #0x30	; 48	'0'
   6644 30                 2532 	.db #0x30	; 48	'0'
   6645 30                 2533 	.db #0x30	; 48	'0'
   6646 25                 2534 	.db #0x25	; 37
   6647 30                 2535 	.db #0x30	; 48	'0'
   6648 30                 2536 	.db #0x30	; 48	'0'
   6649 1A                 2537 	.db #0x1A	; 26
   664A 30                 2538 	.db #0x30	; 48	'0'
   664B 30                 2539 	.db #0x30	; 48	'0'
   664C 30                 2540 	.db #0x30	; 48	'0'
   664D 30                 2541 	.db #0x30	; 48	'0'
   664E 30                 2542 	.db #0x30	; 48	'0'
   664F 30                 2543 	.db #0x30	; 48	'0'
   6650 25                 2544 	.db #0x25	; 37
   6651 30                 2545 	.db #0x30	; 48	'0'
   6652 30                 2546 	.db #0x30	; 48	'0'
   6653 1A                 2547 	.db #0x1A	; 26
   6654 30                 2548 	.db #0x30	; 48	'0'
   6655 30                 2549 	.db #0x30	; 48	'0'
   6656 30                 2550 	.db #0x30	; 48	'0'
   6657 30                 2551 	.db #0x30	; 48	'0'
   6658 30                 2552 	.db #0x30	; 48	'0'
   6659 30                 2553 	.db #0x30	; 48	'0'
   665A 25                 2554 	.db #0x25	; 37
   665B 30                 2555 	.db #0x30	; 48	'0'
   665C 30                 2556 	.db #0x30	; 48	'0'
   665D 1A                 2557 	.db #0x1A	; 26
   665E 30                 2558 	.db #0x30	; 48	'0'
   665F 30                 2559 	.db #0x30	; 48	'0'
   6660 30                 2560 	.db #0x30	; 48	'0'
   6661 30                 2561 	.db #0x30	; 48	'0'
   6662 30                 2562 	.db #0x30	; 48	'0'
   6663 30                 2563 	.db #0x30	; 48	'0'
   6664 25                 2564 	.db #0x25	; 37
   6665 30                 2565 	.db #0x30	; 48	'0'
   6666 30                 2566 	.db #0x30	; 48	'0'
   6667 1A                 2567 	.db #0x1A	; 26
   6668 30                 2568 	.db #0x30	; 48	'0'
   6669 30                 2569 	.db #0x30	; 48	'0'
   666A 30                 2570 	.db #0x30	; 48	'0'
   666B 30                 2571 	.db #0x30	; 48	'0'
   666C 30                 2572 	.db #0x30	; 48	'0'
   666D 30                 2573 	.db #0x30	; 48	'0'
   666E 25                 2574 	.db #0x25	; 37
   666F 30                 2575 	.db #0x30	; 48	'0'
   6670 30                 2576 	.db #0x30	; 48	'0'
   6671 1A                 2577 	.db #0x1A	; 26
   6672 30                 2578 	.db #0x30	; 48	'0'
   6673 30                 2579 	.db #0x30	; 48	'0'
   6674 30                 2580 	.db #0x30	; 48	'0'
   6675 30                 2581 	.db #0x30	; 48	'0'
   6676 30                 2582 	.db #0x30	; 48	'0'
   6677 30                 2583 	.db #0x30	; 48	'0'
   6678 25                 2584 	.db #0x25	; 37
   6679 30                 2585 	.db #0x30	; 48	'0'
   667A 30                 2586 	.db #0x30	; 48	'0'
   667B 1A                 2587 	.db #0x1A	; 26
   667C 30                 2588 	.db #0x30	; 48	'0'
   667D 30                 2589 	.db #0x30	; 48	'0'
   667E 30                 2590 	.db #0x30	; 48	'0'
   667F 30                 2591 	.db #0x30	; 48	'0'
   6680 30                 2592 	.db #0x30	; 48	'0'
   6681 30                 2593 	.db #0x30	; 48	'0'
   6682 25                 2594 	.db #0x25	; 37
   6683 30                 2595 	.db #0x30	; 48	'0'
   6684 30                 2596 	.db #0x30	; 48	'0'
   6685 1A                 2597 	.db #0x1A	; 26
   6686 30                 2598 	.db #0x30	; 48	'0'
   6687 30                 2599 	.db #0x30	; 48	'0'
   6688 30                 2600 	.db #0x30	; 48	'0'
   6689 30                 2601 	.db #0x30	; 48	'0'
   668A 30                 2602 	.db #0x30	; 48	'0'
   668B 30                 2603 	.db #0x30	; 48	'0'
   668C 25                 2604 	.db #0x25	; 37
   668D 30                 2605 	.db #0x30	; 48	'0'
   668E 30                 2606 	.db #0x30	; 48	'0'
   668F 1A                 2607 	.db #0x1A	; 26
   6690 30                 2608 	.db #0x30	; 48	'0'
   6691 64                 2609 	.db #0x64	; 100	'd'
   6692 30                 2610 	.db #0x30	; 48	'0'
   6693 30                 2611 	.db #0x30	; 48	'0'
   6694 64                 2612 	.db #0x64	; 100	'd'
   6695 30                 2613 	.db #0x30	; 48	'0'
   6696 25                 2614 	.db #0x25	; 37
   6697 30                 2615 	.db #0x30	; 48	'0'
   6698 30                 2616 	.db #0x30	; 48	'0'
   6699 1A                 2617 	.db #0x1A	; 26
   669A 30                 2618 	.db #0x30	; 48	'0'
   669B 98                 2619 	.db #0x98	; 152
   669C 98                 2620 	.db #0x98	; 152
   669D 30                 2621 	.db #0x30	; 48	'0'
   669E 64                 2622 	.db #0x64	; 100	'd'
   669F 30                 2623 	.db #0x30	; 48	'0'
   66A0 25                 2624 	.db #0x25	; 37
   66A1 30                 2625 	.db #0x30	; 48	'0'
   66A2 30                 2626 	.db #0x30	; 48	'0'
   66A3 1A                 2627 	.db #0x1A	; 26
   66A4 64                 2628 	.db #0x64	; 100	'd'
   66A5 30                 2629 	.db #0x30	; 48	'0'
   66A6 98                 2630 	.db #0x98	; 152
   66A7 30                 2631 	.db #0x30	; 48	'0'
   66A8 CC                 2632 	.db #0xCC	; 204
   66A9 30                 2633 	.db #0x30	; 48	'0'
   66AA 25                 2634 	.db #0x25	; 37
   66AB 30                 2635 	.db #0x30	; 48	'0'
   66AC 30                 2636 	.db #0x30	; 48	'0'
   66AD 1A                 2637 	.db #0x1A	; 26
   66AE 64                 2638 	.db #0x64	; 100	'd'
   66AF 30                 2639 	.db #0x30	; 48	'0'
   66B0 98                 2640 	.db #0x98	; 152
   66B1 30                 2641 	.db #0x30	; 48	'0'
   66B2 CC                 2642 	.db #0xCC	; 204
   66B3 30                 2643 	.db #0x30	; 48	'0'
   66B4 25                 2644 	.db #0x25	; 37
   66B5 30                 2645 	.db #0x30	; 48	'0'
   66B6 30                 2646 	.db #0x30	; 48	'0'
   66B7 1A                 2647 	.db #0x1A	; 26
   66B8 30                 2648 	.db #0x30	; 48	'0'
   66B9 30                 2649 	.db #0x30	; 48	'0'
   66BA 98                 2650 	.db #0x98	; 152
   66BB 64                 2651 	.db #0x64	; 100	'd'
   66BC 64                 2652 	.db #0x64	; 100	'd'
   66BD 30                 2653 	.db #0x30	; 48	'0'
   66BE 25                 2654 	.db #0x25	; 37
   66BF 30                 2655 	.db #0x30	; 48	'0'
   66C0 30                 2656 	.db #0x30	; 48	'0'
   66C1 1A                 2657 	.db #0x1A	; 26
   66C2 30                 2658 	.db #0x30	; 48	'0'
   66C3 30                 2659 	.db #0x30	; 48	'0'
   66C4 98                 2660 	.db #0x98	; 152
   66C5 64                 2661 	.db #0x64	; 100	'd'
   66C6 64                 2662 	.db #0x64	; 100	'd'
   66C7 30                 2663 	.db #0x30	; 48	'0'
   66C8 25                 2664 	.db #0x25	; 37
   66C9 30                 2665 	.db #0x30	; 48	'0'
   66CA 30                 2666 	.db #0x30	; 48	'0'
   66CB 1A                 2667 	.db #0x1A	; 26
   66CC 30                 2668 	.db #0x30	; 48	'0'
   66CD 64                 2669 	.db #0x64	; 100	'd'
   66CE 30                 2670 	.db #0x30	; 48	'0'
   66CF 64                 2671 	.db #0x64	; 100	'd'
   66D0 64                 2672 	.db #0x64	; 100	'd'
   66D1 30                 2673 	.db #0x30	; 48	'0'
   66D2 25                 2674 	.db #0x25	; 37
   66D3 30                 2675 	.db #0x30	; 48	'0'
   66D4 30                 2676 	.db #0x30	; 48	'0'
   66D5 1A                 2677 	.db #0x1A	; 26
   66D6 30                 2678 	.db #0x30	; 48	'0'
   66D7 64                 2679 	.db #0x64	; 100	'd'
   66D8 30                 2680 	.db #0x30	; 48	'0'
   66D9 98                 2681 	.db #0x98	; 152
   66DA 64                 2682 	.db #0x64	; 100	'd'
   66DB 30                 2683 	.db #0x30	; 48	'0'
   66DC 25                 2684 	.db #0x25	; 37
   66DD 30                 2685 	.db #0x30	; 48	'0'
   66DE 30                 2686 	.db #0x30	; 48	'0'
   66DF 1A                 2687 	.db #0x1A	; 26
   66E0 30                 2688 	.db #0x30	; 48	'0'
   66E1 98                 2689 	.db #0x98	; 152
   66E2 30                 2690 	.db #0x30	; 48	'0'
   66E3 98                 2691 	.db #0x98	; 152
   66E4 64                 2692 	.db #0x64	; 100	'd'
   66E5 30                 2693 	.db #0x30	; 48	'0'
   66E6 25                 2694 	.db #0x25	; 37
   66E7 30                 2695 	.db #0x30	; 48	'0'
   66E8 30                 2696 	.db #0x30	; 48	'0'
   66E9 1A                 2697 	.db #0x1A	; 26
   66EA 30                 2698 	.db #0x30	; 48	'0'
   66EB 98                 2699 	.db #0x98	; 152
   66EC 30                 2700 	.db #0x30	; 48	'0'
   66ED 98                 2701 	.db #0x98	; 152
   66EE 64                 2702 	.db #0x64	; 100	'd'
   66EF 30                 2703 	.db #0x30	; 48	'0'
   66F0 25                 2704 	.db #0x25	; 37
   66F1 30                 2705 	.db #0x30	; 48	'0'
   66F2 30                 2706 	.db #0x30	; 48	'0'
   66F3 1A                 2707 	.db #0x1A	; 26
   66F4 30                 2708 	.db #0x30	; 48	'0'
   66F5 98                 2709 	.db #0x98	; 152
   66F6 30                 2710 	.db #0x30	; 48	'0'
   66F7 CC                 2711 	.db #0xCC	; 204
   66F8 CC                 2712 	.db #0xCC	; 204
   66F9 98                 2713 	.db #0x98	; 152
   66FA 25                 2714 	.db #0x25	; 37
   66FB 30                 2715 	.db #0x30	; 48	'0'
   66FC 30                 2716 	.db #0x30	; 48	'0'
   66FD 1A                 2717 	.db #0x1A	; 26
   66FE 64                 2718 	.db #0x64	; 100	'd'
   66FF 30                 2719 	.db #0x30	; 48	'0'
   6700 30                 2720 	.db #0x30	; 48	'0'
   6701 30                 2721 	.db #0x30	; 48	'0'
   6702 64                 2722 	.db #0x64	; 100	'd'
   6703 30                 2723 	.db #0x30	; 48	'0'
   6704 25                 2724 	.db #0x25	; 37
   6705 30                 2725 	.db #0x30	; 48	'0'
   6706 30                 2726 	.db #0x30	; 48	'0'
   6707 1A                 2727 	.db #0x1A	; 26
   6708 64                 2728 	.db #0x64	; 100	'd'
   6709 30                 2729 	.db #0x30	; 48	'0'
   670A 30                 2730 	.db #0x30	; 48	'0'
   670B 30                 2731 	.db #0x30	; 48	'0'
   670C 64                 2732 	.db #0x64	; 100	'd'
   670D 30                 2733 	.db #0x30	; 48	'0'
   670E 25                 2734 	.db #0x25	; 37
   670F 30                 2735 	.db #0x30	; 48	'0'
   6710 30                 2736 	.db #0x30	; 48	'0'
   6711 1A                 2737 	.db #0x1A	; 26
   6712 64                 2738 	.db #0x64	; 100	'd'
   6713 30                 2739 	.db #0x30	; 48	'0'
   6714 30                 2740 	.db #0x30	; 48	'0'
   6715 30                 2741 	.db #0x30	; 48	'0'
   6716 64                 2742 	.db #0x64	; 100	'd'
   6717 30                 2743 	.db #0x30	; 48	'0'
   6718 25                 2744 	.db #0x25	; 37
   6719 30                 2745 	.db #0x30	; 48	'0'
   671A 30                 2746 	.db #0x30	; 48	'0'
   671B 1A                 2747 	.db #0x1A	; 26
   671C 64                 2748 	.db #0x64	; 100	'd'
   671D CC                 2749 	.db #0xCC	; 204
   671E 98                 2750 	.db #0x98	; 152
   671F 30                 2751 	.db #0x30	; 48	'0'
   6720 64                 2752 	.db #0x64	; 100	'd'
   6721 30                 2753 	.db #0x30	; 48	'0'
   6722 25                 2754 	.db #0x25	; 37
   6723 30                 2755 	.db #0x30	; 48	'0'
   6724 30                 2756 	.db #0x30	; 48	'0'
   6725 1A                 2757 	.db #0x1A	; 26
   6726 30                 2758 	.db #0x30	; 48	'0'
   6727 30                 2759 	.db #0x30	; 48	'0'
   6728 30                 2760 	.db #0x30	; 48	'0'
   6729 30                 2761 	.db #0x30	; 48	'0'
   672A 30                 2762 	.db #0x30	; 48	'0'
   672B 30                 2763 	.db #0x30	; 48	'0'
   672C 25                 2764 	.db #0x25	; 37
   672D 30                 2765 	.db #0x30	; 48	'0'
   672E 30                 2766 	.db #0x30	; 48	'0'
   672F 1A                 2767 	.db #0x1A	; 26
   6730 30                 2768 	.db #0x30	; 48	'0'
   6731 30                 2769 	.db #0x30	; 48	'0'
   6732 30                 2770 	.db #0x30	; 48	'0'
   6733 30                 2771 	.db #0x30	; 48	'0'
   6734 30                 2772 	.db #0x30	; 48	'0'
   6735 30                 2773 	.db #0x30	; 48	'0'
   6736 25                 2774 	.db #0x25	; 37
   6737 30                 2775 	.db #0x30	; 48	'0'
   6738 30                 2776 	.db #0x30	; 48	'0'
   6739 1A                 2777 	.db #0x1A	; 26
   673A 30                 2778 	.db #0x30	; 48	'0'
   673B 30                 2779 	.db #0x30	; 48	'0'
   673C 30                 2780 	.db #0x30	; 48	'0'
   673D 30                 2781 	.db #0x30	; 48	'0'
   673E 30                 2782 	.db #0x30	; 48	'0'
   673F 30                 2783 	.db #0x30	; 48	'0'
   6740 25                 2784 	.db #0x25	; 37
   6741 30                 2785 	.db #0x30	; 48	'0'
   6742 30                 2786 	.db #0x30	; 48	'0'
   6743 1A                 2787 	.db #0x1A	; 26
   6744 30                 2788 	.db #0x30	; 48	'0'
   6745 30                 2789 	.db #0x30	; 48	'0'
   6746 30                 2790 	.db #0x30	; 48	'0'
   6747 30                 2791 	.db #0x30	; 48	'0'
   6748 30                 2792 	.db #0x30	; 48	'0'
   6749 30                 2793 	.db #0x30	; 48	'0'
   674A 25                 2794 	.db #0x25	; 37
   674B 30                 2795 	.db #0x30	; 48	'0'
   674C 30                 2796 	.db #0x30	; 48	'0'
   674D 1A                 2797 	.db #0x1A	; 26
   674E 30                 2798 	.db #0x30	; 48	'0'
   674F 30                 2799 	.db #0x30	; 48	'0'
   6750 30                 2800 	.db #0x30	; 48	'0'
   6751 30                 2801 	.db #0x30	; 48	'0'
   6752 30                 2802 	.db #0x30	; 48	'0'
   6753 30                 2803 	.db #0x30	; 48	'0'
   6754 25                 2804 	.db #0x25	; 37
   6755 30                 2805 	.db #0x30	; 48	'0'
   6756 30                 2806 	.db #0x30	; 48	'0'
   6757 1A                 2807 	.db #0x1A	; 26
   6758 30                 2808 	.db #0x30	; 48	'0'
   6759 30                 2809 	.db #0x30	; 48	'0'
   675A 30                 2810 	.db #0x30	; 48	'0'
   675B 30                 2811 	.db #0x30	; 48	'0'
   675C 30                 2812 	.db #0x30	; 48	'0'
   675D 30                 2813 	.db #0x30	; 48	'0'
   675E 25                 2814 	.db #0x25	; 37
   675F 30                 2815 	.db #0x30	; 48	'0'
   6760 30                 2816 	.db #0x30	; 48	'0'
   6761 0F                 2817 	.db #0x0F	; 15
   6762 30                 2818 	.db #0x30	; 48	'0'
   6763 30                 2819 	.db #0x30	; 48	'0'
   6764 30                 2820 	.db #0x30	; 48	'0'
   6765 30                 2821 	.db #0x30	; 48	'0'
   6766 30                 2822 	.db #0x30	; 48	'0'
   6767 30                 2823 	.db #0x30	; 48	'0'
   6768 0F                 2824 	.db #0x0F	; 15
   6769 30                 2825 	.db #0x30	; 48	'0'
   676A 30                 2826 	.db #0x30	; 48	'0'
   676B 25                 2827 	.db #0x25	; 37
   676C 30                 2828 	.db #0x30	; 48	'0'
   676D 30                 2829 	.db #0x30	; 48	'0'
   676E 30                 2830 	.db #0x30	; 48	'0'
   676F 30                 2831 	.db #0x30	; 48	'0'
   6770 30                 2832 	.db #0x30	; 48	'0'
   6771 30                 2833 	.db #0x30	; 48	'0'
   6772 1A                 2834 	.db #0x1A	; 26
   6773 30                 2835 	.db #0x30	; 48	'0'
   6774 30                 2836 	.db #0x30	; 48	'0'
   6775 25                 2837 	.db #0x25	; 37
   6776 0F                 2838 	.db #0x0F	; 15
   6777 0F                 2839 	.db #0x0F	; 15
   6778 0F                 2840 	.db #0x0F	; 15
   6779 0F                 2841 	.db #0x0F	; 15
   677A 0F                 2842 	.db #0x0F	; 15
   677B 0F                 2843 	.db #0x0F	; 15
   677C 1A                 2844 	.db #0x1A	; 26
   677D 30                 2845 	.db #0x30	; 48	'0'
   677E F0                 2846 	.db #0xF0	; 240
   677F 30                 2847 	.db #0x30	; 48	'0'
   6780 30                 2848 	.db #0x30	; 48	'0'
   6781 30                 2849 	.db #0x30	; 48	'0'
   6782 30                 2850 	.db #0x30	; 48	'0'
   6783 30                 2851 	.db #0x30	; 48	'0'
   6784 30                 2852 	.db #0x30	; 48	'0'
   6785 30                 2853 	.db #0x30	; 48	'0'
   6786 30                 2854 	.db #0x30	; 48	'0'
   6787 F0                 2855 	.db #0xF0	; 240
   6788 F0                 2856 	.db #0xF0	; 240
   6789 30                 2857 	.db #0x30	; 48	'0'
   678A 30                 2858 	.db #0x30	; 48	'0'
   678B 30                 2859 	.db #0x30	; 48	'0'
   678C 30                 2860 	.db #0x30	; 48	'0'
   678D 30                 2861 	.db #0x30	; 48	'0'
   678E 30                 2862 	.db #0x30	; 48	'0'
   678F 30                 2863 	.db #0x30	; 48	'0'
   6790 30                 2864 	.db #0x30	; 48	'0'
   6791 F0                 2865 	.db #0xF0	; 240
   6792                    2866 _tile_tiles_07:
   6792 F0                 2867 	.db #0xF0	; 240
   6793 30                 2868 	.db #0x30	; 48	'0'
   6794 30                 2869 	.db #0x30	; 48	'0'
   6795 30                 2870 	.db #0x30	; 48	'0'
   6796 30                 2871 	.db #0x30	; 48	'0'
   6797 30                 2872 	.db #0x30	; 48	'0'
   6798 30                 2873 	.db #0x30	; 48	'0'
   6799 30                 2874 	.db #0x30	; 48	'0'
   679A 30                 2875 	.db #0x30	; 48	'0'
   679B F0                 2876 	.db #0xF0	; 240
   679C F0                 2877 	.db #0xF0	; 240
   679D 30                 2878 	.db #0x30	; 48	'0'
   679E 30                 2879 	.db #0x30	; 48	'0'
   679F 30                 2880 	.db #0x30	; 48	'0'
   67A0 30                 2881 	.db #0x30	; 48	'0'
   67A1 30                 2882 	.db #0x30	; 48	'0'
   67A2 30                 2883 	.db #0x30	; 48	'0'
   67A3 30                 2884 	.db #0x30	; 48	'0'
   67A4 30                 2885 	.db #0x30	; 48	'0'
   67A5 F0                 2886 	.db #0xF0	; 240
   67A6 30                 2887 	.db #0x30	; 48	'0'
   67A7 25                 2888 	.db #0x25	; 37
   67A8 0F                 2889 	.db #0x0F	; 15
   67A9 0F                 2890 	.db #0x0F	; 15
   67AA 0F                 2891 	.db #0x0F	; 15
   67AB 0F                 2892 	.db #0x0F	; 15
   67AC 0F                 2893 	.db #0x0F	; 15
   67AD 0F                 2894 	.db #0x0F	; 15
   67AE 1A                 2895 	.db #0x1A	; 26
   67AF 30                 2896 	.db #0x30	; 48	'0'
   67B0 30                 2897 	.db #0x30	; 48	'0'
   67B1 25                 2898 	.db #0x25	; 37
   67B2 30                 2899 	.db #0x30	; 48	'0'
   67B3 30                 2900 	.db #0x30	; 48	'0'
   67B4 30                 2901 	.db #0x30	; 48	'0'
   67B5 30                 2902 	.db #0x30	; 48	'0'
   67B6 30                 2903 	.db #0x30	; 48	'0'
   67B7 30                 2904 	.db #0x30	; 48	'0'
   67B8 1A                 2905 	.db #0x1A	; 26
   67B9 30                 2906 	.db #0x30	; 48	'0'
   67BA 30                 2907 	.db #0x30	; 48	'0'
   67BB 0F                 2908 	.db #0x0F	; 15
   67BC 30                 2909 	.db #0x30	; 48	'0'
   67BD 30                 2910 	.db #0x30	; 48	'0'
   67BE 30                 2911 	.db #0x30	; 48	'0'
   67BF 30                 2912 	.db #0x30	; 48	'0'
   67C0 30                 2913 	.db #0x30	; 48	'0'
   67C1 30                 2914 	.db #0x30	; 48	'0'
   67C2 0F                 2915 	.db #0x0F	; 15
   67C3 30                 2916 	.db #0x30	; 48	'0'
   67C4 30                 2917 	.db #0x30	; 48	'0'
   67C5 1A                 2918 	.db #0x1A	; 26
   67C6 30                 2919 	.db #0x30	; 48	'0'
   67C7 30                 2920 	.db #0x30	; 48	'0'
   67C8 30                 2921 	.db #0x30	; 48	'0'
   67C9 30                 2922 	.db #0x30	; 48	'0'
   67CA 30                 2923 	.db #0x30	; 48	'0'
   67CB 30                 2924 	.db #0x30	; 48	'0'
   67CC 25                 2925 	.db #0x25	; 37
   67CD 30                 2926 	.db #0x30	; 48	'0'
   67CE 30                 2927 	.db #0x30	; 48	'0'
   67CF 1A                 2928 	.db #0x1A	; 26
   67D0 30                 2929 	.db #0x30	; 48	'0'
   67D1 30                 2930 	.db #0x30	; 48	'0'
   67D2 30                 2931 	.db #0x30	; 48	'0'
   67D3 30                 2932 	.db #0x30	; 48	'0'
   67D4 30                 2933 	.db #0x30	; 48	'0'
   67D5 30                 2934 	.db #0x30	; 48	'0'
   67D6 25                 2935 	.db #0x25	; 37
   67D7 30                 2936 	.db #0x30	; 48	'0'
   67D8 30                 2937 	.db #0x30	; 48	'0'
   67D9 1A                 2938 	.db #0x1A	; 26
   67DA 30                 2939 	.db #0x30	; 48	'0'
   67DB 30                 2940 	.db #0x30	; 48	'0'
   67DC 30                 2941 	.db #0x30	; 48	'0'
   67DD 30                 2942 	.db #0x30	; 48	'0'
   67DE 30                 2943 	.db #0x30	; 48	'0'
   67DF 30                 2944 	.db #0x30	; 48	'0'
   67E0 25                 2945 	.db #0x25	; 37
   67E1 30                 2946 	.db #0x30	; 48	'0'
   67E2 30                 2947 	.db #0x30	; 48	'0'
   67E3 1A                 2948 	.db #0x1A	; 26
   67E4 30                 2949 	.db #0x30	; 48	'0'
   67E5 30                 2950 	.db #0x30	; 48	'0'
   67E6 30                 2951 	.db #0x30	; 48	'0'
   67E7 30                 2952 	.db #0x30	; 48	'0'
   67E8 30                 2953 	.db #0x30	; 48	'0'
   67E9 30                 2954 	.db #0x30	; 48	'0'
   67EA 25                 2955 	.db #0x25	; 37
   67EB 30                 2956 	.db #0x30	; 48	'0'
   67EC 30                 2957 	.db #0x30	; 48	'0'
   67ED 1A                 2958 	.db #0x1A	; 26
   67EE 30                 2959 	.db #0x30	; 48	'0'
   67EF 30                 2960 	.db #0x30	; 48	'0'
   67F0 30                 2961 	.db #0x30	; 48	'0'
   67F1 30                 2962 	.db #0x30	; 48	'0'
   67F2 30                 2963 	.db #0x30	; 48	'0'
   67F3 30                 2964 	.db #0x30	; 48	'0'
   67F4 25                 2965 	.db #0x25	; 37
   67F5 30                 2966 	.db #0x30	; 48	'0'
   67F6 30                 2967 	.db #0x30	; 48	'0'
   67F7 1A                 2968 	.db #0x1A	; 26
   67F8 30                 2969 	.db #0x30	; 48	'0'
   67F9 30                 2970 	.db #0x30	; 48	'0'
   67FA 30                 2971 	.db #0x30	; 48	'0'
   67FB 30                 2972 	.db #0x30	; 48	'0'
   67FC 30                 2973 	.db #0x30	; 48	'0'
   67FD 30                 2974 	.db #0x30	; 48	'0'
   67FE 25                 2975 	.db #0x25	; 37
   67FF 30                 2976 	.db #0x30	; 48	'0'
   6800 30                 2977 	.db #0x30	; 48	'0'
   6801 1A                 2978 	.db #0x1A	; 26
   6802 30                 2979 	.db #0x30	; 48	'0'
   6803 30                 2980 	.db #0x30	; 48	'0'
   6804 30                 2981 	.db #0x30	; 48	'0'
   6805 30                 2982 	.db #0x30	; 48	'0'
   6806 30                 2983 	.db #0x30	; 48	'0'
   6807 30                 2984 	.db #0x30	; 48	'0'
   6808 25                 2985 	.db #0x25	; 37
   6809 30                 2986 	.db #0x30	; 48	'0'
   680A 30                 2987 	.db #0x30	; 48	'0'
   680B 1A                 2988 	.db #0x1A	; 26
   680C 30                 2989 	.db #0x30	; 48	'0'
   680D 30                 2990 	.db #0x30	; 48	'0'
   680E 30                 2991 	.db #0x30	; 48	'0'
   680F 30                 2992 	.db #0x30	; 48	'0'
   6810 30                 2993 	.db #0x30	; 48	'0'
   6811 30                 2994 	.db #0x30	; 48	'0'
   6812 25                 2995 	.db #0x25	; 37
   6813 30                 2996 	.db #0x30	; 48	'0'
   6814 30                 2997 	.db #0x30	; 48	'0'
   6815 1A                 2998 	.db #0x1A	; 26
   6816 30                 2999 	.db #0x30	; 48	'0'
   6817 64                 3000 	.db #0x64	; 100	'd'
   6818 30                 3001 	.db #0x30	; 48	'0'
   6819 30                 3002 	.db #0x30	; 48	'0'
   681A CC                 3003 	.db #0xCC	; 204
   681B 30                 3004 	.db #0x30	; 48	'0'
   681C 25                 3005 	.db #0x25	; 37
   681D 30                 3006 	.db #0x30	; 48	'0'
   681E 30                 3007 	.db #0x30	; 48	'0'
   681F 1A                 3008 	.db #0x1A	; 26
   6820 30                 3009 	.db #0x30	; 48	'0'
   6821 64                 3010 	.db #0x64	; 100	'd'
   6822 30                 3011 	.db #0x30	; 48	'0'
   6823 64                 3012 	.db #0x64	; 100	'd'
   6824 30                 3013 	.db #0x30	; 48	'0'
   6825 98                 3014 	.db #0x98	; 152
   6826 25                 3015 	.db #0x25	; 37
   6827 30                 3016 	.db #0x30	; 48	'0'
   6828 30                 3017 	.db #0x30	; 48	'0'
   6829 1A                 3018 	.db #0x1A	; 26
   682A 30                 3019 	.db #0x30	; 48	'0'
   682B CC                 3020 	.db #0xCC	; 204
   682C 30                 3021 	.db #0x30	; 48	'0'
   682D 64                 3022 	.db #0x64	; 100	'd'
   682E 30                 3023 	.db #0x30	; 48	'0'
   682F 98                 3024 	.db #0x98	; 152
   6830 25                 3025 	.db #0x25	; 37
   6831 30                 3026 	.db #0x30	; 48	'0'
   6832 30                 3027 	.db #0x30	; 48	'0'
   6833 1A                 3028 	.db #0x1A	; 26
   6834 30                 3029 	.db #0x30	; 48	'0'
   6835 CC                 3030 	.db #0xCC	; 204
   6836 30                 3031 	.db #0x30	; 48	'0'
   6837 64                 3032 	.db #0x64	; 100	'd'
   6838 30                 3033 	.db #0x30	; 48	'0'
   6839 98                 3034 	.db #0x98	; 152
   683A 25                 3035 	.db #0x25	; 37
   683B 30                 3036 	.db #0x30	; 48	'0'
   683C 30                 3037 	.db #0x30	; 48	'0'
   683D 1A                 3038 	.db #0x1A	; 26
   683E 64                 3039 	.db #0x64	; 100	'd'
   683F 64                 3040 	.db #0x64	; 100	'd'
   6840 30                 3041 	.db #0x30	; 48	'0'
   6841 64                 3042 	.db #0x64	; 100	'd'
   6842 30                 3043 	.db #0x30	; 48	'0'
   6843 98                 3044 	.db #0x98	; 152
   6844 25                 3045 	.db #0x25	; 37
   6845 30                 3046 	.db #0x30	; 48	'0'
   6846 30                 3047 	.db #0x30	; 48	'0'
   6847 1A                 3048 	.db #0x1A	; 26
   6848 64                 3049 	.db #0x64	; 100	'd'
   6849 64                 3050 	.db #0x64	; 100	'd'
   684A 30                 3051 	.db #0x30	; 48	'0'
   684B 64                 3052 	.db #0x64	; 100	'd'
   684C 30                 3053 	.db #0x30	; 48	'0'
   684D 98                 3054 	.db #0x98	; 152
   684E 25                 3055 	.db #0x25	; 37
   684F 30                 3056 	.db #0x30	; 48	'0'
   6850 30                 3057 	.db #0x30	; 48	'0'
   6851 1A                 3058 	.db #0x1A	; 26
   6852 64                 3059 	.db #0x64	; 100	'd'
   6853 64                 3060 	.db #0x64	; 100	'd'
   6854 30                 3061 	.db #0x30	; 48	'0'
   6855 64                 3062 	.db #0x64	; 100	'd'
   6856 30                 3063 	.db #0x30	; 48	'0'
   6857 98                 3064 	.db #0x98	; 152
   6858 25                 3065 	.db #0x25	; 37
   6859 30                 3066 	.db #0x30	; 48	'0'
   685A 30                 3067 	.db #0x30	; 48	'0'
   685B 1A                 3068 	.db #0x1A	; 26
   685C 64                 3069 	.db #0x64	; 100	'd'
   685D 64                 3070 	.db #0x64	; 100	'd'
   685E 30                 3071 	.db #0x30	; 48	'0'
   685F 30                 3072 	.db #0x30	; 48	'0'
   6860 CC                 3073 	.db #0xCC	; 204
   6861 30                 3074 	.db #0x30	; 48	'0'
   6862 25                 3075 	.db #0x25	; 37
   6863 30                 3076 	.db #0x30	; 48	'0'
   6864 30                 3077 	.db #0x30	; 48	'0'
   6865 1A                 3078 	.db #0x1A	; 26
   6866 98                 3079 	.db #0x98	; 152
   6867 64                 3080 	.db #0x64	; 100	'd'
   6868 30                 3081 	.db #0x30	; 48	'0'
   6869 64                 3082 	.db #0x64	; 100	'd'
   686A 30                 3083 	.db #0x30	; 48	'0'
   686B 98                 3084 	.db #0x98	; 152
   686C 25                 3085 	.db #0x25	; 37
   686D 30                 3086 	.db #0x30	; 48	'0'
   686E 30                 3087 	.db #0x30	; 48	'0'
   686F 1A                 3088 	.db #0x1A	; 26
   6870 98                 3089 	.db #0x98	; 152
   6871 64                 3090 	.db #0x64	; 100	'd'
   6872 30                 3091 	.db #0x30	; 48	'0'
   6873 64                 3092 	.db #0x64	; 100	'd'
   6874 30                 3093 	.db #0x30	; 48	'0'
   6875 98                 3094 	.db #0x98	; 152
   6876 25                 3095 	.db #0x25	; 37
   6877 30                 3096 	.db #0x30	; 48	'0'
   6878 30                 3097 	.db #0x30	; 48	'0'
   6879 1A                 3098 	.db #0x1A	; 26
   687A CC                 3099 	.db #0xCC	; 204
   687B CC                 3100 	.db #0xCC	; 204
   687C 98                 3101 	.db #0x98	; 152
   687D 64                 3102 	.db #0x64	; 100	'd'
   687E 30                 3103 	.db #0x30	; 48	'0'
   687F 98                 3104 	.db #0x98	; 152
   6880 25                 3105 	.db #0x25	; 37
   6881 30                 3106 	.db #0x30	; 48	'0'
   6882 30                 3107 	.db #0x30	; 48	'0'
   6883 1A                 3108 	.db #0x1A	; 26
   6884 30                 3109 	.db #0x30	; 48	'0'
   6885 64                 3110 	.db #0x64	; 100	'd'
   6886 30                 3111 	.db #0x30	; 48	'0'
   6887 64                 3112 	.db #0x64	; 100	'd'
   6888 30                 3113 	.db #0x30	; 48	'0'
   6889 98                 3114 	.db #0x98	; 152
   688A 25                 3115 	.db #0x25	; 37
   688B 30                 3116 	.db #0x30	; 48	'0'
   688C 30                 3117 	.db #0x30	; 48	'0'
   688D 1A                 3118 	.db #0x1A	; 26
   688E 30                 3119 	.db #0x30	; 48	'0'
   688F 64                 3120 	.db #0x64	; 100	'd'
   6890 30                 3121 	.db #0x30	; 48	'0'
   6891 64                 3122 	.db #0x64	; 100	'd'
   6892 30                 3123 	.db #0x30	; 48	'0'
   6893 98                 3124 	.db #0x98	; 152
   6894 25                 3125 	.db #0x25	; 37
   6895 30                 3126 	.db #0x30	; 48	'0'
   6896 30                 3127 	.db #0x30	; 48	'0'
   6897 1A                 3128 	.db #0x1A	; 26
   6898 30                 3129 	.db #0x30	; 48	'0'
   6899 64                 3130 	.db #0x64	; 100	'd'
   689A 30                 3131 	.db #0x30	; 48	'0'
   689B 64                 3132 	.db #0x64	; 100	'd'
   689C 30                 3133 	.db #0x30	; 48	'0'
   689D 98                 3134 	.db #0x98	; 152
   689E 25                 3135 	.db #0x25	; 37
   689F 30                 3136 	.db #0x30	; 48	'0'
   68A0 30                 3137 	.db #0x30	; 48	'0'
   68A1 1A                 3138 	.db #0x1A	; 26
   68A2 30                 3139 	.db #0x30	; 48	'0'
   68A3 64                 3140 	.db #0x64	; 100	'd'
   68A4 30                 3141 	.db #0x30	; 48	'0'
   68A5 30                 3142 	.db #0x30	; 48	'0'
   68A6 CC                 3143 	.db #0xCC	; 204
   68A7 30                 3144 	.db #0x30	; 48	'0'
   68A8 25                 3145 	.db #0x25	; 37
   68A9 30                 3146 	.db #0x30	; 48	'0'
   68AA 30                 3147 	.db #0x30	; 48	'0'
   68AB 1A                 3148 	.db #0x1A	; 26
   68AC 30                 3149 	.db #0x30	; 48	'0'
   68AD 30                 3150 	.db #0x30	; 48	'0'
   68AE 30                 3151 	.db #0x30	; 48	'0'
   68AF 30                 3152 	.db #0x30	; 48	'0'
   68B0 30                 3153 	.db #0x30	; 48	'0'
   68B1 30                 3154 	.db #0x30	; 48	'0'
   68B2 25                 3155 	.db #0x25	; 37
   68B3 30                 3156 	.db #0x30	; 48	'0'
   68B4 30                 3157 	.db #0x30	; 48	'0'
   68B5 1A                 3158 	.db #0x1A	; 26
   68B6 30                 3159 	.db #0x30	; 48	'0'
   68B7 30                 3160 	.db #0x30	; 48	'0'
   68B8 30                 3161 	.db #0x30	; 48	'0'
   68B9 30                 3162 	.db #0x30	; 48	'0'
   68BA 30                 3163 	.db #0x30	; 48	'0'
   68BB 30                 3164 	.db #0x30	; 48	'0'
   68BC 25                 3165 	.db #0x25	; 37
   68BD 30                 3166 	.db #0x30	; 48	'0'
   68BE 30                 3167 	.db #0x30	; 48	'0'
   68BF 1A                 3168 	.db #0x1A	; 26
   68C0 30                 3169 	.db #0x30	; 48	'0'
   68C1 30                 3170 	.db #0x30	; 48	'0'
   68C2 30                 3171 	.db #0x30	; 48	'0'
   68C3 30                 3172 	.db #0x30	; 48	'0'
   68C4 30                 3173 	.db #0x30	; 48	'0'
   68C5 30                 3174 	.db #0x30	; 48	'0'
   68C6 25                 3175 	.db #0x25	; 37
   68C7 30                 3176 	.db #0x30	; 48	'0'
   68C8 30                 3177 	.db #0x30	; 48	'0'
   68C9 1A                 3178 	.db #0x1A	; 26
   68CA 30                 3179 	.db #0x30	; 48	'0'
   68CB 30                 3180 	.db #0x30	; 48	'0'
   68CC 30                 3181 	.db #0x30	; 48	'0'
   68CD 30                 3182 	.db #0x30	; 48	'0'
   68CE 30                 3183 	.db #0x30	; 48	'0'
   68CF 30                 3184 	.db #0x30	; 48	'0'
   68D0 25                 3185 	.db #0x25	; 37
   68D1 30                 3186 	.db #0x30	; 48	'0'
   68D2 30                 3187 	.db #0x30	; 48	'0'
   68D3 1A                 3188 	.db #0x1A	; 26
   68D4 30                 3189 	.db #0x30	; 48	'0'
   68D5 30                 3190 	.db #0x30	; 48	'0'
   68D6 30                 3191 	.db #0x30	; 48	'0'
   68D7 30                 3192 	.db #0x30	; 48	'0'
   68D8 30                 3193 	.db #0x30	; 48	'0'
   68D9 30                 3194 	.db #0x30	; 48	'0'
   68DA 25                 3195 	.db #0x25	; 37
   68DB 30                 3196 	.db #0x30	; 48	'0'
   68DC 30                 3197 	.db #0x30	; 48	'0'
   68DD 1A                 3198 	.db #0x1A	; 26
   68DE 30                 3199 	.db #0x30	; 48	'0'
   68DF 30                 3200 	.db #0x30	; 48	'0'
   68E0 30                 3201 	.db #0x30	; 48	'0'
   68E1 30                 3202 	.db #0x30	; 48	'0'
   68E2 30                 3203 	.db #0x30	; 48	'0'
   68E3 30                 3204 	.db #0x30	; 48	'0'
   68E4 25                 3205 	.db #0x25	; 37
   68E5 30                 3206 	.db #0x30	; 48	'0'
   68E6 30                 3207 	.db #0x30	; 48	'0'
   68E7 1A                 3208 	.db #0x1A	; 26
   68E8 30                 3209 	.db #0x30	; 48	'0'
   68E9 30                 3210 	.db #0x30	; 48	'0'
   68EA 30                 3211 	.db #0x30	; 48	'0'
   68EB 30                 3212 	.db #0x30	; 48	'0'
   68EC 30                 3213 	.db #0x30	; 48	'0'
   68ED 30                 3214 	.db #0x30	; 48	'0'
   68EE 25                 3215 	.db #0x25	; 37
   68EF 30                 3216 	.db #0x30	; 48	'0'
   68F0 30                 3217 	.db #0x30	; 48	'0'
   68F1 0F                 3218 	.db #0x0F	; 15
   68F2 30                 3219 	.db #0x30	; 48	'0'
   68F3 30                 3220 	.db #0x30	; 48	'0'
   68F4 30                 3221 	.db #0x30	; 48	'0'
   68F5 30                 3222 	.db #0x30	; 48	'0'
   68F6 30                 3223 	.db #0x30	; 48	'0'
   68F7 30                 3224 	.db #0x30	; 48	'0'
   68F8 0F                 3225 	.db #0x0F	; 15
   68F9 30                 3226 	.db #0x30	; 48	'0'
   68FA 30                 3227 	.db #0x30	; 48	'0'
   68FB 25                 3228 	.db #0x25	; 37
   68FC 30                 3229 	.db #0x30	; 48	'0'
   68FD 30                 3230 	.db #0x30	; 48	'0'
   68FE 30                 3231 	.db #0x30	; 48	'0'
   68FF 30                 3232 	.db #0x30	; 48	'0'
   6900 30                 3233 	.db #0x30	; 48	'0'
   6901 30                 3234 	.db #0x30	; 48	'0'
   6902 1A                 3235 	.db #0x1A	; 26
   6903 30                 3236 	.db #0x30	; 48	'0'
   6904 30                 3237 	.db #0x30	; 48	'0'
   6905 25                 3238 	.db #0x25	; 37
   6906 0F                 3239 	.db #0x0F	; 15
   6907 0F                 3240 	.db #0x0F	; 15
   6908 0F                 3241 	.db #0x0F	; 15
   6909 0F                 3242 	.db #0x0F	; 15
   690A 0F                 3243 	.db #0x0F	; 15
   690B 0F                 3244 	.db #0x0F	; 15
   690C 1A                 3245 	.db #0x1A	; 26
   690D 30                 3246 	.db #0x30	; 48	'0'
   690E F0                 3247 	.db #0xF0	; 240
   690F 30                 3248 	.db #0x30	; 48	'0'
   6910 30                 3249 	.db #0x30	; 48	'0'
   6911 30                 3250 	.db #0x30	; 48	'0'
   6912 30                 3251 	.db #0x30	; 48	'0'
   6913 30                 3252 	.db #0x30	; 48	'0'
   6914 30                 3253 	.db #0x30	; 48	'0'
   6915 30                 3254 	.db #0x30	; 48	'0'
   6916 30                 3255 	.db #0x30	; 48	'0'
   6917 F0                 3256 	.db #0xF0	; 240
   6918 F0                 3257 	.db #0xF0	; 240
   6919 30                 3258 	.db #0x30	; 48	'0'
   691A 30                 3259 	.db #0x30	; 48	'0'
   691B 30                 3260 	.db #0x30	; 48	'0'
   691C 30                 3261 	.db #0x30	; 48	'0'
   691D 30                 3262 	.db #0x30	; 48	'0'
   691E 30                 3263 	.db #0x30	; 48	'0'
   691F 30                 3264 	.db #0x30	; 48	'0'
   6920 30                 3265 	.db #0x30	; 48	'0'
   6921 F0                 3266 	.db #0xF0	; 240
   6922                    3267 _tile_tiles_08:
   6922 F0                 3268 	.db #0xF0	; 240
   6923 30                 3269 	.db #0x30	; 48	'0'
   6924 30                 3270 	.db #0x30	; 48	'0'
   6925 30                 3271 	.db #0x30	; 48	'0'
   6926 30                 3272 	.db #0x30	; 48	'0'
   6927 30                 3273 	.db #0x30	; 48	'0'
   6928 30                 3274 	.db #0x30	; 48	'0'
   6929 30                 3275 	.db #0x30	; 48	'0'
   692A 30                 3276 	.db #0x30	; 48	'0'
   692B F0                 3277 	.db #0xF0	; 240
   692C F0                 3278 	.db #0xF0	; 240
   692D 30                 3279 	.db #0x30	; 48	'0'
   692E 30                 3280 	.db #0x30	; 48	'0'
   692F 30                 3281 	.db #0x30	; 48	'0'
   6930 30                 3282 	.db #0x30	; 48	'0'
   6931 30                 3283 	.db #0x30	; 48	'0'
   6932 30                 3284 	.db #0x30	; 48	'0'
   6933 30                 3285 	.db #0x30	; 48	'0'
   6934 30                 3286 	.db #0x30	; 48	'0'
   6935 F0                 3287 	.db #0xF0	; 240
   6936 30                 3288 	.db #0x30	; 48	'0'
   6937 25                 3289 	.db #0x25	; 37
   6938 0F                 3290 	.db #0x0F	; 15
   6939 0F                 3291 	.db #0x0F	; 15
   693A 0F                 3292 	.db #0x0F	; 15
   693B 0F                 3293 	.db #0x0F	; 15
   693C 0F                 3294 	.db #0x0F	; 15
   693D 0F                 3295 	.db #0x0F	; 15
   693E 1A                 3296 	.db #0x1A	; 26
   693F 30                 3297 	.db #0x30	; 48	'0'
   6940 30                 3298 	.db #0x30	; 48	'0'
   6941 25                 3299 	.db #0x25	; 37
   6942 30                 3300 	.db #0x30	; 48	'0'
   6943 30                 3301 	.db #0x30	; 48	'0'
   6944 30                 3302 	.db #0x30	; 48	'0'
   6945 30                 3303 	.db #0x30	; 48	'0'
   6946 30                 3304 	.db #0x30	; 48	'0'
   6947 30                 3305 	.db #0x30	; 48	'0'
   6948 1A                 3306 	.db #0x1A	; 26
   6949 30                 3307 	.db #0x30	; 48	'0'
   694A 30                 3308 	.db #0x30	; 48	'0'
   694B 0F                 3309 	.db #0x0F	; 15
   694C 30                 3310 	.db #0x30	; 48	'0'
   694D 30                 3311 	.db #0x30	; 48	'0'
   694E 30                 3312 	.db #0x30	; 48	'0'
   694F 30                 3313 	.db #0x30	; 48	'0'
   6950 30                 3314 	.db #0x30	; 48	'0'
   6951 30                 3315 	.db #0x30	; 48	'0'
   6952 0F                 3316 	.db #0x0F	; 15
   6953 30                 3317 	.db #0x30	; 48	'0'
   6954 30                 3318 	.db #0x30	; 48	'0'
   6955 1A                 3319 	.db #0x1A	; 26
   6956 30                 3320 	.db #0x30	; 48	'0'
   6957 30                 3321 	.db #0x30	; 48	'0'
   6958 30                 3322 	.db #0x30	; 48	'0'
   6959 30                 3323 	.db #0x30	; 48	'0'
   695A 30                 3324 	.db #0x30	; 48	'0'
   695B 30                 3325 	.db #0x30	; 48	'0'
   695C 25                 3326 	.db #0x25	; 37
   695D 30                 3327 	.db #0x30	; 48	'0'
   695E 30                 3328 	.db #0x30	; 48	'0'
   695F 1A                 3329 	.db #0x1A	; 26
   6960 30                 3330 	.db #0x30	; 48	'0'
   6961 30                 3331 	.db #0x30	; 48	'0'
   6962 30                 3332 	.db #0x30	; 48	'0'
   6963 30                 3333 	.db #0x30	; 48	'0'
   6964 30                 3334 	.db #0x30	; 48	'0'
   6965 30                 3335 	.db #0x30	; 48	'0'
   6966 25                 3336 	.db #0x25	; 37
   6967 30                 3337 	.db #0x30	; 48	'0'
   6968 30                 3338 	.db #0x30	; 48	'0'
   6969 1A                 3339 	.db #0x1A	; 26
   696A 30                 3340 	.db #0x30	; 48	'0'
   696B 30                 3341 	.db #0x30	; 48	'0'
   696C 30                 3342 	.db #0x30	; 48	'0'
   696D 30                 3343 	.db #0x30	; 48	'0'
   696E 30                 3344 	.db #0x30	; 48	'0'
   696F 30                 3345 	.db #0x30	; 48	'0'
   6970 25                 3346 	.db #0x25	; 37
   6971 30                 3347 	.db #0x30	; 48	'0'
   6972 30                 3348 	.db #0x30	; 48	'0'
   6973 1A                 3349 	.db #0x1A	; 26
   6974 30                 3350 	.db #0x30	; 48	'0'
   6975 30                 3351 	.db #0x30	; 48	'0'
   6976 30                 3352 	.db #0x30	; 48	'0'
   6977 30                 3353 	.db #0x30	; 48	'0'
   6978 30                 3354 	.db #0x30	; 48	'0'
   6979 30                 3355 	.db #0x30	; 48	'0'
   697A 25                 3356 	.db #0x25	; 37
   697B 30                 3357 	.db #0x30	; 48	'0'
   697C 30                 3358 	.db #0x30	; 48	'0'
   697D 1A                 3359 	.db #0x1A	; 26
   697E 30                 3360 	.db #0x30	; 48	'0'
   697F 30                 3361 	.db #0x30	; 48	'0'
   6980 30                 3362 	.db #0x30	; 48	'0'
   6981 30                 3363 	.db #0x30	; 48	'0'
   6982 30                 3364 	.db #0x30	; 48	'0'
   6983 30                 3365 	.db #0x30	; 48	'0'
   6984 25                 3366 	.db #0x25	; 37
   6985 30                 3367 	.db #0x30	; 48	'0'
   6986 30                 3368 	.db #0x30	; 48	'0'
   6987 1A                 3369 	.db #0x1A	; 26
   6988 30                 3370 	.db #0x30	; 48	'0'
   6989 30                 3371 	.db #0x30	; 48	'0'
   698A 30                 3372 	.db #0x30	; 48	'0'
   698B 30                 3373 	.db #0x30	; 48	'0'
   698C 30                 3374 	.db #0x30	; 48	'0'
   698D 30                 3375 	.db #0x30	; 48	'0'
   698E 25                 3376 	.db #0x25	; 37
   698F 30                 3377 	.db #0x30	; 48	'0'
   6990 30                 3378 	.db #0x30	; 48	'0'
   6991 1A                 3379 	.db #0x1A	; 26
   6992 30                 3380 	.db #0x30	; 48	'0'
   6993 30                 3381 	.db #0x30	; 48	'0'
   6994 30                 3382 	.db #0x30	; 48	'0'
   6995 30                 3383 	.db #0x30	; 48	'0'
   6996 30                 3384 	.db #0x30	; 48	'0'
   6997 30                 3385 	.db #0x30	; 48	'0'
   6998 25                 3386 	.db #0x25	; 37
   6999 30                 3387 	.db #0x30	; 48	'0'
   699A 30                 3388 	.db #0x30	; 48	'0'
   699B 1A                 3389 	.db #0x1A	; 26
   699C 30                 3390 	.db #0x30	; 48	'0'
   699D 30                 3391 	.db #0x30	; 48	'0'
   699E 30                 3392 	.db #0x30	; 48	'0'
   699F 30                 3393 	.db #0x30	; 48	'0'
   69A0 30                 3394 	.db #0x30	; 48	'0'
   69A1 30                 3395 	.db #0x30	; 48	'0'
   69A2 25                 3396 	.db #0x25	; 37
   69A3 30                 3397 	.db #0x30	; 48	'0'
   69A4 30                 3398 	.db #0x30	; 48	'0'
   69A5 1A                 3399 	.db #0x1A	; 26
   69A6 30                 3400 	.db #0x30	; 48	'0'
   69A7 30                 3401 	.db #0x30	; 48	'0'
   69A8 30                 3402 	.db #0x30	; 48	'0'
   69A9 30                 3403 	.db #0x30	; 48	'0'
   69AA 30                 3404 	.db #0x30	; 48	'0'
   69AB 30                 3405 	.db #0x30	; 48	'0'
   69AC 25                 3406 	.db #0x25	; 37
   69AD 30                 3407 	.db #0x30	; 48	'0'
   69AE 30                 3408 	.db #0x30	; 48	'0'
   69AF 1A                 3409 	.db #0x1A	; 26
   69B0 30                 3410 	.db #0x30	; 48	'0'
   69B1 CC                 3411 	.db #0xCC	; 204
   69B2 30                 3412 	.db #0x30	; 48	'0'
   69B3 30                 3413 	.db #0x30	; 48	'0'
   69B4 64                 3414 	.db #0x64	; 100	'd'
   69B5 98                 3415 	.db #0x98	; 152
   69B6 25                 3416 	.db #0x25	; 37
   69B7 30                 3417 	.db #0x30	; 48	'0'
   69B8 30                 3418 	.db #0x30	; 48	'0'
   69B9 1A                 3419 	.db #0x1A	; 26
   69BA 64                 3420 	.db #0x64	; 100	'd'
   69BB 30                 3421 	.db #0x30	; 48	'0'
   69BC 98                 3422 	.db #0x98	; 152
   69BD 30                 3423 	.db #0x30	; 48	'0'
   69BE 98                 3424 	.db #0x98	; 152
   69BF 30                 3425 	.db #0x30	; 48	'0'
   69C0 25                 3426 	.db #0x25	; 37
   69C1 30                 3427 	.db #0x30	; 48	'0'
   69C2 30                 3428 	.db #0x30	; 48	'0'
   69C3 1A                 3429 	.db #0x1A	; 26
   69C4 64                 3430 	.db #0x64	; 100	'd'
   69C5 30                 3431 	.db #0x30	; 48	'0'
   69C6 98                 3432 	.db #0x98	; 152
   69C7 64                 3433 	.db #0x64	; 100	'd'
   69C8 30                 3434 	.db #0x30	; 48	'0'
   69C9 30                 3435 	.db #0x30	; 48	'0'
   69CA 25                 3436 	.db #0x25	; 37
   69CB 30                 3437 	.db #0x30	; 48	'0'
   69CC 30                 3438 	.db #0x30	; 48	'0'
   69CD 1A                 3439 	.db #0x1A	; 26
   69CE 64                 3440 	.db #0x64	; 100	'd'
   69CF 30                 3441 	.db #0x30	; 48	'0'
   69D0 98                 3442 	.db #0x98	; 152
   69D1 64                 3443 	.db #0x64	; 100	'd'
   69D2 30                 3444 	.db #0x30	; 48	'0'
   69D3 30                 3445 	.db #0x30	; 48	'0'
   69D4 25                 3446 	.db #0x25	; 37
   69D5 30                 3447 	.db #0x30	; 48	'0'
   69D6 30                 3448 	.db #0x30	; 48	'0'
   69D7 1A                 3449 	.db #0x1A	; 26
   69D8 64                 3450 	.db #0x64	; 100	'd'
   69D9 30                 3451 	.db #0x30	; 48	'0'
   69DA 98                 3452 	.db #0x98	; 152
   69DB 64                 3453 	.db #0x64	; 100	'd'
   69DC 30                 3454 	.db #0x30	; 48	'0'
   69DD 30                 3455 	.db #0x30	; 48	'0'
   69DE 25                 3456 	.db #0x25	; 37
   69DF 30                 3457 	.db #0x30	; 48	'0'
   69E0 30                 3458 	.db #0x30	; 48	'0'
   69E1 1A                 3459 	.db #0x1A	; 26
   69E2 64                 3460 	.db #0x64	; 100	'd'
   69E3 30                 3461 	.db #0x30	; 48	'0'
   69E4 98                 3462 	.db #0x98	; 152
   69E5 64                 3463 	.db #0x64	; 100	'd'
   69E6 64                 3464 	.db #0x64	; 100	'd'
   69E7 30                 3465 	.db #0x30	; 48	'0'
   69E8 25                 3466 	.db #0x25	; 37
   69E9 30                 3467 	.db #0x30	; 48	'0'
   69EA 30                 3468 	.db #0x30	; 48	'0'
   69EB 1A                 3469 	.db #0x1A	; 26
   69EC 64                 3470 	.db #0x64	; 100	'd'
   69ED 30                 3471 	.db #0x30	; 48	'0'
   69EE 98                 3472 	.db #0x98	; 152
   69EF 64                 3473 	.db #0x64	; 100	'd'
   69F0 98                 3474 	.db #0x98	; 152
   69F1 98                 3475 	.db #0x98	; 152
   69F2 25                 3476 	.db #0x25	; 37
   69F3 30                 3477 	.db #0x30	; 48	'0'
   69F4 30                 3478 	.db #0x30	; 48	'0'
   69F5 1A                 3479 	.db #0x1A	; 26
   69F6 64                 3480 	.db #0x64	; 100	'd'
   69F7 64                 3481 	.db #0x64	; 100	'd'
   69F8 98                 3482 	.db #0x98	; 152
   69F9 64                 3483 	.db #0x64	; 100	'd'
   69FA 30                 3484 	.db #0x30	; 48	'0'
   69FB 98                 3485 	.db #0x98	; 152
   69FC 25                 3486 	.db #0x25	; 37
   69FD 30                 3487 	.db #0x30	; 48	'0'
   69FE 30                 3488 	.db #0x30	; 48	'0'
   69FF 1A                 3489 	.db #0x1A	; 26
   6A00 30                 3490 	.db #0x30	; 48	'0'
   6A01 98                 3491 	.db #0x98	; 152
   6A02 98                 3492 	.db #0x98	; 152
   6A03 64                 3493 	.db #0x64	; 100	'd'
   6A04 30                 3494 	.db #0x30	; 48	'0'
   6A05 98                 3495 	.db #0x98	; 152
   6A06 25                 3496 	.db #0x25	; 37
   6A07 30                 3497 	.db #0x30	; 48	'0'
   6A08 30                 3498 	.db #0x30	; 48	'0'
   6A09 1A                 3499 	.db #0x1A	; 26
   6A0A 30                 3500 	.db #0x30	; 48	'0'
   6A0B 30                 3501 	.db #0x30	; 48	'0'
   6A0C 98                 3502 	.db #0x98	; 152
   6A0D 64                 3503 	.db #0x64	; 100	'd'
   6A0E 30                 3504 	.db #0x30	; 48	'0'
   6A0F 98                 3505 	.db #0x98	; 152
   6A10 25                 3506 	.db #0x25	; 37
   6A11 30                 3507 	.db #0x30	; 48	'0'
   6A12 30                 3508 	.db #0x30	; 48	'0'
   6A13 1A                 3509 	.db #0x1A	; 26
   6A14 30                 3510 	.db #0x30	; 48	'0'
   6A15 30                 3511 	.db #0x30	; 48	'0'
   6A16 98                 3512 	.db #0x98	; 152
   6A17 64                 3513 	.db #0x64	; 100	'd'
   6A18 30                 3514 	.db #0x30	; 48	'0'
   6A19 98                 3515 	.db #0x98	; 152
   6A1A 25                 3516 	.db #0x25	; 37
   6A1B 30                 3517 	.db #0x30	; 48	'0'
   6A1C 30                 3518 	.db #0x30	; 48	'0'
   6A1D 1A                 3519 	.db #0x1A	; 26
   6A1E 30                 3520 	.db #0x30	; 48	'0'
   6A1F 64                 3521 	.db #0x64	; 100	'd'
   6A20 30                 3522 	.db #0x30	; 48	'0'
   6A21 64                 3523 	.db #0x64	; 100	'd'
   6A22 30                 3524 	.db #0x30	; 48	'0'
   6A23 98                 3525 	.db #0x98	; 152
   6A24 25                 3526 	.db #0x25	; 37
   6A25 30                 3527 	.db #0x30	; 48	'0'
   6A26 30                 3528 	.db #0x30	; 48	'0'
   6A27 1A                 3529 	.db #0x1A	; 26
   6A28 64                 3530 	.db #0x64	; 100	'd'
   6A29 64                 3531 	.db #0x64	; 100	'd'
   6A2A 30                 3532 	.db #0x30	; 48	'0'
   6A2B 30                 3533 	.db #0x30	; 48	'0'
   6A2C CC                 3534 	.db #0xCC	; 204
   6A2D 30                 3535 	.db #0x30	; 48	'0'
   6A2E 25                 3536 	.db #0x25	; 37
   6A2F 30                 3537 	.db #0x30	; 48	'0'
   6A30 30                 3538 	.db #0x30	; 48	'0'
   6A31 1A                 3539 	.db #0x1A	; 26
   6A32 30                 3540 	.db #0x30	; 48	'0'
   6A33 98                 3541 	.db #0x98	; 152
   6A34 30                 3542 	.db #0x30	; 48	'0'
   6A35 30                 3543 	.db #0x30	; 48	'0'
   6A36 CC                 3544 	.db #0xCC	; 204
   6A37 30                 3545 	.db #0x30	; 48	'0'
   6A38 25                 3546 	.db #0x25	; 37
   6A39 30                 3547 	.db #0x30	; 48	'0'
   6A3A 30                 3548 	.db #0x30	; 48	'0'
   6A3B 1A                 3549 	.db #0x1A	; 26
   6A3C 30                 3550 	.db #0x30	; 48	'0'
   6A3D 30                 3551 	.db #0x30	; 48	'0'
   6A3E 30                 3552 	.db #0x30	; 48	'0'
   6A3F 30                 3553 	.db #0x30	; 48	'0'
   6A40 30                 3554 	.db #0x30	; 48	'0'
   6A41 30                 3555 	.db #0x30	; 48	'0'
   6A42 25                 3556 	.db #0x25	; 37
   6A43 30                 3557 	.db #0x30	; 48	'0'
   6A44 30                 3558 	.db #0x30	; 48	'0'
   6A45 1A                 3559 	.db #0x1A	; 26
   6A46 30                 3560 	.db #0x30	; 48	'0'
   6A47 30                 3561 	.db #0x30	; 48	'0'
   6A48 30                 3562 	.db #0x30	; 48	'0'
   6A49 30                 3563 	.db #0x30	; 48	'0'
   6A4A 30                 3564 	.db #0x30	; 48	'0'
   6A4B 30                 3565 	.db #0x30	; 48	'0'
   6A4C 25                 3566 	.db #0x25	; 37
   6A4D 30                 3567 	.db #0x30	; 48	'0'
   6A4E 30                 3568 	.db #0x30	; 48	'0'
   6A4F 1A                 3569 	.db #0x1A	; 26
   6A50 30                 3570 	.db #0x30	; 48	'0'
   6A51 30                 3571 	.db #0x30	; 48	'0'
   6A52 30                 3572 	.db #0x30	; 48	'0'
   6A53 30                 3573 	.db #0x30	; 48	'0'
   6A54 30                 3574 	.db #0x30	; 48	'0'
   6A55 30                 3575 	.db #0x30	; 48	'0'
   6A56 25                 3576 	.db #0x25	; 37
   6A57 30                 3577 	.db #0x30	; 48	'0'
   6A58 30                 3578 	.db #0x30	; 48	'0'
   6A59 1A                 3579 	.db #0x1A	; 26
   6A5A 30                 3580 	.db #0x30	; 48	'0'
   6A5B 30                 3581 	.db #0x30	; 48	'0'
   6A5C 30                 3582 	.db #0x30	; 48	'0'
   6A5D 30                 3583 	.db #0x30	; 48	'0'
   6A5E 30                 3584 	.db #0x30	; 48	'0'
   6A5F 30                 3585 	.db #0x30	; 48	'0'
   6A60 25                 3586 	.db #0x25	; 37
   6A61 30                 3587 	.db #0x30	; 48	'0'
   6A62 30                 3588 	.db #0x30	; 48	'0'
   6A63 1A                 3589 	.db #0x1A	; 26
   6A64 30                 3590 	.db #0x30	; 48	'0'
   6A65 30                 3591 	.db #0x30	; 48	'0'
   6A66 30                 3592 	.db #0x30	; 48	'0'
   6A67 30                 3593 	.db #0x30	; 48	'0'
   6A68 30                 3594 	.db #0x30	; 48	'0'
   6A69 30                 3595 	.db #0x30	; 48	'0'
   6A6A 25                 3596 	.db #0x25	; 37
   6A6B 30                 3597 	.db #0x30	; 48	'0'
   6A6C 30                 3598 	.db #0x30	; 48	'0'
   6A6D 1A                 3599 	.db #0x1A	; 26
   6A6E 30                 3600 	.db #0x30	; 48	'0'
   6A6F 30                 3601 	.db #0x30	; 48	'0'
   6A70 30                 3602 	.db #0x30	; 48	'0'
   6A71 30                 3603 	.db #0x30	; 48	'0'
   6A72 30                 3604 	.db #0x30	; 48	'0'
   6A73 30                 3605 	.db #0x30	; 48	'0'
   6A74 25                 3606 	.db #0x25	; 37
   6A75 30                 3607 	.db #0x30	; 48	'0'
   6A76 30                 3608 	.db #0x30	; 48	'0'
   6A77 1A                 3609 	.db #0x1A	; 26
   6A78 30                 3610 	.db #0x30	; 48	'0'
   6A79 30                 3611 	.db #0x30	; 48	'0'
   6A7A 30                 3612 	.db #0x30	; 48	'0'
   6A7B 30                 3613 	.db #0x30	; 48	'0'
   6A7C 30                 3614 	.db #0x30	; 48	'0'
   6A7D 30                 3615 	.db #0x30	; 48	'0'
   6A7E 25                 3616 	.db #0x25	; 37
   6A7F 30                 3617 	.db #0x30	; 48	'0'
   6A80 30                 3618 	.db #0x30	; 48	'0'
   6A81 0F                 3619 	.db #0x0F	; 15
   6A82 30                 3620 	.db #0x30	; 48	'0'
   6A83 30                 3621 	.db #0x30	; 48	'0'
   6A84 30                 3622 	.db #0x30	; 48	'0'
   6A85 30                 3623 	.db #0x30	; 48	'0'
   6A86 30                 3624 	.db #0x30	; 48	'0'
   6A87 30                 3625 	.db #0x30	; 48	'0'
   6A88 0F                 3626 	.db #0x0F	; 15
   6A89 30                 3627 	.db #0x30	; 48	'0'
   6A8A 30                 3628 	.db #0x30	; 48	'0'
   6A8B 25                 3629 	.db #0x25	; 37
   6A8C 30                 3630 	.db #0x30	; 48	'0'
   6A8D 30                 3631 	.db #0x30	; 48	'0'
   6A8E 30                 3632 	.db #0x30	; 48	'0'
   6A8F 30                 3633 	.db #0x30	; 48	'0'
   6A90 30                 3634 	.db #0x30	; 48	'0'
   6A91 30                 3635 	.db #0x30	; 48	'0'
   6A92 1A                 3636 	.db #0x1A	; 26
   6A93 30                 3637 	.db #0x30	; 48	'0'
   6A94 30                 3638 	.db #0x30	; 48	'0'
   6A95 25                 3639 	.db #0x25	; 37
   6A96 0F                 3640 	.db #0x0F	; 15
   6A97 0F                 3641 	.db #0x0F	; 15
   6A98 0F                 3642 	.db #0x0F	; 15
   6A99 0F                 3643 	.db #0x0F	; 15
   6A9A 0F                 3644 	.db #0x0F	; 15
   6A9B 0F                 3645 	.db #0x0F	; 15
   6A9C 1A                 3646 	.db #0x1A	; 26
   6A9D 30                 3647 	.db #0x30	; 48	'0'
   6A9E F0                 3648 	.db #0xF0	; 240
   6A9F 30                 3649 	.db #0x30	; 48	'0'
   6AA0 30                 3650 	.db #0x30	; 48	'0'
   6AA1 30                 3651 	.db #0x30	; 48	'0'
   6AA2 30                 3652 	.db #0x30	; 48	'0'
   6AA3 30                 3653 	.db #0x30	; 48	'0'
   6AA4 30                 3654 	.db #0x30	; 48	'0'
   6AA5 30                 3655 	.db #0x30	; 48	'0'
   6AA6 30                 3656 	.db #0x30	; 48	'0'
   6AA7 F0                 3657 	.db #0xF0	; 240
   6AA8 F0                 3658 	.db #0xF0	; 240
   6AA9 30                 3659 	.db #0x30	; 48	'0'
   6AAA 30                 3660 	.db #0x30	; 48	'0'
   6AAB 30                 3661 	.db #0x30	; 48	'0'
   6AAC 30                 3662 	.db #0x30	; 48	'0'
   6AAD 30                 3663 	.db #0x30	; 48	'0'
   6AAE 30                 3664 	.db #0x30	; 48	'0'
   6AAF 30                 3665 	.db #0x30	; 48	'0'
   6AB0 30                 3666 	.db #0x30	; 48	'0'
   6AB1 F0                 3667 	.db #0xF0	; 240
   6AB2                    3668 _tile_tiles_09:
   6AB2 F0                 3669 	.db #0xF0	; 240
   6AB3 30                 3670 	.db #0x30	; 48	'0'
   6AB4 30                 3671 	.db #0x30	; 48	'0'
   6AB5 30                 3672 	.db #0x30	; 48	'0'
   6AB6 30                 3673 	.db #0x30	; 48	'0'
   6AB7 30                 3674 	.db #0x30	; 48	'0'
   6AB8 30                 3675 	.db #0x30	; 48	'0'
   6AB9 30                 3676 	.db #0x30	; 48	'0'
   6ABA 30                 3677 	.db #0x30	; 48	'0'
   6ABB F0                 3678 	.db #0xF0	; 240
   6ABC F0                 3679 	.db #0xF0	; 240
   6ABD 30                 3680 	.db #0x30	; 48	'0'
   6ABE 30                 3681 	.db #0x30	; 48	'0'
   6ABF 30                 3682 	.db #0x30	; 48	'0'
   6AC0 30                 3683 	.db #0x30	; 48	'0'
   6AC1 30                 3684 	.db #0x30	; 48	'0'
   6AC2 30                 3685 	.db #0x30	; 48	'0'
   6AC3 30                 3686 	.db #0x30	; 48	'0'
   6AC4 30                 3687 	.db #0x30	; 48	'0'
   6AC5 F0                 3688 	.db #0xF0	; 240
   6AC6 30                 3689 	.db #0x30	; 48	'0'
   6AC7 25                 3690 	.db #0x25	; 37
   6AC8 0F                 3691 	.db #0x0F	; 15
   6AC9 0F                 3692 	.db #0x0F	; 15
   6ACA 0F                 3693 	.db #0x0F	; 15
   6ACB 0F                 3694 	.db #0x0F	; 15
   6ACC 0F                 3695 	.db #0x0F	; 15
   6ACD 0F                 3696 	.db #0x0F	; 15
   6ACE 1A                 3697 	.db #0x1A	; 26
   6ACF 30                 3698 	.db #0x30	; 48	'0'
   6AD0 30                 3699 	.db #0x30	; 48	'0'
   6AD1 25                 3700 	.db #0x25	; 37
   6AD2 30                 3701 	.db #0x30	; 48	'0'
   6AD3 30                 3702 	.db #0x30	; 48	'0'
   6AD4 30                 3703 	.db #0x30	; 48	'0'
   6AD5 30                 3704 	.db #0x30	; 48	'0'
   6AD6 30                 3705 	.db #0x30	; 48	'0'
   6AD7 30                 3706 	.db #0x30	; 48	'0'
   6AD8 1A                 3707 	.db #0x1A	; 26
   6AD9 30                 3708 	.db #0x30	; 48	'0'
   6ADA 30                 3709 	.db #0x30	; 48	'0'
   6ADB 0F                 3710 	.db #0x0F	; 15
   6ADC 30                 3711 	.db #0x30	; 48	'0'
   6ADD 30                 3712 	.db #0x30	; 48	'0'
   6ADE 30                 3713 	.db #0x30	; 48	'0'
   6ADF 30                 3714 	.db #0x30	; 48	'0'
   6AE0 30                 3715 	.db #0x30	; 48	'0'
   6AE1 30                 3716 	.db #0x30	; 48	'0'
   6AE2 0F                 3717 	.db #0x0F	; 15
   6AE3 30                 3718 	.db #0x30	; 48	'0'
   6AE4 30                 3719 	.db #0x30	; 48	'0'
   6AE5 1A                 3720 	.db #0x1A	; 26
   6AE6 30                 3721 	.db #0x30	; 48	'0'
   6AE7 30                 3722 	.db #0x30	; 48	'0'
   6AE8 30                 3723 	.db #0x30	; 48	'0'
   6AE9 30                 3724 	.db #0x30	; 48	'0'
   6AEA 30                 3725 	.db #0x30	; 48	'0'
   6AEB 30                 3726 	.db #0x30	; 48	'0'
   6AEC 25                 3727 	.db #0x25	; 37
   6AED 30                 3728 	.db #0x30	; 48	'0'
   6AEE 30                 3729 	.db #0x30	; 48	'0'
   6AEF 1A                 3730 	.db #0x1A	; 26
   6AF0 30                 3731 	.db #0x30	; 48	'0'
   6AF1 30                 3732 	.db #0x30	; 48	'0'
   6AF2 30                 3733 	.db #0x30	; 48	'0'
   6AF3 30                 3734 	.db #0x30	; 48	'0'
   6AF4 30                 3735 	.db #0x30	; 48	'0'
   6AF5 30                 3736 	.db #0x30	; 48	'0'
   6AF6 25                 3737 	.db #0x25	; 37
   6AF7 30                 3738 	.db #0x30	; 48	'0'
   6AF8 30                 3739 	.db #0x30	; 48	'0'
   6AF9 1A                 3740 	.db #0x1A	; 26
   6AFA 30                 3741 	.db #0x30	; 48	'0'
   6AFB 30                 3742 	.db #0x30	; 48	'0'
   6AFC 30                 3743 	.db #0x30	; 48	'0'
   6AFD 30                 3744 	.db #0x30	; 48	'0'
   6AFE 30                 3745 	.db #0x30	; 48	'0'
   6AFF 30                 3746 	.db #0x30	; 48	'0'
   6B00 25                 3747 	.db #0x25	; 37
   6B01 30                 3748 	.db #0x30	; 48	'0'
   6B02 30                 3749 	.db #0x30	; 48	'0'
   6B03 1A                 3750 	.db #0x1A	; 26
   6B04 30                 3751 	.db #0x30	; 48	'0'
   6B05 30                 3752 	.db #0x30	; 48	'0'
   6B06 30                 3753 	.db #0x30	; 48	'0'
   6B07 30                 3754 	.db #0x30	; 48	'0'
   6B08 30                 3755 	.db #0x30	; 48	'0'
   6B09 30                 3756 	.db #0x30	; 48	'0'
   6B0A 25                 3757 	.db #0x25	; 37
   6B0B 30                 3758 	.db #0x30	; 48	'0'
   6B0C 30                 3759 	.db #0x30	; 48	'0'
   6B0D 1A                 3760 	.db #0x1A	; 26
   6B0E 30                 3761 	.db #0x30	; 48	'0'
   6B0F 30                 3762 	.db #0x30	; 48	'0'
   6B10 30                 3763 	.db #0x30	; 48	'0'
   6B11 30                 3764 	.db #0x30	; 48	'0'
   6B12 30                 3765 	.db #0x30	; 48	'0'
   6B13 30                 3766 	.db #0x30	; 48	'0'
   6B14 25                 3767 	.db #0x25	; 37
   6B15 30                 3768 	.db #0x30	; 48	'0'
   6B16 30                 3769 	.db #0x30	; 48	'0'
   6B17 1A                 3770 	.db #0x1A	; 26
   6B18 30                 3771 	.db #0x30	; 48	'0'
   6B19 30                 3772 	.db #0x30	; 48	'0'
   6B1A 30                 3773 	.db #0x30	; 48	'0'
   6B1B 30                 3774 	.db #0x30	; 48	'0'
   6B1C 30                 3775 	.db #0x30	; 48	'0'
   6B1D 30                 3776 	.db #0x30	; 48	'0'
   6B1E 25                 3777 	.db #0x25	; 37
   6B1F 30                 3778 	.db #0x30	; 48	'0'
   6B20 30                 3779 	.db #0x30	; 48	'0'
   6B21 1A                 3780 	.db #0x1A	; 26
   6B22 30                 3781 	.db #0x30	; 48	'0'
   6B23 30                 3782 	.db #0x30	; 48	'0'
   6B24 30                 3783 	.db #0x30	; 48	'0'
   6B25 30                 3784 	.db #0x30	; 48	'0'
   6B26 30                 3785 	.db #0x30	; 48	'0'
   6B27 30                 3786 	.db #0x30	; 48	'0'
   6B28 25                 3787 	.db #0x25	; 37
   6B29 30                 3788 	.db #0x30	; 48	'0'
   6B2A 30                 3789 	.db #0x30	; 48	'0'
   6B2B 1A                 3790 	.db #0x1A	; 26
   6B2C 30                 3791 	.db #0x30	; 48	'0'
   6B2D 30                 3792 	.db #0x30	; 48	'0'
   6B2E 30                 3793 	.db #0x30	; 48	'0'
   6B2F 30                 3794 	.db #0x30	; 48	'0'
   6B30 30                 3795 	.db #0x30	; 48	'0'
   6B31 30                 3796 	.db #0x30	; 48	'0'
   6B32 25                 3797 	.db #0x25	; 37
   6B33 30                 3798 	.db #0x30	; 48	'0'
   6B34 30                 3799 	.db #0x30	; 48	'0'
   6B35 1A                 3800 	.db #0x1A	; 26
   6B36 30                 3801 	.db #0x30	; 48	'0'
   6B37 30                 3802 	.db #0x30	; 48	'0'
   6B38 30                 3803 	.db #0x30	; 48	'0'
   6B39 30                 3804 	.db #0x30	; 48	'0'
   6B3A 30                 3805 	.db #0x30	; 48	'0'
   6B3B 30                 3806 	.db #0x30	; 48	'0'
   6B3C 25                 3807 	.db #0x25	; 37
   6B3D 30                 3808 	.db #0x30	; 48	'0'
   6B3E 30                 3809 	.db #0x30	; 48	'0'
   6B3F 1A                 3810 	.db #0x1A	; 26
   6B40 30                 3811 	.db #0x30	; 48	'0'
   6B41 30                 3812 	.db #0x30	; 48	'0'
   6B42 30                 3813 	.db #0x30	; 48	'0'
   6B43 30                 3814 	.db #0x30	; 48	'0'
   6B44 30                 3815 	.db #0x30	; 48	'0'
   6B45 30                 3816 	.db #0x30	; 48	'0'
   6B46 25                 3817 	.db #0x25	; 37
   6B47 30                 3818 	.db #0x30	; 48	'0'
   6B48 30                 3819 	.db #0x30	; 48	'0'
   6B49 1A                 3820 	.db #0x1A	; 26
   6B4A 64                 3821 	.db #0x64	; 100	'd'
   6B4B 30                 3822 	.db #0x30	; 48	'0'
   6B4C 64                 3823 	.db #0x64	; 100	'd'
   6B4D 98                 3824 	.db #0x98	; 152
   6B4E 30                 3825 	.db #0x30	; 48	'0'
   6B4F 98                 3826 	.db #0x98	; 152
   6B50 25                 3827 	.db #0x25	; 37
   6B51 30                 3828 	.db #0x30	; 48	'0'
   6B52 30                 3829 	.db #0x30	; 48	'0'
   6B53 1A                 3830 	.db #0x1A	; 26
   6B54 CC                 3831 	.db #0xCC	; 204
   6B55 30                 3832 	.db #0x30	; 48	'0'
   6B56 98                 3833 	.db #0x98	; 152
   6B57 64                 3834 	.db #0x64	; 100	'd'
   6B58 64                 3835 	.db #0x64	; 100	'd'
   6B59 64                 3836 	.db #0x64	; 100	'd'
   6B5A 25                 3837 	.db #0x25	; 37
   6B5B 30                 3838 	.db #0x30	; 48	'0'
   6B5C 30                 3839 	.db #0x30	; 48	'0'
   6B5D 1A                 3840 	.db #0x1A	; 26
   6B5E 64                 3841 	.db #0x64	; 100	'd'
   6B5F 30                 3842 	.db #0x30	; 48	'0'
   6B60 98                 3843 	.db #0x98	; 152
   6B61 64                 3844 	.db #0x64	; 100	'd'
   6B62 64                 3845 	.db #0x64	; 100	'd'
   6B63 64                 3846 	.db #0x64	; 100	'd'
   6B64 25                 3847 	.db #0x25	; 37
   6B65 30                 3848 	.db #0x30	; 48	'0'
   6B66 30                 3849 	.db #0x30	; 48	'0'
   6B67 1A                 3850 	.db #0x1A	; 26
   6B68 64                 3851 	.db #0x64	; 100	'd'
   6B69 30                 3852 	.db #0x30	; 48	'0'
   6B6A 98                 3853 	.db #0x98	; 152
   6B6B 64                 3854 	.db #0x64	; 100	'd'
   6B6C 30                 3855 	.db #0x30	; 48	'0'
   6B6D 64                 3856 	.db #0x64	; 100	'd'
   6B6E 25                 3857 	.db #0x25	; 37
   6B6F 30                 3858 	.db #0x30	; 48	'0'
   6B70 30                 3859 	.db #0x30	; 48	'0'
   6B71 1A                 3860 	.db #0x1A	; 26
   6B72 64                 3861 	.db #0x64	; 100	'd'
   6B73 30                 3862 	.db #0x30	; 48	'0'
   6B74 98                 3863 	.db #0x98	; 152
   6B75 64                 3864 	.db #0x64	; 100	'd'
   6B76 30                 3865 	.db #0x30	; 48	'0'
   6B77 64                 3866 	.db #0x64	; 100	'd'
   6B78 25                 3867 	.db #0x25	; 37
   6B79 30                 3868 	.db #0x30	; 48	'0'
   6B7A 30                 3869 	.db #0x30	; 48	'0'
   6B7B 1A                 3870 	.db #0x1A	; 26
   6B7C 64                 3871 	.db #0x64	; 100	'd'
   6B7D 30                 3872 	.db #0x30	; 48	'0'
   6B7E 98                 3873 	.db #0x98	; 152
   6B7F 64                 3874 	.db #0x64	; 100	'd'
   6B80 30                 3875 	.db #0x30	; 48	'0'
   6B81 98                 3876 	.db #0x98	; 152
   6B82 25                 3877 	.db #0x25	; 37
   6B83 30                 3878 	.db #0x30	; 48	'0'
   6B84 30                 3879 	.db #0x30	; 48	'0'
   6B85 1A                 3880 	.db #0x1A	; 26
   6B86 64                 3881 	.db #0x64	; 100	'd'
   6B87 30                 3882 	.db #0x30	; 48	'0'
   6B88 98                 3883 	.db #0x98	; 152
   6B89 64                 3884 	.db #0x64	; 100	'd'
   6B8A 30                 3885 	.db #0x30	; 48	'0'
   6B8B 98                 3886 	.db #0x98	; 152
   6B8C 25                 3887 	.db #0x25	; 37
   6B8D 30                 3888 	.db #0x30	; 48	'0'
   6B8E 30                 3889 	.db #0x30	; 48	'0'
   6B8F 1A                 3890 	.db #0x1A	; 26
   6B90 64                 3891 	.db #0x64	; 100	'd'
   6B91 30                 3892 	.db #0x30	; 48	'0'
   6B92 64                 3893 	.db #0x64	; 100	'd'
   6B93 CC                 3894 	.db #0xCC	; 204
   6B94 30                 3895 	.db #0x30	; 48	'0'
   6B95 98                 3896 	.db #0x98	; 152
   6B96 25                 3897 	.db #0x25	; 37
   6B97 30                 3898 	.db #0x30	; 48	'0'
   6B98 30                 3899 	.db #0x30	; 48	'0'
   6B99 1A                 3900 	.db #0x1A	; 26
   6B9A 64                 3901 	.db #0x64	; 100	'd'
   6B9B 30                 3902 	.db #0x30	; 48	'0'
   6B9C 30                 3903 	.db #0x30	; 48	'0'
   6B9D 64                 3904 	.db #0x64	; 100	'd'
   6B9E 64                 3905 	.db #0x64	; 100	'd'
   6B9F 30                 3906 	.db #0x30	; 48	'0'
   6BA0 25                 3907 	.db #0x25	; 37
   6BA1 30                 3908 	.db #0x30	; 48	'0'
   6BA2 30                 3909 	.db #0x30	; 48	'0'
   6BA3 1A                 3910 	.db #0x1A	; 26
   6BA4 64                 3911 	.db #0x64	; 100	'd'
   6BA5 30                 3912 	.db #0x30	; 48	'0'
   6BA6 30                 3913 	.db #0x30	; 48	'0'
   6BA7 64                 3914 	.db #0x64	; 100	'd'
   6BA8 64                 3915 	.db #0x64	; 100	'd'
   6BA9 30                 3916 	.db #0x30	; 48	'0'
   6BAA 25                 3917 	.db #0x25	; 37
   6BAB 30                 3918 	.db #0x30	; 48	'0'
   6BAC 30                 3919 	.db #0x30	; 48	'0'
   6BAD 1A                 3920 	.db #0x1A	; 26
   6BAE 64                 3921 	.db #0x64	; 100	'd'
   6BAF 30                 3922 	.db #0x30	; 48	'0'
   6BB0 98                 3923 	.db #0x98	; 152
   6BB1 CC                 3924 	.db #0xCC	; 204
   6BB2 64                 3925 	.db #0x64	; 100	'd'
   6BB3 30                 3926 	.db #0x30	; 48	'0'
   6BB4 25                 3927 	.db #0x25	; 37
   6BB5 30                 3928 	.db #0x30	; 48	'0'
   6BB6 30                 3929 	.db #0x30	; 48	'0'
   6BB7 1A                 3930 	.db #0x1A	; 26
   6BB8 CC                 3931 	.db #0xCC	; 204
   6BB9 98                 3932 	.db #0x98	; 152
   6BBA 64                 3933 	.db #0x64	; 100	'd'
   6BBB 98                 3934 	.db #0x98	; 152
   6BBC 64                 3935 	.db #0x64	; 100	'd'
   6BBD CC                 3936 	.db #0xCC	; 204
   6BBE 25                 3937 	.db #0x25	; 37
   6BBF 30                 3938 	.db #0x30	; 48	'0'
   6BC0 30                 3939 	.db #0x30	; 48	'0'
   6BC1 1A                 3940 	.db #0x1A	; 26
   6BC2 30                 3941 	.db #0x30	; 48	'0'
   6BC3 30                 3942 	.db #0x30	; 48	'0'
   6BC4 30                 3943 	.db #0x30	; 48	'0'
   6BC5 30                 3944 	.db #0x30	; 48	'0'
   6BC6 30                 3945 	.db #0x30	; 48	'0'
   6BC7 30                 3946 	.db #0x30	; 48	'0'
   6BC8 25                 3947 	.db #0x25	; 37
   6BC9 30                 3948 	.db #0x30	; 48	'0'
   6BCA 30                 3949 	.db #0x30	; 48	'0'
   6BCB 1A                 3950 	.db #0x1A	; 26
   6BCC 30                 3951 	.db #0x30	; 48	'0'
   6BCD 30                 3952 	.db #0x30	; 48	'0'
   6BCE 30                 3953 	.db #0x30	; 48	'0'
   6BCF 30                 3954 	.db #0x30	; 48	'0'
   6BD0 30                 3955 	.db #0x30	; 48	'0'
   6BD1 30                 3956 	.db #0x30	; 48	'0'
   6BD2 25                 3957 	.db #0x25	; 37
   6BD3 30                 3958 	.db #0x30	; 48	'0'
   6BD4 30                 3959 	.db #0x30	; 48	'0'
   6BD5 1A                 3960 	.db #0x1A	; 26
   6BD6 30                 3961 	.db #0x30	; 48	'0'
   6BD7 30                 3962 	.db #0x30	; 48	'0'
   6BD8 30                 3963 	.db #0x30	; 48	'0'
   6BD9 30                 3964 	.db #0x30	; 48	'0'
   6BDA 30                 3965 	.db #0x30	; 48	'0'
   6BDB 30                 3966 	.db #0x30	; 48	'0'
   6BDC 25                 3967 	.db #0x25	; 37
   6BDD 30                 3968 	.db #0x30	; 48	'0'
   6BDE 30                 3969 	.db #0x30	; 48	'0'
   6BDF 1A                 3970 	.db #0x1A	; 26
   6BE0 30                 3971 	.db #0x30	; 48	'0'
   6BE1 30                 3972 	.db #0x30	; 48	'0'
   6BE2 30                 3973 	.db #0x30	; 48	'0'
   6BE3 30                 3974 	.db #0x30	; 48	'0'
   6BE4 30                 3975 	.db #0x30	; 48	'0'
   6BE5 30                 3976 	.db #0x30	; 48	'0'
   6BE6 25                 3977 	.db #0x25	; 37
   6BE7 30                 3978 	.db #0x30	; 48	'0'
   6BE8 30                 3979 	.db #0x30	; 48	'0'
   6BE9 1A                 3980 	.db #0x1A	; 26
   6BEA 30                 3981 	.db #0x30	; 48	'0'
   6BEB 30                 3982 	.db #0x30	; 48	'0'
   6BEC 30                 3983 	.db #0x30	; 48	'0'
   6BED 30                 3984 	.db #0x30	; 48	'0'
   6BEE 30                 3985 	.db #0x30	; 48	'0'
   6BEF 30                 3986 	.db #0x30	; 48	'0'
   6BF0 25                 3987 	.db #0x25	; 37
   6BF1 30                 3988 	.db #0x30	; 48	'0'
   6BF2 30                 3989 	.db #0x30	; 48	'0'
   6BF3 1A                 3990 	.db #0x1A	; 26
   6BF4 30                 3991 	.db #0x30	; 48	'0'
   6BF5 30                 3992 	.db #0x30	; 48	'0'
   6BF6 30                 3993 	.db #0x30	; 48	'0'
   6BF7 30                 3994 	.db #0x30	; 48	'0'
   6BF8 30                 3995 	.db #0x30	; 48	'0'
   6BF9 30                 3996 	.db #0x30	; 48	'0'
   6BFA 25                 3997 	.db #0x25	; 37
   6BFB 30                 3998 	.db #0x30	; 48	'0'
   6BFC 30                 3999 	.db #0x30	; 48	'0'
   6BFD 1A                 4000 	.db #0x1A	; 26
   6BFE 30                 4001 	.db #0x30	; 48	'0'
   6BFF 30                 4002 	.db #0x30	; 48	'0'
   6C00 30                 4003 	.db #0x30	; 48	'0'
   6C01 30                 4004 	.db #0x30	; 48	'0'
   6C02 30                 4005 	.db #0x30	; 48	'0'
   6C03 30                 4006 	.db #0x30	; 48	'0'
   6C04 25                 4007 	.db #0x25	; 37
   6C05 30                 4008 	.db #0x30	; 48	'0'
   6C06 30                 4009 	.db #0x30	; 48	'0'
   6C07 1A                 4010 	.db #0x1A	; 26
   6C08 30                 4011 	.db #0x30	; 48	'0'
   6C09 30                 4012 	.db #0x30	; 48	'0'
   6C0A 30                 4013 	.db #0x30	; 48	'0'
   6C0B 30                 4014 	.db #0x30	; 48	'0'
   6C0C 30                 4015 	.db #0x30	; 48	'0'
   6C0D 30                 4016 	.db #0x30	; 48	'0'
   6C0E 25                 4017 	.db #0x25	; 37
   6C0F 30                 4018 	.db #0x30	; 48	'0'
   6C10 30                 4019 	.db #0x30	; 48	'0'
   6C11 0F                 4020 	.db #0x0F	; 15
   6C12 30                 4021 	.db #0x30	; 48	'0'
   6C13 30                 4022 	.db #0x30	; 48	'0'
   6C14 30                 4023 	.db #0x30	; 48	'0'
   6C15 30                 4024 	.db #0x30	; 48	'0'
   6C16 30                 4025 	.db #0x30	; 48	'0'
   6C17 30                 4026 	.db #0x30	; 48	'0'
   6C18 0F                 4027 	.db #0x0F	; 15
   6C19 30                 4028 	.db #0x30	; 48	'0'
   6C1A 30                 4029 	.db #0x30	; 48	'0'
   6C1B 25                 4030 	.db #0x25	; 37
   6C1C 30                 4031 	.db #0x30	; 48	'0'
   6C1D 30                 4032 	.db #0x30	; 48	'0'
   6C1E 30                 4033 	.db #0x30	; 48	'0'
   6C1F 30                 4034 	.db #0x30	; 48	'0'
   6C20 30                 4035 	.db #0x30	; 48	'0'
   6C21 30                 4036 	.db #0x30	; 48	'0'
   6C22 1A                 4037 	.db #0x1A	; 26
   6C23 30                 4038 	.db #0x30	; 48	'0'
   6C24 30                 4039 	.db #0x30	; 48	'0'
   6C25 25                 4040 	.db #0x25	; 37
   6C26 0F                 4041 	.db #0x0F	; 15
   6C27 0F                 4042 	.db #0x0F	; 15
   6C28 0F                 4043 	.db #0x0F	; 15
   6C29 0F                 4044 	.db #0x0F	; 15
   6C2A 0F                 4045 	.db #0x0F	; 15
   6C2B 0F                 4046 	.db #0x0F	; 15
   6C2C 1A                 4047 	.db #0x1A	; 26
   6C2D 30                 4048 	.db #0x30	; 48	'0'
   6C2E F0                 4049 	.db #0xF0	; 240
   6C2F 30                 4050 	.db #0x30	; 48	'0'
   6C30 30                 4051 	.db #0x30	; 48	'0'
   6C31 30                 4052 	.db #0x30	; 48	'0'
   6C32 30                 4053 	.db #0x30	; 48	'0'
   6C33 30                 4054 	.db #0x30	; 48	'0'
   6C34 30                 4055 	.db #0x30	; 48	'0'
   6C35 30                 4056 	.db #0x30	; 48	'0'
   6C36 30                 4057 	.db #0x30	; 48	'0'
   6C37 F0                 4058 	.db #0xF0	; 240
   6C38 F0                 4059 	.db #0xF0	; 240
   6C39 30                 4060 	.db #0x30	; 48	'0'
   6C3A 30                 4061 	.db #0x30	; 48	'0'
   6C3B 30                 4062 	.db #0x30	; 48	'0'
   6C3C 30                 4063 	.db #0x30	; 48	'0'
   6C3D 30                 4064 	.db #0x30	; 48	'0'
   6C3E 30                 4065 	.db #0x30	; 48	'0'
   6C3F 30                 4066 	.db #0x30	; 48	'0'
   6C40 30                 4067 	.db #0x30	; 48	'0'
   6C41 F0                 4068 	.db #0xF0	; 240
   6C42                    4069 _tile_tiles_10:
   6C42 F0                 4070 	.db #0xF0	; 240
   6C43 30                 4071 	.db #0x30	; 48	'0'
   6C44 30                 4072 	.db #0x30	; 48	'0'
   6C45 30                 4073 	.db #0x30	; 48	'0'
   6C46 30                 4074 	.db #0x30	; 48	'0'
   6C47 30                 4075 	.db #0x30	; 48	'0'
   6C48 30                 4076 	.db #0x30	; 48	'0'
   6C49 30                 4077 	.db #0x30	; 48	'0'
   6C4A 30                 4078 	.db #0x30	; 48	'0'
   6C4B F0                 4079 	.db #0xF0	; 240
   6C4C F0                 4080 	.db #0xF0	; 240
   6C4D 30                 4081 	.db #0x30	; 48	'0'
   6C4E 30                 4082 	.db #0x30	; 48	'0'
   6C4F 30                 4083 	.db #0x30	; 48	'0'
   6C50 30                 4084 	.db #0x30	; 48	'0'
   6C51 30                 4085 	.db #0x30	; 48	'0'
   6C52 30                 4086 	.db #0x30	; 48	'0'
   6C53 30                 4087 	.db #0x30	; 48	'0'
   6C54 30                 4088 	.db #0x30	; 48	'0'
   6C55 F0                 4089 	.db #0xF0	; 240
   6C56 30                 4090 	.db #0x30	; 48	'0'
   6C57 25                 4091 	.db #0x25	; 37
   6C58 0F                 4092 	.db #0x0F	; 15
   6C59 0F                 4093 	.db #0x0F	; 15
   6C5A 0F                 4094 	.db #0x0F	; 15
   6C5B 0F                 4095 	.db #0x0F	; 15
   6C5C 0F                 4096 	.db #0x0F	; 15
   6C5D 0F                 4097 	.db #0x0F	; 15
   6C5E 1A                 4098 	.db #0x1A	; 26
   6C5F 30                 4099 	.db #0x30	; 48	'0'
   6C60 30                 4100 	.db #0x30	; 48	'0'
   6C61 25                 4101 	.db #0x25	; 37
   6C62 30                 4102 	.db #0x30	; 48	'0'
   6C63 30                 4103 	.db #0x30	; 48	'0'
   6C64 30                 4104 	.db #0x30	; 48	'0'
   6C65 30                 4105 	.db #0x30	; 48	'0'
   6C66 30                 4106 	.db #0x30	; 48	'0'
   6C67 30                 4107 	.db #0x30	; 48	'0'
   6C68 1A                 4108 	.db #0x1A	; 26
   6C69 30                 4109 	.db #0x30	; 48	'0'
   6C6A 30                 4110 	.db #0x30	; 48	'0'
   6C6B 0F                 4111 	.db #0x0F	; 15
   6C6C 30                 4112 	.db #0x30	; 48	'0'
   6C6D 30                 4113 	.db #0x30	; 48	'0'
   6C6E 30                 4114 	.db #0x30	; 48	'0'
   6C6F 30                 4115 	.db #0x30	; 48	'0'
   6C70 30                 4116 	.db #0x30	; 48	'0'
   6C71 30                 4117 	.db #0x30	; 48	'0'
   6C72 0F                 4118 	.db #0x0F	; 15
   6C73 30                 4119 	.db #0x30	; 48	'0'
   6C74 30                 4120 	.db #0x30	; 48	'0'
   6C75 1A                 4121 	.db #0x1A	; 26
   6C76 30                 4122 	.db #0x30	; 48	'0'
   6C77 30                 4123 	.db #0x30	; 48	'0'
   6C78 30                 4124 	.db #0x30	; 48	'0'
   6C79 30                 4125 	.db #0x30	; 48	'0'
   6C7A 30                 4126 	.db #0x30	; 48	'0'
   6C7B 30                 4127 	.db #0x30	; 48	'0'
   6C7C 25                 4128 	.db #0x25	; 37
   6C7D 30                 4129 	.db #0x30	; 48	'0'
   6C7E 30                 4130 	.db #0x30	; 48	'0'
   6C7F 1A                 4131 	.db #0x1A	; 26
   6C80 30                 4132 	.db #0x30	; 48	'0'
   6C81 30                 4133 	.db #0x30	; 48	'0'
   6C82 30                 4134 	.db #0x30	; 48	'0'
   6C83 30                 4135 	.db #0x30	; 48	'0'
   6C84 30                 4136 	.db #0x30	; 48	'0'
   6C85 30                 4137 	.db #0x30	; 48	'0'
   6C86 25                 4138 	.db #0x25	; 37
   6C87 30                 4139 	.db #0x30	; 48	'0'
   6C88 30                 4140 	.db #0x30	; 48	'0'
   6C89 1A                 4141 	.db #0x1A	; 26
   6C8A 30                 4142 	.db #0x30	; 48	'0'
   6C8B 30                 4143 	.db #0x30	; 48	'0'
   6C8C 30                 4144 	.db #0x30	; 48	'0'
   6C8D 30                 4145 	.db #0x30	; 48	'0'
   6C8E 30                 4146 	.db #0x30	; 48	'0'
   6C8F 30                 4147 	.db #0x30	; 48	'0'
   6C90 25                 4148 	.db #0x25	; 37
   6C91 30                 4149 	.db #0x30	; 48	'0'
   6C92 30                 4150 	.db #0x30	; 48	'0'
   6C93 1A                 4151 	.db #0x1A	; 26
   6C94 30                 4152 	.db #0x30	; 48	'0'
   6C95 30                 4153 	.db #0x30	; 48	'0'
   6C96 30                 4154 	.db #0x30	; 48	'0'
   6C97 30                 4155 	.db #0x30	; 48	'0'
   6C98 30                 4156 	.db #0x30	; 48	'0'
   6C99 30                 4157 	.db #0x30	; 48	'0'
   6C9A 25                 4158 	.db #0x25	; 37
   6C9B 30                 4159 	.db #0x30	; 48	'0'
   6C9C 30                 4160 	.db #0x30	; 48	'0'
   6C9D 1A                 4161 	.db #0x1A	; 26
   6C9E 30                 4162 	.db #0x30	; 48	'0'
   6C9F 30                 4163 	.db #0x30	; 48	'0'
   6CA0 30                 4164 	.db #0x30	; 48	'0'
   6CA1 30                 4165 	.db #0x30	; 48	'0'
   6CA2 30                 4166 	.db #0x30	; 48	'0'
   6CA3 30                 4167 	.db #0x30	; 48	'0'
   6CA4 25                 4168 	.db #0x25	; 37
   6CA5 30                 4169 	.db #0x30	; 48	'0'
   6CA6 30                 4170 	.db #0x30	; 48	'0'
   6CA7 1A                 4171 	.db #0x1A	; 26
   6CA8 30                 4172 	.db #0x30	; 48	'0'
   6CA9 30                 4173 	.db #0x30	; 48	'0'
   6CAA 30                 4174 	.db #0x30	; 48	'0'
   6CAB 30                 4175 	.db #0x30	; 48	'0'
   6CAC 30                 4176 	.db #0x30	; 48	'0'
   6CAD 30                 4177 	.db #0x30	; 48	'0'
   6CAE 25                 4178 	.db #0x25	; 37
   6CAF 30                 4179 	.db #0x30	; 48	'0'
   6CB0 30                 4180 	.db #0x30	; 48	'0'
   6CB1 1A                 4181 	.db #0x1A	; 26
   6CB2 30                 4182 	.db #0x30	; 48	'0'
   6CB3 30                 4183 	.db #0x30	; 48	'0'
   6CB4 30                 4184 	.db #0x30	; 48	'0'
   6CB5 30                 4185 	.db #0x30	; 48	'0'
   6CB6 30                 4186 	.db #0x30	; 48	'0'
   6CB7 30                 4187 	.db #0x30	; 48	'0'
   6CB8 25                 4188 	.db #0x25	; 37
   6CB9 30                 4189 	.db #0x30	; 48	'0'
   6CBA 30                 4190 	.db #0x30	; 48	'0'
   6CBB 1A                 4191 	.db #0x1A	; 26
   6CBC 30                 4192 	.db #0x30	; 48	'0'
   6CBD 30                 4193 	.db #0x30	; 48	'0'
   6CBE 30                 4194 	.db #0x30	; 48	'0'
   6CBF 30                 4195 	.db #0x30	; 48	'0'
   6CC0 30                 4196 	.db #0x30	; 48	'0'
   6CC1 30                 4197 	.db #0x30	; 48	'0'
   6CC2 25                 4198 	.db #0x25	; 37
   6CC3 30                 4199 	.db #0x30	; 48	'0'
   6CC4 30                 4200 	.db #0x30	; 48	'0'
   6CC5 1A                 4201 	.db #0x1A	; 26
   6CC6 30                 4202 	.db #0x30	; 48	'0'
   6CC7 30                 4203 	.db #0x30	; 48	'0'
   6CC8 30                 4204 	.db #0x30	; 48	'0'
   6CC9 30                 4205 	.db #0x30	; 48	'0'
   6CCA 30                 4206 	.db #0x30	; 48	'0'
   6CCB 30                 4207 	.db #0x30	; 48	'0'
   6CCC 25                 4208 	.db #0x25	; 37
   6CCD 30                 4209 	.db #0x30	; 48	'0'
   6CCE 30                 4210 	.db #0x30	; 48	'0'
   6CCF 1A                 4211 	.db #0x1A	; 26
   6CD0 30                 4212 	.db #0x30	; 48	'0'
   6CD1 30                 4213 	.db #0x30	; 48	'0'
   6CD2 30                 4214 	.db #0x30	; 48	'0'
   6CD3 30                 4215 	.db #0x30	; 48	'0'
   6CD4 30                 4216 	.db #0x30	; 48	'0'
   6CD5 30                 4217 	.db #0x30	; 48	'0'
   6CD6 25                 4218 	.db #0x25	; 37
   6CD7 30                 4219 	.db #0x30	; 48	'0'
   6CD8 30                 4220 	.db #0x30	; 48	'0'
   6CD9 1A                 4221 	.db #0x1A	; 26
   6CDA CC                 4222 	.db #0xCC	; 204
   6CDB 30                 4223 	.db #0x30	; 48	'0'
   6CDC 64                 4224 	.db #0x64	; 100	'd'
   6CDD 98                 4225 	.db #0x98	; 152
   6CDE 30                 4226 	.db #0x30	; 48	'0'
   6CDF 64                 4227 	.db #0x64	; 100	'd'
   6CE0 25                 4228 	.db #0x25	; 37
   6CE1 30                 4229 	.db #0x30	; 48	'0'
   6CE2 30                 4230 	.db #0x30	; 48	'0'
   6CE3 4E                 4231 	.db #0x4E	; 78	'N'
   6CE4 30                 4232 	.db #0x30	; 48	'0'
   6CE5 98                 4233 	.db #0x98	; 152
   6CE6 98                 4234 	.db #0x98	; 152
   6CE7 64                 4235 	.db #0x64	; 100	'd'
   6CE8 30                 4236 	.db #0x30	; 48	'0'
   6CE9 CC                 4237 	.db #0xCC	; 204
   6CEA 25                 4238 	.db #0x25	; 37
   6CEB 30                 4239 	.db #0x30	; 48	'0'
   6CEC 30                 4240 	.db #0x30	; 48	'0'
   6CED 4E                 4241 	.db #0x4E	; 78	'N'
   6CEE 30                 4242 	.db #0x30	; 48	'0'
   6CEF 98                 4243 	.db #0x98	; 152
   6CF0 98                 4244 	.db #0x98	; 152
   6CF1 64                 4245 	.db #0x64	; 100	'd'
   6CF2 30                 4246 	.db #0x30	; 48	'0'
   6CF3 CC                 4247 	.db #0xCC	; 204
   6CF4 25                 4248 	.db #0x25	; 37
   6CF5 30                 4249 	.db #0x30	; 48	'0'
   6CF6 30                 4250 	.db #0x30	; 48	'0'
   6CF7 1A                 4251 	.db #0x1A	; 26
   6CF8 30                 4252 	.db #0x30	; 48	'0'
   6CF9 98                 4253 	.db #0x98	; 152
   6CFA 98                 4254 	.db #0x98	; 152
   6CFB 64                 4255 	.db #0x64	; 100	'd'
   6CFC 64                 4256 	.db #0x64	; 100	'd'
   6CFD 64                 4257 	.db #0x64	; 100	'd'
   6CFE 25                 4258 	.db #0x25	; 37
   6CFF 30                 4259 	.db #0x30	; 48	'0'
   6D00 30                 4260 	.db #0x30	; 48	'0'
   6D01 1A                 4261 	.db #0x1A	; 26
   6D02 30                 4262 	.db #0x30	; 48	'0'
   6D03 98                 4263 	.db #0x98	; 152
   6D04 98                 4264 	.db #0x98	; 152
   6D05 64                 4265 	.db #0x64	; 100	'd'
   6D06 64                 4266 	.db #0x64	; 100	'd'
   6D07 64                 4267 	.db #0x64	; 100	'd'
   6D08 25                 4268 	.db #0x25	; 37
   6D09 30                 4269 	.db #0x30	; 48	'0'
   6D0A 30                 4270 	.db #0x30	; 48	'0'
   6D0B 1A                 4271 	.db #0x1A	; 26
   6D0C 64                 4272 	.db #0x64	; 100	'd'
   6D0D 30                 4273 	.db #0x30	; 48	'0'
   6D0E 98                 4274 	.db #0x98	; 152
   6D0F 64                 4275 	.db #0x64	; 100	'd'
   6D10 64                 4276 	.db #0x64	; 100	'd'
   6D11 64                 4277 	.db #0x64	; 100	'd'
   6D12 25                 4278 	.db #0x25	; 37
   6D13 30                 4279 	.db #0x30	; 48	'0'
   6D14 30                 4280 	.db #0x30	; 48	'0'
   6D15 1A                 4281 	.db #0x1A	; 26
   6D16 30                 4282 	.db #0x30	; 48	'0'
   6D17 98                 4283 	.db #0x98	; 152
   6D18 64                 4284 	.db #0x64	; 100	'd'
   6D19 98                 4285 	.db #0x98	; 152
   6D1A 64                 4286 	.db #0x64	; 100	'd'
   6D1B 64                 4287 	.db #0x64	; 100	'd'
   6D1C 25                 4288 	.db #0x25	; 37
   6D1D 30                 4289 	.db #0x30	; 48	'0'
   6D1E 30                 4290 	.db #0x30	; 48	'0'
   6D1F 1A                 4291 	.db #0x1A	; 26
   6D20 30                 4292 	.db #0x30	; 48	'0'
   6D21 98                 4293 	.db #0x98	; 152
   6D22 98                 4294 	.db #0x98	; 152
   6D23 64                 4295 	.db #0x64	; 100	'd'
   6D24 64                 4296 	.db #0x64	; 100	'd'
   6D25 64                 4297 	.db #0x64	; 100	'd'
   6D26 25                 4298 	.db #0x25	; 37
   6D27 30                 4299 	.db #0x30	; 48	'0'
   6D28 30                 4300 	.db #0x30	; 48	'0'
   6D29 1A                 4301 	.db #0x1A	; 26
   6D2A 30                 4302 	.db #0x30	; 48	'0'
   6D2B 98                 4303 	.db #0x98	; 152
   6D2C 98                 4304 	.db #0x98	; 152
   6D2D 64                 4305 	.db #0x64	; 100	'd'
   6D2E 64                 4306 	.db #0x64	; 100	'd'
   6D2F CC                 4307 	.db #0xCC	; 204
   6D30 8D                 4308 	.db #0x8D	; 141
   6D31 30                 4309 	.db #0x30	; 48	'0'
   6D32 30                 4310 	.db #0x30	; 48	'0'
   6D33 4E                 4311 	.db #0x4E	; 78	'N'
   6D34 30                 4312 	.db #0x30	; 48	'0'
   6D35 98                 4313 	.db #0x98	; 152
   6D36 98                 4314 	.db #0x98	; 152
   6D37 64                 4315 	.db #0x64	; 100	'd'
   6D38 30                 4316 	.db #0x30	; 48	'0'
   6D39 64                 4317 	.db #0x64	; 100	'd'
   6D3A 25                 4318 	.db #0x25	; 37
   6D3B 30                 4319 	.db #0x30	; 48	'0'
   6D3C 30                 4320 	.db #0x30	; 48	'0'
   6D3D 4E                 4321 	.db #0x4E	; 78	'N'
   6D3E 30                 4322 	.db #0x30	; 48	'0'
   6D3F 98                 4323 	.db #0x98	; 152
   6D40 98                 4324 	.db #0x98	; 152
   6D41 64                 4325 	.db #0x64	; 100	'd'
   6D42 30                 4326 	.db #0x30	; 48	'0'
   6D43 64                 4327 	.db #0x64	; 100	'd'
   6D44 25                 4328 	.db #0x25	; 37
   6D45 30                 4329 	.db #0x30	; 48	'0'
   6D46 30                 4330 	.db #0x30	; 48	'0'
   6D47 1A                 4331 	.db #0x1A	; 26
   6D48 CC                 4332 	.db #0xCC	; 204
   6D49 30                 4333 	.db #0x30	; 48	'0'
   6D4A 64                 4334 	.db #0x64	; 100	'd'
   6D4B 98                 4335 	.db #0x98	; 152
   6D4C 30                 4336 	.db #0x30	; 48	'0'
   6D4D 64                 4337 	.db #0x64	; 100	'd'
   6D4E 25                 4338 	.db #0x25	; 37
   6D4F 30                 4339 	.db #0x30	; 48	'0'
   6D50 30                 4340 	.db #0x30	; 48	'0'
   6D51 1A                 4341 	.db #0x1A	; 26
   6D52 30                 4342 	.db #0x30	; 48	'0'
   6D53 30                 4343 	.db #0x30	; 48	'0'
   6D54 30                 4344 	.db #0x30	; 48	'0'
   6D55 30                 4345 	.db #0x30	; 48	'0'
   6D56 30                 4346 	.db #0x30	; 48	'0'
   6D57 30                 4347 	.db #0x30	; 48	'0'
   6D58 25                 4348 	.db #0x25	; 37
   6D59 30                 4349 	.db #0x30	; 48	'0'
   6D5A 30                 4350 	.db #0x30	; 48	'0'
   6D5B 1A                 4351 	.db #0x1A	; 26
   6D5C 30                 4352 	.db #0x30	; 48	'0'
   6D5D 30                 4353 	.db #0x30	; 48	'0'
   6D5E 30                 4354 	.db #0x30	; 48	'0'
   6D5F 30                 4355 	.db #0x30	; 48	'0'
   6D60 30                 4356 	.db #0x30	; 48	'0'
   6D61 30                 4357 	.db #0x30	; 48	'0'
   6D62 25                 4358 	.db #0x25	; 37
   6D63 30                 4359 	.db #0x30	; 48	'0'
   6D64 30                 4360 	.db #0x30	; 48	'0'
   6D65 1A                 4361 	.db #0x1A	; 26
   6D66 30                 4362 	.db #0x30	; 48	'0'
   6D67 30                 4363 	.db #0x30	; 48	'0'
   6D68 30                 4364 	.db #0x30	; 48	'0'
   6D69 30                 4365 	.db #0x30	; 48	'0'
   6D6A 30                 4366 	.db #0x30	; 48	'0'
   6D6B 30                 4367 	.db #0x30	; 48	'0'
   6D6C 25                 4368 	.db #0x25	; 37
   6D6D 30                 4369 	.db #0x30	; 48	'0'
   6D6E 30                 4370 	.db #0x30	; 48	'0'
   6D6F 1A                 4371 	.db #0x1A	; 26
   6D70 30                 4372 	.db #0x30	; 48	'0'
   6D71 30                 4373 	.db #0x30	; 48	'0'
   6D72 30                 4374 	.db #0x30	; 48	'0'
   6D73 30                 4375 	.db #0x30	; 48	'0'
   6D74 30                 4376 	.db #0x30	; 48	'0'
   6D75 30                 4377 	.db #0x30	; 48	'0'
   6D76 25                 4378 	.db #0x25	; 37
   6D77 30                 4379 	.db #0x30	; 48	'0'
   6D78 30                 4380 	.db #0x30	; 48	'0'
   6D79 1A                 4381 	.db #0x1A	; 26
   6D7A 30                 4382 	.db #0x30	; 48	'0'
   6D7B 30                 4383 	.db #0x30	; 48	'0'
   6D7C 30                 4384 	.db #0x30	; 48	'0'
   6D7D 30                 4385 	.db #0x30	; 48	'0'
   6D7E 30                 4386 	.db #0x30	; 48	'0'
   6D7F 30                 4387 	.db #0x30	; 48	'0'
   6D80 25                 4388 	.db #0x25	; 37
   6D81 30                 4389 	.db #0x30	; 48	'0'
   6D82 30                 4390 	.db #0x30	; 48	'0'
   6D83 1A                 4391 	.db #0x1A	; 26
   6D84 30                 4392 	.db #0x30	; 48	'0'
   6D85 30                 4393 	.db #0x30	; 48	'0'
   6D86 30                 4394 	.db #0x30	; 48	'0'
   6D87 30                 4395 	.db #0x30	; 48	'0'
   6D88 30                 4396 	.db #0x30	; 48	'0'
   6D89 30                 4397 	.db #0x30	; 48	'0'
   6D8A 25                 4398 	.db #0x25	; 37
   6D8B 30                 4399 	.db #0x30	; 48	'0'
   6D8C 30                 4400 	.db #0x30	; 48	'0'
   6D8D 1A                 4401 	.db #0x1A	; 26
   6D8E 30                 4402 	.db #0x30	; 48	'0'
   6D8F 30                 4403 	.db #0x30	; 48	'0'
   6D90 30                 4404 	.db #0x30	; 48	'0'
   6D91 30                 4405 	.db #0x30	; 48	'0'
   6D92 30                 4406 	.db #0x30	; 48	'0'
   6D93 30                 4407 	.db #0x30	; 48	'0'
   6D94 25                 4408 	.db #0x25	; 37
   6D95 30                 4409 	.db #0x30	; 48	'0'
   6D96 30                 4410 	.db #0x30	; 48	'0'
   6D97 1A                 4411 	.db #0x1A	; 26
   6D98 30                 4412 	.db #0x30	; 48	'0'
   6D99 30                 4413 	.db #0x30	; 48	'0'
   6D9A 30                 4414 	.db #0x30	; 48	'0'
   6D9B 30                 4415 	.db #0x30	; 48	'0'
   6D9C 30                 4416 	.db #0x30	; 48	'0'
   6D9D 30                 4417 	.db #0x30	; 48	'0'
   6D9E 25                 4418 	.db #0x25	; 37
   6D9F 30                 4419 	.db #0x30	; 48	'0'
   6DA0 30                 4420 	.db #0x30	; 48	'0'
   6DA1 0F                 4421 	.db #0x0F	; 15
   6DA2 30                 4422 	.db #0x30	; 48	'0'
   6DA3 30                 4423 	.db #0x30	; 48	'0'
   6DA4 30                 4424 	.db #0x30	; 48	'0'
   6DA5 30                 4425 	.db #0x30	; 48	'0'
   6DA6 30                 4426 	.db #0x30	; 48	'0'
   6DA7 30                 4427 	.db #0x30	; 48	'0'
   6DA8 0F                 4428 	.db #0x0F	; 15
   6DA9 30                 4429 	.db #0x30	; 48	'0'
   6DAA 30                 4430 	.db #0x30	; 48	'0'
   6DAB 25                 4431 	.db #0x25	; 37
   6DAC 30                 4432 	.db #0x30	; 48	'0'
   6DAD 30                 4433 	.db #0x30	; 48	'0'
   6DAE 30                 4434 	.db #0x30	; 48	'0'
   6DAF 30                 4435 	.db #0x30	; 48	'0'
   6DB0 30                 4436 	.db #0x30	; 48	'0'
   6DB1 30                 4437 	.db #0x30	; 48	'0'
   6DB2 1A                 4438 	.db #0x1A	; 26
   6DB3 30                 4439 	.db #0x30	; 48	'0'
   6DB4 30                 4440 	.db #0x30	; 48	'0'
   6DB5 25                 4441 	.db #0x25	; 37
   6DB6 0F                 4442 	.db #0x0F	; 15
   6DB7 0F                 4443 	.db #0x0F	; 15
   6DB8 0F                 4444 	.db #0x0F	; 15
   6DB9 0F                 4445 	.db #0x0F	; 15
   6DBA 0F                 4446 	.db #0x0F	; 15
   6DBB 0F                 4447 	.db #0x0F	; 15
   6DBC 1A                 4448 	.db #0x1A	; 26
   6DBD 30                 4449 	.db #0x30	; 48	'0'
   6DBE F0                 4450 	.db #0xF0	; 240
   6DBF 30                 4451 	.db #0x30	; 48	'0'
   6DC0 30                 4452 	.db #0x30	; 48	'0'
   6DC1 30                 4453 	.db #0x30	; 48	'0'
   6DC2 30                 4454 	.db #0x30	; 48	'0'
   6DC3 30                 4455 	.db #0x30	; 48	'0'
   6DC4 30                 4456 	.db #0x30	; 48	'0'
   6DC5 30                 4457 	.db #0x30	; 48	'0'
   6DC6 30                 4458 	.db #0x30	; 48	'0'
   6DC7 F0                 4459 	.db #0xF0	; 240
   6DC8 F0                 4460 	.db #0xF0	; 240
   6DC9 30                 4461 	.db #0x30	; 48	'0'
   6DCA 30                 4462 	.db #0x30	; 48	'0'
   6DCB 30                 4463 	.db #0x30	; 48	'0'
   6DCC 30                 4464 	.db #0x30	; 48	'0'
   6DCD 30                 4465 	.db #0x30	; 48	'0'
   6DCE 30                 4466 	.db #0x30	; 48	'0'
   6DCF 30                 4467 	.db #0x30	; 48	'0'
   6DD0 30                 4468 	.db #0x30	; 48	'0'
   6DD1 F0                 4469 	.db #0xF0	; 240
   6DD2                    4470 _tile_tiles_11:
   6DD2 F0                 4471 	.db #0xF0	; 240
   6DD3 30                 4472 	.db #0x30	; 48	'0'
   6DD4 30                 4473 	.db #0x30	; 48	'0'
   6DD5 30                 4474 	.db #0x30	; 48	'0'
   6DD6 30                 4475 	.db #0x30	; 48	'0'
   6DD7 30                 4476 	.db #0x30	; 48	'0'
   6DD8 30                 4477 	.db #0x30	; 48	'0'
   6DD9 30                 4478 	.db #0x30	; 48	'0'
   6DDA 30                 4479 	.db #0x30	; 48	'0'
   6DDB F0                 4480 	.db #0xF0	; 240
   6DDC F0                 4481 	.db #0xF0	; 240
   6DDD 30                 4482 	.db #0x30	; 48	'0'
   6DDE 30                 4483 	.db #0x30	; 48	'0'
   6DDF 30                 4484 	.db #0x30	; 48	'0'
   6DE0 30                 4485 	.db #0x30	; 48	'0'
   6DE1 30                 4486 	.db #0x30	; 48	'0'
   6DE2 30                 4487 	.db #0x30	; 48	'0'
   6DE3 30                 4488 	.db #0x30	; 48	'0'
   6DE4 30                 4489 	.db #0x30	; 48	'0'
   6DE5 F0                 4490 	.db #0xF0	; 240
   6DE6 30                 4491 	.db #0x30	; 48	'0'
   6DE7 25                 4492 	.db #0x25	; 37
   6DE8 0F                 4493 	.db #0x0F	; 15
   6DE9 0F                 4494 	.db #0x0F	; 15
   6DEA 0F                 4495 	.db #0x0F	; 15
   6DEB 0F                 4496 	.db #0x0F	; 15
   6DEC 0F                 4497 	.db #0x0F	; 15
   6DED 0F                 4498 	.db #0x0F	; 15
   6DEE 1A                 4499 	.db #0x1A	; 26
   6DEF 30                 4500 	.db #0x30	; 48	'0'
   6DF0 30                 4501 	.db #0x30	; 48	'0'
   6DF1 25                 4502 	.db #0x25	; 37
   6DF2 30                 4503 	.db #0x30	; 48	'0'
   6DF3 30                 4504 	.db #0x30	; 48	'0'
   6DF4 30                 4505 	.db #0x30	; 48	'0'
   6DF5 30                 4506 	.db #0x30	; 48	'0'
   6DF6 30                 4507 	.db #0x30	; 48	'0'
   6DF7 30                 4508 	.db #0x30	; 48	'0'
   6DF8 1A                 4509 	.db #0x1A	; 26
   6DF9 30                 4510 	.db #0x30	; 48	'0'
   6DFA 30                 4511 	.db #0x30	; 48	'0'
   6DFB 0F                 4512 	.db #0x0F	; 15
   6DFC 30                 4513 	.db #0x30	; 48	'0'
   6DFD 30                 4514 	.db #0x30	; 48	'0'
   6DFE 30                 4515 	.db #0x30	; 48	'0'
   6DFF 30                 4516 	.db #0x30	; 48	'0'
   6E00 30                 4517 	.db #0x30	; 48	'0'
   6E01 30                 4518 	.db #0x30	; 48	'0'
   6E02 0F                 4519 	.db #0x0F	; 15
   6E03 30                 4520 	.db #0x30	; 48	'0'
   6E04 30                 4521 	.db #0x30	; 48	'0'
   6E05 1A                 4522 	.db #0x1A	; 26
   6E06 30                 4523 	.db #0x30	; 48	'0'
   6E07 30                 4524 	.db #0x30	; 48	'0'
   6E08 30                 4525 	.db #0x30	; 48	'0'
   6E09 30                 4526 	.db #0x30	; 48	'0'
   6E0A 30                 4527 	.db #0x30	; 48	'0'
   6E0B 30                 4528 	.db #0x30	; 48	'0'
   6E0C 25                 4529 	.db #0x25	; 37
   6E0D 30                 4530 	.db #0x30	; 48	'0'
   6E0E 30                 4531 	.db #0x30	; 48	'0'
   6E0F 1A                 4532 	.db #0x1A	; 26
   6E10 30                 4533 	.db #0x30	; 48	'0'
   6E11 30                 4534 	.db #0x30	; 48	'0'
   6E12 30                 4535 	.db #0x30	; 48	'0'
   6E13 30                 4536 	.db #0x30	; 48	'0'
   6E14 30                 4537 	.db #0x30	; 48	'0'
   6E15 30                 4538 	.db #0x30	; 48	'0'
   6E16 25                 4539 	.db #0x25	; 37
   6E17 30                 4540 	.db #0x30	; 48	'0'
   6E18 30                 4541 	.db #0x30	; 48	'0'
   6E19 1A                 4542 	.db #0x1A	; 26
   6E1A 30                 4543 	.db #0x30	; 48	'0'
   6E1B 30                 4544 	.db #0x30	; 48	'0'
   6E1C 30                 4545 	.db #0x30	; 48	'0'
   6E1D 30                 4546 	.db #0x30	; 48	'0'
   6E1E 30                 4547 	.db #0x30	; 48	'0'
   6E1F 30                 4548 	.db #0x30	; 48	'0'
   6E20 25                 4549 	.db #0x25	; 37
   6E21 30                 4550 	.db #0x30	; 48	'0'
   6E22 30                 4551 	.db #0x30	; 48	'0'
   6E23 1A                 4552 	.db #0x1A	; 26
   6E24 30                 4553 	.db #0x30	; 48	'0'
   6E25 30                 4554 	.db #0x30	; 48	'0'
   6E26 30                 4555 	.db #0x30	; 48	'0'
   6E27 30                 4556 	.db #0x30	; 48	'0'
   6E28 30                 4557 	.db #0x30	; 48	'0'
   6E29 30                 4558 	.db #0x30	; 48	'0'
   6E2A 25                 4559 	.db #0x25	; 37
   6E2B 30                 4560 	.db #0x30	; 48	'0'
   6E2C 30                 4561 	.db #0x30	; 48	'0'
   6E2D 1A                 4562 	.db #0x1A	; 26
   6E2E 30                 4563 	.db #0x30	; 48	'0'
   6E2F 30                 4564 	.db #0x30	; 48	'0'
   6E30 30                 4565 	.db #0x30	; 48	'0'
   6E31 30                 4566 	.db #0x30	; 48	'0'
   6E32 30                 4567 	.db #0x30	; 48	'0'
   6E33 30                 4568 	.db #0x30	; 48	'0'
   6E34 25                 4569 	.db #0x25	; 37
   6E35 30                 4570 	.db #0x30	; 48	'0'
   6E36 30                 4571 	.db #0x30	; 48	'0'
   6E37 1A                 4572 	.db #0x1A	; 26
   6E38 30                 4573 	.db #0x30	; 48	'0'
   6E39 30                 4574 	.db #0x30	; 48	'0'
   6E3A 30                 4575 	.db #0x30	; 48	'0'
   6E3B 30                 4576 	.db #0x30	; 48	'0'
   6E3C 30                 4577 	.db #0x30	; 48	'0'
   6E3D 30                 4578 	.db #0x30	; 48	'0'
   6E3E 25                 4579 	.db #0x25	; 37
   6E3F 30                 4580 	.db #0x30	; 48	'0'
   6E40 30                 4581 	.db #0x30	; 48	'0'
   6E41 1A                 4582 	.db #0x1A	; 26
   6E42 30                 4583 	.db #0x30	; 48	'0'
   6E43 30                 4584 	.db #0x30	; 48	'0'
   6E44 30                 4585 	.db #0x30	; 48	'0'
   6E45 30                 4586 	.db #0x30	; 48	'0'
   6E46 30                 4587 	.db #0x30	; 48	'0'
   6E47 30                 4588 	.db #0x30	; 48	'0'
   6E48 25                 4589 	.db #0x25	; 37
   6E49 30                 4590 	.db #0x30	; 48	'0'
   6E4A 30                 4591 	.db #0x30	; 48	'0'
   6E4B 1A                 4592 	.db #0x1A	; 26
   6E4C 30                 4593 	.db #0x30	; 48	'0'
   6E4D 30                 4594 	.db #0x30	; 48	'0'
   6E4E 30                 4595 	.db #0x30	; 48	'0'
   6E4F 30                 4596 	.db #0x30	; 48	'0'
   6E50 30                 4597 	.db #0x30	; 48	'0'
   6E51 30                 4598 	.db #0x30	; 48	'0'
   6E52 25                 4599 	.db #0x25	; 37
   6E53 30                 4600 	.db #0x30	; 48	'0'
   6E54 30                 4601 	.db #0x30	; 48	'0'
   6E55 1A                 4602 	.db #0x1A	; 26
   6E56 30                 4603 	.db #0x30	; 48	'0'
   6E57 30                 4604 	.db #0x30	; 48	'0'
   6E58 30                 4605 	.db #0x30	; 48	'0'
   6E59 30                 4606 	.db #0x30	; 48	'0'
   6E5A 30                 4607 	.db #0x30	; 48	'0'
   6E5B 30                 4608 	.db #0x30	; 48	'0'
   6E5C 25                 4609 	.db #0x25	; 37
   6E5D 30                 4610 	.db #0x30	; 48	'0'
   6E5E 30                 4611 	.db #0x30	; 48	'0'
   6E5F 1A                 4612 	.db #0x1A	; 26
   6E60 30                 4613 	.db #0x30	; 48	'0'
   6E61 30                 4614 	.db #0x30	; 48	'0'
   6E62 30                 4615 	.db #0x30	; 48	'0'
   6E63 30                 4616 	.db #0x30	; 48	'0'
   6E64 30                 4617 	.db #0x30	; 48	'0'
   6E65 30                 4618 	.db #0x30	; 48	'0'
   6E66 25                 4619 	.db #0x25	; 37
   6E67 30                 4620 	.db #0x30	; 48	'0'
   6E68 30                 4621 	.db #0x30	; 48	'0'
   6E69 4E                 4622 	.db #0x4E	; 78	'N'
   6E6A CC                 4623 	.db #0xCC	; 204
   6E6B 30                 4624 	.db #0x30	; 48	'0'
   6E6C 64                 4625 	.db #0x64	; 100	'd'
   6E6D 98                 4626 	.db #0x98	; 152
   6E6E 30                 4627 	.db #0x30	; 48	'0'
   6E6F 98                 4628 	.db #0x98	; 152
   6E70 25                 4629 	.db #0x25	; 37
   6E71 30                 4630 	.db #0x30	; 48	'0'
   6E72 30                 4631 	.db #0x30	; 48	'0'
   6E73 1A                 4632 	.db #0x1A	; 26
   6E74 64                 4633 	.db #0x64	; 100	'd'
   6E75 30                 4634 	.db #0x30	; 48	'0'
   6E76 98                 4635 	.db #0x98	; 152
   6E77 98                 4636 	.db #0x98	; 152
   6E78 64                 4637 	.db #0x64	; 100	'd'
   6E79 64                 4638 	.db #0x64	; 100	'd'
   6E7A 25                 4639 	.db #0x25	; 37
   6E7B 30                 4640 	.db #0x30	; 48	'0'
   6E7C 30                 4641 	.db #0x30	; 48	'0'
   6E7D 1A                 4642 	.db #0x1A	; 26
   6E7E 64                 4643 	.db #0x64	; 100	'd'
   6E7F 30                 4644 	.db #0x30	; 48	'0'
   6E80 98                 4645 	.db #0x98	; 152
   6E81 30                 4646 	.db #0x30	; 48	'0'
   6E82 64                 4647 	.db #0x64	; 100	'd'
   6E83 64                 4648 	.db #0x64	; 100	'd'
   6E84 25                 4649 	.db #0x25	; 37
   6E85 30                 4650 	.db #0x30	; 48	'0'
   6E86 30                 4651 	.db #0x30	; 48	'0'
   6E87 1A                 4652 	.db #0x1A	; 26
   6E88 64                 4653 	.db #0x64	; 100	'd'
   6E89 30                 4654 	.db #0x30	; 48	'0'
   6E8A 98                 4655 	.db #0x98	; 152
   6E8B 30                 4656 	.db #0x30	; 48	'0'
   6E8C 64                 4657 	.db #0x64	; 100	'd'
   6E8D 64                 4658 	.db #0x64	; 100	'd'
   6E8E 25                 4659 	.db #0x25	; 37
   6E8F 30                 4660 	.db #0x30	; 48	'0'
   6E90 30                 4661 	.db #0x30	; 48	'0'
   6E91 1A                 4662 	.db #0x1A	; 26
   6E92 64                 4663 	.db #0x64	; 100	'd'
   6E93 30                 4664 	.db #0x30	; 48	'0'
   6E94 98                 4665 	.db #0x98	; 152
   6E95 30                 4666 	.db #0x30	; 48	'0'
   6E96 64                 4667 	.db #0x64	; 100	'd'
   6E97 64                 4668 	.db #0x64	; 100	'd'
   6E98 25                 4669 	.db #0x25	; 37
   6E99 30                 4670 	.db #0x30	; 48	'0'
   6E9A 30                 4671 	.db #0x30	; 48	'0'
   6E9B 1A                 4672 	.db #0x1A	; 26
   6E9C 64                 4673 	.db #0x64	; 100	'd'
   6E9D 30                 4674 	.db #0x30	; 48	'0'
   6E9E CC                 4675 	.db #0xCC	; 204
   6E9F 30                 4676 	.db #0x30	; 48	'0'
   6EA0 64                 4677 	.db #0x64	; 100	'd'
   6EA1 64                 4678 	.db #0x64	; 100	'd'
   6EA2 25                 4679 	.db #0x25	; 37
   6EA3 30                 4680 	.db #0x30	; 48	'0'
   6EA4 30                 4681 	.db #0x30	; 48	'0'
   6EA5 1A                 4682 	.db #0x1A	; 26
   6EA6 98                 4683 	.db #0x98	; 152
   6EA7 30                 4684 	.db #0x30	; 48	'0'
   6EA8 98                 4685 	.db #0x98	; 152
   6EA9 98                 4686 	.db #0x98	; 152
   6EAA 30                 4687 	.db #0x30	; 48	'0'
   6EAB 98                 4688 	.db #0x98	; 152
   6EAC 25                 4689 	.db #0x25	; 37
   6EAD 30                 4690 	.db #0x30	; 48	'0'
   6EAE 30                 4691 	.db #0x30	; 48	'0'
   6EAF 1A                 4692 	.db #0x1A	; 26
   6EB0 98                 4693 	.db #0x98	; 152
   6EB1 30                 4694 	.db #0x30	; 48	'0'
   6EB2 98                 4695 	.db #0x98	; 152
   6EB3 98                 4696 	.db #0x98	; 152
   6EB4 64                 4697 	.db #0x64	; 100	'd'
   6EB5 64                 4698 	.db #0x64	; 100	'd'
   6EB6 25                 4699 	.db #0x25	; 37
   6EB7 30                 4700 	.db #0x30	; 48	'0'
   6EB8 30                 4701 	.db #0x30	; 48	'0'
   6EB9 1A                 4702 	.db #0x1A	; 26
   6EBA 98                 4703 	.db #0x98	; 152
   6EBB 30                 4704 	.db #0x30	; 48	'0'
   6EBC 98                 4705 	.db #0x98	; 152
   6EBD 98                 4706 	.db #0x98	; 152
   6EBE 64                 4707 	.db #0x64	; 100	'd'
   6EBF 64                 4708 	.db #0x64	; 100	'd'
   6EC0 25                 4709 	.db #0x25	; 37
   6EC1 30                 4710 	.db #0x30	; 48	'0'
   6EC2 30                 4711 	.db #0x30	; 48	'0'
   6EC3 1A                 4712 	.db #0x1A	; 26
   6EC4 98                 4713 	.db #0x98	; 152
   6EC5 30                 4714 	.db #0x30	; 48	'0'
   6EC6 98                 4715 	.db #0x98	; 152
   6EC7 98                 4716 	.db #0x98	; 152
   6EC8 64                 4717 	.db #0x64	; 100	'd'
   6EC9 64                 4718 	.db #0x64	; 100	'd'
   6ECA 25                 4719 	.db #0x25	; 37
   6ECB 30                 4720 	.db #0x30	; 48	'0'
   6ECC 30                 4721 	.db #0x30	; 48	'0'
   6ECD 1A                 4722 	.db #0x1A	; 26
   6ECE 98                 4723 	.db #0x98	; 152
   6ECF 30                 4724 	.db #0x30	; 48	'0'
   6ED0 98                 4725 	.db #0x98	; 152
   6ED1 98                 4726 	.db #0x98	; 152
   6ED2 64                 4727 	.db #0x64	; 100	'd'
   6ED3 64                 4728 	.db #0x64	; 100	'd'
   6ED4 25                 4729 	.db #0x25	; 37
   6ED5 30                 4730 	.db #0x30	; 48	'0'
   6ED6 30                 4731 	.db #0x30	; 48	'0'
   6ED7 1A                 4732 	.db #0x1A	; 26
   6ED8 98                 4733 	.db #0x98	; 152
   6ED9 30                 4734 	.db #0x30	; 48	'0'
   6EDA 64                 4735 	.db #0x64	; 100	'd'
   6EDB 30                 4736 	.db #0x30	; 48	'0'
   6EDC 30                 4737 	.db #0x30	; 48	'0'
   6EDD 98                 4738 	.db #0x98	; 152
   6EDE 25                 4739 	.db #0x25	; 37
   6EDF 30                 4740 	.db #0x30	; 48	'0'
   6EE0 30                 4741 	.db #0x30	; 48	'0'
   6EE1 1A                 4742 	.db #0x1A	; 26
   6EE2 30                 4743 	.db #0x30	; 48	'0'
   6EE3 30                 4744 	.db #0x30	; 48	'0'
   6EE4 30                 4745 	.db #0x30	; 48	'0'
   6EE5 30                 4746 	.db #0x30	; 48	'0'
   6EE6 30                 4747 	.db #0x30	; 48	'0'
   6EE7 30                 4748 	.db #0x30	; 48	'0'
   6EE8 25                 4749 	.db #0x25	; 37
   6EE9 30                 4750 	.db #0x30	; 48	'0'
   6EEA 30                 4751 	.db #0x30	; 48	'0'
   6EEB 1A                 4752 	.db #0x1A	; 26
   6EEC 30                 4753 	.db #0x30	; 48	'0'
   6EED 30                 4754 	.db #0x30	; 48	'0'
   6EEE 30                 4755 	.db #0x30	; 48	'0'
   6EEF 30                 4756 	.db #0x30	; 48	'0'
   6EF0 30                 4757 	.db #0x30	; 48	'0'
   6EF1 30                 4758 	.db #0x30	; 48	'0'
   6EF2 25                 4759 	.db #0x25	; 37
   6EF3 30                 4760 	.db #0x30	; 48	'0'
   6EF4 30                 4761 	.db #0x30	; 48	'0'
   6EF5 1A                 4762 	.db #0x1A	; 26
   6EF6 30                 4763 	.db #0x30	; 48	'0'
   6EF7 30                 4764 	.db #0x30	; 48	'0'
   6EF8 30                 4765 	.db #0x30	; 48	'0'
   6EF9 30                 4766 	.db #0x30	; 48	'0'
   6EFA 30                 4767 	.db #0x30	; 48	'0'
   6EFB 30                 4768 	.db #0x30	; 48	'0'
   6EFC 25                 4769 	.db #0x25	; 37
   6EFD 30                 4770 	.db #0x30	; 48	'0'
   6EFE 30                 4771 	.db #0x30	; 48	'0'
   6EFF 1A                 4772 	.db #0x1A	; 26
   6F00 30                 4773 	.db #0x30	; 48	'0'
   6F01 30                 4774 	.db #0x30	; 48	'0'
   6F02 30                 4775 	.db #0x30	; 48	'0'
   6F03 30                 4776 	.db #0x30	; 48	'0'
   6F04 30                 4777 	.db #0x30	; 48	'0'
   6F05 30                 4778 	.db #0x30	; 48	'0'
   6F06 25                 4779 	.db #0x25	; 37
   6F07 30                 4780 	.db #0x30	; 48	'0'
   6F08 30                 4781 	.db #0x30	; 48	'0'
   6F09 1A                 4782 	.db #0x1A	; 26
   6F0A 30                 4783 	.db #0x30	; 48	'0'
   6F0B 30                 4784 	.db #0x30	; 48	'0'
   6F0C 30                 4785 	.db #0x30	; 48	'0'
   6F0D 30                 4786 	.db #0x30	; 48	'0'
   6F0E 30                 4787 	.db #0x30	; 48	'0'
   6F0F 30                 4788 	.db #0x30	; 48	'0'
   6F10 25                 4789 	.db #0x25	; 37
   6F11 30                 4790 	.db #0x30	; 48	'0'
   6F12 30                 4791 	.db #0x30	; 48	'0'
   6F13 1A                 4792 	.db #0x1A	; 26
   6F14 30                 4793 	.db #0x30	; 48	'0'
   6F15 30                 4794 	.db #0x30	; 48	'0'
   6F16 30                 4795 	.db #0x30	; 48	'0'
   6F17 30                 4796 	.db #0x30	; 48	'0'
   6F18 30                 4797 	.db #0x30	; 48	'0'
   6F19 30                 4798 	.db #0x30	; 48	'0'
   6F1A 25                 4799 	.db #0x25	; 37
   6F1B 30                 4800 	.db #0x30	; 48	'0'
   6F1C 30                 4801 	.db #0x30	; 48	'0'
   6F1D 1A                 4802 	.db #0x1A	; 26
   6F1E 30                 4803 	.db #0x30	; 48	'0'
   6F1F 30                 4804 	.db #0x30	; 48	'0'
   6F20 30                 4805 	.db #0x30	; 48	'0'
   6F21 30                 4806 	.db #0x30	; 48	'0'
   6F22 30                 4807 	.db #0x30	; 48	'0'
   6F23 30                 4808 	.db #0x30	; 48	'0'
   6F24 25                 4809 	.db #0x25	; 37
   6F25 30                 4810 	.db #0x30	; 48	'0'
   6F26 30                 4811 	.db #0x30	; 48	'0'
   6F27 1A                 4812 	.db #0x1A	; 26
   6F28 30                 4813 	.db #0x30	; 48	'0'
   6F29 30                 4814 	.db #0x30	; 48	'0'
   6F2A 30                 4815 	.db #0x30	; 48	'0'
   6F2B 30                 4816 	.db #0x30	; 48	'0'
   6F2C 30                 4817 	.db #0x30	; 48	'0'
   6F2D 30                 4818 	.db #0x30	; 48	'0'
   6F2E 25                 4819 	.db #0x25	; 37
   6F2F 30                 4820 	.db #0x30	; 48	'0'
   6F30 30                 4821 	.db #0x30	; 48	'0'
   6F31 0F                 4822 	.db #0x0F	; 15
   6F32 30                 4823 	.db #0x30	; 48	'0'
   6F33 30                 4824 	.db #0x30	; 48	'0'
   6F34 30                 4825 	.db #0x30	; 48	'0'
   6F35 30                 4826 	.db #0x30	; 48	'0'
   6F36 30                 4827 	.db #0x30	; 48	'0'
   6F37 30                 4828 	.db #0x30	; 48	'0'
   6F38 0F                 4829 	.db #0x0F	; 15
   6F39 30                 4830 	.db #0x30	; 48	'0'
   6F3A 30                 4831 	.db #0x30	; 48	'0'
   6F3B 25                 4832 	.db #0x25	; 37
   6F3C 30                 4833 	.db #0x30	; 48	'0'
   6F3D 30                 4834 	.db #0x30	; 48	'0'
   6F3E 30                 4835 	.db #0x30	; 48	'0'
   6F3F 30                 4836 	.db #0x30	; 48	'0'
   6F40 30                 4837 	.db #0x30	; 48	'0'
   6F41 30                 4838 	.db #0x30	; 48	'0'
   6F42 1A                 4839 	.db #0x1A	; 26
   6F43 30                 4840 	.db #0x30	; 48	'0'
   6F44 30                 4841 	.db #0x30	; 48	'0'
   6F45 25                 4842 	.db #0x25	; 37
   6F46 0F                 4843 	.db #0x0F	; 15
   6F47 0F                 4844 	.db #0x0F	; 15
   6F48 0F                 4845 	.db #0x0F	; 15
   6F49 0F                 4846 	.db #0x0F	; 15
   6F4A 0F                 4847 	.db #0x0F	; 15
   6F4B 0F                 4848 	.db #0x0F	; 15
   6F4C 1A                 4849 	.db #0x1A	; 26
   6F4D 30                 4850 	.db #0x30	; 48	'0'
   6F4E F0                 4851 	.db #0xF0	; 240
   6F4F 30                 4852 	.db #0x30	; 48	'0'
   6F50 30                 4853 	.db #0x30	; 48	'0'
   6F51 30                 4854 	.db #0x30	; 48	'0'
   6F52 30                 4855 	.db #0x30	; 48	'0'
   6F53 30                 4856 	.db #0x30	; 48	'0'
   6F54 30                 4857 	.db #0x30	; 48	'0'
   6F55 30                 4858 	.db #0x30	; 48	'0'
   6F56 30                 4859 	.db #0x30	; 48	'0'
   6F57 F0                 4860 	.db #0xF0	; 240
   6F58 F0                 4861 	.db #0xF0	; 240
   6F59 30                 4862 	.db #0x30	; 48	'0'
   6F5A 30                 4863 	.db #0x30	; 48	'0'
   6F5B 30                 4864 	.db #0x30	; 48	'0'
   6F5C 30                 4865 	.db #0x30	; 48	'0'
   6F5D 30                 4866 	.db #0x30	; 48	'0'
   6F5E 30                 4867 	.db #0x30	; 48	'0'
   6F5F 30                 4868 	.db #0x30	; 48	'0'
   6F60 30                 4869 	.db #0x30	; 48	'0'
   6F61 F0                 4870 	.db #0xF0	; 240
   6F62                    4871 _tile_tiles_12:
   6F62 F0                 4872 	.db #0xF0	; 240
   6F63 30                 4873 	.db #0x30	; 48	'0'
   6F64 30                 4874 	.db #0x30	; 48	'0'
   6F65 30                 4875 	.db #0x30	; 48	'0'
   6F66 30                 4876 	.db #0x30	; 48	'0'
   6F67 30                 4877 	.db #0x30	; 48	'0'
   6F68 30                 4878 	.db #0x30	; 48	'0'
   6F69 30                 4879 	.db #0x30	; 48	'0'
   6F6A 30                 4880 	.db #0x30	; 48	'0'
   6F6B F0                 4881 	.db #0xF0	; 240
   6F6C F0                 4882 	.db #0xF0	; 240
   6F6D 30                 4883 	.db #0x30	; 48	'0'
   6F6E 30                 4884 	.db #0x30	; 48	'0'
   6F6F 30                 4885 	.db #0x30	; 48	'0'
   6F70 30                 4886 	.db #0x30	; 48	'0'
   6F71 30                 4887 	.db #0x30	; 48	'0'
   6F72 30                 4888 	.db #0x30	; 48	'0'
   6F73 30                 4889 	.db #0x30	; 48	'0'
   6F74 30                 4890 	.db #0x30	; 48	'0'
   6F75 F0                 4891 	.db #0xF0	; 240
   6F76 30                 4892 	.db #0x30	; 48	'0'
   6F77 25                 4893 	.db #0x25	; 37
   6F78 0F                 4894 	.db #0x0F	; 15
   6F79 0F                 4895 	.db #0x0F	; 15
   6F7A 0F                 4896 	.db #0x0F	; 15
   6F7B 0F                 4897 	.db #0x0F	; 15
   6F7C 0F                 4898 	.db #0x0F	; 15
   6F7D 0F                 4899 	.db #0x0F	; 15
   6F7E 1A                 4900 	.db #0x1A	; 26
   6F7F 30                 4901 	.db #0x30	; 48	'0'
   6F80 30                 4902 	.db #0x30	; 48	'0'
   6F81 25                 4903 	.db #0x25	; 37
   6F82 30                 4904 	.db #0x30	; 48	'0'
   6F83 30                 4905 	.db #0x30	; 48	'0'
   6F84 30                 4906 	.db #0x30	; 48	'0'
   6F85 30                 4907 	.db #0x30	; 48	'0'
   6F86 30                 4908 	.db #0x30	; 48	'0'
   6F87 30                 4909 	.db #0x30	; 48	'0'
   6F88 1A                 4910 	.db #0x1A	; 26
   6F89 30                 4911 	.db #0x30	; 48	'0'
   6F8A 30                 4912 	.db #0x30	; 48	'0'
   6F8B 0F                 4913 	.db #0x0F	; 15
   6F8C 30                 4914 	.db #0x30	; 48	'0'
   6F8D 30                 4915 	.db #0x30	; 48	'0'
   6F8E 30                 4916 	.db #0x30	; 48	'0'
   6F8F 30                 4917 	.db #0x30	; 48	'0'
   6F90 30                 4918 	.db #0x30	; 48	'0'
   6F91 30                 4919 	.db #0x30	; 48	'0'
   6F92 0F                 4920 	.db #0x0F	; 15
   6F93 30                 4921 	.db #0x30	; 48	'0'
   6F94 30                 4922 	.db #0x30	; 48	'0'
   6F95 1A                 4923 	.db #0x1A	; 26
   6F96 30                 4924 	.db #0x30	; 48	'0'
   6F97 30                 4925 	.db #0x30	; 48	'0'
   6F98 30                 4926 	.db #0x30	; 48	'0'
   6F99 30                 4927 	.db #0x30	; 48	'0'
   6F9A 30                 4928 	.db #0x30	; 48	'0'
   6F9B 30                 4929 	.db #0x30	; 48	'0'
   6F9C 25                 4930 	.db #0x25	; 37
   6F9D 30                 4931 	.db #0x30	; 48	'0'
   6F9E 30                 4932 	.db #0x30	; 48	'0'
   6F9F 1A                 4933 	.db #0x1A	; 26
   6FA0 30                 4934 	.db #0x30	; 48	'0'
   6FA1 30                 4935 	.db #0x30	; 48	'0'
   6FA2 30                 4936 	.db #0x30	; 48	'0'
   6FA3 30                 4937 	.db #0x30	; 48	'0'
   6FA4 30                 4938 	.db #0x30	; 48	'0'
   6FA5 30                 4939 	.db #0x30	; 48	'0'
   6FA6 25                 4940 	.db #0x25	; 37
   6FA7 30                 4941 	.db #0x30	; 48	'0'
   6FA8 30                 4942 	.db #0x30	; 48	'0'
   6FA9 1A                 4943 	.db #0x1A	; 26
   6FAA 30                 4944 	.db #0x30	; 48	'0'
   6FAB 30                 4945 	.db #0x30	; 48	'0'
   6FAC 30                 4946 	.db #0x30	; 48	'0'
   6FAD 30                 4947 	.db #0x30	; 48	'0'
   6FAE 30                 4948 	.db #0x30	; 48	'0'
   6FAF 30                 4949 	.db #0x30	; 48	'0'
   6FB0 25                 4950 	.db #0x25	; 37
   6FB1 30                 4951 	.db #0x30	; 48	'0'
   6FB2 30                 4952 	.db #0x30	; 48	'0'
   6FB3 1A                 4953 	.db #0x1A	; 26
   6FB4 30                 4954 	.db #0x30	; 48	'0'
   6FB5 30                 4955 	.db #0x30	; 48	'0'
   6FB6 30                 4956 	.db #0x30	; 48	'0'
   6FB7 30                 4957 	.db #0x30	; 48	'0'
   6FB8 30                 4958 	.db #0x30	; 48	'0'
   6FB9 30                 4959 	.db #0x30	; 48	'0'
   6FBA 25                 4960 	.db #0x25	; 37
   6FBB 30                 4961 	.db #0x30	; 48	'0'
   6FBC 30                 4962 	.db #0x30	; 48	'0'
   6FBD 1A                 4963 	.db #0x1A	; 26
   6FBE 30                 4964 	.db #0x30	; 48	'0'
   6FBF 30                 4965 	.db #0x30	; 48	'0'
   6FC0 30                 4966 	.db #0x30	; 48	'0'
   6FC1 30                 4967 	.db #0x30	; 48	'0'
   6FC2 30                 4968 	.db #0x30	; 48	'0'
   6FC3 30                 4969 	.db #0x30	; 48	'0'
   6FC4 25                 4970 	.db #0x25	; 37
   6FC5 30                 4971 	.db #0x30	; 48	'0'
   6FC6 30                 4972 	.db #0x30	; 48	'0'
   6FC7 1A                 4973 	.db #0x1A	; 26
   6FC8 30                 4974 	.db #0x30	; 48	'0'
   6FC9 30                 4975 	.db #0x30	; 48	'0'
   6FCA 30                 4976 	.db #0x30	; 48	'0'
   6FCB 30                 4977 	.db #0x30	; 48	'0'
   6FCC 30                 4978 	.db #0x30	; 48	'0'
   6FCD 30                 4979 	.db #0x30	; 48	'0'
   6FCE 25                 4980 	.db #0x25	; 37
   6FCF 30                 4981 	.db #0x30	; 48	'0'
   6FD0 30                 4982 	.db #0x30	; 48	'0'
   6FD1 1A                 4983 	.db #0x1A	; 26
   6FD2 30                 4984 	.db #0x30	; 48	'0'
   6FD3 30                 4985 	.db #0x30	; 48	'0'
   6FD4 30                 4986 	.db #0x30	; 48	'0'
   6FD5 30                 4987 	.db #0x30	; 48	'0'
   6FD6 30                 4988 	.db #0x30	; 48	'0'
   6FD7 30                 4989 	.db #0x30	; 48	'0'
   6FD8 25                 4990 	.db #0x25	; 37
   6FD9 30                 4991 	.db #0x30	; 48	'0'
   6FDA 30                 4992 	.db #0x30	; 48	'0'
   6FDB 1A                 4993 	.db #0x1A	; 26
   6FDC 30                 4994 	.db #0x30	; 48	'0'
   6FDD 30                 4995 	.db #0x30	; 48	'0'
   6FDE 30                 4996 	.db #0x30	; 48	'0'
   6FDF 30                 4997 	.db #0x30	; 48	'0'
   6FE0 30                 4998 	.db #0x30	; 48	'0'
   6FE1 30                 4999 	.db #0x30	; 48	'0'
   6FE2 25                 5000 	.db #0x25	; 37
   6FE3 30                 5001 	.db #0x30	; 48	'0'
   6FE4 30                 5002 	.db #0x30	; 48	'0'
   6FE5 1A                 5003 	.db #0x1A	; 26
   6FE6 30                 5004 	.db #0x30	; 48	'0'
   6FE7 30                 5005 	.db #0x30	; 48	'0'
   6FE8 30                 5006 	.db #0x30	; 48	'0'
   6FE9 30                 5007 	.db #0x30	; 48	'0'
   6FEA 30                 5008 	.db #0x30	; 48	'0'
   6FEB 30                 5009 	.db #0x30	; 48	'0'
   6FEC 25                 5010 	.db #0x25	; 37
   6FED 30                 5011 	.db #0x30	; 48	'0'
   6FEE 30                 5012 	.db #0x30	; 48	'0'
   6FEF 1A                 5013 	.db #0x1A	; 26
   6FF0 30                 5014 	.db #0x30	; 48	'0'
   6FF1 30                 5015 	.db #0x30	; 48	'0'
   6FF2 30                 5016 	.db #0x30	; 48	'0'
   6FF3 30                 5017 	.db #0x30	; 48	'0'
   6FF4 30                 5018 	.db #0x30	; 48	'0'
   6FF5 30                 5019 	.db #0x30	; 48	'0'
   6FF6 25                 5020 	.db #0x25	; 37
   6FF7 30                 5021 	.db #0x30	; 48	'0'
   6FF8 30                 5022 	.db #0x30	; 48	'0'
   6FF9 1A                 5023 	.db #0x1A	; 26
   6FFA 30                 5024 	.db #0x30	; 48	'0'
   6FFB 30                 5025 	.db #0x30	; 48	'0'
   6FFC 30                 5026 	.db #0x30	; 48	'0'
   6FFD 30                 5027 	.db #0x30	; 48	'0'
   6FFE 30                 5028 	.db #0x30	; 48	'0'
   6FFF 30                 5029 	.db #0x30	; 48	'0'
   7000 25                 5030 	.db #0x25	; 37
   7001 30                 5031 	.db #0x30	; 48	'0'
   7002 30                 5032 	.db #0x30	; 48	'0'
   7003 1A                 5033 	.db #0x1A	; 26
   7004 30                 5034 	.db #0x30	; 48	'0'
   7005 30                 5035 	.db #0x30	; 48	'0'
   7006 30                 5036 	.db #0x30	; 48	'0'
   7007 30                 5037 	.db #0x30	; 48	'0'
   7008 30                 5038 	.db #0x30	; 48	'0'
   7009 30                 5039 	.db #0x30	; 48	'0'
   700A 25                 5040 	.db #0x25	; 37
   700B 30                 5041 	.db #0x30	; 48	'0'
   700C 30                 5042 	.db #0x30	; 48	'0'
   700D 4E                 5043 	.db #0x4E	; 78	'N'
   700E 30                 5044 	.db #0x30	; 48	'0'
   700F CC                 5045 	.db #0xCC	; 204
   7010 98                 5046 	.db #0x98	; 152
   7011 64                 5047 	.db #0x64	; 100	'd'
   7012 30                 5048 	.db #0x30	; 48	'0'
   7013 64                 5049 	.db #0x64	; 100	'd'
   7014 25                 5050 	.db #0x25	; 37
   7015 30                 5051 	.db #0x30	; 48	'0'
   7016 30                 5052 	.db #0x30	; 48	'0'
   7017 CC                 5053 	.db #0xCC	; 204
   7018 30                 5054 	.db #0x30	; 48	'0'
   7019 98                 5055 	.db #0x98	; 152
   701A 30                 5056 	.db #0x30	; 48	'0'
   701B 98                 5057 	.db #0x98	; 152
   701C 98                 5058 	.db #0x98	; 152
   701D 98                 5059 	.db #0x98	; 152
   701E 8D                 5060 	.db #0x8D	; 141
   701F 30                 5061 	.db #0x30	; 48	'0'
   7020 30                 5062 	.db #0x30	; 48	'0'
   7021 4E                 5063 	.db #0x4E	; 78	'N'
   7022 30                 5064 	.db #0x30	; 48	'0'
   7023 98                 5065 	.db #0x98	; 152
   7024 30                 5066 	.db #0x30	; 48	'0'
   7025 30                 5067 	.db #0x30	; 48	'0'
   7026 98                 5068 	.db #0x98	; 152
   7027 98                 5069 	.db #0x98	; 152
   7028 25                 5070 	.db #0x25	; 37
   7029 30                 5071 	.db #0x30	; 48	'0'
   702A 30                 5072 	.db #0x30	; 48	'0'
   702B 4E                 5073 	.db #0x4E	; 78	'N'
   702C 30                 5074 	.db #0x30	; 48	'0'
   702D CC                 5075 	.db #0xCC	; 204
   702E 30                 5076 	.db #0x30	; 48	'0'
   702F 64                 5077 	.db #0x64	; 100	'd'
   7030 30                 5078 	.db #0x30	; 48	'0'
   7031 98                 5079 	.db #0x98	; 152
   7032 25                 5080 	.db #0x25	; 37
   7033 30                 5081 	.db #0x30	; 48	'0'
   7034 30                 5082 	.db #0x30	; 48	'0'
   7035 4E                 5083 	.db #0x4E	; 78	'N'
   7036 30                 5084 	.db #0x30	; 48	'0'
   7037 30                 5085 	.db #0x30	; 48	'0'
   7038 98                 5086 	.db #0x98	; 152
   7039 64                 5087 	.db #0x64	; 100	'd'
   703A 30                 5088 	.db #0x30	; 48	'0'
   703B CC                 5089 	.db #0xCC	; 204
   703C 25                 5090 	.db #0x25	; 37
   703D 30                 5091 	.db #0x30	; 48	'0'
   703E 30                 5092 	.db #0x30	; 48	'0'
   703F 4E                 5093 	.db #0x4E	; 78	'N'
   7040 30                 5094 	.db #0x30	; 48	'0'
   7041 30                 5095 	.db #0x30	; 48	'0'
   7042 98                 5096 	.db #0x98	; 152
   7043 30                 5097 	.db #0x30	; 48	'0'
   7044 98                 5098 	.db #0x98	; 152
   7045 98                 5099 	.db #0x98	; 152
   7046 8D                 5100 	.db #0x8D	; 141
   7047 30                 5101 	.db #0x30	; 48	'0'
   7048 30                 5102 	.db #0x30	; 48	'0'
   7049 4E                 5103 	.db #0x4E	; 78	'N'
   704A 30                 5104 	.db #0x30	; 48	'0'
   704B 30                 5105 	.db #0x30	; 48	'0'
   704C 98                 5106 	.db #0x98	; 152
   704D 98                 5107 	.db #0x98	; 152
   704E 98                 5108 	.db #0x98	; 152
   704F 98                 5109 	.db #0x98	; 152
   7050 8D                 5110 	.db #0x8D	; 141
   7051 30                 5111 	.db #0x30	; 48	'0'
   7052 30                 5112 	.db #0x30	; 48	'0'
   7053 CC                 5113 	.db #0xCC	; 204
   7054 98                 5114 	.db #0x98	; 152
   7055 CC                 5115 	.db #0xCC	; 204
   7056 30                 5116 	.db #0x30	; 48	'0'
   7057 64                 5117 	.db #0x64	; 100	'd'
   7058 30                 5118 	.db #0x30	; 48	'0'
   7059 64                 5119 	.db #0x64	; 100	'd'
   705A 25                 5120 	.db #0x25	; 37
   705B 30                 5121 	.db #0x30	; 48	'0'
   705C 30                 5122 	.db #0x30	; 48	'0'
   705D 1A                 5123 	.db #0x1A	; 26
   705E 30                 5124 	.db #0x30	; 48	'0'
   705F 30                 5125 	.db #0x30	; 48	'0'
   7060 30                 5126 	.db #0x30	; 48	'0'
   7061 30                 5127 	.db #0x30	; 48	'0'
   7062 30                 5128 	.db #0x30	; 48	'0'
   7063 30                 5129 	.db #0x30	; 48	'0'
   7064 25                 5130 	.db #0x25	; 37
   7065 30                 5131 	.db #0x30	; 48	'0'
   7066 30                 5132 	.db #0x30	; 48	'0'
   7067 1A                 5133 	.db #0x1A	; 26
   7068 30                 5134 	.db #0x30	; 48	'0'
   7069 30                 5135 	.db #0x30	; 48	'0'
   706A 30                 5136 	.db #0x30	; 48	'0'
   706B 30                 5137 	.db #0x30	; 48	'0'
   706C 30                 5138 	.db #0x30	; 48	'0'
   706D 30                 5139 	.db #0x30	; 48	'0'
   706E 25                 5140 	.db #0x25	; 37
   706F 30                 5141 	.db #0x30	; 48	'0'
   7070 30                 5142 	.db #0x30	; 48	'0'
   7071 1A                 5143 	.db #0x1A	; 26
   7072 30                 5144 	.db #0x30	; 48	'0'
   7073 30                 5145 	.db #0x30	; 48	'0'
   7074 30                 5146 	.db #0x30	; 48	'0'
   7075 30                 5147 	.db #0x30	; 48	'0'
   7076 30                 5148 	.db #0x30	; 48	'0'
   7077 30                 5149 	.db #0x30	; 48	'0'
   7078 25                 5150 	.db #0x25	; 37
   7079 30                 5151 	.db #0x30	; 48	'0'
   707A 30                 5152 	.db #0x30	; 48	'0'
   707B 1A                 5153 	.db #0x1A	; 26
   707C 30                 5154 	.db #0x30	; 48	'0'
   707D 30                 5155 	.db #0x30	; 48	'0'
   707E 30                 5156 	.db #0x30	; 48	'0'
   707F 30                 5157 	.db #0x30	; 48	'0'
   7080 30                 5158 	.db #0x30	; 48	'0'
   7081 30                 5159 	.db #0x30	; 48	'0'
   7082 25                 5160 	.db #0x25	; 37
   7083 30                 5161 	.db #0x30	; 48	'0'
   7084 30                 5162 	.db #0x30	; 48	'0'
   7085 1A                 5163 	.db #0x1A	; 26
   7086 30                 5164 	.db #0x30	; 48	'0'
   7087 30                 5165 	.db #0x30	; 48	'0'
   7088 30                 5166 	.db #0x30	; 48	'0'
   7089 30                 5167 	.db #0x30	; 48	'0'
   708A 30                 5168 	.db #0x30	; 48	'0'
   708B 30                 5169 	.db #0x30	; 48	'0'
   708C 25                 5170 	.db #0x25	; 37
   708D 30                 5171 	.db #0x30	; 48	'0'
   708E 30                 5172 	.db #0x30	; 48	'0'
   708F 1A                 5173 	.db #0x1A	; 26
   7090 30                 5174 	.db #0x30	; 48	'0'
   7091 30                 5175 	.db #0x30	; 48	'0'
   7092 30                 5176 	.db #0x30	; 48	'0'
   7093 30                 5177 	.db #0x30	; 48	'0'
   7094 30                 5178 	.db #0x30	; 48	'0'
   7095 30                 5179 	.db #0x30	; 48	'0'
   7096 25                 5180 	.db #0x25	; 37
   7097 30                 5181 	.db #0x30	; 48	'0'
   7098 30                 5182 	.db #0x30	; 48	'0'
   7099 1A                 5183 	.db #0x1A	; 26
   709A 30                 5184 	.db #0x30	; 48	'0'
   709B 30                 5185 	.db #0x30	; 48	'0'
   709C 30                 5186 	.db #0x30	; 48	'0'
   709D 30                 5187 	.db #0x30	; 48	'0'
   709E 30                 5188 	.db #0x30	; 48	'0'
   709F 30                 5189 	.db #0x30	; 48	'0'
   70A0 25                 5190 	.db #0x25	; 37
   70A1 30                 5191 	.db #0x30	; 48	'0'
   70A2 30                 5192 	.db #0x30	; 48	'0'
   70A3 1A                 5193 	.db #0x1A	; 26
   70A4 30                 5194 	.db #0x30	; 48	'0'
   70A5 30                 5195 	.db #0x30	; 48	'0'
   70A6 30                 5196 	.db #0x30	; 48	'0'
   70A7 30                 5197 	.db #0x30	; 48	'0'
   70A8 30                 5198 	.db #0x30	; 48	'0'
   70A9 30                 5199 	.db #0x30	; 48	'0'
   70AA 25                 5200 	.db #0x25	; 37
   70AB 30                 5201 	.db #0x30	; 48	'0'
   70AC 30                 5202 	.db #0x30	; 48	'0'
   70AD 1A                 5203 	.db #0x1A	; 26
   70AE 30                 5204 	.db #0x30	; 48	'0'
   70AF 30                 5205 	.db #0x30	; 48	'0'
   70B0 30                 5206 	.db #0x30	; 48	'0'
   70B1 30                 5207 	.db #0x30	; 48	'0'
   70B2 30                 5208 	.db #0x30	; 48	'0'
   70B3 30                 5209 	.db #0x30	; 48	'0'
   70B4 25                 5210 	.db #0x25	; 37
   70B5 30                 5211 	.db #0x30	; 48	'0'
   70B6 30                 5212 	.db #0x30	; 48	'0'
   70B7 1A                 5213 	.db #0x1A	; 26
   70B8 30                 5214 	.db #0x30	; 48	'0'
   70B9 30                 5215 	.db #0x30	; 48	'0'
   70BA 30                 5216 	.db #0x30	; 48	'0'
   70BB 30                 5217 	.db #0x30	; 48	'0'
   70BC 30                 5218 	.db #0x30	; 48	'0'
   70BD 30                 5219 	.db #0x30	; 48	'0'
   70BE 25                 5220 	.db #0x25	; 37
   70BF 30                 5221 	.db #0x30	; 48	'0'
   70C0 30                 5222 	.db #0x30	; 48	'0'
   70C1 0F                 5223 	.db #0x0F	; 15
   70C2 30                 5224 	.db #0x30	; 48	'0'
   70C3 30                 5225 	.db #0x30	; 48	'0'
   70C4 30                 5226 	.db #0x30	; 48	'0'
   70C5 30                 5227 	.db #0x30	; 48	'0'
   70C6 30                 5228 	.db #0x30	; 48	'0'
   70C7 30                 5229 	.db #0x30	; 48	'0'
   70C8 0F                 5230 	.db #0x0F	; 15
   70C9 30                 5231 	.db #0x30	; 48	'0'
   70CA 30                 5232 	.db #0x30	; 48	'0'
   70CB 25                 5233 	.db #0x25	; 37
   70CC 30                 5234 	.db #0x30	; 48	'0'
   70CD 30                 5235 	.db #0x30	; 48	'0'
   70CE 30                 5236 	.db #0x30	; 48	'0'
   70CF 30                 5237 	.db #0x30	; 48	'0'
   70D0 30                 5238 	.db #0x30	; 48	'0'
   70D1 30                 5239 	.db #0x30	; 48	'0'
   70D2 1A                 5240 	.db #0x1A	; 26
   70D3 30                 5241 	.db #0x30	; 48	'0'
   70D4 30                 5242 	.db #0x30	; 48	'0'
   70D5 25                 5243 	.db #0x25	; 37
   70D6 0F                 5244 	.db #0x0F	; 15
   70D7 0F                 5245 	.db #0x0F	; 15
   70D8 0F                 5246 	.db #0x0F	; 15
   70D9 0F                 5247 	.db #0x0F	; 15
   70DA 0F                 5248 	.db #0x0F	; 15
   70DB 0F                 5249 	.db #0x0F	; 15
   70DC 1A                 5250 	.db #0x1A	; 26
   70DD 30                 5251 	.db #0x30	; 48	'0'
   70DE F0                 5252 	.db #0xF0	; 240
   70DF 30                 5253 	.db #0x30	; 48	'0'
   70E0 30                 5254 	.db #0x30	; 48	'0'
   70E1 30                 5255 	.db #0x30	; 48	'0'
   70E2 30                 5256 	.db #0x30	; 48	'0'
   70E3 30                 5257 	.db #0x30	; 48	'0'
   70E4 30                 5258 	.db #0x30	; 48	'0'
   70E5 30                 5259 	.db #0x30	; 48	'0'
   70E6 30                 5260 	.db #0x30	; 48	'0'
   70E7 F0                 5261 	.db #0xF0	; 240
   70E8 F0                 5262 	.db #0xF0	; 240
   70E9 30                 5263 	.db #0x30	; 48	'0'
   70EA 30                 5264 	.db #0x30	; 48	'0'
   70EB 30                 5265 	.db #0x30	; 48	'0'
   70EC 30                 5266 	.db #0x30	; 48	'0'
   70ED 30                 5267 	.db #0x30	; 48	'0'
   70EE 30                 5268 	.db #0x30	; 48	'0'
   70EF 30                 5269 	.db #0x30	; 48	'0'
   70F0 30                 5270 	.db #0x30	; 48	'0'
   70F1 F0                 5271 	.db #0xF0	; 240
   70F2                    5272 _tile_tiles_13:
   70F2 F0                 5273 	.db #0xF0	; 240
   70F3 30                 5274 	.db #0x30	; 48	'0'
   70F4 30                 5275 	.db #0x30	; 48	'0'
   70F5 30                 5276 	.db #0x30	; 48	'0'
   70F6 30                 5277 	.db #0x30	; 48	'0'
   70F7 30                 5278 	.db #0x30	; 48	'0'
   70F8 30                 5279 	.db #0x30	; 48	'0'
   70F9 30                 5280 	.db #0x30	; 48	'0'
   70FA 30                 5281 	.db #0x30	; 48	'0'
   70FB F0                 5282 	.db #0xF0	; 240
   70FC F0                 5283 	.db #0xF0	; 240
   70FD 30                 5284 	.db #0x30	; 48	'0'
   70FE 30                 5285 	.db #0x30	; 48	'0'
   70FF 30                 5286 	.db #0x30	; 48	'0'
   7100 30                 5287 	.db #0x30	; 48	'0'
   7101 30                 5288 	.db #0x30	; 48	'0'
   7102 30                 5289 	.db #0x30	; 48	'0'
   7103 30                 5290 	.db #0x30	; 48	'0'
   7104 30                 5291 	.db #0x30	; 48	'0'
   7105 F0                 5292 	.db #0xF0	; 240
   7106 30                 5293 	.db #0x30	; 48	'0'
   7107 25                 5294 	.db #0x25	; 37
   7108 0F                 5295 	.db #0x0F	; 15
   7109 0F                 5296 	.db #0x0F	; 15
   710A 0F                 5297 	.db #0x0F	; 15
   710B 0F                 5298 	.db #0x0F	; 15
   710C 0F                 5299 	.db #0x0F	; 15
   710D 0F                 5300 	.db #0x0F	; 15
   710E 1A                 5301 	.db #0x1A	; 26
   710F 30                 5302 	.db #0x30	; 48	'0'
   7110 30                 5303 	.db #0x30	; 48	'0'
   7111 25                 5304 	.db #0x25	; 37
   7112 30                 5305 	.db #0x30	; 48	'0'
   7113 30                 5306 	.db #0x30	; 48	'0'
   7114 30                 5307 	.db #0x30	; 48	'0'
   7115 30                 5308 	.db #0x30	; 48	'0'
   7116 30                 5309 	.db #0x30	; 48	'0'
   7117 30                 5310 	.db #0x30	; 48	'0'
   7118 1A                 5311 	.db #0x1A	; 26
   7119 30                 5312 	.db #0x30	; 48	'0'
   711A 30                 5313 	.db #0x30	; 48	'0'
   711B 0F                 5314 	.db #0x0F	; 15
   711C 30                 5315 	.db #0x30	; 48	'0'
   711D 30                 5316 	.db #0x30	; 48	'0'
   711E 30                 5317 	.db #0x30	; 48	'0'
   711F 30                 5318 	.db #0x30	; 48	'0'
   7120 30                 5319 	.db #0x30	; 48	'0'
   7121 30                 5320 	.db #0x30	; 48	'0'
   7122 0F                 5321 	.db #0x0F	; 15
   7123 30                 5322 	.db #0x30	; 48	'0'
   7124 30                 5323 	.db #0x30	; 48	'0'
   7125 1A                 5324 	.db #0x1A	; 26
   7126 30                 5325 	.db #0x30	; 48	'0'
   7127 30                 5326 	.db #0x30	; 48	'0'
   7128 30                 5327 	.db #0x30	; 48	'0'
   7129 30                 5328 	.db #0x30	; 48	'0'
   712A 30                 5329 	.db #0x30	; 48	'0'
   712B 30                 5330 	.db #0x30	; 48	'0'
   712C 25                 5331 	.db #0x25	; 37
   712D 30                 5332 	.db #0x30	; 48	'0'
   712E 30                 5333 	.db #0x30	; 48	'0'
   712F 1A                 5334 	.db #0x1A	; 26
   7130 30                 5335 	.db #0x30	; 48	'0'
   7131 30                 5336 	.db #0x30	; 48	'0'
   7132 30                 5337 	.db #0x30	; 48	'0'
   7133 30                 5338 	.db #0x30	; 48	'0'
   7134 30                 5339 	.db #0x30	; 48	'0'
   7135 30                 5340 	.db #0x30	; 48	'0'
   7136 25                 5341 	.db #0x25	; 37
   7137 30                 5342 	.db #0x30	; 48	'0'
   7138 30                 5343 	.db #0x30	; 48	'0'
   7139 1A                 5344 	.db #0x1A	; 26
   713A 30                 5345 	.db #0x30	; 48	'0'
   713B 30                 5346 	.db #0x30	; 48	'0'
   713C 30                 5347 	.db #0x30	; 48	'0'
   713D 30                 5348 	.db #0x30	; 48	'0'
   713E 30                 5349 	.db #0x30	; 48	'0'
   713F 30                 5350 	.db #0x30	; 48	'0'
   7140 25                 5351 	.db #0x25	; 37
   7141 30                 5352 	.db #0x30	; 48	'0'
   7142 30                 5353 	.db #0x30	; 48	'0'
   7143 1A                 5354 	.db #0x1A	; 26
   7144 30                 5355 	.db #0x30	; 48	'0'
   7145 30                 5356 	.db #0x30	; 48	'0'
   7146 30                 5357 	.db #0x30	; 48	'0'
   7147 30                 5358 	.db #0x30	; 48	'0'
   7148 30                 5359 	.db #0x30	; 48	'0'
   7149 30                 5360 	.db #0x30	; 48	'0'
   714A 25                 5361 	.db #0x25	; 37
   714B 30                 5362 	.db #0x30	; 48	'0'
   714C 30                 5363 	.db #0x30	; 48	'0'
   714D 1A                 5364 	.db #0x1A	; 26
   714E 30                 5365 	.db #0x30	; 48	'0'
   714F 30                 5366 	.db #0x30	; 48	'0'
   7150 30                 5367 	.db #0x30	; 48	'0'
   7151 30                 5368 	.db #0x30	; 48	'0'
   7152 30                 5369 	.db #0x30	; 48	'0'
   7153 30                 5370 	.db #0x30	; 48	'0'
   7154 25                 5371 	.db #0x25	; 37
   7155 30                 5372 	.db #0x30	; 48	'0'
   7156 30                 5373 	.db #0x30	; 48	'0'
   7157 1A                 5374 	.db #0x1A	; 26
   7158 30                 5375 	.db #0x30	; 48	'0'
   7159 30                 5376 	.db #0x30	; 48	'0'
   715A 30                 5377 	.db #0x30	; 48	'0'
   715B 30                 5378 	.db #0x30	; 48	'0'
   715C 30                 5379 	.db #0x30	; 48	'0'
   715D 30                 5380 	.db #0x30	; 48	'0'
   715E 25                 5381 	.db #0x25	; 37
   715F 30                 5382 	.db #0x30	; 48	'0'
   7160 30                 5383 	.db #0x30	; 48	'0'
   7161 1A                 5384 	.db #0x1A	; 26
   7162 30                 5385 	.db #0x30	; 48	'0'
   7163 30                 5386 	.db #0x30	; 48	'0'
   7164 30                 5387 	.db #0x30	; 48	'0'
   7165 30                 5388 	.db #0x30	; 48	'0'
   7166 30                 5389 	.db #0x30	; 48	'0'
   7167 30                 5390 	.db #0x30	; 48	'0'
   7168 25                 5391 	.db #0x25	; 37
   7169 30                 5392 	.db #0x30	; 48	'0'
   716A 30                 5393 	.db #0x30	; 48	'0'
   716B 1A                 5394 	.db #0x1A	; 26
   716C 30                 5395 	.db #0x30	; 48	'0'
   716D 30                 5396 	.db #0x30	; 48	'0'
   716E 30                 5397 	.db #0x30	; 48	'0'
   716F 30                 5398 	.db #0x30	; 48	'0'
   7170 30                 5399 	.db #0x30	; 48	'0'
   7171 30                 5400 	.db #0x30	; 48	'0'
   7172 25                 5401 	.db #0x25	; 37
   7173 30                 5402 	.db #0x30	; 48	'0'
   7174 30                 5403 	.db #0x30	; 48	'0'
   7175 1A                 5404 	.db #0x1A	; 26
   7176 30                 5405 	.db #0x30	; 48	'0'
   7177 30                 5406 	.db #0x30	; 48	'0'
   7178 30                 5407 	.db #0x30	; 48	'0'
   7179 30                 5408 	.db #0x30	; 48	'0'
   717A 30                 5409 	.db #0x30	; 48	'0'
   717B 30                 5410 	.db #0x30	; 48	'0'
   717C 25                 5411 	.db #0x25	; 37
   717D 30                 5412 	.db #0x30	; 48	'0'
   717E 30                 5413 	.db #0x30	; 48	'0'
   717F 1A                 5414 	.db #0x1A	; 26
   7180 30                 5415 	.db #0x30	; 48	'0'
   7181 30                 5416 	.db #0x30	; 48	'0'
   7182 30                 5417 	.db #0x30	; 48	'0'
   7183 30                 5418 	.db #0x30	; 48	'0'
   7184 30                 5419 	.db #0x30	; 48	'0'
   7185 30                 5420 	.db #0x30	; 48	'0'
   7186 25                 5421 	.db #0x25	; 37
   7187 30                 5422 	.db #0x30	; 48	'0'
   7188 30                 5423 	.db #0x30	; 48	'0'
   7189 1A                 5424 	.db #0x1A	; 26
   718A 30                 5425 	.db #0x30	; 48	'0'
   718B 30                 5426 	.db #0x30	; 48	'0'
   718C 30                 5427 	.db #0x30	; 48	'0'
   718D 30                 5428 	.db #0x30	; 48	'0'
   718E 30                 5429 	.db #0x30	; 48	'0'
   718F 30                 5430 	.db #0x30	; 48	'0'
   7190 25                 5431 	.db #0x25	; 37
   7191 30                 5432 	.db #0x30	; 48	'0'
   7192 30                 5433 	.db #0x30	; 48	'0'
   7193 1A                 5434 	.db #0x1A	; 26
   7194 30                 5435 	.db #0x30	; 48	'0'
   7195 30                 5436 	.db #0x30	; 48	'0'
   7196 30                 5437 	.db #0x30	; 48	'0'
   7197 30                 5438 	.db #0x30	; 48	'0'
   7198 30                 5439 	.db #0x30	; 48	'0'
   7199 30                 5440 	.db #0x30	; 48	'0'
   719A 25                 5441 	.db #0x25	; 37
   719B 30                 5442 	.db #0x30	; 48	'0'
   719C 30                 5443 	.db #0x30	; 48	'0'
   719D 4E                 5444 	.db #0x4E	; 78	'N'
   719E 30                 5445 	.db #0x30	; 48	'0'
   719F 64                 5446 	.db #0x64	; 100	'd'
   71A0 30                 5447 	.db #0x30	; 48	'0'
   71A1 CC                 5448 	.db #0xCC	; 204
   71A2 98                 5449 	.db #0x98	; 152
   71A3 64                 5450 	.db #0x64	; 100	'd'
   71A4 25                 5451 	.db #0x25	; 37
   71A5 30                 5452 	.db #0x30	; 48	'0'
   71A6 30                 5453 	.db #0x30	; 48	'0'
   71A7 98                 5454 	.db #0x98	; 152
   71A8 98                 5455 	.db #0x98	; 152
   71A9 98                 5456 	.db #0x98	; 152
   71AA 98                 5457 	.db #0x98	; 152
   71AB 30                 5458 	.db #0x30	; 48	'0'
   71AC 98                 5459 	.db #0x98	; 152
   71AD 98                 5460 	.db #0x98	; 152
   71AE 8D                 5461 	.db #0x8D	; 141
   71AF 30                 5462 	.db #0x30	; 48	'0'
   71B0 30                 5463 	.db #0x30	; 48	'0'
   71B1 1A                 5464 	.db #0x1A	; 26
   71B2 98                 5465 	.db #0x98	; 152
   71B3 98                 5466 	.db #0x98	; 152
   71B4 98                 5467 	.db #0x98	; 152
   71B5 30                 5468 	.db #0x30	; 48	'0'
   71B6 98                 5469 	.db #0x98	; 152
   71B7 30                 5470 	.db #0x30	; 48	'0'
   71B8 8D                 5471 	.db #0x8D	; 141
   71B9 30                 5472 	.db #0x30	; 48	'0'
   71BA 30                 5473 	.db #0x30	; 48	'0'
   71BB 4E                 5474 	.db #0x4E	; 78	'N'
   71BC 30                 5475 	.db #0x30	; 48	'0'
   71BD 98                 5476 	.db #0x98	; 152
   71BE 98                 5477 	.db #0x98	; 152
   71BF 30                 5478 	.db #0x30	; 48	'0'
   71C0 98                 5479 	.db #0x98	; 152
   71C1 64                 5480 	.db #0x64	; 100	'd'
   71C2 25                 5481 	.db #0x25	; 37
   71C3 30                 5482 	.db #0x30	; 48	'0'
   71C4 30                 5483 	.db #0x30	; 48	'0'
   71C5 4E                 5484 	.db #0x4E	; 78	'N'
   71C6 30                 5485 	.db #0x30	; 48	'0'
   71C7 98                 5486 	.db #0x98	; 152
   71C8 98                 5487 	.db #0x98	; 152
   71C9 64                 5488 	.db #0x64	; 100	'd'
   71CA 30                 5489 	.db #0x30	; 48	'0'
   71CB 64                 5490 	.db #0x64	; 100	'd'
   71CC 25                 5491 	.db #0x25	; 37
   71CD 30                 5492 	.db #0x30	; 48	'0'
   71CE 30                 5493 	.db #0x30	; 48	'0'
   71CF 1A                 5494 	.db #0x1A	; 26
   71D0 98                 5495 	.db #0x98	; 152
   71D1 98                 5496 	.db #0x98	; 152
   71D2 98                 5497 	.db #0x98	; 152
   71D3 64                 5498 	.db #0x64	; 100	'd'
   71D4 30                 5499 	.db #0x30	; 48	'0'
   71D5 98                 5500 	.db #0x98	; 152
   71D6 25                 5501 	.db #0x25	; 37
   71D7 30                 5502 	.db #0x30	; 48	'0'
   71D8 30                 5503 	.db #0x30	; 48	'0'
   71D9 98                 5504 	.db #0x98	; 152
   71DA 98                 5505 	.db #0x98	; 152
   71DB 98                 5506 	.db #0x98	; 152
   71DC 98                 5507 	.db #0x98	; 152
   71DD 64                 5508 	.db #0x64	; 100	'd'
   71DE 30                 5509 	.db #0x30	; 48	'0'
   71DF 98                 5510 	.db #0x98	; 152
   71E0 25                 5511 	.db #0x25	; 37
   71E1 30                 5512 	.db #0x30	; 48	'0'
   71E2 30                 5513 	.db #0x30	; 48	'0'
   71E3 4E                 5514 	.db #0x4E	; 78	'N'
   71E4 30                 5515 	.db #0x30	; 48	'0'
   71E5 64                 5516 	.db #0x64	; 100	'd'
   71E6 30                 5517 	.db #0x30	; 48	'0'
   71E7 64                 5518 	.db #0x64	; 100	'd'
   71E8 30                 5519 	.db #0x30	; 48	'0'
   71E9 CC                 5520 	.db #0xCC	; 204
   71EA 8D                 5521 	.db #0x8D	; 141
   71EB 30                 5522 	.db #0x30	; 48	'0'
   71EC 30                 5523 	.db #0x30	; 48	'0'
   71ED 1A                 5524 	.db #0x1A	; 26
   71EE 30                 5525 	.db #0x30	; 48	'0'
   71EF 30                 5526 	.db #0x30	; 48	'0'
   71F0 30                 5527 	.db #0x30	; 48	'0'
   71F1 30                 5528 	.db #0x30	; 48	'0'
   71F2 30                 5529 	.db #0x30	; 48	'0'
   71F3 30                 5530 	.db #0x30	; 48	'0'
   71F4 25                 5531 	.db #0x25	; 37
   71F5 30                 5532 	.db #0x30	; 48	'0'
   71F6 30                 5533 	.db #0x30	; 48	'0'
   71F7 1A                 5534 	.db #0x1A	; 26
   71F8 30                 5535 	.db #0x30	; 48	'0'
   71F9 30                 5536 	.db #0x30	; 48	'0'
   71FA 30                 5537 	.db #0x30	; 48	'0'
   71FB 30                 5538 	.db #0x30	; 48	'0'
   71FC 30                 5539 	.db #0x30	; 48	'0'
   71FD 30                 5540 	.db #0x30	; 48	'0'
   71FE 25                 5541 	.db #0x25	; 37
   71FF 30                 5542 	.db #0x30	; 48	'0'
   7200 30                 5543 	.db #0x30	; 48	'0'
   7201 1A                 5544 	.db #0x1A	; 26
   7202 30                 5545 	.db #0x30	; 48	'0'
   7203 30                 5546 	.db #0x30	; 48	'0'
   7204 30                 5547 	.db #0x30	; 48	'0'
   7205 30                 5548 	.db #0x30	; 48	'0'
   7206 30                 5549 	.db #0x30	; 48	'0'
   7207 30                 5550 	.db #0x30	; 48	'0'
   7208 25                 5551 	.db #0x25	; 37
   7209 30                 5552 	.db #0x30	; 48	'0'
   720A 30                 5553 	.db #0x30	; 48	'0'
   720B 1A                 5554 	.db #0x1A	; 26
   720C 30                 5555 	.db #0x30	; 48	'0'
   720D 30                 5556 	.db #0x30	; 48	'0'
   720E 30                 5557 	.db #0x30	; 48	'0'
   720F 30                 5558 	.db #0x30	; 48	'0'
   7210 30                 5559 	.db #0x30	; 48	'0'
   7211 30                 5560 	.db #0x30	; 48	'0'
   7212 25                 5561 	.db #0x25	; 37
   7213 30                 5562 	.db #0x30	; 48	'0'
   7214 30                 5563 	.db #0x30	; 48	'0'
   7215 1A                 5564 	.db #0x1A	; 26
   7216 30                 5565 	.db #0x30	; 48	'0'
   7217 30                 5566 	.db #0x30	; 48	'0'
   7218 30                 5567 	.db #0x30	; 48	'0'
   7219 30                 5568 	.db #0x30	; 48	'0'
   721A 30                 5569 	.db #0x30	; 48	'0'
   721B 30                 5570 	.db #0x30	; 48	'0'
   721C 25                 5571 	.db #0x25	; 37
   721D 30                 5572 	.db #0x30	; 48	'0'
   721E 30                 5573 	.db #0x30	; 48	'0'
   721F 1A                 5574 	.db #0x1A	; 26
   7220 30                 5575 	.db #0x30	; 48	'0'
   7221 30                 5576 	.db #0x30	; 48	'0'
   7222 30                 5577 	.db #0x30	; 48	'0'
   7223 30                 5578 	.db #0x30	; 48	'0'
   7224 30                 5579 	.db #0x30	; 48	'0'
   7225 30                 5580 	.db #0x30	; 48	'0'
   7226 25                 5581 	.db #0x25	; 37
   7227 30                 5582 	.db #0x30	; 48	'0'
   7228 30                 5583 	.db #0x30	; 48	'0'
   7229 1A                 5584 	.db #0x1A	; 26
   722A 30                 5585 	.db #0x30	; 48	'0'
   722B 30                 5586 	.db #0x30	; 48	'0'
   722C 30                 5587 	.db #0x30	; 48	'0'
   722D 30                 5588 	.db #0x30	; 48	'0'
   722E 30                 5589 	.db #0x30	; 48	'0'
   722F 30                 5590 	.db #0x30	; 48	'0'
   7230 25                 5591 	.db #0x25	; 37
   7231 30                 5592 	.db #0x30	; 48	'0'
   7232 30                 5593 	.db #0x30	; 48	'0'
   7233 1A                 5594 	.db #0x1A	; 26
   7234 30                 5595 	.db #0x30	; 48	'0'
   7235 30                 5596 	.db #0x30	; 48	'0'
   7236 30                 5597 	.db #0x30	; 48	'0'
   7237 30                 5598 	.db #0x30	; 48	'0'
   7238 30                 5599 	.db #0x30	; 48	'0'
   7239 30                 5600 	.db #0x30	; 48	'0'
   723A 25                 5601 	.db #0x25	; 37
   723B 30                 5602 	.db #0x30	; 48	'0'
   723C 30                 5603 	.db #0x30	; 48	'0'
   723D 1A                 5604 	.db #0x1A	; 26
   723E 30                 5605 	.db #0x30	; 48	'0'
   723F 30                 5606 	.db #0x30	; 48	'0'
   7240 30                 5607 	.db #0x30	; 48	'0'
   7241 30                 5608 	.db #0x30	; 48	'0'
   7242 30                 5609 	.db #0x30	; 48	'0'
   7243 30                 5610 	.db #0x30	; 48	'0'
   7244 25                 5611 	.db #0x25	; 37
   7245 30                 5612 	.db #0x30	; 48	'0'
   7246 30                 5613 	.db #0x30	; 48	'0'
   7247 1A                 5614 	.db #0x1A	; 26
   7248 30                 5615 	.db #0x30	; 48	'0'
   7249 30                 5616 	.db #0x30	; 48	'0'
   724A 30                 5617 	.db #0x30	; 48	'0'
   724B 30                 5618 	.db #0x30	; 48	'0'
   724C 30                 5619 	.db #0x30	; 48	'0'
   724D 30                 5620 	.db #0x30	; 48	'0'
   724E 25                 5621 	.db #0x25	; 37
   724F 30                 5622 	.db #0x30	; 48	'0'
   7250 30                 5623 	.db #0x30	; 48	'0'
   7251 0F                 5624 	.db #0x0F	; 15
   7252 30                 5625 	.db #0x30	; 48	'0'
   7253 30                 5626 	.db #0x30	; 48	'0'
   7254 30                 5627 	.db #0x30	; 48	'0'
   7255 30                 5628 	.db #0x30	; 48	'0'
   7256 30                 5629 	.db #0x30	; 48	'0'
   7257 30                 5630 	.db #0x30	; 48	'0'
   7258 0F                 5631 	.db #0x0F	; 15
   7259 30                 5632 	.db #0x30	; 48	'0'
   725A 30                 5633 	.db #0x30	; 48	'0'
   725B 25                 5634 	.db #0x25	; 37
   725C 30                 5635 	.db #0x30	; 48	'0'
   725D 30                 5636 	.db #0x30	; 48	'0'
   725E 30                 5637 	.db #0x30	; 48	'0'
   725F 30                 5638 	.db #0x30	; 48	'0'
   7260 30                 5639 	.db #0x30	; 48	'0'
   7261 30                 5640 	.db #0x30	; 48	'0'
   7262 1A                 5641 	.db #0x1A	; 26
   7263 30                 5642 	.db #0x30	; 48	'0'
   7264 30                 5643 	.db #0x30	; 48	'0'
   7265 25                 5644 	.db #0x25	; 37
   7266 0F                 5645 	.db #0x0F	; 15
   7267 0F                 5646 	.db #0x0F	; 15
   7268 0F                 5647 	.db #0x0F	; 15
   7269 0F                 5648 	.db #0x0F	; 15
   726A 0F                 5649 	.db #0x0F	; 15
   726B 0F                 5650 	.db #0x0F	; 15
   726C 1A                 5651 	.db #0x1A	; 26
   726D 30                 5652 	.db #0x30	; 48	'0'
   726E F0                 5653 	.db #0xF0	; 240
   726F 30                 5654 	.db #0x30	; 48	'0'
   7270 30                 5655 	.db #0x30	; 48	'0'
   7271 30                 5656 	.db #0x30	; 48	'0'
   7272 30                 5657 	.db #0x30	; 48	'0'
   7273 30                 5658 	.db #0x30	; 48	'0'
   7274 30                 5659 	.db #0x30	; 48	'0'
   7275 30                 5660 	.db #0x30	; 48	'0'
   7276 30                 5661 	.db #0x30	; 48	'0'
   7277 F0                 5662 	.db #0xF0	; 240
   7278 F0                 5663 	.db #0xF0	; 240
   7279 30                 5664 	.db #0x30	; 48	'0'
   727A 30                 5665 	.db #0x30	; 48	'0'
   727B 30                 5666 	.db #0x30	; 48	'0'
   727C 30                 5667 	.db #0x30	; 48	'0'
   727D 30                 5668 	.db #0x30	; 48	'0'
   727E 30                 5669 	.db #0x30	; 48	'0'
   727F 30                 5670 	.db #0x30	; 48	'0'
   7280 30                 5671 	.db #0x30	; 48	'0'
   7281 F0                 5672 	.db #0xF0	; 240
   7282                    5673 _tile_tiles_14:
   7282 F0                 5674 	.db #0xF0	; 240
   7283 30                 5675 	.db #0x30	; 48	'0'
   7284 30                 5676 	.db #0x30	; 48	'0'
   7285 30                 5677 	.db #0x30	; 48	'0'
   7286 30                 5678 	.db #0x30	; 48	'0'
   7287 30                 5679 	.db #0x30	; 48	'0'
   7288 30                 5680 	.db #0x30	; 48	'0'
   7289 30                 5681 	.db #0x30	; 48	'0'
   728A 30                 5682 	.db #0x30	; 48	'0'
   728B F0                 5683 	.db #0xF0	; 240
   728C F0                 5684 	.db #0xF0	; 240
   728D 30                 5685 	.db #0x30	; 48	'0'
   728E 30                 5686 	.db #0x30	; 48	'0'
   728F 30                 5687 	.db #0x30	; 48	'0'
   7290 30                 5688 	.db #0x30	; 48	'0'
   7291 30                 5689 	.db #0x30	; 48	'0'
   7292 30                 5690 	.db #0x30	; 48	'0'
   7293 30                 5691 	.db #0x30	; 48	'0'
   7294 30                 5692 	.db #0x30	; 48	'0'
   7295 F0                 5693 	.db #0xF0	; 240
   7296 30                 5694 	.db #0x30	; 48	'0'
   7297 25                 5695 	.db #0x25	; 37
   7298 0F                 5696 	.db #0x0F	; 15
   7299 0F                 5697 	.db #0x0F	; 15
   729A 0F                 5698 	.db #0x0F	; 15
   729B 0F                 5699 	.db #0x0F	; 15
   729C 0F                 5700 	.db #0x0F	; 15
   729D 0F                 5701 	.db #0x0F	; 15
   729E 1A                 5702 	.db #0x1A	; 26
   729F 30                 5703 	.db #0x30	; 48	'0'
   72A0 30                 5704 	.db #0x30	; 48	'0'
   72A1 25                 5705 	.db #0x25	; 37
   72A2 30                 5706 	.db #0x30	; 48	'0'
   72A3 30                 5707 	.db #0x30	; 48	'0'
   72A4 30                 5708 	.db #0x30	; 48	'0'
   72A5 30                 5709 	.db #0x30	; 48	'0'
   72A6 30                 5710 	.db #0x30	; 48	'0'
   72A7 30                 5711 	.db #0x30	; 48	'0'
   72A8 1A                 5712 	.db #0x1A	; 26
   72A9 30                 5713 	.db #0x30	; 48	'0'
   72AA 30                 5714 	.db #0x30	; 48	'0'
   72AB 0F                 5715 	.db #0x0F	; 15
   72AC 30                 5716 	.db #0x30	; 48	'0'
   72AD 30                 5717 	.db #0x30	; 48	'0'
   72AE 30                 5718 	.db #0x30	; 48	'0'
   72AF 30                 5719 	.db #0x30	; 48	'0'
   72B0 30                 5720 	.db #0x30	; 48	'0'
   72B1 30                 5721 	.db #0x30	; 48	'0'
   72B2 0F                 5722 	.db #0x0F	; 15
   72B3 30                 5723 	.db #0x30	; 48	'0'
   72B4 30                 5724 	.db #0x30	; 48	'0'
   72B5 1A                 5725 	.db #0x1A	; 26
   72B6 30                 5726 	.db #0x30	; 48	'0'
   72B7 30                 5727 	.db #0x30	; 48	'0'
   72B8 30                 5728 	.db #0x30	; 48	'0'
   72B9 30                 5729 	.db #0x30	; 48	'0'
   72BA 30                 5730 	.db #0x30	; 48	'0'
   72BB 30                 5731 	.db #0x30	; 48	'0'
   72BC 25                 5732 	.db #0x25	; 37
   72BD 30                 5733 	.db #0x30	; 48	'0'
   72BE 30                 5734 	.db #0x30	; 48	'0'
   72BF 1A                 5735 	.db #0x1A	; 26
   72C0 30                 5736 	.db #0x30	; 48	'0'
   72C1 30                 5737 	.db #0x30	; 48	'0'
   72C2 30                 5738 	.db #0x30	; 48	'0'
   72C3 30                 5739 	.db #0x30	; 48	'0'
   72C4 30                 5740 	.db #0x30	; 48	'0'
   72C5 30                 5741 	.db #0x30	; 48	'0'
   72C6 25                 5742 	.db #0x25	; 37
   72C7 30                 5743 	.db #0x30	; 48	'0'
   72C8 30                 5744 	.db #0x30	; 48	'0'
   72C9 1A                 5745 	.db #0x1A	; 26
   72CA 30                 5746 	.db #0x30	; 48	'0'
   72CB 30                 5747 	.db #0x30	; 48	'0'
   72CC 30                 5748 	.db #0x30	; 48	'0'
   72CD 30                 5749 	.db #0x30	; 48	'0'
   72CE 30                 5750 	.db #0x30	; 48	'0'
   72CF 30                 5751 	.db #0x30	; 48	'0'
   72D0 25                 5752 	.db #0x25	; 37
   72D1 30                 5753 	.db #0x30	; 48	'0'
   72D2 30                 5754 	.db #0x30	; 48	'0'
   72D3 1A                 5755 	.db #0x1A	; 26
   72D4 30                 5756 	.db #0x30	; 48	'0'
   72D5 30                 5757 	.db #0x30	; 48	'0'
   72D6 30                 5758 	.db #0x30	; 48	'0'
   72D7 30                 5759 	.db #0x30	; 48	'0'
   72D8 30                 5760 	.db #0x30	; 48	'0'
   72D9 30                 5761 	.db #0x30	; 48	'0'
   72DA 25                 5762 	.db #0x25	; 37
   72DB 30                 5763 	.db #0x30	; 48	'0'
   72DC 30                 5764 	.db #0x30	; 48	'0'
   72DD 1A                 5765 	.db #0x1A	; 26
   72DE 30                 5766 	.db #0x30	; 48	'0'
   72DF 30                 5767 	.db #0x30	; 48	'0'
   72E0 30                 5768 	.db #0x30	; 48	'0'
   72E1 30                 5769 	.db #0x30	; 48	'0'
   72E2 30                 5770 	.db #0x30	; 48	'0'
   72E3 30                 5771 	.db #0x30	; 48	'0'
   72E4 25                 5772 	.db #0x25	; 37
   72E5 30                 5773 	.db #0x30	; 48	'0'
   72E6 30                 5774 	.db #0x30	; 48	'0'
   72E7 1A                 5775 	.db #0x1A	; 26
   72E8 30                 5776 	.db #0x30	; 48	'0'
   72E9 30                 5777 	.db #0x30	; 48	'0'
   72EA 30                 5778 	.db #0x30	; 48	'0'
   72EB 30                 5779 	.db #0x30	; 48	'0'
   72EC 30                 5780 	.db #0x30	; 48	'0'
   72ED 30                 5781 	.db #0x30	; 48	'0'
   72EE 25                 5782 	.db #0x25	; 37
   72EF 30                 5783 	.db #0x30	; 48	'0'
   72F0 30                 5784 	.db #0x30	; 48	'0'
   72F1 1A                 5785 	.db #0x1A	; 26
   72F2 30                 5786 	.db #0x30	; 48	'0'
   72F3 30                 5787 	.db #0x30	; 48	'0'
   72F4 30                 5788 	.db #0x30	; 48	'0'
   72F5 30                 5789 	.db #0x30	; 48	'0'
   72F6 30                 5790 	.db #0x30	; 48	'0'
   72F7 30                 5791 	.db #0x30	; 48	'0'
   72F8 25                 5792 	.db #0x25	; 37
   72F9 30                 5793 	.db #0x30	; 48	'0'
   72FA 30                 5794 	.db #0x30	; 48	'0'
   72FB 1A                 5795 	.db #0x1A	; 26
   72FC 30                 5796 	.db #0x30	; 48	'0'
   72FD 30                 5797 	.db #0x30	; 48	'0'
   72FE 30                 5798 	.db #0x30	; 48	'0'
   72FF 30                 5799 	.db #0x30	; 48	'0'
   7300 30                 5800 	.db #0x30	; 48	'0'
   7301 30                 5801 	.db #0x30	; 48	'0'
   7302 25                 5802 	.db #0x25	; 37
   7303 30                 5803 	.db #0x30	; 48	'0'
   7304 30                 5804 	.db #0x30	; 48	'0'
   7305 1A                 5805 	.db #0x1A	; 26
   7306 30                 5806 	.db #0x30	; 48	'0'
   7307 30                 5807 	.db #0x30	; 48	'0'
   7308 30                 5808 	.db #0x30	; 48	'0'
   7309 30                 5809 	.db #0x30	; 48	'0'
   730A 30                 5810 	.db #0x30	; 48	'0'
   730B 30                 5811 	.db #0x30	; 48	'0'
   730C 25                 5812 	.db #0x25	; 37
   730D 30                 5813 	.db #0x30	; 48	'0'
   730E 30                 5814 	.db #0x30	; 48	'0'
   730F 1A                 5815 	.db #0x1A	; 26
   7310 30                 5816 	.db #0x30	; 48	'0'
   7311 30                 5817 	.db #0x30	; 48	'0'
   7312 30                 5818 	.db #0x30	; 48	'0'
   7313 30                 5819 	.db #0x30	; 48	'0'
   7314 30                 5820 	.db #0x30	; 48	'0'
   7315 30                 5821 	.db #0x30	; 48	'0'
   7316 25                 5822 	.db #0x25	; 37
   7317 30                 5823 	.db #0x30	; 48	'0'
   7318 30                 5824 	.db #0x30	; 48	'0'
   7319 1A                 5825 	.db #0x1A	; 26
   731A 30                 5826 	.db #0x30	; 48	'0'
   731B 30                 5827 	.db #0x30	; 48	'0'
   731C 30                 5828 	.db #0x30	; 48	'0'
   731D 30                 5829 	.db #0x30	; 48	'0'
   731E 30                 5830 	.db #0x30	; 48	'0'
   731F 30                 5831 	.db #0x30	; 48	'0'
   7320 25                 5832 	.db #0x25	; 37
   7321 30                 5833 	.db #0x30	; 48	'0'
   7322 30                 5834 	.db #0x30	; 48	'0'
   7323 1A                 5835 	.db #0x1A	; 26
   7324 30                 5836 	.db #0x30	; 48	'0'
   7325 30                 5837 	.db #0x30	; 48	'0'
   7326 30                 5838 	.db #0x30	; 48	'0'
   7327 30                 5839 	.db #0x30	; 48	'0'
   7328 30                 5840 	.db #0x30	; 48	'0'
   7329 30                 5841 	.db #0x30	; 48	'0'
   732A 25                 5842 	.db #0x25	; 37
   732B 30                 5843 	.db #0x30	; 48	'0'
   732C 30                 5844 	.db #0x30	; 48	'0'
   732D 4E                 5845 	.db #0x4E	; 78	'N'
   732E 98                 5846 	.db #0x98	; 152
   732F 64                 5847 	.db #0x64	; 100	'd'
   7330 30                 5848 	.db #0x30	; 48	'0'
   7331 30                 5849 	.db #0x30	; 48	'0'
   7332 98                 5850 	.db #0x98	; 152
   7333 30                 5851 	.db #0x30	; 48	'0'
   7334 8D                 5852 	.db #0x8D	; 141
   7335 30                 5853 	.db #0x30	; 48	'0'
   7336 30                 5854 	.db #0x30	; 48	'0'
   7337 98                 5855 	.db #0x98	; 152
   7338 30                 5856 	.db #0x30	; 48	'0'
   7339 CC                 5857 	.db #0xCC	; 204
   733A 30                 5858 	.db #0x30	; 48	'0'
   733B 64                 5859 	.db #0x64	; 100	'd'
   733C 98                 5860 	.db #0x98	; 152
   733D 64                 5861 	.db #0x64	; 100	'd'
   733E 8D                 5862 	.db #0x8D	; 141
   733F 30                 5863 	.db #0x30	; 48	'0'
   7340 30                 5864 	.db #0x30	; 48	'0'
   7341 98                 5865 	.db #0x98	; 152
   7342 30                 5866 	.db #0x30	; 48	'0'
   7343 64                 5867 	.db #0x64	; 100	'd'
   7344 30                 5868 	.db #0x30	; 48	'0'
   7345 64                 5869 	.db #0x64	; 100	'd'
   7346 98                 5870 	.db #0x98	; 152
   7347 64                 5871 	.db #0x64	; 100	'd'
   7348 8D                 5872 	.db #0x8D	; 141
   7349 30                 5873 	.db #0x30	; 48	'0'
   734A 30                 5874 	.db #0x30	; 48	'0'
   734B CC                 5875 	.db #0xCC	; 204
   734C 30                 5876 	.db #0x30	; 48	'0'
   734D 64                 5877 	.db #0x64	; 100	'd'
   734E 30                 5878 	.db #0x30	; 48	'0'
   734F 98                 5879 	.db #0x98	; 152
   7350 98                 5880 	.db #0x98	; 152
   7351 98                 5881 	.db #0x98	; 152
   7352 8D                 5882 	.db #0x8D	; 141
   7353 30                 5883 	.db #0x30	; 48	'0'
   7354 30                 5884 	.db #0x30	; 48	'0'
   7355 98                 5885 	.db #0x98	; 152
   7356 98                 5886 	.db #0x98	; 152
   7357 64                 5887 	.db #0x64	; 100	'd'
   7358 30                 5888 	.db #0x30	; 48	'0'
   7359 CC                 5889 	.db #0xCC	; 204
   735A 98                 5890 	.db #0x98	; 152
   735B CC                 5891 	.db #0xCC	; 204
   735C 8D                 5892 	.db #0x8D	; 141
   735D 30                 5893 	.db #0x30	; 48	'0'
   735E 30                 5894 	.db #0x30	; 48	'0'
   735F 98                 5895 	.db #0x98	; 152
   7360 98                 5896 	.db #0x98	; 152
   7361 64                 5897 	.db #0x64	; 100	'd'
   7362 30                 5898 	.db #0x30	; 48	'0'
   7363 30                 5899 	.db #0x30	; 48	'0'
   7364 98                 5900 	.db #0x98	; 152
   7365 30                 5901 	.db #0x30	; 48	'0'
   7366 8D                 5902 	.db #0x8D	; 141
   7367 30                 5903 	.db #0x30	; 48	'0'
   7368 30                 5904 	.db #0x30	; 48	'0'
   7369 98                 5905 	.db #0x98	; 152
   736A 98                 5906 	.db #0x98	; 152
   736B 64                 5907 	.db #0x64	; 100	'd'
   736C 30                 5908 	.db #0x30	; 48	'0'
   736D 30                 5909 	.db #0x30	; 48	'0'
   736E 98                 5910 	.db #0x98	; 152
   736F 30                 5911 	.db #0x30	; 48	'0'
   7370 8D                 5912 	.db #0x8D	; 141
   7371 30                 5913 	.db #0x30	; 48	'0'
   7372 30                 5914 	.db #0x30	; 48	'0'
   7373 4E                 5915 	.db #0x4E	; 78	'N'
   7374 30                 5916 	.db #0x30	; 48	'0'
   7375 CC                 5917 	.db #0xCC	; 204
   7376 98                 5918 	.db #0x98	; 152
   7377 30                 5919 	.db #0x30	; 48	'0'
   7378 98                 5920 	.db #0x98	; 152
   7379 30                 5921 	.db #0x30	; 48	'0'
   737A 8D                 5922 	.db #0x8D	; 141
   737B 30                 5923 	.db #0x30	; 48	'0'
   737C 30                 5924 	.db #0x30	; 48	'0'
   737D 1A                 5925 	.db #0x1A	; 26
   737E 30                 5926 	.db #0x30	; 48	'0'
   737F 30                 5927 	.db #0x30	; 48	'0'
   7380 30                 5928 	.db #0x30	; 48	'0'
   7381 30                 5929 	.db #0x30	; 48	'0'
   7382 30                 5930 	.db #0x30	; 48	'0'
   7383 30                 5931 	.db #0x30	; 48	'0'
   7384 25                 5932 	.db #0x25	; 37
   7385 30                 5933 	.db #0x30	; 48	'0'
   7386 30                 5934 	.db #0x30	; 48	'0'
   7387 1A                 5935 	.db #0x1A	; 26
   7388 30                 5936 	.db #0x30	; 48	'0'
   7389 30                 5937 	.db #0x30	; 48	'0'
   738A 30                 5938 	.db #0x30	; 48	'0'
   738B 30                 5939 	.db #0x30	; 48	'0'
   738C 30                 5940 	.db #0x30	; 48	'0'
   738D 30                 5941 	.db #0x30	; 48	'0'
   738E 25                 5942 	.db #0x25	; 37
   738F 30                 5943 	.db #0x30	; 48	'0'
   7390 30                 5944 	.db #0x30	; 48	'0'
   7391 1A                 5945 	.db #0x1A	; 26
   7392 30                 5946 	.db #0x30	; 48	'0'
   7393 30                 5947 	.db #0x30	; 48	'0'
   7394 30                 5948 	.db #0x30	; 48	'0'
   7395 30                 5949 	.db #0x30	; 48	'0'
   7396 30                 5950 	.db #0x30	; 48	'0'
   7397 30                 5951 	.db #0x30	; 48	'0'
   7398 25                 5952 	.db #0x25	; 37
   7399 30                 5953 	.db #0x30	; 48	'0'
   739A 30                 5954 	.db #0x30	; 48	'0'
   739B 1A                 5955 	.db #0x1A	; 26
   739C 30                 5956 	.db #0x30	; 48	'0'
   739D 30                 5957 	.db #0x30	; 48	'0'
   739E 30                 5958 	.db #0x30	; 48	'0'
   739F 30                 5959 	.db #0x30	; 48	'0'
   73A0 30                 5960 	.db #0x30	; 48	'0'
   73A1 30                 5961 	.db #0x30	; 48	'0'
   73A2 25                 5962 	.db #0x25	; 37
   73A3 30                 5963 	.db #0x30	; 48	'0'
   73A4 30                 5964 	.db #0x30	; 48	'0'
   73A5 1A                 5965 	.db #0x1A	; 26
   73A6 30                 5966 	.db #0x30	; 48	'0'
   73A7 30                 5967 	.db #0x30	; 48	'0'
   73A8 30                 5968 	.db #0x30	; 48	'0'
   73A9 30                 5969 	.db #0x30	; 48	'0'
   73AA 30                 5970 	.db #0x30	; 48	'0'
   73AB 30                 5971 	.db #0x30	; 48	'0'
   73AC 25                 5972 	.db #0x25	; 37
   73AD 30                 5973 	.db #0x30	; 48	'0'
   73AE 30                 5974 	.db #0x30	; 48	'0'
   73AF 1A                 5975 	.db #0x1A	; 26
   73B0 30                 5976 	.db #0x30	; 48	'0'
   73B1 30                 5977 	.db #0x30	; 48	'0'
   73B2 30                 5978 	.db #0x30	; 48	'0'
   73B3 30                 5979 	.db #0x30	; 48	'0'
   73B4 30                 5980 	.db #0x30	; 48	'0'
   73B5 30                 5981 	.db #0x30	; 48	'0'
   73B6 25                 5982 	.db #0x25	; 37
   73B7 30                 5983 	.db #0x30	; 48	'0'
   73B8 30                 5984 	.db #0x30	; 48	'0'
   73B9 1A                 5985 	.db #0x1A	; 26
   73BA 30                 5986 	.db #0x30	; 48	'0'
   73BB 30                 5987 	.db #0x30	; 48	'0'
   73BC 30                 5988 	.db #0x30	; 48	'0'
   73BD 30                 5989 	.db #0x30	; 48	'0'
   73BE 30                 5990 	.db #0x30	; 48	'0'
   73BF 30                 5991 	.db #0x30	; 48	'0'
   73C0 25                 5992 	.db #0x25	; 37
   73C1 30                 5993 	.db #0x30	; 48	'0'
   73C2 30                 5994 	.db #0x30	; 48	'0'
   73C3 1A                 5995 	.db #0x1A	; 26
   73C4 30                 5996 	.db #0x30	; 48	'0'
   73C5 30                 5997 	.db #0x30	; 48	'0'
   73C6 30                 5998 	.db #0x30	; 48	'0'
   73C7 30                 5999 	.db #0x30	; 48	'0'
   73C8 30                 6000 	.db #0x30	; 48	'0'
   73C9 30                 6001 	.db #0x30	; 48	'0'
   73CA 25                 6002 	.db #0x25	; 37
   73CB 30                 6003 	.db #0x30	; 48	'0'
   73CC 30                 6004 	.db #0x30	; 48	'0'
   73CD 1A                 6005 	.db #0x1A	; 26
   73CE 30                 6006 	.db #0x30	; 48	'0'
   73CF 30                 6007 	.db #0x30	; 48	'0'
   73D0 30                 6008 	.db #0x30	; 48	'0'
   73D1 30                 6009 	.db #0x30	; 48	'0'
   73D2 30                 6010 	.db #0x30	; 48	'0'
   73D3 30                 6011 	.db #0x30	; 48	'0'
   73D4 25                 6012 	.db #0x25	; 37
   73D5 30                 6013 	.db #0x30	; 48	'0'
   73D6 30                 6014 	.db #0x30	; 48	'0'
   73D7 1A                 6015 	.db #0x1A	; 26
   73D8 30                 6016 	.db #0x30	; 48	'0'
   73D9 30                 6017 	.db #0x30	; 48	'0'
   73DA 30                 6018 	.db #0x30	; 48	'0'
   73DB 30                 6019 	.db #0x30	; 48	'0'
   73DC 30                 6020 	.db #0x30	; 48	'0'
   73DD 30                 6021 	.db #0x30	; 48	'0'
   73DE 25                 6022 	.db #0x25	; 37
   73DF 30                 6023 	.db #0x30	; 48	'0'
   73E0 30                 6024 	.db #0x30	; 48	'0'
   73E1 0F                 6025 	.db #0x0F	; 15
   73E2 30                 6026 	.db #0x30	; 48	'0'
   73E3 30                 6027 	.db #0x30	; 48	'0'
   73E4 30                 6028 	.db #0x30	; 48	'0'
   73E5 30                 6029 	.db #0x30	; 48	'0'
   73E6 30                 6030 	.db #0x30	; 48	'0'
   73E7 30                 6031 	.db #0x30	; 48	'0'
   73E8 0F                 6032 	.db #0x0F	; 15
   73E9 30                 6033 	.db #0x30	; 48	'0'
   73EA 30                 6034 	.db #0x30	; 48	'0'
   73EB 25                 6035 	.db #0x25	; 37
   73EC 30                 6036 	.db #0x30	; 48	'0'
   73ED 30                 6037 	.db #0x30	; 48	'0'
   73EE 30                 6038 	.db #0x30	; 48	'0'
   73EF 30                 6039 	.db #0x30	; 48	'0'
   73F0 30                 6040 	.db #0x30	; 48	'0'
   73F1 30                 6041 	.db #0x30	; 48	'0'
   73F2 1A                 6042 	.db #0x1A	; 26
   73F3 30                 6043 	.db #0x30	; 48	'0'
   73F4 30                 6044 	.db #0x30	; 48	'0'
   73F5 25                 6045 	.db #0x25	; 37
   73F6 0F                 6046 	.db #0x0F	; 15
   73F7 0F                 6047 	.db #0x0F	; 15
   73F8 0F                 6048 	.db #0x0F	; 15
   73F9 0F                 6049 	.db #0x0F	; 15
   73FA 0F                 6050 	.db #0x0F	; 15
   73FB 0F                 6051 	.db #0x0F	; 15
   73FC 1A                 6052 	.db #0x1A	; 26
   73FD 30                 6053 	.db #0x30	; 48	'0'
   73FE F0                 6054 	.db #0xF0	; 240
   73FF 30                 6055 	.db #0x30	; 48	'0'
   7400 30                 6056 	.db #0x30	; 48	'0'
   7401 30                 6057 	.db #0x30	; 48	'0'
   7402 30                 6058 	.db #0x30	; 48	'0'
   7403 30                 6059 	.db #0x30	; 48	'0'
   7404 30                 6060 	.db #0x30	; 48	'0'
   7405 30                 6061 	.db #0x30	; 48	'0'
   7406 30                 6062 	.db #0x30	; 48	'0'
   7407 F0                 6063 	.db #0xF0	; 240
   7408 F0                 6064 	.db #0xF0	; 240
   7409 30                 6065 	.db #0x30	; 48	'0'
   740A 30                 6066 	.db #0x30	; 48	'0'
   740B 30                 6067 	.db #0x30	; 48	'0'
   740C 30                 6068 	.db #0x30	; 48	'0'
   740D 30                 6069 	.db #0x30	; 48	'0'
   740E 30                 6070 	.db #0x30	; 48	'0'
   740F 30                 6071 	.db #0x30	; 48	'0'
   7410 30                 6072 	.db #0x30	; 48	'0'
   7411 F0                 6073 	.db #0xF0	; 240
   7412                    6074 _tile_tiles_15:
   7412 F0                 6075 	.db #0xF0	; 240
   7413 0F                 6076 	.db #0x0F	; 15
   7414 0F                 6077 	.db #0x0F	; 15
   7415 0F                 6078 	.db #0x0F	; 15
   7416 0F                 6079 	.db #0x0F	; 15
   7417 0F                 6080 	.db #0x0F	; 15
   7418 0F                 6081 	.db #0x0F	; 15
   7419 0F                 6082 	.db #0x0F	; 15
   741A 0F                 6083 	.db #0x0F	; 15
   741B F0                 6084 	.db #0xF0	; 240
   741C F0                 6085 	.db #0xF0	; 240
   741D 0F                 6086 	.db #0x0F	; 15
   741E 0F                 6087 	.db #0x0F	; 15
   741F 0F                 6088 	.db #0x0F	; 15
   7420 0F                 6089 	.db #0x0F	; 15
   7421 0F                 6090 	.db #0x0F	; 15
   7422 0F                 6091 	.db #0x0F	; 15
   7423 0F                 6092 	.db #0x0F	; 15
   7424 0F                 6093 	.db #0x0F	; 15
   7425 F0                 6094 	.db #0xF0	; 240
   7426 0F                 6095 	.db #0x0F	; 15
   7427 0F                 6096 	.db #0x0F	; 15
   7428 0F                 6097 	.db #0x0F	; 15
   7429 0F                 6098 	.db #0x0F	; 15
   742A 0F                 6099 	.db #0x0F	; 15
   742B 0F                 6100 	.db #0x0F	; 15
   742C 0F                 6101 	.db #0x0F	; 15
   742D 0F                 6102 	.db #0x0F	; 15
   742E 0F                 6103 	.db #0x0F	; 15
   742F 0F                 6104 	.db #0x0F	; 15
   7430 0F                 6105 	.db #0x0F	; 15
   7431 0F                 6106 	.db #0x0F	; 15
   7432 0F                 6107 	.db #0x0F	; 15
   7433 0F                 6108 	.db #0x0F	; 15
   7434 0F                 6109 	.db #0x0F	; 15
   7435 0F                 6110 	.db #0x0F	; 15
   7436 0F                 6111 	.db #0x0F	; 15
   7437 0F                 6112 	.db #0x0F	; 15
   7438 0F                 6113 	.db #0x0F	; 15
   7439 0F                 6114 	.db #0x0F	; 15
   743A 0F                 6115 	.db #0x0F	; 15
   743B 0F                 6116 	.db #0x0F	; 15
   743C 0F                 6117 	.db #0x0F	; 15
   743D 0F                 6118 	.db #0x0F	; 15
   743E 0F                 6119 	.db #0x0F	; 15
   743F 0F                 6120 	.db #0x0F	; 15
   7440 0F                 6121 	.db #0x0F	; 15
   7441 0F                 6122 	.db #0x0F	; 15
   7442 0F                 6123 	.db #0x0F	; 15
   7443 0F                 6124 	.db #0x0F	; 15
   7444 0F                 6125 	.db #0x0F	; 15
   7445 0F                 6126 	.db #0x0F	; 15
   7446 0F                 6127 	.db #0x0F	; 15
   7447 0F                 6128 	.db #0x0F	; 15
   7448 0F                 6129 	.db #0x0F	; 15
   7449 0F                 6130 	.db #0x0F	; 15
   744A 0F                 6131 	.db #0x0F	; 15
   744B 0F                 6132 	.db #0x0F	; 15
   744C 0F                 6133 	.db #0x0F	; 15
   744D 0F                 6134 	.db #0x0F	; 15
   744E 0F                 6135 	.db #0x0F	; 15
   744F 0F                 6136 	.db #0x0F	; 15
   7450 0F                 6137 	.db #0x0F	; 15
   7451 0F                 6138 	.db #0x0F	; 15
   7452 0F                 6139 	.db #0x0F	; 15
   7453 0F                 6140 	.db #0x0F	; 15
   7454 0F                 6141 	.db #0x0F	; 15
   7455 0F                 6142 	.db #0x0F	; 15
   7456 0F                 6143 	.db #0x0F	; 15
   7457 0F                 6144 	.db #0x0F	; 15
   7458 0F                 6145 	.db #0x0F	; 15
   7459 0F                 6146 	.db #0x0F	; 15
   745A 0F                 6147 	.db #0x0F	; 15
   745B 0F                 6148 	.db #0x0F	; 15
   745C 0F                 6149 	.db #0x0F	; 15
   745D 0F                 6150 	.db #0x0F	; 15
   745E 0F                 6151 	.db #0x0F	; 15
   745F 0F                 6152 	.db #0x0F	; 15
   7460 0F                 6153 	.db #0x0F	; 15
   7461 0F                 6154 	.db #0x0F	; 15
   7462 0F                 6155 	.db #0x0F	; 15
   7463 0F                 6156 	.db #0x0F	; 15
   7464 0F                 6157 	.db #0x0F	; 15
   7465 0F                 6158 	.db #0x0F	; 15
   7466 0F                 6159 	.db #0x0F	; 15
   7467 0F                 6160 	.db #0x0F	; 15
   7468 0F                 6161 	.db #0x0F	; 15
   7469 0F                 6162 	.db #0x0F	; 15
   746A 0F                 6163 	.db #0x0F	; 15
   746B 0F                 6164 	.db #0x0F	; 15
   746C 0F                 6165 	.db #0x0F	; 15
   746D 0F                 6166 	.db #0x0F	; 15
   746E 0F                 6167 	.db #0x0F	; 15
   746F 0F                 6168 	.db #0x0F	; 15
   7470 0F                 6169 	.db #0x0F	; 15
   7471 0F                 6170 	.db #0x0F	; 15
   7472 0F                 6171 	.db #0x0F	; 15
   7473 0F                 6172 	.db #0x0F	; 15
   7474 0F                 6173 	.db #0x0F	; 15
   7475 0F                 6174 	.db #0x0F	; 15
   7476 0F                 6175 	.db #0x0F	; 15
   7477 0F                 6176 	.db #0x0F	; 15
   7478 0F                 6177 	.db #0x0F	; 15
   7479 0F                 6178 	.db #0x0F	; 15
   747A 0F                 6179 	.db #0x0F	; 15
   747B 0F                 6180 	.db #0x0F	; 15
   747C 0F                 6181 	.db #0x0F	; 15
   747D 0F                 6182 	.db #0x0F	; 15
   747E 0F                 6183 	.db #0x0F	; 15
   747F 0F                 6184 	.db #0x0F	; 15
   7480 0F                 6185 	.db #0x0F	; 15
   7481 0F                 6186 	.db #0x0F	; 15
   7482 0F                 6187 	.db #0x0F	; 15
   7483 0F                 6188 	.db #0x0F	; 15
   7484 0F                 6189 	.db #0x0F	; 15
   7485 0F                 6190 	.db #0x0F	; 15
   7486 0F                 6191 	.db #0x0F	; 15
   7487 0F                 6192 	.db #0x0F	; 15
   7488 0F                 6193 	.db #0x0F	; 15
   7489 0F                 6194 	.db #0x0F	; 15
   748A 0F                 6195 	.db #0x0F	; 15
   748B 0F                 6196 	.db #0x0F	; 15
   748C 0F                 6197 	.db #0x0F	; 15
   748D 0F                 6198 	.db #0x0F	; 15
   748E 0F                 6199 	.db #0x0F	; 15
   748F 0F                 6200 	.db #0x0F	; 15
   7490 0F                 6201 	.db #0x0F	; 15
   7491 0F                 6202 	.db #0x0F	; 15
   7492 0F                 6203 	.db #0x0F	; 15
   7493 0F                 6204 	.db #0x0F	; 15
   7494 0F                 6205 	.db #0x0F	; 15
   7495 0F                 6206 	.db #0x0F	; 15
   7496 0F                 6207 	.db #0x0F	; 15
   7497 0F                 6208 	.db #0x0F	; 15
   7498 0F                 6209 	.db #0x0F	; 15
   7499 0F                 6210 	.db #0x0F	; 15
   749A 0F                 6211 	.db #0x0F	; 15
   749B 0F                 6212 	.db #0x0F	; 15
   749C 0F                 6213 	.db #0x0F	; 15
   749D 0F                 6214 	.db #0x0F	; 15
   749E 0F                 6215 	.db #0x0F	; 15
   749F 0F                 6216 	.db #0x0F	; 15
   74A0 0F                 6217 	.db #0x0F	; 15
   74A1 0F                 6218 	.db #0x0F	; 15
   74A2 0F                 6219 	.db #0x0F	; 15
   74A3 0F                 6220 	.db #0x0F	; 15
   74A4 0F                 6221 	.db #0x0F	; 15
   74A5 0F                 6222 	.db #0x0F	; 15
   74A6 0F                 6223 	.db #0x0F	; 15
   74A7 0F                 6224 	.db #0x0F	; 15
   74A8 0F                 6225 	.db #0x0F	; 15
   74A9 0F                 6226 	.db #0x0F	; 15
   74AA 0F                 6227 	.db #0x0F	; 15
   74AB 0F                 6228 	.db #0x0F	; 15
   74AC 0F                 6229 	.db #0x0F	; 15
   74AD 0F                 6230 	.db #0x0F	; 15
   74AE 0F                 6231 	.db #0x0F	; 15
   74AF 0F                 6232 	.db #0x0F	; 15
   74B0 0F                 6233 	.db #0x0F	; 15
   74B1 0F                 6234 	.db #0x0F	; 15
   74B2 0F                 6235 	.db #0x0F	; 15
   74B3 0F                 6236 	.db #0x0F	; 15
   74B4 0F                 6237 	.db #0x0F	; 15
   74B5 0F                 6238 	.db #0x0F	; 15
   74B6 0F                 6239 	.db #0x0F	; 15
   74B7 0F                 6240 	.db #0x0F	; 15
   74B8 0F                 6241 	.db #0x0F	; 15
   74B9 0F                 6242 	.db #0x0F	; 15
   74BA 0F                 6243 	.db #0x0F	; 15
   74BB 0F                 6244 	.db #0x0F	; 15
   74BC 0F                 6245 	.db #0x0F	; 15
   74BD 0F                 6246 	.db #0x0F	; 15
   74BE 0F                 6247 	.db #0x0F	; 15
   74BF 0F                 6248 	.db #0x0F	; 15
   74C0 0F                 6249 	.db #0x0F	; 15
   74C1 0F                 6250 	.db #0x0F	; 15
   74C2 0F                 6251 	.db #0x0F	; 15
   74C3 0F                 6252 	.db #0x0F	; 15
   74C4 0F                 6253 	.db #0x0F	; 15
   74C5 0F                 6254 	.db #0x0F	; 15
   74C6 0F                 6255 	.db #0x0F	; 15
   74C7 0F                 6256 	.db #0x0F	; 15
   74C8 0F                 6257 	.db #0x0F	; 15
   74C9 0F                 6258 	.db #0x0F	; 15
   74CA 0F                 6259 	.db #0x0F	; 15
   74CB 0F                 6260 	.db #0x0F	; 15
   74CC 0F                 6261 	.db #0x0F	; 15
   74CD 0F                 6262 	.db #0x0F	; 15
   74CE 0F                 6263 	.db #0x0F	; 15
   74CF 0F                 6264 	.db #0x0F	; 15
   74D0 0F                 6265 	.db #0x0F	; 15
   74D1 0F                 6266 	.db #0x0F	; 15
   74D2 0F                 6267 	.db #0x0F	; 15
   74D3 0F                 6268 	.db #0x0F	; 15
   74D4 0F                 6269 	.db #0x0F	; 15
   74D5 0F                 6270 	.db #0x0F	; 15
   74D6 0F                 6271 	.db #0x0F	; 15
   74D7 0F                 6272 	.db #0x0F	; 15
   74D8 0F                 6273 	.db #0x0F	; 15
   74D9 0F                 6274 	.db #0x0F	; 15
   74DA 0F                 6275 	.db #0x0F	; 15
   74DB 0F                 6276 	.db #0x0F	; 15
   74DC 0F                 6277 	.db #0x0F	; 15
   74DD 0F                 6278 	.db #0x0F	; 15
   74DE 0F                 6279 	.db #0x0F	; 15
   74DF 0F                 6280 	.db #0x0F	; 15
   74E0 0F                 6281 	.db #0x0F	; 15
   74E1 0F                 6282 	.db #0x0F	; 15
   74E2 0F                 6283 	.db #0x0F	; 15
   74E3 0F                 6284 	.db #0x0F	; 15
   74E4 0F                 6285 	.db #0x0F	; 15
   74E5 0F                 6286 	.db #0x0F	; 15
   74E6 0F                 6287 	.db #0x0F	; 15
   74E7 0F                 6288 	.db #0x0F	; 15
   74E8 0F                 6289 	.db #0x0F	; 15
   74E9 0F                 6290 	.db #0x0F	; 15
   74EA 0F                 6291 	.db #0x0F	; 15
   74EB 0F                 6292 	.db #0x0F	; 15
   74EC 0F                 6293 	.db #0x0F	; 15
   74ED 0F                 6294 	.db #0x0F	; 15
   74EE 0F                 6295 	.db #0x0F	; 15
   74EF 0F                 6296 	.db #0x0F	; 15
   74F0 0F                 6297 	.db #0x0F	; 15
   74F1 0F                 6298 	.db #0x0F	; 15
   74F2 0F                 6299 	.db #0x0F	; 15
   74F3 0F                 6300 	.db #0x0F	; 15
   74F4 0F                 6301 	.db #0x0F	; 15
   74F5 0F                 6302 	.db #0x0F	; 15
   74F6 0F                 6303 	.db #0x0F	; 15
   74F7 0F                 6304 	.db #0x0F	; 15
   74F8 0F                 6305 	.db #0x0F	; 15
   74F9 0F                 6306 	.db #0x0F	; 15
   74FA 0F                 6307 	.db #0x0F	; 15
   74FB 0F                 6308 	.db #0x0F	; 15
   74FC 0F                 6309 	.db #0x0F	; 15
   74FD 0F                 6310 	.db #0x0F	; 15
   74FE 0F                 6311 	.db #0x0F	; 15
   74FF 0F                 6312 	.db #0x0F	; 15
   7500 0F                 6313 	.db #0x0F	; 15
   7501 0F                 6314 	.db #0x0F	; 15
   7502 0F                 6315 	.db #0x0F	; 15
   7503 0F                 6316 	.db #0x0F	; 15
   7504 0F                 6317 	.db #0x0F	; 15
   7505 0F                 6318 	.db #0x0F	; 15
   7506 0F                 6319 	.db #0x0F	; 15
   7507 0F                 6320 	.db #0x0F	; 15
   7508 0F                 6321 	.db #0x0F	; 15
   7509 0F                 6322 	.db #0x0F	; 15
   750A 0F                 6323 	.db #0x0F	; 15
   750B 0F                 6324 	.db #0x0F	; 15
   750C 0F                 6325 	.db #0x0F	; 15
   750D 0F                 6326 	.db #0x0F	; 15
   750E 0F                 6327 	.db #0x0F	; 15
   750F 0F                 6328 	.db #0x0F	; 15
   7510 0F                 6329 	.db #0x0F	; 15
   7511 0F                 6330 	.db #0x0F	; 15
   7512 0F                 6331 	.db #0x0F	; 15
   7513 0F                 6332 	.db #0x0F	; 15
   7514 0F                 6333 	.db #0x0F	; 15
   7515 0F                 6334 	.db #0x0F	; 15
   7516 0F                 6335 	.db #0x0F	; 15
   7517 0F                 6336 	.db #0x0F	; 15
   7518 0F                 6337 	.db #0x0F	; 15
   7519 0F                 6338 	.db #0x0F	; 15
   751A 0F                 6339 	.db #0x0F	; 15
   751B 0F                 6340 	.db #0x0F	; 15
   751C 0F                 6341 	.db #0x0F	; 15
   751D 0F                 6342 	.db #0x0F	; 15
   751E 0F                 6343 	.db #0x0F	; 15
   751F 0F                 6344 	.db #0x0F	; 15
   7520 0F                 6345 	.db #0x0F	; 15
   7521 0F                 6346 	.db #0x0F	; 15
   7522 0F                 6347 	.db #0x0F	; 15
   7523 0F                 6348 	.db #0x0F	; 15
   7524 0F                 6349 	.db #0x0F	; 15
   7525 0F                 6350 	.db #0x0F	; 15
   7526 0F                 6351 	.db #0x0F	; 15
   7527 0F                 6352 	.db #0x0F	; 15
   7528 0F                 6353 	.db #0x0F	; 15
   7529 0F                 6354 	.db #0x0F	; 15
   752A 0F                 6355 	.db #0x0F	; 15
   752B 0F                 6356 	.db #0x0F	; 15
   752C 0F                 6357 	.db #0x0F	; 15
   752D 0F                 6358 	.db #0x0F	; 15
   752E 0F                 6359 	.db #0x0F	; 15
   752F 0F                 6360 	.db #0x0F	; 15
   7530 0F                 6361 	.db #0x0F	; 15
   7531 0F                 6362 	.db #0x0F	; 15
   7532 0F                 6363 	.db #0x0F	; 15
   7533 0F                 6364 	.db #0x0F	; 15
   7534 0F                 6365 	.db #0x0F	; 15
   7535 0F                 6366 	.db #0x0F	; 15
   7536 0F                 6367 	.db #0x0F	; 15
   7537 0F                 6368 	.db #0x0F	; 15
   7538 0F                 6369 	.db #0x0F	; 15
   7539 0F                 6370 	.db #0x0F	; 15
   753A 0F                 6371 	.db #0x0F	; 15
   753B 0F                 6372 	.db #0x0F	; 15
   753C 0F                 6373 	.db #0x0F	; 15
   753D 0F                 6374 	.db #0x0F	; 15
   753E 0F                 6375 	.db #0x0F	; 15
   753F 0F                 6376 	.db #0x0F	; 15
   7540 0F                 6377 	.db #0x0F	; 15
   7541 0F                 6378 	.db #0x0F	; 15
   7542 0F                 6379 	.db #0x0F	; 15
   7543 0F                 6380 	.db #0x0F	; 15
   7544 0F                 6381 	.db #0x0F	; 15
   7545 0F                 6382 	.db #0x0F	; 15
   7546 0F                 6383 	.db #0x0F	; 15
   7547 0F                 6384 	.db #0x0F	; 15
   7548 0F                 6385 	.db #0x0F	; 15
   7549 0F                 6386 	.db #0x0F	; 15
   754A 0F                 6387 	.db #0x0F	; 15
   754B 0F                 6388 	.db #0x0F	; 15
   754C 0F                 6389 	.db #0x0F	; 15
   754D 0F                 6390 	.db #0x0F	; 15
   754E 0F                 6391 	.db #0x0F	; 15
   754F 0F                 6392 	.db #0x0F	; 15
   7550 0F                 6393 	.db #0x0F	; 15
   7551 0F                 6394 	.db #0x0F	; 15
   7552 0F                 6395 	.db #0x0F	; 15
   7553 0F                 6396 	.db #0x0F	; 15
   7554 0F                 6397 	.db #0x0F	; 15
   7555 0F                 6398 	.db #0x0F	; 15
   7556 0F                 6399 	.db #0x0F	; 15
   7557 0F                 6400 	.db #0x0F	; 15
   7558 0F                 6401 	.db #0x0F	; 15
   7559 0F                 6402 	.db #0x0F	; 15
   755A 0F                 6403 	.db #0x0F	; 15
   755B 0F                 6404 	.db #0x0F	; 15
   755C 0F                 6405 	.db #0x0F	; 15
   755D 0F                 6406 	.db #0x0F	; 15
   755E 0F                 6407 	.db #0x0F	; 15
   755F 0F                 6408 	.db #0x0F	; 15
   7560 0F                 6409 	.db #0x0F	; 15
   7561 0F                 6410 	.db #0x0F	; 15
   7562 0F                 6411 	.db #0x0F	; 15
   7563 0F                 6412 	.db #0x0F	; 15
   7564 0F                 6413 	.db #0x0F	; 15
   7565 0F                 6414 	.db #0x0F	; 15
   7566 0F                 6415 	.db #0x0F	; 15
   7567 0F                 6416 	.db #0x0F	; 15
   7568 0F                 6417 	.db #0x0F	; 15
   7569 0F                 6418 	.db #0x0F	; 15
   756A 0F                 6419 	.db #0x0F	; 15
   756B 0F                 6420 	.db #0x0F	; 15
   756C 0F                 6421 	.db #0x0F	; 15
   756D 0F                 6422 	.db #0x0F	; 15
   756E 0F                 6423 	.db #0x0F	; 15
   756F 0F                 6424 	.db #0x0F	; 15
   7570 0F                 6425 	.db #0x0F	; 15
   7571 0F                 6426 	.db #0x0F	; 15
   7572 0F                 6427 	.db #0x0F	; 15
   7573 0F                 6428 	.db #0x0F	; 15
   7574 0F                 6429 	.db #0x0F	; 15
   7575 0F                 6430 	.db #0x0F	; 15
   7576 0F                 6431 	.db #0x0F	; 15
   7577 0F                 6432 	.db #0x0F	; 15
   7578 0F                 6433 	.db #0x0F	; 15
   7579 0F                 6434 	.db #0x0F	; 15
   757A 0F                 6435 	.db #0x0F	; 15
   757B 0F                 6436 	.db #0x0F	; 15
   757C 0F                 6437 	.db #0x0F	; 15
   757D 0F                 6438 	.db #0x0F	; 15
   757E 0F                 6439 	.db #0x0F	; 15
   757F 0F                 6440 	.db #0x0F	; 15
   7580 0F                 6441 	.db #0x0F	; 15
   7581 0F                 6442 	.db #0x0F	; 15
   7582 0F                 6443 	.db #0x0F	; 15
   7583 0F                 6444 	.db #0x0F	; 15
   7584 0F                 6445 	.db #0x0F	; 15
   7585 0F                 6446 	.db #0x0F	; 15
   7586 0F                 6447 	.db #0x0F	; 15
   7587 0F                 6448 	.db #0x0F	; 15
   7588 0F                 6449 	.db #0x0F	; 15
   7589 0F                 6450 	.db #0x0F	; 15
   758A 0F                 6451 	.db #0x0F	; 15
   758B 0F                 6452 	.db #0x0F	; 15
   758C 0F                 6453 	.db #0x0F	; 15
   758D 0F                 6454 	.db #0x0F	; 15
   758E F0                 6455 	.db #0xF0	; 240
   758F 0F                 6456 	.db #0x0F	; 15
   7590 0F                 6457 	.db #0x0F	; 15
   7591 0F                 6458 	.db #0x0F	; 15
   7592 0F                 6459 	.db #0x0F	; 15
   7593 0F                 6460 	.db #0x0F	; 15
   7594 0F                 6461 	.db #0x0F	; 15
   7595 0F                 6462 	.db #0x0F	; 15
   7596 0F                 6463 	.db #0x0F	; 15
   7597 F0                 6464 	.db #0xF0	; 240
   7598 F0                 6465 	.db #0xF0	; 240
   7599 0F                 6466 	.db #0x0F	; 15
   759A 0F                 6467 	.db #0x0F	; 15
   759B 0F                 6468 	.db #0x0F	; 15
   759C 0F                 6469 	.db #0x0F	; 15
   759D 0F                 6470 	.db #0x0F	; 15
   759E 0F                 6471 	.db #0x0F	; 15
   759F 0F                 6472 	.db #0x0F	; 15
   75A0 0F                 6473 	.db #0x0F	; 15
   75A1 F0                 6474 	.db #0xF0	; 240
                           6475 	.area _INITIALIZER
                           6476 	.area _CABS (ABS)
