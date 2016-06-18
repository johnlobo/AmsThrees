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
   5D14                      59 _tile_tiles_00:
   5D14 F0                   60 	.db #0xF0	; 240
   5D15 0F                   61 	.db #0x0F	; 15
   5D16 0F                   62 	.db #0x0F	; 15
   5D17 0F                   63 	.db #0x0F	; 15
   5D18 0F                   64 	.db #0x0F	; 15
   5D19 0F                   65 	.db #0x0F	; 15
   5D1A 0F                   66 	.db #0x0F	; 15
   5D1B 0F                   67 	.db #0x0F	; 15
   5D1C 0F                   68 	.db #0x0F	; 15
   5D1D F0                   69 	.db #0xF0	; 240
   5D1E F0                   70 	.db #0xF0	; 240
   5D1F 0F                   71 	.db #0x0F	; 15
   5D20 0F                   72 	.db #0x0F	; 15
   5D21 0F                   73 	.db #0x0F	; 15
   5D22 0F                   74 	.db #0x0F	; 15
   5D23 0F                   75 	.db #0x0F	; 15
   5D24 0F                   76 	.db #0x0F	; 15
   5D25 0F                   77 	.db #0x0F	; 15
   5D26 0F                   78 	.db #0x0F	; 15
   5D27 F0                   79 	.db #0xF0	; 240
   5D28 0F                   80 	.db #0x0F	; 15
   5D29 0F                   81 	.db #0x0F	; 15
   5D2A 0F                   82 	.db #0x0F	; 15
   5D2B 0F                   83 	.db #0x0F	; 15
   5D2C 0F                   84 	.db #0x0F	; 15
   5D2D 0F                   85 	.db #0x0F	; 15
   5D2E 0F                   86 	.db #0x0F	; 15
   5D2F 0F                   87 	.db #0x0F	; 15
   5D30 0F                   88 	.db #0x0F	; 15
   5D31 0F                   89 	.db #0x0F	; 15
   5D32 0F                   90 	.db #0x0F	; 15
   5D33 0F                   91 	.db #0x0F	; 15
   5D34 0F                   92 	.db #0x0F	; 15
   5D35 0F                   93 	.db #0x0F	; 15
   5D36 0F                   94 	.db #0x0F	; 15
   5D37 0F                   95 	.db #0x0F	; 15
   5D38 0F                   96 	.db #0x0F	; 15
   5D39 0F                   97 	.db #0x0F	; 15
   5D3A 0F                   98 	.db #0x0F	; 15
   5D3B 0F                   99 	.db #0x0F	; 15
   5D3C 0F                  100 	.db #0x0F	; 15
   5D3D 0F                  101 	.db #0x0F	; 15
   5D3E 0F                  102 	.db #0x0F	; 15
   5D3F 0F                  103 	.db #0x0F	; 15
   5D40 0F                  104 	.db #0x0F	; 15
   5D41 0F                  105 	.db #0x0F	; 15
   5D42 0F                  106 	.db #0x0F	; 15
   5D43 0F                  107 	.db #0x0F	; 15
   5D44 0F                  108 	.db #0x0F	; 15
   5D45 0F                  109 	.db #0x0F	; 15
   5D46 0F                  110 	.db #0x0F	; 15
   5D47 0F                  111 	.db #0x0F	; 15
   5D48 0F                  112 	.db #0x0F	; 15
   5D49 0F                  113 	.db #0x0F	; 15
   5D4A 0F                  114 	.db #0x0F	; 15
   5D4B 0F                  115 	.db #0x0F	; 15
   5D4C 0F                  116 	.db #0x0F	; 15
   5D4D 0F                  117 	.db #0x0F	; 15
   5D4E 0F                  118 	.db #0x0F	; 15
   5D4F 0F                  119 	.db #0x0F	; 15
   5D50 0F                  120 	.db #0x0F	; 15
   5D51 0F                  121 	.db #0x0F	; 15
   5D52 0F                  122 	.db #0x0F	; 15
   5D53 0F                  123 	.db #0x0F	; 15
   5D54 0F                  124 	.db #0x0F	; 15
   5D55 0F                  125 	.db #0x0F	; 15
   5D56 0F                  126 	.db #0x0F	; 15
   5D57 0F                  127 	.db #0x0F	; 15
   5D58 0F                  128 	.db #0x0F	; 15
   5D59 0F                  129 	.db #0x0F	; 15
   5D5A 0F                  130 	.db #0x0F	; 15
   5D5B 0F                  131 	.db #0x0F	; 15
   5D5C 0F                  132 	.db #0x0F	; 15
   5D5D 0F                  133 	.db #0x0F	; 15
   5D5E 0F                  134 	.db #0x0F	; 15
   5D5F 0F                  135 	.db #0x0F	; 15
   5D60 0F                  136 	.db #0x0F	; 15
   5D61 0F                  137 	.db #0x0F	; 15
   5D62 0F                  138 	.db #0x0F	; 15
   5D63 0F                  139 	.db #0x0F	; 15
   5D64 0F                  140 	.db #0x0F	; 15
   5D65 0F                  141 	.db #0x0F	; 15
   5D66 0F                  142 	.db #0x0F	; 15
   5D67 0F                  143 	.db #0x0F	; 15
   5D68 0F                  144 	.db #0x0F	; 15
   5D69 0F                  145 	.db #0x0F	; 15
   5D6A 0F                  146 	.db #0x0F	; 15
   5D6B 0F                  147 	.db #0x0F	; 15
   5D6C 0F                  148 	.db #0x0F	; 15
   5D6D 0F                  149 	.db #0x0F	; 15
   5D6E 0F                  150 	.db #0x0F	; 15
   5D6F 0F                  151 	.db #0x0F	; 15
   5D70 0F                  152 	.db #0x0F	; 15
   5D71 0F                  153 	.db #0x0F	; 15
   5D72 0F                  154 	.db #0x0F	; 15
   5D73 0F                  155 	.db #0x0F	; 15
   5D74 0F                  156 	.db #0x0F	; 15
   5D75 0F                  157 	.db #0x0F	; 15
   5D76 0F                  158 	.db #0x0F	; 15
   5D77 0F                  159 	.db #0x0F	; 15
   5D78 0F                  160 	.db #0x0F	; 15
   5D79 0F                  161 	.db #0x0F	; 15
   5D7A 0F                  162 	.db #0x0F	; 15
   5D7B 0F                  163 	.db #0x0F	; 15
   5D7C 0F                  164 	.db #0x0F	; 15
   5D7D 0F                  165 	.db #0x0F	; 15
   5D7E 0F                  166 	.db #0x0F	; 15
   5D7F 0F                  167 	.db #0x0F	; 15
   5D80 0F                  168 	.db #0x0F	; 15
   5D81 0F                  169 	.db #0x0F	; 15
   5D82 0F                  170 	.db #0x0F	; 15
   5D83 0F                  171 	.db #0x0F	; 15
   5D84 0F                  172 	.db #0x0F	; 15
   5D85 0F                  173 	.db #0x0F	; 15
   5D86 0F                  174 	.db #0x0F	; 15
   5D87 0F                  175 	.db #0x0F	; 15
   5D88 0F                  176 	.db #0x0F	; 15
   5D89 0F                  177 	.db #0x0F	; 15
   5D8A 0F                  178 	.db #0x0F	; 15
   5D8B 0F                  179 	.db #0x0F	; 15
   5D8C 0F                  180 	.db #0x0F	; 15
   5D8D 0F                  181 	.db #0x0F	; 15
   5D8E 0F                  182 	.db #0x0F	; 15
   5D8F 0F                  183 	.db #0x0F	; 15
   5D90 0F                  184 	.db #0x0F	; 15
   5D91 0F                  185 	.db #0x0F	; 15
   5D92 0F                  186 	.db #0x0F	; 15
   5D93 0F                  187 	.db #0x0F	; 15
   5D94 0F                  188 	.db #0x0F	; 15
   5D95 0F                  189 	.db #0x0F	; 15
   5D96 0F                  190 	.db #0x0F	; 15
   5D97 0F                  191 	.db #0x0F	; 15
   5D98 0F                  192 	.db #0x0F	; 15
   5D99 0F                  193 	.db #0x0F	; 15
   5D9A 0F                  194 	.db #0x0F	; 15
   5D9B 0F                  195 	.db #0x0F	; 15
   5D9C 0F                  196 	.db #0x0F	; 15
   5D9D 0F                  197 	.db #0x0F	; 15
   5D9E 0F                  198 	.db #0x0F	; 15
   5D9F 0F                  199 	.db #0x0F	; 15
   5DA0 0F                  200 	.db #0x0F	; 15
   5DA1 0F                  201 	.db #0x0F	; 15
   5DA2 0F                  202 	.db #0x0F	; 15
   5DA3 0F                  203 	.db #0x0F	; 15
   5DA4 0F                  204 	.db #0x0F	; 15
   5DA5 0F                  205 	.db #0x0F	; 15
   5DA6 0F                  206 	.db #0x0F	; 15
   5DA7 0F                  207 	.db #0x0F	; 15
   5DA8 0F                  208 	.db #0x0F	; 15
   5DA9 0F                  209 	.db #0x0F	; 15
   5DAA 0F                  210 	.db #0x0F	; 15
   5DAB 0F                  211 	.db #0x0F	; 15
   5DAC 0F                  212 	.db #0x0F	; 15
   5DAD 0F                  213 	.db #0x0F	; 15
   5DAE 0F                  214 	.db #0x0F	; 15
   5DAF 0F                  215 	.db #0x0F	; 15
   5DB0 0F                  216 	.db #0x0F	; 15
   5DB1 0F                  217 	.db #0x0F	; 15
   5DB2 0F                  218 	.db #0x0F	; 15
   5DB3 0F                  219 	.db #0x0F	; 15
   5DB4 0F                  220 	.db #0x0F	; 15
   5DB5 0F                  221 	.db #0x0F	; 15
   5DB6 0F                  222 	.db #0x0F	; 15
   5DB7 0F                  223 	.db #0x0F	; 15
   5DB8 0F                  224 	.db #0x0F	; 15
   5DB9 0F                  225 	.db #0x0F	; 15
   5DBA 0F                  226 	.db #0x0F	; 15
   5DBB 0F                  227 	.db #0x0F	; 15
   5DBC 0F                  228 	.db #0x0F	; 15
   5DBD 0F                  229 	.db #0x0F	; 15
   5DBE 0F                  230 	.db #0x0F	; 15
   5DBF 0F                  231 	.db #0x0F	; 15
   5DC0 0F                  232 	.db #0x0F	; 15
   5DC1 0F                  233 	.db #0x0F	; 15
   5DC2 0F                  234 	.db #0x0F	; 15
   5DC3 0F                  235 	.db #0x0F	; 15
   5DC4 0F                  236 	.db #0x0F	; 15
   5DC5 0F                  237 	.db #0x0F	; 15
   5DC6 0F                  238 	.db #0x0F	; 15
   5DC7 0F                  239 	.db #0x0F	; 15
   5DC8 0F                  240 	.db #0x0F	; 15
   5DC9 0F                  241 	.db #0x0F	; 15
   5DCA 0F                  242 	.db #0x0F	; 15
   5DCB 0F                  243 	.db #0x0F	; 15
   5DCC 0F                  244 	.db #0x0F	; 15
   5DCD 0F                  245 	.db #0x0F	; 15
   5DCE 0F                  246 	.db #0x0F	; 15
   5DCF 0F                  247 	.db #0x0F	; 15
   5DD0 0F                  248 	.db #0x0F	; 15
   5DD1 0F                  249 	.db #0x0F	; 15
   5DD2 0F                  250 	.db #0x0F	; 15
   5DD3 0F                  251 	.db #0x0F	; 15
   5DD4 0F                  252 	.db #0x0F	; 15
   5DD5 0F                  253 	.db #0x0F	; 15
   5DD6 0F                  254 	.db #0x0F	; 15
   5DD7 0F                  255 	.db #0x0F	; 15
   5DD8 0F                  256 	.db #0x0F	; 15
   5DD9 0F                  257 	.db #0x0F	; 15
   5DDA 0F                  258 	.db #0x0F	; 15
   5DDB 0F                  259 	.db #0x0F	; 15
   5DDC 0F                  260 	.db #0x0F	; 15
   5DDD 0F                  261 	.db #0x0F	; 15
   5DDE 0F                  262 	.db #0x0F	; 15
   5DDF 0F                  263 	.db #0x0F	; 15
   5DE0 0F                  264 	.db #0x0F	; 15
   5DE1 0F                  265 	.db #0x0F	; 15
   5DE2 0F                  266 	.db #0x0F	; 15
   5DE3 0F                  267 	.db #0x0F	; 15
   5DE4 0F                  268 	.db #0x0F	; 15
   5DE5 0F                  269 	.db #0x0F	; 15
   5DE6 0F                  270 	.db #0x0F	; 15
   5DE7 0F                  271 	.db #0x0F	; 15
   5DE8 0F                  272 	.db #0x0F	; 15
   5DE9 0F                  273 	.db #0x0F	; 15
   5DEA 0F                  274 	.db #0x0F	; 15
   5DEB 0F                  275 	.db #0x0F	; 15
   5DEC 0F                  276 	.db #0x0F	; 15
   5DED 0F                  277 	.db #0x0F	; 15
   5DEE 0F                  278 	.db #0x0F	; 15
   5DEF 0F                  279 	.db #0x0F	; 15
   5DF0 0F                  280 	.db #0x0F	; 15
   5DF1 0F                  281 	.db #0x0F	; 15
   5DF2 0F                  282 	.db #0x0F	; 15
   5DF3 0F                  283 	.db #0x0F	; 15
   5DF4 0F                  284 	.db #0x0F	; 15
   5DF5 0F                  285 	.db #0x0F	; 15
   5DF6 0F                  286 	.db #0x0F	; 15
   5DF7 0F                  287 	.db #0x0F	; 15
   5DF8 0F                  288 	.db #0x0F	; 15
   5DF9 0F                  289 	.db #0x0F	; 15
   5DFA 0F                  290 	.db #0x0F	; 15
   5DFB 0F                  291 	.db #0x0F	; 15
   5DFC 0F                  292 	.db #0x0F	; 15
   5DFD 0F                  293 	.db #0x0F	; 15
   5DFE 0F                  294 	.db #0x0F	; 15
   5DFF 0F                  295 	.db #0x0F	; 15
   5E00 0F                  296 	.db #0x0F	; 15
   5E01 0F                  297 	.db #0x0F	; 15
   5E02 0F                  298 	.db #0x0F	; 15
   5E03 0F                  299 	.db #0x0F	; 15
   5E04 0F                  300 	.db #0x0F	; 15
   5E05 0F                  301 	.db #0x0F	; 15
   5E06 0F                  302 	.db #0x0F	; 15
   5E07 0F                  303 	.db #0x0F	; 15
   5E08 0F                  304 	.db #0x0F	; 15
   5E09 0F                  305 	.db #0x0F	; 15
   5E0A 0F                  306 	.db #0x0F	; 15
   5E0B 0F                  307 	.db #0x0F	; 15
   5E0C 0F                  308 	.db #0x0F	; 15
   5E0D 0F                  309 	.db #0x0F	; 15
   5E0E 0F                  310 	.db #0x0F	; 15
   5E0F 0F                  311 	.db #0x0F	; 15
   5E10 0F                  312 	.db #0x0F	; 15
   5E11 0F                  313 	.db #0x0F	; 15
   5E12 0F                  314 	.db #0x0F	; 15
   5E13 0F                  315 	.db #0x0F	; 15
   5E14 0F                  316 	.db #0x0F	; 15
   5E15 0F                  317 	.db #0x0F	; 15
   5E16 0F                  318 	.db #0x0F	; 15
   5E17 0F                  319 	.db #0x0F	; 15
   5E18 0F                  320 	.db #0x0F	; 15
   5E19 0F                  321 	.db #0x0F	; 15
   5E1A 0F                  322 	.db #0x0F	; 15
   5E1B 0F                  323 	.db #0x0F	; 15
   5E1C 0F                  324 	.db #0x0F	; 15
   5E1D 0F                  325 	.db #0x0F	; 15
   5E1E 0F                  326 	.db #0x0F	; 15
   5E1F 0F                  327 	.db #0x0F	; 15
   5E20 0F                  328 	.db #0x0F	; 15
   5E21 0F                  329 	.db #0x0F	; 15
   5E22 0F                  330 	.db #0x0F	; 15
   5E23 0F                  331 	.db #0x0F	; 15
   5E24 0F                  332 	.db #0x0F	; 15
   5E25 0F                  333 	.db #0x0F	; 15
   5E26 0F                  334 	.db #0x0F	; 15
   5E27 0F                  335 	.db #0x0F	; 15
   5E28 0F                  336 	.db #0x0F	; 15
   5E29 0F                  337 	.db #0x0F	; 15
   5E2A 0F                  338 	.db #0x0F	; 15
   5E2B 0F                  339 	.db #0x0F	; 15
   5E2C 0F                  340 	.db #0x0F	; 15
   5E2D 0F                  341 	.db #0x0F	; 15
   5E2E 0F                  342 	.db #0x0F	; 15
   5E2F 0F                  343 	.db #0x0F	; 15
   5E30 0F                  344 	.db #0x0F	; 15
   5E31 0F                  345 	.db #0x0F	; 15
   5E32 0F                  346 	.db #0x0F	; 15
   5E33 0F                  347 	.db #0x0F	; 15
   5E34 0F                  348 	.db #0x0F	; 15
   5E35 0F                  349 	.db #0x0F	; 15
   5E36 0F                  350 	.db #0x0F	; 15
   5E37 0F                  351 	.db #0x0F	; 15
   5E38 0F                  352 	.db #0x0F	; 15
   5E39 0F                  353 	.db #0x0F	; 15
   5E3A 0F                  354 	.db #0x0F	; 15
   5E3B 0F                  355 	.db #0x0F	; 15
   5E3C 0F                  356 	.db #0x0F	; 15
   5E3D 0F                  357 	.db #0x0F	; 15
   5E3E 0F                  358 	.db #0x0F	; 15
   5E3F 0F                  359 	.db #0x0F	; 15
   5E40 0F                  360 	.db #0x0F	; 15
   5E41 0F                  361 	.db #0x0F	; 15
   5E42 0F                  362 	.db #0x0F	; 15
   5E43 0F                  363 	.db #0x0F	; 15
   5E44 0F                  364 	.db #0x0F	; 15
   5E45 0F                  365 	.db #0x0F	; 15
   5E46 0F                  366 	.db #0x0F	; 15
   5E47 0F                  367 	.db #0x0F	; 15
   5E48 0F                  368 	.db #0x0F	; 15
   5E49 0F                  369 	.db #0x0F	; 15
   5E4A 0F                  370 	.db #0x0F	; 15
   5E4B 0F                  371 	.db #0x0F	; 15
   5E4C 0F                  372 	.db #0x0F	; 15
   5E4D 0F                  373 	.db #0x0F	; 15
   5E4E 0F                  374 	.db #0x0F	; 15
   5E4F 0F                  375 	.db #0x0F	; 15
   5E50 0F                  376 	.db #0x0F	; 15
   5E51 0F                  377 	.db #0x0F	; 15
   5E52 0F                  378 	.db #0x0F	; 15
   5E53 0F                  379 	.db #0x0F	; 15
   5E54 0F                  380 	.db #0x0F	; 15
   5E55 0F                  381 	.db #0x0F	; 15
   5E56 0F                  382 	.db #0x0F	; 15
   5E57 0F                  383 	.db #0x0F	; 15
   5E58 0F                  384 	.db #0x0F	; 15
   5E59 0F                  385 	.db #0x0F	; 15
   5E5A 0F                  386 	.db #0x0F	; 15
   5E5B 0F                  387 	.db #0x0F	; 15
   5E5C 0F                  388 	.db #0x0F	; 15
   5E5D 0F                  389 	.db #0x0F	; 15
   5E5E 0F                  390 	.db #0x0F	; 15
   5E5F 0F                  391 	.db #0x0F	; 15
   5E60 0F                  392 	.db #0x0F	; 15
   5E61 0F                  393 	.db #0x0F	; 15
   5E62 0F                  394 	.db #0x0F	; 15
   5E63 0F                  395 	.db #0x0F	; 15
   5E64 0F                  396 	.db #0x0F	; 15
   5E65 0F                  397 	.db #0x0F	; 15
   5E66 0F                  398 	.db #0x0F	; 15
   5E67 0F                  399 	.db #0x0F	; 15
   5E68 0F                  400 	.db #0x0F	; 15
   5E69 0F                  401 	.db #0x0F	; 15
   5E6A 0F                  402 	.db #0x0F	; 15
   5E6B 0F                  403 	.db #0x0F	; 15
   5E6C 0F                  404 	.db #0x0F	; 15
   5E6D 0F                  405 	.db #0x0F	; 15
   5E6E 0F                  406 	.db #0x0F	; 15
   5E6F 0F                  407 	.db #0x0F	; 15
   5E70 0F                  408 	.db #0x0F	; 15
   5E71 0F                  409 	.db #0x0F	; 15
   5E72 0F                  410 	.db #0x0F	; 15
   5E73 0F                  411 	.db #0x0F	; 15
   5E74 0F                  412 	.db #0x0F	; 15
   5E75 0F                  413 	.db #0x0F	; 15
   5E76 0F                  414 	.db #0x0F	; 15
   5E77 0F                  415 	.db #0x0F	; 15
   5E78 0F                  416 	.db #0x0F	; 15
   5E79 0F                  417 	.db #0x0F	; 15
   5E7A 0F                  418 	.db #0x0F	; 15
   5E7B 0F                  419 	.db #0x0F	; 15
   5E7C 0F                  420 	.db #0x0F	; 15
   5E7D 0F                  421 	.db #0x0F	; 15
   5E7E 0F                  422 	.db #0x0F	; 15
   5E7F 0F                  423 	.db #0x0F	; 15
   5E80 0F                  424 	.db #0x0F	; 15
   5E81 0F                  425 	.db #0x0F	; 15
   5E82 0F                  426 	.db #0x0F	; 15
   5E83 0F                  427 	.db #0x0F	; 15
   5E84 0F                  428 	.db #0x0F	; 15
   5E85 0F                  429 	.db #0x0F	; 15
   5E86 0F                  430 	.db #0x0F	; 15
   5E87 0F                  431 	.db #0x0F	; 15
   5E88 0F                  432 	.db #0x0F	; 15
   5E89 0F                  433 	.db #0x0F	; 15
   5E8A 0F                  434 	.db #0x0F	; 15
   5E8B 0F                  435 	.db #0x0F	; 15
   5E8C 0F                  436 	.db #0x0F	; 15
   5E8D 0F                  437 	.db #0x0F	; 15
   5E8E 0F                  438 	.db #0x0F	; 15
   5E8F 0F                  439 	.db #0x0F	; 15
   5E90 F0                  440 	.db #0xF0	; 240
   5E91 0F                  441 	.db #0x0F	; 15
   5E92 0F                  442 	.db #0x0F	; 15
   5E93 0F                  443 	.db #0x0F	; 15
   5E94 0F                  444 	.db #0x0F	; 15
   5E95 0F                  445 	.db #0x0F	; 15
   5E96 0F                  446 	.db #0x0F	; 15
   5E97 0F                  447 	.db #0x0F	; 15
   5E98 0F                  448 	.db #0x0F	; 15
   5E99 F0                  449 	.db #0xF0	; 240
   5E9A F0                  450 	.db #0xF0	; 240
   5E9B 0F                  451 	.db #0x0F	; 15
   5E9C 0F                  452 	.db #0x0F	; 15
   5E9D 0F                  453 	.db #0x0F	; 15
   5E9E 0F                  454 	.db #0x0F	; 15
   5E9F 0F                  455 	.db #0x0F	; 15
   5EA0 0F                  456 	.db #0x0F	; 15
   5EA1 0F                  457 	.db #0x0F	; 15
   5EA2 0F                  458 	.db #0x0F	; 15
   5EA3 F0                  459 	.db #0xF0	; 240
   5EA4                     460 _tile_tiles_01:
   5EA4 F0                  461 	.db #0xF0	; 240
   5EA5 3C                  462 	.db #0x3C	; 60
   5EA6 3C                  463 	.db #0x3C	; 60
   5EA7 3C                  464 	.db #0x3C	; 60
   5EA8 3C                  465 	.db #0x3C	; 60
   5EA9 3C                  466 	.db #0x3C	; 60
   5EAA 3C                  467 	.db #0x3C	; 60
   5EAB 3C                  468 	.db #0x3C	; 60
   5EAC 3C                  469 	.db #0x3C	; 60
   5EAD F0                  470 	.db #0xF0	; 240
   5EAE F0                  471 	.db #0xF0	; 240
   5EAF 3C                  472 	.db #0x3C	; 60
   5EB0 3C                  473 	.db #0x3C	; 60
   5EB1 3C                  474 	.db #0x3C	; 60
   5EB2 3C                  475 	.db #0x3C	; 60
   5EB3 3C                  476 	.db #0x3C	; 60
   5EB4 3C                  477 	.db #0x3C	; 60
   5EB5 3C                  478 	.db #0x3C	; 60
   5EB6 3C                  479 	.db #0x3C	; 60
   5EB7 F0                  480 	.db #0xF0	; 240
   5EB8 3C                  481 	.db #0x3C	; 60
   5EB9 2D                  482 	.db #0x2D	; 45
   5EBA 0F                  483 	.db #0x0F	; 15
   5EBB 0F                  484 	.db #0x0F	; 15
   5EBC 0F                  485 	.db #0x0F	; 15
   5EBD 0F                  486 	.db #0x0F	; 15
   5EBE 0F                  487 	.db #0x0F	; 15
   5EBF 0F                  488 	.db #0x0F	; 15
   5EC0 1E                  489 	.db #0x1E	; 30
   5EC1 3C                  490 	.db #0x3C	; 60
   5EC2 3C                  491 	.db #0x3C	; 60
   5EC3 2D                  492 	.db #0x2D	; 45
   5EC4 3C                  493 	.db #0x3C	; 60
   5EC5 3C                  494 	.db #0x3C	; 60
   5EC6 3C                  495 	.db #0x3C	; 60
   5EC7 3C                  496 	.db #0x3C	; 60
   5EC8 3C                  497 	.db #0x3C	; 60
   5EC9 3C                  498 	.db #0x3C	; 60
   5ECA 1E                  499 	.db #0x1E	; 30
   5ECB 3C                  500 	.db #0x3C	; 60
   5ECC 3C                  501 	.db #0x3C	; 60
   5ECD 0F                  502 	.db #0x0F	; 15
   5ECE 3C                  503 	.db #0x3C	; 60
   5ECF 3C                  504 	.db #0x3C	; 60
   5ED0 3C                  505 	.db #0x3C	; 60
   5ED1 3C                  506 	.db #0x3C	; 60
   5ED2 3C                  507 	.db #0x3C	; 60
   5ED3 3C                  508 	.db #0x3C	; 60
   5ED4 0F                  509 	.db #0x0F	; 15
   5ED5 3C                  510 	.db #0x3C	; 60
   5ED6 3C                  511 	.db #0x3C	; 60
   5ED7 1E                  512 	.db #0x1E	; 30
   5ED8 3C                  513 	.db #0x3C	; 60
   5ED9 3C                  514 	.db #0x3C	; 60
   5EDA 3C                  515 	.db #0x3C	; 60
   5EDB 3C                  516 	.db #0x3C	; 60
   5EDC 3C                  517 	.db #0x3C	; 60
   5EDD 3C                  518 	.db #0x3C	; 60
   5EDE 2D                  519 	.db #0x2D	; 45
   5EDF 3C                  520 	.db #0x3C	; 60
   5EE0 3C                  521 	.db #0x3C	; 60
   5EE1 1E                  522 	.db #0x1E	; 30
   5EE2 3C                  523 	.db #0x3C	; 60
   5EE3 3C                  524 	.db #0x3C	; 60
   5EE4 3C                  525 	.db #0x3C	; 60
   5EE5 3C                  526 	.db #0x3C	; 60
   5EE6 3C                  527 	.db #0x3C	; 60
   5EE7 3C                  528 	.db #0x3C	; 60
   5EE8 2D                  529 	.db #0x2D	; 45
   5EE9 3C                  530 	.db #0x3C	; 60
   5EEA 3C                  531 	.db #0x3C	; 60
   5EEB 1E                  532 	.db #0x1E	; 30
   5EEC 3C                  533 	.db #0x3C	; 60
   5EED 3C                  534 	.db #0x3C	; 60
   5EEE 3C                  535 	.db #0x3C	; 60
   5EEF 3C                  536 	.db #0x3C	; 60
   5EF0 3C                  537 	.db #0x3C	; 60
   5EF1 3C                  538 	.db #0x3C	; 60
   5EF2 2D                  539 	.db #0x2D	; 45
   5EF3 3C                  540 	.db #0x3C	; 60
   5EF4 3C                  541 	.db #0x3C	; 60
   5EF5 1E                  542 	.db #0x1E	; 30
   5EF6 3C                  543 	.db #0x3C	; 60
   5EF7 3C                  544 	.db #0x3C	; 60
   5EF8 3C                  545 	.db #0x3C	; 60
   5EF9 3C                  546 	.db #0x3C	; 60
   5EFA 3C                  547 	.db #0x3C	; 60
   5EFB 3C                  548 	.db #0x3C	; 60
   5EFC 2D                  549 	.db #0x2D	; 45
   5EFD 3C                  550 	.db #0x3C	; 60
   5EFE 3C                  551 	.db #0x3C	; 60
   5EFF 1E                  552 	.db #0x1E	; 30
   5F00 3C                  553 	.db #0x3C	; 60
   5F01 3C                  554 	.db #0x3C	; 60
   5F02 3C                  555 	.db #0x3C	; 60
   5F03 34                  556 	.db #0x34	; 52	'4'
   5F04 3C                  557 	.db #0x3C	; 60
   5F05 3C                  558 	.db #0x3C	; 60
   5F06 2D                  559 	.db #0x2D	; 45
   5F07 3C                  560 	.db #0x3C	; 60
   5F08 3C                  561 	.db #0x3C	; 60
   5F09 1E                  562 	.db #0x1E	; 30
   5F0A 3C                  563 	.db #0x3C	; 60
   5F0B 3C                  564 	.db #0x3C	; 60
   5F0C 38                  565 	.db #0x38	; 56	'8'
   5F0D 34                  566 	.db #0x34	; 52	'4'
   5F0E 3C                  567 	.db #0x3C	; 60
   5F0F 3C                  568 	.db #0x3C	; 60
   5F10 2D                  569 	.db #0x2D	; 45
   5F11 3C                  570 	.db #0x3C	; 60
   5F12 3C                  571 	.db #0x3C	; 60
   5F13 1E                  572 	.db #0x1E	; 30
   5F14 3C                  573 	.db #0x3C	; 60
   5F15 3C                  574 	.db #0x3C	; 60
   5F16 30                  575 	.db #0x30	; 48	'0'
   5F17 34                  576 	.db #0x34	; 52	'4'
   5F18 3C                  577 	.db #0x3C	; 60
   5F19 3C                  578 	.db #0x3C	; 60
   5F1A 2D                  579 	.db #0x2D	; 45
   5F1B 3C                  580 	.db #0x3C	; 60
   5F1C 3C                  581 	.db #0x3C	; 60
   5F1D 1E                  582 	.db #0x1E	; 30
   5F1E 3C                  583 	.db #0x3C	; 60
   5F1F 3C                  584 	.db #0x3C	; 60
   5F20 34                  585 	.db #0x34	; 52	'4'
   5F21 34                  586 	.db #0x34	; 52	'4'
   5F22 3C                  587 	.db #0x3C	; 60
   5F23 3C                  588 	.db #0x3C	; 60
   5F24 2D                  589 	.db #0x2D	; 45
   5F25 3C                  590 	.db #0x3C	; 60
   5F26 3C                  591 	.db #0x3C	; 60
   5F27 1E                  592 	.db #0x1E	; 30
   5F28 3C                  593 	.db #0x3C	; 60
   5F29 3C                  594 	.db #0x3C	; 60
   5F2A 3C                  595 	.db #0x3C	; 60
   5F2B 34                  596 	.db #0x34	; 52	'4'
   5F2C 3C                  597 	.db #0x3C	; 60
   5F2D 3C                  598 	.db #0x3C	; 60
   5F2E 2D                  599 	.db #0x2D	; 45
   5F2F 3C                  600 	.db #0x3C	; 60
   5F30 3C                  601 	.db #0x3C	; 60
   5F31 1E                  602 	.db #0x1E	; 30
   5F32 3C                  603 	.db #0x3C	; 60
   5F33 3C                  604 	.db #0x3C	; 60
   5F34 3C                  605 	.db #0x3C	; 60
   5F35 34                  606 	.db #0x34	; 52	'4'
   5F36 3C                  607 	.db #0x3C	; 60
   5F37 3C                  608 	.db #0x3C	; 60
   5F38 2D                  609 	.db #0x2D	; 45
   5F39 3C                  610 	.db #0x3C	; 60
   5F3A 3C                  611 	.db #0x3C	; 60
   5F3B 1E                  612 	.db #0x1E	; 30
   5F3C 3C                  613 	.db #0x3C	; 60
   5F3D 3C                  614 	.db #0x3C	; 60
   5F3E 3C                  615 	.db #0x3C	; 60
   5F3F 34                  616 	.db #0x34	; 52	'4'
   5F40 3C                  617 	.db #0x3C	; 60
   5F41 3C                  618 	.db #0x3C	; 60
   5F42 2D                  619 	.db #0x2D	; 45
   5F43 3C                  620 	.db #0x3C	; 60
   5F44 3C                  621 	.db #0x3C	; 60
   5F45 1E                  622 	.db #0x1E	; 30
   5F46 3C                  623 	.db #0x3C	; 60
   5F47 3C                  624 	.db #0x3C	; 60
   5F48 3C                  625 	.db #0x3C	; 60
   5F49 34                  626 	.db #0x34	; 52	'4'
   5F4A 3C                  627 	.db #0x3C	; 60
   5F4B 3C                  628 	.db #0x3C	; 60
   5F4C 2D                  629 	.db #0x2D	; 45
   5F4D 3C                  630 	.db #0x3C	; 60
   5F4E 3C                  631 	.db #0x3C	; 60
   5F4F 1E                  632 	.db #0x1E	; 30
   5F50 3C                  633 	.db #0x3C	; 60
   5F51 3C                  634 	.db #0x3C	; 60
   5F52 3C                  635 	.db #0x3C	; 60
   5F53 34                  636 	.db #0x34	; 52	'4'
   5F54 3C                  637 	.db #0x3C	; 60
   5F55 3C                  638 	.db #0x3C	; 60
   5F56 2D                  639 	.db #0x2D	; 45
   5F57 3C                  640 	.db #0x3C	; 60
   5F58 3C                  641 	.db #0x3C	; 60
   5F59 1E                  642 	.db #0x1E	; 30
   5F5A 3C                  643 	.db #0x3C	; 60
   5F5B 3C                  644 	.db #0x3C	; 60
   5F5C 3C                  645 	.db #0x3C	; 60
   5F5D 34                  646 	.db #0x34	; 52	'4'
   5F5E 3C                  647 	.db #0x3C	; 60
   5F5F 3C                  648 	.db #0x3C	; 60
   5F60 2D                  649 	.db #0x2D	; 45
   5F61 3C                  650 	.db #0x3C	; 60
   5F62 3C                  651 	.db #0x3C	; 60
   5F63 1E                  652 	.db #0x1E	; 30
   5F64 3C                  653 	.db #0x3C	; 60
   5F65 3C                  654 	.db #0x3C	; 60
   5F66 3C                  655 	.db #0x3C	; 60
   5F67 34                  656 	.db #0x34	; 52	'4'
   5F68 3C                  657 	.db #0x3C	; 60
   5F69 3C                  658 	.db #0x3C	; 60
   5F6A 2D                  659 	.db #0x2D	; 45
   5F6B 3C                  660 	.db #0x3C	; 60
   5F6C 3C                  661 	.db #0x3C	; 60
   5F6D 1E                  662 	.db #0x1E	; 30
   5F6E 3C                  663 	.db #0x3C	; 60
   5F6F 3C                  664 	.db #0x3C	; 60
   5F70 3C                  665 	.db #0x3C	; 60
   5F71 34                  666 	.db #0x34	; 52	'4'
   5F72 3C                  667 	.db #0x3C	; 60
   5F73 3C                  668 	.db #0x3C	; 60
   5F74 2D                  669 	.db #0x2D	; 45
   5F75 3C                  670 	.db #0x3C	; 60
   5F76 3C                  671 	.db #0x3C	; 60
   5F77 1E                  672 	.db #0x1E	; 30
   5F78 3C                  673 	.db #0x3C	; 60
   5F79 3C                  674 	.db #0x3C	; 60
   5F7A 3C                  675 	.db #0x3C	; 60
   5F7B 34                  676 	.db #0x34	; 52	'4'
   5F7C 3C                  677 	.db #0x3C	; 60
   5F7D 3C                  678 	.db #0x3C	; 60
   5F7E 2D                  679 	.db #0x2D	; 45
   5F7F 3C                  680 	.db #0x3C	; 60
   5F80 3C                  681 	.db #0x3C	; 60
   5F81 1E                  682 	.db #0x1E	; 30
   5F82 3C                  683 	.db #0x3C	; 60
   5F83 3C                  684 	.db #0x3C	; 60
   5F84 3C                  685 	.db #0x3C	; 60
   5F85 34                  686 	.db #0x34	; 52	'4'
   5F86 3C                  687 	.db #0x3C	; 60
   5F87 3C                  688 	.db #0x3C	; 60
   5F88 2D                  689 	.db #0x2D	; 45
   5F89 3C                  690 	.db #0x3C	; 60
   5F8A 3C                  691 	.db #0x3C	; 60
   5F8B 1E                  692 	.db #0x1E	; 30
   5F8C 3C                  693 	.db #0x3C	; 60
   5F8D 3C                  694 	.db #0x3C	; 60
   5F8E 3C                  695 	.db #0x3C	; 60
   5F8F 34                  696 	.db #0x34	; 52	'4'
   5F90 3C                  697 	.db #0x3C	; 60
   5F91 3C                  698 	.db #0x3C	; 60
   5F92 2D                  699 	.db #0x2D	; 45
   5F93 3C                  700 	.db #0x3C	; 60
   5F94 3C                  701 	.db #0x3C	; 60
   5F95 1E                  702 	.db #0x1E	; 30
   5F96 3C                  703 	.db #0x3C	; 60
   5F97 3C                  704 	.db #0x3C	; 60
   5F98 3C                  705 	.db #0x3C	; 60
   5F99 34                  706 	.db #0x34	; 52	'4'
   5F9A 3C                  707 	.db #0x3C	; 60
   5F9B 3C                  708 	.db #0x3C	; 60
   5F9C 2D                  709 	.db #0x2D	; 45
   5F9D 3C                  710 	.db #0x3C	; 60
   5F9E 3C                  711 	.db #0x3C	; 60
   5F9F 1E                  712 	.db #0x1E	; 30
   5FA0 3C                  713 	.db #0x3C	; 60
   5FA1 3C                  714 	.db #0x3C	; 60
   5FA2 3C                  715 	.db #0x3C	; 60
   5FA3 34                  716 	.db #0x34	; 52	'4'
   5FA4 3C                  717 	.db #0x3C	; 60
   5FA5 3C                  718 	.db #0x3C	; 60
   5FA6 2D                  719 	.db #0x2D	; 45
   5FA7 3C                  720 	.db #0x3C	; 60
   5FA8 3C                  721 	.db #0x3C	; 60
   5FA9 1E                  722 	.db #0x1E	; 30
   5FAA 3C                  723 	.db #0x3C	; 60
   5FAB 3C                  724 	.db #0x3C	; 60
   5FAC 3C                  725 	.db #0x3C	; 60
   5FAD 34                  726 	.db #0x34	; 52	'4'
   5FAE 3C                  727 	.db #0x3C	; 60
   5FAF 3C                  728 	.db #0x3C	; 60
   5FB0 2D                  729 	.db #0x2D	; 45
   5FB1 3C                  730 	.db #0x3C	; 60
   5FB2 3C                  731 	.db #0x3C	; 60
   5FB3 1E                  732 	.db #0x1E	; 30
   5FB4 3C                  733 	.db #0x3C	; 60
   5FB5 3C                  734 	.db #0x3C	; 60
   5FB6 3C                  735 	.db #0x3C	; 60
   5FB7 34                  736 	.db #0x34	; 52	'4'
   5FB8 3C                  737 	.db #0x3C	; 60
   5FB9 3C                  738 	.db #0x3C	; 60
   5FBA 2D                  739 	.db #0x2D	; 45
   5FBB 3C                  740 	.db #0x3C	; 60
   5FBC 3C                  741 	.db #0x3C	; 60
   5FBD 1E                  742 	.db #0x1E	; 30
   5FBE 3C                  743 	.db #0x3C	; 60
   5FBF 3C                  744 	.db #0x3C	; 60
   5FC0 3C                  745 	.db #0x3C	; 60
   5FC1 34                  746 	.db #0x34	; 52	'4'
   5FC2 3C                  747 	.db #0x3C	; 60
   5FC3 3C                  748 	.db #0x3C	; 60
   5FC4 2D                  749 	.db #0x2D	; 45
   5FC5 3C                  750 	.db #0x3C	; 60
   5FC6 3C                  751 	.db #0x3C	; 60
   5FC7 1E                  752 	.db #0x1E	; 30
   5FC8 3C                  753 	.db #0x3C	; 60
   5FC9 3C                  754 	.db #0x3C	; 60
   5FCA 30                  755 	.db #0x30	; 48	'0'
   5FCB 30                  756 	.db #0x30	; 48	'0'
   5FCC 34                  757 	.db #0x34	; 52	'4'
   5FCD 3C                  758 	.db #0x3C	; 60
   5FCE 2D                  759 	.db #0x2D	; 45
   5FCF 3C                  760 	.db #0x3C	; 60
   5FD0 3C                  761 	.db #0x3C	; 60
   5FD1 1E                  762 	.db #0x1E	; 30
   5FD2 3C                  763 	.db #0x3C	; 60
   5FD3 3C                  764 	.db #0x3C	; 60
   5FD4 30                  765 	.db #0x30	; 48	'0'
   5FD5 30                  766 	.db #0x30	; 48	'0'
   5FD6 34                  767 	.db #0x34	; 52	'4'
   5FD7 3C                  768 	.db #0x3C	; 60
   5FD8 2D                  769 	.db #0x2D	; 45
   5FD9 3C                  770 	.db #0x3C	; 60
   5FDA 3C                  771 	.db #0x3C	; 60
   5FDB 1E                  772 	.db #0x1E	; 30
   5FDC 3C                  773 	.db #0x3C	; 60
   5FDD 3C                  774 	.db #0x3C	; 60
   5FDE 3C                  775 	.db #0x3C	; 60
   5FDF 3C                  776 	.db #0x3C	; 60
   5FE0 3C                  777 	.db #0x3C	; 60
   5FE1 3C                  778 	.db #0x3C	; 60
   5FE2 2D                  779 	.db #0x2D	; 45
   5FE3 3C                  780 	.db #0x3C	; 60
   5FE4 3C                  781 	.db #0x3C	; 60
   5FE5 1E                  782 	.db #0x1E	; 30
   5FE6 3C                  783 	.db #0x3C	; 60
   5FE7 3C                  784 	.db #0x3C	; 60
   5FE8 3C                  785 	.db #0x3C	; 60
   5FE9 3C                  786 	.db #0x3C	; 60
   5FEA 3C                  787 	.db #0x3C	; 60
   5FEB 3C                  788 	.db #0x3C	; 60
   5FEC 2D                  789 	.db #0x2D	; 45
   5FED 3C                  790 	.db #0x3C	; 60
   5FEE 3C                  791 	.db #0x3C	; 60
   5FEF 1E                  792 	.db #0x1E	; 30
   5FF0 3C                  793 	.db #0x3C	; 60
   5FF1 3C                  794 	.db #0x3C	; 60
   5FF2 3C                  795 	.db #0x3C	; 60
   5FF3 3C                  796 	.db #0x3C	; 60
   5FF4 3C                  797 	.db #0x3C	; 60
   5FF5 3C                  798 	.db #0x3C	; 60
   5FF6 2D                  799 	.db #0x2D	; 45
   5FF7 3C                  800 	.db #0x3C	; 60
   5FF8 3C                  801 	.db #0x3C	; 60
   5FF9 1E                  802 	.db #0x1E	; 30
   5FFA 3C                  803 	.db #0x3C	; 60
   5FFB 3C                  804 	.db #0x3C	; 60
   5FFC 3C                  805 	.db #0x3C	; 60
   5FFD 3C                  806 	.db #0x3C	; 60
   5FFE 3C                  807 	.db #0x3C	; 60
   5FFF 3C                  808 	.db #0x3C	; 60
   6000 2D                  809 	.db #0x2D	; 45
   6001 3C                  810 	.db #0x3C	; 60
   6002 3C                  811 	.db #0x3C	; 60
   6003 0F                  812 	.db #0x0F	; 15
   6004 3C                  813 	.db #0x3C	; 60
   6005 3C                  814 	.db #0x3C	; 60
   6006 3C                  815 	.db #0x3C	; 60
   6007 3C                  816 	.db #0x3C	; 60
   6008 3C                  817 	.db #0x3C	; 60
   6009 3C                  818 	.db #0x3C	; 60
   600A 0F                  819 	.db #0x0F	; 15
   600B 3C                  820 	.db #0x3C	; 60
   600C 3C                  821 	.db #0x3C	; 60
   600D 2D                  822 	.db #0x2D	; 45
   600E 3C                  823 	.db #0x3C	; 60
   600F 3C                  824 	.db #0x3C	; 60
   6010 3C                  825 	.db #0x3C	; 60
   6011 3C                  826 	.db #0x3C	; 60
   6012 3C                  827 	.db #0x3C	; 60
   6013 3C                  828 	.db #0x3C	; 60
   6014 1E                  829 	.db #0x1E	; 30
   6015 3C                  830 	.db #0x3C	; 60
   6016 3C                  831 	.db #0x3C	; 60
   6017 2D                  832 	.db #0x2D	; 45
   6018 0F                  833 	.db #0x0F	; 15
   6019 0F                  834 	.db #0x0F	; 15
   601A 0F                  835 	.db #0x0F	; 15
   601B 0F                  836 	.db #0x0F	; 15
   601C 0F                  837 	.db #0x0F	; 15
   601D 0F                  838 	.db #0x0F	; 15
   601E 1E                  839 	.db #0x1E	; 30
   601F 3C                  840 	.db #0x3C	; 60
   6020 F0                  841 	.db #0xF0	; 240
   6021 3C                  842 	.db #0x3C	; 60
   6022 3C                  843 	.db #0x3C	; 60
   6023 3C                  844 	.db #0x3C	; 60
   6024 3C                  845 	.db #0x3C	; 60
   6025 3C                  846 	.db #0x3C	; 60
   6026 3C                  847 	.db #0x3C	; 60
   6027 3C                  848 	.db #0x3C	; 60
   6028 3C                  849 	.db #0x3C	; 60
   6029 F0                  850 	.db #0xF0	; 240
   602A F0                  851 	.db #0xF0	; 240
   602B 3C                  852 	.db #0x3C	; 60
   602C 3C                  853 	.db #0x3C	; 60
   602D 3C                  854 	.db #0x3C	; 60
   602E 3C                  855 	.db #0x3C	; 60
   602F 3C                  856 	.db #0x3C	; 60
   6030 3C                  857 	.db #0x3C	; 60
   6031 3C                  858 	.db #0x3C	; 60
   6032 3C                  859 	.db #0x3C	; 60
   6033 F0                  860 	.db #0xF0	; 240
   6034                     861 _tile_tiles_02:
   6034 F0                  862 	.db #0xF0	; 240
   6035 CC                  863 	.db #0xCC	; 204
   6036 CC                  864 	.db #0xCC	; 204
   6037 CC                  865 	.db #0xCC	; 204
   6038 CC                  866 	.db #0xCC	; 204
   6039 CC                  867 	.db #0xCC	; 204
   603A CC                  868 	.db #0xCC	; 204
   603B CC                  869 	.db #0xCC	; 204
   603C CC                  870 	.db #0xCC	; 204
   603D F0                  871 	.db #0xF0	; 240
   603E F0                  872 	.db #0xF0	; 240
   603F CC                  873 	.db #0xCC	; 204
   6040 CC                  874 	.db #0xCC	; 204
   6041 CC                  875 	.db #0xCC	; 204
   6042 CC                  876 	.db #0xCC	; 204
   6043 CC                  877 	.db #0xCC	; 204
   6044 CC                  878 	.db #0xCC	; 204
   6045 CC                  879 	.db #0xCC	; 204
   6046 CC                  880 	.db #0xCC	; 204
   6047 F0                  881 	.db #0xF0	; 240
   6048 CC                  882 	.db #0xCC	; 204
   6049 8D                  883 	.db #0x8D	; 141
   604A 0F                  884 	.db #0x0F	; 15
   604B 0F                  885 	.db #0x0F	; 15
   604C 0F                  886 	.db #0x0F	; 15
   604D 0F                  887 	.db #0x0F	; 15
   604E 0F                  888 	.db #0x0F	; 15
   604F 0F                  889 	.db #0x0F	; 15
   6050 4E                  890 	.db #0x4E	; 78	'N'
   6051 CC                  891 	.db #0xCC	; 204
   6052 CC                  892 	.db #0xCC	; 204
   6053 8D                  893 	.db #0x8D	; 141
   6054 CC                  894 	.db #0xCC	; 204
   6055 CC                  895 	.db #0xCC	; 204
   6056 CC                  896 	.db #0xCC	; 204
   6057 CC                  897 	.db #0xCC	; 204
   6058 CC                  898 	.db #0xCC	; 204
   6059 CC                  899 	.db #0xCC	; 204
   605A 4E                  900 	.db #0x4E	; 78	'N'
   605B CC                  901 	.db #0xCC	; 204
   605C CC                  902 	.db #0xCC	; 204
   605D 0F                  903 	.db #0x0F	; 15
   605E CC                  904 	.db #0xCC	; 204
   605F CC                  905 	.db #0xCC	; 204
   6060 CC                  906 	.db #0xCC	; 204
   6061 CC                  907 	.db #0xCC	; 204
   6062 CC                  908 	.db #0xCC	; 204
   6063 CC                  909 	.db #0xCC	; 204
   6064 0F                  910 	.db #0x0F	; 15
   6065 CC                  911 	.db #0xCC	; 204
   6066 CC                  912 	.db #0xCC	; 204
   6067 4E                  913 	.db #0x4E	; 78	'N'
   6068 CC                  914 	.db #0xCC	; 204
   6069 CC                  915 	.db #0xCC	; 204
   606A CC                  916 	.db #0xCC	; 204
   606B CC                  917 	.db #0xCC	; 204
   606C CC                  918 	.db #0xCC	; 204
   606D CC                  919 	.db #0xCC	; 204
   606E 8D                  920 	.db #0x8D	; 141
   606F CC                  921 	.db #0xCC	; 204
   6070 CC                  922 	.db #0xCC	; 204
   6071 4E                  923 	.db #0x4E	; 78	'N'
   6072 CC                  924 	.db #0xCC	; 204
   6073 CC                  925 	.db #0xCC	; 204
   6074 CC                  926 	.db #0xCC	; 204
   6075 CC                  927 	.db #0xCC	; 204
   6076 CC                  928 	.db #0xCC	; 204
   6077 CC                  929 	.db #0xCC	; 204
   6078 8D                  930 	.db #0x8D	; 141
   6079 CC                  931 	.db #0xCC	; 204
   607A CC                  932 	.db #0xCC	; 204
   607B 4E                  933 	.db #0x4E	; 78	'N'
   607C CC                  934 	.db #0xCC	; 204
   607D CC                  935 	.db #0xCC	; 204
   607E CC                  936 	.db #0xCC	; 204
   607F CC                  937 	.db #0xCC	; 204
   6080 CC                  938 	.db #0xCC	; 204
   6081 CC                  939 	.db #0xCC	; 204
   6082 8D                  940 	.db #0x8D	; 141
   6083 CC                  941 	.db #0xCC	; 204
   6084 CC                  942 	.db #0xCC	; 204
   6085 4E                  943 	.db #0x4E	; 78	'N'
   6086 CC                  944 	.db #0xCC	; 204
   6087 CC                  945 	.db #0xCC	; 204
   6088 CC                  946 	.db #0xCC	; 204
   6089 CC                  947 	.db #0xCC	; 204
   608A CC                  948 	.db #0xCC	; 204
   608B CC                  949 	.db #0xCC	; 204
   608C 8D                  950 	.db #0x8D	; 141
   608D CC                  951 	.db #0xCC	; 204
   608E CC                  952 	.db #0xCC	; 204
   608F 4E                  953 	.db #0x4E	; 78	'N'
   6090 CC                  954 	.db #0xCC	; 204
   6091 CC                  955 	.db #0xCC	; 204
   6092 CC                  956 	.db #0xCC	; 204
   6093 30                  957 	.db #0x30	; 48	'0'
   6094 CC                  958 	.db #0xCC	; 204
   6095 CC                  959 	.db #0xCC	; 204
   6096 8D                  960 	.db #0x8D	; 141
   6097 CC                  961 	.db #0xCC	; 204
   6098 CC                  962 	.db #0xCC	; 204
   6099 4E                  963 	.db #0x4E	; 78	'N'
   609A CC                  964 	.db #0xCC	; 204
   609B CC                  965 	.db #0xCC	; 204
   609C 98                  966 	.db #0x98	; 152
   609D 30                  967 	.db #0x30	; 48	'0'
   609E CC                  968 	.db #0xCC	; 204
   609F CC                  969 	.db #0xCC	; 204
   60A0 8D                  970 	.db #0x8D	; 141
   60A1 CC                  971 	.db #0xCC	; 204
   60A2 CC                  972 	.db #0xCC	; 204
   60A3 4E                  973 	.db #0x4E	; 78	'N'
   60A4 CC                  974 	.db #0xCC	; 204
   60A5 CC                  975 	.db #0xCC	; 204
   60A6 98                  976 	.db #0x98	; 152
   60A7 98                  977 	.db #0x98	; 152
   60A8 64                  978 	.db #0x64	; 100	'd'
   60A9 CC                  979 	.db #0xCC	; 204
   60AA 8D                  980 	.db #0x8D	; 141
   60AB CC                  981 	.db #0xCC	; 204
   60AC CC                  982 	.db #0xCC	; 204
   60AD 4E                  983 	.db #0x4E	; 78	'N'
   60AE CC                  984 	.db #0xCC	; 204
   60AF CC                  985 	.db #0xCC	; 204
   60B0 64                  986 	.db #0x64	; 100	'd'
   60B1 CC                  987 	.db #0xCC	; 204
   60B2 64                  988 	.db #0x64	; 100	'd'
   60B3 CC                  989 	.db #0xCC	; 204
   60B4 8D                  990 	.db #0x8D	; 141
   60B5 CC                  991 	.db #0xCC	; 204
   60B6 CC                  992 	.db #0xCC	; 204
   60B7 4E                  993 	.db #0x4E	; 78	'N'
   60B8 CC                  994 	.db #0xCC	; 204
   60B9 CC                  995 	.db #0xCC	; 204
   60BA 64                  996 	.db #0x64	; 100	'd'
   60BB CC                  997 	.db #0xCC	; 204
   60BC 64                  998 	.db #0x64	; 100	'd'
   60BD CC                  999 	.db #0xCC	; 204
   60BE 8D                 1000 	.db #0x8D	; 141
   60BF CC                 1001 	.db #0xCC	; 204
   60C0 CC                 1002 	.db #0xCC	; 204
   60C1 4E                 1003 	.db #0x4E	; 78	'N'
   60C2 CC                 1004 	.db #0xCC	; 204
   60C3 CC                 1005 	.db #0xCC	; 204
   60C4 64                 1006 	.db #0x64	; 100	'd'
   60C5 CC                 1007 	.db #0xCC	; 204
   60C6 64                 1008 	.db #0x64	; 100	'd'
   60C7 CC                 1009 	.db #0xCC	; 204
   60C8 8D                 1010 	.db #0x8D	; 141
   60C9 CC                 1011 	.db #0xCC	; 204
   60CA CC                 1012 	.db #0xCC	; 204
   60CB 4E                 1013 	.db #0x4E	; 78	'N'
   60CC CC                 1014 	.db #0xCC	; 204
   60CD CC                 1015 	.db #0xCC	; 204
   60CE CC                 1016 	.db #0xCC	; 204
   60CF CC                 1017 	.db #0xCC	; 204
   60D0 64                 1018 	.db #0x64	; 100	'd'
   60D1 CC                 1019 	.db #0xCC	; 204
   60D2 8D                 1020 	.db #0x8D	; 141
   60D3 CC                 1021 	.db #0xCC	; 204
   60D4 CC                 1022 	.db #0xCC	; 204
   60D5 4E                 1023 	.db #0x4E	; 78	'N'
   60D6 CC                 1024 	.db #0xCC	; 204
   60D7 CC                 1025 	.db #0xCC	; 204
   60D8 CC                 1026 	.db #0xCC	; 204
   60D9 CC                 1027 	.db #0xCC	; 204
   60DA 64                 1028 	.db #0x64	; 100	'd'
   60DB CC                 1029 	.db #0xCC	; 204
   60DC 8D                 1030 	.db #0x8D	; 141
   60DD CC                 1031 	.db #0xCC	; 204
   60DE CC                 1032 	.db #0xCC	; 204
   60DF 4E                 1033 	.db #0x4E	; 78	'N'
   60E0 CC                 1034 	.db #0xCC	; 204
   60E1 CC                 1035 	.db #0xCC	; 204
   60E2 CC                 1036 	.db #0xCC	; 204
   60E3 98                 1037 	.db #0x98	; 152
   60E4 CC                 1038 	.db #0xCC	; 204
   60E5 CC                 1039 	.db #0xCC	; 204
   60E6 8D                 1040 	.db #0x8D	; 141
   60E7 CC                 1041 	.db #0xCC	; 204
   60E8 CC                 1042 	.db #0xCC	; 204
   60E9 4E                 1043 	.db #0x4E	; 78	'N'
   60EA CC                 1044 	.db #0xCC	; 204
   60EB CC                 1045 	.db #0xCC	; 204
   60EC CC                 1046 	.db #0xCC	; 204
   60ED 98                 1047 	.db #0x98	; 152
   60EE CC                 1048 	.db #0xCC	; 204
   60EF CC                 1049 	.db #0xCC	; 204
   60F0 8D                 1050 	.db #0x8D	; 141
   60F1 CC                 1051 	.db #0xCC	; 204
   60F2 CC                 1052 	.db #0xCC	; 204
   60F3 4E                 1053 	.db #0x4E	; 78	'N'
   60F4 CC                 1054 	.db #0xCC	; 204
   60F5 CC                 1055 	.db #0xCC	; 204
   60F6 CC                 1056 	.db #0xCC	; 204
   60F7 30                 1057 	.db #0x30	; 48	'0'
   60F8 CC                 1058 	.db #0xCC	; 204
   60F9 CC                 1059 	.db #0xCC	; 204
   60FA 8D                 1060 	.db #0x8D	; 141
   60FB CC                 1061 	.db #0xCC	; 204
   60FC CC                 1062 	.db #0xCC	; 204
   60FD 4E                 1063 	.db #0x4E	; 78	'N'
   60FE CC                 1064 	.db #0xCC	; 204
   60FF CC                 1065 	.db #0xCC	; 204
   6100 CC                 1066 	.db #0xCC	; 204
   6101 64                 1067 	.db #0x64	; 100	'd'
   6102 CC                 1068 	.db #0xCC	; 204
   6103 CC                 1069 	.db #0xCC	; 204
   6104 8D                 1070 	.db #0x8D	; 141
   6105 CC                 1071 	.db #0xCC	; 204
   6106 CC                 1072 	.db #0xCC	; 204
   6107 4E                 1073 	.db #0x4E	; 78	'N'
   6108 CC                 1074 	.db #0xCC	; 204
   6109 CC                 1075 	.db #0xCC	; 204
   610A CC                 1076 	.db #0xCC	; 204
   610B 64                 1077 	.db #0x64	; 100	'd'
   610C CC                 1078 	.db #0xCC	; 204
   610D CC                 1079 	.db #0xCC	; 204
   610E 8D                 1080 	.db #0x8D	; 141
   610F CC                 1081 	.db #0xCC	; 204
   6110 CC                 1082 	.db #0xCC	; 204
   6111 4E                 1083 	.db #0x4E	; 78	'N'
   6112 CC                 1084 	.db #0xCC	; 204
   6113 CC                 1085 	.db #0xCC	; 204
   6114 98                 1086 	.db #0x98	; 152
   6115 64                 1087 	.db #0x64	; 100	'd'
   6116 CC                 1088 	.db #0xCC	; 204
   6117 CC                 1089 	.db #0xCC	; 204
   6118 8D                 1090 	.db #0x8D	; 141
   6119 CC                 1091 	.db #0xCC	; 204
   611A CC                 1092 	.db #0xCC	; 204
   611B 4E                 1093 	.db #0x4E	; 78	'N'
   611C CC                 1094 	.db #0xCC	; 204
   611D CC                 1095 	.db #0xCC	; 204
   611E 98                 1096 	.db #0x98	; 152
   611F CC                 1097 	.db #0xCC	; 204
   6120 CC                 1098 	.db #0xCC	; 204
   6121 CC                 1099 	.db #0xCC	; 204
   6122 8D                 1100 	.db #0x8D	; 141
   6123 CC                 1101 	.db #0xCC	; 204
   6124 CC                 1102 	.db #0xCC	; 204
   6125 4E                 1103 	.db #0x4E	; 78	'N'
   6126 CC                 1104 	.db #0xCC	; 204
   6127 CC                 1105 	.db #0xCC	; 204
   6128 98                 1106 	.db #0x98	; 152
   6129 CC                 1107 	.db #0xCC	; 204
   612A CC                 1108 	.db #0xCC	; 204
   612B CC                 1109 	.db #0xCC	; 204
   612C 8D                 1110 	.db #0x8D	; 141
   612D CC                 1111 	.db #0xCC	; 204
   612E CC                 1112 	.db #0xCC	; 204
   612F 4E                 1113 	.db #0x4E	; 78	'N'
   6130 CC                 1114 	.db #0xCC	; 204
   6131 CC                 1115 	.db #0xCC	; 204
   6132 64                 1116 	.db #0x64	; 100	'd'
   6133 CC                 1117 	.db #0xCC	; 204
   6134 CC                 1118 	.db #0xCC	; 204
   6135 CC                 1119 	.db #0xCC	; 204
   6136 8D                 1120 	.db #0x8D	; 141
   6137 CC                 1121 	.db #0xCC	; 204
   6138 CC                 1122 	.db #0xCC	; 204
   6139 4E                 1123 	.db #0x4E	; 78	'N'
   613A CC                 1124 	.db #0xCC	; 204
   613B CC                 1125 	.db #0xCC	; 204
   613C 64                 1126 	.db #0x64	; 100	'd'
   613D CC                 1127 	.db #0xCC	; 204
   613E CC                 1128 	.db #0xCC	; 204
   613F CC                 1129 	.db #0xCC	; 204
   6140 8D                 1130 	.db #0x8D	; 141
   6141 CC                 1131 	.db #0xCC	; 204
   6142 CC                 1132 	.db #0xCC	; 204
   6143 4E                 1133 	.db #0x4E	; 78	'N'
   6144 CC                 1134 	.db #0xCC	; 204
   6145 CC                 1135 	.db #0xCC	; 204
   6146 64                 1136 	.db #0x64	; 100	'd'
   6147 CC                 1137 	.db #0xCC	; 204
   6148 CC                 1138 	.db #0xCC	; 204
   6149 CC                 1139 	.db #0xCC	; 204
   614A 8D                 1140 	.db #0x8D	; 141
   614B CC                 1141 	.db #0xCC	; 204
   614C CC                 1142 	.db #0xCC	; 204
   614D 4E                 1143 	.db #0x4E	; 78	'N'
   614E CC                 1144 	.db #0xCC	; 204
   614F CC                 1145 	.db #0xCC	; 204
   6150 64                 1146 	.db #0x64	; 100	'd'
   6151 CC                 1147 	.db #0xCC	; 204
   6152 CC                 1148 	.db #0xCC	; 204
   6153 CC                 1149 	.db #0xCC	; 204
   6154 8D                 1150 	.db #0x8D	; 141
   6155 CC                 1151 	.db #0xCC	; 204
   6156 CC                 1152 	.db #0xCC	; 204
   6157 4E                 1153 	.db #0x4E	; 78	'N'
   6158 CC                 1154 	.db #0xCC	; 204
   6159 CC                 1155 	.db #0xCC	; 204
   615A 30                 1156 	.db #0x30	; 48	'0'
   615B 30                 1157 	.db #0x30	; 48	'0'
   615C 64                 1158 	.db #0x64	; 100	'd'
   615D CC                 1159 	.db #0xCC	; 204
   615E 8D                 1160 	.db #0x8D	; 141
   615F CC                 1161 	.db #0xCC	; 204
   6160 CC                 1162 	.db #0xCC	; 204
   6161 4E                 1163 	.db #0x4E	; 78	'N'
   6162 CC                 1164 	.db #0xCC	; 204
   6163 CC                 1165 	.db #0xCC	; 204
   6164 30                 1166 	.db #0x30	; 48	'0'
   6165 30                 1167 	.db #0x30	; 48	'0'
   6166 64                 1168 	.db #0x64	; 100	'd'
   6167 CC                 1169 	.db #0xCC	; 204
   6168 8D                 1170 	.db #0x8D	; 141
   6169 CC                 1171 	.db #0xCC	; 204
   616A CC                 1172 	.db #0xCC	; 204
   616B 4E                 1173 	.db #0x4E	; 78	'N'
   616C CC                 1174 	.db #0xCC	; 204
   616D CC                 1175 	.db #0xCC	; 204
   616E CC                 1176 	.db #0xCC	; 204
   616F CC                 1177 	.db #0xCC	; 204
   6170 CC                 1178 	.db #0xCC	; 204
   6171 CC                 1179 	.db #0xCC	; 204
   6172 8D                 1180 	.db #0x8D	; 141
   6173 CC                 1181 	.db #0xCC	; 204
   6174 CC                 1182 	.db #0xCC	; 204
   6175 4E                 1183 	.db #0x4E	; 78	'N'
   6176 CC                 1184 	.db #0xCC	; 204
   6177 CC                 1185 	.db #0xCC	; 204
   6178 CC                 1186 	.db #0xCC	; 204
   6179 CC                 1187 	.db #0xCC	; 204
   617A CC                 1188 	.db #0xCC	; 204
   617B CC                 1189 	.db #0xCC	; 204
   617C 8D                 1190 	.db #0x8D	; 141
   617D CC                 1191 	.db #0xCC	; 204
   617E CC                 1192 	.db #0xCC	; 204
   617F 4E                 1193 	.db #0x4E	; 78	'N'
   6180 CC                 1194 	.db #0xCC	; 204
   6181 CC                 1195 	.db #0xCC	; 204
   6182 CC                 1196 	.db #0xCC	; 204
   6183 CC                 1197 	.db #0xCC	; 204
   6184 CC                 1198 	.db #0xCC	; 204
   6185 CC                 1199 	.db #0xCC	; 204
   6186 8D                 1200 	.db #0x8D	; 141
   6187 CC                 1201 	.db #0xCC	; 204
   6188 CC                 1202 	.db #0xCC	; 204
   6189 4E                 1203 	.db #0x4E	; 78	'N'
   618A CC                 1204 	.db #0xCC	; 204
   618B CC                 1205 	.db #0xCC	; 204
   618C CC                 1206 	.db #0xCC	; 204
   618D CC                 1207 	.db #0xCC	; 204
   618E CC                 1208 	.db #0xCC	; 204
   618F CC                 1209 	.db #0xCC	; 204
   6190 8D                 1210 	.db #0x8D	; 141
   6191 CC                 1211 	.db #0xCC	; 204
   6192 CC                 1212 	.db #0xCC	; 204
   6193 0F                 1213 	.db #0x0F	; 15
   6194 CC                 1214 	.db #0xCC	; 204
   6195 CC                 1215 	.db #0xCC	; 204
   6196 CC                 1216 	.db #0xCC	; 204
   6197 CC                 1217 	.db #0xCC	; 204
   6198 CC                 1218 	.db #0xCC	; 204
   6199 CC                 1219 	.db #0xCC	; 204
   619A 0F                 1220 	.db #0x0F	; 15
   619B CC                 1221 	.db #0xCC	; 204
   619C CC                 1222 	.db #0xCC	; 204
   619D 8D                 1223 	.db #0x8D	; 141
   619E CC                 1224 	.db #0xCC	; 204
   619F CC                 1225 	.db #0xCC	; 204
   61A0 CC                 1226 	.db #0xCC	; 204
   61A1 CC                 1227 	.db #0xCC	; 204
   61A2 CC                 1228 	.db #0xCC	; 204
   61A3 CC                 1229 	.db #0xCC	; 204
   61A4 4E                 1230 	.db #0x4E	; 78	'N'
   61A5 CC                 1231 	.db #0xCC	; 204
   61A6 CC                 1232 	.db #0xCC	; 204
   61A7 8D                 1233 	.db #0x8D	; 141
   61A8 0F                 1234 	.db #0x0F	; 15
   61A9 0F                 1235 	.db #0x0F	; 15
   61AA 0F                 1236 	.db #0x0F	; 15
   61AB 0F                 1237 	.db #0x0F	; 15
   61AC 0F                 1238 	.db #0x0F	; 15
   61AD 0F                 1239 	.db #0x0F	; 15
   61AE 4E                 1240 	.db #0x4E	; 78	'N'
   61AF CC                 1241 	.db #0xCC	; 204
   61B0 F0                 1242 	.db #0xF0	; 240
   61B1 CC                 1243 	.db #0xCC	; 204
   61B2 CC                 1244 	.db #0xCC	; 204
   61B3 CC                 1245 	.db #0xCC	; 204
   61B4 CC                 1246 	.db #0xCC	; 204
   61B5 CC                 1247 	.db #0xCC	; 204
   61B6 CC                 1248 	.db #0xCC	; 204
   61B7 CC                 1249 	.db #0xCC	; 204
   61B8 CC                 1250 	.db #0xCC	; 204
   61B9 F0                 1251 	.db #0xF0	; 240
   61BA F0                 1252 	.db #0xF0	; 240
   61BB CC                 1253 	.db #0xCC	; 204
   61BC CC                 1254 	.db #0xCC	; 204
   61BD CC                 1255 	.db #0xCC	; 204
   61BE CC                 1256 	.db #0xCC	; 204
   61BF CC                 1257 	.db #0xCC	; 204
   61C0 CC                 1258 	.db #0xCC	; 204
   61C1 CC                 1259 	.db #0xCC	; 204
   61C2 CC                 1260 	.db #0xCC	; 204
   61C3 F0                 1261 	.db #0xF0	; 240
   61C4                    1262 _tile_tiles_03:
   61C4 F0                 1263 	.db #0xF0	; 240
   61C5 30                 1264 	.db #0x30	; 48	'0'
   61C6 30                 1265 	.db #0x30	; 48	'0'
   61C7 30                 1266 	.db #0x30	; 48	'0'
   61C8 30                 1267 	.db #0x30	; 48	'0'
   61C9 30                 1268 	.db #0x30	; 48	'0'
   61CA 30                 1269 	.db #0x30	; 48	'0'
   61CB 30                 1270 	.db #0x30	; 48	'0'
   61CC 30                 1271 	.db #0x30	; 48	'0'
   61CD F0                 1272 	.db #0xF0	; 240
   61CE F0                 1273 	.db #0xF0	; 240
   61CF 30                 1274 	.db #0x30	; 48	'0'
   61D0 30                 1275 	.db #0x30	; 48	'0'
   61D1 30                 1276 	.db #0x30	; 48	'0'
   61D2 30                 1277 	.db #0x30	; 48	'0'
   61D3 30                 1278 	.db #0x30	; 48	'0'
   61D4 30                 1279 	.db #0x30	; 48	'0'
   61D5 30                 1280 	.db #0x30	; 48	'0'
   61D6 30                 1281 	.db #0x30	; 48	'0'
   61D7 F0                 1282 	.db #0xF0	; 240
   61D8 30                 1283 	.db #0x30	; 48	'0'
   61D9 25                 1284 	.db #0x25	; 37
   61DA 0F                 1285 	.db #0x0F	; 15
   61DB 0F                 1286 	.db #0x0F	; 15
   61DC 0F                 1287 	.db #0x0F	; 15
   61DD 0F                 1288 	.db #0x0F	; 15
   61DE 0F                 1289 	.db #0x0F	; 15
   61DF 0F                 1290 	.db #0x0F	; 15
   61E0 1A                 1291 	.db #0x1A	; 26
   61E1 30                 1292 	.db #0x30	; 48	'0'
   61E2 30                 1293 	.db #0x30	; 48	'0'
   61E3 25                 1294 	.db #0x25	; 37
   61E4 30                 1295 	.db #0x30	; 48	'0'
   61E5 30                 1296 	.db #0x30	; 48	'0'
   61E6 30                 1297 	.db #0x30	; 48	'0'
   61E7 30                 1298 	.db #0x30	; 48	'0'
   61E8 30                 1299 	.db #0x30	; 48	'0'
   61E9 30                 1300 	.db #0x30	; 48	'0'
   61EA 1A                 1301 	.db #0x1A	; 26
   61EB 30                 1302 	.db #0x30	; 48	'0'
   61EC 30                 1303 	.db #0x30	; 48	'0'
   61ED 0F                 1304 	.db #0x0F	; 15
   61EE 30                 1305 	.db #0x30	; 48	'0'
   61EF 30                 1306 	.db #0x30	; 48	'0'
   61F0 30                 1307 	.db #0x30	; 48	'0'
   61F1 30                 1308 	.db #0x30	; 48	'0'
   61F2 30                 1309 	.db #0x30	; 48	'0'
   61F3 30                 1310 	.db #0x30	; 48	'0'
   61F4 0F                 1311 	.db #0x0F	; 15
   61F5 30                 1312 	.db #0x30	; 48	'0'
   61F6 30                 1313 	.db #0x30	; 48	'0'
   61F7 1A                 1314 	.db #0x1A	; 26
   61F8 30                 1315 	.db #0x30	; 48	'0'
   61F9 30                 1316 	.db #0x30	; 48	'0'
   61FA 30                 1317 	.db #0x30	; 48	'0'
   61FB 30                 1318 	.db #0x30	; 48	'0'
   61FC 30                 1319 	.db #0x30	; 48	'0'
   61FD 30                 1320 	.db #0x30	; 48	'0'
   61FE 25                 1321 	.db #0x25	; 37
   61FF 30                 1322 	.db #0x30	; 48	'0'
   6200 30                 1323 	.db #0x30	; 48	'0'
   6201 1A                 1324 	.db #0x1A	; 26
   6202 30                 1325 	.db #0x30	; 48	'0'
   6203 30                 1326 	.db #0x30	; 48	'0'
   6204 30                 1327 	.db #0x30	; 48	'0'
   6205 30                 1328 	.db #0x30	; 48	'0'
   6206 30                 1329 	.db #0x30	; 48	'0'
   6207 30                 1330 	.db #0x30	; 48	'0'
   6208 25                 1331 	.db #0x25	; 37
   6209 30                 1332 	.db #0x30	; 48	'0'
   620A 30                 1333 	.db #0x30	; 48	'0'
   620B 1A                 1334 	.db #0x1A	; 26
   620C 30                 1335 	.db #0x30	; 48	'0'
   620D 30                 1336 	.db #0x30	; 48	'0'
   620E 30                 1337 	.db #0x30	; 48	'0'
   620F 30                 1338 	.db #0x30	; 48	'0'
   6210 30                 1339 	.db #0x30	; 48	'0'
   6211 30                 1340 	.db #0x30	; 48	'0'
   6212 25                 1341 	.db #0x25	; 37
   6213 30                 1342 	.db #0x30	; 48	'0'
   6214 30                 1343 	.db #0x30	; 48	'0'
   6215 1A                 1344 	.db #0x1A	; 26
   6216 30                 1345 	.db #0x30	; 48	'0'
   6217 30                 1346 	.db #0x30	; 48	'0'
   6218 30                 1347 	.db #0x30	; 48	'0'
   6219 30                 1348 	.db #0x30	; 48	'0'
   621A 30                 1349 	.db #0x30	; 48	'0'
   621B 30                 1350 	.db #0x30	; 48	'0'
   621C 25                 1351 	.db #0x25	; 37
   621D 30                 1352 	.db #0x30	; 48	'0'
   621E 30                 1353 	.db #0x30	; 48	'0'
   621F 1A                 1354 	.db #0x1A	; 26
   6220 30                 1355 	.db #0x30	; 48	'0'
   6221 30                 1356 	.db #0x30	; 48	'0'
   6222 30                 1357 	.db #0x30	; 48	'0'
   6223 30                 1358 	.db #0x30	; 48	'0'
   6224 30                 1359 	.db #0x30	; 48	'0'
   6225 30                 1360 	.db #0x30	; 48	'0'
   6226 25                 1361 	.db #0x25	; 37
   6227 30                 1362 	.db #0x30	; 48	'0'
   6228 30                 1363 	.db #0x30	; 48	'0'
   6229 1A                 1364 	.db #0x1A	; 26
   622A 30                 1365 	.db #0x30	; 48	'0'
   622B 30                 1366 	.db #0x30	; 48	'0'
   622C 64                 1367 	.db #0x64	; 100	'd'
   622D CC                 1368 	.db #0xCC	; 204
   622E 30                 1369 	.db #0x30	; 48	'0'
   622F 30                 1370 	.db #0x30	; 48	'0'
   6230 25                 1371 	.db #0x25	; 37
   6231 30                 1372 	.db #0x30	; 48	'0'
   6232 30                 1373 	.db #0x30	; 48	'0'
   6233 1A                 1374 	.db #0x1A	; 26
   6234 30                 1375 	.db #0x30	; 48	'0'
   6235 30                 1376 	.db #0x30	; 48	'0'
   6236 CC                 1377 	.db #0xCC	; 204
   6237 CC                 1378 	.db #0xCC	; 204
   6238 98                 1379 	.db #0x98	; 152
   6239 30                 1380 	.db #0x30	; 48	'0'
   623A 25                 1381 	.db #0x25	; 37
   623B 30                 1382 	.db #0x30	; 48	'0'
   623C 30                 1383 	.db #0x30	; 48	'0'
   623D 1A                 1384 	.db #0x1A	; 26
   623E 30                 1385 	.db #0x30	; 48	'0'
   623F 64                 1386 	.db #0x64	; 100	'd'
   6240 CC                 1387 	.db #0xCC	; 204
   6241 64                 1388 	.db #0x64	; 100	'd'
   6242 CC                 1389 	.db #0xCC	; 204
   6243 30                 1390 	.db #0x30	; 48	'0'
   6244 25                 1391 	.db #0x25	; 37
   6245 30                 1392 	.db #0x30	; 48	'0'
   6246 30                 1393 	.db #0x30	; 48	'0'
   6247 1A                 1394 	.db #0x1A	; 26
   6248 30                 1395 	.db #0x30	; 48	'0'
   6249 64                 1396 	.db #0x64	; 100	'd'
   624A 98                 1397 	.db #0x98	; 152
   624B 30                 1398 	.db #0x30	; 48	'0'
   624C CC                 1399 	.db #0xCC	; 204
   624D 30                 1400 	.db #0x30	; 48	'0'
   624E 25                 1401 	.db #0x25	; 37
   624F 30                 1402 	.db #0x30	; 48	'0'
   6250 30                 1403 	.db #0x30	; 48	'0'
   6251 1A                 1404 	.db #0x1A	; 26
   6252 30                 1405 	.db #0x30	; 48	'0'
   6253 64                 1406 	.db #0x64	; 100	'd'
   6254 98                 1407 	.db #0x98	; 152
   6255 30                 1408 	.db #0x30	; 48	'0'
   6256 CC                 1409 	.db #0xCC	; 204
   6257 30                 1410 	.db #0x30	; 48	'0'
   6258 25                 1411 	.db #0x25	; 37
   6259 30                 1412 	.db #0x30	; 48	'0'
   625A 30                 1413 	.db #0x30	; 48	'0'
   625B 1A                 1414 	.db #0x1A	; 26
   625C 30                 1415 	.db #0x30	; 48	'0'
   625D 30                 1416 	.db #0x30	; 48	'0'
   625E 30                 1417 	.db #0x30	; 48	'0'
   625F 30                 1418 	.db #0x30	; 48	'0'
   6260 CC                 1419 	.db #0xCC	; 204
   6261 30                 1420 	.db #0x30	; 48	'0'
   6262 25                 1421 	.db #0x25	; 37
   6263 30                 1422 	.db #0x30	; 48	'0'
   6264 30                 1423 	.db #0x30	; 48	'0'
   6265 1A                 1424 	.db #0x1A	; 26
   6266 30                 1425 	.db #0x30	; 48	'0'
   6267 30                 1426 	.db #0x30	; 48	'0'
   6268 30                 1427 	.db #0x30	; 48	'0'
   6269 30                 1428 	.db #0x30	; 48	'0'
   626A CC                 1429 	.db #0xCC	; 204
   626B 30                 1430 	.db #0x30	; 48	'0'
   626C 25                 1431 	.db #0x25	; 37
   626D 30                 1432 	.db #0x30	; 48	'0'
   626E 30                 1433 	.db #0x30	; 48	'0'
   626F 1A                 1434 	.db #0x1A	; 26
   6270 30                 1435 	.db #0x30	; 48	'0'
   6271 30                 1436 	.db #0x30	; 48	'0'
   6272 30                 1437 	.db #0x30	; 48	'0'
   6273 30                 1438 	.db #0x30	; 48	'0'
   6274 CC                 1439 	.db #0xCC	; 204
   6275 30                 1440 	.db #0x30	; 48	'0'
   6276 25                 1441 	.db #0x25	; 37
   6277 30                 1442 	.db #0x30	; 48	'0'
   6278 30                 1443 	.db #0x30	; 48	'0'
   6279 1A                 1444 	.db #0x1A	; 26
   627A 30                 1445 	.db #0x30	; 48	'0'
   627B 30                 1446 	.db #0x30	; 48	'0'
   627C 30                 1447 	.db #0x30	; 48	'0'
   627D 64                 1448 	.db #0x64	; 100	'd'
   627E CC                 1449 	.db #0xCC	; 204
   627F 30                 1450 	.db #0x30	; 48	'0'
   6280 25                 1451 	.db #0x25	; 37
   6281 30                 1452 	.db #0x30	; 48	'0'
   6282 30                 1453 	.db #0x30	; 48	'0'
   6283 1A                 1454 	.db #0x1A	; 26
   6284 30                 1455 	.db #0x30	; 48	'0'
   6285 30                 1456 	.db #0x30	; 48	'0'
   6286 30                 1457 	.db #0x30	; 48	'0'
   6287 CC                 1458 	.db #0xCC	; 204
   6288 CC                 1459 	.db #0xCC	; 204
   6289 30                 1460 	.db #0x30	; 48	'0'
   628A 25                 1461 	.db #0x25	; 37
   628B 30                 1462 	.db #0x30	; 48	'0'
   628C 30                 1463 	.db #0x30	; 48	'0'
   628D 1A                 1464 	.db #0x1A	; 26
   628E 30                 1465 	.db #0x30	; 48	'0'
   628F 30                 1466 	.db #0x30	; 48	'0'
   6290 30                 1467 	.db #0x30	; 48	'0'
   6291 CC                 1468 	.db #0xCC	; 204
   6292 98                 1469 	.db #0x98	; 152
   6293 30                 1470 	.db #0x30	; 48	'0'
   6294 25                 1471 	.db #0x25	; 37
   6295 30                 1472 	.db #0x30	; 48	'0'
   6296 30                 1473 	.db #0x30	; 48	'0'
   6297 1A                 1474 	.db #0x1A	; 26
   6298 30                 1475 	.db #0x30	; 48	'0'
   6299 30                 1476 	.db #0x30	; 48	'0'
   629A 30                 1477 	.db #0x30	; 48	'0'
   629B 64                 1478 	.db #0x64	; 100	'd'
   629C CC                 1479 	.db #0xCC	; 204
   629D 30                 1480 	.db #0x30	; 48	'0'
   629E 25                 1481 	.db #0x25	; 37
   629F 30                 1482 	.db #0x30	; 48	'0'
   62A0 30                 1483 	.db #0x30	; 48	'0'
   62A1 1A                 1484 	.db #0x1A	; 26
   62A2 30                 1485 	.db #0x30	; 48	'0'
   62A3 30                 1486 	.db #0x30	; 48	'0'
   62A4 30                 1487 	.db #0x30	; 48	'0'
   62A5 30                 1488 	.db #0x30	; 48	'0'
   62A6 CC                 1489 	.db #0xCC	; 204
   62A7 30                 1490 	.db #0x30	; 48	'0'
   62A8 25                 1491 	.db #0x25	; 37
   62A9 30                 1492 	.db #0x30	; 48	'0'
   62AA 30                 1493 	.db #0x30	; 48	'0'
   62AB 1A                 1494 	.db #0x1A	; 26
   62AC 30                 1495 	.db #0x30	; 48	'0'
   62AD 30                 1496 	.db #0x30	; 48	'0'
   62AE 30                 1497 	.db #0x30	; 48	'0'
   62AF 30                 1498 	.db #0x30	; 48	'0'
   62B0 CC                 1499 	.db #0xCC	; 204
   62B1 30                 1500 	.db #0x30	; 48	'0'
   62B2 25                 1501 	.db #0x25	; 37
   62B3 30                 1502 	.db #0x30	; 48	'0'
   62B4 30                 1503 	.db #0x30	; 48	'0'
   62B5 1A                 1504 	.db #0x1A	; 26
   62B6 30                 1505 	.db #0x30	; 48	'0'
   62B7 30                 1506 	.db #0x30	; 48	'0'
   62B8 30                 1507 	.db #0x30	; 48	'0'
   62B9 30                 1508 	.db #0x30	; 48	'0'
   62BA CC                 1509 	.db #0xCC	; 204
   62BB 30                 1510 	.db #0x30	; 48	'0'
   62BC 25                 1511 	.db #0x25	; 37
   62BD 30                 1512 	.db #0x30	; 48	'0'
   62BE 30                 1513 	.db #0x30	; 48	'0'
   62BF 1A                 1514 	.db #0x1A	; 26
   62C0 30                 1515 	.db #0x30	; 48	'0'
   62C1 30                 1516 	.db #0x30	; 48	'0'
   62C2 30                 1517 	.db #0x30	; 48	'0'
   62C3 30                 1518 	.db #0x30	; 48	'0'
   62C4 CC                 1519 	.db #0xCC	; 204
   62C5 30                 1520 	.db #0x30	; 48	'0'
   62C6 25                 1521 	.db #0x25	; 37
   62C7 30                 1522 	.db #0x30	; 48	'0'
   62C8 30                 1523 	.db #0x30	; 48	'0'
   62C9 1A                 1524 	.db #0x1A	; 26
   62CA 30                 1525 	.db #0x30	; 48	'0'
   62CB 30                 1526 	.db #0x30	; 48	'0'
   62CC 30                 1527 	.db #0x30	; 48	'0'
   62CD 30                 1528 	.db #0x30	; 48	'0'
   62CE CC                 1529 	.db #0xCC	; 204
   62CF 30                 1530 	.db #0x30	; 48	'0'
   62D0 25                 1531 	.db #0x25	; 37
   62D1 30                 1532 	.db #0x30	; 48	'0'
   62D2 30                 1533 	.db #0x30	; 48	'0'
   62D3 1A                 1534 	.db #0x1A	; 26
   62D4 30                 1535 	.db #0x30	; 48	'0'
   62D5 64                 1536 	.db #0x64	; 100	'd'
   62D6 98                 1537 	.db #0x98	; 152
   62D7 30                 1538 	.db #0x30	; 48	'0'
   62D8 CC                 1539 	.db #0xCC	; 204
   62D9 30                 1540 	.db #0x30	; 48	'0'
   62DA 25                 1541 	.db #0x25	; 37
   62DB 30                 1542 	.db #0x30	; 48	'0'
   62DC 30                 1543 	.db #0x30	; 48	'0'
   62DD 1A                 1544 	.db #0x1A	; 26
   62DE 30                 1545 	.db #0x30	; 48	'0'
   62DF 64                 1546 	.db #0x64	; 100	'd'
   62E0 CC                 1547 	.db #0xCC	; 204
   62E1 64                 1548 	.db #0x64	; 100	'd'
   62E2 CC                 1549 	.db #0xCC	; 204
   62E3 30                 1550 	.db #0x30	; 48	'0'
   62E4 25                 1551 	.db #0x25	; 37
   62E5 30                 1552 	.db #0x30	; 48	'0'
   62E6 30                 1553 	.db #0x30	; 48	'0'
   62E7 1A                 1554 	.db #0x1A	; 26
   62E8 30                 1555 	.db #0x30	; 48	'0'
   62E9 64                 1556 	.db #0x64	; 100	'd'
   62EA CC                 1557 	.db #0xCC	; 204
   62EB CC                 1558 	.db #0xCC	; 204
   62EC CC                 1559 	.db #0xCC	; 204
   62ED 30                 1560 	.db #0x30	; 48	'0'
   62EE 25                 1561 	.db #0x25	; 37
   62EF 30                 1562 	.db #0x30	; 48	'0'
   62F0 30                 1563 	.db #0x30	; 48	'0'
   62F1 1A                 1564 	.db #0x1A	; 26
   62F2 30                 1565 	.db #0x30	; 48	'0'
   62F3 30                 1566 	.db #0x30	; 48	'0'
   62F4 CC                 1567 	.db #0xCC	; 204
   62F5 CC                 1568 	.db #0xCC	; 204
   62F6 98                 1569 	.db #0x98	; 152
   62F7 30                 1570 	.db #0x30	; 48	'0'
   62F8 25                 1571 	.db #0x25	; 37
   62F9 30                 1572 	.db #0x30	; 48	'0'
   62FA 30                 1573 	.db #0x30	; 48	'0'
   62FB 1A                 1574 	.db #0x1A	; 26
   62FC 30                 1575 	.db #0x30	; 48	'0'
   62FD 30                 1576 	.db #0x30	; 48	'0'
   62FE 64                 1577 	.db #0x64	; 100	'd'
   62FF CC                 1578 	.db #0xCC	; 204
   6300 30                 1579 	.db #0x30	; 48	'0'
   6301 30                 1580 	.db #0x30	; 48	'0'
   6302 25                 1581 	.db #0x25	; 37
   6303 30                 1582 	.db #0x30	; 48	'0'
   6304 30                 1583 	.db #0x30	; 48	'0'
   6305 1A                 1584 	.db #0x1A	; 26
   6306 30                 1585 	.db #0x30	; 48	'0'
   6307 30                 1586 	.db #0x30	; 48	'0'
   6308 30                 1587 	.db #0x30	; 48	'0'
   6309 30                 1588 	.db #0x30	; 48	'0'
   630A 30                 1589 	.db #0x30	; 48	'0'
   630B 30                 1590 	.db #0x30	; 48	'0'
   630C 25                 1591 	.db #0x25	; 37
   630D 30                 1592 	.db #0x30	; 48	'0'
   630E 30                 1593 	.db #0x30	; 48	'0'
   630F 1A                 1594 	.db #0x1A	; 26
   6310 30                 1595 	.db #0x30	; 48	'0'
   6311 30                 1596 	.db #0x30	; 48	'0'
   6312 30                 1597 	.db #0x30	; 48	'0'
   6313 30                 1598 	.db #0x30	; 48	'0'
   6314 30                 1599 	.db #0x30	; 48	'0'
   6315 30                 1600 	.db #0x30	; 48	'0'
   6316 25                 1601 	.db #0x25	; 37
   6317 30                 1602 	.db #0x30	; 48	'0'
   6318 30                 1603 	.db #0x30	; 48	'0'
   6319 1A                 1604 	.db #0x1A	; 26
   631A 30                 1605 	.db #0x30	; 48	'0'
   631B 30                 1606 	.db #0x30	; 48	'0'
   631C 30                 1607 	.db #0x30	; 48	'0'
   631D 30                 1608 	.db #0x30	; 48	'0'
   631E 30                 1609 	.db #0x30	; 48	'0'
   631F 30                 1610 	.db #0x30	; 48	'0'
   6320 25                 1611 	.db #0x25	; 37
   6321 30                 1612 	.db #0x30	; 48	'0'
   6322 30                 1613 	.db #0x30	; 48	'0'
   6323 0F                 1614 	.db #0x0F	; 15
   6324 30                 1615 	.db #0x30	; 48	'0'
   6325 30                 1616 	.db #0x30	; 48	'0'
   6326 30                 1617 	.db #0x30	; 48	'0'
   6327 30                 1618 	.db #0x30	; 48	'0'
   6328 30                 1619 	.db #0x30	; 48	'0'
   6329 30                 1620 	.db #0x30	; 48	'0'
   632A 0F                 1621 	.db #0x0F	; 15
   632B 30                 1622 	.db #0x30	; 48	'0'
   632C 30                 1623 	.db #0x30	; 48	'0'
   632D 25                 1624 	.db #0x25	; 37
   632E 30                 1625 	.db #0x30	; 48	'0'
   632F 30                 1626 	.db #0x30	; 48	'0'
   6330 30                 1627 	.db #0x30	; 48	'0'
   6331 30                 1628 	.db #0x30	; 48	'0'
   6332 30                 1629 	.db #0x30	; 48	'0'
   6333 30                 1630 	.db #0x30	; 48	'0'
   6334 1A                 1631 	.db #0x1A	; 26
   6335 30                 1632 	.db #0x30	; 48	'0'
   6336 30                 1633 	.db #0x30	; 48	'0'
   6337 25                 1634 	.db #0x25	; 37
   6338 0F                 1635 	.db #0x0F	; 15
   6339 0F                 1636 	.db #0x0F	; 15
   633A 0F                 1637 	.db #0x0F	; 15
   633B 0F                 1638 	.db #0x0F	; 15
   633C 0F                 1639 	.db #0x0F	; 15
   633D 0F                 1640 	.db #0x0F	; 15
   633E 1A                 1641 	.db #0x1A	; 26
   633F 30                 1642 	.db #0x30	; 48	'0'
   6340 F0                 1643 	.db #0xF0	; 240
   6341 30                 1644 	.db #0x30	; 48	'0'
   6342 30                 1645 	.db #0x30	; 48	'0'
   6343 30                 1646 	.db #0x30	; 48	'0'
   6344 30                 1647 	.db #0x30	; 48	'0'
   6345 30                 1648 	.db #0x30	; 48	'0'
   6346 30                 1649 	.db #0x30	; 48	'0'
   6347 30                 1650 	.db #0x30	; 48	'0'
   6348 30                 1651 	.db #0x30	; 48	'0'
   6349 F0                 1652 	.db #0xF0	; 240
   634A F0                 1653 	.db #0xF0	; 240
   634B 30                 1654 	.db #0x30	; 48	'0'
   634C 30                 1655 	.db #0x30	; 48	'0'
   634D 30                 1656 	.db #0x30	; 48	'0'
   634E 30                 1657 	.db #0x30	; 48	'0'
   634F 30                 1658 	.db #0x30	; 48	'0'
   6350 30                 1659 	.db #0x30	; 48	'0'
   6351 30                 1660 	.db #0x30	; 48	'0'
   6352 30                 1661 	.db #0x30	; 48	'0'
   6353 F0                 1662 	.db #0xF0	; 240
   6354                    1663 _tile_tiles_04:
   6354 F0                 1664 	.db #0xF0	; 240
   6355 30                 1665 	.db #0x30	; 48	'0'
   6356 30                 1666 	.db #0x30	; 48	'0'
   6357 30                 1667 	.db #0x30	; 48	'0'
   6358 30                 1668 	.db #0x30	; 48	'0'
   6359 30                 1669 	.db #0x30	; 48	'0'
   635A 30                 1670 	.db #0x30	; 48	'0'
   635B 30                 1671 	.db #0x30	; 48	'0'
   635C 30                 1672 	.db #0x30	; 48	'0'
   635D F0                 1673 	.db #0xF0	; 240
   635E F0                 1674 	.db #0xF0	; 240
   635F 30                 1675 	.db #0x30	; 48	'0'
   6360 30                 1676 	.db #0x30	; 48	'0'
   6361 30                 1677 	.db #0x30	; 48	'0'
   6362 30                 1678 	.db #0x30	; 48	'0'
   6363 30                 1679 	.db #0x30	; 48	'0'
   6364 30                 1680 	.db #0x30	; 48	'0'
   6365 30                 1681 	.db #0x30	; 48	'0'
   6366 30                 1682 	.db #0x30	; 48	'0'
   6367 F0                 1683 	.db #0xF0	; 240
   6368 30                 1684 	.db #0x30	; 48	'0'
   6369 25                 1685 	.db #0x25	; 37
   636A 0F                 1686 	.db #0x0F	; 15
   636B 0F                 1687 	.db #0x0F	; 15
   636C 0F                 1688 	.db #0x0F	; 15
   636D 0F                 1689 	.db #0x0F	; 15
   636E 0F                 1690 	.db #0x0F	; 15
   636F 0F                 1691 	.db #0x0F	; 15
   6370 1A                 1692 	.db #0x1A	; 26
   6371 30                 1693 	.db #0x30	; 48	'0'
   6372 30                 1694 	.db #0x30	; 48	'0'
   6373 25                 1695 	.db #0x25	; 37
   6374 30                 1696 	.db #0x30	; 48	'0'
   6375 30                 1697 	.db #0x30	; 48	'0'
   6376 30                 1698 	.db #0x30	; 48	'0'
   6377 30                 1699 	.db #0x30	; 48	'0'
   6378 30                 1700 	.db #0x30	; 48	'0'
   6379 30                 1701 	.db #0x30	; 48	'0'
   637A 1A                 1702 	.db #0x1A	; 26
   637B 30                 1703 	.db #0x30	; 48	'0'
   637C 30                 1704 	.db #0x30	; 48	'0'
   637D 0F                 1705 	.db #0x0F	; 15
   637E 30                 1706 	.db #0x30	; 48	'0'
   637F 30                 1707 	.db #0x30	; 48	'0'
   6380 30                 1708 	.db #0x30	; 48	'0'
   6381 30                 1709 	.db #0x30	; 48	'0'
   6382 30                 1710 	.db #0x30	; 48	'0'
   6383 30                 1711 	.db #0x30	; 48	'0'
   6384 0F                 1712 	.db #0x0F	; 15
   6385 30                 1713 	.db #0x30	; 48	'0'
   6386 30                 1714 	.db #0x30	; 48	'0'
   6387 1A                 1715 	.db #0x1A	; 26
   6388 30                 1716 	.db #0x30	; 48	'0'
   6389 30                 1717 	.db #0x30	; 48	'0'
   638A 30                 1718 	.db #0x30	; 48	'0'
   638B 30                 1719 	.db #0x30	; 48	'0'
   638C 30                 1720 	.db #0x30	; 48	'0'
   638D 30                 1721 	.db #0x30	; 48	'0'
   638E 25                 1722 	.db #0x25	; 37
   638F 30                 1723 	.db #0x30	; 48	'0'
   6390 30                 1724 	.db #0x30	; 48	'0'
   6391 1A                 1725 	.db #0x1A	; 26
   6392 30                 1726 	.db #0x30	; 48	'0'
   6393 30                 1727 	.db #0x30	; 48	'0'
   6394 30                 1728 	.db #0x30	; 48	'0'
   6395 30                 1729 	.db #0x30	; 48	'0'
   6396 30                 1730 	.db #0x30	; 48	'0'
   6397 30                 1731 	.db #0x30	; 48	'0'
   6398 25                 1732 	.db #0x25	; 37
   6399 30                 1733 	.db #0x30	; 48	'0'
   639A 30                 1734 	.db #0x30	; 48	'0'
   639B 1A                 1735 	.db #0x1A	; 26
   639C 30                 1736 	.db #0x30	; 48	'0'
   639D 30                 1737 	.db #0x30	; 48	'0'
   639E 30                 1738 	.db #0x30	; 48	'0'
   639F 30                 1739 	.db #0x30	; 48	'0'
   63A0 30                 1740 	.db #0x30	; 48	'0'
   63A1 30                 1741 	.db #0x30	; 48	'0'
   63A2 25                 1742 	.db #0x25	; 37
   63A3 30                 1743 	.db #0x30	; 48	'0'
   63A4 30                 1744 	.db #0x30	; 48	'0'
   63A5 1A                 1745 	.db #0x1A	; 26
   63A6 30                 1746 	.db #0x30	; 48	'0'
   63A7 30                 1747 	.db #0x30	; 48	'0'
   63A8 30                 1748 	.db #0x30	; 48	'0'
   63A9 30                 1749 	.db #0x30	; 48	'0'
   63AA 30                 1750 	.db #0x30	; 48	'0'
   63AB 30                 1751 	.db #0x30	; 48	'0'
   63AC 25                 1752 	.db #0x25	; 37
   63AD 30                 1753 	.db #0x30	; 48	'0'
   63AE 30                 1754 	.db #0x30	; 48	'0'
   63AF 1A                 1755 	.db #0x1A	; 26
   63B0 30                 1756 	.db #0x30	; 48	'0'
   63B1 30                 1757 	.db #0x30	; 48	'0'
   63B2 30                 1758 	.db #0x30	; 48	'0'
   63B3 30                 1759 	.db #0x30	; 48	'0'
   63B4 30                 1760 	.db #0x30	; 48	'0'
   63B5 30                 1761 	.db #0x30	; 48	'0'
   63B6 25                 1762 	.db #0x25	; 37
   63B7 30                 1763 	.db #0x30	; 48	'0'
   63B8 30                 1764 	.db #0x30	; 48	'0'
   63B9 1A                 1765 	.db #0x1A	; 26
   63BA 30                 1766 	.db #0x30	; 48	'0'
   63BB 30                 1767 	.db #0x30	; 48	'0'
   63BC 30                 1768 	.db #0x30	; 48	'0'
   63BD CC                 1769 	.db #0xCC	; 204
   63BE 98                 1770 	.db #0x98	; 152
   63BF 30                 1771 	.db #0x30	; 48	'0'
   63C0 25                 1772 	.db #0x25	; 37
   63C1 30                 1773 	.db #0x30	; 48	'0'
   63C2 30                 1774 	.db #0x30	; 48	'0'
   63C3 1A                 1775 	.db #0x1A	; 26
   63C4 30                 1776 	.db #0x30	; 48	'0'
   63C5 30                 1777 	.db #0x30	; 48	'0'
   63C6 64                 1778 	.db #0x64	; 100	'd'
   63C7 CC                 1779 	.db #0xCC	; 204
   63C8 CC                 1780 	.db #0xCC	; 204
   63C9 30                 1781 	.db #0x30	; 48	'0'
   63CA 25                 1782 	.db #0x25	; 37
   63CB 30                 1783 	.db #0x30	; 48	'0'
   63CC 30                 1784 	.db #0x30	; 48	'0'
   63CD 1A                 1785 	.db #0x1A	; 26
   63CE 30                 1786 	.db #0x30	; 48	'0'
   63CF 30                 1787 	.db #0x30	; 48	'0'
   63D0 CC                 1788 	.db #0xCC	; 204
   63D1 98                 1789 	.db #0x98	; 152
   63D2 CC                 1790 	.db #0xCC	; 204
   63D3 30                 1791 	.db #0x30	; 48	'0'
   63D4 25                 1792 	.db #0x25	; 37
   63D5 30                 1793 	.db #0x30	; 48	'0'
   63D6 30                 1794 	.db #0x30	; 48	'0'
   63D7 1A                 1795 	.db #0x1A	; 26
   63D8 30                 1796 	.db #0x30	; 48	'0'
   63D9 30                 1797 	.db #0x30	; 48	'0'
   63DA CC                 1798 	.db #0xCC	; 204
   63DB 30                 1799 	.db #0x30	; 48	'0'
   63DC 30                 1800 	.db #0x30	; 48	'0'
   63DD 30                 1801 	.db #0x30	; 48	'0'
   63DE 25                 1802 	.db #0x25	; 37
   63DF 30                 1803 	.db #0x30	; 48	'0'
   63E0 30                 1804 	.db #0x30	; 48	'0'
   63E1 1A                 1805 	.db #0x1A	; 26
   63E2 30                 1806 	.db #0x30	; 48	'0'
   63E3 64                 1807 	.db #0x64	; 100	'd'
   63E4 98                 1808 	.db #0x98	; 152
   63E5 30                 1809 	.db #0x30	; 48	'0'
   63E6 30                 1810 	.db #0x30	; 48	'0'
   63E7 30                 1811 	.db #0x30	; 48	'0'
   63E8 25                 1812 	.db #0x25	; 37
   63E9 30                 1813 	.db #0x30	; 48	'0'
   63EA 30                 1814 	.db #0x30	; 48	'0'
   63EB 1A                 1815 	.db #0x1A	; 26
   63EC 30                 1816 	.db #0x30	; 48	'0'
   63ED 64                 1817 	.db #0x64	; 100	'd'
   63EE 98                 1818 	.db #0x98	; 152
   63EF 30                 1819 	.db #0x30	; 48	'0'
   63F0 30                 1820 	.db #0x30	; 48	'0'
   63F1 30                 1821 	.db #0x30	; 48	'0'
   63F2 25                 1822 	.db #0x25	; 37
   63F3 30                 1823 	.db #0x30	; 48	'0'
   63F4 30                 1824 	.db #0x30	; 48	'0'
   63F5 1A                 1825 	.db #0x1A	; 26
   63F6 30                 1826 	.db #0x30	; 48	'0'
   63F7 64                 1827 	.db #0x64	; 100	'd'
   63F8 98                 1828 	.db #0x98	; 152
   63F9 30                 1829 	.db #0x30	; 48	'0'
   63FA 30                 1830 	.db #0x30	; 48	'0'
   63FB 30                 1831 	.db #0x30	; 48	'0'
   63FC 25                 1832 	.db #0x25	; 37
   63FD 30                 1833 	.db #0x30	; 48	'0'
   63FE 30                 1834 	.db #0x30	; 48	'0'
   63FF 1A                 1835 	.db #0x1A	; 26
   6400 30                 1836 	.db #0x30	; 48	'0'
   6401 64                 1837 	.db #0x64	; 100	'd'
   6402 98                 1838 	.db #0x98	; 152
   6403 30                 1839 	.db #0x30	; 48	'0'
   6404 30                 1840 	.db #0x30	; 48	'0'
   6405 30                 1841 	.db #0x30	; 48	'0'
   6406 25                 1842 	.db #0x25	; 37
   6407 30                 1843 	.db #0x30	; 48	'0'
   6408 30                 1844 	.db #0x30	; 48	'0'
   6409 1A                 1845 	.db #0x1A	; 26
   640A 30                 1846 	.db #0x30	; 48	'0'
   640B 64                 1847 	.db #0x64	; 100	'd'
   640C 98                 1848 	.db #0x98	; 152
   640D CC                 1849 	.db #0xCC	; 204
   640E 30                 1850 	.db #0x30	; 48	'0'
   640F 30                 1851 	.db #0x30	; 48	'0'
   6410 25                 1852 	.db #0x25	; 37
   6411 30                 1853 	.db #0x30	; 48	'0'
   6412 30                 1854 	.db #0x30	; 48	'0'
   6413 1A                 1855 	.db #0x1A	; 26
   6414 30                 1856 	.db #0x30	; 48	'0'
   6415 64                 1857 	.db #0x64	; 100	'd'
   6416 CC                 1858 	.db #0xCC	; 204
   6417 CC                 1859 	.db #0xCC	; 204
   6418 98                 1860 	.db #0x98	; 152
   6419 30                 1861 	.db #0x30	; 48	'0'
   641A 25                 1862 	.db #0x25	; 37
   641B 30                 1863 	.db #0x30	; 48	'0'
   641C 30                 1864 	.db #0x30	; 48	'0'
   641D 1A                 1865 	.db #0x1A	; 26
   641E 30                 1866 	.db #0x30	; 48	'0'
   641F 64                 1867 	.db #0x64	; 100	'd'
   6420 CC                 1868 	.db #0xCC	; 204
   6421 CC                 1869 	.db #0xCC	; 204
   6422 98                 1870 	.db #0x98	; 152
   6423 30                 1871 	.db #0x30	; 48	'0'
   6424 25                 1872 	.db #0x25	; 37
   6425 30                 1873 	.db #0x30	; 48	'0'
   6426 30                 1874 	.db #0x30	; 48	'0'
   6427 1A                 1875 	.db #0x1A	; 26
   6428 30                 1876 	.db #0x30	; 48	'0'
   6429 64                 1877 	.db #0x64	; 100	'd'
   642A CC                 1878 	.db #0xCC	; 204
   642B 30                 1879 	.db #0x30	; 48	'0'
   642C CC                 1880 	.db #0xCC	; 204
   642D 30                 1881 	.db #0x30	; 48	'0'
   642E 25                 1882 	.db #0x25	; 37
   642F 30                 1883 	.db #0x30	; 48	'0'
   6430 30                 1884 	.db #0x30	; 48	'0'
   6431 1A                 1885 	.db #0x1A	; 26
   6432 30                 1886 	.db #0x30	; 48	'0'
   6433 64                 1887 	.db #0x64	; 100	'd'
   6434 98                 1888 	.db #0x98	; 152
   6435 30                 1889 	.db #0x30	; 48	'0'
   6436 CC                 1890 	.db #0xCC	; 204
   6437 30                 1891 	.db #0x30	; 48	'0'
   6438 25                 1892 	.db #0x25	; 37
   6439 30                 1893 	.db #0x30	; 48	'0'
   643A 30                 1894 	.db #0x30	; 48	'0'
   643B 1A                 1895 	.db #0x1A	; 26
   643C 30                 1896 	.db #0x30	; 48	'0'
   643D 64                 1897 	.db #0x64	; 100	'd'
   643E 98                 1898 	.db #0x98	; 152
   643F 30                 1899 	.db #0x30	; 48	'0'
   6440 CC                 1900 	.db #0xCC	; 204
   6441 30                 1901 	.db #0x30	; 48	'0'
   6442 25                 1902 	.db #0x25	; 37
   6443 30                 1903 	.db #0x30	; 48	'0'
   6444 30                 1904 	.db #0x30	; 48	'0'
   6445 1A                 1905 	.db #0x1A	; 26
   6446 30                 1906 	.db #0x30	; 48	'0'
   6447 64                 1907 	.db #0x64	; 100	'd'
   6448 98                 1908 	.db #0x98	; 152
   6449 30                 1909 	.db #0x30	; 48	'0'
   644A CC                 1910 	.db #0xCC	; 204
   644B 30                 1911 	.db #0x30	; 48	'0'
   644C 25                 1912 	.db #0x25	; 37
   644D 30                 1913 	.db #0x30	; 48	'0'
   644E 30                 1914 	.db #0x30	; 48	'0'
   644F 1A                 1915 	.db #0x1A	; 26
   6450 30                 1916 	.db #0x30	; 48	'0'
   6451 64                 1917 	.db #0x64	; 100	'd'
   6452 98                 1918 	.db #0x98	; 152
   6453 30                 1919 	.db #0x30	; 48	'0'
   6454 CC                 1920 	.db #0xCC	; 204
   6455 30                 1921 	.db #0x30	; 48	'0'
   6456 25                 1922 	.db #0x25	; 37
   6457 30                 1923 	.db #0x30	; 48	'0'
   6458 30                 1924 	.db #0x30	; 48	'0'
   6459 1A                 1925 	.db #0x1A	; 26
   645A 30                 1926 	.db #0x30	; 48	'0'
   645B 64                 1927 	.db #0x64	; 100	'd'
   645C 98                 1928 	.db #0x98	; 152
   645D 30                 1929 	.db #0x30	; 48	'0'
   645E CC                 1930 	.db #0xCC	; 204
   645F 30                 1931 	.db #0x30	; 48	'0'
   6460 25                 1932 	.db #0x25	; 37
   6461 30                 1933 	.db #0x30	; 48	'0'
   6462 30                 1934 	.db #0x30	; 48	'0'
   6463 1A                 1935 	.db #0x1A	; 26
   6464 30                 1936 	.db #0x30	; 48	'0'
   6465 64                 1937 	.db #0x64	; 100	'd'
   6466 98                 1938 	.db #0x98	; 152
   6467 30                 1939 	.db #0x30	; 48	'0'
   6468 CC                 1940 	.db #0xCC	; 204
   6469 30                 1941 	.db #0x30	; 48	'0'
   646A 25                 1942 	.db #0x25	; 37
   646B 30                 1943 	.db #0x30	; 48	'0'
   646C 30                 1944 	.db #0x30	; 48	'0'
   646D 1A                 1945 	.db #0x1A	; 26
   646E 30                 1946 	.db #0x30	; 48	'0'
   646F 30                 1947 	.db #0x30	; 48	'0'
   6470 CC                 1948 	.db #0xCC	; 204
   6471 64                 1949 	.db #0x64	; 100	'd'
   6472 98                 1950 	.db #0x98	; 152
   6473 30                 1951 	.db #0x30	; 48	'0'
   6474 25                 1952 	.db #0x25	; 37
   6475 30                 1953 	.db #0x30	; 48	'0'
   6476 30                 1954 	.db #0x30	; 48	'0'
   6477 1A                 1955 	.db #0x1A	; 26
   6478 30                 1956 	.db #0x30	; 48	'0'
   6479 30                 1957 	.db #0x30	; 48	'0'
   647A CC                 1958 	.db #0xCC	; 204
   647B CC                 1959 	.db #0xCC	; 204
   647C 98                 1960 	.db #0x98	; 152
   647D 30                 1961 	.db #0x30	; 48	'0'
   647E 25                 1962 	.db #0x25	; 37
   647F 30                 1963 	.db #0x30	; 48	'0'
   6480 30                 1964 	.db #0x30	; 48	'0'
   6481 1A                 1965 	.db #0x1A	; 26
   6482 30                 1966 	.db #0x30	; 48	'0'
   6483 30                 1967 	.db #0x30	; 48	'0'
   6484 CC                 1968 	.db #0xCC	; 204
   6485 CC                 1969 	.db #0xCC	; 204
   6486 98                 1970 	.db #0x98	; 152
   6487 30                 1971 	.db #0x30	; 48	'0'
   6488 25                 1972 	.db #0x25	; 37
   6489 30                 1973 	.db #0x30	; 48	'0'
   648A 30                 1974 	.db #0x30	; 48	'0'
   648B 1A                 1975 	.db #0x1A	; 26
   648C 30                 1976 	.db #0x30	; 48	'0'
   648D 30                 1977 	.db #0x30	; 48	'0'
   648E 64                 1978 	.db #0x64	; 100	'd'
   648F CC                 1979 	.db #0xCC	; 204
   6490 30                 1980 	.db #0x30	; 48	'0'
   6491 30                 1981 	.db #0x30	; 48	'0'
   6492 25                 1982 	.db #0x25	; 37
   6493 30                 1983 	.db #0x30	; 48	'0'
   6494 30                 1984 	.db #0x30	; 48	'0'
   6495 1A                 1985 	.db #0x1A	; 26
   6496 30                 1986 	.db #0x30	; 48	'0'
   6497 30                 1987 	.db #0x30	; 48	'0'
   6498 30                 1988 	.db #0x30	; 48	'0'
   6499 30                 1989 	.db #0x30	; 48	'0'
   649A 30                 1990 	.db #0x30	; 48	'0'
   649B 30                 1991 	.db #0x30	; 48	'0'
   649C 25                 1992 	.db #0x25	; 37
   649D 30                 1993 	.db #0x30	; 48	'0'
   649E 30                 1994 	.db #0x30	; 48	'0'
   649F 1A                 1995 	.db #0x1A	; 26
   64A0 30                 1996 	.db #0x30	; 48	'0'
   64A1 30                 1997 	.db #0x30	; 48	'0'
   64A2 30                 1998 	.db #0x30	; 48	'0'
   64A3 30                 1999 	.db #0x30	; 48	'0'
   64A4 30                 2000 	.db #0x30	; 48	'0'
   64A5 30                 2001 	.db #0x30	; 48	'0'
   64A6 25                 2002 	.db #0x25	; 37
   64A7 30                 2003 	.db #0x30	; 48	'0'
   64A8 30                 2004 	.db #0x30	; 48	'0'
   64A9 1A                 2005 	.db #0x1A	; 26
   64AA 30                 2006 	.db #0x30	; 48	'0'
   64AB 30                 2007 	.db #0x30	; 48	'0'
   64AC 30                 2008 	.db #0x30	; 48	'0'
   64AD 30                 2009 	.db #0x30	; 48	'0'
   64AE 30                 2010 	.db #0x30	; 48	'0'
   64AF 30                 2011 	.db #0x30	; 48	'0'
   64B0 25                 2012 	.db #0x25	; 37
   64B1 30                 2013 	.db #0x30	; 48	'0'
   64B2 30                 2014 	.db #0x30	; 48	'0'
   64B3 0F                 2015 	.db #0x0F	; 15
   64B4 30                 2016 	.db #0x30	; 48	'0'
   64B5 30                 2017 	.db #0x30	; 48	'0'
   64B6 30                 2018 	.db #0x30	; 48	'0'
   64B7 30                 2019 	.db #0x30	; 48	'0'
   64B8 30                 2020 	.db #0x30	; 48	'0'
   64B9 30                 2021 	.db #0x30	; 48	'0'
   64BA 0F                 2022 	.db #0x0F	; 15
   64BB 30                 2023 	.db #0x30	; 48	'0'
   64BC 30                 2024 	.db #0x30	; 48	'0'
   64BD 25                 2025 	.db #0x25	; 37
   64BE 30                 2026 	.db #0x30	; 48	'0'
   64BF 30                 2027 	.db #0x30	; 48	'0'
   64C0 30                 2028 	.db #0x30	; 48	'0'
   64C1 30                 2029 	.db #0x30	; 48	'0'
   64C2 30                 2030 	.db #0x30	; 48	'0'
   64C3 30                 2031 	.db #0x30	; 48	'0'
   64C4 1A                 2032 	.db #0x1A	; 26
   64C5 30                 2033 	.db #0x30	; 48	'0'
   64C6 30                 2034 	.db #0x30	; 48	'0'
   64C7 25                 2035 	.db #0x25	; 37
   64C8 0F                 2036 	.db #0x0F	; 15
   64C9 0F                 2037 	.db #0x0F	; 15
   64CA 0F                 2038 	.db #0x0F	; 15
   64CB 0F                 2039 	.db #0x0F	; 15
   64CC 0F                 2040 	.db #0x0F	; 15
   64CD 0F                 2041 	.db #0x0F	; 15
   64CE 1A                 2042 	.db #0x1A	; 26
   64CF 30                 2043 	.db #0x30	; 48	'0'
   64D0 F0                 2044 	.db #0xF0	; 240
   64D1 30                 2045 	.db #0x30	; 48	'0'
   64D2 30                 2046 	.db #0x30	; 48	'0'
   64D3 30                 2047 	.db #0x30	; 48	'0'
   64D4 30                 2048 	.db #0x30	; 48	'0'
   64D5 30                 2049 	.db #0x30	; 48	'0'
   64D6 30                 2050 	.db #0x30	; 48	'0'
   64D7 30                 2051 	.db #0x30	; 48	'0'
   64D8 30                 2052 	.db #0x30	; 48	'0'
   64D9 F0                 2053 	.db #0xF0	; 240
   64DA F0                 2054 	.db #0xF0	; 240
   64DB 30                 2055 	.db #0x30	; 48	'0'
   64DC 30                 2056 	.db #0x30	; 48	'0'
   64DD 30                 2057 	.db #0x30	; 48	'0'
   64DE 30                 2058 	.db #0x30	; 48	'0'
   64DF 30                 2059 	.db #0x30	; 48	'0'
   64E0 30                 2060 	.db #0x30	; 48	'0'
   64E1 30                 2061 	.db #0x30	; 48	'0'
   64E2 30                 2062 	.db #0x30	; 48	'0'
   64E3 F0                 2063 	.db #0xF0	; 240
   64E4                    2064 _tile_tiles_05:
   64E4 F0                 2065 	.db #0xF0	; 240
   64E5 30                 2066 	.db #0x30	; 48	'0'
   64E6 30                 2067 	.db #0x30	; 48	'0'
   64E7 30                 2068 	.db #0x30	; 48	'0'
   64E8 30                 2069 	.db #0x30	; 48	'0'
   64E9 30                 2070 	.db #0x30	; 48	'0'
   64EA 30                 2071 	.db #0x30	; 48	'0'
   64EB 30                 2072 	.db #0x30	; 48	'0'
   64EC 30                 2073 	.db #0x30	; 48	'0'
   64ED F0                 2074 	.db #0xF0	; 240
   64EE F0                 2075 	.db #0xF0	; 240
   64EF 30                 2076 	.db #0x30	; 48	'0'
   64F0 30                 2077 	.db #0x30	; 48	'0'
   64F1 30                 2078 	.db #0x30	; 48	'0'
   64F2 30                 2079 	.db #0x30	; 48	'0'
   64F3 30                 2080 	.db #0x30	; 48	'0'
   64F4 30                 2081 	.db #0x30	; 48	'0'
   64F5 30                 2082 	.db #0x30	; 48	'0'
   64F6 30                 2083 	.db #0x30	; 48	'0'
   64F7 F0                 2084 	.db #0xF0	; 240
   64F8 30                 2085 	.db #0x30	; 48	'0'
   64F9 25                 2086 	.db #0x25	; 37
   64FA 0F                 2087 	.db #0x0F	; 15
   64FB 0F                 2088 	.db #0x0F	; 15
   64FC 0F                 2089 	.db #0x0F	; 15
   64FD 0F                 2090 	.db #0x0F	; 15
   64FE 0F                 2091 	.db #0x0F	; 15
   64FF 0F                 2092 	.db #0x0F	; 15
   6500 1A                 2093 	.db #0x1A	; 26
   6501 30                 2094 	.db #0x30	; 48	'0'
   6502 30                 2095 	.db #0x30	; 48	'0'
   6503 25                 2096 	.db #0x25	; 37
   6504 30                 2097 	.db #0x30	; 48	'0'
   6505 30                 2098 	.db #0x30	; 48	'0'
   6506 30                 2099 	.db #0x30	; 48	'0'
   6507 30                 2100 	.db #0x30	; 48	'0'
   6508 30                 2101 	.db #0x30	; 48	'0'
   6509 30                 2102 	.db #0x30	; 48	'0'
   650A 1A                 2103 	.db #0x1A	; 26
   650B 30                 2104 	.db #0x30	; 48	'0'
   650C 30                 2105 	.db #0x30	; 48	'0'
   650D 0F                 2106 	.db #0x0F	; 15
   650E 30                 2107 	.db #0x30	; 48	'0'
   650F 30                 2108 	.db #0x30	; 48	'0'
   6510 30                 2109 	.db #0x30	; 48	'0'
   6511 30                 2110 	.db #0x30	; 48	'0'
   6512 30                 2111 	.db #0x30	; 48	'0'
   6513 30                 2112 	.db #0x30	; 48	'0'
   6514 0F                 2113 	.db #0x0F	; 15
   6515 30                 2114 	.db #0x30	; 48	'0'
   6516 30                 2115 	.db #0x30	; 48	'0'
   6517 1A                 2116 	.db #0x1A	; 26
   6518 30                 2117 	.db #0x30	; 48	'0'
   6519 30                 2118 	.db #0x30	; 48	'0'
   651A 30                 2119 	.db #0x30	; 48	'0'
   651B 30                 2120 	.db #0x30	; 48	'0'
   651C 30                 2121 	.db #0x30	; 48	'0'
   651D 30                 2122 	.db #0x30	; 48	'0'
   651E 25                 2123 	.db #0x25	; 37
   651F 30                 2124 	.db #0x30	; 48	'0'
   6520 30                 2125 	.db #0x30	; 48	'0'
   6521 1A                 2126 	.db #0x1A	; 26
   6522 30                 2127 	.db #0x30	; 48	'0'
   6523 30                 2128 	.db #0x30	; 48	'0'
   6524 30                 2129 	.db #0x30	; 48	'0'
   6525 30                 2130 	.db #0x30	; 48	'0'
   6526 30                 2131 	.db #0x30	; 48	'0'
   6527 30                 2132 	.db #0x30	; 48	'0'
   6528 25                 2133 	.db #0x25	; 37
   6529 30                 2134 	.db #0x30	; 48	'0'
   652A 30                 2135 	.db #0x30	; 48	'0'
   652B 1A                 2136 	.db #0x1A	; 26
   652C 30                 2137 	.db #0x30	; 48	'0'
   652D 30                 2138 	.db #0x30	; 48	'0'
   652E 30                 2139 	.db #0x30	; 48	'0'
   652F 30                 2140 	.db #0x30	; 48	'0'
   6530 30                 2141 	.db #0x30	; 48	'0'
   6531 30                 2142 	.db #0x30	; 48	'0'
   6532 25                 2143 	.db #0x25	; 37
   6533 30                 2144 	.db #0x30	; 48	'0'
   6534 30                 2145 	.db #0x30	; 48	'0'
   6535 1A                 2146 	.db #0x1A	; 26
   6536 30                 2147 	.db #0x30	; 48	'0'
   6537 30                 2148 	.db #0x30	; 48	'0'
   6538 30                 2149 	.db #0x30	; 48	'0'
   6539 30                 2150 	.db #0x30	; 48	'0'
   653A 30                 2151 	.db #0x30	; 48	'0'
   653B 30                 2152 	.db #0x30	; 48	'0'
   653C 25                 2153 	.db #0x25	; 37
   653D 30                 2154 	.db #0x30	; 48	'0'
   653E 30                 2155 	.db #0x30	; 48	'0'
   653F 1A                 2156 	.db #0x1A	; 26
   6540 30                 2157 	.db #0x30	; 48	'0'
   6541 30                 2158 	.db #0x30	; 48	'0'
   6542 30                 2159 	.db #0x30	; 48	'0'
   6543 30                 2160 	.db #0x30	; 48	'0'
   6544 30                 2161 	.db #0x30	; 48	'0'
   6545 30                 2162 	.db #0x30	; 48	'0'
   6546 25                 2163 	.db #0x25	; 37
   6547 30                 2164 	.db #0x30	; 48	'0'
   6548 30                 2165 	.db #0x30	; 48	'0'
   6549 1A                 2166 	.db #0x1A	; 26
   654A 30                 2167 	.db #0x30	; 48	'0'
   654B 30                 2168 	.db #0x30	; 48	'0'
   654C 30                 2169 	.db #0x30	; 48	'0'
   654D 30                 2170 	.db #0x30	; 48	'0'
   654E 30                 2171 	.db #0x30	; 48	'0'
   654F 30                 2172 	.db #0x30	; 48	'0'
   6550 25                 2173 	.db #0x25	; 37
   6551 30                 2174 	.db #0x30	; 48	'0'
   6552 30                 2175 	.db #0x30	; 48	'0'
   6553 1A                 2176 	.db #0x1A	; 26
   6554 30                 2177 	.db #0x30	; 48	'0'
   6555 30                 2178 	.db #0x30	; 48	'0'
   6556 30                 2179 	.db #0x30	; 48	'0'
   6557 30                 2180 	.db #0x30	; 48	'0'
   6558 30                 2181 	.db #0x30	; 48	'0'
   6559 30                 2182 	.db #0x30	; 48	'0'
   655A 25                 2183 	.db #0x25	; 37
   655B 30                 2184 	.db #0x30	; 48	'0'
   655C 30                 2185 	.db #0x30	; 48	'0'
   655D 1A                 2186 	.db #0x1A	; 26
   655E 30                 2187 	.db #0x30	; 48	'0'
   655F 30                 2188 	.db #0x30	; 48	'0'
   6560 30                 2189 	.db #0x30	; 48	'0'
   6561 30                 2190 	.db #0x30	; 48	'0'
   6562 30                 2191 	.db #0x30	; 48	'0'
   6563 30                 2192 	.db #0x30	; 48	'0'
   6564 25                 2193 	.db #0x25	; 37
   6565 30                 2194 	.db #0x30	; 48	'0'
   6566 30                 2195 	.db #0x30	; 48	'0'
   6567 1A                 2196 	.db #0x1A	; 26
   6568 30                 2197 	.db #0x30	; 48	'0'
   6569 30                 2198 	.db #0x30	; 48	'0'
   656A 30                 2199 	.db #0x30	; 48	'0'
   656B 30                 2200 	.db #0x30	; 48	'0'
   656C 30                 2201 	.db #0x30	; 48	'0'
   656D 30                 2202 	.db #0x30	; 48	'0'
   656E 25                 2203 	.db #0x25	; 37
   656F 30                 2204 	.db #0x30	; 48	'0'
   6570 30                 2205 	.db #0x30	; 48	'0'
   6571 1A                 2206 	.db #0x1A	; 26
   6572 30                 2207 	.db #0x30	; 48	'0'
   6573 64                 2208 	.db #0x64	; 100	'd'
   6574 30                 2209 	.db #0x30	; 48	'0'
   6575 30                 2210 	.db #0x30	; 48	'0'
   6576 64                 2211 	.db #0x64	; 100	'd'
   6577 30                 2212 	.db #0x30	; 48	'0'
   6578 25                 2213 	.db #0x25	; 37
   6579 30                 2214 	.db #0x30	; 48	'0'
   657A 30                 2215 	.db #0x30	; 48	'0'
   657B 1A                 2216 	.db #0x1A	; 26
   657C 30                 2217 	.db #0x30	; 48	'0'
   657D CC                 2218 	.db #0xCC	; 204
   657E 30                 2219 	.db #0x30	; 48	'0'
   657F 30                 2220 	.db #0x30	; 48	'0'
   6580 98                 2221 	.db #0x98	; 152
   6581 98                 2222 	.db #0x98	; 152
   6582 25                 2223 	.db #0x25	; 37
   6583 30                 2224 	.db #0x30	; 48	'0'
   6584 30                 2225 	.db #0x30	; 48	'0'
   6585 1A                 2226 	.db #0x1A	; 26
   6586 64                 2227 	.db #0x64	; 100	'd'
   6587 64                 2228 	.db #0x64	; 100	'd'
   6588 30                 2229 	.db #0x30	; 48	'0'
   6589 64                 2230 	.db #0x64	; 100	'd'
   658A 30                 2231 	.db #0x30	; 48	'0'
   658B 98                 2232 	.db #0x98	; 152
   658C 25                 2233 	.db #0x25	; 37
   658D 30                 2234 	.db #0x30	; 48	'0'
   658E 30                 2235 	.db #0x30	; 48	'0'
   658F 1A                 2236 	.db #0x1A	; 26
   6590 30                 2237 	.db #0x30	; 48	'0'
   6591 64                 2238 	.db #0x64	; 100	'd'
   6592 30                 2239 	.db #0x30	; 48	'0'
   6593 64                 2240 	.db #0x64	; 100	'd'
   6594 30                 2241 	.db #0x30	; 48	'0'
   6595 98                 2242 	.db #0x98	; 152
   6596 25                 2243 	.db #0x25	; 37
   6597 30                 2244 	.db #0x30	; 48	'0'
   6598 30                 2245 	.db #0x30	; 48	'0'
   6599 1A                 2246 	.db #0x1A	; 26
   659A 30                 2247 	.db #0x30	; 48	'0'
   659B 64                 2248 	.db #0x64	; 100	'd'
   659C 30                 2249 	.db #0x30	; 48	'0'
   659D 30                 2250 	.db #0x30	; 48	'0'
   659E 30                 2251 	.db #0x30	; 48	'0'
   659F 98                 2252 	.db #0x98	; 152
   65A0 25                 2253 	.db #0x25	; 37
   65A1 30                 2254 	.db #0x30	; 48	'0'
   65A2 30                 2255 	.db #0x30	; 48	'0'
   65A3 1A                 2256 	.db #0x1A	; 26
   65A4 30                 2257 	.db #0x30	; 48	'0'
   65A5 64                 2258 	.db #0x64	; 100	'd'
   65A6 30                 2259 	.db #0x30	; 48	'0'
   65A7 30                 2260 	.db #0x30	; 48	'0'
   65A8 30                 2261 	.db #0x30	; 48	'0'
   65A9 98                 2262 	.db #0x98	; 152
   65AA 25                 2263 	.db #0x25	; 37
   65AB 30                 2264 	.db #0x30	; 48	'0'
   65AC 30                 2265 	.db #0x30	; 48	'0'
   65AD 1A                 2266 	.db #0x1A	; 26
   65AE 30                 2267 	.db #0x30	; 48	'0'
   65AF 64                 2268 	.db #0x64	; 100	'd'
   65B0 30                 2269 	.db #0x30	; 48	'0'
   65B1 30                 2270 	.db #0x30	; 48	'0'
   65B2 64                 2271 	.db #0x64	; 100	'd'
   65B3 30                 2272 	.db #0x30	; 48	'0'
   65B4 25                 2273 	.db #0x25	; 37
   65B5 30                 2274 	.db #0x30	; 48	'0'
   65B6 30                 2275 	.db #0x30	; 48	'0'
   65B7 1A                 2276 	.db #0x1A	; 26
   65B8 30                 2277 	.db #0x30	; 48	'0'
   65B9 64                 2278 	.db #0x64	; 100	'd'
   65BA 30                 2279 	.db #0x30	; 48	'0'
   65BB 30                 2280 	.db #0x30	; 48	'0'
   65BC 64                 2281 	.db #0x64	; 100	'd'
   65BD 30                 2282 	.db #0x30	; 48	'0'
   65BE 25                 2283 	.db #0x25	; 37
   65BF 30                 2284 	.db #0x30	; 48	'0'
   65C0 30                 2285 	.db #0x30	; 48	'0'
   65C1 1A                 2286 	.db #0x1A	; 26
   65C2 30                 2287 	.db #0x30	; 48	'0'
   65C3 64                 2288 	.db #0x64	; 100	'd'
   65C4 30                 2289 	.db #0x30	; 48	'0'
   65C5 30                 2290 	.db #0x30	; 48	'0'
   65C6 98                 2291 	.db #0x98	; 152
   65C7 30                 2292 	.db #0x30	; 48	'0'
   65C8 25                 2293 	.db #0x25	; 37
   65C9 30                 2294 	.db #0x30	; 48	'0'
   65CA 30                 2295 	.db #0x30	; 48	'0'
   65CB 1A                 2296 	.db #0x1A	; 26
   65CC 30                 2297 	.db #0x30	; 48	'0'
   65CD 64                 2298 	.db #0x64	; 100	'd'
   65CE 30                 2299 	.db #0x30	; 48	'0'
   65CF 30                 2300 	.db #0x30	; 48	'0'
   65D0 98                 2301 	.db #0x98	; 152
   65D1 30                 2302 	.db #0x30	; 48	'0'
   65D2 25                 2303 	.db #0x25	; 37
   65D3 30                 2304 	.db #0x30	; 48	'0'
   65D4 30                 2305 	.db #0x30	; 48	'0'
   65D5 1A                 2306 	.db #0x1A	; 26
   65D6 30                 2307 	.db #0x30	; 48	'0'
   65D7 64                 2308 	.db #0x64	; 100	'd'
   65D8 30                 2309 	.db #0x30	; 48	'0'
   65D9 30                 2310 	.db #0x30	; 48	'0'
   65DA 98                 2311 	.db #0x98	; 152
   65DB 30                 2312 	.db #0x30	; 48	'0'
   65DC 25                 2313 	.db #0x25	; 37
   65DD 30                 2314 	.db #0x30	; 48	'0'
   65DE 30                 2315 	.db #0x30	; 48	'0'
   65DF 1A                 2316 	.db #0x1A	; 26
   65E0 30                 2317 	.db #0x30	; 48	'0'
   65E1 64                 2318 	.db #0x64	; 100	'd'
   65E2 30                 2319 	.db #0x30	; 48	'0'
   65E3 64                 2320 	.db #0x64	; 100	'd'
   65E4 30                 2321 	.db #0x30	; 48	'0'
   65E5 30                 2322 	.db #0x30	; 48	'0'
   65E6 25                 2323 	.db #0x25	; 37
   65E7 30                 2324 	.db #0x30	; 48	'0'
   65E8 30                 2325 	.db #0x30	; 48	'0'
   65E9 1A                 2326 	.db #0x1A	; 26
   65EA 30                 2327 	.db #0x30	; 48	'0'
   65EB 64                 2328 	.db #0x64	; 100	'd'
   65EC 30                 2329 	.db #0x30	; 48	'0'
   65ED 64                 2330 	.db #0x64	; 100	'd'
   65EE 30                 2331 	.db #0x30	; 48	'0'
   65EF 30                 2332 	.db #0x30	; 48	'0'
   65F0 25                 2333 	.db #0x25	; 37
   65F1 30                 2334 	.db #0x30	; 48	'0'
   65F2 30                 2335 	.db #0x30	; 48	'0'
   65F3 1A                 2336 	.db #0x1A	; 26
   65F4 30                 2337 	.db #0x30	; 48	'0'
   65F5 64                 2338 	.db #0x64	; 100	'd'
   65F6 30                 2339 	.db #0x30	; 48	'0'
   65F7 64                 2340 	.db #0x64	; 100	'd'
   65F8 30                 2341 	.db #0x30	; 48	'0'
   65F9 30                 2342 	.db #0x30	; 48	'0'
   65FA 25                 2343 	.db #0x25	; 37
   65FB 30                 2344 	.db #0x30	; 48	'0'
   65FC 30                 2345 	.db #0x30	; 48	'0'
   65FD 1A                 2346 	.db #0x1A	; 26
   65FE 64                 2347 	.db #0x64	; 100	'd'
   65FF CC                 2348 	.db #0xCC	; 204
   6600 98                 2349 	.db #0x98	; 152
   6601 64                 2350 	.db #0x64	; 100	'd'
   6602 CC                 2351 	.db #0xCC	; 204
   6603 98                 2352 	.db #0x98	; 152
   6604 25                 2353 	.db #0x25	; 37
   6605 30                 2354 	.db #0x30	; 48	'0'
   6606 30                 2355 	.db #0x30	; 48	'0'
   6607 1A                 2356 	.db #0x1A	; 26
   6608 30                 2357 	.db #0x30	; 48	'0'
   6609 30                 2358 	.db #0x30	; 48	'0'
   660A 30                 2359 	.db #0x30	; 48	'0'
   660B 30                 2360 	.db #0x30	; 48	'0'
   660C 30                 2361 	.db #0x30	; 48	'0'
   660D 30                 2362 	.db #0x30	; 48	'0'
   660E 25                 2363 	.db #0x25	; 37
   660F 30                 2364 	.db #0x30	; 48	'0'
   6610 30                 2365 	.db #0x30	; 48	'0'
   6611 1A                 2366 	.db #0x1A	; 26
   6612 30                 2367 	.db #0x30	; 48	'0'
   6613 30                 2368 	.db #0x30	; 48	'0'
   6614 30                 2369 	.db #0x30	; 48	'0'
   6615 30                 2370 	.db #0x30	; 48	'0'
   6616 30                 2371 	.db #0x30	; 48	'0'
   6617 30                 2372 	.db #0x30	; 48	'0'
   6618 25                 2373 	.db #0x25	; 37
   6619 30                 2374 	.db #0x30	; 48	'0'
   661A 30                 2375 	.db #0x30	; 48	'0'
   661B 1A                 2376 	.db #0x1A	; 26
   661C 30                 2377 	.db #0x30	; 48	'0'
   661D 30                 2378 	.db #0x30	; 48	'0'
   661E 30                 2379 	.db #0x30	; 48	'0'
   661F 30                 2380 	.db #0x30	; 48	'0'
   6620 30                 2381 	.db #0x30	; 48	'0'
   6621 30                 2382 	.db #0x30	; 48	'0'
   6622 25                 2383 	.db #0x25	; 37
   6623 30                 2384 	.db #0x30	; 48	'0'
   6624 30                 2385 	.db #0x30	; 48	'0'
   6625 1A                 2386 	.db #0x1A	; 26
   6626 30                 2387 	.db #0x30	; 48	'0'
   6627 30                 2388 	.db #0x30	; 48	'0'
   6628 30                 2389 	.db #0x30	; 48	'0'
   6629 30                 2390 	.db #0x30	; 48	'0'
   662A 30                 2391 	.db #0x30	; 48	'0'
   662B 30                 2392 	.db #0x30	; 48	'0'
   662C 25                 2393 	.db #0x25	; 37
   662D 30                 2394 	.db #0x30	; 48	'0'
   662E 30                 2395 	.db #0x30	; 48	'0'
   662F 1A                 2396 	.db #0x1A	; 26
   6630 30                 2397 	.db #0x30	; 48	'0'
   6631 30                 2398 	.db #0x30	; 48	'0'
   6632 30                 2399 	.db #0x30	; 48	'0'
   6633 30                 2400 	.db #0x30	; 48	'0'
   6634 30                 2401 	.db #0x30	; 48	'0'
   6635 30                 2402 	.db #0x30	; 48	'0'
   6636 25                 2403 	.db #0x25	; 37
   6637 30                 2404 	.db #0x30	; 48	'0'
   6638 30                 2405 	.db #0x30	; 48	'0'
   6639 1A                 2406 	.db #0x1A	; 26
   663A 30                 2407 	.db #0x30	; 48	'0'
   663B 30                 2408 	.db #0x30	; 48	'0'
   663C 30                 2409 	.db #0x30	; 48	'0'
   663D 30                 2410 	.db #0x30	; 48	'0'
   663E 30                 2411 	.db #0x30	; 48	'0'
   663F 30                 2412 	.db #0x30	; 48	'0'
   6640 25                 2413 	.db #0x25	; 37
   6641 30                 2414 	.db #0x30	; 48	'0'
   6642 30                 2415 	.db #0x30	; 48	'0'
   6643 0F                 2416 	.db #0x0F	; 15
   6644 30                 2417 	.db #0x30	; 48	'0'
   6645 30                 2418 	.db #0x30	; 48	'0'
   6646 30                 2419 	.db #0x30	; 48	'0'
   6647 30                 2420 	.db #0x30	; 48	'0'
   6648 30                 2421 	.db #0x30	; 48	'0'
   6649 30                 2422 	.db #0x30	; 48	'0'
   664A 0F                 2423 	.db #0x0F	; 15
   664B 30                 2424 	.db #0x30	; 48	'0'
   664C 30                 2425 	.db #0x30	; 48	'0'
   664D 25                 2426 	.db #0x25	; 37
   664E 30                 2427 	.db #0x30	; 48	'0'
   664F 30                 2428 	.db #0x30	; 48	'0'
   6650 30                 2429 	.db #0x30	; 48	'0'
   6651 30                 2430 	.db #0x30	; 48	'0'
   6652 30                 2431 	.db #0x30	; 48	'0'
   6653 30                 2432 	.db #0x30	; 48	'0'
   6654 1A                 2433 	.db #0x1A	; 26
   6655 30                 2434 	.db #0x30	; 48	'0'
   6656 30                 2435 	.db #0x30	; 48	'0'
   6657 25                 2436 	.db #0x25	; 37
   6658 0F                 2437 	.db #0x0F	; 15
   6659 0F                 2438 	.db #0x0F	; 15
   665A 0F                 2439 	.db #0x0F	; 15
   665B 0F                 2440 	.db #0x0F	; 15
   665C 0F                 2441 	.db #0x0F	; 15
   665D 0F                 2442 	.db #0x0F	; 15
   665E 1A                 2443 	.db #0x1A	; 26
   665F 30                 2444 	.db #0x30	; 48	'0'
   6660 F0                 2445 	.db #0xF0	; 240
   6661 30                 2446 	.db #0x30	; 48	'0'
   6662 30                 2447 	.db #0x30	; 48	'0'
   6663 30                 2448 	.db #0x30	; 48	'0'
   6664 30                 2449 	.db #0x30	; 48	'0'
   6665 30                 2450 	.db #0x30	; 48	'0'
   6666 30                 2451 	.db #0x30	; 48	'0'
   6667 30                 2452 	.db #0x30	; 48	'0'
   6668 30                 2453 	.db #0x30	; 48	'0'
   6669 F0                 2454 	.db #0xF0	; 240
   666A F0                 2455 	.db #0xF0	; 240
   666B 30                 2456 	.db #0x30	; 48	'0'
   666C 30                 2457 	.db #0x30	; 48	'0'
   666D 30                 2458 	.db #0x30	; 48	'0'
   666E 30                 2459 	.db #0x30	; 48	'0'
   666F 30                 2460 	.db #0x30	; 48	'0'
   6670 30                 2461 	.db #0x30	; 48	'0'
   6671 30                 2462 	.db #0x30	; 48	'0'
   6672 30                 2463 	.db #0x30	; 48	'0'
   6673 F0                 2464 	.db #0xF0	; 240
   6674                    2465 _tile_tiles_06:
   6674 F0                 2466 	.db #0xF0	; 240
   6675 30                 2467 	.db #0x30	; 48	'0'
   6676 30                 2468 	.db #0x30	; 48	'0'
   6677 30                 2469 	.db #0x30	; 48	'0'
   6678 30                 2470 	.db #0x30	; 48	'0'
   6679 30                 2471 	.db #0x30	; 48	'0'
   667A 30                 2472 	.db #0x30	; 48	'0'
   667B 30                 2473 	.db #0x30	; 48	'0'
   667C 30                 2474 	.db #0x30	; 48	'0'
   667D F0                 2475 	.db #0xF0	; 240
   667E F0                 2476 	.db #0xF0	; 240
   667F 30                 2477 	.db #0x30	; 48	'0'
   6680 30                 2478 	.db #0x30	; 48	'0'
   6681 30                 2479 	.db #0x30	; 48	'0'
   6682 30                 2480 	.db #0x30	; 48	'0'
   6683 30                 2481 	.db #0x30	; 48	'0'
   6684 30                 2482 	.db #0x30	; 48	'0'
   6685 30                 2483 	.db #0x30	; 48	'0'
   6686 30                 2484 	.db #0x30	; 48	'0'
   6687 F0                 2485 	.db #0xF0	; 240
   6688 30                 2486 	.db #0x30	; 48	'0'
   6689 25                 2487 	.db #0x25	; 37
   668A 0F                 2488 	.db #0x0F	; 15
   668B 0F                 2489 	.db #0x0F	; 15
   668C 0F                 2490 	.db #0x0F	; 15
   668D 0F                 2491 	.db #0x0F	; 15
   668E 0F                 2492 	.db #0x0F	; 15
   668F 0F                 2493 	.db #0x0F	; 15
   6690 1A                 2494 	.db #0x1A	; 26
   6691 30                 2495 	.db #0x30	; 48	'0'
   6692 30                 2496 	.db #0x30	; 48	'0'
   6693 25                 2497 	.db #0x25	; 37
   6694 30                 2498 	.db #0x30	; 48	'0'
   6695 30                 2499 	.db #0x30	; 48	'0'
   6696 30                 2500 	.db #0x30	; 48	'0'
   6697 30                 2501 	.db #0x30	; 48	'0'
   6698 30                 2502 	.db #0x30	; 48	'0'
   6699 30                 2503 	.db #0x30	; 48	'0'
   669A 1A                 2504 	.db #0x1A	; 26
   669B 30                 2505 	.db #0x30	; 48	'0'
   669C 30                 2506 	.db #0x30	; 48	'0'
   669D 0F                 2507 	.db #0x0F	; 15
   669E 30                 2508 	.db #0x30	; 48	'0'
   669F 30                 2509 	.db #0x30	; 48	'0'
   66A0 30                 2510 	.db #0x30	; 48	'0'
   66A1 30                 2511 	.db #0x30	; 48	'0'
   66A2 30                 2512 	.db #0x30	; 48	'0'
   66A3 30                 2513 	.db #0x30	; 48	'0'
   66A4 0F                 2514 	.db #0x0F	; 15
   66A5 30                 2515 	.db #0x30	; 48	'0'
   66A6 30                 2516 	.db #0x30	; 48	'0'
   66A7 1A                 2517 	.db #0x1A	; 26
   66A8 30                 2518 	.db #0x30	; 48	'0'
   66A9 30                 2519 	.db #0x30	; 48	'0'
   66AA 30                 2520 	.db #0x30	; 48	'0'
   66AB 30                 2521 	.db #0x30	; 48	'0'
   66AC 30                 2522 	.db #0x30	; 48	'0'
   66AD 30                 2523 	.db #0x30	; 48	'0'
   66AE 25                 2524 	.db #0x25	; 37
   66AF 30                 2525 	.db #0x30	; 48	'0'
   66B0 30                 2526 	.db #0x30	; 48	'0'
   66B1 1A                 2527 	.db #0x1A	; 26
   66B2 30                 2528 	.db #0x30	; 48	'0'
   66B3 30                 2529 	.db #0x30	; 48	'0'
   66B4 30                 2530 	.db #0x30	; 48	'0'
   66B5 30                 2531 	.db #0x30	; 48	'0'
   66B6 30                 2532 	.db #0x30	; 48	'0'
   66B7 30                 2533 	.db #0x30	; 48	'0'
   66B8 25                 2534 	.db #0x25	; 37
   66B9 30                 2535 	.db #0x30	; 48	'0'
   66BA 30                 2536 	.db #0x30	; 48	'0'
   66BB 1A                 2537 	.db #0x1A	; 26
   66BC 30                 2538 	.db #0x30	; 48	'0'
   66BD 30                 2539 	.db #0x30	; 48	'0'
   66BE 30                 2540 	.db #0x30	; 48	'0'
   66BF 30                 2541 	.db #0x30	; 48	'0'
   66C0 30                 2542 	.db #0x30	; 48	'0'
   66C1 30                 2543 	.db #0x30	; 48	'0'
   66C2 25                 2544 	.db #0x25	; 37
   66C3 30                 2545 	.db #0x30	; 48	'0'
   66C4 30                 2546 	.db #0x30	; 48	'0'
   66C5 1A                 2547 	.db #0x1A	; 26
   66C6 30                 2548 	.db #0x30	; 48	'0'
   66C7 30                 2549 	.db #0x30	; 48	'0'
   66C8 30                 2550 	.db #0x30	; 48	'0'
   66C9 30                 2551 	.db #0x30	; 48	'0'
   66CA 30                 2552 	.db #0x30	; 48	'0'
   66CB 30                 2553 	.db #0x30	; 48	'0'
   66CC 25                 2554 	.db #0x25	; 37
   66CD 30                 2555 	.db #0x30	; 48	'0'
   66CE 30                 2556 	.db #0x30	; 48	'0'
   66CF 1A                 2557 	.db #0x1A	; 26
   66D0 30                 2558 	.db #0x30	; 48	'0'
   66D1 30                 2559 	.db #0x30	; 48	'0'
   66D2 30                 2560 	.db #0x30	; 48	'0'
   66D3 30                 2561 	.db #0x30	; 48	'0'
   66D4 30                 2562 	.db #0x30	; 48	'0'
   66D5 30                 2563 	.db #0x30	; 48	'0'
   66D6 25                 2564 	.db #0x25	; 37
   66D7 30                 2565 	.db #0x30	; 48	'0'
   66D8 30                 2566 	.db #0x30	; 48	'0'
   66D9 1A                 2567 	.db #0x1A	; 26
   66DA 30                 2568 	.db #0x30	; 48	'0'
   66DB 30                 2569 	.db #0x30	; 48	'0'
   66DC 30                 2570 	.db #0x30	; 48	'0'
   66DD 30                 2571 	.db #0x30	; 48	'0'
   66DE 30                 2572 	.db #0x30	; 48	'0'
   66DF 30                 2573 	.db #0x30	; 48	'0'
   66E0 25                 2574 	.db #0x25	; 37
   66E1 30                 2575 	.db #0x30	; 48	'0'
   66E2 30                 2576 	.db #0x30	; 48	'0'
   66E3 1A                 2577 	.db #0x1A	; 26
   66E4 30                 2578 	.db #0x30	; 48	'0'
   66E5 30                 2579 	.db #0x30	; 48	'0'
   66E6 30                 2580 	.db #0x30	; 48	'0'
   66E7 30                 2581 	.db #0x30	; 48	'0'
   66E8 30                 2582 	.db #0x30	; 48	'0'
   66E9 30                 2583 	.db #0x30	; 48	'0'
   66EA 25                 2584 	.db #0x25	; 37
   66EB 30                 2585 	.db #0x30	; 48	'0'
   66EC 30                 2586 	.db #0x30	; 48	'0'
   66ED 1A                 2587 	.db #0x1A	; 26
   66EE 30                 2588 	.db #0x30	; 48	'0'
   66EF 30                 2589 	.db #0x30	; 48	'0'
   66F0 30                 2590 	.db #0x30	; 48	'0'
   66F1 30                 2591 	.db #0x30	; 48	'0'
   66F2 30                 2592 	.db #0x30	; 48	'0'
   66F3 30                 2593 	.db #0x30	; 48	'0'
   66F4 25                 2594 	.db #0x25	; 37
   66F5 30                 2595 	.db #0x30	; 48	'0'
   66F6 30                 2596 	.db #0x30	; 48	'0'
   66F7 1A                 2597 	.db #0x1A	; 26
   66F8 30                 2598 	.db #0x30	; 48	'0'
   66F9 30                 2599 	.db #0x30	; 48	'0'
   66FA 30                 2600 	.db #0x30	; 48	'0'
   66FB 30                 2601 	.db #0x30	; 48	'0'
   66FC 30                 2602 	.db #0x30	; 48	'0'
   66FD 30                 2603 	.db #0x30	; 48	'0'
   66FE 25                 2604 	.db #0x25	; 37
   66FF 30                 2605 	.db #0x30	; 48	'0'
   6700 30                 2606 	.db #0x30	; 48	'0'
   6701 1A                 2607 	.db #0x1A	; 26
   6702 30                 2608 	.db #0x30	; 48	'0'
   6703 64                 2609 	.db #0x64	; 100	'd'
   6704 30                 2610 	.db #0x30	; 48	'0'
   6705 30                 2611 	.db #0x30	; 48	'0'
   6706 64                 2612 	.db #0x64	; 100	'd'
   6707 30                 2613 	.db #0x30	; 48	'0'
   6708 25                 2614 	.db #0x25	; 37
   6709 30                 2615 	.db #0x30	; 48	'0'
   670A 30                 2616 	.db #0x30	; 48	'0'
   670B 1A                 2617 	.db #0x1A	; 26
   670C 30                 2618 	.db #0x30	; 48	'0'
   670D 98                 2619 	.db #0x98	; 152
   670E 98                 2620 	.db #0x98	; 152
   670F 30                 2621 	.db #0x30	; 48	'0'
   6710 64                 2622 	.db #0x64	; 100	'd'
   6711 30                 2623 	.db #0x30	; 48	'0'
   6712 25                 2624 	.db #0x25	; 37
   6713 30                 2625 	.db #0x30	; 48	'0'
   6714 30                 2626 	.db #0x30	; 48	'0'
   6715 1A                 2627 	.db #0x1A	; 26
   6716 64                 2628 	.db #0x64	; 100	'd'
   6717 30                 2629 	.db #0x30	; 48	'0'
   6718 98                 2630 	.db #0x98	; 152
   6719 30                 2631 	.db #0x30	; 48	'0'
   671A CC                 2632 	.db #0xCC	; 204
   671B 30                 2633 	.db #0x30	; 48	'0'
   671C 25                 2634 	.db #0x25	; 37
   671D 30                 2635 	.db #0x30	; 48	'0'
   671E 30                 2636 	.db #0x30	; 48	'0'
   671F 1A                 2637 	.db #0x1A	; 26
   6720 64                 2638 	.db #0x64	; 100	'd'
   6721 30                 2639 	.db #0x30	; 48	'0'
   6722 98                 2640 	.db #0x98	; 152
   6723 30                 2641 	.db #0x30	; 48	'0'
   6724 CC                 2642 	.db #0xCC	; 204
   6725 30                 2643 	.db #0x30	; 48	'0'
   6726 25                 2644 	.db #0x25	; 37
   6727 30                 2645 	.db #0x30	; 48	'0'
   6728 30                 2646 	.db #0x30	; 48	'0'
   6729 1A                 2647 	.db #0x1A	; 26
   672A 30                 2648 	.db #0x30	; 48	'0'
   672B 30                 2649 	.db #0x30	; 48	'0'
   672C 98                 2650 	.db #0x98	; 152
   672D 64                 2651 	.db #0x64	; 100	'd'
   672E 64                 2652 	.db #0x64	; 100	'd'
   672F 30                 2653 	.db #0x30	; 48	'0'
   6730 25                 2654 	.db #0x25	; 37
   6731 30                 2655 	.db #0x30	; 48	'0'
   6732 30                 2656 	.db #0x30	; 48	'0'
   6733 1A                 2657 	.db #0x1A	; 26
   6734 30                 2658 	.db #0x30	; 48	'0'
   6735 30                 2659 	.db #0x30	; 48	'0'
   6736 98                 2660 	.db #0x98	; 152
   6737 64                 2661 	.db #0x64	; 100	'd'
   6738 64                 2662 	.db #0x64	; 100	'd'
   6739 30                 2663 	.db #0x30	; 48	'0'
   673A 25                 2664 	.db #0x25	; 37
   673B 30                 2665 	.db #0x30	; 48	'0'
   673C 30                 2666 	.db #0x30	; 48	'0'
   673D 1A                 2667 	.db #0x1A	; 26
   673E 30                 2668 	.db #0x30	; 48	'0'
   673F 64                 2669 	.db #0x64	; 100	'd'
   6740 30                 2670 	.db #0x30	; 48	'0'
   6741 64                 2671 	.db #0x64	; 100	'd'
   6742 64                 2672 	.db #0x64	; 100	'd'
   6743 30                 2673 	.db #0x30	; 48	'0'
   6744 25                 2674 	.db #0x25	; 37
   6745 30                 2675 	.db #0x30	; 48	'0'
   6746 30                 2676 	.db #0x30	; 48	'0'
   6747 1A                 2677 	.db #0x1A	; 26
   6748 30                 2678 	.db #0x30	; 48	'0'
   6749 64                 2679 	.db #0x64	; 100	'd'
   674A 30                 2680 	.db #0x30	; 48	'0'
   674B 98                 2681 	.db #0x98	; 152
   674C 64                 2682 	.db #0x64	; 100	'd'
   674D 30                 2683 	.db #0x30	; 48	'0'
   674E 25                 2684 	.db #0x25	; 37
   674F 30                 2685 	.db #0x30	; 48	'0'
   6750 30                 2686 	.db #0x30	; 48	'0'
   6751 1A                 2687 	.db #0x1A	; 26
   6752 30                 2688 	.db #0x30	; 48	'0'
   6753 98                 2689 	.db #0x98	; 152
   6754 30                 2690 	.db #0x30	; 48	'0'
   6755 98                 2691 	.db #0x98	; 152
   6756 64                 2692 	.db #0x64	; 100	'd'
   6757 30                 2693 	.db #0x30	; 48	'0'
   6758 25                 2694 	.db #0x25	; 37
   6759 30                 2695 	.db #0x30	; 48	'0'
   675A 30                 2696 	.db #0x30	; 48	'0'
   675B 1A                 2697 	.db #0x1A	; 26
   675C 30                 2698 	.db #0x30	; 48	'0'
   675D 98                 2699 	.db #0x98	; 152
   675E 30                 2700 	.db #0x30	; 48	'0'
   675F 98                 2701 	.db #0x98	; 152
   6760 64                 2702 	.db #0x64	; 100	'd'
   6761 30                 2703 	.db #0x30	; 48	'0'
   6762 25                 2704 	.db #0x25	; 37
   6763 30                 2705 	.db #0x30	; 48	'0'
   6764 30                 2706 	.db #0x30	; 48	'0'
   6765 1A                 2707 	.db #0x1A	; 26
   6766 30                 2708 	.db #0x30	; 48	'0'
   6767 98                 2709 	.db #0x98	; 152
   6768 30                 2710 	.db #0x30	; 48	'0'
   6769 CC                 2711 	.db #0xCC	; 204
   676A CC                 2712 	.db #0xCC	; 204
   676B 98                 2713 	.db #0x98	; 152
   676C 25                 2714 	.db #0x25	; 37
   676D 30                 2715 	.db #0x30	; 48	'0'
   676E 30                 2716 	.db #0x30	; 48	'0'
   676F 1A                 2717 	.db #0x1A	; 26
   6770 64                 2718 	.db #0x64	; 100	'd'
   6771 30                 2719 	.db #0x30	; 48	'0'
   6772 30                 2720 	.db #0x30	; 48	'0'
   6773 30                 2721 	.db #0x30	; 48	'0'
   6774 64                 2722 	.db #0x64	; 100	'd'
   6775 30                 2723 	.db #0x30	; 48	'0'
   6776 25                 2724 	.db #0x25	; 37
   6777 30                 2725 	.db #0x30	; 48	'0'
   6778 30                 2726 	.db #0x30	; 48	'0'
   6779 1A                 2727 	.db #0x1A	; 26
   677A 64                 2728 	.db #0x64	; 100	'd'
   677B 30                 2729 	.db #0x30	; 48	'0'
   677C 30                 2730 	.db #0x30	; 48	'0'
   677D 30                 2731 	.db #0x30	; 48	'0'
   677E 64                 2732 	.db #0x64	; 100	'd'
   677F 30                 2733 	.db #0x30	; 48	'0'
   6780 25                 2734 	.db #0x25	; 37
   6781 30                 2735 	.db #0x30	; 48	'0'
   6782 30                 2736 	.db #0x30	; 48	'0'
   6783 1A                 2737 	.db #0x1A	; 26
   6784 64                 2738 	.db #0x64	; 100	'd'
   6785 30                 2739 	.db #0x30	; 48	'0'
   6786 30                 2740 	.db #0x30	; 48	'0'
   6787 30                 2741 	.db #0x30	; 48	'0'
   6788 64                 2742 	.db #0x64	; 100	'd'
   6789 30                 2743 	.db #0x30	; 48	'0'
   678A 25                 2744 	.db #0x25	; 37
   678B 30                 2745 	.db #0x30	; 48	'0'
   678C 30                 2746 	.db #0x30	; 48	'0'
   678D 1A                 2747 	.db #0x1A	; 26
   678E 64                 2748 	.db #0x64	; 100	'd'
   678F CC                 2749 	.db #0xCC	; 204
   6790 98                 2750 	.db #0x98	; 152
   6791 30                 2751 	.db #0x30	; 48	'0'
   6792 64                 2752 	.db #0x64	; 100	'd'
   6793 30                 2753 	.db #0x30	; 48	'0'
   6794 25                 2754 	.db #0x25	; 37
   6795 30                 2755 	.db #0x30	; 48	'0'
   6796 30                 2756 	.db #0x30	; 48	'0'
   6797 1A                 2757 	.db #0x1A	; 26
   6798 30                 2758 	.db #0x30	; 48	'0'
   6799 30                 2759 	.db #0x30	; 48	'0'
   679A 30                 2760 	.db #0x30	; 48	'0'
   679B 30                 2761 	.db #0x30	; 48	'0'
   679C 30                 2762 	.db #0x30	; 48	'0'
   679D 30                 2763 	.db #0x30	; 48	'0'
   679E 25                 2764 	.db #0x25	; 37
   679F 30                 2765 	.db #0x30	; 48	'0'
   67A0 30                 2766 	.db #0x30	; 48	'0'
   67A1 1A                 2767 	.db #0x1A	; 26
   67A2 30                 2768 	.db #0x30	; 48	'0'
   67A3 30                 2769 	.db #0x30	; 48	'0'
   67A4 30                 2770 	.db #0x30	; 48	'0'
   67A5 30                 2771 	.db #0x30	; 48	'0'
   67A6 30                 2772 	.db #0x30	; 48	'0'
   67A7 30                 2773 	.db #0x30	; 48	'0'
   67A8 25                 2774 	.db #0x25	; 37
   67A9 30                 2775 	.db #0x30	; 48	'0'
   67AA 30                 2776 	.db #0x30	; 48	'0'
   67AB 1A                 2777 	.db #0x1A	; 26
   67AC 30                 2778 	.db #0x30	; 48	'0'
   67AD 30                 2779 	.db #0x30	; 48	'0'
   67AE 30                 2780 	.db #0x30	; 48	'0'
   67AF 30                 2781 	.db #0x30	; 48	'0'
   67B0 30                 2782 	.db #0x30	; 48	'0'
   67B1 30                 2783 	.db #0x30	; 48	'0'
   67B2 25                 2784 	.db #0x25	; 37
   67B3 30                 2785 	.db #0x30	; 48	'0'
   67B4 30                 2786 	.db #0x30	; 48	'0'
   67B5 1A                 2787 	.db #0x1A	; 26
   67B6 30                 2788 	.db #0x30	; 48	'0'
   67B7 30                 2789 	.db #0x30	; 48	'0'
   67B8 30                 2790 	.db #0x30	; 48	'0'
   67B9 30                 2791 	.db #0x30	; 48	'0'
   67BA 30                 2792 	.db #0x30	; 48	'0'
   67BB 30                 2793 	.db #0x30	; 48	'0'
   67BC 25                 2794 	.db #0x25	; 37
   67BD 30                 2795 	.db #0x30	; 48	'0'
   67BE 30                 2796 	.db #0x30	; 48	'0'
   67BF 1A                 2797 	.db #0x1A	; 26
   67C0 30                 2798 	.db #0x30	; 48	'0'
   67C1 30                 2799 	.db #0x30	; 48	'0'
   67C2 30                 2800 	.db #0x30	; 48	'0'
   67C3 30                 2801 	.db #0x30	; 48	'0'
   67C4 30                 2802 	.db #0x30	; 48	'0'
   67C5 30                 2803 	.db #0x30	; 48	'0'
   67C6 25                 2804 	.db #0x25	; 37
   67C7 30                 2805 	.db #0x30	; 48	'0'
   67C8 30                 2806 	.db #0x30	; 48	'0'
   67C9 1A                 2807 	.db #0x1A	; 26
   67CA 30                 2808 	.db #0x30	; 48	'0'
   67CB 30                 2809 	.db #0x30	; 48	'0'
   67CC 30                 2810 	.db #0x30	; 48	'0'
   67CD 30                 2811 	.db #0x30	; 48	'0'
   67CE 30                 2812 	.db #0x30	; 48	'0'
   67CF 30                 2813 	.db #0x30	; 48	'0'
   67D0 25                 2814 	.db #0x25	; 37
   67D1 30                 2815 	.db #0x30	; 48	'0'
   67D2 30                 2816 	.db #0x30	; 48	'0'
   67D3 0F                 2817 	.db #0x0F	; 15
   67D4 30                 2818 	.db #0x30	; 48	'0'
   67D5 30                 2819 	.db #0x30	; 48	'0'
   67D6 30                 2820 	.db #0x30	; 48	'0'
   67D7 30                 2821 	.db #0x30	; 48	'0'
   67D8 30                 2822 	.db #0x30	; 48	'0'
   67D9 30                 2823 	.db #0x30	; 48	'0'
   67DA 0F                 2824 	.db #0x0F	; 15
   67DB 30                 2825 	.db #0x30	; 48	'0'
   67DC 30                 2826 	.db #0x30	; 48	'0'
   67DD 25                 2827 	.db #0x25	; 37
   67DE 30                 2828 	.db #0x30	; 48	'0'
   67DF 30                 2829 	.db #0x30	; 48	'0'
   67E0 30                 2830 	.db #0x30	; 48	'0'
   67E1 30                 2831 	.db #0x30	; 48	'0'
   67E2 30                 2832 	.db #0x30	; 48	'0'
   67E3 30                 2833 	.db #0x30	; 48	'0'
   67E4 1A                 2834 	.db #0x1A	; 26
   67E5 30                 2835 	.db #0x30	; 48	'0'
   67E6 30                 2836 	.db #0x30	; 48	'0'
   67E7 25                 2837 	.db #0x25	; 37
   67E8 0F                 2838 	.db #0x0F	; 15
   67E9 0F                 2839 	.db #0x0F	; 15
   67EA 0F                 2840 	.db #0x0F	; 15
   67EB 0F                 2841 	.db #0x0F	; 15
   67EC 0F                 2842 	.db #0x0F	; 15
   67ED 0F                 2843 	.db #0x0F	; 15
   67EE 1A                 2844 	.db #0x1A	; 26
   67EF 30                 2845 	.db #0x30	; 48	'0'
   67F0 F0                 2846 	.db #0xF0	; 240
   67F1 30                 2847 	.db #0x30	; 48	'0'
   67F2 30                 2848 	.db #0x30	; 48	'0'
   67F3 30                 2849 	.db #0x30	; 48	'0'
   67F4 30                 2850 	.db #0x30	; 48	'0'
   67F5 30                 2851 	.db #0x30	; 48	'0'
   67F6 30                 2852 	.db #0x30	; 48	'0'
   67F7 30                 2853 	.db #0x30	; 48	'0'
   67F8 30                 2854 	.db #0x30	; 48	'0'
   67F9 F0                 2855 	.db #0xF0	; 240
   67FA F0                 2856 	.db #0xF0	; 240
   67FB 30                 2857 	.db #0x30	; 48	'0'
   67FC 30                 2858 	.db #0x30	; 48	'0'
   67FD 30                 2859 	.db #0x30	; 48	'0'
   67FE 30                 2860 	.db #0x30	; 48	'0'
   67FF 30                 2861 	.db #0x30	; 48	'0'
   6800 30                 2862 	.db #0x30	; 48	'0'
   6801 30                 2863 	.db #0x30	; 48	'0'
   6802 30                 2864 	.db #0x30	; 48	'0'
   6803 F0                 2865 	.db #0xF0	; 240
   6804                    2866 _tile_tiles_07:
   6804 F0                 2867 	.db #0xF0	; 240
   6805 30                 2868 	.db #0x30	; 48	'0'
   6806 30                 2869 	.db #0x30	; 48	'0'
   6807 30                 2870 	.db #0x30	; 48	'0'
   6808 30                 2871 	.db #0x30	; 48	'0'
   6809 30                 2872 	.db #0x30	; 48	'0'
   680A 30                 2873 	.db #0x30	; 48	'0'
   680B 30                 2874 	.db #0x30	; 48	'0'
   680C 30                 2875 	.db #0x30	; 48	'0'
   680D F0                 2876 	.db #0xF0	; 240
   680E F0                 2877 	.db #0xF0	; 240
   680F 30                 2878 	.db #0x30	; 48	'0'
   6810 30                 2879 	.db #0x30	; 48	'0'
   6811 30                 2880 	.db #0x30	; 48	'0'
   6812 30                 2881 	.db #0x30	; 48	'0'
   6813 30                 2882 	.db #0x30	; 48	'0'
   6814 30                 2883 	.db #0x30	; 48	'0'
   6815 30                 2884 	.db #0x30	; 48	'0'
   6816 30                 2885 	.db #0x30	; 48	'0'
   6817 F0                 2886 	.db #0xF0	; 240
   6818 30                 2887 	.db #0x30	; 48	'0'
   6819 25                 2888 	.db #0x25	; 37
   681A 0F                 2889 	.db #0x0F	; 15
   681B 0F                 2890 	.db #0x0F	; 15
   681C 0F                 2891 	.db #0x0F	; 15
   681D 0F                 2892 	.db #0x0F	; 15
   681E 0F                 2893 	.db #0x0F	; 15
   681F 0F                 2894 	.db #0x0F	; 15
   6820 1A                 2895 	.db #0x1A	; 26
   6821 30                 2896 	.db #0x30	; 48	'0'
   6822 30                 2897 	.db #0x30	; 48	'0'
   6823 25                 2898 	.db #0x25	; 37
   6824 30                 2899 	.db #0x30	; 48	'0'
   6825 30                 2900 	.db #0x30	; 48	'0'
   6826 30                 2901 	.db #0x30	; 48	'0'
   6827 30                 2902 	.db #0x30	; 48	'0'
   6828 30                 2903 	.db #0x30	; 48	'0'
   6829 30                 2904 	.db #0x30	; 48	'0'
   682A 1A                 2905 	.db #0x1A	; 26
   682B 30                 2906 	.db #0x30	; 48	'0'
   682C 30                 2907 	.db #0x30	; 48	'0'
   682D 0F                 2908 	.db #0x0F	; 15
   682E 30                 2909 	.db #0x30	; 48	'0'
   682F 30                 2910 	.db #0x30	; 48	'0'
   6830 30                 2911 	.db #0x30	; 48	'0'
   6831 30                 2912 	.db #0x30	; 48	'0'
   6832 30                 2913 	.db #0x30	; 48	'0'
   6833 30                 2914 	.db #0x30	; 48	'0'
   6834 0F                 2915 	.db #0x0F	; 15
   6835 30                 2916 	.db #0x30	; 48	'0'
   6836 30                 2917 	.db #0x30	; 48	'0'
   6837 1A                 2918 	.db #0x1A	; 26
   6838 30                 2919 	.db #0x30	; 48	'0'
   6839 30                 2920 	.db #0x30	; 48	'0'
   683A 30                 2921 	.db #0x30	; 48	'0'
   683B 30                 2922 	.db #0x30	; 48	'0'
   683C 30                 2923 	.db #0x30	; 48	'0'
   683D 30                 2924 	.db #0x30	; 48	'0'
   683E 25                 2925 	.db #0x25	; 37
   683F 30                 2926 	.db #0x30	; 48	'0'
   6840 30                 2927 	.db #0x30	; 48	'0'
   6841 1A                 2928 	.db #0x1A	; 26
   6842 30                 2929 	.db #0x30	; 48	'0'
   6843 30                 2930 	.db #0x30	; 48	'0'
   6844 30                 2931 	.db #0x30	; 48	'0'
   6845 30                 2932 	.db #0x30	; 48	'0'
   6846 30                 2933 	.db #0x30	; 48	'0'
   6847 30                 2934 	.db #0x30	; 48	'0'
   6848 25                 2935 	.db #0x25	; 37
   6849 30                 2936 	.db #0x30	; 48	'0'
   684A 30                 2937 	.db #0x30	; 48	'0'
   684B 1A                 2938 	.db #0x1A	; 26
   684C 30                 2939 	.db #0x30	; 48	'0'
   684D 30                 2940 	.db #0x30	; 48	'0'
   684E 30                 2941 	.db #0x30	; 48	'0'
   684F 30                 2942 	.db #0x30	; 48	'0'
   6850 30                 2943 	.db #0x30	; 48	'0'
   6851 30                 2944 	.db #0x30	; 48	'0'
   6852 25                 2945 	.db #0x25	; 37
   6853 30                 2946 	.db #0x30	; 48	'0'
   6854 30                 2947 	.db #0x30	; 48	'0'
   6855 1A                 2948 	.db #0x1A	; 26
   6856 30                 2949 	.db #0x30	; 48	'0'
   6857 30                 2950 	.db #0x30	; 48	'0'
   6858 30                 2951 	.db #0x30	; 48	'0'
   6859 30                 2952 	.db #0x30	; 48	'0'
   685A 30                 2953 	.db #0x30	; 48	'0'
   685B 30                 2954 	.db #0x30	; 48	'0'
   685C 25                 2955 	.db #0x25	; 37
   685D 30                 2956 	.db #0x30	; 48	'0'
   685E 30                 2957 	.db #0x30	; 48	'0'
   685F 1A                 2958 	.db #0x1A	; 26
   6860 30                 2959 	.db #0x30	; 48	'0'
   6861 30                 2960 	.db #0x30	; 48	'0'
   6862 30                 2961 	.db #0x30	; 48	'0'
   6863 30                 2962 	.db #0x30	; 48	'0'
   6864 30                 2963 	.db #0x30	; 48	'0'
   6865 30                 2964 	.db #0x30	; 48	'0'
   6866 25                 2965 	.db #0x25	; 37
   6867 30                 2966 	.db #0x30	; 48	'0'
   6868 30                 2967 	.db #0x30	; 48	'0'
   6869 1A                 2968 	.db #0x1A	; 26
   686A 30                 2969 	.db #0x30	; 48	'0'
   686B 30                 2970 	.db #0x30	; 48	'0'
   686C 30                 2971 	.db #0x30	; 48	'0'
   686D 30                 2972 	.db #0x30	; 48	'0'
   686E 30                 2973 	.db #0x30	; 48	'0'
   686F 30                 2974 	.db #0x30	; 48	'0'
   6870 25                 2975 	.db #0x25	; 37
   6871 30                 2976 	.db #0x30	; 48	'0'
   6872 30                 2977 	.db #0x30	; 48	'0'
   6873 1A                 2978 	.db #0x1A	; 26
   6874 30                 2979 	.db #0x30	; 48	'0'
   6875 30                 2980 	.db #0x30	; 48	'0'
   6876 30                 2981 	.db #0x30	; 48	'0'
   6877 30                 2982 	.db #0x30	; 48	'0'
   6878 30                 2983 	.db #0x30	; 48	'0'
   6879 30                 2984 	.db #0x30	; 48	'0'
   687A 25                 2985 	.db #0x25	; 37
   687B 30                 2986 	.db #0x30	; 48	'0'
   687C 30                 2987 	.db #0x30	; 48	'0'
   687D 1A                 2988 	.db #0x1A	; 26
   687E 30                 2989 	.db #0x30	; 48	'0'
   687F 30                 2990 	.db #0x30	; 48	'0'
   6880 30                 2991 	.db #0x30	; 48	'0'
   6881 30                 2992 	.db #0x30	; 48	'0'
   6882 30                 2993 	.db #0x30	; 48	'0'
   6883 30                 2994 	.db #0x30	; 48	'0'
   6884 25                 2995 	.db #0x25	; 37
   6885 30                 2996 	.db #0x30	; 48	'0'
   6886 30                 2997 	.db #0x30	; 48	'0'
   6887 1A                 2998 	.db #0x1A	; 26
   6888 30                 2999 	.db #0x30	; 48	'0'
   6889 64                 3000 	.db #0x64	; 100	'd'
   688A 30                 3001 	.db #0x30	; 48	'0'
   688B 30                 3002 	.db #0x30	; 48	'0'
   688C CC                 3003 	.db #0xCC	; 204
   688D 30                 3004 	.db #0x30	; 48	'0'
   688E 25                 3005 	.db #0x25	; 37
   688F 30                 3006 	.db #0x30	; 48	'0'
   6890 30                 3007 	.db #0x30	; 48	'0'
   6891 1A                 3008 	.db #0x1A	; 26
   6892 30                 3009 	.db #0x30	; 48	'0'
   6893 64                 3010 	.db #0x64	; 100	'd'
   6894 30                 3011 	.db #0x30	; 48	'0'
   6895 64                 3012 	.db #0x64	; 100	'd'
   6896 30                 3013 	.db #0x30	; 48	'0'
   6897 98                 3014 	.db #0x98	; 152
   6898 25                 3015 	.db #0x25	; 37
   6899 30                 3016 	.db #0x30	; 48	'0'
   689A 30                 3017 	.db #0x30	; 48	'0'
   689B 1A                 3018 	.db #0x1A	; 26
   689C 30                 3019 	.db #0x30	; 48	'0'
   689D CC                 3020 	.db #0xCC	; 204
   689E 30                 3021 	.db #0x30	; 48	'0'
   689F 64                 3022 	.db #0x64	; 100	'd'
   68A0 30                 3023 	.db #0x30	; 48	'0'
   68A1 98                 3024 	.db #0x98	; 152
   68A2 25                 3025 	.db #0x25	; 37
   68A3 30                 3026 	.db #0x30	; 48	'0'
   68A4 30                 3027 	.db #0x30	; 48	'0'
   68A5 1A                 3028 	.db #0x1A	; 26
   68A6 30                 3029 	.db #0x30	; 48	'0'
   68A7 CC                 3030 	.db #0xCC	; 204
   68A8 30                 3031 	.db #0x30	; 48	'0'
   68A9 64                 3032 	.db #0x64	; 100	'd'
   68AA 30                 3033 	.db #0x30	; 48	'0'
   68AB 98                 3034 	.db #0x98	; 152
   68AC 25                 3035 	.db #0x25	; 37
   68AD 30                 3036 	.db #0x30	; 48	'0'
   68AE 30                 3037 	.db #0x30	; 48	'0'
   68AF 1A                 3038 	.db #0x1A	; 26
   68B0 64                 3039 	.db #0x64	; 100	'd'
   68B1 64                 3040 	.db #0x64	; 100	'd'
   68B2 30                 3041 	.db #0x30	; 48	'0'
   68B3 64                 3042 	.db #0x64	; 100	'd'
   68B4 30                 3043 	.db #0x30	; 48	'0'
   68B5 98                 3044 	.db #0x98	; 152
   68B6 25                 3045 	.db #0x25	; 37
   68B7 30                 3046 	.db #0x30	; 48	'0'
   68B8 30                 3047 	.db #0x30	; 48	'0'
   68B9 1A                 3048 	.db #0x1A	; 26
   68BA 64                 3049 	.db #0x64	; 100	'd'
   68BB 64                 3050 	.db #0x64	; 100	'd'
   68BC 30                 3051 	.db #0x30	; 48	'0'
   68BD 64                 3052 	.db #0x64	; 100	'd'
   68BE 30                 3053 	.db #0x30	; 48	'0'
   68BF 98                 3054 	.db #0x98	; 152
   68C0 25                 3055 	.db #0x25	; 37
   68C1 30                 3056 	.db #0x30	; 48	'0'
   68C2 30                 3057 	.db #0x30	; 48	'0'
   68C3 1A                 3058 	.db #0x1A	; 26
   68C4 64                 3059 	.db #0x64	; 100	'd'
   68C5 64                 3060 	.db #0x64	; 100	'd'
   68C6 30                 3061 	.db #0x30	; 48	'0'
   68C7 64                 3062 	.db #0x64	; 100	'd'
   68C8 30                 3063 	.db #0x30	; 48	'0'
   68C9 98                 3064 	.db #0x98	; 152
   68CA 25                 3065 	.db #0x25	; 37
   68CB 30                 3066 	.db #0x30	; 48	'0'
   68CC 30                 3067 	.db #0x30	; 48	'0'
   68CD 1A                 3068 	.db #0x1A	; 26
   68CE 64                 3069 	.db #0x64	; 100	'd'
   68CF 64                 3070 	.db #0x64	; 100	'd'
   68D0 30                 3071 	.db #0x30	; 48	'0'
   68D1 30                 3072 	.db #0x30	; 48	'0'
   68D2 CC                 3073 	.db #0xCC	; 204
   68D3 30                 3074 	.db #0x30	; 48	'0'
   68D4 25                 3075 	.db #0x25	; 37
   68D5 30                 3076 	.db #0x30	; 48	'0'
   68D6 30                 3077 	.db #0x30	; 48	'0'
   68D7 1A                 3078 	.db #0x1A	; 26
   68D8 98                 3079 	.db #0x98	; 152
   68D9 64                 3080 	.db #0x64	; 100	'd'
   68DA 30                 3081 	.db #0x30	; 48	'0'
   68DB 64                 3082 	.db #0x64	; 100	'd'
   68DC 30                 3083 	.db #0x30	; 48	'0'
   68DD 98                 3084 	.db #0x98	; 152
   68DE 25                 3085 	.db #0x25	; 37
   68DF 30                 3086 	.db #0x30	; 48	'0'
   68E0 30                 3087 	.db #0x30	; 48	'0'
   68E1 1A                 3088 	.db #0x1A	; 26
   68E2 98                 3089 	.db #0x98	; 152
   68E3 64                 3090 	.db #0x64	; 100	'd'
   68E4 30                 3091 	.db #0x30	; 48	'0'
   68E5 64                 3092 	.db #0x64	; 100	'd'
   68E6 30                 3093 	.db #0x30	; 48	'0'
   68E7 98                 3094 	.db #0x98	; 152
   68E8 25                 3095 	.db #0x25	; 37
   68E9 30                 3096 	.db #0x30	; 48	'0'
   68EA 30                 3097 	.db #0x30	; 48	'0'
   68EB 1A                 3098 	.db #0x1A	; 26
   68EC CC                 3099 	.db #0xCC	; 204
   68ED CC                 3100 	.db #0xCC	; 204
   68EE 98                 3101 	.db #0x98	; 152
   68EF 64                 3102 	.db #0x64	; 100	'd'
   68F0 30                 3103 	.db #0x30	; 48	'0'
   68F1 98                 3104 	.db #0x98	; 152
   68F2 25                 3105 	.db #0x25	; 37
   68F3 30                 3106 	.db #0x30	; 48	'0'
   68F4 30                 3107 	.db #0x30	; 48	'0'
   68F5 1A                 3108 	.db #0x1A	; 26
   68F6 30                 3109 	.db #0x30	; 48	'0'
   68F7 64                 3110 	.db #0x64	; 100	'd'
   68F8 30                 3111 	.db #0x30	; 48	'0'
   68F9 64                 3112 	.db #0x64	; 100	'd'
   68FA 30                 3113 	.db #0x30	; 48	'0'
   68FB 98                 3114 	.db #0x98	; 152
   68FC 25                 3115 	.db #0x25	; 37
   68FD 30                 3116 	.db #0x30	; 48	'0'
   68FE 30                 3117 	.db #0x30	; 48	'0'
   68FF 1A                 3118 	.db #0x1A	; 26
   6900 30                 3119 	.db #0x30	; 48	'0'
   6901 64                 3120 	.db #0x64	; 100	'd'
   6902 30                 3121 	.db #0x30	; 48	'0'
   6903 64                 3122 	.db #0x64	; 100	'd'
   6904 30                 3123 	.db #0x30	; 48	'0'
   6905 98                 3124 	.db #0x98	; 152
   6906 25                 3125 	.db #0x25	; 37
   6907 30                 3126 	.db #0x30	; 48	'0'
   6908 30                 3127 	.db #0x30	; 48	'0'
   6909 1A                 3128 	.db #0x1A	; 26
   690A 30                 3129 	.db #0x30	; 48	'0'
   690B 64                 3130 	.db #0x64	; 100	'd'
   690C 30                 3131 	.db #0x30	; 48	'0'
   690D 64                 3132 	.db #0x64	; 100	'd'
   690E 30                 3133 	.db #0x30	; 48	'0'
   690F 98                 3134 	.db #0x98	; 152
   6910 25                 3135 	.db #0x25	; 37
   6911 30                 3136 	.db #0x30	; 48	'0'
   6912 30                 3137 	.db #0x30	; 48	'0'
   6913 1A                 3138 	.db #0x1A	; 26
   6914 30                 3139 	.db #0x30	; 48	'0'
   6915 64                 3140 	.db #0x64	; 100	'd'
   6916 30                 3141 	.db #0x30	; 48	'0'
   6917 30                 3142 	.db #0x30	; 48	'0'
   6918 CC                 3143 	.db #0xCC	; 204
   6919 30                 3144 	.db #0x30	; 48	'0'
   691A 25                 3145 	.db #0x25	; 37
   691B 30                 3146 	.db #0x30	; 48	'0'
   691C 30                 3147 	.db #0x30	; 48	'0'
   691D 1A                 3148 	.db #0x1A	; 26
   691E 30                 3149 	.db #0x30	; 48	'0'
   691F 30                 3150 	.db #0x30	; 48	'0'
   6920 30                 3151 	.db #0x30	; 48	'0'
   6921 30                 3152 	.db #0x30	; 48	'0'
   6922 30                 3153 	.db #0x30	; 48	'0'
   6923 30                 3154 	.db #0x30	; 48	'0'
   6924 25                 3155 	.db #0x25	; 37
   6925 30                 3156 	.db #0x30	; 48	'0'
   6926 30                 3157 	.db #0x30	; 48	'0'
   6927 1A                 3158 	.db #0x1A	; 26
   6928 30                 3159 	.db #0x30	; 48	'0'
   6929 30                 3160 	.db #0x30	; 48	'0'
   692A 30                 3161 	.db #0x30	; 48	'0'
   692B 30                 3162 	.db #0x30	; 48	'0'
   692C 30                 3163 	.db #0x30	; 48	'0'
   692D 30                 3164 	.db #0x30	; 48	'0'
   692E 25                 3165 	.db #0x25	; 37
   692F 30                 3166 	.db #0x30	; 48	'0'
   6930 30                 3167 	.db #0x30	; 48	'0'
   6931 1A                 3168 	.db #0x1A	; 26
   6932 30                 3169 	.db #0x30	; 48	'0'
   6933 30                 3170 	.db #0x30	; 48	'0'
   6934 30                 3171 	.db #0x30	; 48	'0'
   6935 30                 3172 	.db #0x30	; 48	'0'
   6936 30                 3173 	.db #0x30	; 48	'0'
   6937 30                 3174 	.db #0x30	; 48	'0'
   6938 25                 3175 	.db #0x25	; 37
   6939 30                 3176 	.db #0x30	; 48	'0'
   693A 30                 3177 	.db #0x30	; 48	'0'
   693B 1A                 3178 	.db #0x1A	; 26
   693C 30                 3179 	.db #0x30	; 48	'0'
   693D 30                 3180 	.db #0x30	; 48	'0'
   693E 30                 3181 	.db #0x30	; 48	'0'
   693F 30                 3182 	.db #0x30	; 48	'0'
   6940 30                 3183 	.db #0x30	; 48	'0'
   6941 30                 3184 	.db #0x30	; 48	'0'
   6942 25                 3185 	.db #0x25	; 37
   6943 30                 3186 	.db #0x30	; 48	'0'
   6944 30                 3187 	.db #0x30	; 48	'0'
   6945 1A                 3188 	.db #0x1A	; 26
   6946 30                 3189 	.db #0x30	; 48	'0'
   6947 30                 3190 	.db #0x30	; 48	'0'
   6948 30                 3191 	.db #0x30	; 48	'0'
   6949 30                 3192 	.db #0x30	; 48	'0'
   694A 30                 3193 	.db #0x30	; 48	'0'
   694B 30                 3194 	.db #0x30	; 48	'0'
   694C 25                 3195 	.db #0x25	; 37
   694D 30                 3196 	.db #0x30	; 48	'0'
   694E 30                 3197 	.db #0x30	; 48	'0'
   694F 1A                 3198 	.db #0x1A	; 26
   6950 30                 3199 	.db #0x30	; 48	'0'
   6951 30                 3200 	.db #0x30	; 48	'0'
   6952 30                 3201 	.db #0x30	; 48	'0'
   6953 30                 3202 	.db #0x30	; 48	'0'
   6954 30                 3203 	.db #0x30	; 48	'0'
   6955 30                 3204 	.db #0x30	; 48	'0'
   6956 25                 3205 	.db #0x25	; 37
   6957 30                 3206 	.db #0x30	; 48	'0'
   6958 30                 3207 	.db #0x30	; 48	'0'
   6959 1A                 3208 	.db #0x1A	; 26
   695A 30                 3209 	.db #0x30	; 48	'0'
   695B 30                 3210 	.db #0x30	; 48	'0'
   695C 30                 3211 	.db #0x30	; 48	'0'
   695D 30                 3212 	.db #0x30	; 48	'0'
   695E 30                 3213 	.db #0x30	; 48	'0'
   695F 30                 3214 	.db #0x30	; 48	'0'
   6960 25                 3215 	.db #0x25	; 37
   6961 30                 3216 	.db #0x30	; 48	'0'
   6962 30                 3217 	.db #0x30	; 48	'0'
   6963 0F                 3218 	.db #0x0F	; 15
   6964 30                 3219 	.db #0x30	; 48	'0'
   6965 30                 3220 	.db #0x30	; 48	'0'
   6966 30                 3221 	.db #0x30	; 48	'0'
   6967 30                 3222 	.db #0x30	; 48	'0'
   6968 30                 3223 	.db #0x30	; 48	'0'
   6969 30                 3224 	.db #0x30	; 48	'0'
   696A 0F                 3225 	.db #0x0F	; 15
   696B 30                 3226 	.db #0x30	; 48	'0'
   696C 30                 3227 	.db #0x30	; 48	'0'
   696D 25                 3228 	.db #0x25	; 37
   696E 30                 3229 	.db #0x30	; 48	'0'
   696F 30                 3230 	.db #0x30	; 48	'0'
   6970 30                 3231 	.db #0x30	; 48	'0'
   6971 30                 3232 	.db #0x30	; 48	'0'
   6972 30                 3233 	.db #0x30	; 48	'0'
   6973 30                 3234 	.db #0x30	; 48	'0'
   6974 1A                 3235 	.db #0x1A	; 26
   6975 30                 3236 	.db #0x30	; 48	'0'
   6976 30                 3237 	.db #0x30	; 48	'0'
   6977 25                 3238 	.db #0x25	; 37
   6978 0F                 3239 	.db #0x0F	; 15
   6979 0F                 3240 	.db #0x0F	; 15
   697A 0F                 3241 	.db #0x0F	; 15
   697B 0F                 3242 	.db #0x0F	; 15
   697C 0F                 3243 	.db #0x0F	; 15
   697D 0F                 3244 	.db #0x0F	; 15
   697E 1A                 3245 	.db #0x1A	; 26
   697F 30                 3246 	.db #0x30	; 48	'0'
   6980 F0                 3247 	.db #0xF0	; 240
   6981 30                 3248 	.db #0x30	; 48	'0'
   6982 30                 3249 	.db #0x30	; 48	'0'
   6983 30                 3250 	.db #0x30	; 48	'0'
   6984 30                 3251 	.db #0x30	; 48	'0'
   6985 30                 3252 	.db #0x30	; 48	'0'
   6986 30                 3253 	.db #0x30	; 48	'0'
   6987 30                 3254 	.db #0x30	; 48	'0'
   6988 30                 3255 	.db #0x30	; 48	'0'
   6989 F0                 3256 	.db #0xF0	; 240
   698A F0                 3257 	.db #0xF0	; 240
   698B 30                 3258 	.db #0x30	; 48	'0'
   698C 30                 3259 	.db #0x30	; 48	'0'
   698D 30                 3260 	.db #0x30	; 48	'0'
   698E 30                 3261 	.db #0x30	; 48	'0'
   698F 30                 3262 	.db #0x30	; 48	'0'
   6990 30                 3263 	.db #0x30	; 48	'0'
   6991 30                 3264 	.db #0x30	; 48	'0'
   6992 30                 3265 	.db #0x30	; 48	'0'
   6993 F0                 3266 	.db #0xF0	; 240
   6994                    3267 _tile_tiles_08:
   6994 F0                 3268 	.db #0xF0	; 240
   6995 30                 3269 	.db #0x30	; 48	'0'
   6996 30                 3270 	.db #0x30	; 48	'0'
   6997 30                 3271 	.db #0x30	; 48	'0'
   6998 30                 3272 	.db #0x30	; 48	'0'
   6999 30                 3273 	.db #0x30	; 48	'0'
   699A 30                 3274 	.db #0x30	; 48	'0'
   699B 30                 3275 	.db #0x30	; 48	'0'
   699C 30                 3276 	.db #0x30	; 48	'0'
   699D F0                 3277 	.db #0xF0	; 240
   699E F0                 3278 	.db #0xF0	; 240
   699F 30                 3279 	.db #0x30	; 48	'0'
   69A0 30                 3280 	.db #0x30	; 48	'0'
   69A1 30                 3281 	.db #0x30	; 48	'0'
   69A2 30                 3282 	.db #0x30	; 48	'0'
   69A3 30                 3283 	.db #0x30	; 48	'0'
   69A4 30                 3284 	.db #0x30	; 48	'0'
   69A5 30                 3285 	.db #0x30	; 48	'0'
   69A6 30                 3286 	.db #0x30	; 48	'0'
   69A7 F0                 3287 	.db #0xF0	; 240
   69A8 30                 3288 	.db #0x30	; 48	'0'
   69A9 25                 3289 	.db #0x25	; 37
   69AA 0F                 3290 	.db #0x0F	; 15
   69AB 0F                 3291 	.db #0x0F	; 15
   69AC 0F                 3292 	.db #0x0F	; 15
   69AD 0F                 3293 	.db #0x0F	; 15
   69AE 0F                 3294 	.db #0x0F	; 15
   69AF 0F                 3295 	.db #0x0F	; 15
   69B0 1A                 3296 	.db #0x1A	; 26
   69B1 30                 3297 	.db #0x30	; 48	'0'
   69B2 30                 3298 	.db #0x30	; 48	'0'
   69B3 25                 3299 	.db #0x25	; 37
   69B4 30                 3300 	.db #0x30	; 48	'0'
   69B5 30                 3301 	.db #0x30	; 48	'0'
   69B6 30                 3302 	.db #0x30	; 48	'0'
   69B7 30                 3303 	.db #0x30	; 48	'0'
   69B8 30                 3304 	.db #0x30	; 48	'0'
   69B9 30                 3305 	.db #0x30	; 48	'0'
   69BA 1A                 3306 	.db #0x1A	; 26
   69BB 30                 3307 	.db #0x30	; 48	'0'
   69BC 30                 3308 	.db #0x30	; 48	'0'
   69BD 0F                 3309 	.db #0x0F	; 15
   69BE 30                 3310 	.db #0x30	; 48	'0'
   69BF 30                 3311 	.db #0x30	; 48	'0'
   69C0 30                 3312 	.db #0x30	; 48	'0'
   69C1 30                 3313 	.db #0x30	; 48	'0'
   69C2 30                 3314 	.db #0x30	; 48	'0'
   69C3 30                 3315 	.db #0x30	; 48	'0'
   69C4 0F                 3316 	.db #0x0F	; 15
   69C5 30                 3317 	.db #0x30	; 48	'0'
   69C6 30                 3318 	.db #0x30	; 48	'0'
   69C7 1A                 3319 	.db #0x1A	; 26
   69C8 30                 3320 	.db #0x30	; 48	'0'
   69C9 30                 3321 	.db #0x30	; 48	'0'
   69CA 30                 3322 	.db #0x30	; 48	'0'
   69CB 30                 3323 	.db #0x30	; 48	'0'
   69CC 30                 3324 	.db #0x30	; 48	'0'
   69CD 30                 3325 	.db #0x30	; 48	'0'
   69CE 25                 3326 	.db #0x25	; 37
   69CF 30                 3327 	.db #0x30	; 48	'0'
   69D0 30                 3328 	.db #0x30	; 48	'0'
   69D1 1A                 3329 	.db #0x1A	; 26
   69D2 30                 3330 	.db #0x30	; 48	'0'
   69D3 30                 3331 	.db #0x30	; 48	'0'
   69D4 30                 3332 	.db #0x30	; 48	'0'
   69D5 30                 3333 	.db #0x30	; 48	'0'
   69D6 30                 3334 	.db #0x30	; 48	'0'
   69D7 30                 3335 	.db #0x30	; 48	'0'
   69D8 25                 3336 	.db #0x25	; 37
   69D9 30                 3337 	.db #0x30	; 48	'0'
   69DA 30                 3338 	.db #0x30	; 48	'0'
   69DB 1A                 3339 	.db #0x1A	; 26
   69DC 30                 3340 	.db #0x30	; 48	'0'
   69DD 30                 3341 	.db #0x30	; 48	'0'
   69DE 30                 3342 	.db #0x30	; 48	'0'
   69DF 30                 3343 	.db #0x30	; 48	'0'
   69E0 30                 3344 	.db #0x30	; 48	'0'
   69E1 30                 3345 	.db #0x30	; 48	'0'
   69E2 25                 3346 	.db #0x25	; 37
   69E3 30                 3347 	.db #0x30	; 48	'0'
   69E4 30                 3348 	.db #0x30	; 48	'0'
   69E5 1A                 3349 	.db #0x1A	; 26
   69E6 30                 3350 	.db #0x30	; 48	'0'
   69E7 30                 3351 	.db #0x30	; 48	'0'
   69E8 30                 3352 	.db #0x30	; 48	'0'
   69E9 30                 3353 	.db #0x30	; 48	'0'
   69EA 30                 3354 	.db #0x30	; 48	'0'
   69EB 30                 3355 	.db #0x30	; 48	'0'
   69EC 25                 3356 	.db #0x25	; 37
   69ED 30                 3357 	.db #0x30	; 48	'0'
   69EE 30                 3358 	.db #0x30	; 48	'0'
   69EF 1A                 3359 	.db #0x1A	; 26
   69F0 30                 3360 	.db #0x30	; 48	'0'
   69F1 30                 3361 	.db #0x30	; 48	'0'
   69F2 30                 3362 	.db #0x30	; 48	'0'
   69F3 30                 3363 	.db #0x30	; 48	'0'
   69F4 30                 3364 	.db #0x30	; 48	'0'
   69F5 30                 3365 	.db #0x30	; 48	'0'
   69F6 25                 3366 	.db #0x25	; 37
   69F7 30                 3367 	.db #0x30	; 48	'0'
   69F8 30                 3368 	.db #0x30	; 48	'0'
   69F9 1A                 3369 	.db #0x1A	; 26
   69FA 30                 3370 	.db #0x30	; 48	'0'
   69FB 30                 3371 	.db #0x30	; 48	'0'
   69FC 30                 3372 	.db #0x30	; 48	'0'
   69FD 30                 3373 	.db #0x30	; 48	'0'
   69FE 30                 3374 	.db #0x30	; 48	'0'
   69FF 30                 3375 	.db #0x30	; 48	'0'
   6A00 25                 3376 	.db #0x25	; 37
   6A01 30                 3377 	.db #0x30	; 48	'0'
   6A02 30                 3378 	.db #0x30	; 48	'0'
   6A03 1A                 3379 	.db #0x1A	; 26
   6A04 30                 3380 	.db #0x30	; 48	'0'
   6A05 30                 3381 	.db #0x30	; 48	'0'
   6A06 30                 3382 	.db #0x30	; 48	'0'
   6A07 30                 3383 	.db #0x30	; 48	'0'
   6A08 30                 3384 	.db #0x30	; 48	'0'
   6A09 30                 3385 	.db #0x30	; 48	'0'
   6A0A 25                 3386 	.db #0x25	; 37
   6A0B 30                 3387 	.db #0x30	; 48	'0'
   6A0C 30                 3388 	.db #0x30	; 48	'0'
   6A0D 1A                 3389 	.db #0x1A	; 26
   6A0E 30                 3390 	.db #0x30	; 48	'0'
   6A0F 30                 3391 	.db #0x30	; 48	'0'
   6A10 30                 3392 	.db #0x30	; 48	'0'
   6A11 30                 3393 	.db #0x30	; 48	'0'
   6A12 30                 3394 	.db #0x30	; 48	'0'
   6A13 30                 3395 	.db #0x30	; 48	'0'
   6A14 25                 3396 	.db #0x25	; 37
   6A15 30                 3397 	.db #0x30	; 48	'0'
   6A16 30                 3398 	.db #0x30	; 48	'0'
   6A17 1A                 3399 	.db #0x1A	; 26
   6A18 30                 3400 	.db #0x30	; 48	'0'
   6A19 30                 3401 	.db #0x30	; 48	'0'
   6A1A 30                 3402 	.db #0x30	; 48	'0'
   6A1B 30                 3403 	.db #0x30	; 48	'0'
   6A1C 30                 3404 	.db #0x30	; 48	'0'
   6A1D 30                 3405 	.db #0x30	; 48	'0'
   6A1E 25                 3406 	.db #0x25	; 37
   6A1F 30                 3407 	.db #0x30	; 48	'0'
   6A20 30                 3408 	.db #0x30	; 48	'0'
   6A21 1A                 3409 	.db #0x1A	; 26
   6A22 30                 3410 	.db #0x30	; 48	'0'
   6A23 CC                 3411 	.db #0xCC	; 204
   6A24 30                 3412 	.db #0x30	; 48	'0'
   6A25 30                 3413 	.db #0x30	; 48	'0'
   6A26 64                 3414 	.db #0x64	; 100	'd'
   6A27 98                 3415 	.db #0x98	; 152
   6A28 25                 3416 	.db #0x25	; 37
   6A29 30                 3417 	.db #0x30	; 48	'0'
   6A2A 30                 3418 	.db #0x30	; 48	'0'
   6A2B 1A                 3419 	.db #0x1A	; 26
   6A2C 64                 3420 	.db #0x64	; 100	'd'
   6A2D 30                 3421 	.db #0x30	; 48	'0'
   6A2E 98                 3422 	.db #0x98	; 152
   6A2F 30                 3423 	.db #0x30	; 48	'0'
   6A30 98                 3424 	.db #0x98	; 152
   6A31 30                 3425 	.db #0x30	; 48	'0'
   6A32 25                 3426 	.db #0x25	; 37
   6A33 30                 3427 	.db #0x30	; 48	'0'
   6A34 30                 3428 	.db #0x30	; 48	'0'
   6A35 1A                 3429 	.db #0x1A	; 26
   6A36 64                 3430 	.db #0x64	; 100	'd'
   6A37 30                 3431 	.db #0x30	; 48	'0'
   6A38 98                 3432 	.db #0x98	; 152
   6A39 64                 3433 	.db #0x64	; 100	'd'
   6A3A 30                 3434 	.db #0x30	; 48	'0'
   6A3B 30                 3435 	.db #0x30	; 48	'0'
   6A3C 25                 3436 	.db #0x25	; 37
   6A3D 30                 3437 	.db #0x30	; 48	'0'
   6A3E 30                 3438 	.db #0x30	; 48	'0'
   6A3F 1A                 3439 	.db #0x1A	; 26
   6A40 64                 3440 	.db #0x64	; 100	'd'
   6A41 30                 3441 	.db #0x30	; 48	'0'
   6A42 98                 3442 	.db #0x98	; 152
   6A43 64                 3443 	.db #0x64	; 100	'd'
   6A44 30                 3444 	.db #0x30	; 48	'0'
   6A45 30                 3445 	.db #0x30	; 48	'0'
   6A46 25                 3446 	.db #0x25	; 37
   6A47 30                 3447 	.db #0x30	; 48	'0'
   6A48 30                 3448 	.db #0x30	; 48	'0'
   6A49 1A                 3449 	.db #0x1A	; 26
   6A4A 64                 3450 	.db #0x64	; 100	'd'
   6A4B 30                 3451 	.db #0x30	; 48	'0'
   6A4C 98                 3452 	.db #0x98	; 152
   6A4D 64                 3453 	.db #0x64	; 100	'd'
   6A4E 30                 3454 	.db #0x30	; 48	'0'
   6A4F 30                 3455 	.db #0x30	; 48	'0'
   6A50 25                 3456 	.db #0x25	; 37
   6A51 30                 3457 	.db #0x30	; 48	'0'
   6A52 30                 3458 	.db #0x30	; 48	'0'
   6A53 1A                 3459 	.db #0x1A	; 26
   6A54 64                 3460 	.db #0x64	; 100	'd'
   6A55 30                 3461 	.db #0x30	; 48	'0'
   6A56 98                 3462 	.db #0x98	; 152
   6A57 64                 3463 	.db #0x64	; 100	'd'
   6A58 64                 3464 	.db #0x64	; 100	'd'
   6A59 30                 3465 	.db #0x30	; 48	'0'
   6A5A 25                 3466 	.db #0x25	; 37
   6A5B 30                 3467 	.db #0x30	; 48	'0'
   6A5C 30                 3468 	.db #0x30	; 48	'0'
   6A5D 1A                 3469 	.db #0x1A	; 26
   6A5E 64                 3470 	.db #0x64	; 100	'd'
   6A5F 30                 3471 	.db #0x30	; 48	'0'
   6A60 98                 3472 	.db #0x98	; 152
   6A61 64                 3473 	.db #0x64	; 100	'd'
   6A62 98                 3474 	.db #0x98	; 152
   6A63 98                 3475 	.db #0x98	; 152
   6A64 25                 3476 	.db #0x25	; 37
   6A65 30                 3477 	.db #0x30	; 48	'0'
   6A66 30                 3478 	.db #0x30	; 48	'0'
   6A67 1A                 3479 	.db #0x1A	; 26
   6A68 64                 3480 	.db #0x64	; 100	'd'
   6A69 64                 3481 	.db #0x64	; 100	'd'
   6A6A 98                 3482 	.db #0x98	; 152
   6A6B 64                 3483 	.db #0x64	; 100	'd'
   6A6C 30                 3484 	.db #0x30	; 48	'0'
   6A6D 98                 3485 	.db #0x98	; 152
   6A6E 25                 3486 	.db #0x25	; 37
   6A6F 30                 3487 	.db #0x30	; 48	'0'
   6A70 30                 3488 	.db #0x30	; 48	'0'
   6A71 1A                 3489 	.db #0x1A	; 26
   6A72 30                 3490 	.db #0x30	; 48	'0'
   6A73 98                 3491 	.db #0x98	; 152
   6A74 98                 3492 	.db #0x98	; 152
   6A75 64                 3493 	.db #0x64	; 100	'd'
   6A76 30                 3494 	.db #0x30	; 48	'0'
   6A77 98                 3495 	.db #0x98	; 152
   6A78 25                 3496 	.db #0x25	; 37
   6A79 30                 3497 	.db #0x30	; 48	'0'
   6A7A 30                 3498 	.db #0x30	; 48	'0'
   6A7B 1A                 3499 	.db #0x1A	; 26
   6A7C 30                 3500 	.db #0x30	; 48	'0'
   6A7D 30                 3501 	.db #0x30	; 48	'0'
   6A7E 98                 3502 	.db #0x98	; 152
   6A7F 64                 3503 	.db #0x64	; 100	'd'
   6A80 30                 3504 	.db #0x30	; 48	'0'
   6A81 98                 3505 	.db #0x98	; 152
   6A82 25                 3506 	.db #0x25	; 37
   6A83 30                 3507 	.db #0x30	; 48	'0'
   6A84 30                 3508 	.db #0x30	; 48	'0'
   6A85 1A                 3509 	.db #0x1A	; 26
   6A86 30                 3510 	.db #0x30	; 48	'0'
   6A87 30                 3511 	.db #0x30	; 48	'0'
   6A88 98                 3512 	.db #0x98	; 152
   6A89 64                 3513 	.db #0x64	; 100	'd'
   6A8A 30                 3514 	.db #0x30	; 48	'0'
   6A8B 98                 3515 	.db #0x98	; 152
   6A8C 25                 3516 	.db #0x25	; 37
   6A8D 30                 3517 	.db #0x30	; 48	'0'
   6A8E 30                 3518 	.db #0x30	; 48	'0'
   6A8F 1A                 3519 	.db #0x1A	; 26
   6A90 30                 3520 	.db #0x30	; 48	'0'
   6A91 64                 3521 	.db #0x64	; 100	'd'
   6A92 30                 3522 	.db #0x30	; 48	'0'
   6A93 64                 3523 	.db #0x64	; 100	'd'
   6A94 30                 3524 	.db #0x30	; 48	'0'
   6A95 98                 3525 	.db #0x98	; 152
   6A96 25                 3526 	.db #0x25	; 37
   6A97 30                 3527 	.db #0x30	; 48	'0'
   6A98 30                 3528 	.db #0x30	; 48	'0'
   6A99 1A                 3529 	.db #0x1A	; 26
   6A9A 64                 3530 	.db #0x64	; 100	'd'
   6A9B 64                 3531 	.db #0x64	; 100	'd'
   6A9C 30                 3532 	.db #0x30	; 48	'0'
   6A9D 30                 3533 	.db #0x30	; 48	'0'
   6A9E CC                 3534 	.db #0xCC	; 204
   6A9F 30                 3535 	.db #0x30	; 48	'0'
   6AA0 25                 3536 	.db #0x25	; 37
   6AA1 30                 3537 	.db #0x30	; 48	'0'
   6AA2 30                 3538 	.db #0x30	; 48	'0'
   6AA3 1A                 3539 	.db #0x1A	; 26
   6AA4 30                 3540 	.db #0x30	; 48	'0'
   6AA5 98                 3541 	.db #0x98	; 152
   6AA6 30                 3542 	.db #0x30	; 48	'0'
   6AA7 30                 3543 	.db #0x30	; 48	'0'
   6AA8 CC                 3544 	.db #0xCC	; 204
   6AA9 30                 3545 	.db #0x30	; 48	'0'
   6AAA 25                 3546 	.db #0x25	; 37
   6AAB 30                 3547 	.db #0x30	; 48	'0'
   6AAC 30                 3548 	.db #0x30	; 48	'0'
   6AAD 1A                 3549 	.db #0x1A	; 26
   6AAE 30                 3550 	.db #0x30	; 48	'0'
   6AAF 30                 3551 	.db #0x30	; 48	'0'
   6AB0 30                 3552 	.db #0x30	; 48	'0'
   6AB1 30                 3553 	.db #0x30	; 48	'0'
   6AB2 30                 3554 	.db #0x30	; 48	'0'
   6AB3 30                 3555 	.db #0x30	; 48	'0'
   6AB4 25                 3556 	.db #0x25	; 37
   6AB5 30                 3557 	.db #0x30	; 48	'0'
   6AB6 30                 3558 	.db #0x30	; 48	'0'
   6AB7 1A                 3559 	.db #0x1A	; 26
   6AB8 30                 3560 	.db #0x30	; 48	'0'
   6AB9 30                 3561 	.db #0x30	; 48	'0'
   6ABA 30                 3562 	.db #0x30	; 48	'0'
   6ABB 30                 3563 	.db #0x30	; 48	'0'
   6ABC 30                 3564 	.db #0x30	; 48	'0'
   6ABD 30                 3565 	.db #0x30	; 48	'0'
   6ABE 25                 3566 	.db #0x25	; 37
   6ABF 30                 3567 	.db #0x30	; 48	'0'
   6AC0 30                 3568 	.db #0x30	; 48	'0'
   6AC1 1A                 3569 	.db #0x1A	; 26
   6AC2 30                 3570 	.db #0x30	; 48	'0'
   6AC3 30                 3571 	.db #0x30	; 48	'0'
   6AC4 30                 3572 	.db #0x30	; 48	'0'
   6AC5 30                 3573 	.db #0x30	; 48	'0'
   6AC6 30                 3574 	.db #0x30	; 48	'0'
   6AC7 30                 3575 	.db #0x30	; 48	'0'
   6AC8 25                 3576 	.db #0x25	; 37
   6AC9 30                 3577 	.db #0x30	; 48	'0'
   6ACA 30                 3578 	.db #0x30	; 48	'0'
   6ACB 1A                 3579 	.db #0x1A	; 26
   6ACC 30                 3580 	.db #0x30	; 48	'0'
   6ACD 30                 3581 	.db #0x30	; 48	'0'
   6ACE 30                 3582 	.db #0x30	; 48	'0'
   6ACF 30                 3583 	.db #0x30	; 48	'0'
   6AD0 30                 3584 	.db #0x30	; 48	'0'
   6AD1 30                 3585 	.db #0x30	; 48	'0'
   6AD2 25                 3586 	.db #0x25	; 37
   6AD3 30                 3587 	.db #0x30	; 48	'0'
   6AD4 30                 3588 	.db #0x30	; 48	'0'
   6AD5 1A                 3589 	.db #0x1A	; 26
   6AD6 30                 3590 	.db #0x30	; 48	'0'
   6AD7 30                 3591 	.db #0x30	; 48	'0'
   6AD8 30                 3592 	.db #0x30	; 48	'0'
   6AD9 30                 3593 	.db #0x30	; 48	'0'
   6ADA 30                 3594 	.db #0x30	; 48	'0'
   6ADB 30                 3595 	.db #0x30	; 48	'0'
   6ADC 25                 3596 	.db #0x25	; 37
   6ADD 30                 3597 	.db #0x30	; 48	'0'
   6ADE 30                 3598 	.db #0x30	; 48	'0'
   6ADF 1A                 3599 	.db #0x1A	; 26
   6AE0 30                 3600 	.db #0x30	; 48	'0'
   6AE1 30                 3601 	.db #0x30	; 48	'0'
   6AE2 30                 3602 	.db #0x30	; 48	'0'
   6AE3 30                 3603 	.db #0x30	; 48	'0'
   6AE4 30                 3604 	.db #0x30	; 48	'0'
   6AE5 30                 3605 	.db #0x30	; 48	'0'
   6AE6 25                 3606 	.db #0x25	; 37
   6AE7 30                 3607 	.db #0x30	; 48	'0'
   6AE8 30                 3608 	.db #0x30	; 48	'0'
   6AE9 1A                 3609 	.db #0x1A	; 26
   6AEA 30                 3610 	.db #0x30	; 48	'0'
   6AEB 30                 3611 	.db #0x30	; 48	'0'
   6AEC 30                 3612 	.db #0x30	; 48	'0'
   6AED 30                 3613 	.db #0x30	; 48	'0'
   6AEE 30                 3614 	.db #0x30	; 48	'0'
   6AEF 30                 3615 	.db #0x30	; 48	'0'
   6AF0 25                 3616 	.db #0x25	; 37
   6AF1 30                 3617 	.db #0x30	; 48	'0'
   6AF2 30                 3618 	.db #0x30	; 48	'0'
   6AF3 0F                 3619 	.db #0x0F	; 15
   6AF4 30                 3620 	.db #0x30	; 48	'0'
   6AF5 30                 3621 	.db #0x30	; 48	'0'
   6AF6 30                 3622 	.db #0x30	; 48	'0'
   6AF7 30                 3623 	.db #0x30	; 48	'0'
   6AF8 30                 3624 	.db #0x30	; 48	'0'
   6AF9 30                 3625 	.db #0x30	; 48	'0'
   6AFA 0F                 3626 	.db #0x0F	; 15
   6AFB 30                 3627 	.db #0x30	; 48	'0'
   6AFC 30                 3628 	.db #0x30	; 48	'0'
   6AFD 25                 3629 	.db #0x25	; 37
   6AFE 30                 3630 	.db #0x30	; 48	'0'
   6AFF 30                 3631 	.db #0x30	; 48	'0'
   6B00 30                 3632 	.db #0x30	; 48	'0'
   6B01 30                 3633 	.db #0x30	; 48	'0'
   6B02 30                 3634 	.db #0x30	; 48	'0'
   6B03 30                 3635 	.db #0x30	; 48	'0'
   6B04 1A                 3636 	.db #0x1A	; 26
   6B05 30                 3637 	.db #0x30	; 48	'0'
   6B06 30                 3638 	.db #0x30	; 48	'0'
   6B07 25                 3639 	.db #0x25	; 37
   6B08 0F                 3640 	.db #0x0F	; 15
   6B09 0F                 3641 	.db #0x0F	; 15
   6B0A 0F                 3642 	.db #0x0F	; 15
   6B0B 0F                 3643 	.db #0x0F	; 15
   6B0C 0F                 3644 	.db #0x0F	; 15
   6B0D 0F                 3645 	.db #0x0F	; 15
   6B0E 1A                 3646 	.db #0x1A	; 26
   6B0F 30                 3647 	.db #0x30	; 48	'0'
   6B10 F0                 3648 	.db #0xF0	; 240
   6B11 30                 3649 	.db #0x30	; 48	'0'
   6B12 30                 3650 	.db #0x30	; 48	'0'
   6B13 30                 3651 	.db #0x30	; 48	'0'
   6B14 30                 3652 	.db #0x30	; 48	'0'
   6B15 30                 3653 	.db #0x30	; 48	'0'
   6B16 30                 3654 	.db #0x30	; 48	'0'
   6B17 30                 3655 	.db #0x30	; 48	'0'
   6B18 30                 3656 	.db #0x30	; 48	'0'
   6B19 F0                 3657 	.db #0xF0	; 240
   6B1A F0                 3658 	.db #0xF0	; 240
   6B1B 30                 3659 	.db #0x30	; 48	'0'
   6B1C 30                 3660 	.db #0x30	; 48	'0'
   6B1D 30                 3661 	.db #0x30	; 48	'0'
   6B1E 30                 3662 	.db #0x30	; 48	'0'
   6B1F 30                 3663 	.db #0x30	; 48	'0'
   6B20 30                 3664 	.db #0x30	; 48	'0'
   6B21 30                 3665 	.db #0x30	; 48	'0'
   6B22 30                 3666 	.db #0x30	; 48	'0'
   6B23 F0                 3667 	.db #0xF0	; 240
   6B24                    3668 _tile_tiles_09:
   6B24 F0                 3669 	.db #0xF0	; 240
   6B25 30                 3670 	.db #0x30	; 48	'0'
   6B26 30                 3671 	.db #0x30	; 48	'0'
   6B27 30                 3672 	.db #0x30	; 48	'0'
   6B28 30                 3673 	.db #0x30	; 48	'0'
   6B29 30                 3674 	.db #0x30	; 48	'0'
   6B2A 30                 3675 	.db #0x30	; 48	'0'
   6B2B 30                 3676 	.db #0x30	; 48	'0'
   6B2C 30                 3677 	.db #0x30	; 48	'0'
   6B2D F0                 3678 	.db #0xF0	; 240
   6B2E F0                 3679 	.db #0xF0	; 240
   6B2F 30                 3680 	.db #0x30	; 48	'0'
   6B30 30                 3681 	.db #0x30	; 48	'0'
   6B31 30                 3682 	.db #0x30	; 48	'0'
   6B32 30                 3683 	.db #0x30	; 48	'0'
   6B33 30                 3684 	.db #0x30	; 48	'0'
   6B34 30                 3685 	.db #0x30	; 48	'0'
   6B35 30                 3686 	.db #0x30	; 48	'0'
   6B36 30                 3687 	.db #0x30	; 48	'0'
   6B37 F0                 3688 	.db #0xF0	; 240
   6B38 30                 3689 	.db #0x30	; 48	'0'
   6B39 25                 3690 	.db #0x25	; 37
   6B3A 0F                 3691 	.db #0x0F	; 15
   6B3B 0F                 3692 	.db #0x0F	; 15
   6B3C 0F                 3693 	.db #0x0F	; 15
   6B3D 0F                 3694 	.db #0x0F	; 15
   6B3E 0F                 3695 	.db #0x0F	; 15
   6B3F 0F                 3696 	.db #0x0F	; 15
   6B40 1A                 3697 	.db #0x1A	; 26
   6B41 30                 3698 	.db #0x30	; 48	'0'
   6B42 30                 3699 	.db #0x30	; 48	'0'
   6B43 25                 3700 	.db #0x25	; 37
   6B44 30                 3701 	.db #0x30	; 48	'0'
   6B45 30                 3702 	.db #0x30	; 48	'0'
   6B46 30                 3703 	.db #0x30	; 48	'0'
   6B47 30                 3704 	.db #0x30	; 48	'0'
   6B48 30                 3705 	.db #0x30	; 48	'0'
   6B49 30                 3706 	.db #0x30	; 48	'0'
   6B4A 1A                 3707 	.db #0x1A	; 26
   6B4B 30                 3708 	.db #0x30	; 48	'0'
   6B4C 30                 3709 	.db #0x30	; 48	'0'
   6B4D 0F                 3710 	.db #0x0F	; 15
   6B4E 30                 3711 	.db #0x30	; 48	'0'
   6B4F 30                 3712 	.db #0x30	; 48	'0'
   6B50 30                 3713 	.db #0x30	; 48	'0'
   6B51 30                 3714 	.db #0x30	; 48	'0'
   6B52 30                 3715 	.db #0x30	; 48	'0'
   6B53 30                 3716 	.db #0x30	; 48	'0'
   6B54 0F                 3717 	.db #0x0F	; 15
   6B55 30                 3718 	.db #0x30	; 48	'0'
   6B56 30                 3719 	.db #0x30	; 48	'0'
   6B57 1A                 3720 	.db #0x1A	; 26
   6B58 30                 3721 	.db #0x30	; 48	'0'
   6B59 30                 3722 	.db #0x30	; 48	'0'
   6B5A 30                 3723 	.db #0x30	; 48	'0'
   6B5B 30                 3724 	.db #0x30	; 48	'0'
   6B5C 30                 3725 	.db #0x30	; 48	'0'
   6B5D 30                 3726 	.db #0x30	; 48	'0'
   6B5E 25                 3727 	.db #0x25	; 37
   6B5F 30                 3728 	.db #0x30	; 48	'0'
   6B60 30                 3729 	.db #0x30	; 48	'0'
   6B61 1A                 3730 	.db #0x1A	; 26
   6B62 30                 3731 	.db #0x30	; 48	'0'
   6B63 30                 3732 	.db #0x30	; 48	'0'
   6B64 30                 3733 	.db #0x30	; 48	'0'
   6B65 30                 3734 	.db #0x30	; 48	'0'
   6B66 30                 3735 	.db #0x30	; 48	'0'
   6B67 30                 3736 	.db #0x30	; 48	'0'
   6B68 25                 3737 	.db #0x25	; 37
   6B69 30                 3738 	.db #0x30	; 48	'0'
   6B6A 30                 3739 	.db #0x30	; 48	'0'
   6B6B 1A                 3740 	.db #0x1A	; 26
   6B6C 30                 3741 	.db #0x30	; 48	'0'
   6B6D 30                 3742 	.db #0x30	; 48	'0'
   6B6E 30                 3743 	.db #0x30	; 48	'0'
   6B6F 30                 3744 	.db #0x30	; 48	'0'
   6B70 30                 3745 	.db #0x30	; 48	'0'
   6B71 30                 3746 	.db #0x30	; 48	'0'
   6B72 25                 3747 	.db #0x25	; 37
   6B73 30                 3748 	.db #0x30	; 48	'0'
   6B74 30                 3749 	.db #0x30	; 48	'0'
   6B75 1A                 3750 	.db #0x1A	; 26
   6B76 30                 3751 	.db #0x30	; 48	'0'
   6B77 30                 3752 	.db #0x30	; 48	'0'
   6B78 30                 3753 	.db #0x30	; 48	'0'
   6B79 30                 3754 	.db #0x30	; 48	'0'
   6B7A 30                 3755 	.db #0x30	; 48	'0'
   6B7B 30                 3756 	.db #0x30	; 48	'0'
   6B7C 25                 3757 	.db #0x25	; 37
   6B7D 30                 3758 	.db #0x30	; 48	'0'
   6B7E 30                 3759 	.db #0x30	; 48	'0'
   6B7F 1A                 3760 	.db #0x1A	; 26
   6B80 30                 3761 	.db #0x30	; 48	'0'
   6B81 30                 3762 	.db #0x30	; 48	'0'
   6B82 30                 3763 	.db #0x30	; 48	'0'
   6B83 30                 3764 	.db #0x30	; 48	'0'
   6B84 30                 3765 	.db #0x30	; 48	'0'
   6B85 30                 3766 	.db #0x30	; 48	'0'
   6B86 25                 3767 	.db #0x25	; 37
   6B87 30                 3768 	.db #0x30	; 48	'0'
   6B88 30                 3769 	.db #0x30	; 48	'0'
   6B89 1A                 3770 	.db #0x1A	; 26
   6B8A 30                 3771 	.db #0x30	; 48	'0'
   6B8B 30                 3772 	.db #0x30	; 48	'0'
   6B8C 30                 3773 	.db #0x30	; 48	'0'
   6B8D 30                 3774 	.db #0x30	; 48	'0'
   6B8E 30                 3775 	.db #0x30	; 48	'0'
   6B8F 30                 3776 	.db #0x30	; 48	'0'
   6B90 25                 3777 	.db #0x25	; 37
   6B91 30                 3778 	.db #0x30	; 48	'0'
   6B92 30                 3779 	.db #0x30	; 48	'0'
   6B93 1A                 3780 	.db #0x1A	; 26
   6B94 30                 3781 	.db #0x30	; 48	'0'
   6B95 30                 3782 	.db #0x30	; 48	'0'
   6B96 30                 3783 	.db #0x30	; 48	'0'
   6B97 30                 3784 	.db #0x30	; 48	'0'
   6B98 30                 3785 	.db #0x30	; 48	'0'
   6B99 30                 3786 	.db #0x30	; 48	'0'
   6B9A 25                 3787 	.db #0x25	; 37
   6B9B 30                 3788 	.db #0x30	; 48	'0'
   6B9C 30                 3789 	.db #0x30	; 48	'0'
   6B9D 1A                 3790 	.db #0x1A	; 26
   6B9E 30                 3791 	.db #0x30	; 48	'0'
   6B9F 30                 3792 	.db #0x30	; 48	'0'
   6BA0 30                 3793 	.db #0x30	; 48	'0'
   6BA1 30                 3794 	.db #0x30	; 48	'0'
   6BA2 30                 3795 	.db #0x30	; 48	'0'
   6BA3 30                 3796 	.db #0x30	; 48	'0'
   6BA4 25                 3797 	.db #0x25	; 37
   6BA5 30                 3798 	.db #0x30	; 48	'0'
   6BA6 30                 3799 	.db #0x30	; 48	'0'
   6BA7 1A                 3800 	.db #0x1A	; 26
   6BA8 30                 3801 	.db #0x30	; 48	'0'
   6BA9 30                 3802 	.db #0x30	; 48	'0'
   6BAA 30                 3803 	.db #0x30	; 48	'0'
   6BAB 30                 3804 	.db #0x30	; 48	'0'
   6BAC 30                 3805 	.db #0x30	; 48	'0'
   6BAD 30                 3806 	.db #0x30	; 48	'0'
   6BAE 25                 3807 	.db #0x25	; 37
   6BAF 30                 3808 	.db #0x30	; 48	'0'
   6BB0 30                 3809 	.db #0x30	; 48	'0'
   6BB1 1A                 3810 	.db #0x1A	; 26
   6BB2 30                 3811 	.db #0x30	; 48	'0'
   6BB3 30                 3812 	.db #0x30	; 48	'0'
   6BB4 30                 3813 	.db #0x30	; 48	'0'
   6BB5 30                 3814 	.db #0x30	; 48	'0'
   6BB6 30                 3815 	.db #0x30	; 48	'0'
   6BB7 30                 3816 	.db #0x30	; 48	'0'
   6BB8 25                 3817 	.db #0x25	; 37
   6BB9 30                 3818 	.db #0x30	; 48	'0'
   6BBA 30                 3819 	.db #0x30	; 48	'0'
   6BBB 1A                 3820 	.db #0x1A	; 26
   6BBC 64                 3821 	.db #0x64	; 100	'd'
   6BBD 30                 3822 	.db #0x30	; 48	'0'
   6BBE 64                 3823 	.db #0x64	; 100	'd'
   6BBF 98                 3824 	.db #0x98	; 152
   6BC0 30                 3825 	.db #0x30	; 48	'0'
   6BC1 98                 3826 	.db #0x98	; 152
   6BC2 25                 3827 	.db #0x25	; 37
   6BC3 30                 3828 	.db #0x30	; 48	'0'
   6BC4 30                 3829 	.db #0x30	; 48	'0'
   6BC5 1A                 3830 	.db #0x1A	; 26
   6BC6 CC                 3831 	.db #0xCC	; 204
   6BC7 30                 3832 	.db #0x30	; 48	'0'
   6BC8 98                 3833 	.db #0x98	; 152
   6BC9 64                 3834 	.db #0x64	; 100	'd'
   6BCA 64                 3835 	.db #0x64	; 100	'd'
   6BCB 64                 3836 	.db #0x64	; 100	'd'
   6BCC 25                 3837 	.db #0x25	; 37
   6BCD 30                 3838 	.db #0x30	; 48	'0'
   6BCE 30                 3839 	.db #0x30	; 48	'0'
   6BCF 1A                 3840 	.db #0x1A	; 26
   6BD0 64                 3841 	.db #0x64	; 100	'd'
   6BD1 30                 3842 	.db #0x30	; 48	'0'
   6BD2 98                 3843 	.db #0x98	; 152
   6BD3 64                 3844 	.db #0x64	; 100	'd'
   6BD4 64                 3845 	.db #0x64	; 100	'd'
   6BD5 64                 3846 	.db #0x64	; 100	'd'
   6BD6 25                 3847 	.db #0x25	; 37
   6BD7 30                 3848 	.db #0x30	; 48	'0'
   6BD8 30                 3849 	.db #0x30	; 48	'0'
   6BD9 1A                 3850 	.db #0x1A	; 26
   6BDA 64                 3851 	.db #0x64	; 100	'd'
   6BDB 30                 3852 	.db #0x30	; 48	'0'
   6BDC 98                 3853 	.db #0x98	; 152
   6BDD 64                 3854 	.db #0x64	; 100	'd'
   6BDE 30                 3855 	.db #0x30	; 48	'0'
   6BDF 64                 3856 	.db #0x64	; 100	'd'
   6BE0 25                 3857 	.db #0x25	; 37
   6BE1 30                 3858 	.db #0x30	; 48	'0'
   6BE2 30                 3859 	.db #0x30	; 48	'0'
   6BE3 1A                 3860 	.db #0x1A	; 26
   6BE4 64                 3861 	.db #0x64	; 100	'd'
   6BE5 30                 3862 	.db #0x30	; 48	'0'
   6BE6 98                 3863 	.db #0x98	; 152
   6BE7 64                 3864 	.db #0x64	; 100	'd'
   6BE8 30                 3865 	.db #0x30	; 48	'0'
   6BE9 64                 3866 	.db #0x64	; 100	'd'
   6BEA 25                 3867 	.db #0x25	; 37
   6BEB 30                 3868 	.db #0x30	; 48	'0'
   6BEC 30                 3869 	.db #0x30	; 48	'0'
   6BED 1A                 3870 	.db #0x1A	; 26
   6BEE 64                 3871 	.db #0x64	; 100	'd'
   6BEF 30                 3872 	.db #0x30	; 48	'0'
   6BF0 98                 3873 	.db #0x98	; 152
   6BF1 64                 3874 	.db #0x64	; 100	'd'
   6BF2 30                 3875 	.db #0x30	; 48	'0'
   6BF3 98                 3876 	.db #0x98	; 152
   6BF4 25                 3877 	.db #0x25	; 37
   6BF5 30                 3878 	.db #0x30	; 48	'0'
   6BF6 30                 3879 	.db #0x30	; 48	'0'
   6BF7 1A                 3880 	.db #0x1A	; 26
   6BF8 64                 3881 	.db #0x64	; 100	'd'
   6BF9 30                 3882 	.db #0x30	; 48	'0'
   6BFA 98                 3883 	.db #0x98	; 152
   6BFB 64                 3884 	.db #0x64	; 100	'd'
   6BFC 30                 3885 	.db #0x30	; 48	'0'
   6BFD 98                 3886 	.db #0x98	; 152
   6BFE 25                 3887 	.db #0x25	; 37
   6BFF 30                 3888 	.db #0x30	; 48	'0'
   6C00 30                 3889 	.db #0x30	; 48	'0'
   6C01 1A                 3890 	.db #0x1A	; 26
   6C02 64                 3891 	.db #0x64	; 100	'd'
   6C03 30                 3892 	.db #0x30	; 48	'0'
   6C04 64                 3893 	.db #0x64	; 100	'd'
   6C05 CC                 3894 	.db #0xCC	; 204
   6C06 30                 3895 	.db #0x30	; 48	'0'
   6C07 98                 3896 	.db #0x98	; 152
   6C08 25                 3897 	.db #0x25	; 37
   6C09 30                 3898 	.db #0x30	; 48	'0'
   6C0A 30                 3899 	.db #0x30	; 48	'0'
   6C0B 1A                 3900 	.db #0x1A	; 26
   6C0C 64                 3901 	.db #0x64	; 100	'd'
   6C0D 30                 3902 	.db #0x30	; 48	'0'
   6C0E 30                 3903 	.db #0x30	; 48	'0'
   6C0F 64                 3904 	.db #0x64	; 100	'd'
   6C10 64                 3905 	.db #0x64	; 100	'd'
   6C11 30                 3906 	.db #0x30	; 48	'0'
   6C12 25                 3907 	.db #0x25	; 37
   6C13 30                 3908 	.db #0x30	; 48	'0'
   6C14 30                 3909 	.db #0x30	; 48	'0'
   6C15 1A                 3910 	.db #0x1A	; 26
   6C16 64                 3911 	.db #0x64	; 100	'd'
   6C17 30                 3912 	.db #0x30	; 48	'0'
   6C18 30                 3913 	.db #0x30	; 48	'0'
   6C19 64                 3914 	.db #0x64	; 100	'd'
   6C1A 64                 3915 	.db #0x64	; 100	'd'
   6C1B 30                 3916 	.db #0x30	; 48	'0'
   6C1C 25                 3917 	.db #0x25	; 37
   6C1D 30                 3918 	.db #0x30	; 48	'0'
   6C1E 30                 3919 	.db #0x30	; 48	'0'
   6C1F 1A                 3920 	.db #0x1A	; 26
   6C20 64                 3921 	.db #0x64	; 100	'd'
   6C21 30                 3922 	.db #0x30	; 48	'0'
   6C22 98                 3923 	.db #0x98	; 152
   6C23 CC                 3924 	.db #0xCC	; 204
   6C24 64                 3925 	.db #0x64	; 100	'd'
   6C25 30                 3926 	.db #0x30	; 48	'0'
   6C26 25                 3927 	.db #0x25	; 37
   6C27 30                 3928 	.db #0x30	; 48	'0'
   6C28 30                 3929 	.db #0x30	; 48	'0'
   6C29 1A                 3930 	.db #0x1A	; 26
   6C2A CC                 3931 	.db #0xCC	; 204
   6C2B 98                 3932 	.db #0x98	; 152
   6C2C 64                 3933 	.db #0x64	; 100	'd'
   6C2D 98                 3934 	.db #0x98	; 152
   6C2E 64                 3935 	.db #0x64	; 100	'd'
   6C2F CC                 3936 	.db #0xCC	; 204
   6C30 25                 3937 	.db #0x25	; 37
   6C31 30                 3938 	.db #0x30	; 48	'0'
   6C32 30                 3939 	.db #0x30	; 48	'0'
   6C33 1A                 3940 	.db #0x1A	; 26
   6C34 30                 3941 	.db #0x30	; 48	'0'
   6C35 30                 3942 	.db #0x30	; 48	'0'
   6C36 30                 3943 	.db #0x30	; 48	'0'
   6C37 30                 3944 	.db #0x30	; 48	'0'
   6C38 30                 3945 	.db #0x30	; 48	'0'
   6C39 30                 3946 	.db #0x30	; 48	'0'
   6C3A 25                 3947 	.db #0x25	; 37
   6C3B 30                 3948 	.db #0x30	; 48	'0'
   6C3C 30                 3949 	.db #0x30	; 48	'0'
   6C3D 1A                 3950 	.db #0x1A	; 26
   6C3E 30                 3951 	.db #0x30	; 48	'0'
   6C3F 30                 3952 	.db #0x30	; 48	'0'
   6C40 30                 3953 	.db #0x30	; 48	'0'
   6C41 30                 3954 	.db #0x30	; 48	'0'
   6C42 30                 3955 	.db #0x30	; 48	'0'
   6C43 30                 3956 	.db #0x30	; 48	'0'
   6C44 25                 3957 	.db #0x25	; 37
   6C45 30                 3958 	.db #0x30	; 48	'0'
   6C46 30                 3959 	.db #0x30	; 48	'0'
   6C47 1A                 3960 	.db #0x1A	; 26
   6C48 30                 3961 	.db #0x30	; 48	'0'
   6C49 30                 3962 	.db #0x30	; 48	'0'
   6C4A 30                 3963 	.db #0x30	; 48	'0'
   6C4B 30                 3964 	.db #0x30	; 48	'0'
   6C4C 30                 3965 	.db #0x30	; 48	'0'
   6C4D 30                 3966 	.db #0x30	; 48	'0'
   6C4E 25                 3967 	.db #0x25	; 37
   6C4F 30                 3968 	.db #0x30	; 48	'0'
   6C50 30                 3969 	.db #0x30	; 48	'0'
   6C51 1A                 3970 	.db #0x1A	; 26
   6C52 30                 3971 	.db #0x30	; 48	'0'
   6C53 30                 3972 	.db #0x30	; 48	'0'
   6C54 30                 3973 	.db #0x30	; 48	'0'
   6C55 30                 3974 	.db #0x30	; 48	'0'
   6C56 30                 3975 	.db #0x30	; 48	'0'
   6C57 30                 3976 	.db #0x30	; 48	'0'
   6C58 25                 3977 	.db #0x25	; 37
   6C59 30                 3978 	.db #0x30	; 48	'0'
   6C5A 30                 3979 	.db #0x30	; 48	'0'
   6C5B 1A                 3980 	.db #0x1A	; 26
   6C5C 30                 3981 	.db #0x30	; 48	'0'
   6C5D 30                 3982 	.db #0x30	; 48	'0'
   6C5E 30                 3983 	.db #0x30	; 48	'0'
   6C5F 30                 3984 	.db #0x30	; 48	'0'
   6C60 30                 3985 	.db #0x30	; 48	'0'
   6C61 30                 3986 	.db #0x30	; 48	'0'
   6C62 25                 3987 	.db #0x25	; 37
   6C63 30                 3988 	.db #0x30	; 48	'0'
   6C64 30                 3989 	.db #0x30	; 48	'0'
   6C65 1A                 3990 	.db #0x1A	; 26
   6C66 30                 3991 	.db #0x30	; 48	'0'
   6C67 30                 3992 	.db #0x30	; 48	'0'
   6C68 30                 3993 	.db #0x30	; 48	'0'
   6C69 30                 3994 	.db #0x30	; 48	'0'
   6C6A 30                 3995 	.db #0x30	; 48	'0'
   6C6B 30                 3996 	.db #0x30	; 48	'0'
   6C6C 25                 3997 	.db #0x25	; 37
   6C6D 30                 3998 	.db #0x30	; 48	'0'
   6C6E 30                 3999 	.db #0x30	; 48	'0'
   6C6F 1A                 4000 	.db #0x1A	; 26
   6C70 30                 4001 	.db #0x30	; 48	'0'
   6C71 30                 4002 	.db #0x30	; 48	'0'
   6C72 30                 4003 	.db #0x30	; 48	'0'
   6C73 30                 4004 	.db #0x30	; 48	'0'
   6C74 30                 4005 	.db #0x30	; 48	'0'
   6C75 30                 4006 	.db #0x30	; 48	'0'
   6C76 25                 4007 	.db #0x25	; 37
   6C77 30                 4008 	.db #0x30	; 48	'0'
   6C78 30                 4009 	.db #0x30	; 48	'0'
   6C79 1A                 4010 	.db #0x1A	; 26
   6C7A 30                 4011 	.db #0x30	; 48	'0'
   6C7B 30                 4012 	.db #0x30	; 48	'0'
   6C7C 30                 4013 	.db #0x30	; 48	'0'
   6C7D 30                 4014 	.db #0x30	; 48	'0'
   6C7E 30                 4015 	.db #0x30	; 48	'0'
   6C7F 30                 4016 	.db #0x30	; 48	'0'
   6C80 25                 4017 	.db #0x25	; 37
   6C81 30                 4018 	.db #0x30	; 48	'0'
   6C82 30                 4019 	.db #0x30	; 48	'0'
   6C83 0F                 4020 	.db #0x0F	; 15
   6C84 30                 4021 	.db #0x30	; 48	'0'
   6C85 30                 4022 	.db #0x30	; 48	'0'
   6C86 30                 4023 	.db #0x30	; 48	'0'
   6C87 30                 4024 	.db #0x30	; 48	'0'
   6C88 30                 4025 	.db #0x30	; 48	'0'
   6C89 30                 4026 	.db #0x30	; 48	'0'
   6C8A 0F                 4027 	.db #0x0F	; 15
   6C8B 30                 4028 	.db #0x30	; 48	'0'
   6C8C 30                 4029 	.db #0x30	; 48	'0'
   6C8D 25                 4030 	.db #0x25	; 37
   6C8E 30                 4031 	.db #0x30	; 48	'0'
   6C8F 30                 4032 	.db #0x30	; 48	'0'
   6C90 30                 4033 	.db #0x30	; 48	'0'
   6C91 30                 4034 	.db #0x30	; 48	'0'
   6C92 30                 4035 	.db #0x30	; 48	'0'
   6C93 30                 4036 	.db #0x30	; 48	'0'
   6C94 1A                 4037 	.db #0x1A	; 26
   6C95 30                 4038 	.db #0x30	; 48	'0'
   6C96 30                 4039 	.db #0x30	; 48	'0'
   6C97 25                 4040 	.db #0x25	; 37
   6C98 0F                 4041 	.db #0x0F	; 15
   6C99 0F                 4042 	.db #0x0F	; 15
   6C9A 0F                 4043 	.db #0x0F	; 15
   6C9B 0F                 4044 	.db #0x0F	; 15
   6C9C 0F                 4045 	.db #0x0F	; 15
   6C9D 0F                 4046 	.db #0x0F	; 15
   6C9E 1A                 4047 	.db #0x1A	; 26
   6C9F 30                 4048 	.db #0x30	; 48	'0'
   6CA0 F0                 4049 	.db #0xF0	; 240
   6CA1 30                 4050 	.db #0x30	; 48	'0'
   6CA2 30                 4051 	.db #0x30	; 48	'0'
   6CA3 30                 4052 	.db #0x30	; 48	'0'
   6CA4 30                 4053 	.db #0x30	; 48	'0'
   6CA5 30                 4054 	.db #0x30	; 48	'0'
   6CA6 30                 4055 	.db #0x30	; 48	'0'
   6CA7 30                 4056 	.db #0x30	; 48	'0'
   6CA8 30                 4057 	.db #0x30	; 48	'0'
   6CA9 F0                 4058 	.db #0xF0	; 240
   6CAA F0                 4059 	.db #0xF0	; 240
   6CAB 30                 4060 	.db #0x30	; 48	'0'
   6CAC 30                 4061 	.db #0x30	; 48	'0'
   6CAD 30                 4062 	.db #0x30	; 48	'0'
   6CAE 30                 4063 	.db #0x30	; 48	'0'
   6CAF 30                 4064 	.db #0x30	; 48	'0'
   6CB0 30                 4065 	.db #0x30	; 48	'0'
   6CB1 30                 4066 	.db #0x30	; 48	'0'
   6CB2 30                 4067 	.db #0x30	; 48	'0'
   6CB3 F0                 4068 	.db #0xF0	; 240
   6CB4                    4069 _tile_tiles_10:
   6CB4 F0                 4070 	.db #0xF0	; 240
   6CB5 30                 4071 	.db #0x30	; 48	'0'
   6CB6 30                 4072 	.db #0x30	; 48	'0'
   6CB7 30                 4073 	.db #0x30	; 48	'0'
   6CB8 30                 4074 	.db #0x30	; 48	'0'
   6CB9 30                 4075 	.db #0x30	; 48	'0'
   6CBA 30                 4076 	.db #0x30	; 48	'0'
   6CBB 30                 4077 	.db #0x30	; 48	'0'
   6CBC 30                 4078 	.db #0x30	; 48	'0'
   6CBD F0                 4079 	.db #0xF0	; 240
   6CBE F0                 4080 	.db #0xF0	; 240
   6CBF 30                 4081 	.db #0x30	; 48	'0'
   6CC0 30                 4082 	.db #0x30	; 48	'0'
   6CC1 30                 4083 	.db #0x30	; 48	'0'
   6CC2 30                 4084 	.db #0x30	; 48	'0'
   6CC3 30                 4085 	.db #0x30	; 48	'0'
   6CC4 30                 4086 	.db #0x30	; 48	'0'
   6CC5 30                 4087 	.db #0x30	; 48	'0'
   6CC6 30                 4088 	.db #0x30	; 48	'0'
   6CC7 F0                 4089 	.db #0xF0	; 240
   6CC8 30                 4090 	.db #0x30	; 48	'0'
   6CC9 25                 4091 	.db #0x25	; 37
   6CCA 0F                 4092 	.db #0x0F	; 15
   6CCB 0F                 4093 	.db #0x0F	; 15
   6CCC 0F                 4094 	.db #0x0F	; 15
   6CCD 0F                 4095 	.db #0x0F	; 15
   6CCE 0F                 4096 	.db #0x0F	; 15
   6CCF 0F                 4097 	.db #0x0F	; 15
   6CD0 1A                 4098 	.db #0x1A	; 26
   6CD1 30                 4099 	.db #0x30	; 48	'0'
   6CD2 30                 4100 	.db #0x30	; 48	'0'
   6CD3 25                 4101 	.db #0x25	; 37
   6CD4 30                 4102 	.db #0x30	; 48	'0'
   6CD5 30                 4103 	.db #0x30	; 48	'0'
   6CD6 30                 4104 	.db #0x30	; 48	'0'
   6CD7 30                 4105 	.db #0x30	; 48	'0'
   6CD8 30                 4106 	.db #0x30	; 48	'0'
   6CD9 30                 4107 	.db #0x30	; 48	'0'
   6CDA 1A                 4108 	.db #0x1A	; 26
   6CDB 30                 4109 	.db #0x30	; 48	'0'
   6CDC 30                 4110 	.db #0x30	; 48	'0'
   6CDD 0F                 4111 	.db #0x0F	; 15
   6CDE 30                 4112 	.db #0x30	; 48	'0'
   6CDF 30                 4113 	.db #0x30	; 48	'0'
   6CE0 30                 4114 	.db #0x30	; 48	'0'
   6CE1 30                 4115 	.db #0x30	; 48	'0'
   6CE2 30                 4116 	.db #0x30	; 48	'0'
   6CE3 30                 4117 	.db #0x30	; 48	'0'
   6CE4 0F                 4118 	.db #0x0F	; 15
   6CE5 30                 4119 	.db #0x30	; 48	'0'
   6CE6 30                 4120 	.db #0x30	; 48	'0'
   6CE7 1A                 4121 	.db #0x1A	; 26
   6CE8 30                 4122 	.db #0x30	; 48	'0'
   6CE9 30                 4123 	.db #0x30	; 48	'0'
   6CEA 30                 4124 	.db #0x30	; 48	'0'
   6CEB 30                 4125 	.db #0x30	; 48	'0'
   6CEC 30                 4126 	.db #0x30	; 48	'0'
   6CED 30                 4127 	.db #0x30	; 48	'0'
   6CEE 25                 4128 	.db #0x25	; 37
   6CEF 30                 4129 	.db #0x30	; 48	'0'
   6CF0 30                 4130 	.db #0x30	; 48	'0'
   6CF1 1A                 4131 	.db #0x1A	; 26
   6CF2 30                 4132 	.db #0x30	; 48	'0'
   6CF3 30                 4133 	.db #0x30	; 48	'0'
   6CF4 30                 4134 	.db #0x30	; 48	'0'
   6CF5 30                 4135 	.db #0x30	; 48	'0'
   6CF6 30                 4136 	.db #0x30	; 48	'0'
   6CF7 30                 4137 	.db #0x30	; 48	'0'
   6CF8 25                 4138 	.db #0x25	; 37
   6CF9 30                 4139 	.db #0x30	; 48	'0'
   6CFA 30                 4140 	.db #0x30	; 48	'0'
   6CFB 1A                 4141 	.db #0x1A	; 26
   6CFC 30                 4142 	.db #0x30	; 48	'0'
   6CFD 30                 4143 	.db #0x30	; 48	'0'
   6CFE 30                 4144 	.db #0x30	; 48	'0'
   6CFF 30                 4145 	.db #0x30	; 48	'0'
   6D00 30                 4146 	.db #0x30	; 48	'0'
   6D01 30                 4147 	.db #0x30	; 48	'0'
   6D02 25                 4148 	.db #0x25	; 37
   6D03 30                 4149 	.db #0x30	; 48	'0'
   6D04 30                 4150 	.db #0x30	; 48	'0'
   6D05 1A                 4151 	.db #0x1A	; 26
   6D06 30                 4152 	.db #0x30	; 48	'0'
   6D07 30                 4153 	.db #0x30	; 48	'0'
   6D08 30                 4154 	.db #0x30	; 48	'0'
   6D09 30                 4155 	.db #0x30	; 48	'0'
   6D0A 30                 4156 	.db #0x30	; 48	'0'
   6D0B 30                 4157 	.db #0x30	; 48	'0'
   6D0C 25                 4158 	.db #0x25	; 37
   6D0D 30                 4159 	.db #0x30	; 48	'0'
   6D0E 30                 4160 	.db #0x30	; 48	'0'
   6D0F 1A                 4161 	.db #0x1A	; 26
   6D10 30                 4162 	.db #0x30	; 48	'0'
   6D11 30                 4163 	.db #0x30	; 48	'0'
   6D12 30                 4164 	.db #0x30	; 48	'0'
   6D13 30                 4165 	.db #0x30	; 48	'0'
   6D14 30                 4166 	.db #0x30	; 48	'0'
   6D15 30                 4167 	.db #0x30	; 48	'0'
   6D16 25                 4168 	.db #0x25	; 37
   6D17 30                 4169 	.db #0x30	; 48	'0'
   6D18 30                 4170 	.db #0x30	; 48	'0'
   6D19 1A                 4171 	.db #0x1A	; 26
   6D1A 30                 4172 	.db #0x30	; 48	'0'
   6D1B 30                 4173 	.db #0x30	; 48	'0'
   6D1C 30                 4174 	.db #0x30	; 48	'0'
   6D1D 30                 4175 	.db #0x30	; 48	'0'
   6D1E 30                 4176 	.db #0x30	; 48	'0'
   6D1F 30                 4177 	.db #0x30	; 48	'0'
   6D20 25                 4178 	.db #0x25	; 37
   6D21 30                 4179 	.db #0x30	; 48	'0'
   6D22 30                 4180 	.db #0x30	; 48	'0'
   6D23 1A                 4181 	.db #0x1A	; 26
   6D24 30                 4182 	.db #0x30	; 48	'0'
   6D25 30                 4183 	.db #0x30	; 48	'0'
   6D26 30                 4184 	.db #0x30	; 48	'0'
   6D27 30                 4185 	.db #0x30	; 48	'0'
   6D28 30                 4186 	.db #0x30	; 48	'0'
   6D29 30                 4187 	.db #0x30	; 48	'0'
   6D2A 25                 4188 	.db #0x25	; 37
   6D2B 30                 4189 	.db #0x30	; 48	'0'
   6D2C 30                 4190 	.db #0x30	; 48	'0'
   6D2D 1A                 4191 	.db #0x1A	; 26
   6D2E 30                 4192 	.db #0x30	; 48	'0'
   6D2F 30                 4193 	.db #0x30	; 48	'0'
   6D30 30                 4194 	.db #0x30	; 48	'0'
   6D31 30                 4195 	.db #0x30	; 48	'0'
   6D32 30                 4196 	.db #0x30	; 48	'0'
   6D33 30                 4197 	.db #0x30	; 48	'0'
   6D34 25                 4198 	.db #0x25	; 37
   6D35 30                 4199 	.db #0x30	; 48	'0'
   6D36 30                 4200 	.db #0x30	; 48	'0'
   6D37 1A                 4201 	.db #0x1A	; 26
   6D38 30                 4202 	.db #0x30	; 48	'0'
   6D39 30                 4203 	.db #0x30	; 48	'0'
   6D3A 30                 4204 	.db #0x30	; 48	'0'
   6D3B 30                 4205 	.db #0x30	; 48	'0'
   6D3C 30                 4206 	.db #0x30	; 48	'0'
   6D3D 30                 4207 	.db #0x30	; 48	'0'
   6D3E 25                 4208 	.db #0x25	; 37
   6D3F 30                 4209 	.db #0x30	; 48	'0'
   6D40 30                 4210 	.db #0x30	; 48	'0'
   6D41 1A                 4211 	.db #0x1A	; 26
   6D42 30                 4212 	.db #0x30	; 48	'0'
   6D43 30                 4213 	.db #0x30	; 48	'0'
   6D44 30                 4214 	.db #0x30	; 48	'0'
   6D45 30                 4215 	.db #0x30	; 48	'0'
   6D46 30                 4216 	.db #0x30	; 48	'0'
   6D47 30                 4217 	.db #0x30	; 48	'0'
   6D48 25                 4218 	.db #0x25	; 37
   6D49 30                 4219 	.db #0x30	; 48	'0'
   6D4A 30                 4220 	.db #0x30	; 48	'0'
   6D4B 1A                 4221 	.db #0x1A	; 26
   6D4C CC                 4222 	.db #0xCC	; 204
   6D4D 30                 4223 	.db #0x30	; 48	'0'
   6D4E 64                 4224 	.db #0x64	; 100	'd'
   6D4F 98                 4225 	.db #0x98	; 152
   6D50 30                 4226 	.db #0x30	; 48	'0'
   6D51 64                 4227 	.db #0x64	; 100	'd'
   6D52 25                 4228 	.db #0x25	; 37
   6D53 30                 4229 	.db #0x30	; 48	'0'
   6D54 30                 4230 	.db #0x30	; 48	'0'
   6D55 4E                 4231 	.db #0x4E	; 78	'N'
   6D56 30                 4232 	.db #0x30	; 48	'0'
   6D57 98                 4233 	.db #0x98	; 152
   6D58 98                 4234 	.db #0x98	; 152
   6D59 64                 4235 	.db #0x64	; 100	'd'
   6D5A 30                 4236 	.db #0x30	; 48	'0'
   6D5B CC                 4237 	.db #0xCC	; 204
   6D5C 25                 4238 	.db #0x25	; 37
   6D5D 30                 4239 	.db #0x30	; 48	'0'
   6D5E 30                 4240 	.db #0x30	; 48	'0'
   6D5F 4E                 4241 	.db #0x4E	; 78	'N'
   6D60 30                 4242 	.db #0x30	; 48	'0'
   6D61 98                 4243 	.db #0x98	; 152
   6D62 98                 4244 	.db #0x98	; 152
   6D63 64                 4245 	.db #0x64	; 100	'd'
   6D64 30                 4246 	.db #0x30	; 48	'0'
   6D65 CC                 4247 	.db #0xCC	; 204
   6D66 25                 4248 	.db #0x25	; 37
   6D67 30                 4249 	.db #0x30	; 48	'0'
   6D68 30                 4250 	.db #0x30	; 48	'0'
   6D69 1A                 4251 	.db #0x1A	; 26
   6D6A 30                 4252 	.db #0x30	; 48	'0'
   6D6B 98                 4253 	.db #0x98	; 152
   6D6C 98                 4254 	.db #0x98	; 152
   6D6D 64                 4255 	.db #0x64	; 100	'd'
   6D6E 64                 4256 	.db #0x64	; 100	'd'
   6D6F 64                 4257 	.db #0x64	; 100	'd'
   6D70 25                 4258 	.db #0x25	; 37
   6D71 30                 4259 	.db #0x30	; 48	'0'
   6D72 30                 4260 	.db #0x30	; 48	'0'
   6D73 1A                 4261 	.db #0x1A	; 26
   6D74 30                 4262 	.db #0x30	; 48	'0'
   6D75 98                 4263 	.db #0x98	; 152
   6D76 98                 4264 	.db #0x98	; 152
   6D77 64                 4265 	.db #0x64	; 100	'd'
   6D78 64                 4266 	.db #0x64	; 100	'd'
   6D79 64                 4267 	.db #0x64	; 100	'd'
   6D7A 25                 4268 	.db #0x25	; 37
   6D7B 30                 4269 	.db #0x30	; 48	'0'
   6D7C 30                 4270 	.db #0x30	; 48	'0'
   6D7D 1A                 4271 	.db #0x1A	; 26
   6D7E 64                 4272 	.db #0x64	; 100	'd'
   6D7F 30                 4273 	.db #0x30	; 48	'0'
   6D80 98                 4274 	.db #0x98	; 152
   6D81 64                 4275 	.db #0x64	; 100	'd'
   6D82 64                 4276 	.db #0x64	; 100	'd'
   6D83 64                 4277 	.db #0x64	; 100	'd'
   6D84 25                 4278 	.db #0x25	; 37
   6D85 30                 4279 	.db #0x30	; 48	'0'
   6D86 30                 4280 	.db #0x30	; 48	'0'
   6D87 1A                 4281 	.db #0x1A	; 26
   6D88 30                 4282 	.db #0x30	; 48	'0'
   6D89 98                 4283 	.db #0x98	; 152
   6D8A 64                 4284 	.db #0x64	; 100	'd'
   6D8B 98                 4285 	.db #0x98	; 152
   6D8C 64                 4286 	.db #0x64	; 100	'd'
   6D8D 64                 4287 	.db #0x64	; 100	'd'
   6D8E 25                 4288 	.db #0x25	; 37
   6D8F 30                 4289 	.db #0x30	; 48	'0'
   6D90 30                 4290 	.db #0x30	; 48	'0'
   6D91 1A                 4291 	.db #0x1A	; 26
   6D92 30                 4292 	.db #0x30	; 48	'0'
   6D93 98                 4293 	.db #0x98	; 152
   6D94 98                 4294 	.db #0x98	; 152
   6D95 64                 4295 	.db #0x64	; 100	'd'
   6D96 64                 4296 	.db #0x64	; 100	'd'
   6D97 64                 4297 	.db #0x64	; 100	'd'
   6D98 25                 4298 	.db #0x25	; 37
   6D99 30                 4299 	.db #0x30	; 48	'0'
   6D9A 30                 4300 	.db #0x30	; 48	'0'
   6D9B 1A                 4301 	.db #0x1A	; 26
   6D9C 30                 4302 	.db #0x30	; 48	'0'
   6D9D 98                 4303 	.db #0x98	; 152
   6D9E 98                 4304 	.db #0x98	; 152
   6D9F 64                 4305 	.db #0x64	; 100	'd'
   6DA0 64                 4306 	.db #0x64	; 100	'd'
   6DA1 CC                 4307 	.db #0xCC	; 204
   6DA2 8D                 4308 	.db #0x8D	; 141
   6DA3 30                 4309 	.db #0x30	; 48	'0'
   6DA4 30                 4310 	.db #0x30	; 48	'0'
   6DA5 4E                 4311 	.db #0x4E	; 78	'N'
   6DA6 30                 4312 	.db #0x30	; 48	'0'
   6DA7 98                 4313 	.db #0x98	; 152
   6DA8 98                 4314 	.db #0x98	; 152
   6DA9 64                 4315 	.db #0x64	; 100	'd'
   6DAA 30                 4316 	.db #0x30	; 48	'0'
   6DAB 64                 4317 	.db #0x64	; 100	'd'
   6DAC 25                 4318 	.db #0x25	; 37
   6DAD 30                 4319 	.db #0x30	; 48	'0'
   6DAE 30                 4320 	.db #0x30	; 48	'0'
   6DAF 4E                 4321 	.db #0x4E	; 78	'N'
   6DB0 30                 4322 	.db #0x30	; 48	'0'
   6DB1 98                 4323 	.db #0x98	; 152
   6DB2 98                 4324 	.db #0x98	; 152
   6DB3 64                 4325 	.db #0x64	; 100	'd'
   6DB4 30                 4326 	.db #0x30	; 48	'0'
   6DB5 64                 4327 	.db #0x64	; 100	'd'
   6DB6 25                 4328 	.db #0x25	; 37
   6DB7 30                 4329 	.db #0x30	; 48	'0'
   6DB8 30                 4330 	.db #0x30	; 48	'0'
   6DB9 1A                 4331 	.db #0x1A	; 26
   6DBA CC                 4332 	.db #0xCC	; 204
   6DBB 30                 4333 	.db #0x30	; 48	'0'
   6DBC 64                 4334 	.db #0x64	; 100	'd'
   6DBD 98                 4335 	.db #0x98	; 152
   6DBE 30                 4336 	.db #0x30	; 48	'0'
   6DBF 64                 4337 	.db #0x64	; 100	'd'
   6DC0 25                 4338 	.db #0x25	; 37
   6DC1 30                 4339 	.db #0x30	; 48	'0'
   6DC2 30                 4340 	.db #0x30	; 48	'0'
   6DC3 1A                 4341 	.db #0x1A	; 26
   6DC4 30                 4342 	.db #0x30	; 48	'0'
   6DC5 30                 4343 	.db #0x30	; 48	'0'
   6DC6 30                 4344 	.db #0x30	; 48	'0'
   6DC7 30                 4345 	.db #0x30	; 48	'0'
   6DC8 30                 4346 	.db #0x30	; 48	'0'
   6DC9 30                 4347 	.db #0x30	; 48	'0'
   6DCA 25                 4348 	.db #0x25	; 37
   6DCB 30                 4349 	.db #0x30	; 48	'0'
   6DCC 30                 4350 	.db #0x30	; 48	'0'
   6DCD 1A                 4351 	.db #0x1A	; 26
   6DCE 30                 4352 	.db #0x30	; 48	'0'
   6DCF 30                 4353 	.db #0x30	; 48	'0'
   6DD0 30                 4354 	.db #0x30	; 48	'0'
   6DD1 30                 4355 	.db #0x30	; 48	'0'
   6DD2 30                 4356 	.db #0x30	; 48	'0'
   6DD3 30                 4357 	.db #0x30	; 48	'0'
   6DD4 25                 4358 	.db #0x25	; 37
   6DD5 30                 4359 	.db #0x30	; 48	'0'
   6DD6 30                 4360 	.db #0x30	; 48	'0'
   6DD7 1A                 4361 	.db #0x1A	; 26
   6DD8 30                 4362 	.db #0x30	; 48	'0'
   6DD9 30                 4363 	.db #0x30	; 48	'0'
   6DDA 30                 4364 	.db #0x30	; 48	'0'
   6DDB 30                 4365 	.db #0x30	; 48	'0'
   6DDC 30                 4366 	.db #0x30	; 48	'0'
   6DDD 30                 4367 	.db #0x30	; 48	'0'
   6DDE 25                 4368 	.db #0x25	; 37
   6DDF 30                 4369 	.db #0x30	; 48	'0'
   6DE0 30                 4370 	.db #0x30	; 48	'0'
   6DE1 1A                 4371 	.db #0x1A	; 26
   6DE2 30                 4372 	.db #0x30	; 48	'0'
   6DE3 30                 4373 	.db #0x30	; 48	'0'
   6DE4 30                 4374 	.db #0x30	; 48	'0'
   6DE5 30                 4375 	.db #0x30	; 48	'0'
   6DE6 30                 4376 	.db #0x30	; 48	'0'
   6DE7 30                 4377 	.db #0x30	; 48	'0'
   6DE8 25                 4378 	.db #0x25	; 37
   6DE9 30                 4379 	.db #0x30	; 48	'0'
   6DEA 30                 4380 	.db #0x30	; 48	'0'
   6DEB 1A                 4381 	.db #0x1A	; 26
   6DEC 30                 4382 	.db #0x30	; 48	'0'
   6DED 30                 4383 	.db #0x30	; 48	'0'
   6DEE 30                 4384 	.db #0x30	; 48	'0'
   6DEF 30                 4385 	.db #0x30	; 48	'0'
   6DF0 30                 4386 	.db #0x30	; 48	'0'
   6DF1 30                 4387 	.db #0x30	; 48	'0'
   6DF2 25                 4388 	.db #0x25	; 37
   6DF3 30                 4389 	.db #0x30	; 48	'0'
   6DF4 30                 4390 	.db #0x30	; 48	'0'
   6DF5 1A                 4391 	.db #0x1A	; 26
   6DF6 30                 4392 	.db #0x30	; 48	'0'
   6DF7 30                 4393 	.db #0x30	; 48	'0'
   6DF8 30                 4394 	.db #0x30	; 48	'0'
   6DF9 30                 4395 	.db #0x30	; 48	'0'
   6DFA 30                 4396 	.db #0x30	; 48	'0'
   6DFB 30                 4397 	.db #0x30	; 48	'0'
   6DFC 25                 4398 	.db #0x25	; 37
   6DFD 30                 4399 	.db #0x30	; 48	'0'
   6DFE 30                 4400 	.db #0x30	; 48	'0'
   6DFF 1A                 4401 	.db #0x1A	; 26
   6E00 30                 4402 	.db #0x30	; 48	'0'
   6E01 30                 4403 	.db #0x30	; 48	'0'
   6E02 30                 4404 	.db #0x30	; 48	'0'
   6E03 30                 4405 	.db #0x30	; 48	'0'
   6E04 30                 4406 	.db #0x30	; 48	'0'
   6E05 30                 4407 	.db #0x30	; 48	'0'
   6E06 25                 4408 	.db #0x25	; 37
   6E07 30                 4409 	.db #0x30	; 48	'0'
   6E08 30                 4410 	.db #0x30	; 48	'0'
   6E09 1A                 4411 	.db #0x1A	; 26
   6E0A 30                 4412 	.db #0x30	; 48	'0'
   6E0B 30                 4413 	.db #0x30	; 48	'0'
   6E0C 30                 4414 	.db #0x30	; 48	'0'
   6E0D 30                 4415 	.db #0x30	; 48	'0'
   6E0E 30                 4416 	.db #0x30	; 48	'0'
   6E0F 30                 4417 	.db #0x30	; 48	'0'
   6E10 25                 4418 	.db #0x25	; 37
   6E11 30                 4419 	.db #0x30	; 48	'0'
   6E12 30                 4420 	.db #0x30	; 48	'0'
   6E13 0F                 4421 	.db #0x0F	; 15
   6E14 30                 4422 	.db #0x30	; 48	'0'
   6E15 30                 4423 	.db #0x30	; 48	'0'
   6E16 30                 4424 	.db #0x30	; 48	'0'
   6E17 30                 4425 	.db #0x30	; 48	'0'
   6E18 30                 4426 	.db #0x30	; 48	'0'
   6E19 30                 4427 	.db #0x30	; 48	'0'
   6E1A 0F                 4428 	.db #0x0F	; 15
   6E1B 30                 4429 	.db #0x30	; 48	'0'
   6E1C 30                 4430 	.db #0x30	; 48	'0'
   6E1D 25                 4431 	.db #0x25	; 37
   6E1E 30                 4432 	.db #0x30	; 48	'0'
   6E1F 30                 4433 	.db #0x30	; 48	'0'
   6E20 30                 4434 	.db #0x30	; 48	'0'
   6E21 30                 4435 	.db #0x30	; 48	'0'
   6E22 30                 4436 	.db #0x30	; 48	'0'
   6E23 30                 4437 	.db #0x30	; 48	'0'
   6E24 1A                 4438 	.db #0x1A	; 26
   6E25 30                 4439 	.db #0x30	; 48	'0'
   6E26 30                 4440 	.db #0x30	; 48	'0'
   6E27 25                 4441 	.db #0x25	; 37
   6E28 0F                 4442 	.db #0x0F	; 15
   6E29 0F                 4443 	.db #0x0F	; 15
   6E2A 0F                 4444 	.db #0x0F	; 15
   6E2B 0F                 4445 	.db #0x0F	; 15
   6E2C 0F                 4446 	.db #0x0F	; 15
   6E2D 0F                 4447 	.db #0x0F	; 15
   6E2E 1A                 4448 	.db #0x1A	; 26
   6E2F 30                 4449 	.db #0x30	; 48	'0'
   6E30 F0                 4450 	.db #0xF0	; 240
   6E31 30                 4451 	.db #0x30	; 48	'0'
   6E32 30                 4452 	.db #0x30	; 48	'0'
   6E33 30                 4453 	.db #0x30	; 48	'0'
   6E34 30                 4454 	.db #0x30	; 48	'0'
   6E35 30                 4455 	.db #0x30	; 48	'0'
   6E36 30                 4456 	.db #0x30	; 48	'0'
   6E37 30                 4457 	.db #0x30	; 48	'0'
   6E38 30                 4458 	.db #0x30	; 48	'0'
   6E39 F0                 4459 	.db #0xF0	; 240
   6E3A F0                 4460 	.db #0xF0	; 240
   6E3B 30                 4461 	.db #0x30	; 48	'0'
   6E3C 30                 4462 	.db #0x30	; 48	'0'
   6E3D 30                 4463 	.db #0x30	; 48	'0'
   6E3E 30                 4464 	.db #0x30	; 48	'0'
   6E3F 30                 4465 	.db #0x30	; 48	'0'
   6E40 30                 4466 	.db #0x30	; 48	'0'
   6E41 30                 4467 	.db #0x30	; 48	'0'
   6E42 30                 4468 	.db #0x30	; 48	'0'
   6E43 F0                 4469 	.db #0xF0	; 240
   6E44                    4470 _tile_tiles_11:
   6E44 F0                 4471 	.db #0xF0	; 240
   6E45 30                 4472 	.db #0x30	; 48	'0'
   6E46 30                 4473 	.db #0x30	; 48	'0'
   6E47 30                 4474 	.db #0x30	; 48	'0'
   6E48 30                 4475 	.db #0x30	; 48	'0'
   6E49 30                 4476 	.db #0x30	; 48	'0'
   6E4A 30                 4477 	.db #0x30	; 48	'0'
   6E4B 30                 4478 	.db #0x30	; 48	'0'
   6E4C 30                 4479 	.db #0x30	; 48	'0'
   6E4D F0                 4480 	.db #0xF0	; 240
   6E4E F0                 4481 	.db #0xF0	; 240
   6E4F 30                 4482 	.db #0x30	; 48	'0'
   6E50 30                 4483 	.db #0x30	; 48	'0'
   6E51 30                 4484 	.db #0x30	; 48	'0'
   6E52 30                 4485 	.db #0x30	; 48	'0'
   6E53 30                 4486 	.db #0x30	; 48	'0'
   6E54 30                 4487 	.db #0x30	; 48	'0'
   6E55 30                 4488 	.db #0x30	; 48	'0'
   6E56 30                 4489 	.db #0x30	; 48	'0'
   6E57 F0                 4490 	.db #0xF0	; 240
   6E58 30                 4491 	.db #0x30	; 48	'0'
   6E59 25                 4492 	.db #0x25	; 37
   6E5A 0F                 4493 	.db #0x0F	; 15
   6E5B 0F                 4494 	.db #0x0F	; 15
   6E5C 0F                 4495 	.db #0x0F	; 15
   6E5D 0F                 4496 	.db #0x0F	; 15
   6E5E 0F                 4497 	.db #0x0F	; 15
   6E5F 0F                 4498 	.db #0x0F	; 15
   6E60 1A                 4499 	.db #0x1A	; 26
   6E61 30                 4500 	.db #0x30	; 48	'0'
   6E62 30                 4501 	.db #0x30	; 48	'0'
   6E63 25                 4502 	.db #0x25	; 37
   6E64 30                 4503 	.db #0x30	; 48	'0'
   6E65 30                 4504 	.db #0x30	; 48	'0'
   6E66 30                 4505 	.db #0x30	; 48	'0'
   6E67 30                 4506 	.db #0x30	; 48	'0'
   6E68 30                 4507 	.db #0x30	; 48	'0'
   6E69 30                 4508 	.db #0x30	; 48	'0'
   6E6A 1A                 4509 	.db #0x1A	; 26
   6E6B 30                 4510 	.db #0x30	; 48	'0'
   6E6C 30                 4511 	.db #0x30	; 48	'0'
   6E6D 0F                 4512 	.db #0x0F	; 15
   6E6E 30                 4513 	.db #0x30	; 48	'0'
   6E6F 30                 4514 	.db #0x30	; 48	'0'
   6E70 30                 4515 	.db #0x30	; 48	'0'
   6E71 30                 4516 	.db #0x30	; 48	'0'
   6E72 30                 4517 	.db #0x30	; 48	'0'
   6E73 30                 4518 	.db #0x30	; 48	'0'
   6E74 0F                 4519 	.db #0x0F	; 15
   6E75 30                 4520 	.db #0x30	; 48	'0'
   6E76 30                 4521 	.db #0x30	; 48	'0'
   6E77 1A                 4522 	.db #0x1A	; 26
   6E78 30                 4523 	.db #0x30	; 48	'0'
   6E79 30                 4524 	.db #0x30	; 48	'0'
   6E7A 30                 4525 	.db #0x30	; 48	'0'
   6E7B 30                 4526 	.db #0x30	; 48	'0'
   6E7C 30                 4527 	.db #0x30	; 48	'0'
   6E7D 30                 4528 	.db #0x30	; 48	'0'
   6E7E 25                 4529 	.db #0x25	; 37
   6E7F 30                 4530 	.db #0x30	; 48	'0'
   6E80 30                 4531 	.db #0x30	; 48	'0'
   6E81 1A                 4532 	.db #0x1A	; 26
   6E82 30                 4533 	.db #0x30	; 48	'0'
   6E83 30                 4534 	.db #0x30	; 48	'0'
   6E84 30                 4535 	.db #0x30	; 48	'0'
   6E85 30                 4536 	.db #0x30	; 48	'0'
   6E86 30                 4537 	.db #0x30	; 48	'0'
   6E87 30                 4538 	.db #0x30	; 48	'0'
   6E88 25                 4539 	.db #0x25	; 37
   6E89 30                 4540 	.db #0x30	; 48	'0'
   6E8A 30                 4541 	.db #0x30	; 48	'0'
   6E8B 1A                 4542 	.db #0x1A	; 26
   6E8C 30                 4543 	.db #0x30	; 48	'0'
   6E8D 30                 4544 	.db #0x30	; 48	'0'
   6E8E 30                 4545 	.db #0x30	; 48	'0'
   6E8F 30                 4546 	.db #0x30	; 48	'0'
   6E90 30                 4547 	.db #0x30	; 48	'0'
   6E91 30                 4548 	.db #0x30	; 48	'0'
   6E92 25                 4549 	.db #0x25	; 37
   6E93 30                 4550 	.db #0x30	; 48	'0'
   6E94 30                 4551 	.db #0x30	; 48	'0'
   6E95 1A                 4552 	.db #0x1A	; 26
   6E96 30                 4553 	.db #0x30	; 48	'0'
   6E97 30                 4554 	.db #0x30	; 48	'0'
   6E98 30                 4555 	.db #0x30	; 48	'0'
   6E99 30                 4556 	.db #0x30	; 48	'0'
   6E9A 30                 4557 	.db #0x30	; 48	'0'
   6E9B 30                 4558 	.db #0x30	; 48	'0'
   6E9C 25                 4559 	.db #0x25	; 37
   6E9D 30                 4560 	.db #0x30	; 48	'0'
   6E9E 30                 4561 	.db #0x30	; 48	'0'
   6E9F 1A                 4562 	.db #0x1A	; 26
   6EA0 30                 4563 	.db #0x30	; 48	'0'
   6EA1 30                 4564 	.db #0x30	; 48	'0'
   6EA2 30                 4565 	.db #0x30	; 48	'0'
   6EA3 30                 4566 	.db #0x30	; 48	'0'
   6EA4 30                 4567 	.db #0x30	; 48	'0'
   6EA5 30                 4568 	.db #0x30	; 48	'0'
   6EA6 25                 4569 	.db #0x25	; 37
   6EA7 30                 4570 	.db #0x30	; 48	'0'
   6EA8 30                 4571 	.db #0x30	; 48	'0'
   6EA9 1A                 4572 	.db #0x1A	; 26
   6EAA 30                 4573 	.db #0x30	; 48	'0'
   6EAB 30                 4574 	.db #0x30	; 48	'0'
   6EAC 30                 4575 	.db #0x30	; 48	'0'
   6EAD 30                 4576 	.db #0x30	; 48	'0'
   6EAE 30                 4577 	.db #0x30	; 48	'0'
   6EAF 30                 4578 	.db #0x30	; 48	'0'
   6EB0 25                 4579 	.db #0x25	; 37
   6EB1 30                 4580 	.db #0x30	; 48	'0'
   6EB2 30                 4581 	.db #0x30	; 48	'0'
   6EB3 1A                 4582 	.db #0x1A	; 26
   6EB4 30                 4583 	.db #0x30	; 48	'0'
   6EB5 30                 4584 	.db #0x30	; 48	'0'
   6EB6 30                 4585 	.db #0x30	; 48	'0'
   6EB7 30                 4586 	.db #0x30	; 48	'0'
   6EB8 30                 4587 	.db #0x30	; 48	'0'
   6EB9 30                 4588 	.db #0x30	; 48	'0'
   6EBA 25                 4589 	.db #0x25	; 37
   6EBB 30                 4590 	.db #0x30	; 48	'0'
   6EBC 30                 4591 	.db #0x30	; 48	'0'
   6EBD 1A                 4592 	.db #0x1A	; 26
   6EBE 30                 4593 	.db #0x30	; 48	'0'
   6EBF 30                 4594 	.db #0x30	; 48	'0'
   6EC0 30                 4595 	.db #0x30	; 48	'0'
   6EC1 30                 4596 	.db #0x30	; 48	'0'
   6EC2 30                 4597 	.db #0x30	; 48	'0'
   6EC3 30                 4598 	.db #0x30	; 48	'0'
   6EC4 25                 4599 	.db #0x25	; 37
   6EC5 30                 4600 	.db #0x30	; 48	'0'
   6EC6 30                 4601 	.db #0x30	; 48	'0'
   6EC7 1A                 4602 	.db #0x1A	; 26
   6EC8 30                 4603 	.db #0x30	; 48	'0'
   6EC9 30                 4604 	.db #0x30	; 48	'0'
   6ECA 30                 4605 	.db #0x30	; 48	'0'
   6ECB 30                 4606 	.db #0x30	; 48	'0'
   6ECC 30                 4607 	.db #0x30	; 48	'0'
   6ECD 30                 4608 	.db #0x30	; 48	'0'
   6ECE 25                 4609 	.db #0x25	; 37
   6ECF 30                 4610 	.db #0x30	; 48	'0'
   6ED0 30                 4611 	.db #0x30	; 48	'0'
   6ED1 1A                 4612 	.db #0x1A	; 26
   6ED2 30                 4613 	.db #0x30	; 48	'0'
   6ED3 30                 4614 	.db #0x30	; 48	'0'
   6ED4 30                 4615 	.db #0x30	; 48	'0'
   6ED5 30                 4616 	.db #0x30	; 48	'0'
   6ED6 30                 4617 	.db #0x30	; 48	'0'
   6ED7 30                 4618 	.db #0x30	; 48	'0'
   6ED8 25                 4619 	.db #0x25	; 37
   6ED9 30                 4620 	.db #0x30	; 48	'0'
   6EDA 30                 4621 	.db #0x30	; 48	'0'
   6EDB 4E                 4622 	.db #0x4E	; 78	'N'
   6EDC CC                 4623 	.db #0xCC	; 204
   6EDD 30                 4624 	.db #0x30	; 48	'0'
   6EDE 64                 4625 	.db #0x64	; 100	'd'
   6EDF 98                 4626 	.db #0x98	; 152
   6EE0 30                 4627 	.db #0x30	; 48	'0'
   6EE1 98                 4628 	.db #0x98	; 152
   6EE2 25                 4629 	.db #0x25	; 37
   6EE3 30                 4630 	.db #0x30	; 48	'0'
   6EE4 30                 4631 	.db #0x30	; 48	'0'
   6EE5 1A                 4632 	.db #0x1A	; 26
   6EE6 64                 4633 	.db #0x64	; 100	'd'
   6EE7 30                 4634 	.db #0x30	; 48	'0'
   6EE8 98                 4635 	.db #0x98	; 152
   6EE9 98                 4636 	.db #0x98	; 152
   6EEA 64                 4637 	.db #0x64	; 100	'd'
   6EEB 64                 4638 	.db #0x64	; 100	'd'
   6EEC 25                 4639 	.db #0x25	; 37
   6EED 30                 4640 	.db #0x30	; 48	'0'
   6EEE 30                 4641 	.db #0x30	; 48	'0'
   6EEF 1A                 4642 	.db #0x1A	; 26
   6EF0 64                 4643 	.db #0x64	; 100	'd'
   6EF1 30                 4644 	.db #0x30	; 48	'0'
   6EF2 98                 4645 	.db #0x98	; 152
   6EF3 30                 4646 	.db #0x30	; 48	'0'
   6EF4 64                 4647 	.db #0x64	; 100	'd'
   6EF5 64                 4648 	.db #0x64	; 100	'd'
   6EF6 25                 4649 	.db #0x25	; 37
   6EF7 30                 4650 	.db #0x30	; 48	'0'
   6EF8 30                 4651 	.db #0x30	; 48	'0'
   6EF9 1A                 4652 	.db #0x1A	; 26
   6EFA 64                 4653 	.db #0x64	; 100	'd'
   6EFB 30                 4654 	.db #0x30	; 48	'0'
   6EFC 98                 4655 	.db #0x98	; 152
   6EFD 30                 4656 	.db #0x30	; 48	'0'
   6EFE 64                 4657 	.db #0x64	; 100	'd'
   6EFF 64                 4658 	.db #0x64	; 100	'd'
   6F00 25                 4659 	.db #0x25	; 37
   6F01 30                 4660 	.db #0x30	; 48	'0'
   6F02 30                 4661 	.db #0x30	; 48	'0'
   6F03 1A                 4662 	.db #0x1A	; 26
   6F04 64                 4663 	.db #0x64	; 100	'd'
   6F05 30                 4664 	.db #0x30	; 48	'0'
   6F06 98                 4665 	.db #0x98	; 152
   6F07 30                 4666 	.db #0x30	; 48	'0'
   6F08 64                 4667 	.db #0x64	; 100	'd'
   6F09 64                 4668 	.db #0x64	; 100	'd'
   6F0A 25                 4669 	.db #0x25	; 37
   6F0B 30                 4670 	.db #0x30	; 48	'0'
   6F0C 30                 4671 	.db #0x30	; 48	'0'
   6F0D 1A                 4672 	.db #0x1A	; 26
   6F0E 64                 4673 	.db #0x64	; 100	'd'
   6F0F 30                 4674 	.db #0x30	; 48	'0'
   6F10 CC                 4675 	.db #0xCC	; 204
   6F11 30                 4676 	.db #0x30	; 48	'0'
   6F12 64                 4677 	.db #0x64	; 100	'd'
   6F13 64                 4678 	.db #0x64	; 100	'd'
   6F14 25                 4679 	.db #0x25	; 37
   6F15 30                 4680 	.db #0x30	; 48	'0'
   6F16 30                 4681 	.db #0x30	; 48	'0'
   6F17 1A                 4682 	.db #0x1A	; 26
   6F18 98                 4683 	.db #0x98	; 152
   6F19 30                 4684 	.db #0x30	; 48	'0'
   6F1A 98                 4685 	.db #0x98	; 152
   6F1B 98                 4686 	.db #0x98	; 152
   6F1C 30                 4687 	.db #0x30	; 48	'0'
   6F1D 98                 4688 	.db #0x98	; 152
   6F1E 25                 4689 	.db #0x25	; 37
   6F1F 30                 4690 	.db #0x30	; 48	'0'
   6F20 30                 4691 	.db #0x30	; 48	'0'
   6F21 1A                 4692 	.db #0x1A	; 26
   6F22 98                 4693 	.db #0x98	; 152
   6F23 30                 4694 	.db #0x30	; 48	'0'
   6F24 98                 4695 	.db #0x98	; 152
   6F25 98                 4696 	.db #0x98	; 152
   6F26 64                 4697 	.db #0x64	; 100	'd'
   6F27 64                 4698 	.db #0x64	; 100	'd'
   6F28 25                 4699 	.db #0x25	; 37
   6F29 30                 4700 	.db #0x30	; 48	'0'
   6F2A 30                 4701 	.db #0x30	; 48	'0'
   6F2B 1A                 4702 	.db #0x1A	; 26
   6F2C 98                 4703 	.db #0x98	; 152
   6F2D 30                 4704 	.db #0x30	; 48	'0'
   6F2E 98                 4705 	.db #0x98	; 152
   6F2F 98                 4706 	.db #0x98	; 152
   6F30 64                 4707 	.db #0x64	; 100	'd'
   6F31 64                 4708 	.db #0x64	; 100	'd'
   6F32 25                 4709 	.db #0x25	; 37
   6F33 30                 4710 	.db #0x30	; 48	'0'
   6F34 30                 4711 	.db #0x30	; 48	'0'
   6F35 1A                 4712 	.db #0x1A	; 26
   6F36 98                 4713 	.db #0x98	; 152
   6F37 30                 4714 	.db #0x30	; 48	'0'
   6F38 98                 4715 	.db #0x98	; 152
   6F39 98                 4716 	.db #0x98	; 152
   6F3A 64                 4717 	.db #0x64	; 100	'd'
   6F3B 64                 4718 	.db #0x64	; 100	'd'
   6F3C 25                 4719 	.db #0x25	; 37
   6F3D 30                 4720 	.db #0x30	; 48	'0'
   6F3E 30                 4721 	.db #0x30	; 48	'0'
   6F3F 1A                 4722 	.db #0x1A	; 26
   6F40 98                 4723 	.db #0x98	; 152
   6F41 30                 4724 	.db #0x30	; 48	'0'
   6F42 98                 4725 	.db #0x98	; 152
   6F43 98                 4726 	.db #0x98	; 152
   6F44 64                 4727 	.db #0x64	; 100	'd'
   6F45 64                 4728 	.db #0x64	; 100	'd'
   6F46 25                 4729 	.db #0x25	; 37
   6F47 30                 4730 	.db #0x30	; 48	'0'
   6F48 30                 4731 	.db #0x30	; 48	'0'
   6F49 1A                 4732 	.db #0x1A	; 26
   6F4A 98                 4733 	.db #0x98	; 152
   6F4B 30                 4734 	.db #0x30	; 48	'0'
   6F4C 64                 4735 	.db #0x64	; 100	'd'
   6F4D 30                 4736 	.db #0x30	; 48	'0'
   6F4E 30                 4737 	.db #0x30	; 48	'0'
   6F4F 98                 4738 	.db #0x98	; 152
   6F50 25                 4739 	.db #0x25	; 37
   6F51 30                 4740 	.db #0x30	; 48	'0'
   6F52 30                 4741 	.db #0x30	; 48	'0'
   6F53 1A                 4742 	.db #0x1A	; 26
   6F54 30                 4743 	.db #0x30	; 48	'0'
   6F55 30                 4744 	.db #0x30	; 48	'0'
   6F56 30                 4745 	.db #0x30	; 48	'0'
   6F57 30                 4746 	.db #0x30	; 48	'0'
   6F58 30                 4747 	.db #0x30	; 48	'0'
   6F59 30                 4748 	.db #0x30	; 48	'0'
   6F5A 25                 4749 	.db #0x25	; 37
   6F5B 30                 4750 	.db #0x30	; 48	'0'
   6F5C 30                 4751 	.db #0x30	; 48	'0'
   6F5D 1A                 4752 	.db #0x1A	; 26
   6F5E 30                 4753 	.db #0x30	; 48	'0'
   6F5F 30                 4754 	.db #0x30	; 48	'0'
   6F60 30                 4755 	.db #0x30	; 48	'0'
   6F61 30                 4756 	.db #0x30	; 48	'0'
   6F62 30                 4757 	.db #0x30	; 48	'0'
   6F63 30                 4758 	.db #0x30	; 48	'0'
   6F64 25                 4759 	.db #0x25	; 37
   6F65 30                 4760 	.db #0x30	; 48	'0'
   6F66 30                 4761 	.db #0x30	; 48	'0'
   6F67 1A                 4762 	.db #0x1A	; 26
   6F68 30                 4763 	.db #0x30	; 48	'0'
   6F69 30                 4764 	.db #0x30	; 48	'0'
   6F6A 30                 4765 	.db #0x30	; 48	'0'
   6F6B 30                 4766 	.db #0x30	; 48	'0'
   6F6C 30                 4767 	.db #0x30	; 48	'0'
   6F6D 30                 4768 	.db #0x30	; 48	'0'
   6F6E 25                 4769 	.db #0x25	; 37
   6F6F 30                 4770 	.db #0x30	; 48	'0'
   6F70 30                 4771 	.db #0x30	; 48	'0'
   6F71 1A                 4772 	.db #0x1A	; 26
   6F72 30                 4773 	.db #0x30	; 48	'0'
   6F73 30                 4774 	.db #0x30	; 48	'0'
   6F74 30                 4775 	.db #0x30	; 48	'0'
   6F75 30                 4776 	.db #0x30	; 48	'0'
   6F76 30                 4777 	.db #0x30	; 48	'0'
   6F77 30                 4778 	.db #0x30	; 48	'0'
   6F78 25                 4779 	.db #0x25	; 37
   6F79 30                 4780 	.db #0x30	; 48	'0'
   6F7A 30                 4781 	.db #0x30	; 48	'0'
   6F7B 1A                 4782 	.db #0x1A	; 26
   6F7C 30                 4783 	.db #0x30	; 48	'0'
   6F7D 30                 4784 	.db #0x30	; 48	'0'
   6F7E 30                 4785 	.db #0x30	; 48	'0'
   6F7F 30                 4786 	.db #0x30	; 48	'0'
   6F80 30                 4787 	.db #0x30	; 48	'0'
   6F81 30                 4788 	.db #0x30	; 48	'0'
   6F82 25                 4789 	.db #0x25	; 37
   6F83 30                 4790 	.db #0x30	; 48	'0'
   6F84 30                 4791 	.db #0x30	; 48	'0'
   6F85 1A                 4792 	.db #0x1A	; 26
   6F86 30                 4793 	.db #0x30	; 48	'0'
   6F87 30                 4794 	.db #0x30	; 48	'0'
   6F88 30                 4795 	.db #0x30	; 48	'0'
   6F89 30                 4796 	.db #0x30	; 48	'0'
   6F8A 30                 4797 	.db #0x30	; 48	'0'
   6F8B 30                 4798 	.db #0x30	; 48	'0'
   6F8C 25                 4799 	.db #0x25	; 37
   6F8D 30                 4800 	.db #0x30	; 48	'0'
   6F8E 30                 4801 	.db #0x30	; 48	'0'
   6F8F 1A                 4802 	.db #0x1A	; 26
   6F90 30                 4803 	.db #0x30	; 48	'0'
   6F91 30                 4804 	.db #0x30	; 48	'0'
   6F92 30                 4805 	.db #0x30	; 48	'0'
   6F93 30                 4806 	.db #0x30	; 48	'0'
   6F94 30                 4807 	.db #0x30	; 48	'0'
   6F95 30                 4808 	.db #0x30	; 48	'0'
   6F96 25                 4809 	.db #0x25	; 37
   6F97 30                 4810 	.db #0x30	; 48	'0'
   6F98 30                 4811 	.db #0x30	; 48	'0'
   6F99 1A                 4812 	.db #0x1A	; 26
   6F9A 30                 4813 	.db #0x30	; 48	'0'
   6F9B 30                 4814 	.db #0x30	; 48	'0'
   6F9C 30                 4815 	.db #0x30	; 48	'0'
   6F9D 30                 4816 	.db #0x30	; 48	'0'
   6F9E 30                 4817 	.db #0x30	; 48	'0'
   6F9F 30                 4818 	.db #0x30	; 48	'0'
   6FA0 25                 4819 	.db #0x25	; 37
   6FA1 30                 4820 	.db #0x30	; 48	'0'
   6FA2 30                 4821 	.db #0x30	; 48	'0'
   6FA3 0F                 4822 	.db #0x0F	; 15
   6FA4 30                 4823 	.db #0x30	; 48	'0'
   6FA5 30                 4824 	.db #0x30	; 48	'0'
   6FA6 30                 4825 	.db #0x30	; 48	'0'
   6FA7 30                 4826 	.db #0x30	; 48	'0'
   6FA8 30                 4827 	.db #0x30	; 48	'0'
   6FA9 30                 4828 	.db #0x30	; 48	'0'
   6FAA 0F                 4829 	.db #0x0F	; 15
   6FAB 30                 4830 	.db #0x30	; 48	'0'
   6FAC 30                 4831 	.db #0x30	; 48	'0'
   6FAD 25                 4832 	.db #0x25	; 37
   6FAE 30                 4833 	.db #0x30	; 48	'0'
   6FAF 30                 4834 	.db #0x30	; 48	'0'
   6FB0 30                 4835 	.db #0x30	; 48	'0'
   6FB1 30                 4836 	.db #0x30	; 48	'0'
   6FB2 30                 4837 	.db #0x30	; 48	'0'
   6FB3 30                 4838 	.db #0x30	; 48	'0'
   6FB4 1A                 4839 	.db #0x1A	; 26
   6FB5 30                 4840 	.db #0x30	; 48	'0'
   6FB6 30                 4841 	.db #0x30	; 48	'0'
   6FB7 25                 4842 	.db #0x25	; 37
   6FB8 0F                 4843 	.db #0x0F	; 15
   6FB9 0F                 4844 	.db #0x0F	; 15
   6FBA 0F                 4845 	.db #0x0F	; 15
   6FBB 0F                 4846 	.db #0x0F	; 15
   6FBC 0F                 4847 	.db #0x0F	; 15
   6FBD 0F                 4848 	.db #0x0F	; 15
   6FBE 1A                 4849 	.db #0x1A	; 26
   6FBF 30                 4850 	.db #0x30	; 48	'0'
   6FC0 F0                 4851 	.db #0xF0	; 240
   6FC1 30                 4852 	.db #0x30	; 48	'0'
   6FC2 30                 4853 	.db #0x30	; 48	'0'
   6FC3 30                 4854 	.db #0x30	; 48	'0'
   6FC4 30                 4855 	.db #0x30	; 48	'0'
   6FC5 30                 4856 	.db #0x30	; 48	'0'
   6FC6 30                 4857 	.db #0x30	; 48	'0'
   6FC7 30                 4858 	.db #0x30	; 48	'0'
   6FC8 30                 4859 	.db #0x30	; 48	'0'
   6FC9 F0                 4860 	.db #0xF0	; 240
   6FCA F0                 4861 	.db #0xF0	; 240
   6FCB 30                 4862 	.db #0x30	; 48	'0'
   6FCC 30                 4863 	.db #0x30	; 48	'0'
   6FCD 30                 4864 	.db #0x30	; 48	'0'
   6FCE 30                 4865 	.db #0x30	; 48	'0'
   6FCF 30                 4866 	.db #0x30	; 48	'0'
   6FD0 30                 4867 	.db #0x30	; 48	'0'
   6FD1 30                 4868 	.db #0x30	; 48	'0'
   6FD2 30                 4869 	.db #0x30	; 48	'0'
   6FD3 F0                 4870 	.db #0xF0	; 240
   6FD4                    4871 _tile_tiles_12:
   6FD4 F0                 4872 	.db #0xF0	; 240
   6FD5 30                 4873 	.db #0x30	; 48	'0'
   6FD6 30                 4874 	.db #0x30	; 48	'0'
   6FD7 30                 4875 	.db #0x30	; 48	'0'
   6FD8 30                 4876 	.db #0x30	; 48	'0'
   6FD9 30                 4877 	.db #0x30	; 48	'0'
   6FDA 30                 4878 	.db #0x30	; 48	'0'
   6FDB 30                 4879 	.db #0x30	; 48	'0'
   6FDC 30                 4880 	.db #0x30	; 48	'0'
   6FDD F0                 4881 	.db #0xF0	; 240
   6FDE F0                 4882 	.db #0xF0	; 240
   6FDF 30                 4883 	.db #0x30	; 48	'0'
   6FE0 30                 4884 	.db #0x30	; 48	'0'
   6FE1 30                 4885 	.db #0x30	; 48	'0'
   6FE2 30                 4886 	.db #0x30	; 48	'0'
   6FE3 30                 4887 	.db #0x30	; 48	'0'
   6FE4 30                 4888 	.db #0x30	; 48	'0'
   6FE5 30                 4889 	.db #0x30	; 48	'0'
   6FE6 30                 4890 	.db #0x30	; 48	'0'
   6FE7 F0                 4891 	.db #0xF0	; 240
   6FE8 30                 4892 	.db #0x30	; 48	'0'
   6FE9 25                 4893 	.db #0x25	; 37
   6FEA 0F                 4894 	.db #0x0F	; 15
   6FEB 0F                 4895 	.db #0x0F	; 15
   6FEC 0F                 4896 	.db #0x0F	; 15
   6FED 0F                 4897 	.db #0x0F	; 15
   6FEE 0F                 4898 	.db #0x0F	; 15
   6FEF 0F                 4899 	.db #0x0F	; 15
   6FF0 1A                 4900 	.db #0x1A	; 26
   6FF1 30                 4901 	.db #0x30	; 48	'0'
   6FF2 30                 4902 	.db #0x30	; 48	'0'
   6FF3 25                 4903 	.db #0x25	; 37
   6FF4 30                 4904 	.db #0x30	; 48	'0'
   6FF5 30                 4905 	.db #0x30	; 48	'0'
   6FF6 30                 4906 	.db #0x30	; 48	'0'
   6FF7 30                 4907 	.db #0x30	; 48	'0'
   6FF8 30                 4908 	.db #0x30	; 48	'0'
   6FF9 30                 4909 	.db #0x30	; 48	'0'
   6FFA 1A                 4910 	.db #0x1A	; 26
   6FFB 30                 4911 	.db #0x30	; 48	'0'
   6FFC 30                 4912 	.db #0x30	; 48	'0'
   6FFD 0F                 4913 	.db #0x0F	; 15
   6FFE 30                 4914 	.db #0x30	; 48	'0'
   6FFF 30                 4915 	.db #0x30	; 48	'0'
   7000 30                 4916 	.db #0x30	; 48	'0'
   7001 30                 4917 	.db #0x30	; 48	'0'
   7002 30                 4918 	.db #0x30	; 48	'0'
   7003 30                 4919 	.db #0x30	; 48	'0'
   7004 0F                 4920 	.db #0x0F	; 15
   7005 30                 4921 	.db #0x30	; 48	'0'
   7006 30                 4922 	.db #0x30	; 48	'0'
   7007 1A                 4923 	.db #0x1A	; 26
   7008 30                 4924 	.db #0x30	; 48	'0'
   7009 30                 4925 	.db #0x30	; 48	'0'
   700A 30                 4926 	.db #0x30	; 48	'0'
   700B 30                 4927 	.db #0x30	; 48	'0'
   700C 30                 4928 	.db #0x30	; 48	'0'
   700D 30                 4929 	.db #0x30	; 48	'0'
   700E 25                 4930 	.db #0x25	; 37
   700F 30                 4931 	.db #0x30	; 48	'0'
   7010 30                 4932 	.db #0x30	; 48	'0'
   7011 1A                 4933 	.db #0x1A	; 26
   7012 30                 4934 	.db #0x30	; 48	'0'
   7013 30                 4935 	.db #0x30	; 48	'0'
   7014 30                 4936 	.db #0x30	; 48	'0'
   7015 30                 4937 	.db #0x30	; 48	'0'
   7016 30                 4938 	.db #0x30	; 48	'0'
   7017 30                 4939 	.db #0x30	; 48	'0'
   7018 25                 4940 	.db #0x25	; 37
   7019 30                 4941 	.db #0x30	; 48	'0'
   701A 30                 4942 	.db #0x30	; 48	'0'
   701B 1A                 4943 	.db #0x1A	; 26
   701C 30                 4944 	.db #0x30	; 48	'0'
   701D 30                 4945 	.db #0x30	; 48	'0'
   701E 30                 4946 	.db #0x30	; 48	'0'
   701F 30                 4947 	.db #0x30	; 48	'0'
   7020 30                 4948 	.db #0x30	; 48	'0'
   7021 30                 4949 	.db #0x30	; 48	'0'
   7022 25                 4950 	.db #0x25	; 37
   7023 30                 4951 	.db #0x30	; 48	'0'
   7024 30                 4952 	.db #0x30	; 48	'0'
   7025 1A                 4953 	.db #0x1A	; 26
   7026 30                 4954 	.db #0x30	; 48	'0'
   7027 30                 4955 	.db #0x30	; 48	'0'
   7028 30                 4956 	.db #0x30	; 48	'0'
   7029 30                 4957 	.db #0x30	; 48	'0'
   702A 30                 4958 	.db #0x30	; 48	'0'
   702B 30                 4959 	.db #0x30	; 48	'0'
   702C 25                 4960 	.db #0x25	; 37
   702D 30                 4961 	.db #0x30	; 48	'0'
   702E 30                 4962 	.db #0x30	; 48	'0'
   702F 1A                 4963 	.db #0x1A	; 26
   7030 30                 4964 	.db #0x30	; 48	'0'
   7031 30                 4965 	.db #0x30	; 48	'0'
   7032 30                 4966 	.db #0x30	; 48	'0'
   7033 30                 4967 	.db #0x30	; 48	'0'
   7034 30                 4968 	.db #0x30	; 48	'0'
   7035 30                 4969 	.db #0x30	; 48	'0'
   7036 25                 4970 	.db #0x25	; 37
   7037 30                 4971 	.db #0x30	; 48	'0'
   7038 30                 4972 	.db #0x30	; 48	'0'
   7039 1A                 4973 	.db #0x1A	; 26
   703A 30                 4974 	.db #0x30	; 48	'0'
   703B 30                 4975 	.db #0x30	; 48	'0'
   703C 30                 4976 	.db #0x30	; 48	'0'
   703D 30                 4977 	.db #0x30	; 48	'0'
   703E 30                 4978 	.db #0x30	; 48	'0'
   703F 30                 4979 	.db #0x30	; 48	'0'
   7040 25                 4980 	.db #0x25	; 37
   7041 30                 4981 	.db #0x30	; 48	'0'
   7042 30                 4982 	.db #0x30	; 48	'0'
   7043 1A                 4983 	.db #0x1A	; 26
   7044 30                 4984 	.db #0x30	; 48	'0'
   7045 30                 4985 	.db #0x30	; 48	'0'
   7046 30                 4986 	.db #0x30	; 48	'0'
   7047 30                 4987 	.db #0x30	; 48	'0'
   7048 30                 4988 	.db #0x30	; 48	'0'
   7049 30                 4989 	.db #0x30	; 48	'0'
   704A 25                 4990 	.db #0x25	; 37
   704B 30                 4991 	.db #0x30	; 48	'0'
   704C 30                 4992 	.db #0x30	; 48	'0'
   704D 1A                 4993 	.db #0x1A	; 26
   704E 30                 4994 	.db #0x30	; 48	'0'
   704F 30                 4995 	.db #0x30	; 48	'0'
   7050 30                 4996 	.db #0x30	; 48	'0'
   7051 30                 4997 	.db #0x30	; 48	'0'
   7052 30                 4998 	.db #0x30	; 48	'0'
   7053 30                 4999 	.db #0x30	; 48	'0'
   7054 25                 5000 	.db #0x25	; 37
   7055 30                 5001 	.db #0x30	; 48	'0'
   7056 30                 5002 	.db #0x30	; 48	'0'
   7057 1A                 5003 	.db #0x1A	; 26
   7058 30                 5004 	.db #0x30	; 48	'0'
   7059 30                 5005 	.db #0x30	; 48	'0'
   705A 30                 5006 	.db #0x30	; 48	'0'
   705B 30                 5007 	.db #0x30	; 48	'0'
   705C 30                 5008 	.db #0x30	; 48	'0'
   705D 30                 5009 	.db #0x30	; 48	'0'
   705E 25                 5010 	.db #0x25	; 37
   705F 30                 5011 	.db #0x30	; 48	'0'
   7060 30                 5012 	.db #0x30	; 48	'0'
   7061 1A                 5013 	.db #0x1A	; 26
   7062 30                 5014 	.db #0x30	; 48	'0'
   7063 30                 5015 	.db #0x30	; 48	'0'
   7064 30                 5016 	.db #0x30	; 48	'0'
   7065 30                 5017 	.db #0x30	; 48	'0'
   7066 30                 5018 	.db #0x30	; 48	'0'
   7067 30                 5019 	.db #0x30	; 48	'0'
   7068 25                 5020 	.db #0x25	; 37
   7069 30                 5021 	.db #0x30	; 48	'0'
   706A 30                 5022 	.db #0x30	; 48	'0'
   706B 1A                 5023 	.db #0x1A	; 26
   706C 30                 5024 	.db #0x30	; 48	'0'
   706D 30                 5025 	.db #0x30	; 48	'0'
   706E 30                 5026 	.db #0x30	; 48	'0'
   706F 30                 5027 	.db #0x30	; 48	'0'
   7070 30                 5028 	.db #0x30	; 48	'0'
   7071 30                 5029 	.db #0x30	; 48	'0'
   7072 25                 5030 	.db #0x25	; 37
   7073 30                 5031 	.db #0x30	; 48	'0'
   7074 30                 5032 	.db #0x30	; 48	'0'
   7075 1A                 5033 	.db #0x1A	; 26
   7076 30                 5034 	.db #0x30	; 48	'0'
   7077 30                 5035 	.db #0x30	; 48	'0'
   7078 30                 5036 	.db #0x30	; 48	'0'
   7079 30                 5037 	.db #0x30	; 48	'0'
   707A 30                 5038 	.db #0x30	; 48	'0'
   707B 30                 5039 	.db #0x30	; 48	'0'
   707C 25                 5040 	.db #0x25	; 37
   707D 30                 5041 	.db #0x30	; 48	'0'
   707E 30                 5042 	.db #0x30	; 48	'0'
   707F 4E                 5043 	.db #0x4E	; 78	'N'
   7080 30                 5044 	.db #0x30	; 48	'0'
   7081 CC                 5045 	.db #0xCC	; 204
   7082 98                 5046 	.db #0x98	; 152
   7083 64                 5047 	.db #0x64	; 100	'd'
   7084 30                 5048 	.db #0x30	; 48	'0'
   7085 64                 5049 	.db #0x64	; 100	'd'
   7086 25                 5050 	.db #0x25	; 37
   7087 30                 5051 	.db #0x30	; 48	'0'
   7088 30                 5052 	.db #0x30	; 48	'0'
   7089 CC                 5053 	.db #0xCC	; 204
   708A 30                 5054 	.db #0x30	; 48	'0'
   708B 98                 5055 	.db #0x98	; 152
   708C 30                 5056 	.db #0x30	; 48	'0'
   708D 98                 5057 	.db #0x98	; 152
   708E 98                 5058 	.db #0x98	; 152
   708F 98                 5059 	.db #0x98	; 152
   7090 8D                 5060 	.db #0x8D	; 141
   7091 30                 5061 	.db #0x30	; 48	'0'
   7092 30                 5062 	.db #0x30	; 48	'0'
   7093 4E                 5063 	.db #0x4E	; 78	'N'
   7094 30                 5064 	.db #0x30	; 48	'0'
   7095 98                 5065 	.db #0x98	; 152
   7096 30                 5066 	.db #0x30	; 48	'0'
   7097 30                 5067 	.db #0x30	; 48	'0'
   7098 98                 5068 	.db #0x98	; 152
   7099 98                 5069 	.db #0x98	; 152
   709A 25                 5070 	.db #0x25	; 37
   709B 30                 5071 	.db #0x30	; 48	'0'
   709C 30                 5072 	.db #0x30	; 48	'0'
   709D 4E                 5073 	.db #0x4E	; 78	'N'
   709E 30                 5074 	.db #0x30	; 48	'0'
   709F CC                 5075 	.db #0xCC	; 204
   70A0 30                 5076 	.db #0x30	; 48	'0'
   70A1 64                 5077 	.db #0x64	; 100	'd'
   70A2 30                 5078 	.db #0x30	; 48	'0'
   70A3 98                 5079 	.db #0x98	; 152
   70A4 25                 5080 	.db #0x25	; 37
   70A5 30                 5081 	.db #0x30	; 48	'0'
   70A6 30                 5082 	.db #0x30	; 48	'0'
   70A7 4E                 5083 	.db #0x4E	; 78	'N'
   70A8 30                 5084 	.db #0x30	; 48	'0'
   70A9 30                 5085 	.db #0x30	; 48	'0'
   70AA 98                 5086 	.db #0x98	; 152
   70AB 64                 5087 	.db #0x64	; 100	'd'
   70AC 30                 5088 	.db #0x30	; 48	'0'
   70AD CC                 5089 	.db #0xCC	; 204
   70AE 25                 5090 	.db #0x25	; 37
   70AF 30                 5091 	.db #0x30	; 48	'0'
   70B0 30                 5092 	.db #0x30	; 48	'0'
   70B1 4E                 5093 	.db #0x4E	; 78	'N'
   70B2 30                 5094 	.db #0x30	; 48	'0'
   70B3 30                 5095 	.db #0x30	; 48	'0'
   70B4 98                 5096 	.db #0x98	; 152
   70B5 30                 5097 	.db #0x30	; 48	'0'
   70B6 98                 5098 	.db #0x98	; 152
   70B7 98                 5099 	.db #0x98	; 152
   70B8 8D                 5100 	.db #0x8D	; 141
   70B9 30                 5101 	.db #0x30	; 48	'0'
   70BA 30                 5102 	.db #0x30	; 48	'0'
   70BB 4E                 5103 	.db #0x4E	; 78	'N'
   70BC 30                 5104 	.db #0x30	; 48	'0'
   70BD 30                 5105 	.db #0x30	; 48	'0'
   70BE 98                 5106 	.db #0x98	; 152
   70BF 98                 5107 	.db #0x98	; 152
   70C0 98                 5108 	.db #0x98	; 152
   70C1 98                 5109 	.db #0x98	; 152
   70C2 8D                 5110 	.db #0x8D	; 141
   70C3 30                 5111 	.db #0x30	; 48	'0'
   70C4 30                 5112 	.db #0x30	; 48	'0'
   70C5 CC                 5113 	.db #0xCC	; 204
   70C6 98                 5114 	.db #0x98	; 152
   70C7 CC                 5115 	.db #0xCC	; 204
   70C8 30                 5116 	.db #0x30	; 48	'0'
   70C9 64                 5117 	.db #0x64	; 100	'd'
   70CA 30                 5118 	.db #0x30	; 48	'0'
   70CB 64                 5119 	.db #0x64	; 100	'd'
   70CC 25                 5120 	.db #0x25	; 37
   70CD 30                 5121 	.db #0x30	; 48	'0'
   70CE 30                 5122 	.db #0x30	; 48	'0'
   70CF 1A                 5123 	.db #0x1A	; 26
   70D0 30                 5124 	.db #0x30	; 48	'0'
   70D1 30                 5125 	.db #0x30	; 48	'0'
   70D2 30                 5126 	.db #0x30	; 48	'0'
   70D3 30                 5127 	.db #0x30	; 48	'0'
   70D4 30                 5128 	.db #0x30	; 48	'0'
   70D5 30                 5129 	.db #0x30	; 48	'0'
   70D6 25                 5130 	.db #0x25	; 37
   70D7 30                 5131 	.db #0x30	; 48	'0'
   70D8 30                 5132 	.db #0x30	; 48	'0'
   70D9 1A                 5133 	.db #0x1A	; 26
   70DA 30                 5134 	.db #0x30	; 48	'0'
   70DB 30                 5135 	.db #0x30	; 48	'0'
   70DC 30                 5136 	.db #0x30	; 48	'0'
   70DD 30                 5137 	.db #0x30	; 48	'0'
   70DE 30                 5138 	.db #0x30	; 48	'0'
   70DF 30                 5139 	.db #0x30	; 48	'0'
   70E0 25                 5140 	.db #0x25	; 37
   70E1 30                 5141 	.db #0x30	; 48	'0'
   70E2 30                 5142 	.db #0x30	; 48	'0'
   70E3 1A                 5143 	.db #0x1A	; 26
   70E4 30                 5144 	.db #0x30	; 48	'0'
   70E5 30                 5145 	.db #0x30	; 48	'0'
   70E6 30                 5146 	.db #0x30	; 48	'0'
   70E7 30                 5147 	.db #0x30	; 48	'0'
   70E8 30                 5148 	.db #0x30	; 48	'0'
   70E9 30                 5149 	.db #0x30	; 48	'0'
   70EA 25                 5150 	.db #0x25	; 37
   70EB 30                 5151 	.db #0x30	; 48	'0'
   70EC 30                 5152 	.db #0x30	; 48	'0'
   70ED 1A                 5153 	.db #0x1A	; 26
   70EE 30                 5154 	.db #0x30	; 48	'0'
   70EF 30                 5155 	.db #0x30	; 48	'0'
   70F0 30                 5156 	.db #0x30	; 48	'0'
   70F1 30                 5157 	.db #0x30	; 48	'0'
   70F2 30                 5158 	.db #0x30	; 48	'0'
   70F3 30                 5159 	.db #0x30	; 48	'0'
   70F4 25                 5160 	.db #0x25	; 37
   70F5 30                 5161 	.db #0x30	; 48	'0'
   70F6 30                 5162 	.db #0x30	; 48	'0'
   70F7 1A                 5163 	.db #0x1A	; 26
   70F8 30                 5164 	.db #0x30	; 48	'0'
   70F9 30                 5165 	.db #0x30	; 48	'0'
   70FA 30                 5166 	.db #0x30	; 48	'0'
   70FB 30                 5167 	.db #0x30	; 48	'0'
   70FC 30                 5168 	.db #0x30	; 48	'0'
   70FD 30                 5169 	.db #0x30	; 48	'0'
   70FE 25                 5170 	.db #0x25	; 37
   70FF 30                 5171 	.db #0x30	; 48	'0'
   7100 30                 5172 	.db #0x30	; 48	'0'
   7101 1A                 5173 	.db #0x1A	; 26
   7102 30                 5174 	.db #0x30	; 48	'0'
   7103 30                 5175 	.db #0x30	; 48	'0'
   7104 30                 5176 	.db #0x30	; 48	'0'
   7105 30                 5177 	.db #0x30	; 48	'0'
   7106 30                 5178 	.db #0x30	; 48	'0'
   7107 30                 5179 	.db #0x30	; 48	'0'
   7108 25                 5180 	.db #0x25	; 37
   7109 30                 5181 	.db #0x30	; 48	'0'
   710A 30                 5182 	.db #0x30	; 48	'0'
   710B 1A                 5183 	.db #0x1A	; 26
   710C 30                 5184 	.db #0x30	; 48	'0'
   710D 30                 5185 	.db #0x30	; 48	'0'
   710E 30                 5186 	.db #0x30	; 48	'0'
   710F 30                 5187 	.db #0x30	; 48	'0'
   7110 30                 5188 	.db #0x30	; 48	'0'
   7111 30                 5189 	.db #0x30	; 48	'0'
   7112 25                 5190 	.db #0x25	; 37
   7113 30                 5191 	.db #0x30	; 48	'0'
   7114 30                 5192 	.db #0x30	; 48	'0'
   7115 1A                 5193 	.db #0x1A	; 26
   7116 30                 5194 	.db #0x30	; 48	'0'
   7117 30                 5195 	.db #0x30	; 48	'0'
   7118 30                 5196 	.db #0x30	; 48	'0'
   7119 30                 5197 	.db #0x30	; 48	'0'
   711A 30                 5198 	.db #0x30	; 48	'0'
   711B 30                 5199 	.db #0x30	; 48	'0'
   711C 25                 5200 	.db #0x25	; 37
   711D 30                 5201 	.db #0x30	; 48	'0'
   711E 30                 5202 	.db #0x30	; 48	'0'
   711F 1A                 5203 	.db #0x1A	; 26
   7120 30                 5204 	.db #0x30	; 48	'0'
   7121 30                 5205 	.db #0x30	; 48	'0'
   7122 30                 5206 	.db #0x30	; 48	'0'
   7123 30                 5207 	.db #0x30	; 48	'0'
   7124 30                 5208 	.db #0x30	; 48	'0'
   7125 30                 5209 	.db #0x30	; 48	'0'
   7126 25                 5210 	.db #0x25	; 37
   7127 30                 5211 	.db #0x30	; 48	'0'
   7128 30                 5212 	.db #0x30	; 48	'0'
   7129 1A                 5213 	.db #0x1A	; 26
   712A 30                 5214 	.db #0x30	; 48	'0'
   712B 30                 5215 	.db #0x30	; 48	'0'
   712C 30                 5216 	.db #0x30	; 48	'0'
   712D 30                 5217 	.db #0x30	; 48	'0'
   712E 30                 5218 	.db #0x30	; 48	'0'
   712F 30                 5219 	.db #0x30	; 48	'0'
   7130 25                 5220 	.db #0x25	; 37
   7131 30                 5221 	.db #0x30	; 48	'0'
   7132 30                 5222 	.db #0x30	; 48	'0'
   7133 0F                 5223 	.db #0x0F	; 15
   7134 30                 5224 	.db #0x30	; 48	'0'
   7135 30                 5225 	.db #0x30	; 48	'0'
   7136 30                 5226 	.db #0x30	; 48	'0'
   7137 30                 5227 	.db #0x30	; 48	'0'
   7138 30                 5228 	.db #0x30	; 48	'0'
   7139 30                 5229 	.db #0x30	; 48	'0'
   713A 0F                 5230 	.db #0x0F	; 15
   713B 30                 5231 	.db #0x30	; 48	'0'
   713C 30                 5232 	.db #0x30	; 48	'0'
   713D 25                 5233 	.db #0x25	; 37
   713E 30                 5234 	.db #0x30	; 48	'0'
   713F 30                 5235 	.db #0x30	; 48	'0'
   7140 30                 5236 	.db #0x30	; 48	'0'
   7141 30                 5237 	.db #0x30	; 48	'0'
   7142 30                 5238 	.db #0x30	; 48	'0'
   7143 30                 5239 	.db #0x30	; 48	'0'
   7144 1A                 5240 	.db #0x1A	; 26
   7145 30                 5241 	.db #0x30	; 48	'0'
   7146 30                 5242 	.db #0x30	; 48	'0'
   7147 25                 5243 	.db #0x25	; 37
   7148 0F                 5244 	.db #0x0F	; 15
   7149 0F                 5245 	.db #0x0F	; 15
   714A 0F                 5246 	.db #0x0F	; 15
   714B 0F                 5247 	.db #0x0F	; 15
   714C 0F                 5248 	.db #0x0F	; 15
   714D 0F                 5249 	.db #0x0F	; 15
   714E 1A                 5250 	.db #0x1A	; 26
   714F 30                 5251 	.db #0x30	; 48	'0'
   7150 F0                 5252 	.db #0xF0	; 240
   7151 30                 5253 	.db #0x30	; 48	'0'
   7152 30                 5254 	.db #0x30	; 48	'0'
   7153 30                 5255 	.db #0x30	; 48	'0'
   7154 30                 5256 	.db #0x30	; 48	'0'
   7155 30                 5257 	.db #0x30	; 48	'0'
   7156 30                 5258 	.db #0x30	; 48	'0'
   7157 30                 5259 	.db #0x30	; 48	'0'
   7158 30                 5260 	.db #0x30	; 48	'0'
   7159 F0                 5261 	.db #0xF0	; 240
   715A F0                 5262 	.db #0xF0	; 240
   715B 30                 5263 	.db #0x30	; 48	'0'
   715C 30                 5264 	.db #0x30	; 48	'0'
   715D 30                 5265 	.db #0x30	; 48	'0'
   715E 30                 5266 	.db #0x30	; 48	'0'
   715F 30                 5267 	.db #0x30	; 48	'0'
   7160 30                 5268 	.db #0x30	; 48	'0'
   7161 30                 5269 	.db #0x30	; 48	'0'
   7162 30                 5270 	.db #0x30	; 48	'0'
   7163 F0                 5271 	.db #0xF0	; 240
   7164                    5272 _tile_tiles_13:
   7164 F0                 5273 	.db #0xF0	; 240
   7165 30                 5274 	.db #0x30	; 48	'0'
   7166 30                 5275 	.db #0x30	; 48	'0'
   7167 30                 5276 	.db #0x30	; 48	'0'
   7168 30                 5277 	.db #0x30	; 48	'0'
   7169 30                 5278 	.db #0x30	; 48	'0'
   716A 30                 5279 	.db #0x30	; 48	'0'
   716B 30                 5280 	.db #0x30	; 48	'0'
   716C 30                 5281 	.db #0x30	; 48	'0'
   716D F0                 5282 	.db #0xF0	; 240
   716E F0                 5283 	.db #0xF0	; 240
   716F 30                 5284 	.db #0x30	; 48	'0'
   7170 30                 5285 	.db #0x30	; 48	'0'
   7171 30                 5286 	.db #0x30	; 48	'0'
   7172 30                 5287 	.db #0x30	; 48	'0'
   7173 30                 5288 	.db #0x30	; 48	'0'
   7174 30                 5289 	.db #0x30	; 48	'0'
   7175 30                 5290 	.db #0x30	; 48	'0'
   7176 30                 5291 	.db #0x30	; 48	'0'
   7177 F0                 5292 	.db #0xF0	; 240
   7178 30                 5293 	.db #0x30	; 48	'0'
   7179 25                 5294 	.db #0x25	; 37
   717A 0F                 5295 	.db #0x0F	; 15
   717B 0F                 5296 	.db #0x0F	; 15
   717C 0F                 5297 	.db #0x0F	; 15
   717D 0F                 5298 	.db #0x0F	; 15
   717E 0F                 5299 	.db #0x0F	; 15
   717F 0F                 5300 	.db #0x0F	; 15
   7180 1A                 5301 	.db #0x1A	; 26
   7181 30                 5302 	.db #0x30	; 48	'0'
   7182 30                 5303 	.db #0x30	; 48	'0'
   7183 25                 5304 	.db #0x25	; 37
   7184 30                 5305 	.db #0x30	; 48	'0'
   7185 30                 5306 	.db #0x30	; 48	'0'
   7186 30                 5307 	.db #0x30	; 48	'0'
   7187 30                 5308 	.db #0x30	; 48	'0'
   7188 30                 5309 	.db #0x30	; 48	'0'
   7189 30                 5310 	.db #0x30	; 48	'0'
   718A 1A                 5311 	.db #0x1A	; 26
   718B 30                 5312 	.db #0x30	; 48	'0'
   718C 30                 5313 	.db #0x30	; 48	'0'
   718D 0F                 5314 	.db #0x0F	; 15
   718E 30                 5315 	.db #0x30	; 48	'0'
   718F 30                 5316 	.db #0x30	; 48	'0'
   7190 30                 5317 	.db #0x30	; 48	'0'
   7191 30                 5318 	.db #0x30	; 48	'0'
   7192 30                 5319 	.db #0x30	; 48	'0'
   7193 30                 5320 	.db #0x30	; 48	'0'
   7194 0F                 5321 	.db #0x0F	; 15
   7195 30                 5322 	.db #0x30	; 48	'0'
   7196 30                 5323 	.db #0x30	; 48	'0'
   7197 1A                 5324 	.db #0x1A	; 26
   7198 30                 5325 	.db #0x30	; 48	'0'
   7199 30                 5326 	.db #0x30	; 48	'0'
   719A 30                 5327 	.db #0x30	; 48	'0'
   719B 30                 5328 	.db #0x30	; 48	'0'
   719C 30                 5329 	.db #0x30	; 48	'0'
   719D 30                 5330 	.db #0x30	; 48	'0'
   719E 25                 5331 	.db #0x25	; 37
   719F 30                 5332 	.db #0x30	; 48	'0'
   71A0 30                 5333 	.db #0x30	; 48	'0'
   71A1 1A                 5334 	.db #0x1A	; 26
   71A2 30                 5335 	.db #0x30	; 48	'0'
   71A3 30                 5336 	.db #0x30	; 48	'0'
   71A4 30                 5337 	.db #0x30	; 48	'0'
   71A5 30                 5338 	.db #0x30	; 48	'0'
   71A6 30                 5339 	.db #0x30	; 48	'0'
   71A7 30                 5340 	.db #0x30	; 48	'0'
   71A8 25                 5341 	.db #0x25	; 37
   71A9 30                 5342 	.db #0x30	; 48	'0'
   71AA 30                 5343 	.db #0x30	; 48	'0'
   71AB 1A                 5344 	.db #0x1A	; 26
   71AC 30                 5345 	.db #0x30	; 48	'0'
   71AD 30                 5346 	.db #0x30	; 48	'0'
   71AE 30                 5347 	.db #0x30	; 48	'0'
   71AF 30                 5348 	.db #0x30	; 48	'0'
   71B0 30                 5349 	.db #0x30	; 48	'0'
   71B1 30                 5350 	.db #0x30	; 48	'0'
   71B2 25                 5351 	.db #0x25	; 37
   71B3 30                 5352 	.db #0x30	; 48	'0'
   71B4 30                 5353 	.db #0x30	; 48	'0'
   71B5 1A                 5354 	.db #0x1A	; 26
   71B6 30                 5355 	.db #0x30	; 48	'0'
   71B7 30                 5356 	.db #0x30	; 48	'0'
   71B8 30                 5357 	.db #0x30	; 48	'0'
   71B9 30                 5358 	.db #0x30	; 48	'0'
   71BA 30                 5359 	.db #0x30	; 48	'0'
   71BB 30                 5360 	.db #0x30	; 48	'0'
   71BC 25                 5361 	.db #0x25	; 37
   71BD 30                 5362 	.db #0x30	; 48	'0'
   71BE 30                 5363 	.db #0x30	; 48	'0'
   71BF 1A                 5364 	.db #0x1A	; 26
   71C0 30                 5365 	.db #0x30	; 48	'0'
   71C1 30                 5366 	.db #0x30	; 48	'0'
   71C2 30                 5367 	.db #0x30	; 48	'0'
   71C3 30                 5368 	.db #0x30	; 48	'0'
   71C4 30                 5369 	.db #0x30	; 48	'0'
   71C5 30                 5370 	.db #0x30	; 48	'0'
   71C6 25                 5371 	.db #0x25	; 37
   71C7 30                 5372 	.db #0x30	; 48	'0'
   71C8 30                 5373 	.db #0x30	; 48	'0'
   71C9 1A                 5374 	.db #0x1A	; 26
   71CA 30                 5375 	.db #0x30	; 48	'0'
   71CB 30                 5376 	.db #0x30	; 48	'0'
   71CC 30                 5377 	.db #0x30	; 48	'0'
   71CD 30                 5378 	.db #0x30	; 48	'0'
   71CE 30                 5379 	.db #0x30	; 48	'0'
   71CF 30                 5380 	.db #0x30	; 48	'0'
   71D0 25                 5381 	.db #0x25	; 37
   71D1 30                 5382 	.db #0x30	; 48	'0'
   71D2 30                 5383 	.db #0x30	; 48	'0'
   71D3 1A                 5384 	.db #0x1A	; 26
   71D4 30                 5385 	.db #0x30	; 48	'0'
   71D5 30                 5386 	.db #0x30	; 48	'0'
   71D6 30                 5387 	.db #0x30	; 48	'0'
   71D7 30                 5388 	.db #0x30	; 48	'0'
   71D8 30                 5389 	.db #0x30	; 48	'0'
   71D9 30                 5390 	.db #0x30	; 48	'0'
   71DA 25                 5391 	.db #0x25	; 37
   71DB 30                 5392 	.db #0x30	; 48	'0'
   71DC 30                 5393 	.db #0x30	; 48	'0'
   71DD 1A                 5394 	.db #0x1A	; 26
   71DE 30                 5395 	.db #0x30	; 48	'0'
   71DF 30                 5396 	.db #0x30	; 48	'0'
   71E0 30                 5397 	.db #0x30	; 48	'0'
   71E1 30                 5398 	.db #0x30	; 48	'0'
   71E2 30                 5399 	.db #0x30	; 48	'0'
   71E3 30                 5400 	.db #0x30	; 48	'0'
   71E4 25                 5401 	.db #0x25	; 37
   71E5 30                 5402 	.db #0x30	; 48	'0'
   71E6 30                 5403 	.db #0x30	; 48	'0'
   71E7 1A                 5404 	.db #0x1A	; 26
   71E8 30                 5405 	.db #0x30	; 48	'0'
   71E9 30                 5406 	.db #0x30	; 48	'0'
   71EA 30                 5407 	.db #0x30	; 48	'0'
   71EB 30                 5408 	.db #0x30	; 48	'0'
   71EC 30                 5409 	.db #0x30	; 48	'0'
   71ED 30                 5410 	.db #0x30	; 48	'0'
   71EE 25                 5411 	.db #0x25	; 37
   71EF 30                 5412 	.db #0x30	; 48	'0'
   71F0 30                 5413 	.db #0x30	; 48	'0'
   71F1 1A                 5414 	.db #0x1A	; 26
   71F2 30                 5415 	.db #0x30	; 48	'0'
   71F3 30                 5416 	.db #0x30	; 48	'0'
   71F4 30                 5417 	.db #0x30	; 48	'0'
   71F5 30                 5418 	.db #0x30	; 48	'0'
   71F6 30                 5419 	.db #0x30	; 48	'0'
   71F7 30                 5420 	.db #0x30	; 48	'0'
   71F8 25                 5421 	.db #0x25	; 37
   71F9 30                 5422 	.db #0x30	; 48	'0'
   71FA 30                 5423 	.db #0x30	; 48	'0'
   71FB 1A                 5424 	.db #0x1A	; 26
   71FC 30                 5425 	.db #0x30	; 48	'0'
   71FD 30                 5426 	.db #0x30	; 48	'0'
   71FE 30                 5427 	.db #0x30	; 48	'0'
   71FF 30                 5428 	.db #0x30	; 48	'0'
   7200 30                 5429 	.db #0x30	; 48	'0'
   7201 30                 5430 	.db #0x30	; 48	'0'
   7202 25                 5431 	.db #0x25	; 37
   7203 30                 5432 	.db #0x30	; 48	'0'
   7204 30                 5433 	.db #0x30	; 48	'0'
   7205 1A                 5434 	.db #0x1A	; 26
   7206 30                 5435 	.db #0x30	; 48	'0'
   7207 30                 5436 	.db #0x30	; 48	'0'
   7208 30                 5437 	.db #0x30	; 48	'0'
   7209 30                 5438 	.db #0x30	; 48	'0'
   720A 30                 5439 	.db #0x30	; 48	'0'
   720B 30                 5440 	.db #0x30	; 48	'0'
   720C 25                 5441 	.db #0x25	; 37
   720D 30                 5442 	.db #0x30	; 48	'0'
   720E 30                 5443 	.db #0x30	; 48	'0'
   720F 4E                 5444 	.db #0x4E	; 78	'N'
   7210 30                 5445 	.db #0x30	; 48	'0'
   7211 64                 5446 	.db #0x64	; 100	'd'
   7212 30                 5447 	.db #0x30	; 48	'0'
   7213 CC                 5448 	.db #0xCC	; 204
   7214 98                 5449 	.db #0x98	; 152
   7215 64                 5450 	.db #0x64	; 100	'd'
   7216 25                 5451 	.db #0x25	; 37
   7217 30                 5452 	.db #0x30	; 48	'0'
   7218 30                 5453 	.db #0x30	; 48	'0'
   7219 98                 5454 	.db #0x98	; 152
   721A 98                 5455 	.db #0x98	; 152
   721B 98                 5456 	.db #0x98	; 152
   721C 98                 5457 	.db #0x98	; 152
   721D 30                 5458 	.db #0x30	; 48	'0'
   721E 98                 5459 	.db #0x98	; 152
   721F 98                 5460 	.db #0x98	; 152
   7220 8D                 5461 	.db #0x8D	; 141
   7221 30                 5462 	.db #0x30	; 48	'0'
   7222 30                 5463 	.db #0x30	; 48	'0'
   7223 1A                 5464 	.db #0x1A	; 26
   7224 98                 5465 	.db #0x98	; 152
   7225 98                 5466 	.db #0x98	; 152
   7226 98                 5467 	.db #0x98	; 152
   7227 30                 5468 	.db #0x30	; 48	'0'
   7228 98                 5469 	.db #0x98	; 152
   7229 30                 5470 	.db #0x30	; 48	'0'
   722A 8D                 5471 	.db #0x8D	; 141
   722B 30                 5472 	.db #0x30	; 48	'0'
   722C 30                 5473 	.db #0x30	; 48	'0'
   722D 4E                 5474 	.db #0x4E	; 78	'N'
   722E 30                 5475 	.db #0x30	; 48	'0'
   722F 98                 5476 	.db #0x98	; 152
   7230 98                 5477 	.db #0x98	; 152
   7231 30                 5478 	.db #0x30	; 48	'0'
   7232 98                 5479 	.db #0x98	; 152
   7233 64                 5480 	.db #0x64	; 100	'd'
   7234 25                 5481 	.db #0x25	; 37
   7235 30                 5482 	.db #0x30	; 48	'0'
   7236 30                 5483 	.db #0x30	; 48	'0'
   7237 4E                 5484 	.db #0x4E	; 78	'N'
   7238 30                 5485 	.db #0x30	; 48	'0'
   7239 98                 5486 	.db #0x98	; 152
   723A 98                 5487 	.db #0x98	; 152
   723B 64                 5488 	.db #0x64	; 100	'd'
   723C 30                 5489 	.db #0x30	; 48	'0'
   723D 64                 5490 	.db #0x64	; 100	'd'
   723E 25                 5491 	.db #0x25	; 37
   723F 30                 5492 	.db #0x30	; 48	'0'
   7240 30                 5493 	.db #0x30	; 48	'0'
   7241 1A                 5494 	.db #0x1A	; 26
   7242 98                 5495 	.db #0x98	; 152
   7243 98                 5496 	.db #0x98	; 152
   7244 98                 5497 	.db #0x98	; 152
   7245 64                 5498 	.db #0x64	; 100	'd'
   7246 30                 5499 	.db #0x30	; 48	'0'
   7247 98                 5500 	.db #0x98	; 152
   7248 25                 5501 	.db #0x25	; 37
   7249 30                 5502 	.db #0x30	; 48	'0'
   724A 30                 5503 	.db #0x30	; 48	'0'
   724B 98                 5504 	.db #0x98	; 152
   724C 98                 5505 	.db #0x98	; 152
   724D 98                 5506 	.db #0x98	; 152
   724E 98                 5507 	.db #0x98	; 152
   724F 64                 5508 	.db #0x64	; 100	'd'
   7250 30                 5509 	.db #0x30	; 48	'0'
   7251 98                 5510 	.db #0x98	; 152
   7252 25                 5511 	.db #0x25	; 37
   7253 30                 5512 	.db #0x30	; 48	'0'
   7254 30                 5513 	.db #0x30	; 48	'0'
   7255 4E                 5514 	.db #0x4E	; 78	'N'
   7256 30                 5515 	.db #0x30	; 48	'0'
   7257 64                 5516 	.db #0x64	; 100	'd'
   7258 30                 5517 	.db #0x30	; 48	'0'
   7259 64                 5518 	.db #0x64	; 100	'd'
   725A 30                 5519 	.db #0x30	; 48	'0'
   725B CC                 5520 	.db #0xCC	; 204
   725C 8D                 5521 	.db #0x8D	; 141
   725D 30                 5522 	.db #0x30	; 48	'0'
   725E 30                 5523 	.db #0x30	; 48	'0'
   725F 1A                 5524 	.db #0x1A	; 26
   7260 30                 5525 	.db #0x30	; 48	'0'
   7261 30                 5526 	.db #0x30	; 48	'0'
   7262 30                 5527 	.db #0x30	; 48	'0'
   7263 30                 5528 	.db #0x30	; 48	'0'
   7264 30                 5529 	.db #0x30	; 48	'0'
   7265 30                 5530 	.db #0x30	; 48	'0'
   7266 25                 5531 	.db #0x25	; 37
   7267 30                 5532 	.db #0x30	; 48	'0'
   7268 30                 5533 	.db #0x30	; 48	'0'
   7269 1A                 5534 	.db #0x1A	; 26
   726A 30                 5535 	.db #0x30	; 48	'0'
   726B 30                 5536 	.db #0x30	; 48	'0'
   726C 30                 5537 	.db #0x30	; 48	'0'
   726D 30                 5538 	.db #0x30	; 48	'0'
   726E 30                 5539 	.db #0x30	; 48	'0'
   726F 30                 5540 	.db #0x30	; 48	'0'
   7270 25                 5541 	.db #0x25	; 37
   7271 30                 5542 	.db #0x30	; 48	'0'
   7272 30                 5543 	.db #0x30	; 48	'0'
   7273 1A                 5544 	.db #0x1A	; 26
   7274 30                 5545 	.db #0x30	; 48	'0'
   7275 30                 5546 	.db #0x30	; 48	'0'
   7276 30                 5547 	.db #0x30	; 48	'0'
   7277 30                 5548 	.db #0x30	; 48	'0'
   7278 30                 5549 	.db #0x30	; 48	'0'
   7279 30                 5550 	.db #0x30	; 48	'0'
   727A 25                 5551 	.db #0x25	; 37
   727B 30                 5552 	.db #0x30	; 48	'0'
   727C 30                 5553 	.db #0x30	; 48	'0'
   727D 1A                 5554 	.db #0x1A	; 26
   727E 30                 5555 	.db #0x30	; 48	'0'
   727F 30                 5556 	.db #0x30	; 48	'0'
   7280 30                 5557 	.db #0x30	; 48	'0'
   7281 30                 5558 	.db #0x30	; 48	'0'
   7282 30                 5559 	.db #0x30	; 48	'0'
   7283 30                 5560 	.db #0x30	; 48	'0'
   7284 25                 5561 	.db #0x25	; 37
   7285 30                 5562 	.db #0x30	; 48	'0'
   7286 30                 5563 	.db #0x30	; 48	'0'
   7287 1A                 5564 	.db #0x1A	; 26
   7288 30                 5565 	.db #0x30	; 48	'0'
   7289 30                 5566 	.db #0x30	; 48	'0'
   728A 30                 5567 	.db #0x30	; 48	'0'
   728B 30                 5568 	.db #0x30	; 48	'0'
   728C 30                 5569 	.db #0x30	; 48	'0'
   728D 30                 5570 	.db #0x30	; 48	'0'
   728E 25                 5571 	.db #0x25	; 37
   728F 30                 5572 	.db #0x30	; 48	'0'
   7290 30                 5573 	.db #0x30	; 48	'0'
   7291 1A                 5574 	.db #0x1A	; 26
   7292 30                 5575 	.db #0x30	; 48	'0'
   7293 30                 5576 	.db #0x30	; 48	'0'
   7294 30                 5577 	.db #0x30	; 48	'0'
   7295 30                 5578 	.db #0x30	; 48	'0'
   7296 30                 5579 	.db #0x30	; 48	'0'
   7297 30                 5580 	.db #0x30	; 48	'0'
   7298 25                 5581 	.db #0x25	; 37
   7299 30                 5582 	.db #0x30	; 48	'0'
   729A 30                 5583 	.db #0x30	; 48	'0'
   729B 1A                 5584 	.db #0x1A	; 26
   729C 30                 5585 	.db #0x30	; 48	'0'
   729D 30                 5586 	.db #0x30	; 48	'0'
   729E 30                 5587 	.db #0x30	; 48	'0'
   729F 30                 5588 	.db #0x30	; 48	'0'
   72A0 30                 5589 	.db #0x30	; 48	'0'
   72A1 30                 5590 	.db #0x30	; 48	'0'
   72A2 25                 5591 	.db #0x25	; 37
   72A3 30                 5592 	.db #0x30	; 48	'0'
   72A4 30                 5593 	.db #0x30	; 48	'0'
   72A5 1A                 5594 	.db #0x1A	; 26
   72A6 30                 5595 	.db #0x30	; 48	'0'
   72A7 30                 5596 	.db #0x30	; 48	'0'
   72A8 30                 5597 	.db #0x30	; 48	'0'
   72A9 30                 5598 	.db #0x30	; 48	'0'
   72AA 30                 5599 	.db #0x30	; 48	'0'
   72AB 30                 5600 	.db #0x30	; 48	'0'
   72AC 25                 5601 	.db #0x25	; 37
   72AD 30                 5602 	.db #0x30	; 48	'0'
   72AE 30                 5603 	.db #0x30	; 48	'0'
   72AF 1A                 5604 	.db #0x1A	; 26
   72B0 30                 5605 	.db #0x30	; 48	'0'
   72B1 30                 5606 	.db #0x30	; 48	'0'
   72B2 30                 5607 	.db #0x30	; 48	'0'
   72B3 30                 5608 	.db #0x30	; 48	'0'
   72B4 30                 5609 	.db #0x30	; 48	'0'
   72B5 30                 5610 	.db #0x30	; 48	'0'
   72B6 25                 5611 	.db #0x25	; 37
   72B7 30                 5612 	.db #0x30	; 48	'0'
   72B8 30                 5613 	.db #0x30	; 48	'0'
   72B9 1A                 5614 	.db #0x1A	; 26
   72BA 30                 5615 	.db #0x30	; 48	'0'
   72BB 30                 5616 	.db #0x30	; 48	'0'
   72BC 30                 5617 	.db #0x30	; 48	'0'
   72BD 30                 5618 	.db #0x30	; 48	'0'
   72BE 30                 5619 	.db #0x30	; 48	'0'
   72BF 30                 5620 	.db #0x30	; 48	'0'
   72C0 25                 5621 	.db #0x25	; 37
   72C1 30                 5622 	.db #0x30	; 48	'0'
   72C2 30                 5623 	.db #0x30	; 48	'0'
   72C3 0F                 5624 	.db #0x0F	; 15
   72C4 30                 5625 	.db #0x30	; 48	'0'
   72C5 30                 5626 	.db #0x30	; 48	'0'
   72C6 30                 5627 	.db #0x30	; 48	'0'
   72C7 30                 5628 	.db #0x30	; 48	'0'
   72C8 30                 5629 	.db #0x30	; 48	'0'
   72C9 30                 5630 	.db #0x30	; 48	'0'
   72CA 0F                 5631 	.db #0x0F	; 15
   72CB 30                 5632 	.db #0x30	; 48	'0'
   72CC 30                 5633 	.db #0x30	; 48	'0'
   72CD 25                 5634 	.db #0x25	; 37
   72CE 30                 5635 	.db #0x30	; 48	'0'
   72CF 30                 5636 	.db #0x30	; 48	'0'
   72D0 30                 5637 	.db #0x30	; 48	'0'
   72D1 30                 5638 	.db #0x30	; 48	'0'
   72D2 30                 5639 	.db #0x30	; 48	'0'
   72D3 30                 5640 	.db #0x30	; 48	'0'
   72D4 1A                 5641 	.db #0x1A	; 26
   72D5 30                 5642 	.db #0x30	; 48	'0'
   72D6 30                 5643 	.db #0x30	; 48	'0'
   72D7 25                 5644 	.db #0x25	; 37
   72D8 0F                 5645 	.db #0x0F	; 15
   72D9 0F                 5646 	.db #0x0F	; 15
   72DA 0F                 5647 	.db #0x0F	; 15
   72DB 0F                 5648 	.db #0x0F	; 15
   72DC 0F                 5649 	.db #0x0F	; 15
   72DD 0F                 5650 	.db #0x0F	; 15
   72DE 1A                 5651 	.db #0x1A	; 26
   72DF 30                 5652 	.db #0x30	; 48	'0'
   72E0 F0                 5653 	.db #0xF0	; 240
   72E1 30                 5654 	.db #0x30	; 48	'0'
   72E2 30                 5655 	.db #0x30	; 48	'0'
   72E3 30                 5656 	.db #0x30	; 48	'0'
   72E4 30                 5657 	.db #0x30	; 48	'0'
   72E5 30                 5658 	.db #0x30	; 48	'0'
   72E6 30                 5659 	.db #0x30	; 48	'0'
   72E7 30                 5660 	.db #0x30	; 48	'0'
   72E8 30                 5661 	.db #0x30	; 48	'0'
   72E9 F0                 5662 	.db #0xF0	; 240
   72EA F0                 5663 	.db #0xF0	; 240
   72EB 30                 5664 	.db #0x30	; 48	'0'
   72EC 30                 5665 	.db #0x30	; 48	'0'
   72ED 30                 5666 	.db #0x30	; 48	'0'
   72EE 30                 5667 	.db #0x30	; 48	'0'
   72EF 30                 5668 	.db #0x30	; 48	'0'
   72F0 30                 5669 	.db #0x30	; 48	'0'
   72F1 30                 5670 	.db #0x30	; 48	'0'
   72F2 30                 5671 	.db #0x30	; 48	'0'
   72F3 F0                 5672 	.db #0xF0	; 240
   72F4                    5673 _tile_tiles_14:
   72F4 F0                 5674 	.db #0xF0	; 240
   72F5 30                 5675 	.db #0x30	; 48	'0'
   72F6 30                 5676 	.db #0x30	; 48	'0'
   72F7 30                 5677 	.db #0x30	; 48	'0'
   72F8 30                 5678 	.db #0x30	; 48	'0'
   72F9 30                 5679 	.db #0x30	; 48	'0'
   72FA 30                 5680 	.db #0x30	; 48	'0'
   72FB 30                 5681 	.db #0x30	; 48	'0'
   72FC 30                 5682 	.db #0x30	; 48	'0'
   72FD F0                 5683 	.db #0xF0	; 240
   72FE F0                 5684 	.db #0xF0	; 240
   72FF 30                 5685 	.db #0x30	; 48	'0'
   7300 30                 5686 	.db #0x30	; 48	'0'
   7301 30                 5687 	.db #0x30	; 48	'0'
   7302 30                 5688 	.db #0x30	; 48	'0'
   7303 30                 5689 	.db #0x30	; 48	'0'
   7304 30                 5690 	.db #0x30	; 48	'0'
   7305 30                 5691 	.db #0x30	; 48	'0'
   7306 30                 5692 	.db #0x30	; 48	'0'
   7307 F0                 5693 	.db #0xF0	; 240
   7308 30                 5694 	.db #0x30	; 48	'0'
   7309 25                 5695 	.db #0x25	; 37
   730A 0F                 5696 	.db #0x0F	; 15
   730B 0F                 5697 	.db #0x0F	; 15
   730C 0F                 5698 	.db #0x0F	; 15
   730D 0F                 5699 	.db #0x0F	; 15
   730E 0F                 5700 	.db #0x0F	; 15
   730F 0F                 5701 	.db #0x0F	; 15
   7310 1A                 5702 	.db #0x1A	; 26
   7311 30                 5703 	.db #0x30	; 48	'0'
   7312 30                 5704 	.db #0x30	; 48	'0'
   7313 25                 5705 	.db #0x25	; 37
   7314 30                 5706 	.db #0x30	; 48	'0'
   7315 30                 5707 	.db #0x30	; 48	'0'
   7316 30                 5708 	.db #0x30	; 48	'0'
   7317 30                 5709 	.db #0x30	; 48	'0'
   7318 30                 5710 	.db #0x30	; 48	'0'
   7319 30                 5711 	.db #0x30	; 48	'0'
   731A 1A                 5712 	.db #0x1A	; 26
   731B 30                 5713 	.db #0x30	; 48	'0'
   731C 30                 5714 	.db #0x30	; 48	'0'
   731D 0F                 5715 	.db #0x0F	; 15
   731E 30                 5716 	.db #0x30	; 48	'0'
   731F 30                 5717 	.db #0x30	; 48	'0'
   7320 30                 5718 	.db #0x30	; 48	'0'
   7321 30                 5719 	.db #0x30	; 48	'0'
   7322 30                 5720 	.db #0x30	; 48	'0'
   7323 30                 5721 	.db #0x30	; 48	'0'
   7324 0F                 5722 	.db #0x0F	; 15
   7325 30                 5723 	.db #0x30	; 48	'0'
   7326 30                 5724 	.db #0x30	; 48	'0'
   7327 1A                 5725 	.db #0x1A	; 26
   7328 30                 5726 	.db #0x30	; 48	'0'
   7329 30                 5727 	.db #0x30	; 48	'0'
   732A 30                 5728 	.db #0x30	; 48	'0'
   732B 30                 5729 	.db #0x30	; 48	'0'
   732C 30                 5730 	.db #0x30	; 48	'0'
   732D 30                 5731 	.db #0x30	; 48	'0'
   732E 25                 5732 	.db #0x25	; 37
   732F 30                 5733 	.db #0x30	; 48	'0'
   7330 30                 5734 	.db #0x30	; 48	'0'
   7331 1A                 5735 	.db #0x1A	; 26
   7332 30                 5736 	.db #0x30	; 48	'0'
   7333 30                 5737 	.db #0x30	; 48	'0'
   7334 30                 5738 	.db #0x30	; 48	'0'
   7335 30                 5739 	.db #0x30	; 48	'0'
   7336 30                 5740 	.db #0x30	; 48	'0'
   7337 30                 5741 	.db #0x30	; 48	'0'
   7338 25                 5742 	.db #0x25	; 37
   7339 30                 5743 	.db #0x30	; 48	'0'
   733A 30                 5744 	.db #0x30	; 48	'0'
   733B 1A                 5745 	.db #0x1A	; 26
   733C 30                 5746 	.db #0x30	; 48	'0'
   733D 30                 5747 	.db #0x30	; 48	'0'
   733E 30                 5748 	.db #0x30	; 48	'0'
   733F 30                 5749 	.db #0x30	; 48	'0'
   7340 30                 5750 	.db #0x30	; 48	'0'
   7341 30                 5751 	.db #0x30	; 48	'0'
   7342 25                 5752 	.db #0x25	; 37
   7343 30                 5753 	.db #0x30	; 48	'0'
   7344 30                 5754 	.db #0x30	; 48	'0'
   7345 1A                 5755 	.db #0x1A	; 26
   7346 30                 5756 	.db #0x30	; 48	'0'
   7347 30                 5757 	.db #0x30	; 48	'0'
   7348 30                 5758 	.db #0x30	; 48	'0'
   7349 30                 5759 	.db #0x30	; 48	'0'
   734A 30                 5760 	.db #0x30	; 48	'0'
   734B 30                 5761 	.db #0x30	; 48	'0'
   734C 25                 5762 	.db #0x25	; 37
   734D 30                 5763 	.db #0x30	; 48	'0'
   734E 30                 5764 	.db #0x30	; 48	'0'
   734F 1A                 5765 	.db #0x1A	; 26
   7350 30                 5766 	.db #0x30	; 48	'0'
   7351 30                 5767 	.db #0x30	; 48	'0'
   7352 30                 5768 	.db #0x30	; 48	'0'
   7353 30                 5769 	.db #0x30	; 48	'0'
   7354 30                 5770 	.db #0x30	; 48	'0'
   7355 30                 5771 	.db #0x30	; 48	'0'
   7356 25                 5772 	.db #0x25	; 37
   7357 30                 5773 	.db #0x30	; 48	'0'
   7358 30                 5774 	.db #0x30	; 48	'0'
   7359 1A                 5775 	.db #0x1A	; 26
   735A 30                 5776 	.db #0x30	; 48	'0'
   735B 30                 5777 	.db #0x30	; 48	'0'
   735C 30                 5778 	.db #0x30	; 48	'0'
   735D 30                 5779 	.db #0x30	; 48	'0'
   735E 30                 5780 	.db #0x30	; 48	'0'
   735F 30                 5781 	.db #0x30	; 48	'0'
   7360 25                 5782 	.db #0x25	; 37
   7361 30                 5783 	.db #0x30	; 48	'0'
   7362 30                 5784 	.db #0x30	; 48	'0'
   7363 1A                 5785 	.db #0x1A	; 26
   7364 30                 5786 	.db #0x30	; 48	'0'
   7365 30                 5787 	.db #0x30	; 48	'0'
   7366 30                 5788 	.db #0x30	; 48	'0'
   7367 30                 5789 	.db #0x30	; 48	'0'
   7368 30                 5790 	.db #0x30	; 48	'0'
   7369 30                 5791 	.db #0x30	; 48	'0'
   736A 25                 5792 	.db #0x25	; 37
   736B 30                 5793 	.db #0x30	; 48	'0'
   736C 30                 5794 	.db #0x30	; 48	'0'
   736D 1A                 5795 	.db #0x1A	; 26
   736E 30                 5796 	.db #0x30	; 48	'0'
   736F 30                 5797 	.db #0x30	; 48	'0'
   7370 30                 5798 	.db #0x30	; 48	'0'
   7371 30                 5799 	.db #0x30	; 48	'0'
   7372 30                 5800 	.db #0x30	; 48	'0'
   7373 30                 5801 	.db #0x30	; 48	'0'
   7374 25                 5802 	.db #0x25	; 37
   7375 30                 5803 	.db #0x30	; 48	'0'
   7376 30                 5804 	.db #0x30	; 48	'0'
   7377 1A                 5805 	.db #0x1A	; 26
   7378 30                 5806 	.db #0x30	; 48	'0'
   7379 30                 5807 	.db #0x30	; 48	'0'
   737A 30                 5808 	.db #0x30	; 48	'0'
   737B 30                 5809 	.db #0x30	; 48	'0'
   737C 30                 5810 	.db #0x30	; 48	'0'
   737D 30                 5811 	.db #0x30	; 48	'0'
   737E 25                 5812 	.db #0x25	; 37
   737F 30                 5813 	.db #0x30	; 48	'0'
   7380 30                 5814 	.db #0x30	; 48	'0'
   7381 1A                 5815 	.db #0x1A	; 26
   7382 30                 5816 	.db #0x30	; 48	'0'
   7383 30                 5817 	.db #0x30	; 48	'0'
   7384 30                 5818 	.db #0x30	; 48	'0'
   7385 30                 5819 	.db #0x30	; 48	'0'
   7386 30                 5820 	.db #0x30	; 48	'0'
   7387 30                 5821 	.db #0x30	; 48	'0'
   7388 25                 5822 	.db #0x25	; 37
   7389 30                 5823 	.db #0x30	; 48	'0'
   738A 30                 5824 	.db #0x30	; 48	'0'
   738B 1A                 5825 	.db #0x1A	; 26
   738C 30                 5826 	.db #0x30	; 48	'0'
   738D 30                 5827 	.db #0x30	; 48	'0'
   738E 30                 5828 	.db #0x30	; 48	'0'
   738F 30                 5829 	.db #0x30	; 48	'0'
   7390 30                 5830 	.db #0x30	; 48	'0'
   7391 30                 5831 	.db #0x30	; 48	'0'
   7392 25                 5832 	.db #0x25	; 37
   7393 30                 5833 	.db #0x30	; 48	'0'
   7394 30                 5834 	.db #0x30	; 48	'0'
   7395 1A                 5835 	.db #0x1A	; 26
   7396 30                 5836 	.db #0x30	; 48	'0'
   7397 30                 5837 	.db #0x30	; 48	'0'
   7398 30                 5838 	.db #0x30	; 48	'0'
   7399 30                 5839 	.db #0x30	; 48	'0'
   739A 30                 5840 	.db #0x30	; 48	'0'
   739B 30                 5841 	.db #0x30	; 48	'0'
   739C 25                 5842 	.db #0x25	; 37
   739D 30                 5843 	.db #0x30	; 48	'0'
   739E 30                 5844 	.db #0x30	; 48	'0'
   739F 4E                 5845 	.db #0x4E	; 78	'N'
   73A0 98                 5846 	.db #0x98	; 152
   73A1 64                 5847 	.db #0x64	; 100	'd'
   73A2 30                 5848 	.db #0x30	; 48	'0'
   73A3 30                 5849 	.db #0x30	; 48	'0'
   73A4 98                 5850 	.db #0x98	; 152
   73A5 30                 5851 	.db #0x30	; 48	'0'
   73A6 8D                 5852 	.db #0x8D	; 141
   73A7 30                 5853 	.db #0x30	; 48	'0'
   73A8 30                 5854 	.db #0x30	; 48	'0'
   73A9 98                 5855 	.db #0x98	; 152
   73AA 30                 5856 	.db #0x30	; 48	'0'
   73AB CC                 5857 	.db #0xCC	; 204
   73AC 30                 5858 	.db #0x30	; 48	'0'
   73AD 64                 5859 	.db #0x64	; 100	'd'
   73AE 98                 5860 	.db #0x98	; 152
   73AF 64                 5861 	.db #0x64	; 100	'd'
   73B0 8D                 5862 	.db #0x8D	; 141
   73B1 30                 5863 	.db #0x30	; 48	'0'
   73B2 30                 5864 	.db #0x30	; 48	'0'
   73B3 98                 5865 	.db #0x98	; 152
   73B4 30                 5866 	.db #0x30	; 48	'0'
   73B5 64                 5867 	.db #0x64	; 100	'd'
   73B6 30                 5868 	.db #0x30	; 48	'0'
   73B7 64                 5869 	.db #0x64	; 100	'd'
   73B8 98                 5870 	.db #0x98	; 152
   73B9 64                 5871 	.db #0x64	; 100	'd'
   73BA 8D                 5872 	.db #0x8D	; 141
   73BB 30                 5873 	.db #0x30	; 48	'0'
   73BC 30                 5874 	.db #0x30	; 48	'0'
   73BD CC                 5875 	.db #0xCC	; 204
   73BE 30                 5876 	.db #0x30	; 48	'0'
   73BF 64                 5877 	.db #0x64	; 100	'd'
   73C0 30                 5878 	.db #0x30	; 48	'0'
   73C1 98                 5879 	.db #0x98	; 152
   73C2 98                 5880 	.db #0x98	; 152
   73C3 98                 5881 	.db #0x98	; 152
   73C4 8D                 5882 	.db #0x8D	; 141
   73C5 30                 5883 	.db #0x30	; 48	'0'
   73C6 30                 5884 	.db #0x30	; 48	'0'
   73C7 98                 5885 	.db #0x98	; 152
   73C8 98                 5886 	.db #0x98	; 152
   73C9 64                 5887 	.db #0x64	; 100	'd'
   73CA 30                 5888 	.db #0x30	; 48	'0'
   73CB CC                 5889 	.db #0xCC	; 204
   73CC 98                 5890 	.db #0x98	; 152
   73CD CC                 5891 	.db #0xCC	; 204
   73CE 8D                 5892 	.db #0x8D	; 141
   73CF 30                 5893 	.db #0x30	; 48	'0'
   73D0 30                 5894 	.db #0x30	; 48	'0'
   73D1 98                 5895 	.db #0x98	; 152
   73D2 98                 5896 	.db #0x98	; 152
   73D3 64                 5897 	.db #0x64	; 100	'd'
   73D4 30                 5898 	.db #0x30	; 48	'0'
   73D5 30                 5899 	.db #0x30	; 48	'0'
   73D6 98                 5900 	.db #0x98	; 152
   73D7 30                 5901 	.db #0x30	; 48	'0'
   73D8 8D                 5902 	.db #0x8D	; 141
   73D9 30                 5903 	.db #0x30	; 48	'0'
   73DA 30                 5904 	.db #0x30	; 48	'0'
   73DB 98                 5905 	.db #0x98	; 152
   73DC 98                 5906 	.db #0x98	; 152
   73DD 64                 5907 	.db #0x64	; 100	'd'
   73DE 30                 5908 	.db #0x30	; 48	'0'
   73DF 30                 5909 	.db #0x30	; 48	'0'
   73E0 98                 5910 	.db #0x98	; 152
   73E1 30                 5911 	.db #0x30	; 48	'0'
   73E2 8D                 5912 	.db #0x8D	; 141
   73E3 30                 5913 	.db #0x30	; 48	'0'
   73E4 30                 5914 	.db #0x30	; 48	'0'
   73E5 4E                 5915 	.db #0x4E	; 78	'N'
   73E6 30                 5916 	.db #0x30	; 48	'0'
   73E7 CC                 5917 	.db #0xCC	; 204
   73E8 98                 5918 	.db #0x98	; 152
   73E9 30                 5919 	.db #0x30	; 48	'0'
   73EA 98                 5920 	.db #0x98	; 152
   73EB 30                 5921 	.db #0x30	; 48	'0'
   73EC 8D                 5922 	.db #0x8D	; 141
   73ED 30                 5923 	.db #0x30	; 48	'0'
   73EE 30                 5924 	.db #0x30	; 48	'0'
   73EF 1A                 5925 	.db #0x1A	; 26
   73F0 30                 5926 	.db #0x30	; 48	'0'
   73F1 30                 5927 	.db #0x30	; 48	'0'
   73F2 30                 5928 	.db #0x30	; 48	'0'
   73F3 30                 5929 	.db #0x30	; 48	'0'
   73F4 30                 5930 	.db #0x30	; 48	'0'
   73F5 30                 5931 	.db #0x30	; 48	'0'
   73F6 25                 5932 	.db #0x25	; 37
   73F7 30                 5933 	.db #0x30	; 48	'0'
   73F8 30                 5934 	.db #0x30	; 48	'0'
   73F9 1A                 5935 	.db #0x1A	; 26
   73FA 30                 5936 	.db #0x30	; 48	'0'
   73FB 30                 5937 	.db #0x30	; 48	'0'
   73FC 30                 5938 	.db #0x30	; 48	'0'
   73FD 30                 5939 	.db #0x30	; 48	'0'
   73FE 30                 5940 	.db #0x30	; 48	'0'
   73FF 30                 5941 	.db #0x30	; 48	'0'
   7400 25                 5942 	.db #0x25	; 37
   7401 30                 5943 	.db #0x30	; 48	'0'
   7402 30                 5944 	.db #0x30	; 48	'0'
   7403 1A                 5945 	.db #0x1A	; 26
   7404 30                 5946 	.db #0x30	; 48	'0'
   7405 30                 5947 	.db #0x30	; 48	'0'
   7406 30                 5948 	.db #0x30	; 48	'0'
   7407 30                 5949 	.db #0x30	; 48	'0'
   7408 30                 5950 	.db #0x30	; 48	'0'
   7409 30                 5951 	.db #0x30	; 48	'0'
   740A 25                 5952 	.db #0x25	; 37
   740B 30                 5953 	.db #0x30	; 48	'0'
   740C 30                 5954 	.db #0x30	; 48	'0'
   740D 1A                 5955 	.db #0x1A	; 26
   740E 30                 5956 	.db #0x30	; 48	'0'
   740F 30                 5957 	.db #0x30	; 48	'0'
   7410 30                 5958 	.db #0x30	; 48	'0'
   7411 30                 5959 	.db #0x30	; 48	'0'
   7412 30                 5960 	.db #0x30	; 48	'0'
   7413 30                 5961 	.db #0x30	; 48	'0'
   7414 25                 5962 	.db #0x25	; 37
   7415 30                 5963 	.db #0x30	; 48	'0'
   7416 30                 5964 	.db #0x30	; 48	'0'
   7417 1A                 5965 	.db #0x1A	; 26
   7418 30                 5966 	.db #0x30	; 48	'0'
   7419 30                 5967 	.db #0x30	; 48	'0'
   741A 30                 5968 	.db #0x30	; 48	'0'
   741B 30                 5969 	.db #0x30	; 48	'0'
   741C 30                 5970 	.db #0x30	; 48	'0'
   741D 30                 5971 	.db #0x30	; 48	'0'
   741E 25                 5972 	.db #0x25	; 37
   741F 30                 5973 	.db #0x30	; 48	'0'
   7420 30                 5974 	.db #0x30	; 48	'0'
   7421 1A                 5975 	.db #0x1A	; 26
   7422 30                 5976 	.db #0x30	; 48	'0'
   7423 30                 5977 	.db #0x30	; 48	'0'
   7424 30                 5978 	.db #0x30	; 48	'0'
   7425 30                 5979 	.db #0x30	; 48	'0'
   7426 30                 5980 	.db #0x30	; 48	'0'
   7427 30                 5981 	.db #0x30	; 48	'0'
   7428 25                 5982 	.db #0x25	; 37
   7429 30                 5983 	.db #0x30	; 48	'0'
   742A 30                 5984 	.db #0x30	; 48	'0'
   742B 1A                 5985 	.db #0x1A	; 26
   742C 30                 5986 	.db #0x30	; 48	'0'
   742D 30                 5987 	.db #0x30	; 48	'0'
   742E 30                 5988 	.db #0x30	; 48	'0'
   742F 30                 5989 	.db #0x30	; 48	'0'
   7430 30                 5990 	.db #0x30	; 48	'0'
   7431 30                 5991 	.db #0x30	; 48	'0'
   7432 25                 5992 	.db #0x25	; 37
   7433 30                 5993 	.db #0x30	; 48	'0'
   7434 30                 5994 	.db #0x30	; 48	'0'
   7435 1A                 5995 	.db #0x1A	; 26
   7436 30                 5996 	.db #0x30	; 48	'0'
   7437 30                 5997 	.db #0x30	; 48	'0'
   7438 30                 5998 	.db #0x30	; 48	'0'
   7439 30                 5999 	.db #0x30	; 48	'0'
   743A 30                 6000 	.db #0x30	; 48	'0'
   743B 30                 6001 	.db #0x30	; 48	'0'
   743C 25                 6002 	.db #0x25	; 37
   743D 30                 6003 	.db #0x30	; 48	'0'
   743E 30                 6004 	.db #0x30	; 48	'0'
   743F 1A                 6005 	.db #0x1A	; 26
   7440 30                 6006 	.db #0x30	; 48	'0'
   7441 30                 6007 	.db #0x30	; 48	'0'
   7442 30                 6008 	.db #0x30	; 48	'0'
   7443 30                 6009 	.db #0x30	; 48	'0'
   7444 30                 6010 	.db #0x30	; 48	'0'
   7445 30                 6011 	.db #0x30	; 48	'0'
   7446 25                 6012 	.db #0x25	; 37
   7447 30                 6013 	.db #0x30	; 48	'0'
   7448 30                 6014 	.db #0x30	; 48	'0'
   7449 1A                 6015 	.db #0x1A	; 26
   744A 30                 6016 	.db #0x30	; 48	'0'
   744B 30                 6017 	.db #0x30	; 48	'0'
   744C 30                 6018 	.db #0x30	; 48	'0'
   744D 30                 6019 	.db #0x30	; 48	'0'
   744E 30                 6020 	.db #0x30	; 48	'0'
   744F 30                 6021 	.db #0x30	; 48	'0'
   7450 25                 6022 	.db #0x25	; 37
   7451 30                 6023 	.db #0x30	; 48	'0'
   7452 30                 6024 	.db #0x30	; 48	'0'
   7453 0F                 6025 	.db #0x0F	; 15
   7454 30                 6026 	.db #0x30	; 48	'0'
   7455 30                 6027 	.db #0x30	; 48	'0'
   7456 30                 6028 	.db #0x30	; 48	'0'
   7457 30                 6029 	.db #0x30	; 48	'0'
   7458 30                 6030 	.db #0x30	; 48	'0'
   7459 30                 6031 	.db #0x30	; 48	'0'
   745A 0F                 6032 	.db #0x0F	; 15
   745B 30                 6033 	.db #0x30	; 48	'0'
   745C 30                 6034 	.db #0x30	; 48	'0'
   745D 25                 6035 	.db #0x25	; 37
   745E 30                 6036 	.db #0x30	; 48	'0'
   745F 30                 6037 	.db #0x30	; 48	'0'
   7460 30                 6038 	.db #0x30	; 48	'0'
   7461 30                 6039 	.db #0x30	; 48	'0'
   7462 30                 6040 	.db #0x30	; 48	'0'
   7463 30                 6041 	.db #0x30	; 48	'0'
   7464 1A                 6042 	.db #0x1A	; 26
   7465 30                 6043 	.db #0x30	; 48	'0'
   7466 30                 6044 	.db #0x30	; 48	'0'
   7467 25                 6045 	.db #0x25	; 37
   7468 0F                 6046 	.db #0x0F	; 15
   7469 0F                 6047 	.db #0x0F	; 15
   746A 0F                 6048 	.db #0x0F	; 15
   746B 0F                 6049 	.db #0x0F	; 15
   746C 0F                 6050 	.db #0x0F	; 15
   746D 0F                 6051 	.db #0x0F	; 15
   746E 1A                 6052 	.db #0x1A	; 26
   746F 30                 6053 	.db #0x30	; 48	'0'
   7470 F0                 6054 	.db #0xF0	; 240
   7471 30                 6055 	.db #0x30	; 48	'0'
   7472 30                 6056 	.db #0x30	; 48	'0'
   7473 30                 6057 	.db #0x30	; 48	'0'
   7474 30                 6058 	.db #0x30	; 48	'0'
   7475 30                 6059 	.db #0x30	; 48	'0'
   7476 30                 6060 	.db #0x30	; 48	'0'
   7477 30                 6061 	.db #0x30	; 48	'0'
   7478 30                 6062 	.db #0x30	; 48	'0'
   7479 F0                 6063 	.db #0xF0	; 240
   747A F0                 6064 	.db #0xF0	; 240
   747B 30                 6065 	.db #0x30	; 48	'0'
   747C 30                 6066 	.db #0x30	; 48	'0'
   747D 30                 6067 	.db #0x30	; 48	'0'
   747E 30                 6068 	.db #0x30	; 48	'0'
   747F 30                 6069 	.db #0x30	; 48	'0'
   7480 30                 6070 	.db #0x30	; 48	'0'
   7481 30                 6071 	.db #0x30	; 48	'0'
   7482 30                 6072 	.db #0x30	; 48	'0'
   7483 F0                 6073 	.db #0xF0	; 240
   7484                    6074 _tile_tiles_15:
   7484 F0                 6075 	.db #0xF0	; 240
   7485 0F                 6076 	.db #0x0F	; 15
   7486 0F                 6077 	.db #0x0F	; 15
   7487 0F                 6078 	.db #0x0F	; 15
   7488 0F                 6079 	.db #0x0F	; 15
   7489 0F                 6080 	.db #0x0F	; 15
   748A 0F                 6081 	.db #0x0F	; 15
   748B 0F                 6082 	.db #0x0F	; 15
   748C 0F                 6083 	.db #0x0F	; 15
   748D F0                 6084 	.db #0xF0	; 240
   748E F0                 6085 	.db #0xF0	; 240
   748F 0F                 6086 	.db #0x0F	; 15
   7490 0F                 6087 	.db #0x0F	; 15
   7491 0F                 6088 	.db #0x0F	; 15
   7492 0F                 6089 	.db #0x0F	; 15
   7493 0F                 6090 	.db #0x0F	; 15
   7494 0F                 6091 	.db #0x0F	; 15
   7495 0F                 6092 	.db #0x0F	; 15
   7496 0F                 6093 	.db #0x0F	; 15
   7497 F0                 6094 	.db #0xF0	; 240
   7498 0F                 6095 	.db #0x0F	; 15
   7499 0F                 6096 	.db #0x0F	; 15
   749A 0F                 6097 	.db #0x0F	; 15
   749B 0F                 6098 	.db #0x0F	; 15
   749C 0F                 6099 	.db #0x0F	; 15
   749D 0F                 6100 	.db #0x0F	; 15
   749E 0F                 6101 	.db #0x0F	; 15
   749F 0F                 6102 	.db #0x0F	; 15
   74A0 0F                 6103 	.db #0x0F	; 15
   74A1 0F                 6104 	.db #0x0F	; 15
   74A2 0F                 6105 	.db #0x0F	; 15
   74A3 0F                 6106 	.db #0x0F	; 15
   74A4 0F                 6107 	.db #0x0F	; 15
   74A5 0F                 6108 	.db #0x0F	; 15
   74A6 0F                 6109 	.db #0x0F	; 15
   74A7 0F                 6110 	.db #0x0F	; 15
   74A8 0F                 6111 	.db #0x0F	; 15
   74A9 0F                 6112 	.db #0x0F	; 15
   74AA 0F                 6113 	.db #0x0F	; 15
   74AB 0F                 6114 	.db #0x0F	; 15
   74AC 0F                 6115 	.db #0x0F	; 15
   74AD 0F                 6116 	.db #0x0F	; 15
   74AE 0F                 6117 	.db #0x0F	; 15
   74AF 0F                 6118 	.db #0x0F	; 15
   74B0 0F                 6119 	.db #0x0F	; 15
   74B1 0F                 6120 	.db #0x0F	; 15
   74B2 0F                 6121 	.db #0x0F	; 15
   74B3 0F                 6122 	.db #0x0F	; 15
   74B4 0F                 6123 	.db #0x0F	; 15
   74B5 0F                 6124 	.db #0x0F	; 15
   74B6 0F                 6125 	.db #0x0F	; 15
   74B7 0F                 6126 	.db #0x0F	; 15
   74B8 0F                 6127 	.db #0x0F	; 15
   74B9 0F                 6128 	.db #0x0F	; 15
   74BA 0F                 6129 	.db #0x0F	; 15
   74BB 0F                 6130 	.db #0x0F	; 15
   74BC 0F                 6131 	.db #0x0F	; 15
   74BD 0F                 6132 	.db #0x0F	; 15
   74BE 0F                 6133 	.db #0x0F	; 15
   74BF 0F                 6134 	.db #0x0F	; 15
   74C0 0F                 6135 	.db #0x0F	; 15
   74C1 0F                 6136 	.db #0x0F	; 15
   74C2 0F                 6137 	.db #0x0F	; 15
   74C3 0F                 6138 	.db #0x0F	; 15
   74C4 0F                 6139 	.db #0x0F	; 15
   74C5 0F                 6140 	.db #0x0F	; 15
   74C6 0F                 6141 	.db #0x0F	; 15
   74C7 0F                 6142 	.db #0x0F	; 15
   74C8 0F                 6143 	.db #0x0F	; 15
   74C9 0F                 6144 	.db #0x0F	; 15
   74CA 0F                 6145 	.db #0x0F	; 15
   74CB 0F                 6146 	.db #0x0F	; 15
   74CC 0F                 6147 	.db #0x0F	; 15
   74CD 0F                 6148 	.db #0x0F	; 15
   74CE 0F                 6149 	.db #0x0F	; 15
   74CF 0F                 6150 	.db #0x0F	; 15
   74D0 0F                 6151 	.db #0x0F	; 15
   74D1 0F                 6152 	.db #0x0F	; 15
   74D2 0F                 6153 	.db #0x0F	; 15
   74D3 0F                 6154 	.db #0x0F	; 15
   74D4 0F                 6155 	.db #0x0F	; 15
   74D5 0F                 6156 	.db #0x0F	; 15
   74D6 0F                 6157 	.db #0x0F	; 15
   74D7 0F                 6158 	.db #0x0F	; 15
   74D8 0F                 6159 	.db #0x0F	; 15
   74D9 0F                 6160 	.db #0x0F	; 15
   74DA 0F                 6161 	.db #0x0F	; 15
   74DB 0F                 6162 	.db #0x0F	; 15
   74DC 0F                 6163 	.db #0x0F	; 15
   74DD 0F                 6164 	.db #0x0F	; 15
   74DE 0F                 6165 	.db #0x0F	; 15
   74DF 0F                 6166 	.db #0x0F	; 15
   74E0 0F                 6167 	.db #0x0F	; 15
   74E1 0F                 6168 	.db #0x0F	; 15
   74E2 0F                 6169 	.db #0x0F	; 15
   74E3 0F                 6170 	.db #0x0F	; 15
   74E4 0F                 6171 	.db #0x0F	; 15
   74E5 0F                 6172 	.db #0x0F	; 15
   74E6 0F                 6173 	.db #0x0F	; 15
   74E7 0F                 6174 	.db #0x0F	; 15
   74E8 0F                 6175 	.db #0x0F	; 15
   74E9 0F                 6176 	.db #0x0F	; 15
   74EA 0F                 6177 	.db #0x0F	; 15
   74EB 0F                 6178 	.db #0x0F	; 15
   74EC 0F                 6179 	.db #0x0F	; 15
   74ED 0F                 6180 	.db #0x0F	; 15
   74EE 0F                 6181 	.db #0x0F	; 15
   74EF 0F                 6182 	.db #0x0F	; 15
   74F0 0F                 6183 	.db #0x0F	; 15
   74F1 0F                 6184 	.db #0x0F	; 15
   74F2 0F                 6185 	.db #0x0F	; 15
   74F3 0F                 6186 	.db #0x0F	; 15
   74F4 0F                 6187 	.db #0x0F	; 15
   74F5 0F                 6188 	.db #0x0F	; 15
   74F6 0F                 6189 	.db #0x0F	; 15
   74F7 0F                 6190 	.db #0x0F	; 15
   74F8 0F                 6191 	.db #0x0F	; 15
   74F9 0F                 6192 	.db #0x0F	; 15
   74FA 0F                 6193 	.db #0x0F	; 15
   74FB 0F                 6194 	.db #0x0F	; 15
   74FC 0F                 6195 	.db #0x0F	; 15
   74FD 0F                 6196 	.db #0x0F	; 15
   74FE 0F                 6197 	.db #0x0F	; 15
   74FF 0F                 6198 	.db #0x0F	; 15
   7500 0F                 6199 	.db #0x0F	; 15
   7501 0F                 6200 	.db #0x0F	; 15
   7502 0F                 6201 	.db #0x0F	; 15
   7503 0F                 6202 	.db #0x0F	; 15
   7504 0F                 6203 	.db #0x0F	; 15
   7505 0F                 6204 	.db #0x0F	; 15
   7506 0F                 6205 	.db #0x0F	; 15
   7507 0F                 6206 	.db #0x0F	; 15
   7508 0F                 6207 	.db #0x0F	; 15
   7509 0F                 6208 	.db #0x0F	; 15
   750A 0F                 6209 	.db #0x0F	; 15
   750B 0F                 6210 	.db #0x0F	; 15
   750C 0F                 6211 	.db #0x0F	; 15
   750D 0F                 6212 	.db #0x0F	; 15
   750E 0F                 6213 	.db #0x0F	; 15
   750F 0F                 6214 	.db #0x0F	; 15
   7510 0F                 6215 	.db #0x0F	; 15
   7511 0F                 6216 	.db #0x0F	; 15
   7512 0F                 6217 	.db #0x0F	; 15
   7513 0F                 6218 	.db #0x0F	; 15
   7514 0F                 6219 	.db #0x0F	; 15
   7515 0F                 6220 	.db #0x0F	; 15
   7516 0F                 6221 	.db #0x0F	; 15
   7517 0F                 6222 	.db #0x0F	; 15
   7518 0F                 6223 	.db #0x0F	; 15
   7519 0F                 6224 	.db #0x0F	; 15
   751A 0F                 6225 	.db #0x0F	; 15
   751B 0F                 6226 	.db #0x0F	; 15
   751C 0F                 6227 	.db #0x0F	; 15
   751D 0F                 6228 	.db #0x0F	; 15
   751E 0F                 6229 	.db #0x0F	; 15
   751F 0F                 6230 	.db #0x0F	; 15
   7520 0F                 6231 	.db #0x0F	; 15
   7521 0F                 6232 	.db #0x0F	; 15
   7522 0F                 6233 	.db #0x0F	; 15
   7523 0F                 6234 	.db #0x0F	; 15
   7524 0F                 6235 	.db #0x0F	; 15
   7525 0F                 6236 	.db #0x0F	; 15
   7526 0F                 6237 	.db #0x0F	; 15
   7527 0F                 6238 	.db #0x0F	; 15
   7528 0F                 6239 	.db #0x0F	; 15
   7529 0F                 6240 	.db #0x0F	; 15
   752A 0F                 6241 	.db #0x0F	; 15
   752B 0F                 6242 	.db #0x0F	; 15
   752C 0F                 6243 	.db #0x0F	; 15
   752D 0F                 6244 	.db #0x0F	; 15
   752E 0F                 6245 	.db #0x0F	; 15
   752F 0F                 6246 	.db #0x0F	; 15
   7530 0F                 6247 	.db #0x0F	; 15
   7531 0F                 6248 	.db #0x0F	; 15
   7532 0F                 6249 	.db #0x0F	; 15
   7533 0F                 6250 	.db #0x0F	; 15
   7534 0F                 6251 	.db #0x0F	; 15
   7535 0F                 6252 	.db #0x0F	; 15
   7536 0F                 6253 	.db #0x0F	; 15
   7537 0F                 6254 	.db #0x0F	; 15
   7538 0F                 6255 	.db #0x0F	; 15
   7539 0F                 6256 	.db #0x0F	; 15
   753A 0F                 6257 	.db #0x0F	; 15
   753B 0F                 6258 	.db #0x0F	; 15
   753C 0F                 6259 	.db #0x0F	; 15
   753D 0F                 6260 	.db #0x0F	; 15
   753E 0F                 6261 	.db #0x0F	; 15
   753F 0F                 6262 	.db #0x0F	; 15
   7540 0F                 6263 	.db #0x0F	; 15
   7541 0F                 6264 	.db #0x0F	; 15
   7542 0F                 6265 	.db #0x0F	; 15
   7543 0F                 6266 	.db #0x0F	; 15
   7544 0F                 6267 	.db #0x0F	; 15
   7545 0F                 6268 	.db #0x0F	; 15
   7546 0F                 6269 	.db #0x0F	; 15
   7547 0F                 6270 	.db #0x0F	; 15
   7548 0F                 6271 	.db #0x0F	; 15
   7549 0F                 6272 	.db #0x0F	; 15
   754A 0F                 6273 	.db #0x0F	; 15
   754B 0F                 6274 	.db #0x0F	; 15
   754C 0F                 6275 	.db #0x0F	; 15
   754D 0F                 6276 	.db #0x0F	; 15
   754E 0F                 6277 	.db #0x0F	; 15
   754F 0F                 6278 	.db #0x0F	; 15
   7550 0F                 6279 	.db #0x0F	; 15
   7551 0F                 6280 	.db #0x0F	; 15
   7552 0F                 6281 	.db #0x0F	; 15
   7553 0F                 6282 	.db #0x0F	; 15
   7554 0F                 6283 	.db #0x0F	; 15
   7555 0F                 6284 	.db #0x0F	; 15
   7556 0F                 6285 	.db #0x0F	; 15
   7557 0F                 6286 	.db #0x0F	; 15
   7558 0F                 6287 	.db #0x0F	; 15
   7559 0F                 6288 	.db #0x0F	; 15
   755A 0F                 6289 	.db #0x0F	; 15
   755B 0F                 6290 	.db #0x0F	; 15
   755C 0F                 6291 	.db #0x0F	; 15
   755D 0F                 6292 	.db #0x0F	; 15
   755E 0F                 6293 	.db #0x0F	; 15
   755F 0F                 6294 	.db #0x0F	; 15
   7560 0F                 6295 	.db #0x0F	; 15
   7561 0F                 6296 	.db #0x0F	; 15
   7562 0F                 6297 	.db #0x0F	; 15
   7563 0F                 6298 	.db #0x0F	; 15
   7564 0F                 6299 	.db #0x0F	; 15
   7565 0F                 6300 	.db #0x0F	; 15
   7566 0F                 6301 	.db #0x0F	; 15
   7567 0F                 6302 	.db #0x0F	; 15
   7568 0F                 6303 	.db #0x0F	; 15
   7569 0F                 6304 	.db #0x0F	; 15
   756A 0F                 6305 	.db #0x0F	; 15
   756B 0F                 6306 	.db #0x0F	; 15
   756C 0F                 6307 	.db #0x0F	; 15
   756D 0F                 6308 	.db #0x0F	; 15
   756E 0F                 6309 	.db #0x0F	; 15
   756F 0F                 6310 	.db #0x0F	; 15
   7570 0F                 6311 	.db #0x0F	; 15
   7571 0F                 6312 	.db #0x0F	; 15
   7572 0F                 6313 	.db #0x0F	; 15
   7573 0F                 6314 	.db #0x0F	; 15
   7574 0F                 6315 	.db #0x0F	; 15
   7575 0F                 6316 	.db #0x0F	; 15
   7576 0F                 6317 	.db #0x0F	; 15
   7577 0F                 6318 	.db #0x0F	; 15
   7578 0F                 6319 	.db #0x0F	; 15
   7579 0F                 6320 	.db #0x0F	; 15
   757A 0F                 6321 	.db #0x0F	; 15
   757B 0F                 6322 	.db #0x0F	; 15
   757C 0F                 6323 	.db #0x0F	; 15
   757D 0F                 6324 	.db #0x0F	; 15
   757E 0F                 6325 	.db #0x0F	; 15
   757F 0F                 6326 	.db #0x0F	; 15
   7580 0F                 6327 	.db #0x0F	; 15
   7581 0F                 6328 	.db #0x0F	; 15
   7582 0F                 6329 	.db #0x0F	; 15
   7583 0F                 6330 	.db #0x0F	; 15
   7584 0F                 6331 	.db #0x0F	; 15
   7585 0F                 6332 	.db #0x0F	; 15
   7586 0F                 6333 	.db #0x0F	; 15
   7587 0F                 6334 	.db #0x0F	; 15
   7588 0F                 6335 	.db #0x0F	; 15
   7589 0F                 6336 	.db #0x0F	; 15
   758A 0F                 6337 	.db #0x0F	; 15
   758B 0F                 6338 	.db #0x0F	; 15
   758C 0F                 6339 	.db #0x0F	; 15
   758D 0F                 6340 	.db #0x0F	; 15
   758E 0F                 6341 	.db #0x0F	; 15
   758F 0F                 6342 	.db #0x0F	; 15
   7590 0F                 6343 	.db #0x0F	; 15
   7591 0F                 6344 	.db #0x0F	; 15
   7592 0F                 6345 	.db #0x0F	; 15
   7593 0F                 6346 	.db #0x0F	; 15
   7594 0F                 6347 	.db #0x0F	; 15
   7595 0F                 6348 	.db #0x0F	; 15
   7596 0F                 6349 	.db #0x0F	; 15
   7597 0F                 6350 	.db #0x0F	; 15
   7598 0F                 6351 	.db #0x0F	; 15
   7599 0F                 6352 	.db #0x0F	; 15
   759A 0F                 6353 	.db #0x0F	; 15
   759B 0F                 6354 	.db #0x0F	; 15
   759C 0F                 6355 	.db #0x0F	; 15
   759D 0F                 6356 	.db #0x0F	; 15
   759E 0F                 6357 	.db #0x0F	; 15
   759F 0F                 6358 	.db #0x0F	; 15
   75A0 0F                 6359 	.db #0x0F	; 15
   75A1 0F                 6360 	.db #0x0F	; 15
   75A2 0F                 6361 	.db #0x0F	; 15
   75A3 0F                 6362 	.db #0x0F	; 15
   75A4 0F                 6363 	.db #0x0F	; 15
   75A5 0F                 6364 	.db #0x0F	; 15
   75A6 0F                 6365 	.db #0x0F	; 15
   75A7 0F                 6366 	.db #0x0F	; 15
   75A8 0F                 6367 	.db #0x0F	; 15
   75A9 0F                 6368 	.db #0x0F	; 15
   75AA 0F                 6369 	.db #0x0F	; 15
   75AB 0F                 6370 	.db #0x0F	; 15
   75AC 0F                 6371 	.db #0x0F	; 15
   75AD 0F                 6372 	.db #0x0F	; 15
   75AE 0F                 6373 	.db #0x0F	; 15
   75AF 0F                 6374 	.db #0x0F	; 15
   75B0 0F                 6375 	.db #0x0F	; 15
   75B1 0F                 6376 	.db #0x0F	; 15
   75B2 0F                 6377 	.db #0x0F	; 15
   75B3 0F                 6378 	.db #0x0F	; 15
   75B4 0F                 6379 	.db #0x0F	; 15
   75B5 0F                 6380 	.db #0x0F	; 15
   75B6 0F                 6381 	.db #0x0F	; 15
   75B7 0F                 6382 	.db #0x0F	; 15
   75B8 0F                 6383 	.db #0x0F	; 15
   75B9 0F                 6384 	.db #0x0F	; 15
   75BA 0F                 6385 	.db #0x0F	; 15
   75BB 0F                 6386 	.db #0x0F	; 15
   75BC 0F                 6387 	.db #0x0F	; 15
   75BD 0F                 6388 	.db #0x0F	; 15
   75BE 0F                 6389 	.db #0x0F	; 15
   75BF 0F                 6390 	.db #0x0F	; 15
   75C0 0F                 6391 	.db #0x0F	; 15
   75C1 0F                 6392 	.db #0x0F	; 15
   75C2 0F                 6393 	.db #0x0F	; 15
   75C3 0F                 6394 	.db #0x0F	; 15
   75C4 0F                 6395 	.db #0x0F	; 15
   75C5 0F                 6396 	.db #0x0F	; 15
   75C6 0F                 6397 	.db #0x0F	; 15
   75C7 0F                 6398 	.db #0x0F	; 15
   75C8 0F                 6399 	.db #0x0F	; 15
   75C9 0F                 6400 	.db #0x0F	; 15
   75CA 0F                 6401 	.db #0x0F	; 15
   75CB 0F                 6402 	.db #0x0F	; 15
   75CC 0F                 6403 	.db #0x0F	; 15
   75CD 0F                 6404 	.db #0x0F	; 15
   75CE 0F                 6405 	.db #0x0F	; 15
   75CF 0F                 6406 	.db #0x0F	; 15
   75D0 0F                 6407 	.db #0x0F	; 15
   75D1 0F                 6408 	.db #0x0F	; 15
   75D2 0F                 6409 	.db #0x0F	; 15
   75D3 0F                 6410 	.db #0x0F	; 15
   75D4 0F                 6411 	.db #0x0F	; 15
   75D5 0F                 6412 	.db #0x0F	; 15
   75D6 0F                 6413 	.db #0x0F	; 15
   75D7 0F                 6414 	.db #0x0F	; 15
   75D8 0F                 6415 	.db #0x0F	; 15
   75D9 0F                 6416 	.db #0x0F	; 15
   75DA 0F                 6417 	.db #0x0F	; 15
   75DB 0F                 6418 	.db #0x0F	; 15
   75DC 0F                 6419 	.db #0x0F	; 15
   75DD 0F                 6420 	.db #0x0F	; 15
   75DE 0F                 6421 	.db #0x0F	; 15
   75DF 0F                 6422 	.db #0x0F	; 15
   75E0 0F                 6423 	.db #0x0F	; 15
   75E1 0F                 6424 	.db #0x0F	; 15
   75E2 0F                 6425 	.db #0x0F	; 15
   75E3 0F                 6426 	.db #0x0F	; 15
   75E4 0F                 6427 	.db #0x0F	; 15
   75E5 0F                 6428 	.db #0x0F	; 15
   75E6 0F                 6429 	.db #0x0F	; 15
   75E7 0F                 6430 	.db #0x0F	; 15
   75E8 0F                 6431 	.db #0x0F	; 15
   75E9 0F                 6432 	.db #0x0F	; 15
   75EA 0F                 6433 	.db #0x0F	; 15
   75EB 0F                 6434 	.db #0x0F	; 15
   75EC 0F                 6435 	.db #0x0F	; 15
   75ED 0F                 6436 	.db #0x0F	; 15
   75EE 0F                 6437 	.db #0x0F	; 15
   75EF 0F                 6438 	.db #0x0F	; 15
   75F0 0F                 6439 	.db #0x0F	; 15
   75F1 0F                 6440 	.db #0x0F	; 15
   75F2 0F                 6441 	.db #0x0F	; 15
   75F3 0F                 6442 	.db #0x0F	; 15
   75F4 0F                 6443 	.db #0x0F	; 15
   75F5 0F                 6444 	.db #0x0F	; 15
   75F6 0F                 6445 	.db #0x0F	; 15
   75F7 0F                 6446 	.db #0x0F	; 15
   75F8 0F                 6447 	.db #0x0F	; 15
   75F9 0F                 6448 	.db #0x0F	; 15
   75FA 0F                 6449 	.db #0x0F	; 15
   75FB 0F                 6450 	.db #0x0F	; 15
   75FC 0F                 6451 	.db #0x0F	; 15
   75FD 0F                 6452 	.db #0x0F	; 15
   75FE 0F                 6453 	.db #0x0F	; 15
   75FF 0F                 6454 	.db #0x0F	; 15
   7600 F0                 6455 	.db #0xF0	; 240
   7601 0F                 6456 	.db #0x0F	; 15
   7602 0F                 6457 	.db #0x0F	; 15
   7603 0F                 6458 	.db #0x0F	; 15
   7604 0F                 6459 	.db #0x0F	; 15
   7605 0F                 6460 	.db #0x0F	; 15
   7606 0F                 6461 	.db #0x0F	; 15
   7607 0F                 6462 	.db #0x0F	; 15
   7608 0F                 6463 	.db #0x0F	; 15
   7609 F0                 6464 	.db #0xF0	; 240
   760A F0                 6465 	.db #0xF0	; 240
   760B 0F                 6466 	.db #0x0F	; 15
   760C 0F                 6467 	.db #0x0F	; 15
   760D 0F                 6468 	.db #0x0F	; 15
   760E 0F                 6469 	.db #0x0F	; 15
   760F 0F                 6470 	.db #0x0F	; 15
   7610 0F                 6471 	.db #0x0F	; 15
   7611 0F                 6472 	.db #0x0F	; 15
   7612 0F                 6473 	.db #0x0F	; 15
   7613 F0                 6474 	.db #0xF0	; 240
                           6475 	.area _INITIALIZER
                           6476 	.area _CABS (ABS)
