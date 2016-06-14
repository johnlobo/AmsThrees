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
   6B8E                      59 _tile_tiles_00:
   6B8E F0                   60 	.db #0xF0	; 240
   6B8F 0F                   61 	.db #0x0F	; 15
   6B90 0F                   62 	.db #0x0F	; 15
   6B91 0F                   63 	.db #0x0F	; 15
   6B92 0F                   64 	.db #0x0F	; 15
   6B93 0F                   65 	.db #0x0F	; 15
   6B94 0F                   66 	.db #0x0F	; 15
   6B95 0F                   67 	.db #0x0F	; 15
   6B96 0F                   68 	.db #0x0F	; 15
   6B97 F0                   69 	.db #0xF0	; 240
   6B98 F0                   70 	.db #0xF0	; 240
   6B99 0F                   71 	.db #0x0F	; 15
   6B9A 0F                   72 	.db #0x0F	; 15
   6B9B 0F                   73 	.db #0x0F	; 15
   6B9C 0F                   74 	.db #0x0F	; 15
   6B9D 0F                   75 	.db #0x0F	; 15
   6B9E 0F                   76 	.db #0x0F	; 15
   6B9F 0F                   77 	.db #0x0F	; 15
   6BA0 0F                   78 	.db #0x0F	; 15
   6BA1 F0                   79 	.db #0xF0	; 240
   6BA2 0F                   80 	.db #0x0F	; 15
   6BA3 0F                   81 	.db #0x0F	; 15
   6BA4 0F                   82 	.db #0x0F	; 15
   6BA5 0F                   83 	.db #0x0F	; 15
   6BA6 0F                   84 	.db #0x0F	; 15
   6BA7 0F                   85 	.db #0x0F	; 15
   6BA8 0F                   86 	.db #0x0F	; 15
   6BA9 0F                   87 	.db #0x0F	; 15
   6BAA 0F                   88 	.db #0x0F	; 15
   6BAB 0F                   89 	.db #0x0F	; 15
   6BAC 0F                   90 	.db #0x0F	; 15
   6BAD 0F                   91 	.db #0x0F	; 15
   6BAE 0F                   92 	.db #0x0F	; 15
   6BAF 0F                   93 	.db #0x0F	; 15
   6BB0 0F                   94 	.db #0x0F	; 15
   6BB1 0F                   95 	.db #0x0F	; 15
   6BB2 0F                   96 	.db #0x0F	; 15
   6BB3 0F                   97 	.db #0x0F	; 15
   6BB4 0F                   98 	.db #0x0F	; 15
   6BB5 0F                   99 	.db #0x0F	; 15
   6BB6 0F                  100 	.db #0x0F	; 15
   6BB7 0F                  101 	.db #0x0F	; 15
   6BB8 0F                  102 	.db #0x0F	; 15
   6BB9 0F                  103 	.db #0x0F	; 15
   6BBA 0F                  104 	.db #0x0F	; 15
   6BBB 0F                  105 	.db #0x0F	; 15
   6BBC 0F                  106 	.db #0x0F	; 15
   6BBD 0F                  107 	.db #0x0F	; 15
   6BBE 0F                  108 	.db #0x0F	; 15
   6BBF 0F                  109 	.db #0x0F	; 15
   6BC0 0F                  110 	.db #0x0F	; 15
   6BC1 0F                  111 	.db #0x0F	; 15
   6BC2 0F                  112 	.db #0x0F	; 15
   6BC3 0F                  113 	.db #0x0F	; 15
   6BC4 0F                  114 	.db #0x0F	; 15
   6BC5 0F                  115 	.db #0x0F	; 15
   6BC6 0F                  116 	.db #0x0F	; 15
   6BC7 0F                  117 	.db #0x0F	; 15
   6BC8 0F                  118 	.db #0x0F	; 15
   6BC9 0F                  119 	.db #0x0F	; 15
   6BCA 0F                  120 	.db #0x0F	; 15
   6BCB 0F                  121 	.db #0x0F	; 15
   6BCC 0F                  122 	.db #0x0F	; 15
   6BCD 0F                  123 	.db #0x0F	; 15
   6BCE 0F                  124 	.db #0x0F	; 15
   6BCF 0F                  125 	.db #0x0F	; 15
   6BD0 0F                  126 	.db #0x0F	; 15
   6BD1 0F                  127 	.db #0x0F	; 15
   6BD2 0F                  128 	.db #0x0F	; 15
   6BD3 0F                  129 	.db #0x0F	; 15
   6BD4 0F                  130 	.db #0x0F	; 15
   6BD5 0F                  131 	.db #0x0F	; 15
   6BD6 0F                  132 	.db #0x0F	; 15
   6BD7 0F                  133 	.db #0x0F	; 15
   6BD8 0F                  134 	.db #0x0F	; 15
   6BD9 0F                  135 	.db #0x0F	; 15
   6BDA 0F                  136 	.db #0x0F	; 15
   6BDB 0F                  137 	.db #0x0F	; 15
   6BDC 0F                  138 	.db #0x0F	; 15
   6BDD 0F                  139 	.db #0x0F	; 15
   6BDE 0F                  140 	.db #0x0F	; 15
   6BDF 0F                  141 	.db #0x0F	; 15
   6BE0 0F                  142 	.db #0x0F	; 15
   6BE1 0F                  143 	.db #0x0F	; 15
   6BE2 0F                  144 	.db #0x0F	; 15
   6BE3 0F                  145 	.db #0x0F	; 15
   6BE4 0F                  146 	.db #0x0F	; 15
   6BE5 0F                  147 	.db #0x0F	; 15
   6BE6 0F                  148 	.db #0x0F	; 15
   6BE7 0F                  149 	.db #0x0F	; 15
   6BE8 0F                  150 	.db #0x0F	; 15
   6BE9 0F                  151 	.db #0x0F	; 15
   6BEA 0F                  152 	.db #0x0F	; 15
   6BEB 0F                  153 	.db #0x0F	; 15
   6BEC 0F                  154 	.db #0x0F	; 15
   6BED 0F                  155 	.db #0x0F	; 15
   6BEE 0F                  156 	.db #0x0F	; 15
   6BEF 0F                  157 	.db #0x0F	; 15
   6BF0 0F                  158 	.db #0x0F	; 15
   6BF1 0F                  159 	.db #0x0F	; 15
   6BF2 0F                  160 	.db #0x0F	; 15
   6BF3 0F                  161 	.db #0x0F	; 15
   6BF4 0F                  162 	.db #0x0F	; 15
   6BF5 0F                  163 	.db #0x0F	; 15
   6BF6 0F                  164 	.db #0x0F	; 15
   6BF7 0F                  165 	.db #0x0F	; 15
   6BF8 0F                  166 	.db #0x0F	; 15
   6BF9 0F                  167 	.db #0x0F	; 15
   6BFA 0F                  168 	.db #0x0F	; 15
   6BFB 0F                  169 	.db #0x0F	; 15
   6BFC 0F                  170 	.db #0x0F	; 15
   6BFD 0F                  171 	.db #0x0F	; 15
   6BFE 0F                  172 	.db #0x0F	; 15
   6BFF 0F                  173 	.db #0x0F	; 15
   6C00 0F                  174 	.db #0x0F	; 15
   6C01 0F                  175 	.db #0x0F	; 15
   6C02 0F                  176 	.db #0x0F	; 15
   6C03 0F                  177 	.db #0x0F	; 15
   6C04 0F                  178 	.db #0x0F	; 15
   6C05 0F                  179 	.db #0x0F	; 15
   6C06 0F                  180 	.db #0x0F	; 15
   6C07 0F                  181 	.db #0x0F	; 15
   6C08 0F                  182 	.db #0x0F	; 15
   6C09 0F                  183 	.db #0x0F	; 15
   6C0A 0F                  184 	.db #0x0F	; 15
   6C0B 0F                  185 	.db #0x0F	; 15
   6C0C 0F                  186 	.db #0x0F	; 15
   6C0D 0F                  187 	.db #0x0F	; 15
   6C0E 0F                  188 	.db #0x0F	; 15
   6C0F 0F                  189 	.db #0x0F	; 15
   6C10 0F                  190 	.db #0x0F	; 15
   6C11 0F                  191 	.db #0x0F	; 15
   6C12 0F                  192 	.db #0x0F	; 15
   6C13 0F                  193 	.db #0x0F	; 15
   6C14 0F                  194 	.db #0x0F	; 15
   6C15 0F                  195 	.db #0x0F	; 15
   6C16 0F                  196 	.db #0x0F	; 15
   6C17 0F                  197 	.db #0x0F	; 15
   6C18 0F                  198 	.db #0x0F	; 15
   6C19 0F                  199 	.db #0x0F	; 15
   6C1A 0F                  200 	.db #0x0F	; 15
   6C1B 0F                  201 	.db #0x0F	; 15
   6C1C 0F                  202 	.db #0x0F	; 15
   6C1D 0F                  203 	.db #0x0F	; 15
   6C1E 0F                  204 	.db #0x0F	; 15
   6C1F 0F                  205 	.db #0x0F	; 15
   6C20 0F                  206 	.db #0x0F	; 15
   6C21 0F                  207 	.db #0x0F	; 15
   6C22 0F                  208 	.db #0x0F	; 15
   6C23 0F                  209 	.db #0x0F	; 15
   6C24 0F                  210 	.db #0x0F	; 15
   6C25 0F                  211 	.db #0x0F	; 15
   6C26 0F                  212 	.db #0x0F	; 15
   6C27 0F                  213 	.db #0x0F	; 15
   6C28 0F                  214 	.db #0x0F	; 15
   6C29 0F                  215 	.db #0x0F	; 15
   6C2A 0F                  216 	.db #0x0F	; 15
   6C2B 0F                  217 	.db #0x0F	; 15
   6C2C 0F                  218 	.db #0x0F	; 15
   6C2D 0F                  219 	.db #0x0F	; 15
   6C2E 0F                  220 	.db #0x0F	; 15
   6C2F 0F                  221 	.db #0x0F	; 15
   6C30 0F                  222 	.db #0x0F	; 15
   6C31 0F                  223 	.db #0x0F	; 15
   6C32 0F                  224 	.db #0x0F	; 15
   6C33 0F                  225 	.db #0x0F	; 15
   6C34 0F                  226 	.db #0x0F	; 15
   6C35 0F                  227 	.db #0x0F	; 15
   6C36 0F                  228 	.db #0x0F	; 15
   6C37 0F                  229 	.db #0x0F	; 15
   6C38 0F                  230 	.db #0x0F	; 15
   6C39 0F                  231 	.db #0x0F	; 15
   6C3A 0F                  232 	.db #0x0F	; 15
   6C3B 0F                  233 	.db #0x0F	; 15
   6C3C 0F                  234 	.db #0x0F	; 15
   6C3D 0F                  235 	.db #0x0F	; 15
   6C3E 0F                  236 	.db #0x0F	; 15
   6C3F 0F                  237 	.db #0x0F	; 15
   6C40 0F                  238 	.db #0x0F	; 15
   6C41 0F                  239 	.db #0x0F	; 15
   6C42 0F                  240 	.db #0x0F	; 15
   6C43 0F                  241 	.db #0x0F	; 15
   6C44 0F                  242 	.db #0x0F	; 15
   6C45 0F                  243 	.db #0x0F	; 15
   6C46 0F                  244 	.db #0x0F	; 15
   6C47 0F                  245 	.db #0x0F	; 15
   6C48 0F                  246 	.db #0x0F	; 15
   6C49 0F                  247 	.db #0x0F	; 15
   6C4A 0F                  248 	.db #0x0F	; 15
   6C4B 0F                  249 	.db #0x0F	; 15
   6C4C 0F                  250 	.db #0x0F	; 15
   6C4D 0F                  251 	.db #0x0F	; 15
   6C4E 0F                  252 	.db #0x0F	; 15
   6C4F 0F                  253 	.db #0x0F	; 15
   6C50 0F                  254 	.db #0x0F	; 15
   6C51 0F                  255 	.db #0x0F	; 15
   6C52 0F                  256 	.db #0x0F	; 15
   6C53 0F                  257 	.db #0x0F	; 15
   6C54 0F                  258 	.db #0x0F	; 15
   6C55 0F                  259 	.db #0x0F	; 15
   6C56 0F                  260 	.db #0x0F	; 15
   6C57 0F                  261 	.db #0x0F	; 15
   6C58 0F                  262 	.db #0x0F	; 15
   6C59 0F                  263 	.db #0x0F	; 15
   6C5A 0F                  264 	.db #0x0F	; 15
   6C5B 0F                  265 	.db #0x0F	; 15
   6C5C 0F                  266 	.db #0x0F	; 15
   6C5D 0F                  267 	.db #0x0F	; 15
   6C5E 0F                  268 	.db #0x0F	; 15
   6C5F 0F                  269 	.db #0x0F	; 15
   6C60 0F                  270 	.db #0x0F	; 15
   6C61 0F                  271 	.db #0x0F	; 15
   6C62 0F                  272 	.db #0x0F	; 15
   6C63 0F                  273 	.db #0x0F	; 15
   6C64 0F                  274 	.db #0x0F	; 15
   6C65 0F                  275 	.db #0x0F	; 15
   6C66 0F                  276 	.db #0x0F	; 15
   6C67 0F                  277 	.db #0x0F	; 15
   6C68 0F                  278 	.db #0x0F	; 15
   6C69 0F                  279 	.db #0x0F	; 15
   6C6A 0F                  280 	.db #0x0F	; 15
   6C6B 0F                  281 	.db #0x0F	; 15
   6C6C 0F                  282 	.db #0x0F	; 15
   6C6D 0F                  283 	.db #0x0F	; 15
   6C6E 0F                  284 	.db #0x0F	; 15
   6C6F 0F                  285 	.db #0x0F	; 15
   6C70 0F                  286 	.db #0x0F	; 15
   6C71 0F                  287 	.db #0x0F	; 15
   6C72 0F                  288 	.db #0x0F	; 15
   6C73 0F                  289 	.db #0x0F	; 15
   6C74 0F                  290 	.db #0x0F	; 15
   6C75 0F                  291 	.db #0x0F	; 15
   6C76 0F                  292 	.db #0x0F	; 15
   6C77 0F                  293 	.db #0x0F	; 15
   6C78 0F                  294 	.db #0x0F	; 15
   6C79 0F                  295 	.db #0x0F	; 15
   6C7A 0F                  296 	.db #0x0F	; 15
   6C7B 0F                  297 	.db #0x0F	; 15
   6C7C 0F                  298 	.db #0x0F	; 15
   6C7D 0F                  299 	.db #0x0F	; 15
   6C7E 0F                  300 	.db #0x0F	; 15
   6C7F 0F                  301 	.db #0x0F	; 15
   6C80 0F                  302 	.db #0x0F	; 15
   6C81 0F                  303 	.db #0x0F	; 15
   6C82 0F                  304 	.db #0x0F	; 15
   6C83 0F                  305 	.db #0x0F	; 15
   6C84 0F                  306 	.db #0x0F	; 15
   6C85 0F                  307 	.db #0x0F	; 15
   6C86 0F                  308 	.db #0x0F	; 15
   6C87 0F                  309 	.db #0x0F	; 15
   6C88 0F                  310 	.db #0x0F	; 15
   6C89 0F                  311 	.db #0x0F	; 15
   6C8A 0F                  312 	.db #0x0F	; 15
   6C8B 0F                  313 	.db #0x0F	; 15
   6C8C 0F                  314 	.db #0x0F	; 15
   6C8D 0F                  315 	.db #0x0F	; 15
   6C8E 0F                  316 	.db #0x0F	; 15
   6C8F 0F                  317 	.db #0x0F	; 15
   6C90 0F                  318 	.db #0x0F	; 15
   6C91 0F                  319 	.db #0x0F	; 15
   6C92 0F                  320 	.db #0x0F	; 15
   6C93 0F                  321 	.db #0x0F	; 15
   6C94 0F                  322 	.db #0x0F	; 15
   6C95 0F                  323 	.db #0x0F	; 15
   6C96 0F                  324 	.db #0x0F	; 15
   6C97 0F                  325 	.db #0x0F	; 15
   6C98 0F                  326 	.db #0x0F	; 15
   6C99 0F                  327 	.db #0x0F	; 15
   6C9A 0F                  328 	.db #0x0F	; 15
   6C9B 0F                  329 	.db #0x0F	; 15
   6C9C 0F                  330 	.db #0x0F	; 15
   6C9D 0F                  331 	.db #0x0F	; 15
   6C9E 0F                  332 	.db #0x0F	; 15
   6C9F 0F                  333 	.db #0x0F	; 15
   6CA0 0F                  334 	.db #0x0F	; 15
   6CA1 0F                  335 	.db #0x0F	; 15
   6CA2 0F                  336 	.db #0x0F	; 15
   6CA3 0F                  337 	.db #0x0F	; 15
   6CA4 0F                  338 	.db #0x0F	; 15
   6CA5 0F                  339 	.db #0x0F	; 15
   6CA6 0F                  340 	.db #0x0F	; 15
   6CA7 0F                  341 	.db #0x0F	; 15
   6CA8 0F                  342 	.db #0x0F	; 15
   6CA9 0F                  343 	.db #0x0F	; 15
   6CAA 0F                  344 	.db #0x0F	; 15
   6CAB 0F                  345 	.db #0x0F	; 15
   6CAC 0F                  346 	.db #0x0F	; 15
   6CAD 0F                  347 	.db #0x0F	; 15
   6CAE 0F                  348 	.db #0x0F	; 15
   6CAF 0F                  349 	.db #0x0F	; 15
   6CB0 0F                  350 	.db #0x0F	; 15
   6CB1 0F                  351 	.db #0x0F	; 15
   6CB2 0F                  352 	.db #0x0F	; 15
   6CB3 0F                  353 	.db #0x0F	; 15
   6CB4 0F                  354 	.db #0x0F	; 15
   6CB5 0F                  355 	.db #0x0F	; 15
   6CB6 0F                  356 	.db #0x0F	; 15
   6CB7 0F                  357 	.db #0x0F	; 15
   6CB8 0F                  358 	.db #0x0F	; 15
   6CB9 0F                  359 	.db #0x0F	; 15
   6CBA 0F                  360 	.db #0x0F	; 15
   6CBB 0F                  361 	.db #0x0F	; 15
   6CBC 0F                  362 	.db #0x0F	; 15
   6CBD 0F                  363 	.db #0x0F	; 15
   6CBE 0F                  364 	.db #0x0F	; 15
   6CBF 0F                  365 	.db #0x0F	; 15
   6CC0 0F                  366 	.db #0x0F	; 15
   6CC1 0F                  367 	.db #0x0F	; 15
   6CC2 0F                  368 	.db #0x0F	; 15
   6CC3 0F                  369 	.db #0x0F	; 15
   6CC4 0F                  370 	.db #0x0F	; 15
   6CC5 0F                  371 	.db #0x0F	; 15
   6CC6 0F                  372 	.db #0x0F	; 15
   6CC7 0F                  373 	.db #0x0F	; 15
   6CC8 0F                  374 	.db #0x0F	; 15
   6CC9 0F                  375 	.db #0x0F	; 15
   6CCA 0F                  376 	.db #0x0F	; 15
   6CCB 0F                  377 	.db #0x0F	; 15
   6CCC 0F                  378 	.db #0x0F	; 15
   6CCD 0F                  379 	.db #0x0F	; 15
   6CCE 0F                  380 	.db #0x0F	; 15
   6CCF 0F                  381 	.db #0x0F	; 15
   6CD0 0F                  382 	.db #0x0F	; 15
   6CD1 0F                  383 	.db #0x0F	; 15
   6CD2 0F                  384 	.db #0x0F	; 15
   6CD3 0F                  385 	.db #0x0F	; 15
   6CD4 0F                  386 	.db #0x0F	; 15
   6CD5 0F                  387 	.db #0x0F	; 15
   6CD6 0F                  388 	.db #0x0F	; 15
   6CD7 0F                  389 	.db #0x0F	; 15
   6CD8 0F                  390 	.db #0x0F	; 15
   6CD9 0F                  391 	.db #0x0F	; 15
   6CDA 0F                  392 	.db #0x0F	; 15
   6CDB 0F                  393 	.db #0x0F	; 15
   6CDC 0F                  394 	.db #0x0F	; 15
   6CDD 0F                  395 	.db #0x0F	; 15
   6CDE 0F                  396 	.db #0x0F	; 15
   6CDF 0F                  397 	.db #0x0F	; 15
   6CE0 0F                  398 	.db #0x0F	; 15
   6CE1 0F                  399 	.db #0x0F	; 15
   6CE2 0F                  400 	.db #0x0F	; 15
   6CE3 0F                  401 	.db #0x0F	; 15
   6CE4 0F                  402 	.db #0x0F	; 15
   6CE5 0F                  403 	.db #0x0F	; 15
   6CE6 0F                  404 	.db #0x0F	; 15
   6CE7 0F                  405 	.db #0x0F	; 15
   6CE8 0F                  406 	.db #0x0F	; 15
   6CE9 0F                  407 	.db #0x0F	; 15
   6CEA 0F                  408 	.db #0x0F	; 15
   6CEB 0F                  409 	.db #0x0F	; 15
   6CEC 0F                  410 	.db #0x0F	; 15
   6CED 0F                  411 	.db #0x0F	; 15
   6CEE 0F                  412 	.db #0x0F	; 15
   6CEF 0F                  413 	.db #0x0F	; 15
   6CF0 0F                  414 	.db #0x0F	; 15
   6CF1 0F                  415 	.db #0x0F	; 15
   6CF2 0F                  416 	.db #0x0F	; 15
   6CF3 0F                  417 	.db #0x0F	; 15
   6CF4 0F                  418 	.db #0x0F	; 15
   6CF5 0F                  419 	.db #0x0F	; 15
   6CF6 0F                  420 	.db #0x0F	; 15
   6CF7 0F                  421 	.db #0x0F	; 15
   6CF8 0F                  422 	.db #0x0F	; 15
   6CF9 0F                  423 	.db #0x0F	; 15
   6CFA 0F                  424 	.db #0x0F	; 15
   6CFB 0F                  425 	.db #0x0F	; 15
   6CFC 0F                  426 	.db #0x0F	; 15
   6CFD 0F                  427 	.db #0x0F	; 15
   6CFE 0F                  428 	.db #0x0F	; 15
   6CFF 0F                  429 	.db #0x0F	; 15
   6D00 0F                  430 	.db #0x0F	; 15
   6D01 0F                  431 	.db #0x0F	; 15
   6D02 0F                  432 	.db #0x0F	; 15
   6D03 0F                  433 	.db #0x0F	; 15
   6D04 0F                  434 	.db #0x0F	; 15
   6D05 0F                  435 	.db #0x0F	; 15
   6D06 0F                  436 	.db #0x0F	; 15
   6D07 0F                  437 	.db #0x0F	; 15
   6D08 0F                  438 	.db #0x0F	; 15
   6D09 0F                  439 	.db #0x0F	; 15
   6D0A F0                  440 	.db #0xF0	; 240
   6D0B 0F                  441 	.db #0x0F	; 15
   6D0C 0F                  442 	.db #0x0F	; 15
   6D0D 0F                  443 	.db #0x0F	; 15
   6D0E 0F                  444 	.db #0x0F	; 15
   6D0F 0F                  445 	.db #0x0F	; 15
   6D10 0F                  446 	.db #0x0F	; 15
   6D11 0F                  447 	.db #0x0F	; 15
   6D12 0F                  448 	.db #0x0F	; 15
   6D13 F0                  449 	.db #0xF0	; 240
   6D14 F0                  450 	.db #0xF0	; 240
   6D15 0F                  451 	.db #0x0F	; 15
   6D16 0F                  452 	.db #0x0F	; 15
   6D17 0F                  453 	.db #0x0F	; 15
   6D18 0F                  454 	.db #0x0F	; 15
   6D19 0F                  455 	.db #0x0F	; 15
   6D1A 0F                  456 	.db #0x0F	; 15
   6D1B 0F                  457 	.db #0x0F	; 15
   6D1C 0F                  458 	.db #0x0F	; 15
   6D1D F0                  459 	.db #0xF0	; 240
   6D1E                     460 _tile_tiles_01:
   6D1E F0                  461 	.db #0xF0	; 240
   6D1F 3C                  462 	.db #0x3C	; 60
   6D20 3C                  463 	.db #0x3C	; 60
   6D21 3C                  464 	.db #0x3C	; 60
   6D22 3C                  465 	.db #0x3C	; 60
   6D23 3C                  466 	.db #0x3C	; 60
   6D24 3C                  467 	.db #0x3C	; 60
   6D25 3C                  468 	.db #0x3C	; 60
   6D26 3C                  469 	.db #0x3C	; 60
   6D27 F0                  470 	.db #0xF0	; 240
   6D28 F0                  471 	.db #0xF0	; 240
   6D29 3C                  472 	.db #0x3C	; 60
   6D2A 3C                  473 	.db #0x3C	; 60
   6D2B 3C                  474 	.db #0x3C	; 60
   6D2C 3C                  475 	.db #0x3C	; 60
   6D2D 3C                  476 	.db #0x3C	; 60
   6D2E 3C                  477 	.db #0x3C	; 60
   6D2F 3C                  478 	.db #0x3C	; 60
   6D30 3C                  479 	.db #0x3C	; 60
   6D31 F0                  480 	.db #0xF0	; 240
   6D32 3C                  481 	.db #0x3C	; 60
   6D33 2D                  482 	.db #0x2D	; 45
   6D34 0F                  483 	.db #0x0F	; 15
   6D35 0F                  484 	.db #0x0F	; 15
   6D36 0F                  485 	.db #0x0F	; 15
   6D37 0F                  486 	.db #0x0F	; 15
   6D38 0F                  487 	.db #0x0F	; 15
   6D39 0F                  488 	.db #0x0F	; 15
   6D3A 1E                  489 	.db #0x1E	; 30
   6D3B 3C                  490 	.db #0x3C	; 60
   6D3C 3C                  491 	.db #0x3C	; 60
   6D3D 2D                  492 	.db #0x2D	; 45
   6D3E 3C                  493 	.db #0x3C	; 60
   6D3F 3C                  494 	.db #0x3C	; 60
   6D40 3C                  495 	.db #0x3C	; 60
   6D41 3C                  496 	.db #0x3C	; 60
   6D42 3C                  497 	.db #0x3C	; 60
   6D43 3C                  498 	.db #0x3C	; 60
   6D44 1E                  499 	.db #0x1E	; 30
   6D45 3C                  500 	.db #0x3C	; 60
   6D46 3C                  501 	.db #0x3C	; 60
   6D47 0F                  502 	.db #0x0F	; 15
   6D48 3C                  503 	.db #0x3C	; 60
   6D49 3C                  504 	.db #0x3C	; 60
   6D4A 3C                  505 	.db #0x3C	; 60
   6D4B 3C                  506 	.db #0x3C	; 60
   6D4C 3C                  507 	.db #0x3C	; 60
   6D4D 3C                  508 	.db #0x3C	; 60
   6D4E 0F                  509 	.db #0x0F	; 15
   6D4F 3C                  510 	.db #0x3C	; 60
   6D50 3C                  511 	.db #0x3C	; 60
   6D51 1E                  512 	.db #0x1E	; 30
   6D52 3C                  513 	.db #0x3C	; 60
   6D53 3C                  514 	.db #0x3C	; 60
   6D54 3C                  515 	.db #0x3C	; 60
   6D55 3C                  516 	.db #0x3C	; 60
   6D56 3C                  517 	.db #0x3C	; 60
   6D57 3C                  518 	.db #0x3C	; 60
   6D58 2D                  519 	.db #0x2D	; 45
   6D59 3C                  520 	.db #0x3C	; 60
   6D5A 3C                  521 	.db #0x3C	; 60
   6D5B 1E                  522 	.db #0x1E	; 30
   6D5C 3C                  523 	.db #0x3C	; 60
   6D5D 3C                  524 	.db #0x3C	; 60
   6D5E 3C                  525 	.db #0x3C	; 60
   6D5F 3C                  526 	.db #0x3C	; 60
   6D60 3C                  527 	.db #0x3C	; 60
   6D61 3C                  528 	.db #0x3C	; 60
   6D62 2D                  529 	.db #0x2D	; 45
   6D63 3C                  530 	.db #0x3C	; 60
   6D64 3C                  531 	.db #0x3C	; 60
   6D65 1E                  532 	.db #0x1E	; 30
   6D66 3C                  533 	.db #0x3C	; 60
   6D67 3C                  534 	.db #0x3C	; 60
   6D68 3C                  535 	.db #0x3C	; 60
   6D69 3C                  536 	.db #0x3C	; 60
   6D6A 3C                  537 	.db #0x3C	; 60
   6D6B 3C                  538 	.db #0x3C	; 60
   6D6C 2D                  539 	.db #0x2D	; 45
   6D6D 3C                  540 	.db #0x3C	; 60
   6D6E 3C                  541 	.db #0x3C	; 60
   6D6F 1E                  542 	.db #0x1E	; 30
   6D70 3C                  543 	.db #0x3C	; 60
   6D71 3C                  544 	.db #0x3C	; 60
   6D72 3C                  545 	.db #0x3C	; 60
   6D73 3C                  546 	.db #0x3C	; 60
   6D74 3C                  547 	.db #0x3C	; 60
   6D75 3C                  548 	.db #0x3C	; 60
   6D76 2D                  549 	.db #0x2D	; 45
   6D77 3C                  550 	.db #0x3C	; 60
   6D78 3C                  551 	.db #0x3C	; 60
   6D79 1E                  552 	.db #0x1E	; 30
   6D7A 3C                  553 	.db #0x3C	; 60
   6D7B 3C                  554 	.db #0x3C	; 60
   6D7C 3C                  555 	.db #0x3C	; 60
   6D7D 34                  556 	.db #0x34	; 52	'4'
   6D7E 3C                  557 	.db #0x3C	; 60
   6D7F 3C                  558 	.db #0x3C	; 60
   6D80 2D                  559 	.db #0x2D	; 45
   6D81 3C                  560 	.db #0x3C	; 60
   6D82 3C                  561 	.db #0x3C	; 60
   6D83 1E                  562 	.db #0x1E	; 30
   6D84 3C                  563 	.db #0x3C	; 60
   6D85 3C                  564 	.db #0x3C	; 60
   6D86 38                  565 	.db #0x38	; 56	'8'
   6D87 34                  566 	.db #0x34	; 52	'4'
   6D88 3C                  567 	.db #0x3C	; 60
   6D89 3C                  568 	.db #0x3C	; 60
   6D8A 2D                  569 	.db #0x2D	; 45
   6D8B 3C                  570 	.db #0x3C	; 60
   6D8C 3C                  571 	.db #0x3C	; 60
   6D8D 1E                  572 	.db #0x1E	; 30
   6D8E 3C                  573 	.db #0x3C	; 60
   6D8F 3C                  574 	.db #0x3C	; 60
   6D90 30                  575 	.db #0x30	; 48	'0'
   6D91 34                  576 	.db #0x34	; 52	'4'
   6D92 3C                  577 	.db #0x3C	; 60
   6D93 3C                  578 	.db #0x3C	; 60
   6D94 2D                  579 	.db #0x2D	; 45
   6D95 3C                  580 	.db #0x3C	; 60
   6D96 3C                  581 	.db #0x3C	; 60
   6D97 1E                  582 	.db #0x1E	; 30
   6D98 3C                  583 	.db #0x3C	; 60
   6D99 3C                  584 	.db #0x3C	; 60
   6D9A 34                  585 	.db #0x34	; 52	'4'
   6D9B 34                  586 	.db #0x34	; 52	'4'
   6D9C 3C                  587 	.db #0x3C	; 60
   6D9D 3C                  588 	.db #0x3C	; 60
   6D9E 2D                  589 	.db #0x2D	; 45
   6D9F 3C                  590 	.db #0x3C	; 60
   6DA0 3C                  591 	.db #0x3C	; 60
   6DA1 1E                  592 	.db #0x1E	; 30
   6DA2 3C                  593 	.db #0x3C	; 60
   6DA3 3C                  594 	.db #0x3C	; 60
   6DA4 3C                  595 	.db #0x3C	; 60
   6DA5 34                  596 	.db #0x34	; 52	'4'
   6DA6 3C                  597 	.db #0x3C	; 60
   6DA7 3C                  598 	.db #0x3C	; 60
   6DA8 2D                  599 	.db #0x2D	; 45
   6DA9 3C                  600 	.db #0x3C	; 60
   6DAA 3C                  601 	.db #0x3C	; 60
   6DAB 1E                  602 	.db #0x1E	; 30
   6DAC 3C                  603 	.db #0x3C	; 60
   6DAD 3C                  604 	.db #0x3C	; 60
   6DAE 3C                  605 	.db #0x3C	; 60
   6DAF 34                  606 	.db #0x34	; 52	'4'
   6DB0 3C                  607 	.db #0x3C	; 60
   6DB1 3C                  608 	.db #0x3C	; 60
   6DB2 2D                  609 	.db #0x2D	; 45
   6DB3 3C                  610 	.db #0x3C	; 60
   6DB4 3C                  611 	.db #0x3C	; 60
   6DB5 1E                  612 	.db #0x1E	; 30
   6DB6 3C                  613 	.db #0x3C	; 60
   6DB7 3C                  614 	.db #0x3C	; 60
   6DB8 3C                  615 	.db #0x3C	; 60
   6DB9 34                  616 	.db #0x34	; 52	'4'
   6DBA 3C                  617 	.db #0x3C	; 60
   6DBB 3C                  618 	.db #0x3C	; 60
   6DBC 2D                  619 	.db #0x2D	; 45
   6DBD 3C                  620 	.db #0x3C	; 60
   6DBE 3C                  621 	.db #0x3C	; 60
   6DBF 1E                  622 	.db #0x1E	; 30
   6DC0 3C                  623 	.db #0x3C	; 60
   6DC1 3C                  624 	.db #0x3C	; 60
   6DC2 3C                  625 	.db #0x3C	; 60
   6DC3 34                  626 	.db #0x34	; 52	'4'
   6DC4 3C                  627 	.db #0x3C	; 60
   6DC5 3C                  628 	.db #0x3C	; 60
   6DC6 2D                  629 	.db #0x2D	; 45
   6DC7 3C                  630 	.db #0x3C	; 60
   6DC8 3C                  631 	.db #0x3C	; 60
   6DC9 1E                  632 	.db #0x1E	; 30
   6DCA 3C                  633 	.db #0x3C	; 60
   6DCB 3C                  634 	.db #0x3C	; 60
   6DCC 3C                  635 	.db #0x3C	; 60
   6DCD 34                  636 	.db #0x34	; 52	'4'
   6DCE 3C                  637 	.db #0x3C	; 60
   6DCF 3C                  638 	.db #0x3C	; 60
   6DD0 2D                  639 	.db #0x2D	; 45
   6DD1 3C                  640 	.db #0x3C	; 60
   6DD2 3C                  641 	.db #0x3C	; 60
   6DD3 1E                  642 	.db #0x1E	; 30
   6DD4 3C                  643 	.db #0x3C	; 60
   6DD5 3C                  644 	.db #0x3C	; 60
   6DD6 3C                  645 	.db #0x3C	; 60
   6DD7 34                  646 	.db #0x34	; 52	'4'
   6DD8 3C                  647 	.db #0x3C	; 60
   6DD9 3C                  648 	.db #0x3C	; 60
   6DDA 2D                  649 	.db #0x2D	; 45
   6DDB 3C                  650 	.db #0x3C	; 60
   6DDC 3C                  651 	.db #0x3C	; 60
   6DDD 1E                  652 	.db #0x1E	; 30
   6DDE 3C                  653 	.db #0x3C	; 60
   6DDF 3C                  654 	.db #0x3C	; 60
   6DE0 3C                  655 	.db #0x3C	; 60
   6DE1 34                  656 	.db #0x34	; 52	'4'
   6DE2 3C                  657 	.db #0x3C	; 60
   6DE3 3C                  658 	.db #0x3C	; 60
   6DE4 2D                  659 	.db #0x2D	; 45
   6DE5 3C                  660 	.db #0x3C	; 60
   6DE6 3C                  661 	.db #0x3C	; 60
   6DE7 1E                  662 	.db #0x1E	; 30
   6DE8 3C                  663 	.db #0x3C	; 60
   6DE9 3C                  664 	.db #0x3C	; 60
   6DEA 3C                  665 	.db #0x3C	; 60
   6DEB 34                  666 	.db #0x34	; 52	'4'
   6DEC 3C                  667 	.db #0x3C	; 60
   6DED 3C                  668 	.db #0x3C	; 60
   6DEE 2D                  669 	.db #0x2D	; 45
   6DEF 3C                  670 	.db #0x3C	; 60
   6DF0 3C                  671 	.db #0x3C	; 60
   6DF1 1E                  672 	.db #0x1E	; 30
   6DF2 3C                  673 	.db #0x3C	; 60
   6DF3 3C                  674 	.db #0x3C	; 60
   6DF4 3C                  675 	.db #0x3C	; 60
   6DF5 34                  676 	.db #0x34	; 52	'4'
   6DF6 3C                  677 	.db #0x3C	; 60
   6DF7 3C                  678 	.db #0x3C	; 60
   6DF8 2D                  679 	.db #0x2D	; 45
   6DF9 3C                  680 	.db #0x3C	; 60
   6DFA 3C                  681 	.db #0x3C	; 60
   6DFB 1E                  682 	.db #0x1E	; 30
   6DFC 3C                  683 	.db #0x3C	; 60
   6DFD 3C                  684 	.db #0x3C	; 60
   6DFE 3C                  685 	.db #0x3C	; 60
   6DFF 34                  686 	.db #0x34	; 52	'4'
   6E00 3C                  687 	.db #0x3C	; 60
   6E01 3C                  688 	.db #0x3C	; 60
   6E02 2D                  689 	.db #0x2D	; 45
   6E03 3C                  690 	.db #0x3C	; 60
   6E04 3C                  691 	.db #0x3C	; 60
   6E05 1E                  692 	.db #0x1E	; 30
   6E06 3C                  693 	.db #0x3C	; 60
   6E07 3C                  694 	.db #0x3C	; 60
   6E08 3C                  695 	.db #0x3C	; 60
   6E09 34                  696 	.db #0x34	; 52	'4'
   6E0A 3C                  697 	.db #0x3C	; 60
   6E0B 3C                  698 	.db #0x3C	; 60
   6E0C 2D                  699 	.db #0x2D	; 45
   6E0D 3C                  700 	.db #0x3C	; 60
   6E0E 3C                  701 	.db #0x3C	; 60
   6E0F 1E                  702 	.db #0x1E	; 30
   6E10 3C                  703 	.db #0x3C	; 60
   6E11 3C                  704 	.db #0x3C	; 60
   6E12 3C                  705 	.db #0x3C	; 60
   6E13 34                  706 	.db #0x34	; 52	'4'
   6E14 3C                  707 	.db #0x3C	; 60
   6E15 3C                  708 	.db #0x3C	; 60
   6E16 2D                  709 	.db #0x2D	; 45
   6E17 3C                  710 	.db #0x3C	; 60
   6E18 3C                  711 	.db #0x3C	; 60
   6E19 1E                  712 	.db #0x1E	; 30
   6E1A 3C                  713 	.db #0x3C	; 60
   6E1B 3C                  714 	.db #0x3C	; 60
   6E1C 3C                  715 	.db #0x3C	; 60
   6E1D 34                  716 	.db #0x34	; 52	'4'
   6E1E 3C                  717 	.db #0x3C	; 60
   6E1F 3C                  718 	.db #0x3C	; 60
   6E20 2D                  719 	.db #0x2D	; 45
   6E21 3C                  720 	.db #0x3C	; 60
   6E22 3C                  721 	.db #0x3C	; 60
   6E23 1E                  722 	.db #0x1E	; 30
   6E24 3C                  723 	.db #0x3C	; 60
   6E25 3C                  724 	.db #0x3C	; 60
   6E26 3C                  725 	.db #0x3C	; 60
   6E27 34                  726 	.db #0x34	; 52	'4'
   6E28 3C                  727 	.db #0x3C	; 60
   6E29 3C                  728 	.db #0x3C	; 60
   6E2A 2D                  729 	.db #0x2D	; 45
   6E2B 3C                  730 	.db #0x3C	; 60
   6E2C 3C                  731 	.db #0x3C	; 60
   6E2D 1E                  732 	.db #0x1E	; 30
   6E2E 3C                  733 	.db #0x3C	; 60
   6E2F 3C                  734 	.db #0x3C	; 60
   6E30 3C                  735 	.db #0x3C	; 60
   6E31 34                  736 	.db #0x34	; 52	'4'
   6E32 3C                  737 	.db #0x3C	; 60
   6E33 3C                  738 	.db #0x3C	; 60
   6E34 2D                  739 	.db #0x2D	; 45
   6E35 3C                  740 	.db #0x3C	; 60
   6E36 3C                  741 	.db #0x3C	; 60
   6E37 1E                  742 	.db #0x1E	; 30
   6E38 3C                  743 	.db #0x3C	; 60
   6E39 3C                  744 	.db #0x3C	; 60
   6E3A 3C                  745 	.db #0x3C	; 60
   6E3B 34                  746 	.db #0x34	; 52	'4'
   6E3C 3C                  747 	.db #0x3C	; 60
   6E3D 3C                  748 	.db #0x3C	; 60
   6E3E 2D                  749 	.db #0x2D	; 45
   6E3F 3C                  750 	.db #0x3C	; 60
   6E40 3C                  751 	.db #0x3C	; 60
   6E41 1E                  752 	.db #0x1E	; 30
   6E42 3C                  753 	.db #0x3C	; 60
   6E43 3C                  754 	.db #0x3C	; 60
   6E44 30                  755 	.db #0x30	; 48	'0'
   6E45 30                  756 	.db #0x30	; 48	'0'
   6E46 34                  757 	.db #0x34	; 52	'4'
   6E47 3C                  758 	.db #0x3C	; 60
   6E48 2D                  759 	.db #0x2D	; 45
   6E49 3C                  760 	.db #0x3C	; 60
   6E4A 3C                  761 	.db #0x3C	; 60
   6E4B 1E                  762 	.db #0x1E	; 30
   6E4C 3C                  763 	.db #0x3C	; 60
   6E4D 3C                  764 	.db #0x3C	; 60
   6E4E 30                  765 	.db #0x30	; 48	'0'
   6E4F 30                  766 	.db #0x30	; 48	'0'
   6E50 34                  767 	.db #0x34	; 52	'4'
   6E51 3C                  768 	.db #0x3C	; 60
   6E52 2D                  769 	.db #0x2D	; 45
   6E53 3C                  770 	.db #0x3C	; 60
   6E54 3C                  771 	.db #0x3C	; 60
   6E55 1E                  772 	.db #0x1E	; 30
   6E56 3C                  773 	.db #0x3C	; 60
   6E57 3C                  774 	.db #0x3C	; 60
   6E58 3C                  775 	.db #0x3C	; 60
   6E59 3C                  776 	.db #0x3C	; 60
   6E5A 3C                  777 	.db #0x3C	; 60
   6E5B 3C                  778 	.db #0x3C	; 60
   6E5C 2D                  779 	.db #0x2D	; 45
   6E5D 3C                  780 	.db #0x3C	; 60
   6E5E 3C                  781 	.db #0x3C	; 60
   6E5F 1E                  782 	.db #0x1E	; 30
   6E60 3C                  783 	.db #0x3C	; 60
   6E61 3C                  784 	.db #0x3C	; 60
   6E62 3C                  785 	.db #0x3C	; 60
   6E63 3C                  786 	.db #0x3C	; 60
   6E64 3C                  787 	.db #0x3C	; 60
   6E65 3C                  788 	.db #0x3C	; 60
   6E66 2D                  789 	.db #0x2D	; 45
   6E67 3C                  790 	.db #0x3C	; 60
   6E68 3C                  791 	.db #0x3C	; 60
   6E69 1E                  792 	.db #0x1E	; 30
   6E6A 3C                  793 	.db #0x3C	; 60
   6E6B 3C                  794 	.db #0x3C	; 60
   6E6C 3C                  795 	.db #0x3C	; 60
   6E6D 3C                  796 	.db #0x3C	; 60
   6E6E 3C                  797 	.db #0x3C	; 60
   6E6F 3C                  798 	.db #0x3C	; 60
   6E70 2D                  799 	.db #0x2D	; 45
   6E71 3C                  800 	.db #0x3C	; 60
   6E72 3C                  801 	.db #0x3C	; 60
   6E73 1E                  802 	.db #0x1E	; 30
   6E74 3C                  803 	.db #0x3C	; 60
   6E75 3C                  804 	.db #0x3C	; 60
   6E76 3C                  805 	.db #0x3C	; 60
   6E77 3C                  806 	.db #0x3C	; 60
   6E78 3C                  807 	.db #0x3C	; 60
   6E79 3C                  808 	.db #0x3C	; 60
   6E7A 2D                  809 	.db #0x2D	; 45
   6E7B 3C                  810 	.db #0x3C	; 60
   6E7C 3C                  811 	.db #0x3C	; 60
   6E7D 0F                  812 	.db #0x0F	; 15
   6E7E 3C                  813 	.db #0x3C	; 60
   6E7F 3C                  814 	.db #0x3C	; 60
   6E80 3C                  815 	.db #0x3C	; 60
   6E81 3C                  816 	.db #0x3C	; 60
   6E82 3C                  817 	.db #0x3C	; 60
   6E83 3C                  818 	.db #0x3C	; 60
   6E84 0F                  819 	.db #0x0F	; 15
   6E85 3C                  820 	.db #0x3C	; 60
   6E86 3C                  821 	.db #0x3C	; 60
   6E87 2D                  822 	.db #0x2D	; 45
   6E88 3C                  823 	.db #0x3C	; 60
   6E89 3C                  824 	.db #0x3C	; 60
   6E8A 3C                  825 	.db #0x3C	; 60
   6E8B 3C                  826 	.db #0x3C	; 60
   6E8C 3C                  827 	.db #0x3C	; 60
   6E8D 3C                  828 	.db #0x3C	; 60
   6E8E 1E                  829 	.db #0x1E	; 30
   6E8F 3C                  830 	.db #0x3C	; 60
   6E90 3C                  831 	.db #0x3C	; 60
   6E91 2D                  832 	.db #0x2D	; 45
   6E92 0F                  833 	.db #0x0F	; 15
   6E93 0F                  834 	.db #0x0F	; 15
   6E94 0F                  835 	.db #0x0F	; 15
   6E95 0F                  836 	.db #0x0F	; 15
   6E96 0F                  837 	.db #0x0F	; 15
   6E97 0F                  838 	.db #0x0F	; 15
   6E98 1E                  839 	.db #0x1E	; 30
   6E99 3C                  840 	.db #0x3C	; 60
   6E9A F0                  841 	.db #0xF0	; 240
   6E9B 3C                  842 	.db #0x3C	; 60
   6E9C 3C                  843 	.db #0x3C	; 60
   6E9D 3C                  844 	.db #0x3C	; 60
   6E9E 3C                  845 	.db #0x3C	; 60
   6E9F 3C                  846 	.db #0x3C	; 60
   6EA0 3C                  847 	.db #0x3C	; 60
   6EA1 3C                  848 	.db #0x3C	; 60
   6EA2 3C                  849 	.db #0x3C	; 60
   6EA3 F0                  850 	.db #0xF0	; 240
   6EA4 F0                  851 	.db #0xF0	; 240
   6EA5 3C                  852 	.db #0x3C	; 60
   6EA6 3C                  853 	.db #0x3C	; 60
   6EA7 3C                  854 	.db #0x3C	; 60
   6EA8 3C                  855 	.db #0x3C	; 60
   6EA9 3C                  856 	.db #0x3C	; 60
   6EAA 3C                  857 	.db #0x3C	; 60
   6EAB 3C                  858 	.db #0x3C	; 60
   6EAC 3C                  859 	.db #0x3C	; 60
   6EAD F0                  860 	.db #0xF0	; 240
   6EAE                     861 _tile_tiles_02:
   6EAE F0                  862 	.db #0xF0	; 240
   6EAF CC                  863 	.db #0xCC	; 204
   6EB0 CC                  864 	.db #0xCC	; 204
   6EB1 CC                  865 	.db #0xCC	; 204
   6EB2 CC                  866 	.db #0xCC	; 204
   6EB3 CC                  867 	.db #0xCC	; 204
   6EB4 CC                  868 	.db #0xCC	; 204
   6EB5 CC                  869 	.db #0xCC	; 204
   6EB6 CC                  870 	.db #0xCC	; 204
   6EB7 F0                  871 	.db #0xF0	; 240
   6EB8 F0                  872 	.db #0xF0	; 240
   6EB9 CC                  873 	.db #0xCC	; 204
   6EBA CC                  874 	.db #0xCC	; 204
   6EBB CC                  875 	.db #0xCC	; 204
   6EBC CC                  876 	.db #0xCC	; 204
   6EBD CC                  877 	.db #0xCC	; 204
   6EBE CC                  878 	.db #0xCC	; 204
   6EBF CC                  879 	.db #0xCC	; 204
   6EC0 CC                  880 	.db #0xCC	; 204
   6EC1 F0                  881 	.db #0xF0	; 240
   6EC2 CC                  882 	.db #0xCC	; 204
   6EC3 8D                  883 	.db #0x8D	; 141
   6EC4 0F                  884 	.db #0x0F	; 15
   6EC5 0F                  885 	.db #0x0F	; 15
   6EC6 0F                  886 	.db #0x0F	; 15
   6EC7 0F                  887 	.db #0x0F	; 15
   6EC8 0F                  888 	.db #0x0F	; 15
   6EC9 0F                  889 	.db #0x0F	; 15
   6ECA 4E                  890 	.db #0x4E	; 78	'N'
   6ECB CC                  891 	.db #0xCC	; 204
   6ECC CC                  892 	.db #0xCC	; 204
   6ECD 8D                  893 	.db #0x8D	; 141
   6ECE CC                  894 	.db #0xCC	; 204
   6ECF CC                  895 	.db #0xCC	; 204
   6ED0 CC                  896 	.db #0xCC	; 204
   6ED1 CC                  897 	.db #0xCC	; 204
   6ED2 CC                  898 	.db #0xCC	; 204
   6ED3 CC                  899 	.db #0xCC	; 204
   6ED4 4E                  900 	.db #0x4E	; 78	'N'
   6ED5 CC                  901 	.db #0xCC	; 204
   6ED6 CC                  902 	.db #0xCC	; 204
   6ED7 0F                  903 	.db #0x0F	; 15
   6ED8 CC                  904 	.db #0xCC	; 204
   6ED9 CC                  905 	.db #0xCC	; 204
   6EDA CC                  906 	.db #0xCC	; 204
   6EDB CC                  907 	.db #0xCC	; 204
   6EDC CC                  908 	.db #0xCC	; 204
   6EDD CC                  909 	.db #0xCC	; 204
   6EDE 0F                  910 	.db #0x0F	; 15
   6EDF CC                  911 	.db #0xCC	; 204
   6EE0 CC                  912 	.db #0xCC	; 204
   6EE1 4E                  913 	.db #0x4E	; 78	'N'
   6EE2 CC                  914 	.db #0xCC	; 204
   6EE3 CC                  915 	.db #0xCC	; 204
   6EE4 CC                  916 	.db #0xCC	; 204
   6EE5 CC                  917 	.db #0xCC	; 204
   6EE6 CC                  918 	.db #0xCC	; 204
   6EE7 CC                  919 	.db #0xCC	; 204
   6EE8 8D                  920 	.db #0x8D	; 141
   6EE9 CC                  921 	.db #0xCC	; 204
   6EEA CC                  922 	.db #0xCC	; 204
   6EEB 4E                  923 	.db #0x4E	; 78	'N'
   6EEC CC                  924 	.db #0xCC	; 204
   6EED CC                  925 	.db #0xCC	; 204
   6EEE CC                  926 	.db #0xCC	; 204
   6EEF CC                  927 	.db #0xCC	; 204
   6EF0 CC                  928 	.db #0xCC	; 204
   6EF1 CC                  929 	.db #0xCC	; 204
   6EF2 8D                  930 	.db #0x8D	; 141
   6EF3 CC                  931 	.db #0xCC	; 204
   6EF4 CC                  932 	.db #0xCC	; 204
   6EF5 4E                  933 	.db #0x4E	; 78	'N'
   6EF6 CC                  934 	.db #0xCC	; 204
   6EF7 CC                  935 	.db #0xCC	; 204
   6EF8 CC                  936 	.db #0xCC	; 204
   6EF9 CC                  937 	.db #0xCC	; 204
   6EFA CC                  938 	.db #0xCC	; 204
   6EFB CC                  939 	.db #0xCC	; 204
   6EFC 8D                  940 	.db #0x8D	; 141
   6EFD CC                  941 	.db #0xCC	; 204
   6EFE CC                  942 	.db #0xCC	; 204
   6EFF 4E                  943 	.db #0x4E	; 78	'N'
   6F00 CC                  944 	.db #0xCC	; 204
   6F01 CC                  945 	.db #0xCC	; 204
   6F02 CC                  946 	.db #0xCC	; 204
   6F03 CC                  947 	.db #0xCC	; 204
   6F04 CC                  948 	.db #0xCC	; 204
   6F05 CC                  949 	.db #0xCC	; 204
   6F06 8D                  950 	.db #0x8D	; 141
   6F07 CC                  951 	.db #0xCC	; 204
   6F08 CC                  952 	.db #0xCC	; 204
   6F09 4E                  953 	.db #0x4E	; 78	'N'
   6F0A CC                  954 	.db #0xCC	; 204
   6F0B CC                  955 	.db #0xCC	; 204
   6F0C CC                  956 	.db #0xCC	; 204
   6F0D 30                  957 	.db #0x30	; 48	'0'
   6F0E CC                  958 	.db #0xCC	; 204
   6F0F CC                  959 	.db #0xCC	; 204
   6F10 8D                  960 	.db #0x8D	; 141
   6F11 CC                  961 	.db #0xCC	; 204
   6F12 CC                  962 	.db #0xCC	; 204
   6F13 4E                  963 	.db #0x4E	; 78	'N'
   6F14 CC                  964 	.db #0xCC	; 204
   6F15 CC                  965 	.db #0xCC	; 204
   6F16 98                  966 	.db #0x98	; 152
   6F17 30                  967 	.db #0x30	; 48	'0'
   6F18 CC                  968 	.db #0xCC	; 204
   6F19 CC                  969 	.db #0xCC	; 204
   6F1A 8D                  970 	.db #0x8D	; 141
   6F1B CC                  971 	.db #0xCC	; 204
   6F1C CC                  972 	.db #0xCC	; 204
   6F1D 4E                  973 	.db #0x4E	; 78	'N'
   6F1E CC                  974 	.db #0xCC	; 204
   6F1F CC                  975 	.db #0xCC	; 204
   6F20 98                  976 	.db #0x98	; 152
   6F21 98                  977 	.db #0x98	; 152
   6F22 64                  978 	.db #0x64	; 100	'd'
   6F23 CC                  979 	.db #0xCC	; 204
   6F24 8D                  980 	.db #0x8D	; 141
   6F25 CC                  981 	.db #0xCC	; 204
   6F26 CC                  982 	.db #0xCC	; 204
   6F27 4E                  983 	.db #0x4E	; 78	'N'
   6F28 CC                  984 	.db #0xCC	; 204
   6F29 CC                  985 	.db #0xCC	; 204
   6F2A 64                  986 	.db #0x64	; 100	'd'
   6F2B CC                  987 	.db #0xCC	; 204
   6F2C 64                  988 	.db #0x64	; 100	'd'
   6F2D CC                  989 	.db #0xCC	; 204
   6F2E 8D                  990 	.db #0x8D	; 141
   6F2F CC                  991 	.db #0xCC	; 204
   6F30 CC                  992 	.db #0xCC	; 204
   6F31 4E                  993 	.db #0x4E	; 78	'N'
   6F32 CC                  994 	.db #0xCC	; 204
   6F33 CC                  995 	.db #0xCC	; 204
   6F34 64                  996 	.db #0x64	; 100	'd'
   6F35 CC                  997 	.db #0xCC	; 204
   6F36 64                  998 	.db #0x64	; 100	'd'
   6F37 CC                  999 	.db #0xCC	; 204
   6F38 8D                 1000 	.db #0x8D	; 141
   6F39 CC                 1001 	.db #0xCC	; 204
   6F3A CC                 1002 	.db #0xCC	; 204
   6F3B 4E                 1003 	.db #0x4E	; 78	'N'
   6F3C CC                 1004 	.db #0xCC	; 204
   6F3D CC                 1005 	.db #0xCC	; 204
   6F3E 64                 1006 	.db #0x64	; 100	'd'
   6F3F CC                 1007 	.db #0xCC	; 204
   6F40 64                 1008 	.db #0x64	; 100	'd'
   6F41 CC                 1009 	.db #0xCC	; 204
   6F42 8D                 1010 	.db #0x8D	; 141
   6F43 CC                 1011 	.db #0xCC	; 204
   6F44 CC                 1012 	.db #0xCC	; 204
   6F45 4E                 1013 	.db #0x4E	; 78	'N'
   6F46 CC                 1014 	.db #0xCC	; 204
   6F47 CC                 1015 	.db #0xCC	; 204
   6F48 CC                 1016 	.db #0xCC	; 204
   6F49 CC                 1017 	.db #0xCC	; 204
   6F4A 64                 1018 	.db #0x64	; 100	'd'
   6F4B CC                 1019 	.db #0xCC	; 204
   6F4C 8D                 1020 	.db #0x8D	; 141
   6F4D CC                 1021 	.db #0xCC	; 204
   6F4E CC                 1022 	.db #0xCC	; 204
   6F4F 4E                 1023 	.db #0x4E	; 78	'N'
   6F50 CC                 1024 	.db #0xCC	; 204
   6F51 CC                 1025 	.db #0xCC	; 204
   6F52 CC                 1026 	.db #0xCC	; 204
   6F53 CC                 1027 	.db #0xCC	; 204
   6F54 64                 1028 	.db #0x64	; 100	'd'
   6F55 CC                 1029 	.db #0xCC	; 204
   6F56 8D                 1030 	.db #0x8D	; 141
   6F57 CC                 1031 	.db #0xCC	; 204
   6F58 CC                 1032 	.db #0xCC	; 204
   6F59 4E                 1033 	.db #0x4E	; 78	'N'
   6F5A CC                 1034 	.db #0xCC	; 204
   6F5B CC                 1035 	.db #0xCC	; 204
   6F5C CC                 1036 	.db #0xCC	; 204
   6F5D 98                 1037 	.db #0x98	; 152
   6F5E CC                 1038 	.db #0xCC	; 204
   6F5F CC                 1039 	.db #0xCC	; 204
   6F60 8D                 1040 	.db #0x8D	; 141
   6F61 CC                 1041 	.db #0xCC	; 204
   6F62 CC                 1042 	.db #0xCC	; 204
   6F63 4E                 1043 	.db #0x4E	; 78	'N'
   6F64 CC                 1044 	.db #0xCC	; 204
   6F65 CC                 1045 	.db #0xCC	; 204
   6F66 CC                 1046 	.db #0xCC	; 204
   6F67 98                 1047 	.db #0x98	; 152
   6F68 CC                 1048 	.db #0xCC	; 204
   6F69 CC                 1049 	.db #0xCC	; 204
   6F6A 8D                 1050 	.db #0x8D	; 141
   6F6B CC                 1051 	.db #0xCC	; 204
   6F6C CC                 1052 	.db #0xCC	; 204
   6F6D 4E                 1053 	.db #0x4E	; 78	'N'
   6F6E CC                 1054 	.db #0xCC	; 204
   6F6F CC                 1055 	.db #0xCC	; 204
   6F70 CC                 1056 	.db #0xCC	; 204
   6F71 30                 1057 	.db #0x30	; 48	'0'
   6F72 CC                 1058 	.db #0xCC	; 204
   6F73 CC                 1059 	.db #0xCC	; 204
   6F74 8D                 1060 	.db #0x8D	; 141
   6F75 CC                 1061 	.db #0xCC	; 204
   6F76 CC                 1062 	.db #0xCC	; 204
   6F77 4E                 1063 	.db #0x4E	; 78	'N'
   6F78 CC                 1064 	.db #0xCC	; 204
   6F79 CC                 1065 	.db #0xCC	; 204
   6F7A CC                 1066 	.db #0xCC	; 204
   6F7B 64                 1067 	.db #0x64	; 100	'd'
   6F7C CC                 1068 	.db #0xCC	; 204
   6F7D CC                 1069 	.db #0xCC	; 204
   6F7E 8D                 1070 	.db #0x8D	; 141
   6F7F CC                 1071 	.db #0xCC	; 204
   6F80 CC                 1072 	.db #0xCC	; 204
   6F81 4E                 1073 	.db #0x4E	; 78	'N'
   6F82 CC                 1074 	.db #0xCC	; 204
   6F83 CC                 1075 	.db #0xCC	; 204
   6F84 CC                 1076 	.db #0xCC	; 204
   6F85 64                 1077 	.db #0x64	; 100	'd'
   6F86 CC                 1078 	.db #0xCC	; 204
   6F87 CC                 1079 	.db #0xCC	; 204
   6F88 8D                 1080 	.db #0x8D	; 141
   6F89 CC                 1081 	.db #0xCC	; 204
   6F8A CC                 1082 	.db #0xCC	; 204
   6F8B 4E                 1083 	.db #0x4E	; 78	'N'
   6F8C CC                 1084 	.db #0xCC	; 204
   6F8D CC                 1085 	.db #0xCC	; 204
   6F8E 98                 1086 	.db #0x98	; 152
   6F8F 64                 1087 	.db #0x64	; 100	'd'
   6F90 CC                 1088 	.db #0xCC	; 204
   6F91 CC                 1089 	.db #0xCC	; 204
   6F92 8D                 1090 	.db #0x8D	; 141
   6F93 CC                 1091 	.db #0xCC	; 204
   6F94 CC                 1092 	.db #0xCC	; 204
   6F95 4E                 1093 	.db #0x4E	; 78	'N'
   6F96 CC                 1094 	.db #0xCC	; 204
   6F97 CC                 1095 	.db #0xCC	; 204
   6F98 98                 1096 	.db #0x98	; 152
   6F99 CC                 1097 	.db #0xCC	; 204
   6F9A CC                 1098 	.db #0xCC	; 204
   6F9B CC                 1099 	.db #0xCC	; 204
   6F9C 8D                 1100 	.db #0x8D	; 141
   6F9D CC                 1101 	.db #0xCC	; 204
   6F9E CC                 1102 	.db #0xCC	; 204
   6F9F 4E                 1103 	.db #0x4E	; 78	'N'
   6FA0 CC                 1104 	.db #0xCC	; 204
   6FA1 CC                 1105 	.db #0xCC	; 204
   6FA2 98                 1106 	.db #0x98	; 152
   6FA3 CC                 1107 	.db #0xCC	; 204
   6FA4 CC                 1108 	.db #0xCC	; 204
   6FA5 CC                 1109 	.db #0xCC	; 204
   6FA6 8D                 1110 	.db #0x8D	; 141
   6FA7 CC                 1111 	.db #0xCC	; 204
   6FA8 CC                 1112 	.db #0xCC	; 204
   6FA9 4E                 1113 	.db #0x4E	; 78	'N'
   6FAA CC                 1114 	.db #0xCC	; 204
   6FAB CC                 1115 	.db #0xCC	; 204
   6FAC 64                 1116 	.db #0x64	; 100	'd'
   6FAD CC                 1117 	.db #0xCC	; 204
   6FAE CC                 1118 	.db #0xCC	; 204
   6FAF CC                 1119 	.db #0xCC	; 204
   6FB0 8D                 1120 	.db #0x8D	; 141
   6FB1 CC                 1121 	.db #0xCC	; 204
   6FB2 CC                 1122 	.db #0xCC	; 204
   6FB3 4E                 1123 	.db #0x4E	; 78	'N'
   6FB4 CC                 1124 	.db #0xCC	; 204
   6FB5 CC                 1125 	.db #0xCC	; 204
   6FB6 64                 1126 	.db #0x64	; 100	'd'
   6FB7 CC                 1127 	.db #0xCC	; 204
   6FB8 CC                 1128 	.db #0xCC	; 204
   6FB9 CC                 1129 	.db #0xCC	; 204
   6FBA 8D                 1130 	.db #0x8D	; 141
   6FBB CC                 1131 	.db #0xCC	; 204
   6FBC CC                 1132 	.db #0xCC	; 204
   6FBD 4E                 1133 	.db #0x4E	; 78	'N'
   6FBE CC                 1134 	.db #0xCC	; 204
   6FBF CC                 1135 	.db #0xCC	; 204
   6FC0 64                 1136 	.db #0x64	; 100	'd'
   6FC1 CC                 1137 	.db #0xCC	; 204
   6FC2 CC                 1138 	.db #0xCC	; 204
   6FC3 CC                 1139 	.db #0xCC	; 204
   6FC4 8D                 1140 	.db #0x8D	; 141
   6FC5 CC                 1141 	.db #0xCC	; 204
   6FC6 CC                 1142 	.db #0xCC	; 204
   6FC7 4E                 1143 	.db #0x4E	; 78	'N'
   6FC8 CC                 1144 	.db #0xCC	; 204
   6FC9 CC                 1145 	.db #0xCC	; 204
   6FCA 64                 1146 	.db #0x64	; 100	'd'
   6FCB CC                 1147 	.db #0xCC	; 204
   6FCC CC                 1148 	.db #0xCC	; 204
   6FCD CC                 1149 	.db #0xCC	; 204
   6FCE 8D                 1150 	.db #0x8D	; 141
   6FCF CC                 1151 	.db #0xCC	; 204
   6FD0 CC                 1152 	.db #0xCC	; 204
   6FD1 4E                 1153 	.db #0x4E	; 78	'N'
   6FD2 CC                 1154 	.db #0xCC	; 204
   6FD3 CC                 1155 	.db #0xCC	; 204
   6FD4 30                 1156 	.db #0x30	; 48	'0'
   6FD5 30                 1157 	.db #0x30	; 48	'0'
   6FD6 64                 1158 	.db #0x64	; 100	'd'
   6FD7 CC                 1159 	.db #0xCC	; 204
   6FD8 8D                 1160 	.db #0x8D	; 141
   6FD9 CC                 1161 	.db #0xCC	; 204
   6FDA CC                 1162 	.db #0xCC	; 204
   6FDB 4E                 1163 	.db #0x4E	; 78	'N'
   6FDC CC                 1164 	.db #0xCC	; 204
   6FDD CC                 1165 	.db #0xCC	; 204
   6FDE 30                 1166 	.db #0x30	; 48	'0'
   6FDF 30                 1167 	.db #0x30	; 48	'0'
   6FE0 64                 1168 	.db #0x64	; 100	'd'
   6FE1 CC                 1169 	.db #0xCC	; 204
   6FE2 8D                 1170 	.db #0x8D	; 141
   6FE3 CC                 1171 	.db #0xCC	; 204
   6FE4 CC                 1172 	.db #0xCC	; 204
   6FE5 4E                 1173 	.db #0x4E	; 78	'N'
   6FE6 CC                 1174 	.db #0xCC	; 204
   6FE7 CC                 1175 	.db #0xCC	; 204
   6FE8 CC                 1176 	.db #0xCC	; 204
   6FE9 CC                 1177 	.db #0xCC	; 204
   6FEA CC                 1178 	.db #0xCC	; 204
   6FEB CC                 1179 	.db #0xCC	; 204
   6FEC 8D                 1180 	.db #0x8D	; 141
   6FED CC                 1181 	.db #0xCC	; 204
   6FEE CC                 1182 	.db #0xCC	; 204
   6FEF 4E                 1183 	.db #0x4E	; 78	'N'
   6FF0 CC                 1184 	.db #0xCC	; 204
   6FF1 CC                 1185 	.db #0xCC	; 204
   6FF2 CC                 1186 	.db #0xCC	; 204
   6FF3 CC                 1187 	.db #0xCC	; 204
   6FF4 CC                 1188 	.db #0xCC	; 204
   6FF5 CC                 1189 	.db #0xCC	; 204
   6FF6 8D                 1190 	.db #0x8D	; 141
   6FF7 CC                 1191 	.db #0xCC	; 204
   6FF8 CC                 1192 	.db #0xCC	; 204
   6FF9 4E                 1193 	.db #0x4E	; 78	'N'
   6FFA CC                 1194 	.db #0xCC	; 204
   6FFB CC                 1195 	.db #0xCC	; 204
   6FFC CC                 1196 	.db #0xCC	; 204
   6FFD CC                 1197 	.db #0xCC	; 204
   6FFE CC                 1198 	.db #0xCC	; 204
   6FFF CC                 1199 	.db #0xCC	; 204
   7000 8D                 1200 	.db #0x8D	; 141
   7001 CC                 1201 	.db #0xCC	; 204
   7002 CC                 1202 	.db #0xCC	; 204
   7003 4E                 1203 	.db #0x4E	; 78	'N'
   7004 CC                 1204 	.db #0xCC	; 204
   7005 CC                 1205 	.db #0xCC	; 204
   7006 CC                 1206 	.db #0xCC	; 204
   7007 CC                 1207 	.db #0xCC	; 204
   7008 CC                 1208 	.db #0xCC	; 204
   7009 CC                 1209 	.db #0xCC	; 204
   700A 8D                 1210 	.db #0x8D	; 141
   700B CC                 1211 	.db #0xCC	; 204
   700C CC                 1212 	.db #0xCC	; 204
   700D 0F                 1213 	.db #0x0F	; 15
   700E CC                 1214 	.db #0xCC	; 204
   700F CC                 1215 	.db #0xCC	; 204
   7010 CC                 1216 	.db #0xCC	; 204
   7011 CC                 1217 	.db #0xCC	; 204
   7012 CC                 1218 	.db #0xCC	; 204
   7013 CC                 1219 	.db #0xCC	; 204
   7014 0F                 1220 	.db #0x0F	; 15
   7015 CC                 1221 	.db #0xCC	; 204
   7016 CC                 1222 	.db #0xCC	; 204
   7017 8D                 1223 	.db #0x8D	; 141
   7018 CC                 1224 	.db #0xCC	; 204
   7019 CC                 1225 	.db #0xCC	; 204
   701A CC                 1226 	.db #0xCC	; 204
   701B CC                 1227 	.db #0xCC	; 204
   701C CC                 1228 	.db #0xCC	; 204
   701D CC                 1229 	.db #0xCC	; 204
   701E 4E                 1230 	.db #0x4E	; 78	'N'
   701F CC                 1231 	.db #0xCC	; 204
   7020 CC                 1232 	.db #0xCC	; 204
   7021 8D                 1233 	.db #0x8D	; 141
   7022 0F                 1234 	.db #0x0F	; 15
   7023 0F                 1235 	.db #0x0F	; 15
   7024 0F                 1236 	.db #0x0F	; 15
   7025 0F                 1237 	.db #0x0F	; 15
   7026 0F                 1238 	.db #0x0F	; 15
   7027 0F                 1239 	.db #0x0F	; 15
   7028 4E                 1240 	.db #0x4E	; 78	'N'
   7029 CC                 1241 	.db #0xCC	; 204
   702A F0                 1242 	.db #0xF0	; 240
   702B CC                 1243 	.db #0xCC	; 204
   702C CC                 1244 	.db #0xCC	; 204
   702D CC                 1245 	.db #0xCC	; 204
   702E CC                 1246 	.db #0xCC	; 204
   702F CC                 1247 	.db #0xCC	; 204
   7030 CC                 1248 	.db #0xCC	; 204
   7031 CC                 1249 	.db #0xCC	; 204
   7032 CC                 1250 	.db #0xCC	; 204
   7033 F0                 1251 	.db #0xF0	; 240
   7034 F0                 1252 	.db #0xF0	; 240
   7035 CC                 1253 	.db #0xCC	; 204
   7036 CC                 1254 	.db #0xCC	; 204
   7037 CC                 1255 	.db #0xCC	; 204
   7038 CC                 1256 	.db #0xCC	; 204
   7039 CC                 1257 	.db #0xCC	; 204
   703A CC                 1258 	.db #0xCC	; 204
   703B CC                 1259 	.db #0xCC	; 204
   703C CC                 1260 	.db #0xCC	; 204
   703D F0                 1261 	.db #0xF0	; 240
   703E                    1262 _tile_tiles_03:
   703E F0                 1263 	.db #0xF0	; 240
   703F 30                 1264 	.db #0x30	; 48	'0'
   7040 30                 1265 	.db #0x30	; 48	'0'
   7041 30                 1266 	.db #0x30	; 48	'0'
   7042 30                 1267 	.db #0x30	; 48	'0'
   7043 30                 1268 	.db #0x30	; 48	'0'
   7044 30                 1269 	.db #0x30	; 48	'0'
   7045 30                 1270 	.db #0x30	; 48	'0'
   7046 30                 1271 	.db #0x30	; 48	'0'
   7047 F0                 1272 	.db #0xF0	; 240
   7048 F0                 1273 	.db #0xF0	; 240
   7049 30                 1274 	.db #0x30	; 48	'0'
   704A 30                 1275 	.db #0x30	; 48	'0'
   704B 30                 1276 	.db #0x30	; 48	'0'
   704C 30                 1277 	.db #0x30	; 48	'0'
   704D 30                 1278 	.db #0x30	; 48	'0'
   704E 30                 1279 	.db #0x30	; 48	'0'
   704F 30                 1280 	.db #0x30	; 48	'0'
   7050 30                 1281 	.db #0x30	; 48	'0'
   7051 F0                 1282 	.db #0xF0	; 240
   7052 30                 1283 	.db #0x30	; 48	'0'
   7053 25                 1284 	.db #0x25	; 37
   7054 0F                 1285 	.db #0x0F	; 15
   7055 0F                 1286 	.db #0x0F	; 15
   7056 0F                 1287 	.db #0x0F	; 15
   7057 0F                 1288 	.db #0x0F	; 15
   7058 0F                 1289 	.db #0x0F	; 15
   7059 0F                 1290 	.db #0x0F	; 15
   705A 1A                 1291 	.db #0x1A	; 26
   705B 30                 1292 	.db #0x30	; 48	'0'
   705C 30                 1293 	.db #0x30	; 48	'0'
   705D 25                 1294 	.db #0x25	; 37
   705E 30                 1295 	.db #0x30	; 48	'0'
   705F 30                 1296 	.db #0x30	; 48	'0'
   7060 30                 1297 	.db #0x30	; 48	'0'
   7061 30                 1298 	.db #0x30	; 48	'0'
   7062 30                 1299 	.db #0x30	; 48	'0'
   7063 30                 1300 	.db #0x30	; 48	'0'
   7064 1A                 1301 	.db #0x1A	; 26
   7065 30                 1302 	.db #0x30	; 48	'0'
   7066 30                 1303 	.db #0x30	; 48	'0'
   7067 0F                 1304 	.db #0x0F	; 15
   7068 30                 1305 	.db #0x30	; 48	'0'
   7069 30                 1306 	.db #0x30	; 48	'0'
   706A 30                 1307 	.db #0x30	; 48	'0'
   706B 30                 1308 	.db #0x30	; 48	'0'
   706C 30                 1309 	.db #0x30	; 48	'0'
   706D 30                 1310 	.db #0x30	; 48	'0'
   706E 0F                 1311 	.db #0x0F	; 15
   706F 30                 1312 	.db #0x30	; 48	'0'
   7070 30                 1313 	.db #0x30	; 48	'0'
   7071 1A                 1314 	.db #0x1A	; 26
   7072 30                 1315 	.db #0x30	; 48	'0'
   7073 30                 1316 	.db #0x30	; 48	'0'
   7074 30                 1317 	.db #0x30	; 48	'0'
   7075 30                 1318 	.db #0x30	; 48	'0'
   7076 30                 1319 	.db #0x30	; 48	'0'
   7077 30                 1320 	.db #0x30	; 48	'0'
   7078 25                 1321 	.db #0x25	; 37
   7079 30                 1322 	.db #0x30	; 48	'0'
   707A 30                 1323 	.db #0x30	; 48	'0'
   707B 1A                 1324 	.db #0x1A	; 26
   707C 30                 1325 	.db #0x30	; 48	'0'
   707D 30                 1326 	.db #0x30	; 48	'0'
   707E 30                 1327 	.db #0x30	; 48	'0'
   707F 30                 1328 	.db #0x30	; 48	'0'
   7080 30                 1329 	.db #0x30	; 48	'0'
   7081 30                 1330 	.db #0x30	; 48	'0'
   7082 25                 1331 	.db #0x25	; 37
   7083 30                 1332 	.db #0x30	; 48	'0'
   7084 30                 1333 	.db #0x30	; 48	'0'
   7085 1A                 1334 	.db #0x1A	; 26
   7086 30                 1335 	.db #0x30	; 48	'0'
   7087 30                 1336 	.db #0x30	; 48	'0'
   7088 30                 1337 	.db #0x30	; 48	'0'
   7089 30                 1338 	.db #0x30	; 48	'0'
   708A 30                 1339 	.db #0x30	; 48	'0'
   708B 30                 1340 	.db #0x30	; 48	'0'
   708C 25                 1341 	.db #0x25	; 37
   708D 30                 1342 	.db #0x30	; 48	'0'
   708E 30                 1343 	.db #0x30	; 48	'0'
   708F 1A                 1344 	.db #0x1A	; 26
   7090 30                 1345 	.db #0x30	; 48	'0'
   7091 30                 1346 	.db #0x30	; 48	'0'
   7092 30                 1347 	.db #0x30	; 48	'0'
   7093 30                 1348 	.db #0x30	; 48	'0'
   7094 30                 1349 	.db #0x30	; 48	'0'
   7095 30                 1350 	.db #0x30	; 48	'0'
   7096 25                 1351 	.db #0x25	; 37
   7097 30                 1352 	.db #0x30	; 48	'0'
   7098 30                 1353 	.db #0x30	; 48	'0'
   7099 1A                 1354 	.db #0x1A	; 26
   709A 30                 1355 	.db #0x30	; 48	'0'
   709B 30                 1356 	.db #0x30	; 48	'0'
   709C 30                 1357 	.db #0x30	; 48	'0'
   709D 30                 1358 	.db #0x30	; 48	'0'
   709E 30                 1359 	.db #0x30	; 48	'0'
   709F 30                 1360 	.db #0x30	; 48	'0'
   70A0 25                 1361 	.db #0x25	; 37
   70A1 30                 1362 	.db #0x30	; 48	'0'
   70A2 30                 1363 	.db #0x30	; 48	'0'
   70A3 1A                 1364 	.db #0x1A	; 26
   70A4 30                 1365 	.db #0x30	; 48	'0'
   70A5 30                 1366 	.db #0x30	; 48	'0'
   70A6 64                 1367 	.db #0x64	; 100	'd'
   70A7 CC                 1368 	.db #0xCC	; 204
   70A8 30                 1369 	.db #0x30	; 48	'0'
   70A9 30                 1370 	.db #0x30	; 48	'0'
   70AA 25                 1371 	.db #0x25	; 37
   70AB 30                 1372 	.db #0x30	; 48	'0'
   70AC 30                 1373 	.db #0x30	; 48	'0'
   70AD 1A                 1374 	.db #0x1A	; 26
   70AE 30                 1375 	.db #0x30	; 48	'0'
   70AF 30                 1376 	.db #0x30	; 48	'0'
   70B0 CC                 1377 	.db #0xCC	; 204
   70B1 CC                 1378 	.db #0xCC	; 204
   70B2 98                 1379 	.db #0x98	; 152
   70B3 30                 1380 	.db #0x30	; 48	'0'
   70B4 25                 1381 	.db #0x25	; 37
   70B5 30                 1382 	.db #0x30	; 48	'0'
   70B6 30                 1383 	.db #0x30	; 48	'0'
   70B7 1A                 1384 	.db #0x1A	; 26
   70B8 30                 1385 	.db #0x30	; 48	'0'
   70B9 64                 1386 	.db #0x64	; 100	'd'
   70BA CC                 1387 	.db #0xCC	; 204
   70BB 64                 1388 	.db #0x64	; 100	'd'
   70BC CC                 1389 	.db #0xCC	; 204
   70BD 30                 1390 	.db #0x30	; 48	'0'
   70BE 25                 1391 	.db #0x25	; 37
   70BF 30                 1392 	.db #0x30	; 48	'0'
   70C0 30                 1393 	.db #0x30	; 48	'0'
   70C1 1A                 1394 	.db #0x1A	; 26
   70C2 30                 1395 	.db #0x30	; 48	'0'
   70C3 64                 1396 	.db #0x64	; 100	'd'
   70C4 98                 1397 	.db #0x98	; 152
   70C5 30                 1398 	.db #0x30	; 48	'0'
   70C6 CC                 1399 	.db #0xCC	; 204
   70C7 30                 1400 	.db #0x30	; 48	'0'
   70C8 25                 1401 	.db #0x25	; 37
   70C9 30                 1402 	.db #0x30	; 48	'0'
   70CA 30                 1403 	.db #0x30	; 48	'0'
   70CB 1A                 1404 	.db #0x1A	; 26
   70CC 30                 1405 	.db #0x30	; 48	'0'
   70CD 64                 1406 	.db #0x64	; 100	'd'
   70CE 98                 1407 	.db #0x98	; 152
   70CF 30                 1408 	.db #0x30	; 48	'0'
   70D0 CC                 1409 	.db #0xCC	; 204
   70D1 30                 1410 	.db #0x30	; 48	'0'
   70D2 25                 1411 	.db #0x25	; 37
   70D3 30                 1412 	.db #0x30	; 48	'0'
   70D4 30                 1413 	.db #0x30	; 48	'0'
   70D5 1A                 1414 	.db #0x1A	; 26
   70D6 30                 1415 	.db #0x30	; 48	'0'
   70D7 30                 1416 	.db #0x30	; 48	'0'
   70D8 30                 1417 	.db #0x30	; 48	'0'
   70D9 30                 1418 	.db #0x30	; 48	'0'
   70DA CC                 1419 	.db #0xCC	; 204
   70DB 30                 1420 	.db #0x30	; 48	'0'
   70DC 25                 1421 	.db #0x25	; 37
   70DD 30                 1422 	.db #0x30	; 48	'0'
   70DE 30                 1423 	.db #0x30	; 48	'0'
   70DF 1A                 1424 	.db #0x1A	; 26
   70E0 30                 1425 	.db #0x30	; 48	'0'
   70E1 30                 1426 	.db #0x30	; 48	'0'
   70E2 30                 1427 	.db #0x30	; 48	'0'
   70E3 30                 1428 	.db #0x30	; 48	'0'
   70E4 CC                 1429 	.db #0xCC	; 204
   70E5 30                 1430 	.db #0x30	; 48	'0'
   70E6 25                 1431 	.db #0x25	; 37
   70E7 30                 1432 	.db #0x30	; 48	'0'
   70E8 30                 1433 	.db #0x30	; 48	'0'
   70E9 1A                 1434 	.db #0x1A	; 26
   70EA 30                 1435 	.db #0x30	; 48	'0'
   70EB 30                 1436 	.db #0x30	; 48	'0'
   70EC 30                 1437 	.db #0x30	; 48	'0'
   70ED 30                 1438 	.db #0x30	; 48	'0'
   70EE CC                 1439 	.db #0xCC	; 204
   70EF 30                 1440 	.db #0x30	; 48	'0'
   70F0 25                 1441 	.db #0x25	; 37
   70F1 30                 1442 	.db #0x30	; 48	'0'
   70F2 30                 1443 	.db #0x30	; 48	'0'
   70F3 1A                 1444 	.db #0x1A	; 26
   70F4 30                 1445 	.db #0x30	; 48	'0'
   70F5 30                 1446 	.db #0x30	; 48	'0'
   70F6 30                 1447 	.db #0x30	; 48	'0'
   70F7 64                 1448 	.db #0x64	; 100	'd'
   70F8 CC                 1449 	.db #0xCC	; 204
   70F9 30                 1450 	.db #0x30	; 48	'0'
   70FA 25                 1451 	.db #0x25	; 37
   70FB 30                 1452 	.db #0x30	; 48	'0'
   70FC 30                 1453 	.db #0x30	; 48	'0'
   70FD 1A                 1454 	.db #0x1A	; 26
   70FE 30                 1455 	.db #0x30	; 48	'0'
   70FF 30                 1456 	.db #0x30	; 48	'0'
   7100 30                 1457 	.db #0x30	; 48	'0'
   7101 CC                 1458 	.db #0xCC	; 204
   7102 CC                 1459 	.db #0xCC	; 204
   7103 30                 1460 	.db #0x30	; 48	'0'
   7104 25                 1461 	.db #0x25	; 37
   7105 30                 1462 	.db #0x30	; 48	'0'
   7106 30                 1463 	.db #0x30	; 48	'0'
   7107 1A                 1464 	.db #0x1A	; 26
   7108 30                 1465 	.db #0x30	; 48	'0'
   7109 30                 1466 	.db #0x30	; 48	'0'
   710A 30                 1467 	.db #0x30	; 48	'0'
   710B CC                 1468 	.db #0xCC	; 204
   710C 98                 1469 	.db #0x98	; 152
   710D 30                 1470 	.db #0x30	; 48	'0'
   710E 25                 1471 	.db #0x25	; 37
   710F 30                 1472 	.db #0x30	; 48	'0'
   7110 30                 1473 	.db #0x30	; 48	'0'
   7111 1A                 1474 	.db #0x1A	; 26
   7112 30                 1475 	.db #0x30	; 48	'0'
   7113 30                 1476 	.db #0x30	; 48	'0'
   7114 30                 1477 	.db #0x30	; 48	'0'
   7115 64                 1478 	.db #0x64	; 100	'd'
   7116 CC                 1479 	.db #0xCC	; 204
   7117 30                 1480 	.db #0x30	; 48	'0'
   7118 25                 1481 	.db #0x25	; 37
   7119 30                 1482 	.db #0x30	; 48	'0'
   711A 30                 1483 	.db #0x30	; 48	'0'
   711B 1A                 1484 	.db #0x1A	; 26
   711C 30                 1485 	.db #0x30	; 48	'0'
   711D 30                 1486 	.db #0x30	; 48	'0'
   711E 30                 1487 	.db #0x30	; 48	'0'
   711F 30                 1488 	.db #0x30	; 48	'0'
   7120 CC                 1489 	.db #0xCC	; 204
   7121 30                 1490 	.db #0x30	; 48	'0'
   7122 25                 1491 	.db #0x25	; 37
   7123 30                 1492 	.db #0x30	; 48	'0'
   7124 30                 1493 	.db #0x30	; 48	'0'
   7125 1A                 1494 	.db #0x1A	; 26
   7126 30                 1495 	.db #0x30	; 48	'0'
   7127 30                 1496 	.db #0x30	; 48	'0'
   7128 30                 1497 	.db #0x30	; 48	'0'
   7129 30                 1498 	.db #0x30	; 48	'0'
   712A CC                 1499 	.db #0xCC	; 204
   712B 30                 1500 	.db #0x30	; 48	'0'
   712C 25                 1501 	.db #0x25	; 37
   712D 30                 1502 	.db #0x30	; 48	'0'
   712E 30                 1503 	.db #0x30	; 48	'0'
   712F 1A                 1504 	.db #0x1A	; 26
   7130 30                 1505 	.db #0x30	; 48	'0'
   7131 30                 1506 	.db #0x30	; 48	'0'
   7132 30                 1507 	.db #0x30	; 48	'0'
   7133 30                 1508 	.db #0x30	; 48	'0'
   7134 CC                 1509 	.db #0xCC	; 204
   7135 30                 1510 	.db #0x30	; 48	'0'
   7136 25                 1511 	.db #0x25	; 37
   7137 30                 1512 	.db #0x30	; 48	'0'
   7138 30                 1513 	.db #0x30	; 48	'0'
   7139 1A                 1514 	.db #0x1A	; 26
   713A 30                 1515 	.db #0x30	; 48	'0'
   713B 30                 1516 	.db #0x30	; 48	'0'
   713C 30                 1517 	.db #0x30	; 48	'0'
   713D 30                 1518 	.db #0x30	; 48	'0'
   713E CC                 1519 	.db #0xCC	; 204
   713F 30                 1520 	.db #0x30	; 48	'0'
   7140 25                 1521 	.db #0x25	; 37
   7141 30                 1522 	.db #0x30	; 48	'0'
   7142 30                 1523 	.db #0x30	; 48	'0'
   7143 1A                 1524 	.db #0x1A	; 26
   7144 30                 1525 	.db #0x30	; 48	'0'
   7145 30                 1526 	.db #0x30	; 48	'0'
   7146 30                 1527 	.db #0x30	; 48	'0'
   7147 30                 1528 	.db #0x30	; 48	'0'
   7148 CC                 1529 	.db #0xCC	; 204
   7149 30                 1530 	.db #0x30	; 48	'0'
   714A 25                 1531 	.db #0x25	; 37
   714B 30                 1532 	.db #0x30	; 48	'0'
   714C 30                 1533 	.db #0x30	; 48	'0'
   714D 1A                 1534 	.db #0x1A	; 26
   714E 30                 1535 	.db #0x30	; 48	'0'
   714F 64                 1536 	.db #0x64	; 100	'd'
   7150 98                 1537 	.db #0x98	; 152
   7151 30                 1538 	.db #0x30	; 48	'0'
   7152 CC                 1539 	.db #0xCC	; 204
   7153 30                 1540 	.db #0x30	; 48	'0'
   7154 25                 1541 	.db #0x25	; 37
   7155 30                 1542 	.db #0x30	; 48	'0'
   7156 30                 1543 	.db #0x30	; 48	'0'
   7157 1A                 1544 	.db #0x1A	; 26
   7158 30                 1545 	.db #0x30	; 48	'0'
   7159 64                 1546 	.db #0x64	; 100	'd'
   715A CC                 1547 	.db #0xCC	; 204
   715B 64                 1548 	.db #0x64	; 100	'd'
   715C CC                 1549 	.db #0xCC	; 204
   715D 30                 1550 	.db #0x30	; 48	'0'
   715E 25                 1551 	.db #0x25	; 37
   715F 30                 1552 	.db #0x30	; 48	'0'
   7160 30                 1553 	.db #0x30	; 48	'0'
   7161 1A                 1554 	.db #0x1A	; 26
   7162 30                 1555 	.db #0x30	; 48	'0'
   7163 64                 1556 	.db #0x64	; 100	'd'
   7164 CC                 1557 	.db #0xCC	; 204
   7165 CC                 1558 	.db #0xCC	; 204
   7166 CC                 1559 	.db #0xCC	; 204
   7167 30                 1560 	.db #0x30	; 48	'0'
   7168 25                 1561 	.db #0x25	; 37
   7169 30                 1562 	.db #0x30	; 48	'0'
   716A 30                 1563 	.db #0x30	; 48	'0'
   716B 1A                 1564 	.db #0x1A	; 26
   716C 30                 1565 	.db #0x30	; 48	'0'
   716D 30                 1566 	.db #0x30	; 48	'0'
   716E CC                 1567 	.db #0xCC	; 204
   716F CC                 1568 	.db #0xCC	; 204
   7170 98                 1569 	.db #0x98	; 152
   7171 30                 1570 	.db #0x30	; 48	'0'
   7172 25                 1571 	.db #0x25	; 37
   7173 30                 1572 	.db #0x30	; 48	'0'
   7174 30                 1573 	.db #0x30	; 48	'0'
   7175 1A                 1574 	.db #0x1A	; 26
   7176 30                 1575 	.db #0x30	; 48	'0'
   7177 30                 1576 	.db #0x30	; 48	'0'
   7178 64                 1577 	.db #0x64	; 100	'd'
   7179 CC                 1578 	.db #0xCC	; 204
   717A 30                 1579 	.db #0x30	; 48	'0'
   717B 30                 1580 	.db #0x30	; 48	'0'
   717C 25                 1581 	.db #0x25	; 37
   717D 30                 1582 	.db #0x30	; 48	'0'
   717E 30                 1583 	.db #0x30	; 48	'0'
   717F 1A                 1584 	.db #0x1A	; 26
   7180 30                 1585 	.db #0x30	; 48	'0'
   7181 30                 1586 	.db #0x30	; 48	'0'
   7182 30                 1587 	.db #0x30	; 48	'0'
   7183 30                 1588 	.db #0x30	; 48	'0'
   7184 30                 1589 	.db #0x30	; 48	'0'
   7185 30                 1590 	.db #0x30	; 48	'0'
   7186 25                 1591 	.db #0x25	; 37
   7187 30                 1592 	.db #0x30	; 48	'0'
   7188 30                 1593 	.db #0x30	; 48	'0'
   7189 1A                 1594 	.db #0x1A	; 26
   718A 30                 1595 	.db #0x30	; 48	'0'
   718B 30                 1596 	.db #0x30	; 48	'0'
   718C 30                 1597 	.db #0x30	; 48	'0'
   718D 30                 1598 	.db #0x30	; 48	'0'
   718E 30                 1599 	.db #0x30	; 48	'0'
   718F 30                 1600 	.db #0x30	; 48	'0'
   7190 25                 1601 	.db #0x25	; 37
   7191 30                 1602 	.db #0x30	; 48	'0'
   7192 30                 1603 	.db #0x30	; 48	'0'
   7193 1A                 1604 	.db #0x1A	; 26
   7194 30                 1605 	.db #0x30	; 48	'0'
   7195 30                 1606 	.db #0x30	; 48	'0'
   7196 30                 1607 	.db #0x30	; 48	'0'
   7197 30                 1608 	.db #0x30	; 48	'0'
   7198 30                 1609 	.db #0x30	; 48	'0'
   7199 30                 1610 	.db #0x30	; 48	'0'
   719A 25                 1611 	.db #0x25	; 37
   719B 30                 1612 	.db #0x30	; 48	'0'
   719C 30                 1613 	.db #0x30	; 48	'0'
   719D 0F                 1614 	.db #0x0F	; 15
   719E 30                 1615 	.db #0x30	; 48	'0'
   719F 30                 1616 	.db #0x30	; 48	'0'
   71A0 30                 1617 	.db #0x30	; 48	'0'
   71A1 30                 1618 	.db #0x30	; 48	'0'
   71A2 30                 1619 	.db #0x30	; 48	'0'
   71A3 30                 1620 	.db #0x30	; 48	'0'
   71A4 0F                 1621 	.db #0x0F	; 15
   71A5 30                 1622 	.db #0x30	; 48	'0'
   71A6 30                 1623 	.db #0x30	; 48	'0'
   71A7 25                 1624 	.db #0x25	; 37
   71A8 30                 1625 	.db #0x30	; 48	'0'
   71A9 30                 1626 	.db #0x30	; 48	'0'
   71AA 30                 1627 	.db #0x30	; 48	'0'
   71AB 30                 1628 	.db #0x30	; 48	'0'
   71AC 30                 1629 	.db #0x30	; 48	'0'
   71AD 30                 1630 	.db #0x30	; 48	'0'
   71AE 1A                 1631 	.db #0x1A	; 26
   71AF 30                 1632 	.db #0x30	; 48	'0'
   71B0 30                 1633 	.db #0x30	; 48	'0'
   71B1 25                 1634 	.db #0x25	; 37
   71B2 0F                 1635 	.db #0x0F	; 15
   71B3 0F                 1636 	.db #0x0F	; 15
   71B4 0F                 1637 	.db #0x0F	; 15
   71B5 0F                 1638 	.db #0x0F	; 15
   71B6 0F                 1639 	.db #0x0F	; 15
   71B7 0F                 1640 	.db #0x0F	; 15
   71B8 1A                 1641 	.db #0x1A	; 26
   71B9 30                 1642 	.db #0x30	; 48	'0'
   71BA F0                 1643 	.db #0xF0	; 240
   71BB 30                 1644 	.db #0x30	; 48	'0'
   71BC 30                 1645 	.db #0x30	; 48	'0'
   71BD 30                 1646 	.db #0x30	; 48	'0'
   71BE 30                 1647 	.db #0x30	; 48	'0'
   71BF 30                 1648 	.db #0x30	; 48	'0'
   71C0 30                 1649 	.db #0x30	; 48	'0'
   71C1 30                 1650 	.db #0x30	; 48	'0'
   71C2 30                 1651 	.db #0x30	; 48	'0'
   71C3 F0                 1652 	.db #0xF0	; 240
   71C4 F0                 1653 	.db #0xF0	; 240
   71C5 30                 1654 	.db #0x30	; 48	'0'
   71C6 30                 1655 	.db #0x30	; 48	'0'
   71C7 30                 1656 	.db #0x30	; 48	'0'
   71C8 30                 1657 	.db #0x30	; 48	'0'
   71C9 30                 1658 	.db #0x30	; 48	'0'
   71CA 30                 1659 	.db #0x30	; 48	'0'
   71CB 30                 1660 	.db #0x30	; 48	'0'
   71CC 30                 1661 	.db #0x30	; 48	'0'
   71CD F0                 1662 	.db #0xF0	; 240
   71CE                    1663 _tile_tiles_04:
   71CE F0                 1664 	.db #0xF0	; 240
   71CF 30                 1665 	.db #0x30	; 48	'0'
   71D0 30                 1666 	.db #0x30	; 48	'0'
   71D1 30                 1667 	.db #0x30	; 48	'0'
   71D2 30                 1668 	.db #0x30	; 48	'0'
   71D3 30                 1669 	.db #0x30	; 48	'0'
   71D4 30                 1670 	.db #0x30	; 48	'0'
   71D5 30                 1671 	.db #0x30	; 48	'0'
   71D6 30                 1672 	.db #0x30	; 48	'0'
   71D7 F0                 1673 	.db #0xF0	; 240
   71D8 F0                 1674 	.db #0xF0	; 240
   71D9 30                 1675 	.db #0x30	; 48	'0'
   71DA 30                 1676 	.db #0x30	; 48	'0'
   71DB 30                 1677 	.db #0x30	; 48	'0'
   71DC 30                 1678 	.db #0x30	; 48	'0'
   71DD 30                 1679 	.db #0x30	; 48	'0'
   71DE 30                 1680 	.db #0x30	; 48	'0'
   71DF 30                 1681 	.db #0x30	; 48	'0'
   71E0 30                 1682 	.db #0x30	; 48	'0'
   71E1 F0                 1683 	.db #0xF0	; 240
   71E2 30                 1684 	.db #0x30	; 48	'0'
   71E3 25                 1685 	.db #0x25	; 37
   71E4 0F                 1686 	.db #0x0F	; 15
   71E5 0F                 1687 	.db #0x0F	; 15
   71E6 0F                 1688 	.db #0x0F	; 15
   71E7 0F                 1689 	.db #0x0F	; 15
   71E8 0F                 1690 	.db #0x0F	; 15
   71E9 0F                 1691 	.db #0x0F	; 15
   71EA 1A                 1692 	.db #0x1A	; 26
   71EB 30                 1693 	.db #0x30	; 48	'0'
   71EC 30                 1694 	.db #0x30	; 48	'0'
   71ED 25                 1695 	.db #0x25	; 37
   71EE 30                 1696 	.db #0x30	; 48	'0'
   71EF 30                 1697 	.db #0x30	; 48	'0'
   71F0 30                 1698 	.db #0x30	; 48	'0'
   71F1 30                 1699 	.db #0x30	; 48	'0'
   71F2 30                 1700 	.db #0x30	; 48	'0'
   71F3 30                 1701 	.db #0x30	; 48	'0'
   71F4 1A                 1702 	.db #0x1A	; 26
   71F5 30                 1703 	.db #0x30	; 48	'0'
   71F6 30                 1704 	.db #0x30	; 48	'0'
   71F7 0F                 1705 	.db #0x0F	; 15
   71F8 30                 1706 	.db #0x30	; 48	'0'
   71F9 30                 1707 	.db #0x30	; 48	'0'
   71FA 30                 1708 	.db #0x30	; 48	'0'
   71FB 30                 1709 	.db #0x30	; 48	'0'
   71FC 30                 1710 	.db #0x30	; 48	'0'
   71FD 30                 1711 	.db #0x30	; 48	'0'
   71FE 0F                 1712 	.db #0x0F	; 15
   71FF 30                 1713 	.db #0x30	; 48	'0'
   7200 30                 1714 	.db #0x30	; 48	'0'
   7201 1A                 1715 	.db #0x1A	; 26
   7202 30                 1716 	.db #0x30	; 48	'0'
   7203 30                 1717 	.db #0x30	; 48	'0'
   7204 30                 1718 	.db #0x30	; 48	'0'
   7205 30                 1719 	.db #0x30	; 48	'0'
   7206 30                 1720 	.db #0x30	; 48	'0'
   7207 30                 1721 	.db #0x30	; 48	'0'
   7208 25                 1722 	.db #0x25	; 37
   7209 30                 1723 	.db #0x30	; 48	'0'
   720A 30                 1724 	.db #0x30	; 48	'0'
   720B 1A                 1725 	.db #0x1A	; 26
   720C 30                 1726 	.db #0x30	; 48	'0'
   720D 30                 1727 	.db #0x30	; 48	'0'
   720E 30                 1728 	.db #0x30	; 48	'0'
   720F 30                 1729 	.db #0x30	; 48	'0'
   7210 30                 1730 	.db #0x30	; 48	'0'
   7211 30                 1731 	.db #0x30	; 48	'0'
   7212 25                 1732 	.db #0x25	; 37
   7213 30                 1733 	.db #0x30	; 48	'0'
   7214 30                 1734 	.db #0x30	; 48	'0'
   7215 1A                 1735 	.db #0x1A	; 26
   7216 30                 1736 	.db #0x30	; 48	'0'
   7217 30                 1737 	.db #0x30	; 48	'0'
   7218 30                 1738 	.db #0x30	; 48	'0'
   7219 30                 1739 	.db #0x30	; 48	'0'
   721A 30                 1740 	.db #0x30	; 48	'0'
   721B 30                 1741 	.db #0x30	; 48	'0'
   721C 25                 1742 	.db #0x25	; 37
   721D 30                 1743 	.db #0x30	; 48	'0'
   721E 30                 1744 	.db #0x30	; 48	'0'
   721F 1A                 1745 	.db #0x1A	; 26
   7220 30                 1746 	.db #0x30	; 48	'0'
   7221 30                 1747 	.db #0x30	; 48	'0'
   7222 30                 1748 	.db #0x30	; 48	'0'
   7223 30                 1749 	.db #0x30	; 48	'0'
   7224 30                 1750 	.db #0x30	; 48	'0'
   7225 30                 1751 	.db #0x30	; 48	'0'
   7226 25                 1752 	.db #0x25	; 37
   7227 30                 1753 	.db #0x30	; 48	'0'
   7228 30                 1754 	.db #0x30	; 48	'0'
   7229 1A                 1755 	.db #0x1A	; 26
   722A 30                 1756 	.db #0x30	; 48	'0'
   722B 30                 1757 	.db #0x30	; 48	'0'
   722C 30                 1758 	.db #0x30	; 48	'0'
   722D 30                 1759 	.db #0x30	; 48	'0'
   722E 30                 1760 	.db #0x30	; 48	'0'
   722F 30                 1761 	.db #0x30	; 48	'0'
   7230 25                 1762 	.db #0x25	; 37
   7231 30                 1763 	.db #0x30	; 48	'0'
   7232 30                 1764 	.db #0x30	; 48	'0'
   7233 1A                 1765 	.db #0x1A	; 26
   7234 30                 1766 	.db #0x30	; 48	'0'
   7235 30                 1767 	.db #0x30	; 48	'0'
   7236 30                 1768 	.db #0x30	; 48	'0'
   7237 CC                 1769 	.db #0xCC	; 204
   7238 98                 1770 	.db #0x98	; 152
   7239 30                 1771 	.db #0x30	; 48	'0'
   723A 25                 1772 	.db #0x25	; 37
   723B 30                 1773 	.db #0x30	; 48	'0'
   723C 30                 1774 	.db #0x30	; 48	'0'
   723D 1A                 1775 	.db #0x1A	; 26
   723E 30                 1776 	.db #0x30	; 48	'0'
   723F 30                 1777 	.db #0x30	; 48	'0'
   7240 64                 1778 	.db #0x64	; 100	'd'
   7241 CC                 1779 	.db #0xCC	; 204
   7242 CC                 1780 	.db #0xCC	; 204
   7243 30                 1781 	.db #0x30	; 48	'0'
   7244 25                 1782 	.db #0x25	; 37
   7245 30                 1783 	.db #0x30	; 48	'0'
   7246 30                 1784 	.db #0x30	; 48	'0'
   7247 1A                 1785 	.db #0x1A	; 26
   7248 30                 1786 	.db #0x30	; 48	'0'
   7249 30                 1787 	.db #0x30	; 48	'0'
   724A CC                 1788 	.db #0xCC	; 204
   724B 98                 1789 	.db #0x98	; 152
   724C CC                 1790 	.db #0xCC	; 204
   724D 30                 1791 	.db #0x30	; 48	'0'
   724E 25                 1792 	.db #0x25	; 37
   724F 30                 1793 	.db #0x30	; 48	'0'
   7250 30                 1794 	.db #0x30	; 48	'0'
   7251 1A                 1795 	.db #0x1A	; 26
   7252 30                 1796 	.db #0x30	; 48	'0'
   7253 30                 1797 	.db #0x30	; 48	'0'
   7254 CC                 1798 	.db #0xCC	; 204
   7255 30                 1799 	.db #0x30	; 48	'0'
   7256 30                 1800 	.db #0x30	; 48	'0'
   7257 30                 1801 	.db #0x30	; 48	'0'
   7258 25                 1802 	.db #0x25	; 37
   7259 30                 1803 	.db #0x30	; 48	'0'
   725A 30                 1804 	.db #0x30	; 48	'0'
   725B 1A                 1805 	.db #0x1A	; 26
   725C 30                 1806 	.db #0x30	; 48	'0'
   725D 64                 1807 	.db #0x64	; 100	'd'
   725E 98                 1808 	.db #0x98	; 152
   725F 30                 1809 	.db #0x30	; 48	'0'
   7260 30                 1810 	.db #0x30	; 48	'0'
   7261 30                 1811 	.db #0x30	; 48	'0'
   7262 25                 1812 	.db #0x25	; 37
   7263 30                 1813 	.db #0x30	; 48	'0'
   7264 30                 1814 	.db #0x30	; 48	'0'
   7265 1A                 1815 	.db #0x1A	; 26
   7266 30                 1816 	.db #0x30	; 48	'0'
   7267 64                 1817 	.db #0x64	; 100	'd'
   7268 98                 1818 	.db #0x98	; 152
   7269 30                 1819 	.db #0x30	; 48	'0'
   726A 30                 1820 	.db #0x30	; 48	'0'
   726B 30                 1821 	.db #0x30	; 48	'0'
   726C 25                 1822 	.db #0x25	; 37
   726D 30                 1823 	.db #0x30	; 48	'0'
   726E 30                 1824 	.db #0x30	; 48	'0'
   726F 1A                 1825 	.db #0x1A	; 26
   7270 30                 1826 	.db #0x30	; 48	'0'
   7271 64                 1827 	.db #0x64	; 100	'd'
   7272 98                 1828 	.db #0x98	; 152
   7273 30                 1829 	.db #0x30	; 48	'0'
   7274 30                 1830 	.db #0x30	; 48	'0'
   7275 30                 1831 	.db #0x30	; 48	'0'
   7276 25                 1832 	.db #0x25	; 37
   7277 30                 1833 	.db #0x30	; 48	'0'
   7278 30                 1834 	.db #0x30	; 48	'0'
   7279 1A                 1835 	.db #0x1A	; 26
   727A 30                 1836 	.db #0x30	; 48	'0'
   727B 64                 1837 	.db #0x64	; 100	'd'
   727C 98                 1838 	.db #0x98	; 152
   727D 30                 1839 	.db #0x30	; 48	'0'
   727E 30                 1840 	.db #0x30	; 48	'0'
   727F 30                 1841 	.db #0x30	; 48	'0'
   7280 25                 1842 	.db #0x25	; 37
   7281 30                 1843 	.db #0x30	; 48	'0'
   7282 30                 1844 	.db #0x30	; 48	'0'
   7283 1A                 1845 	.db #0x1A	; 26
   7284 30                 1846 	.db #0x30	; 48	'0'
   7285 64                 1847 	.db #0x64	; 100	'd'
   7286 98                 1848 	.db #0x98	; 152
   7287 CC                 1849 	.db #0xCC	; 204
   7288 30                 1850 	.db #0x30	; 48	'0'
   7289 30                 1851 	.db #0x30	; 48	'0'
   728A 25                 1852 	.db #0x25	; 37
   728B 30                 1853 	.db #0x30	; 48	'0'
   728C 30                 1854 	.db #0x30	; 48	'0'
   728D 1A                 1855 	.db #0x1A	; 26
   728E 30                 1856 	.db #0x30	; 48	'0'
   728F 64                 1857 	.db #0x64	; 100	'd'
   7290 CC                 1858 	.db #0xCC	; 204
   7291 CC                 1859 	.db #0xCC	; 204
   7292 98                 1860 	.db #0x98	; 152
   7293 30                 1861 	.db #0x30	; 48	'0'
   7294 25                 1862 	.db #0x25	; 37
   7295 30                 1863 	.db #0x30	; 48	'0'
   7296 30                 1864 	.db #0x30	; 48	'0'
   7297 1A                 1865 	.db #0x1A	; 26
   7298 30                 1866 	.db #0x30	; 48	'0'
   7299 64                 1867 	.db #0x64	; 100	'd'
   729A CC                 1868 	.db #0xCC	; 204
   729B CC                 1869 	.db #0xCC	; 204
   729C 98                 1870 	.db #0x98	; 152
   729D 30                 1871 	.db #0x30	; 48	'0'
   729E 25                 1872 	.db #0x25	; 37
   729F 30                 1873 	.db #0x30	; 48	'0'
   72A0 30                 1874 	.db #0x30	; 48	'0'
   72A1 1A                 1875 	.db #0x1A	; 26
   72A2 30                 1876 	.db #0x30	; 48	'0'
   72A3 64                 1877 	.db #0x64	; 100	'd'
   72A4 CC                 1878 	.db #0xCC	; 204
   72A5 30                 1879 	.db #0x30	; 48	'0'
   72A6 CC                 1880 	.db #0xCC	; 204
   72A7 30                 1881 	.db #0x30	; 48	'0'
   72A8 25                 1882 	.db #0x25	; 37
   72A9 30                 1883 	.db #0x30	; 48	'0'
   72AA 30                 1884 	.db #0x30	; 48	'0'
   72AB 1A                 1885 	.db #0x1A	; 26
   72AC 30                 1886 	.db #0x30	; 48	'0'
   72AD 64                 1887 	.db #0x64	; 100	'd'
   72AE 98                 1888 	.db #0x98	; 152
   72AF 30                 1889 	.db #0x30	; 48	'0'
   72B0 CC                 1890 	.db #0xCC	; 204
   72B1 30                 1891 	.db #0x30	; 48	'0'
   72B2 25                 1892 	.db #0x25	; 37
   72B3 30                 1893 	.db #0x30	; 48	'0'
   72B4 30                 1894 	.db #0x30	; 48	'0'
   72B5 1A                 1895 	.db #0x1A	; 26
   72B6 30                 1896 	.db #0x30	; 48	'0'
   72B7 64                 1897 	.db #0x64	; 100	'd'
   72B8 98                 1898 	.db #0x98	; 152
   72B9 30                 1899 	.db #0x30	; 48	'0'
   72BA CC                 1900 	.db #0xCC	; 204
   72BB 30                 1901 	.db #0x30	; 48	'0'
   72BC 25                 1902 	.db #0x25	; 37
   72BD 30                 1903 	.db #0x30	; 48	'0'
   72BE 30                 1904 	.db #0x30	; 48	'0'
   72BF 1A                 1905 	.db #0x1A	; 26
   72C0 30                 1906 	.db #0x30	; 48	'0'
   72C1 64                 1907 	.db #0x64	; 100	'd'
   72C2 98                 1908 	.db #0x98	; 152
   72C3 30                 1909 	.db #0x30	; 48	'0'
   72C4 CC                 1910 	.db #0xCC	; 204
   72C5 30                 1911 	.db #0x30	; 48	'0'
   72C6 25                 1912 	.db #0x25	; 37
   72C7 30                 1913 	.db #0x30	; 48	'0'
   72C8 30                 1914 	.db #0x30	; 48	'0'
   72C9 1A                 1915 	.db #0x1A	; 26
   72CA 30                 1916 	.db #0x30	; 48	'0'
   72CB 64                 1917 	.db #0x64	; 100	'd'
   72CC 98                 1918 	.db #0x98	; 152
   72CD 30                 1919 	.db #0x30	; 48	'0'
   72CE CC                 1920 	.db #0xCC	; 204
   72CF 30                 1921 	.db #0x30	; 48	'0'
   72D0 25                 1922 	.db #0x25	; 37
   72D1 30                 1923 	.db #0x30	; 48	'0'
   72D2 30                 1924 	.db #0x30	; 48	'0'
   72D3 1A                 1925 	.db #0x1A	; 26
   72D4 30                 1926 	.db #0x30	; 48	'0'
   72D5 64                 1927 	.db #0x64	; 100	'd'
   72D6 98                 1928 	.db #0x98	; 152
   72D7 30                 1929 	.db #0x30	; 48	'0'
   72D8 CC                 1930 	.db #0xCC	; 204
   72D9 30                 1931 	.db #0x30	; 48	'0'
   72DA 25                 1932 	.db #0x25	; 37
   72DB 30                 1933 	.db #0x30	; 48	'0'
   72DC 30                 1934 	.db #0x30	; 48	'0'
   72DD 1A                 1935 	.db #0x1A	; 26
   72DE 30                 1936 	.db #0x30	; 48	'0'
   72DF 64                 1937 	.db #0x64	; 100	'd'
   72E0 98                 1938 	.db #0x98	; 152
   72E1 30                 1939 	.db #0x30	; 48	'0'
   72E2 CC                 1940 	.db #0xCC	; 204
   72E3 30                 1941 	.db #0x30	; 48	'0'
   72E4 25                 1942 	.db #0x25	; 37
   72E5 30                 1943 	.db #0x30	; 48	'0'
   72E6 30                 1944 	.db #0x30	; 48	'0'
   72E7 1A                 1945 	.db #0x1A	; 26
   72E8 30                 1946 	.db #0x30	; 48	'0'
   72E9 30                 1947 	.db #0x30	; 48	'0'
   72EA CC                 1948 	.db #0xCC	; 204
   72EB 64                 1949 	.db #0x64	; 100	'd'
   72EC 98                 1950 	.db #0x98	; 152
   72ED 30                 1951 	.db #0x30	; 48	'0'
   72EE 25                 1952 	.db #0x25	; 37
   72EF 30                 1953 	.db #0x30	; 48	'0'
   72F0 30                 1954 	.db #0x30	; 48	'0'
   72F1 1A                 1955 	.db #0x1A	; 26
   72F2 30                 1956 	.db #0x30	; 48	'0'
   72F3 30                 1957 	.db #0x30	; 48	'0'
   72F4 CC                 1958 	.db #0xCC	; 204
   72F5 CC                 1959 	.db #0xCC	; 204
   72F6 98                 1960 	.db #0x98	; 152
   72F7 30                 1961 	.db #0x30	; 48	'0'
   72F8 25                 1962 	.db #0x25	; 37
   72F9 30                 1963 	.db #0x30	; 48	'0'
   72FA 30                 1964 	.db #0x30	; 48	'0'
   72FB 1A                 1965 	.db #0x1A	; 26
   72FC 30                 1966 	.db #0x30	; 48	'0'
   72FD 30                 1967 	.db #0x30	; 48	'0'
   72FE CC                 1968 	.db #0xCC	; 204
   72FF CC                 1969 	.db #0xCC	; 204
   7300 98                 1970 	.db #0x98	; 152
   7301 30                 1971 	.db #0x30	; 48	'0'
   7302 25                 1972 	.db #0x25	; 37
   7303 30                 1973 	.db #0x30	; 48	'0'
   7304 30                 1974 	.db #0x30	; 48	'0'
   7305 1A                 1975 	.db #0x1A	; 26
   7306 30                 1976 	.db #0x30	; 48	'0'
   7307 30                 1977 	.db #0x30	; 48	'0'
   7308 64                 1978 	.db #0x64	; 100	'd'
   7309 CC                 1979 	.db #0xCC	; 204
   730A 30                 1980 	.db #0x30	; 48	'0'
   730B 30                 1981 	.db #0x30	; 48	'0'
   730C 25                 1982 	.db #0x25	; 37
   730D 30                 1983 	.db #0x30	; 48	'0'
   730E 30                 1984 	.db #0x30	; 48	'0'
   730F 1A                 1985 	.db #0x1A	; 26
   7310 30                 1986 	.db #0x30	; 48	'0'
   7311 30                 1987 	.db #0x30	; 48	'0'
   7312 30                 1988 	.db #0x30	; 48	'0'
   7313 30                 1989 	.db #0x30	; 48	'0'
   7314 30                 1990 	.db #0x30	; 48	'0'
   7315 30                 1991 	.db #0x30	; 48	'0'
   7316 25                 1992 	.db #0x25	; 37
   7317 30                 1993 	.db #0x30	; 48	'0'
   7318 30                 1994 	.db #0x30	; 48	'0'
   7319 1A                 1995 	.db #0x1A	; 26
   731A 30                 1996 	.db #0x30	; 48	'0'
   731B 30                 1997 	.db #0x30	; 48	'0'
   731C 30                 1998 	.db #0x30	; 48	'0'
   731D 30                 1999 	.db #0x30	; 48	'0'
   731E 30                 2000 	.db #0x30	; 48	'0'
   731F 30                 2001 	.db #0x30	; 48	'0'
   7320 25                 2002 	.db #0x25	; 37
   7321 30                 2003 	.db #0x30	; 48	'0'
   7322 30                 2004 	.db #0x30	; 48	'0'
   7323 1A                 2005 	.db #0x1A	; 26
   7324 30                 2006 	.db #0x30	; 48	'0'
   7325 30                 2007 	.db #0x30	; 48	'0'
   7326 30                 2008 	.db #0x30	; 48	'0'
   7327 30                 2009 	.db #0x30	; 48	'0'
   7328 30                 2010 	.db #0x30	; 48	'0'
   7329 30                 2011 	.db #0x30	; 48	'0'
   732A 25                 2012 	.db #0x25	; 37
   732B 30                 2013 	.db #0x30	; 48	'0'
   732C 30                 2014 	.db #0x30	; 48	'0'
   732D 0F                 2015 	.db #0x0F	; 15
   732E 30                 2016 	.db #0x30	; 48	'0'
   732F 30                 2017 	.db #0x30	; 48	'0'
   7330 30                 2018 	.db #0x30	; 48	'0'
   7331 30                 2019 	.db #0x30	; 48	'0'
   7332 30                 2020 	.db #0x30	; 48	'0'
   7333 30                 2021 	.db #0x30	; 48	'0'
   7334 0F                 2022 	.db #0x0F	; 15
   7335 30                 2023 	.db #0x30	; 48	'0'
   7336 30                 2024 	.db #0x30	; 48	'0'
   7337 25                 2025 	.db #0x25	; 37
   7338 30                 2026 	.db #0x30	; 48	'0'
   7339 30                 2027 	.db #0x30	; 48	'0'
   733A 30                 2028 	.db #0x30	; 48	'0'
   733B 30                 2029 	.db #0x30	; 48	'0'
   733C 30                 2030 	.db #0x30	; 48	'0'
   733D 30                 2031 	.db #0x30	; 48	'0'
   733E 1A                 2032 	.db #0x1A	; 26
   733F 30                 2033 	.db #0x30	; 48	'0'
   7340 30                 2034 	.db #0x30	; 48	'0'
   7341 25                 2035 	.db #0x25	; 37
   7342 0F                 2036 	.db #0x0F	; 15
   7343 0F                 2037 	.db #0x0F	; 15
   7344 0F                 2038 	.db #0x0F	; 15
   7345 0F                 2039 	.db #0x0F	; 15
   7346 0F                 2040 	.db #0x0F	; 15
   7347 0F                 2041 	.db #0x0F	; 15
   7348 1A                 2042 	.db #0x1A	; 26
   7349 30                 2043 	.db #0x30	; 48	'0'
   734A F0                 2044 	.db #0xF0	; 240
   734B 30                 2045 	.db #0x30	; 48	'0'
   734C 30                 2046 	.db #0x30	; 48	'0'
   734D 30                 2047 	.db #0x30	; 48	'0'
   734E 30                 2048 	.db #0x30	; 48	'0'
   734F 30                 2049 	.db #0x30	; 48	'0'
   7350 30                 2050 	.db #0x30	; 48	'0'
   7351 30                 2051 	.db #0x30	; 48	'0'
   7352 30                 2052 	.db #0x30	; 48	'0'
   7353 F0                 2053 	.db #0xF0	; 240
   7354 F0                 2054 	.db #0xF0	; 240
   7355 30                 2055 	.db #0x30	; 48	'0'
   7356 30                 2056 	.db #0x30	; 48	'0'
   7357 30                 2057 	.db #0x30	; 48	'0'
   7358 30                 2058 	.db #0x30	; 48	'0'
   7359 30                 2059 	.db #0x30	; 48	'0'
   735A 30                 2060 	.db #0x30	; 48	'0'
   735B 30                 2061 	.db #0x30	; 48	'0'
   735C 30                 2062 	.db #0x30	; 48	'0'
   735D F0                 2063 	.db #0xF0	; 240
   735E                    2064 _tile_tiles_05:
   735E F0                 2065 	.db #0xF0	; 240
   735F 30                 2066 	.db #0x30	; 48	'0'
   7360 30                 2067 	.db #0x30	; 48	'0'
   7361 30                 2068 	.db #0x30	; 48	'0'
   7362 30                 2069 	.db #0x30	; 48	'0'
   7363 30                 2070 	.db #0x30	; 48	'0'
   7364 30                 2071 	.db #0x30	; 48	'0'
   7365 30                 2072 	.db #0x30	; 48	'0'
   7366 30                 2073 	.db #0x30	; 48	'0'
   7367 F0                 2074 	.db #0xF0	; 240
   7368 F0                 2075 	.db #0xF0	; 240
   7369 30                 2076 	.db #0x30	; 48	'0'
   736A 30                 2077 	.db #0x30	; 48	'0'
   736B 30                 2078 	.db #0x30	; 48	'0'
   736C 30                 2079 	.db #0x30	; 48	'0'
   736D 30                 2080 	.db #0x30	; 48	'0'
   736E 30                 2081 	.db #0x30	; 48	'0'
   736F 30                 2082 	.db #0x30	; 48	'0'
   7370 30                 2083 	.db #0x30	; 48	'0'
   7371 F0                 2084 	.db #0xF0	; 240
   7372 30                 2085 	.db #0x30	; 48	'0'
   7373 25                 2086 	.db #0x25	; 37
   7374 0F                 2087 	.db #0x0F	; 15
   7375 0F                 2088 	.db #0x0F	; 15
   7376 0F                 2089 	.db #0x0F	; 15
   7377 0F                 2090 	.db #0x0F	; 15
   7378 0F                 2091 	.db #0x0F	; 15
   7379 0F                 2092 	.db #0x0F	; 15
   737A 1A                 2093 	.db #0x1A	; 26
   737B 30                 2094 	.db #0x30	; 48	'0'
   737C 30                 2095 	.db #0x30	; 48	'0'
   737D 25                 2096 	.db #0x25	; 37
   737E 30                 2097 	.db #0x30	; 48	'0'
   737F 30                 2098 	.db #0x30	; 48	'0'
   7380 30                 2099 	.db #0x30	; 48	'0'
   7381 30                 2100 	.db #0x30	; 48	'0'
   7382 30                 2101 	.db #0x30	; 48	'0'
   7383 30                 2102 	.db #0x30	; 48	'0'
   7384 1A                 2103 	.db #0x1A	; 26
   7385 30                 2104 	.db #0x30	; 48	'0'
   7386 30                 2105 	.db #0x30	; 48	'0'
   7387 0F                 2106 	.db #0x0F	; 15
   7388 30                 2107 	.db #0x30	; 48	'0'
   7389 30                 2108 	.db #0x30	; 48	'0'
   738A 30                 2109 	.db #0x30	; 48	'0'
   738B 30                 2110 	.db #0x30	; 48	'0'
   738C 30                 2111 	.db #0x30	; 48	'0'
   738D 30                 2112 	.db #0x30	; 48	'0'
   738E 0F                 2113 	.db #0x0F	; 15
   738F 30                 2114 	.db #0x30	; 48	'0'
   7390 30                 2115 	.db #0x30	; 48	'0'
   7391 1A                 2116 	.db #0x1A	; 26
   7392 30                 2117 	.db #0x30	; 48	'0'
   7393 30                 2118 	.db #0x30	; 48	'0'
   7394 30                 2119 	.db #0x30	; 48	'0'
   7395 30                 2120 	.db #0x30	; 48	'0'
   7396 30                 2121 	.db #0x30	; 48	'0'
   7397 30                 2122 	.db #0x30	; 48	'0'
   7398 25                 2123 	.db #0x25	; 37
   7399 30                 2124 	.db #0x30	; 48	'0'
   739A 30                 2125 	.db #0x30	; 48	'0'
   739B 1A                 2126 	.db #0x1A	; 26
   739C 30                 2127 	.db #0x30	; 48	'0'
   739D 30                 2128 	.db #0x30	; 48	'0'
   739E 30                 2129 	.db #0x30	; 48	'0'
   739F 30                 2130 	.db #0x30	; 48	'0'
   73A0 30                 2131 	.db #0x30	; 48	'0'
   73A1 30                 2132 	.db #0x30	; 48	'0'
   73A2 25                 2133 	.db #0x25	; 37
   73A3 30                 2134 	.db #0x30	; 48	'0'
   73A4 30                 2135 	.db #0x30	; 48	'0'
   73A5 1A                 2136 	.db #0x1A	; 26
   73A6 30                 2137 	.db #0x30	; 48	'0'
   73A7 30                 2138 	.db #0x30	; 48	'0'
   73A8 30                 2139 	.db #0x30	; 48	'0'
   73A9 30                 2140 	.db #0x30	; 48	'0'
   73AA 30                 2141 	.db #0x30	; 48	'0'
   73AB 30                 2142 	.db #0x30	; 48	'0'
   73AC 25                 2143 	.db #0x25	; 37
   73AD 30                 2144 	.db #0x30	; 48	'0'
   73AE 30                 2145 	.db #0x30	; 48	'0'
   73AF 1A                 2146 	.db #0x1A	; 26
   73B0 30                 2147 	.db #0x30	; 48	'0'
   73B1 30                 2148 	.db #0x30	; 48	'0'
   73B2 30                 2149 	.db #0x30	; 48	'0'
   73B3 30                 2150 	.db #0x30	; 48	'0'
   73B4 30                 2151 	.db #0x30	; 48	'0'
   73B5 30                 2152 	.db #0x30	; 48	'0'
   73B6 25                 2153 	.db #0x25	; 37
   73B7 30                 2154 	.db #0x30	; 48	'0'
   73B8 30                 2155 	.db #0x30	; 48	'0'
   73B9 1A                 2156 	.db #0x1A	; 26
   73BA 30                 2157 	.db #0x30	; 48	'0'
   73BB 30                 2158 	.db #0x30	; 48	'0'
   73BC 30                 2159 	.db #0x30	; 48	'0'
   73BD 30                 2160 	.db #0x30	; 48	'0'
   73BE 30                 2161 	.db #0x30	; 48	'0'
   73BF 30                 2162 	.db #0x30	; 48	'0'
   73C0 25                 2163 	.db #0x25	; 37
   73C1 30                 2164 	.db #0x30	; 48	'0'
   73C2 30                 2165 	.db #0x30	; 48	'0'
   73C3 1A                 2166 	.db #0x1A	; 26
   73C4 30                 2167 	.db #0x30	; 48	'0'
   73C5 30                 2168 	.db #0x30	; 48	'0'
   73C6 30                 2169 	.db #0x30	; 48	'0'
   73C7 30                 2170 	.db #0x30	; 48	'0'
   73C8 30                 2171 	.db #0x30	; 48	'0'
   73C9 30                 2172 	.db #0x30	; 48	'0'
   73CA 25                 2173 	.db #0x25	; 37
   73CB 30                 2174 	.db #0x30	; 48	'0'
   73CC 30                 2175 	.db #0x30	; 48	'0'
   73CD 1A                 2176 	.db #0x1A	; 26
   73CE 30                 2177 	.db #0x30	; 48	'0'
   73CF 30                 2178 	.db #0x30	; 48	'0'
   73D0 30                 2179 	.db #0x30	; 48	'0'
   73D1 30                 2180 	.db #0x30	; 48	'0'
   73D2 30                 2181 	.db #0x30	; 48	'0'
   73D3 30                 2182 	.db #0x30	; 48	'0'
   73D4 25                 2183 	.db #0x25	; 37
   73D5 30                 2184 	.db #0x30	; 48	'0'
   73D6 30                 2185 	.db #0x30	; 48	'0'
   73D7 1A                 2186 	.db #0x1A	; 26
   73D8 30                 2187 	.db #0x30	; 48	'0'
   73D9 30                 2188 	.db #0x30	; 48	'0'
   73DA 30                 2189 	.db #0x30	; 48	'0'
   73DB 30                 2190 	.db #0x30	; 48	'0'
   73DC 30                 2191 	.db #0x30	; 48	'0'
   73DD 30                 2192 	.db #0x30	; 48	'0'
   73DE 25                 2193 	.db #0x25	; 37
   73DF 30                 2194 	.db #0x30	; 48	'0'
   73E0 30                 2195 	.db #0x30	; 48	'0'
   73E1 1A                 2196 	.db #0x1A	; 26
   73E2 30                 2197 	.db #0x30	; 48	'0'
   73E3 30                 2198 	.db #0x30	; 48	'0'
   73E4 30                 2199 	.db #0x30	; 48	'0'
   73E5 30                 2200 	.db #0x30	; 48	'0'
   73E6 30                 2201 	.db #0x30	; 48	'0'
   73E7 30                 2202 	.db #0x30	; 48	'0'
   73E8 25                 2203 	.db #0x25	; 37
   73E9 30                 2204 	.db #0x30	; 48	'0'
   73EA 30                 2205 	.db #0x30	; 48	'0'
   73EB 1A                 2206 	.db #0x1A	; 26
   73EC 30                 2207 	.db #0x30	; 48	'0'
   73ED 64                 2208 	.db #0x64	; 100	'd'
   73EE 30                 2209 	.db #0x30	; 48	'0'
   73EF 30                 2210 	.db #0x30	; 48	'0'
   73F0 64                 2211 	.db #0x64	; 100	'd'
   73F1 30                 2212 	.db #0x30	; 48	'0'
   73F2 25                 2213 	.db #0x25	; 37
   73F3 30                 2214 	.db #0x30	; 48	'0'
   73F4 30                 2215 	.db #0x30	; 48	'0'
   73F5 1A                 2216 	.db #0x1A	; 26
   73F6 30                 2217 	.db #0x30	; 48	'0'
   73F7 CC                 2218 	.db #0xCC	; 204
   73F8 30                 2219 	.db #0x30	; 48	'0'
   73F9 30                 2220 	.db #0x30	; 48	'0'
   73FA 98                 2221 	.db #0x98	; 152
   73FB 98                 2222 	.db #0x98	; 152
   73FC 25                 2223 	.db #0x25	; 37
   73FD 30                 2224 	.db #0x30	; 48	'0'
   73FE 30                 2225 	.db #0x30	; 48	'0'
   73FF 1A                 2226 	.db #0x1A	; 26
   7400 64                 2227 	.db #0x64	; 100	'd'
   7401 64                 2228 	.db #0x64	; 100	'd'
   7402 30                 2229 	.db #0x30	; 48	'0'
   7403 64                 2230 	.db #0x64	; 100	'd'
   7404 30                 2231 	.db #0x30	; 48	'0'
   7405 98                 2232 	.db #0x98	; 152
   7406 25                 2233 	.db #0x25	; 37
   7407 30                 2234 	.db #0x30	; 48	'0'
   7408 30                 2235 	.db #0x30	; 48	'0'
   7409 1A                 2236 	.db #0x1A	; 26
   740A 30                 2237 	.db #0x30	; 48	'0'
   740B 64                 2238 	.db #0x64	; 100	'd'
   740C 30                 2239 	.db #0x30	; 48	'0'
   740D 64                 2240 	.db #0x64	; 100	'd'
   740E 30                 2241 	.db #0x30	; 48	'0'
   740F 98                 2242 	.db #0x98	; 152
   7410 25                 2243 	.db #0x25	; 37
   7411 30                 2244 	.db #0x30	; 48	'0'
   7412 30                 2245 	.db #0x30	; 48	'0'
   7413 1A                 2246 	.db #0x1A	; 26
   7414 30                 2247 	.db #0x30	; 48	'0'
   7415 64                 2248 	.db #0x64	; 100	'd'
   7416 30                 2249 	.db #0x30	; 48	'0'
   7417 30                 2250 	.db #0x30	; 48	'0'
   7418 30                 2251 	.db #0x30	; 48	'0'
   7419 98                 2252 	.db #0x98	; 152
   741A 25                 2253 	.db #0x25	; 37
   741B 30                 2254 	.db #0x30	; 48	'0'
   741C 30                 2255 	.db #0x30	; 48	'0'
   741D 1A                 2256 	.db #0x1A	; 26
   741E 30                 2257 	.db #0x30	; 48	'0'
   741F 64                 2258 	.db #0x64	; 100	'd'
   7420 30                 2259 	.db #0x30	; 48	'0'
   7421 30                 2260 	.db #0x30	; 48	'0'
   7422 30                 2261 	.db #0x30	; 48	'0'
   7423 98                 2262 	.db #0x98	; 152
   7424 25                 2263 	.db #0x25	; 37
   7425 30                 2264 	.db #0x30	; 48	'0'
   7426 30                 2265 	.db #0x30	; 48	'0'
   7427 1A                 2266 	.db #0x1A	; 26
   7428 30                 2267 	.db #0x30	; 48	'0'
   7429 64                 2268 	.db #0x64	; 100	'd'
   742A 30                 2269 	.db #0x30	; 48	'0'
   742B 30                 2270 	.db #0x30	; 48	'0'
   742C 64                 2271 	.db #0x64	; 100	'd'
   742D 30                 2272 	.db #0x30	; 48	'0'
   742E 25                 2273 	.db #0x25	; 37
   742F 30                 2274 	.db #0x30	; 48	'0'
   7430 30                 2275 	.db #0x30	; 48	'0'
   7431 1A                 2276 	.db #0x1A	; 26
   7432 30                 2277 	.db #0x30	; 48	'0'
   7433 64                 2278 	.db #0x64	; 100	'd'
   7434 30                 2279 	.db #0x30	; 48	'0'
   7435 30                 2280 	.db #0x30	; 48	'0'
   7436 64                 2281 	.db #0x64	; 100	'd'
   7437 30                 2282 	.db #0x30	; 48	'0'
   7438 25                 2283 	.db #0x25	; 37
   7439 30                 2284 	.db #0x30	; 48	'0'
   743A 30                 2285 	.db #0x30	; 48	'0'
   743B 1A                 2286 	.db #0x1A	; 26
   743C 30                 2287 	.db #0x30	; 48	'0'
   743D 64                 2288 	.db #0x64	; 100	'd'
   743E 30                 2289 	.db #0x30	; 48	'0'
   743F 30                 2290 	.db #0x30	; 48	'0'
   7440 98                 2291 	.db #0x98	; 152
   7441 30                 2292 	.db #0x30	; 48	'0'
   7442 25                 2293 	.db #0x25	; 37
   7443 30                 2294 	.db #0x30	; 48	'0'
   7444 30                 2295 	.db #0x30	; 48	'0'
   7445 1A                 2296 	.db #0x1A	; 26
   7446 30                 2297 	.db #0x30	; 48	'0'
   7447 64                 2298 	.db #0x64	; 100	'd'
   7448 30                 2299 	.db #0x30	; 48	'0'
   7449 30                 2300 	.db #0x30	; 48	'0'
   744A 98                 2301 	.db #0x98	; 152
   744B 30                 2302 	.db #0x30	; 48	'0'
   744C 25                 2303 	.db #0x25	; 37
   744D 30                 2304 	.db #0x30	; 48	'0'
   744E 30                 2305 	.db #0x30	; 48	'0'
   744F 1A                 2306 	.db #0x1A	; 26
   7450 30                 2307 	.db #0x30	; 48	'0'
   7451 64                 2308 	.db #0x64	; 100	'd'
   7452 30                 2309 	.db #0x30	; 48	'0'
   7453 30                 2310 	.db #0x30	; 48	'0'
   7454 98                 2311 	.db #0x98	; 152
   7455 30                 2312 	.db #0x30	; 48	'0'
   7456 25                 2313 	.db #0x25	; 37
   7457 30                 2314 	.db #0x30	; 48	'0'
   7458 30                 2315 	.db #0x30	; 48	'0'
   7459 1A                 2316 	.db #0x1A	; 26
   745A 30                 2317 	.db #0x30	; 48	'0'
   745B 64                 2318 	.db #0x64	; 100	'd'
   745C 30                 2319 	.db #0x30	; 48	'0'
   745D 64                 2320 	.db #0x64	; 100	'd'
   745E 30                 2321 	.db #0x30	; 48	'0'
   745F 30                 2322 	.db #0x30	; 48	'0'
   7460 25                 2323 	.db #0x25	; 37
   7461 30                 2324 	.db #0x30	; 48	'0'
   7462 30                 2325 	.db #0x30	; 48	'0'
   7463 1A                 2326 	.db #0x1A	; 26
   7464 30                 2327 	.db #0x30	; 48	'0'
   7465 64                 2328 	.db #0x64	; 100	'd'
   7466 30                 2329 	.db #0x30	; 48	'0'
   7467 64                 2330 	.db #0x64	; 100	'd'
   7468 30                 2331 	.db #0x30	; 48	'0'
   7469 30                 2332 	.db #0x30	; 48	'0'
   746A 25                 2333 	.db #0x25	; 37
   746B 30                 2334 	.db #0x30	; 48	'0'
   746C 30                 2335 	.db #0x30	; 48	'0'
   746D 1A                 2336 	.db #0x1A	; 26
   746E 30                 2337 	.db #0x30	; 48	'0'
   746F 64                 2338 	.db #0x64	; 100	'd'
   7470 30                 2339 	.db #0x30	; 48	'0'
   7471 64                 2340 	.db #0x64	; 100	'd'
   7472 30                 2341 	.db #0x30	; 48	'0'
   7473 30                 2342 	.db #0x30	; 48	'0'
   7474 25                 2343 	.db #0x25	; 37
   7475 30                 2344 	.db #0x30	; 48	'0'
   7476 30                 2345 	.db #0x30	; 48	'0'
   7477 1A                 2346 	.db #0x1A	; 26
   7478 64                 2347 	.db #0x64	; 100	'd'
   7479 CC                 2348 	.db #0xCC	; 204
   747A 98                 2349 	.db #0x98	; 152
   747B 64                 2350 	.db #0x64	; 100	'd'
   747C CC                 2351 	.db #0xCC	; 204
   747D 98                 2352 	.db #0x98	; 152
   747E 25                 2353 	.db #0x25	; 37
   747F 30                 2354 	.db #0x30	; 48	'0'
   7480 30                 2355 	.db #0x30	; 48	'0'
   7481 1A                 2356 	.db #0x1A	; 26
   7482 30                 2357 	.db #0x30	; 48	'0'
   7483 30                 2358 	.db #0x30	; 48	'0'
   7484 30                 2359 	.db #0x30	; 48	'0'
   7485 30                 2360 	.db #0x30	; 48	'0'
   7486 30                 2361 	.db #0x30	; 48	'0'
   7487 30                 2362 	.db #0x30	; 48	'0'
   7488 25                 2363 	.db #0x25	; 37
   7489 30                 2364 	.db #0x30	; 48	'0'
   748A 30                 2365 	.db #0x30	; 48	'0'
   748B 1A                 2366 	.db #0x1A	; 26
   748C 30                 2367 	.db #0x30	; 48	'0'
   748D 30                 2368 	.db #0x30	; 48	'0'
   748E 30                 2369 	.db #0x30	; 48	'0'
   748F 30                 2370 	.db #0x30	; 48	'0'
   7490 30                 2371 	.db #0x30	; 48	'0'
   7491 30                 2372 	.db #0x30	; 48	'0'
   7492 25                 2373 	.db #0x25	; 37
   7493 30                 2374 	.db #0x30	; 48	'0'
   7494 30                 2375 	.db #0x30	; 48	'0'
   7495 1A                 2376 	.db #0x1A	; 26
   7496 30                 2377 	.db #0x30	; 48	'0'
   7497 30                 2378 	.db #0x30	; 48	'0'
   7498 30                 2379 	.db #0x30	; 48	'0'
   7499 30                 2380 	.db #0x30	; 48	'0'
   749A 30                 2381 	.db #0x30	; 48	'0'
   749B 30                 2382 	.db #0x30	; 48	'0'
   749C 25                 2383 	.db #0x25	; 37
   749D 30                 2384 	.db #0x30	; 48	'0'
   749E 30                 2385 	.db #0x30	; 48	'0'
   749F 1A                 2386 	.db #0x1A	; 26
   74A0 30                 2387 	.db #0x30	; 48	'0'
   74A1 30                 2388 	.db #0x30	; 48	'0'
   74A2 30                 2389 	.db #0x30	; 48	'0'
   74A3 30                 2390 	.db #0x30	; 48	'0'
   74A4 30                 2391 	.db #0x30	; 48	'0'
   74A5 30                 2392 	.db #0x30	; 48	'0'
   74A6 25                 2393 	.db #0x25	; 37
   74A7 30                 2394 	.db #0x30	; 48	'0'
   74A8 30                 2395 	.db #0x30	; 48	'0'
   74A9 1A                 2396 	.db #0x1A	; 26
   74AA 30                 2397 	.db #0x30	; 48	'0'
   74AB 30                 2398 	.db #0x30	; 48	'0'
   74AC 30                 2399 	.db #0x30	; 48	'0'
   74AD 30                 2400 	.db #0x30	; 48	'0'
   74AE 30                 2401 	.db #0x30	; 48	'0'
   74AF 30                 2402 	.db #0x30	; 48	'0'
   74B0 25                 2403 	.db #0x25	; 37
   74B1 30                 2404 	.db #0x30	; 48	'0'
   74B2 30                 2405 	.db #0x30	; 48	'0'
   74B3 1A                 2406 	.db #0x1A	; 26
   74B4 30                 2407 	.db #0x30	; 48	'0'
   74B5 30                 2408 	.db #0x30	; 48	'0'
   74B6 30                 2409 	.db #0x30	; 48	'0'
   74B7 30                 2410 	.db #0x30	; 48	'0'
   74B8 30                 2411 	.db #0x30	; 48	'0'
   74B9 30                 2412 	.db #0x30	; 48	'0'
   74BA 25                 2413 	.db #0x25	; 37
   74BB 30                 2414 	.db #0x30	; 48	'0'
   74BC 30                 2415 	.db #0x30	; 48	'0'
   74BD 0F                 2416 	.db #0x0F	; 15
   74BE 30                 2417 	.db #0x30	; 48	'0'
   74BF 30                 2418 	.db #0x30	; 48	'0'
   74C0 30                 2419 	.db #0x30	; 48	'0'
   74C1 30                 2420 	.db #0x30	; 48	'0'
   74C2 30                 2421 	.db #0x30	; 48	'0'
   74C3 30                 2422 	.db #0x30	; 48	'0'
   74C4 0F                 2423 	.db #0x0F	; 15
   74C5 30                 2424 	.db #0x30	; 48	'0'
   74C6 30                 2425 	.db #0x30	; 48	'0'
   74C7 25                 2426 	.db #0x25	; 37
   74C8 30                 2427 	.db #0x30	; 48	'0'
   74C9 30                 2428 	.db #0x30	; 48	'0'
   74CA 30                 2429 	.db #0x30	; 48	'0'
   74CB 30                 2430 	.db #0x30	; 48	'0'
   74CC 30                 2431 	.db #0x30	; 48	'0'
   74CD 30                 2432 	.db #0x30	; 48	'0'
   74CE 1A                 2433 	.db #0x1A	; 26
   74CF 30                 2434 	.db #0x30	; 48	'0'
   74D0 30                 2435 	.db #0x30	; 48	'0'
   74D1 25                 2436 	.db #0x25	; 37
   74D2 0F                 2437 	.db #0x0F	; 15
   74D3 0F                 2438 	.db #0x0F	; 15
   74D4 0F                 2439 	.db #0x0F	; 15
   74D5 0F                 2440 	.db #0x0F	; 15
   74D6 0F                 2441 	.db #0x0F	; 15
   74D7 0F                 2442 	.db #0x0F	; 15
   74D8 1A                 2443 	.db #0x1A	; 26
   74D9 30                 2444 	.db #0x30	; 48	'0'
   74DA F0                 2445 	.db #0xF0	; 240
   74DB 30                 2446 	.db #0x30	; 48	'0'
   74DC 30                 2447 	.db #0x30	; 48	'0'
   74DD 30                 2448 	.db #0x30	; 48	'0'
   74DE 30                 2449 	.db #0x30	; 48	'0'
   74DF 30                 2450 	.db #0x30	; 48	'0'
   74E0 30                 2451 	.db #0x30	; 48	'0'
   74E1 30                 2452 	.db #0x30	; 48	'0'
   74E2 30                 2453 	.db #0x30	; 48	'0'
   74E3 F0                 2454 	.db #0xF0	; 240
   74E4 F0                 2455 	.db #0xF0	; 240
   74E5 30                 2456 	.db #0x30	; 48	'0'
   74E6 30                 2457 	.db #0x30	; 48	'0'
   74E7 30                 2458 	.db #0x30	; 48	'0'
   74E8 30                 2459 	.db #0x30	; 48	'0'
   74E9 30                 2460 	.db #0x30	; 48	'0'
   74EA 30                 2461 	.db #0x30	; 48	'0'
   74EB 30                 2462 	.db #0x30	; 48	'0'
   74EC 30                 2463 	.db #0x30	; 48	'0'
   74ED F0                 2464 	.db #0xF0	; 240
   74EE                    2465 _tile_tiles_06:
   74EE F0                 2466 	.db #0xF0	; 240
   74EF 30                 2467 	.db #0x30	; 48	'0'
   74F0 30                 2468 	.db #0x30	; 48	'0'
   74F1 30                 2469 	.db #0x30	; 48	'0'
   74F2 30                 2470 	.db #0x30	; 48	'0'
   74F3 30                 2471 	.db #0x30	; 48	'0'
   74F4 30                 2472 	.db #0x30	; 48	'0'
   74F5 30                 2473 	.db #0x30	; 48	'0'
   74F6 30                 2474 	.db #0x30	; 48	'0'
   74F7 F0                 2475 	.db #0xF0	; 240
   74F8 F0                 2476 	.db #0xF0	; 240
   74F9 30                 2477 	.db #0x30	; 48	'0'
   74FA 30                 2478 	.db #0x30	; 48	'0'
   74FB 30                 2479 	.db #0x30	; 48	'0'
   74FC 30                 2480 	.db #0x30	; 48	'0'
   74FD 30                 2481 	.db #0x30	; 48	'0'
   74FE 30                 2482 	.db #0x30	; 48	'0'
   74FF 30                 2483 	.db #0x30	; 48	'0'
   7500 30                 2484 	.db #0x30	; 48	'0'
   7501 F0                 2485 	.db #0xF0	; 240
   7502 30                 2486 	.db #0x30	; 48	'0'
   7503 25                 2487 	.db #0x25	; 37
   7504 0F                 2488 	.db #0x0F	; 15
   7505 0F                 2489 	.db #0x0F	; 15
   7506 0F                 2490 	.db #0x0F	; 15
   7507 0F                 2491 	.db #0x0F	; 15
   7508 0F                 2492 	.db #0x0F	; 15
   7509 0F                 2493 	.db #0x0F	; 15
   750A 1A                 2494 	.db #0x1A	; 26
   750B 30                 2495 	.db #0x30	; 48	'0'
   750C 30                 2496 	.db #0x30	; 48	'0'
   750D 25                 2497 	.db #0x25	; 37
   750E 30                 2498 	.db #0x30	; 48	'0'
   750F 30                 2499 	.db #0x30	; 48	'0'
   7510 30                 2500 	.db #0x30	; 48	'0'
   7511 30                 2501 	.db #0x30	; 48	'0'
   7512 30                 2502 	.db #0x30	; 48	'0'
   7513 30                 2503 	.db #0x30	; 48	'0'
   7514 1A                 2504 	.db #0x1A	; 26
   7515 30                 2505 	.db #0x30	; 48	'0'
   7516 30                 2506 	.db #0x30	; 48	'0'
   7517 0F                 2507 	.db #0x0F	; 15
   7518 30                 2508 	.db #0x30	; 48	'0'
   7519 30                 2509 	.db #0x30	; 48	'0'
   751A 30                 2510 	.db #0x30	; 48	'0'
   751B 30                 2511 	.db #0x30	; 48	'0'
   751C 30                 2512 	.db #0x30	; 48	'0'
   751D 30                 2513 	.db #0x30	; 48	'0'
   751E 0F                 2514 	.db #0x0F	; 15
   751F 30                 2515 	.db #0x30	; 48	'0'
   7520 30                 2516 	.db #0x30	; 48	'0'
   7521 1A                 2517 	.db #0x1A	; 26
   7522 30                 2518 	.db #0x30	; 48	'0'
   7523 30                 2519 	.db #0x30	; 48	'0'
   7524 30                 2520 	.db #0x30	; 48	'0'
   7525 30                 2521 	.db #0x30	; 48	'0'
   7526 30                 2522 	.db #0x30	; 48	'0'
   7527 30                 2523 	.db #0x30	; 48	'0'
   7528 25                 2524 	.db #0x25	; 37
   7529 30                 2525 	.db #0x30	; 48	'0'
   752A 30                 2526 	.db #0x30	; 48	'0'
   752B 1A                 2527 	.db #0x1A	; 26
   752C 30                 2528 	.db #0x30	; 48	'0'
   752D 30                 2529 	.db #0x30	; 48	'0'
   752E 30                 2530 	.db #0x30	; 48	'0'
   752F 30                 2531 	.db #0x30	; 48	'0'
   7530 30                 2532 	.db #0x30	; 48	'0'
   7531 30                 2533 	.db #0x30	; 48	'0'
   7532 25                 2534 	.db #0x25	; 37
   7533 30                 2535 	.db #0x30	; 48	'0'
   7534 30                 2536 	.db #0x30	; 48	'0'
   7535 1A                 2537 	.db #0x1A	; 26
   7536 30                 2538 	.db #0x30	; 48	'0'
   7537 30                 2539 	.db #0x30	; 48	'0'
   7538 30                 2540 	.db #0x30	; 48	'0'
   7539 30                 2541 	.db #0x30	; 48	'0'
   753A 30                 2542 	.db #0x30	; 48	'0'
   753B 30                 2543 	.db #0x30	; 48	'0'
   753C 25                 2544 	.db #0x25	; 37
   753D 30                 2545 	.db #0x30	; 48	'0'
   753E 30                 2546 	.db #0x30	; 48	'0'
   753F 1A                 2547 	.db #0x1A	; 26
   7540 30                 2548 	.db #0x30	; 48	'0'
   7541 30                 2549 	.db #0x30	; 48	'0'
   7542 30                 2550 	.db #0x30	; 48	'0'
   7543 30                 2551 	.db #0x30	; 48	'0'
   7544 30                 2552 	.db #0x30	; 48	'0'
   7545 30                 2553 	.db #0x30	; 48	'0'
   7546 25                 2554 	.db #0x25	; 37
   7547 30                 2555 	.db #0x30	; 48	'0'
   7548 30                 2556 	.db #0x30	; 48	'0'
   7549 1A                 2557 	.db #0x1A	; 26
   754A 30                 2558 	.db #0x30	; 48	'0'
   754B 30                 2559 	.db #0x30	; 48	'0'
   754C 30                 2560 	.db #0x30	; 48	'0'
   754D 30                 2561 	.db #0x30	; 48	'0'
   754E 30                 2562 	.db #0x30	; 48	'0'
   754F 30                 2563 	.db #0x30	; 48	'0'
   7550 25                 2564 	.db #0x25	; 37
   7551 30                 2565 	.db #0x30	; 48	'0'
   7552 30                 2566 	.db #0x30	; 48	'0'
   7553 1A                 2567 	.db #0x1A	; 26
   7554 30                 2568 	.db #0x30	; 48	'0'
   7555 30                 2569 	.db #0x30	; 48	'0'
   7556 30                 2570 	.db #0x30	; 48	'0'
   7557 30                 2571 	.db #0x30	; 48	'0'
   7558 30                 2572 	.db #0x30	; 48	'0'
   7559 30                 2573 	.db #0x30	; 48	'0'
   755A 25                 2574 	.db #0x25	; 37
   755B 30                 2575 	.db #0x30	; 48	'0'
   755C 30                 2576 	.db #0x30	; 48	'0'
   755D 1A                 2577 	.db #0x1A	; 26
   755E 30                 2578 	.db #0x30	; 48	'0'
   755F 30                 2579 	.db #0x30	; 48	'0'
   7560 30                 2580 	.db #0x30	; 48	'0'
   7561 30                 2581 	.db #0x30	; 48	'0'
   7562 30                 2582 	.db #0x30	; 48	'0'
   7563 30                 2583 	.db #0x30	; 48	'0'
   7564 25                 2584 	.db #0x25	; 37
   7565 30                 2585 	.db #0x30	; 48	'0'
   7566 30                 2586 	.db #0x30	; 48	'0'
   7567 1A                 2587 	.db #0x1A	; 26
   7568 30                 2588 	.db #0x30	; 48	'0'
   7569 30                 2589 	.db #0x30	; 48	'0'
   756A 30                 2590 	.db #0x30	; 48	'0'
   756B 30                 2591 	.db #0x30	; 48	'0'
   756C 30                 2592 	.db #0x30	; 48	'0'
   756D 30                 2593 	.db #0x30	; 48	'0'
   756E 25                 2594 	.db #0x25	; 37
   756F 30                 2595 	.db #0x30	; 48	'0'
   7570 30                 2596 	.db #0x30	; 48	'0'
   7571 1A                 2597 	.db #0x1A	; 26
   7572 30                 2598 	.db #0x30	; 48	'0'
   7573 30                 2599 	.db #0x30	; 48	'0'
   7574 30                 2600 	.db #0x30	; 48	'0'
   7575 30                 2601 	.db #0x30	; 48	'0'
   7576 30                 2602 	.db #0x30	; 48	'0'
   7577 30                 2603 	.db #0x30	; 48	'0'
   7578 25                 2604 	.db #0x25	; 37
   7579 30                 2605 	.db #0x30	; 48	'0'
   757A 30                 2606 	.db #0x30	; 48	'0'
   757B 1A                 2607 	.db #0x1A	; 26
   757C 30                 2608 	.db #0x30	; 48	'0'
   757D 64                 2609 	.db #0x64	; 100	'd'
   757E 30                 2610 	.db #0x30	; 48	'0'
   757F 30                 2611 	.db #0x30	; 48	'0'
   7580 64                 2612 	.db #0x64	; 100	'd'
   7581 30                 2613 	.db #0x30	; 48	'0'
   7582 25                 2614 	.db #0x25	; 37
   7583 30                 2615 	.db #0x30	; 48	'0'
   7584 30                 2616 	.db #0x30	; 48	'0'
   7585 1A                 2617 	.db #0x1A	; 26
   7586 30                 2618 	.db #0x30	; 48	'0'
   7587 98                 2619 	.db #0x98	; 152
   7588 98                 2620 	.db #0x98	; 152
   7589 30                 2621 	.db #0x30	; 48	'0'
   758A 64                 2622 	.db #0x64	; 100	'd'
   758B 30                 2623 	.db #0x30	; 48	'0'
   758C 25                 2624 	.db #0x25	; 37
   758D 30                 2625 	.db #0x30	; 48	'0'
   758E 30                 2626 	.db #0x30	; 48	'0'
   758F 1A                 2627 	.db #0x1A	; 26
   7590 64                 2628 	.db #0x64	; 100	'd'
   7591 30                 2629 	.db #0x30	; 48	'0'
   7592 98                 2630 	.db #0x98	; 152
   7593 30                 2631 	.db #0x30	; 48	'0'
   7594 CC                 2632 	.db #0xCC	; 204
   7595 30                 2633 	.db #0x30	; 48	'0'
   7596 25                 2634 	.db #0x25	; 37
   7597 30                 2635 	.db #0x30	; 48	'0'
   7598 30                 2636 	.db #0x30	; 48	'0'
   7599 1A                 2637 	.db #0x1A	; 26
   759A 64                 2638 	.db #0x64	; 100	'd'
   759B 30                 2639 	.db #0x30	; 48	'0'
   759C 98                 2640 	.db #0x98	; 152
   759D 30                 2641 	.db #0x30	; 48	'0'
   759E CC                 2642 	.db #0xCC	; 204
   759F 30                 2643 	.db #0x30	; 48	'0'
   75A0 25                 2644 	.db #0x25	; 37
   75A1 30                 2645 	.db #0x30	; 48	'0'
   75A2 30                 2646 	.db #0x30	; 48	'0'
   75A3 1A                 2647 	.db #0x1A	; 26
   75A4 30                 2648 	.db #0x30	; 48	'0'
   75A5 30                 2649 	.db #0x30	; 48	'0'
   75A6 98                 2650 	.db #0x98	; 152
   75A7 64                 2651 	.db #0x64	; 100	'd'
   75A8 64                 2652 	.db #0x64	; 100	'd'
   75A9 30                 2653 	.db #0x30	; 48	'0'
   75AA 25                 2654 	.db #0x25	; 37
   75AB 30                 2655 	.db #0x30	; 48	'0'
   75AC 30                 2656 	.db #0x30	; 48	'0'
   75AD 1A                 2657 	.db #0x1A	; 26
   75AE 30                 2658 	.db #0x30	; 48	'0'
   75AF 30                 2659 	.db #0x30	; 48	'0'
   75B0 98                 2660 	.db #0x98	; 152
   75B1 64                 2661 	.db #0x64	; 100	'd'
   75B2 64                 2662 	.db #0x64	; 100	'd'
   75B3 30                 2663 	.db #0x30	; 48	'0'
   75B4 25                 2664 	.db #0x25	; 37
   75B5 30                 2665 	.db #0x30	; 48	'0'
   75B6 30                 2666 	.db #0x30	; 48	'0'
   75B7 1A                 2667 	.db #0x1A	; 26
   75B8 30                 2668 	.db #0x30	; 48	'0'
   75B9 64                 2669 	.db #0x64	; 100	'd'
   75BA 30                 2670 	.db #0x30	; 48	'0'
   75BB 64                 2671 	.db #0x64	; 100	'd'
   75BC 64                 2672 	.db #0x64	; 100	'd'
   75BD 30                 2673 	.db #0x30	; 48	'0'
   75BE 25                 2674 	.db #0x25	; 37
   75BF 30                 2675 	.db #0x30	; 48	'0'
   75C0 30                 2676 	.db #0x30	; 48	'0'
   75C1 1A                 2677 	.db #0x1A	; 26
   75C2 30                 2678 	.db #0x30	; 48	'0'
   75C3 64                 2679 	.db #0x64	; 100	'd'
   75C4 30                 2680 	.db #0x30	; 48	'0'
   75C5 98                 2681 	.db #0x98	; 152
   75C6 64                 2682 	.db #0x64	; 100	'd'
   75C7 30                 2683 	.db #0x30	; 48	'0'
   75C8 25                 2684 	.db #0x25	; 37
   75C9 30                 2685 	.db #0x30	; 48	'0'
   75CA 30                 2686 	.db #0x30	; 48	'0'
   75CB 1A                 2687 	.db #0x1A	; 26
   75CC 30                 2688 	.db #0x30	; 48	'0'
   75CD 98                 2689 	.db #0x98	; 152
   75CE 30                 2690 	.db #0x30	; 48	'0'
   75CF 98                 2691 	.db #0x98	; 152
   75D0 64                 2692 	.db #0x64	; 100	'd'
   75D1 30                 2693 	.db #0x30	; 48	'0'
   75D2 25                 2694 	.db #0x25	; 37
   75D3 30                 2695 	.db #0x30	; 48	'0'
   75D4 30                 2696 	.db #0x30	; 48	'0'
   75D5 1A                 2697 	.db #0x1A	; 26
   75D6 30                 2698 	.db #0x30	; 48	'0'
   75D7 98                 2699 	.db #0x98	; 152
   75D8 30                 2700 	.db #0x30	; 48	'0'
   75D9 98                 2701 	.db #0x98	; 152
   75DA 64                 2702 	.db #0x64	; 100	'd'
   75DB 30                 2703 	.db #0x30	; 48	'0'
   75DC 25                 2704 	.db #0x25	; 37
   75DD 30                 2705 	.db #0x30	; 48	'0'
   75DE 30                 2706 	.db #0x30	; 48	'0'
   75DF 1A                 2707 	.db #0x1A	; 26
   75E0 30                 2708 	.db #0x30	; 48	'0'
   75E1 98                 2709 	.db #0x98	; 152
   75E2 30                 2710 	.db #0x30	; 48	'0'
   75E3 CC                 2711 	.db #0xCC	; 204
   75E4 CC                 2712 	.db #0xCC	; 204
   75E5 98                 2713 	.db #0x98	; 152
   75E6 25                 2714 	.db #0x25	; 37
   75E7 30                 2715 	.db #0x30	; 48	'0'
   75E8 30                 2716 	.db #0x30	; 48	'0'
   75E9 1A                 2717 	.db #0x1A	; 26
   75EA 64                 2718 	.db #0x64	; 100	'd'
   75EB 30                 2719 	.db #0x30	; 48	'0'
   75EC 30                 2720 	.db #0x30	; 48	'0'
   75ED 30                 2721 	.db #0x30	; 48	'0'
   75EE 64                 2722 	.db #0x64	; 100	'd'
   75EF 30                 2723 	.db #0x30	; 48	'0'
   75F0 25                 2724 	.db #0x25	; 37
   75F1 30                 2725 	.db #0x30	; 48	'0'
   75F2 30                 2726 	.db #0x30	; 48	'0'
   75F3 1A                 2727 	.db #0x1A	; 26
   75F4 64                 2728 	.db #0x64	; 100	'd'
   75F5 30                 2729 	.db #0x30	; 48	'0'
   75F6 30                 2730 	.db #0x30	; 48	'0'
   75F7 30                 2731 	.db #0x30	; 48	'0'
   75F8 64                 2732 	.db #0x64	; 100	'd'
   75F9 30                 2733 	.db #0x30	; 48	'0'
   75FA 25                 2734 	.db #0x25	; 37
   75FB 30                 2735 	.db #0x30	; 48	'0'
   75FC 30                 2736 	.db #0x30	; 48	'0'
   75FD 1A                 2737 	.db #0x1A	; 26
   75FE 64                 2738 	.db #0x64	; 100	'd'
   75FF 30                 2739 	.db #0x30	; 48	'0'
   7600 30                 2740 	.db #0x30	; 48	'0'
   7601 30                 2741 	.db #0x30	; 48	'0'
   7602 64                 2742 	.db #0x64	; 100	'd'
   7603 30                 2743 	.db #0x30	; 48	'0'
   7604 25                 2744 	.db #0x25	; 37
   7605 30                 2745 	.db #0x30	; 48	'0'
   7606 30                 2746 	.db #0x30	; 48	'0'
   7607 1A                 2747 	.db #0x1A	; 26
   7608 64                 2748 	.db #0x64	; 100	'd'
   7609 CC                 2749 	.db #0xCC	; 204
   760A 98                 2750 	.db #0x98	; 152
   760B 30                 2751 	.db #0x30	; 48	'0'
   760C 64                 2752 	.db #0x64	; 100	'd'
   760D 30                 2753 	.db #0x30	; 48	'0'
   760E 25                 2754 	.db #0x25	; 37
   760F 30                 2755 	.db #0x30	; 48	'0'
   7610 30                 2756 	.db #0x30	; 48	'0'
   7611 1A                 2757 	.db #0x1A	; 26
   7612 30                 2758 	.db #0x30	; 48	'0'
   7613 30                 2759 	.db #0x30	; 48	'0'
   7614 30                 2760 	.db #0x30	; 48	'0'
   7615 30                 2761 	.db #0x30	; 48	'0'
   7616 30                 2762 	.db #0x30	; 48	'0'
   7617 30                 2763 	.db #0x30	; 48	'0'
   7618 25                 2764 	.db #0x25	; 37
   7619 30                 2765 	.db #0x30	; 48	'0'
   761A 30                 2766 	.db #0x30	; 48	'0'
   761B 1A                 2767 	.db #0x1A	; 26
   761C 30                 2768 	.db #0x30	; 48	'0'
   761D 30                 2769 	.db #0x30	; 48	'0'
   761E 30                 2770 	.db #0x30	; 48	'0'
   761F 30                 2771 	.db #0x30	; 48	'0'
   7620 30                 2772 	.db #0x30	; 48	'0'
   7621 30                 2773 	.db #0x30	; 48	'0'
   7622 25                 2774 	.db #0x25	; 37
   7623 30                 2775 	.db #0x30	; 48	'0'
   7624 30                 2776 	.db #0x30	; 48	'0'
   7625 1A                 2777 	.db #0x1A	; 26
   7626 30                 2778 	.db #0x30	; 48	'0'
   7627 30                 2779 	.db #0x30	; 48	'0'
   7628 30                 2780 	.db #0x30	; 48	'0'
   7629 30                 2781 	.db #0x30	; 48	'0'
   762A 30                 2782 	.db #0x30	; 48	'0'
   762B 30                 2783 	.db #0x30	; 48	'0'
   762C 25                 2784 	.db #0x25	; 37
   762D 30                 2785 	.db #0x30	; 48	'0'
   762E 30                 2786 	.db #0x30	; 48	'0'
   762F 1A                 2787 	.db #0x1A	; 26
   7630 30                 2788 	.db #0x30	; 48	'0'
   7631 30                 2789 	.db #0x30	; 48	'0'
   7632 30                 2790 	.db #0x30	; 48	'0'
   7633 30                 2791 	.db #0x30	; 48	'0'
   7634 30                 2792 	.db #0x30	; 48	'0'
   7635 30                 2793 	.db #0x30	; 48	'0'
   7636 25                 2794 	.db #0x25	; 37
   7637 30                 2795 	.db #0x30	; 48	'0'
   7638 30                 2796 	.db #0x30	; 48	'0'
   7639 1A                 2797 	.db #0x1A	; 26
   763A 30                 2798 	.db #0x30	; 48	'0'
   763B 30                 2799 	.db #0x30	; 48	'0'
   763C 30                 2800 	.db #0x30	; 48	'0'
   763D 30                 2801 	.db #0x30	; 48	'0'
   763E 30                 2802 	.db #0x30	; 48	'0'
   763F 30                 2803 	.db #0x30	; 48	'0'
   7640 25                 2804 	.db #0x25	; 37
   7641 30                 2805 	.db #0x30	; 48	'0'
   7642 30                 2806 	.db #0x30	; 48	'0'
   7643 1A                 2807 	.db #0x1A	; 26
   7644 30                 2808 	.db #0x30	; 48	'0'
   7645 30                 2809 	.db #0x30	; 48	'0'
   7646 30                 2810 	.db #0x30	; 48	'0'
   7647 30                 2811 	.db #0x30	; 48	'0'
   7648 30                 2812 	.db #0x30	; 48	'0'
   7649 30                 2813 	.db #0x30	; 48	'0'
   764A 25                 2814 	.db #0x25	; 37
   764B 30                 2815 	.db #0x30	; 48	'0'
   764C 30                 2816 	.db #0x30	; 48	'0'
   764D 0F                 2817 	.db #0x0F	; 15
   764E 30                 2818 	.db #0x30	; 48	'0'
   764F 30                 2819 	.db #0x30	; 48	'0'
   7650 30                 2820 	.db #0x30	; 48	'0'
   7651 30                 2821 	.db #0x30	; 48	'0'
   7652 30                 2822 	.db #0x30	; 48	'0'
   7653 30                 2823 	.db #0x30	; 48	'0'
   7654 0F                 2824 	.db #0x0F	; 15
   7655 30                 2825 	.db #0x30	; 48	'0'
   7656 30                 2826 	.db #0x30	; 48	'0'
   7657 25                 2827 	.db #0x25	; 37
   7658 30                 2828 	.db #0x30	; 48	'0'
   7659 30                 2829 	.db #0x30	; 48	'0'
   765A 30                 2830 	.db #0x30	; 48	'0'
   765B 30                 2831 	.db #0x30	; 48	'0'
   765C 30                 2832 	.db #0x30	; 48	'0'
   765D 30                 2833 	.db #0x30	; 48	'0'
   765E 1A                 2834 	.db #0x1A	; 26
   765F 30                 2835 	.db #0x30	; 48	'0'
   7660 30                 2836 	.db #0x30	; 48	'0'
   7661 25                 2837 	.db #0x25	; 37
   7662 0F                 2838 	.db #0x0F	; 15
   7663 0F                 2839 	.db #0x0F	; 15
   7664 0F                 2840 	.db #0x0F	; 15
   7665 0F                 2841 	.db #0x0F	; 15
   7666 0F                 2842 	.db #0x0F	; 15
   7667 0F                 2843 	.db #0x0F	; 15
   7668 1A                 2844 	.db #0x1A	; 26
   7669 30                 2845 	.db #0x30	; 48	'0'
   766A F0                 2846 	.db #0xF0	; 240
   766B 30                 2847 	.db #0x30	; 48	'0'
   766C 30                 2848 	.db #0x30	; 48	'0'
   766D 30                 2849 	.db #0x30	; 48	'0'
   766E 30                 2850 	.db #0x30	; 48	'0'
   766F 30                 2851 	.db #0x30	; 48	'0'
   7670 30                 2852 	.db #0x30	; 48	'0'
   7671 30                 2853 	.db #0x30	; 48	'0'
   7672 30                 2854 	.db #0x30	; 48	'0'
   7673 F0                 2855 	.db #0xF0	; 240
   7674 F0                 2856 	.db #0xF0	; 240
   7675 30                 2857 	.db #0x30	; 48	'0'
   7676 30                 2858 	.db #0x30	; 48	'0'
   7677 30                 2859 	.db #0x30	; 48	'0'
   7678 30                 2860 	.db #0x30	; 48	'0'
   7679 30                 2861 	.db #0x30	; 48	'0'
   767A 30                 2862 	.db #0x30	; 48	'0'
   767B 30                 2863 	.db #0x30	; 48	'0'
   767C 30                 2864 	.db #0x30	; 48	'0'
   767D F0                 2865 	.db #0xF0	; 240
   767E                    2866 _tile_tiles_07:
   767E F0                 2867 	.db #0xF0	; 240
   767F 30                 2868 	.db #0x30	; 48	'0'
   7680 30                 2869 	.db #0x30	; 48	'0'
   7681 30                 2870 	.db #0x30	; 48	'0'
   7682 30                 2871 	.db #0x30	; 48	'0'
   7683 30                 2872 	.db #0x30	; 48	'0'
   7684 30                 2873 	.db #0x30	; 48	'0'
   7685 30                 2874 	.db #0x30	; 48	'0'
   7686 30                 2875 	.db #0x30	; 48	'0'
   7687 F0                 2876 	.db #0xF0	; 240
   7688 F0                 2877 	.db #0xF0	; 240
   7689 30                 2878 	.db #0x30	; 48	'0'
   768A 30                 2879 	.db #0x30	; 48	'0'
   768B 30                 2880 	.db #0x30	; 48	'0'
   768C 30                 2881 	.db #0x30	; 48	'0'
   768D 30                 2882 	.db #0x30	; 48	'0'
   768E 30                 2883 	.db #0x30	; 48	'0'
   768F 30                 2884 	.db #0x30	; 48	'0'
   7690 30                 2885 	.db #0x30	; 48	'0'
   7691 F0                 2886 	.db #0xF0	; 240
   7692 30                 2887 	.db #0x30	; 48	'0'
   7693 25                 2888 	.db #0x25	; 37
   7694 0F                 2889 	.db #0x0F	; 15
   7695 0F                 2890 	.db #0x0F	; 15
   7696 0F                 2891 	.db #0x0F	; 15
   7697 0F                 2892 	.db #0x0F	; 15
   7698 0F                 2893 	.db #0x0F	; 15
   7699 0F                 2894 	.db #0x0F	; 15
   769A 1A                 2895 	.db #0x1A	; 26
   769B 30                 2896 	.db #0x30	; 48	'0'
   769C 30                 2897 	.db #0x30	; 48	'0'
   769D 25                 2898 	.db #0x25	; 37
   769E 30                 2899 	.db #0x30	; 48	'0'
   769F 30                 2900 	.db #0x30	; 48	'0'
   76A0 30                 2901 	.db #0x30	; 48	'0'
   76A1 30                 2902 	.db #0x30	; 48	'0'
   76A2 30                 2903 	.db #0x30	; 48	'0'
   76A3 30                 2904 	.db #0x30	; 48	'0'
   76A4 1A                 2905 	.db #0x1A	; 26
   76A5 30                 2906 	.db #0x30	; 48	'0'
   76A6 30                 2907 	.db #0x30	; 48	'0'
   76A7 0F                 2908 	.db #0x0F	; 15
   76A8 30                 2909 	.db #0x30	; 48	'0'
   76A9 30                 2910 	.db #0x30	; 48	'0'
   76AA 30                 2911 	.db #0x30	; 48	'0'
   76AB 30                 2912 	.db #0x30	; 48	'0'
   76AC 30                 2913 	.db #0x30	; 48	'0'
   76AD 30                 2914 	.db #0x30	; 48	'0'
   76AE 0F                 2915 	.db #0x0F	; 15
   76AF 30                 2916 	.db #0x30	; 48	'0'
   76B0 30                 2917 	.db #0x30	; 48	'0'
   76B1 1A                 2918 	.db #0x1A	; 26
   76B2 30                 2919 	.db #0x30	; 48	'0'
   76B3 30                 2920 	.db #0x30	; 48	'0'
   76B4 30                 2921 	.db #0x30	; 48	'0'
   76B5 30                 2922 	.db #0x30	; 48	'0'
   76B6 30                 2923 	.db #0x30	; 48	'0'
   76B7 30                 2924 	.db #0x30	; 48	'0'
   76B8 25                 2925 	.db #0x25	; 37
   76B9 30                 2926 	.db #0x30	; 48	'0'
   76BA 30                 2927 	.db #0x30	; 48	'0'
   76BB 1A                 2928 	.db #0x1A	; 26
   76BC 30                 2929 	.db #0x30	; 48	'0'
   76BD 30                 2930 	.db #0x30	; 48	'0'
   76BE 30                 2931 	.db #0x30	; 48	'0'
   76BF 30                 2932 	.db #0x30	; 48	'0'
   76C0 30                 2933 	.db #0x30	; 48	'0'
   76C1 30                 2934 	.db #0x30	; 48	'0'
   76C2 25                 2935 	.db #0x25	; 37
   76C3 30                 2936 	.db #0x30	; 48	'0'
   76C4 30                 2937 	.db #0x30	; 48	'0'
   76C5 1A                 2938 	.db #0x1A	; 26
   76C6 30                 2939 	.db #0x30	; 48	'0'
   76C7 30                 2940 	.db #0x30	; 48	'0'
   76C8 30                 2941 	.db #0x30	; 48	'0'
   76C9 30                 2942 	.db #0x30	; 48	'0'
   76CA 30                 2943 	.db #0x30	; 48	'0'
   76CB 30                 2944 	.db #0x30	; 48	'0'
   76CC 25                 2945 	.db #0x25	; 37
   76CD 30                 2946 	.db #0x30	; 48	'0'
   76CE 30                 2947 	.db #0x30	; 48	'0'
   76CF 1A                 2948 	.db #0x1A	; 26
   76D0 30                 2949 	.db #0x30	; 48	'0'
   76D1 30                 2950 	.db #0x30	; 48	'0'
   76D2 30                 2951 	.db #0x30	; 48	'0'
   76D3 30                 2952 	.db #0x30	; 48	'0'
   76D4 30                 2953 	.db #0x30	; 48	'0'
   76D5 30                 2954 	.db #0x30	; 48	'0'
   76D6 25                 2955 	.db #0x25	; 37
   76D7 30                 2956 	.db #0x30	; 48	'0'
   76D8 30                 2957 	.db #0x30	; 48	'0'
   76D9 1A                 2958 	.db #0x1A	; 26
   76DA 30                 2959 	.db #0x30	; 48	'0'
   76DB 30                 2960 	.db #0x30	; 48	'0'
   76DC 30                 2961 	.db #0x30	; 48	'0'
   76DD 30                 2962 	.db #0x30	; 48	'0'
   76DE 30                 2963 	.db #0x30	; 48	'0'
   76DF 30                 2964 	.db #0x30	; 48	'0'
   76E0 25                 2965 	.db #0x25	; 37
   76E1 30                 2966 	.db #0x30	; 48	'0'
   76E2 30                 2967 	.db #0x30	; 48	'0'
   76E3 1A                 2968 	.db #0x1A	; 26
   76E4 30                 2969 	.db #0x30	; 48	'0'
   76E5 30                 2970 	.db #0x30	; 48	'0'
   76E6 30                 2971 	.db #0x30	; 48	'0'
   76E7 30                 2972 	.db #0x30	; 48	'0'
   76E8 30                 2973 	.db #0x30	; 48	'0'
   76E9 30                 2974 	.db #0x30	; 48	'0'
   76EA 25                 2975 	.db #0x25	; 37
   76EB 30                 2976 	.db #0x30	; 48	'0'
   76EC 30                 2977 	.db #0x30	; 48	'0'
   76ED 1A                 2978 	.db #0x1A	; 26
   76EE 30                 2979 	.db #0x30	; 48	'0'
   76EF 30                 2980 	.db #0x30	; 48	'0'
   76F0 30                 2981 	.db #0x30	; 48	'0'
   76F1 30                 2982 	.db #0x30	; 48	'0'
   76F2 30                 2983 	.db #0x30	; 48	'0'
   76F3 30                 2984 	.db #0x30	; 48	'0'
   76F4 25                 2985 	.db #0x25	; 37
   76F5 30                 2986 	.db #0x30	; 48	'0'
   76F6 30                 2987 	.db #0x30	; 48	'0'
   76F7 1A                 2988 	.db #0x1A	; 26
   76F8 30                 2989 	.db #0x30	; 48	'0'
   76F9 30                 2990 	.db #0x30	; 48	'0'
   76FA 30                 2991 	.db #0x30	; 48	'0'
   76FB 30                 2992 	.db #0x30	; 48	'0'
   76FC 30                 2993 	.db #0x30	; 48	'0'
   76FD 30                 2994 	.db #0x30	; 48	'0'
   76FE 25                 2995 	.db #0x25	; 37
   76FF 30                 2996 	.db #0x30	; 48	'0'
   7700 30                 2997 	.db #0x30	; 48	'0'
   7701 1A                 2998 	.db #0x1A	; 26
   7702 30                 2999 	.db #0x30	; 48	'0'
   7703 64                 3000 	.db #0x64	; 100	'd'
   7704 30                 3001 	.db #0x30	; 48	'0'
   7705 30                 3002 	.db #0x30	; 48	'0'
   7706 CC                 3003 	.db #0xCC	; 204
   7707 30                 3004 	.db #0x30	; 48	'0'
   7708 25                 3005 	.db #0x25	; 37
   7709 30                 3006 	.db #0x30	; 48	'0'
   770A 30                 3007 	.db #0x30	; 48	'0'
   770B 1A                 3008 	.db #0x1A	; 26
   770C 30                 3009 	.db #0x30	; 48	'0'
   770D 64                 3010 	.db #0x64	; 100	'd'
   770E 30                 3011 	.db #0x30	; 48	'0'
   770F 64                 3012 	.db #0x64	; 100	'd'
   7710 30                 3013 	.db #0x30	; 48	'0'
   7711 98                 3014 	.db #0x98	; 152
   7712 25                 3015 	.db #0x25	; 37
   7713 30                 3016 	.db #0x30	; 48	'0'
   7714 30                 3017 	.db #0x30	; 48	'0'
   7715 1A                 3018 	.db #0x1A	; 26
   7716 30                 3019 	.db #0x30	; 48	'0'
   7717 CC                 3020 	.db #0xCC	; 204
   7718 30                 3021 	.db #0x30	; 48	'0'
   7719 64                 3022 	.db #0x64	; 100	'd'
   771A 30                 3023 	.db #0x30	; 48	'0'
   771B 98                 3024 	.db #0x98	; 152
   771C 25                 3025 	.db #0x25	; 37
   771D 30                 3026 	.db #0x30	; 48	'0'
   771E 30                 3027 	.db #0x30	; 48	'0'
   771F 1A                 3028 	.db #0x1A	; 26
   7720 30                 3029 	.db #0x30	; 48	'0'
   7721 CC                 3030 	.db #0xCC	; 204
   7722 30                 3031 	.db #0x30	; 48	'0'
   7723 64                 3032 	.db #0x64	; 100	'd'
   7724 30                 3033 	.db #0x30	; 48	'0'
   7725 98                 3034 	.db #0x98	; 152
   7726 25                 3035 	.db #0x25	; 37
   7727 30                 3036 	.db #0x30	; 48	'0'
   7728 30                 3037 	.db #0x30	; 48	'0'
   7729 1A                 3038 	.db #0x1A	; 26
   772A 64                 3039 	.db #0x64	; 100	'd'
   772B 64                 3040 	.db #0x64	; 100	'd'
   772C 30                 3041 	.db #0x30	; 48	'0'
   772D 64                 3042 	.db #0x64	; 100	'd'
   772E 30                 3043 	.db #0x30	; 48	'0'
   772F 98                 3044 	.db #0x98	; 152
   7730 25                 3045 	.db #0x25	; 37
   7731 30                 3046 	.db #0x30	; 48	'0'
   7732 30                 3047 	.db #0x30	; 48	'0'
   7733 1A                 3048 	.db #0x1A	; 26
   7734 64                 3049 	.db #0x64	; 100	'd'
   7735 64                 3050 	.db #0x64	; 100	'd'
   7736 30                 3051 	.db #0x30	; 48	'0'
   7737 64                 3052 	.db #0x64	; 100	'd'
   7738 30                 3053 	.db #0x30	; 48	'0'
   7739 98                 3054 	.db #0x98	; 152
   773A 25                 3055 	.db #0x25	; 37
   773B 30                 3056 	.db #0x30	; 48	'0'
   773C 30                 3057 	.db #0x30	; 48	'0'
   773D 1A                 3058 	.db #0x1A	; 26
   773E 64                 3059 	.db #0x64	; 100	'd'
   773F 64                 3060 	.db #0x64	; 100	'd'
   7740 30                 3061 	.db #0x30	; 48	'0'
   7741 64                 3062 	.db #0x64	; 100	'd'
   7742 30                 3063 	.db #0x30	; 48	'0'
   7743 98                 3064 	.db #0x98	; 152
   7744 25                 3065 	.db #0x25	; 37
   7745 30                 3066 	.db #0x30	; 48	'0'
   7746 30                 3067 	.db #0x30	; 48	'0'
   7747 1A                 3068 	.db #0x1A	; 26
   7748 64                 3069 	.db #0x64	; 100	'd'
   7749 64                 3070 	.db #0x64	; 100	'd'
   774A 30                 3071 	.db #0x30	; 48	'0'
   774B 30                 3072 	.db #0x30	; 48	'0'
   774C CC                 3073 	.db #0xCC	; 204
   774D 30                 3074 	.db #0x30	; 48	'0'
   774E 25                 3075 	.db #0x25	; 37
   774F 30                 3076 	.db #0x30	; 48	'0'
   7750 30                 3077 	.db #0x30	; 48	'0'
   7751 1A                 3078 	.db #0x1A	; 26
   7752 98                 3079 	.db #0x98	; 152
   7753 64                 3080 	.db #0x64	; 100	'd'
   7754 30                 3081 	.db #0x30	; 48	'0'
   7755 64                 3082 	.db #0x64	; 100	'd'
   7756 30                 3083 	.db #0x30	; 48	'0'
   7757 98                 3084 	.db #0x98	; 152
   7758 25                 3085 	.db #0x25	; 37
   7759 30                 3086 	.db #0x30	; 48	'0'
   775A 30                 3087 	.db #0x30	; 48	'0'
   775B 1A                 3088 	.db #0x1A	; 26
   775C 98                 3089 	.db #0x98	; 152
   775D 64                 3090 	.db #0x64	; 100	'd'
   775E 30                 3091 	.db #0x30	; 48	'0'
   775F 64                 3092 	.db #0x64	; 100	'd'
   7760 30                 3093 	.db #0x30	; 48	'0'
   7761 98                 3094 	.db #0x98	; 152
   7762 25                 3095 	.db #0x25	; 37
   7763 30                 3096 	.db #0x30	; 48	'0'
   7764 30                 3097 	.db #0x30	; 48	'0'
   7765 1A                 3098 	.db #0x1A	; 26
   7766 CC                 3099 	.db #0xCC	; 204
   7767 CC                 3100 	.db #0xCC	; 204
   7768 98                 3101 	.db #0x98	; 152
   7769 64                 3102 	.db #0x64	; 100	'd'
   776A 30                 3103 	.db #0x30	; 48	'0'
   776B 98                 3104 	.db #0x98	; 152
   776C 25                 3105 	.db #0x25	; 37
   776D 30                 3106 	.db #0x30	; 48	'0'
   776E 30                 3107 	.db #0x30	; 48	'0'
   776F 1A                 3108 	.db #0x1A	; 26
   7770 30                 3109 	.db #0x30	; 48	'0'
   7771 64                 3110 	.db #0x64	; 100	'd'
   7772 30                 3111 	.db #0x30	; 48	'0'
   7773 64                 3112 	.db #0x64	; 100	'd'
   7774 30                 3113 	.db #0x30	; 48	'0'
   7775 98                 3114 	.db #0x98	; 152
   7776 25                 3115 	.db #0x25	; 37
   7777 30                 3116 	.db #0x30	; 48	'0'
   7778 30                 3117 	.db #0x30	; 48	'0'
   7779 1A                 3118 	.db #0x1A	; 26
   777A 30                 3119 	.db #0x30	; 48	'0'
   777B 64                 3120 	.db #0x64	; 100	'd'
   777C 30                 3121 	.db #0x30	; 48	'0'
   777D 64                 3122 	.db #0x64	; 100	'd'
   777E 30                 3123 	.db #0x30	; 48	'0'
   777F 98                 3124 	.db #0x98	; 152
   7780 25                 3125 	.db #0x25	; 37
   7781 30                 3126 	.db #0x30	; 48	'0'
   7782 30                 3127 	.db #0x30	; 48	'0'
   7783 1A                 3128 	.db #0x1A	; 26
   7784 30                 3129 	.db #0x30	; 48	'0'
   7785 64                 3130 	.db #0x64	; 100	'd'
   7786 30                 3131 	.db #0x30	; 48	'0'
   7787 64                 3132 	.db #0x64	; 100	'd'
   7788 30                 3133 	.db #0x30	; 48	'0'
   7789 98                 3134 	.db #0x98	; 152
   778A 25                 3135 	.db #0x25	; 37
   778B 30                 3136 	.db #0x30	; 48	'0'
   778C 30                 3137 	.db #0x30	; 48	'0'
   778D 1A                 3138 	.db #0x1A	; 26
   778E 30                 3139 	.db #0x30	; 48	'0'
   778F 64                 3140 	.db #0x64	; 100	'd'
   7790 30                 3141 	.db #0x30	; 48	'0'
   7791 30                 3142 	.db #0x30	; 48	'0'
   7792 CC                 3143 	.db #0xCC	; 204
   7793 30                 3144 	.db #0x30	; 48	'0'
   7794 25                 3145 	.db #0x25	; 37
   7795 30                 3146 	.db #0x30	; 48	'0'
   7796 30                 3147 	.db #0x30	; 48	'0'
   7797 1A                 3148 	.db #0x1A	; 26
   7798 30                 3149 	.db #0x30	; 48	'0'
   7799 30                 3150 	.db #0x30	; 48	'0'
   779A 30                 3151 	.db #0x30	; 48	'0'
   779B 30                 3152 	.db #0x30	; 48	'0'
   779C 30                 3153 	.db #0x30	; 48	'0'
   779D 30                 3154 	.db #0x30	; 48	'0'
   779E 25                 3155 	.db #0x25	; 37
   779F 30                 3156 	.db #0x30	; 48	'0'
   77A0 30                 3157 	.db #0x30	; 48	'0'
   77A1 1A                 3158 	.db #0x1A	; 26
   77A2 30                 3159 	.db #0x30	; 48	'0'
   77A3 30                 3160 	.db #0x30	; 48	'0'
   77A4 30                 3161 	.db #0x30	; 48	'0'
   77A5 30                 3162 	.db #0x30	; 48	'0'
   77A6 30                 3163 	.db #0x30	; 48	'0'
   77A7 30                 3164 	.db #0x30	; 48	'0'
   77A8 25                 3165 	.db #0x25	; 37
   77A9 30                 3166 	.db #0x30	; 48	'0'
   77AA 30                 3167 	.db #0x30	; 48	'0'
   77AB 1A                 3168 	.db #0x1A	; 26
   77AC 30                 3169 	.db #0x30	; 48	'0'
   77AD 30                 3170 	.db #0x30	; 48	'0'
   77AE 30                 3171 	.db #0x30	; 48	'0'
   77AF 30                 3172 	.db #0x30	; 48	'0'
   77B0 30                 3173 	.db #0x30	; 48	'0'
   77B1 30                 3174 	.db #0x30	; 48	'0'
   77B2 25                 3175 	.db #0x25	; 37
   77B3 30                 3176 	.db #0x30	; 48	'0'
   77B4 30                 3177 	.db #0x30	; 48	'0'
   77B5 1A                 3178 	.db #0x1A	; 26
   77B6 30                 3179 	.db #0x30	; 48	'0'
   77B7 30                 3180 	.db #0x30	; 48	'0'
   77B8 30                 3181 	.db #0x30	; 48	'0'
   77B9 30                 3182 	.db #0x30	; 48	'0'
   77BA 30                 3183 	.db #0x30	; 48	'0'
   77BB 30                 3184 	.db #0x30	; 48	'0'
   77BC 25                 3185 	.db #0x25	; 37
   77BD 30                 3186 	.db #0x30	; 48	'0'
   77BE 30                 3187 	.db #0x30	; 48	'0'
   77BF 1A                 3188 	.db #0x1A	; 26
   77C0 30                 3189 	.db #0x30	; 48	'0'
   77C1 30                 3190 	.db #0x30	; 48	'0'
   77C2 30                 3191 	.db #0x30	; 48	'0'
   77C3 30                 3192 	.db #0x30	; 48	'0'
   77C4 30                 3193 	.db #0x30	; 48	'0'
   77C5 30                 3194 	.db #0x30	; 48	'0'
   77C6 25                 3195 	.db #0x25	; 37
   77C7 30                 3196 	.db #0x30	; 48	'0'
   77C8 30                 3197 	.db #0x30	; 48	'0'
   77C9 1A                 3198 	.db #0x1A	; 26
   77CA 30                 3199 	.db #0x30	; 48	'0'
   77CB 30                 3200 	.db #0x30	; 48	'0'
   77CC 30                 3201 	.db #0x30	; 48	'0'
   77CD 30                 3202 	.db #0x30	; 48	'0'
   77CE 30                 3203 	.db #0x30	; 48	'0'
   77CF 30                 3204 	.db #0x30	; 48	'0'
   77D0 25                 3205 	.db #0x25	; 37
   77D1 30                 3206 	.db #0x30	; 48	'0'
   77D2 30                 3207 	.db #0x30	; 48	'0'
   77D3 1A                 3208 	.db #0x1A	; 26
   77D4 30                 3209 	.db #0x30	; 48	'0'
   77D5 30                 3210 	.db #0x30	; 48	'0'
   77D6 30                 3211 	.db #0x30	; 48	'0'
   77D7 30                 3212 	.db #0x30	; 48	'0'
   77D8 30                 3213 	.db #0x30	; 48	'0'
   77D9 30                 3214 	.db #0x30	; 48	'0'
   77DA 25                 3215 	.db #0x25	; 37
   77DB 30                 3216 	.db #0x30	; 48	'0'
   77DC 30                 3217 	.db #0x30	; 48	'0'
   77DD 0F                 3218 	.db #0x0F	; 15
   77DE 30                 3219 	.db #0x30	; 48	'0'
   77DF 30                 3220 	.db #0x30	; 48	'0'
   77E0 30                 3221 	.db #0x30	; 48	'0'
   77E1 30                 3222 	.db #0x30	; 48	'0'
   77E2 30                 3223 	.db #0x30	; 48	'0'
   77E3 30                 3224 	.db #0x30	; 48	'0'
   77E4 0F                 3225 	.db #0x0F	; 15
   77E5 30                 3226 	.db #0x30	; 48	'0'
   77E6 30                 3227 	.db #0x30	; 48	'0'
   77E7 25                 3228 	.db #0x25	; 37
   77E8 30                 3229 	.db #0x30	; 48	'0'
   77E9 30                 3230 	.db #0x30	; 48	'0'
   77EA 30                 3231 	.db #0x30	; 48	'0'
   77EB 30                 3232 	.db #0x30	; 48	'0'
   77EC 30                 3233 	.db #0x30	; 48	'0'
   77ED 30                 3234 	.db #0x30	; 48	'0'
   77EE 1A                 3235 	.db #0x1A	; 26
   77EF 30                 3236 	.db #0x30	; 48	'0'
   77F0 30                 3237 	.db #0x30	; 48	'0'
   77F1 25                 3238 	.db #0x25	; 37
   77F2 0F                 3239 	.db #0x0F	; 15
   77F3 0F                 3240 	.db #0x0F	; 15
   77F4 0F                 3241 	.db #0x0F	; 15
   77F5 0F                 3242 	.db #0x0F	; 15
   77F6 0F                 3243 	.db #0x0F	; 15
   77F7 0F                 3244 	.db #0x0F	; 15
   77F8 1A                 3245 	.db #0x1A	; 26
   77F9 30                 3246 	.db #0x30	; 48	'0'
   77FA F0                 3247 	.db #0xF0	; 240
   77FB 30                 3248 	.db #0x30	; 48	'0'
   77FC 30                 3249 	.db #0x30	; 48	'0'
   77FD 30                 3250 	.db #0x30	; 48	'0'
   77FE 30                 3251 	.db #0x30	; 48	'0'
   77FF 30                 3252 	.db #0x30	; 48	'0'
   7800 30                 3253 	.db #0x30	; 48	'0'
   7801 30                 3254 	.db #0x30	; 48	'0'
   7802 30                 3255 	.db #0x30	; 48	'0'
   7803 F0                 3256 	.db #0xF0	; 240
   7804 F0                 3257 	.db #0xF0	; 240
   7805 30                 3258 	.db #0x30	; 48	'0'
   7806 30                 3259 	.db #0x30	; 48	'0'
   7807 30                 3260 	.db #0x30	; 48	'0'
   7808 30                 3261 	.db #0x30	; 48	'0'
   7809 30                 3262 	.db #0x30	; 48	'0'
   780A 30                 3263 	.db #0x30	; 48	'0'
   780B 30                 3264 	.db #0x30	; 48	'0'
   780C 30                 3265 	.db #0x30	; 48	'0'
   780D F0                 3266 	.db #0xF0	; 240
   780E                    3267 _tile_tiles_08:
   780E F0                 3268 	.db #0xF0	; 240
   780F 30                 3269 	.db #0x30	; 48	'0'
   7810 30                 3270 	.db #0x30	; 48	'0'
   7811 30                 3271 	.db #0x30	; 48	'0'
   7812 30                 3272 	.db #0x30	; 48	'0'
   7813 30                 3273 	.db #0x30	; 48	'0'
   7814 30                 3274 	.db #0x30	; 48	'0'
   7815 30                 3275 	.db #0x30	; 48	'0'
   7816 30                 3276 	.db #0x30	; 48	'0'
   7817 F0                 3277 	.db #0xF0	; 240
   7818 F0                 3278 	.db #0xF0	; 240
   7819 30                 3279 	.db #0x30	; 48	'0'
   781A 30                 3280 	.db #0x30	; 48	'0'
   781B 30                 3281 	.db #0x30	; 48	'0'
   781C 30                 3282 	.db #0x30	; 48	'0'
   781D 30                 3283 	.db #0x30	; 48	'0'
   781E 30                 3284 	.db #0x30	; 48	'0'
   781F 30                 3285 	.db #0x30	; 48	'0'
   7820 30                 3286 	.db #0x30	; 48	'0'
   7821 F0                 3287 	.db #0xF0	; 240
   7822 30                 3288 	.db #0x30	; 48	'0'
   7823 25                 3289 	.db #0x25	; 37
   7824 0F                 3290 	.db #0x0F	; 15
   7825 0F                 3291 	.db #0x0F	; 15
   7826 0F                 3292 	.db #0x0F	; 15
   7827 0F                 3293 	.db #0x0F	; 15
   7828 0F                 3294 	.db #0x0F	; 15
   7829 0F                 3295 	.db #0x0F	; 15
   782A 1A                 3296 	.db #0x1A	; 26
   782B 30                 3297 	.db #0x30	; 48	'0'
   782C 30                 3298 	.db #0x30	; 48	'0'
   782D 25                 3299 	.db #0x25	; 37
   782E 30                 3300 	.db #0x30	; 48	'0'
   782F 30                 3301 	.db #0x30	; 48	'0'
   7830 30                 3302 	.db #0x30	; 48	'0'
   7831 30                 3303 	.db #0x30	; 48	'0'
   7832 30                 3304 	.db #0x30	; 48	'0'
   7833 30                 3305 	.db #0x30	; 48	'0'
   7834 1A                 3306 	.db #0x1A	; 26
   7835 30                 3307 	.db #0x30	; 48	'0'
   7836 30                 3308 	.db #0x30	; 48	'0'
   7837 0F                 3309 	.db #0x0F	; 15
   7838 30                 3310 	.db #0x30	; 48	'0'
   7839 30                 3311 	.db #0x30	; 48	'0'
   783A 30                 3312 	.db #0x30	; 48	'0'
   783B 30                 3313 	.db #0x30	; 48	'0'
   783C 30                 3314 	.db #0x30	; 48	'0'
   783D 30                 3315 	.db #0x30	; 48	'0'
   783E 0F                 3316 	.db #0x0F	; 15
   783F 30                 3317 	.db #0x30	; 48	'0'
   7840 30                 3318 	.db #0x30	; 48	'0'
   7841 1A                 3319 	.db #0x1A	; 26
   7842 30                 3320 	.db #0x30	; 48	'0'
   7843 30                 3321 	.db #0x30	; 48	'0'
   7844 30                 3322 	.db #0x30	; 48	'0'
   7845 30                 3323 	.db #0x30	; 48	'0'
   7846 30                 3324 	.db #0x30	; 48	'0'
   7847 30                 3325 	.db #0x30	; 48	'0'
   7848 25                 3326 	.db #0x25	; 37
   7849 30                 3327 	.db #0x30	; 48	'0'
   784A 30                 3328 	.db #0x30	; 48	'0'
   784B 1A                 3329 	.db #0x1A	; 26
   784C 30                 3330 	.db #0x30	; 48	'0'
   784D 30                 3331 	.db #0x30	; 48	'0'
   784E 30                 3332 	.db #0x30	; 48	'0'
   784F 30                 3333 	.db #0x30	; 48	'0'
   7850 30                 3334 	.db #0x30	; 48	'0'
   7851 30                 3335 	.db #0x30	; 48	'0'
   7852 25                 3336 	.db #0x25	; 37
   7853 30                 3337 	.db #0x30	; 48	'0'
   7854 30                 3338 	.db #0x30	; 48	'0'
   7855 1A                 3339 	.db #0x1A	; 26
   7856 30                 3340 	.db #0x30	; 48	'0'
   7857 30                 3341 	.db #0x30	; 48	'0'
   7858 30                 3342 	.db #0x30	; 48	'0'
   7859 30                 3343 	.db #0x30	; 48	'0'
   785A 30                 3344 	.db #0x30	; 48	'0'
   785B 30                 3345 	.db #0x30	; 48	'0'
   785C 25                 3346 	.db #0x25	; 37
   785D 30                 3347 	.db #0x30	; 48	'0'
   785E 30                 3348 	.db #0x30	; 48	'0'
   785F 1A                 3349 	.db #0x1A	; 26
   7860 30                 3350 	.db #0x30	; 48	'0'
   7861 30                 3351 	.db #0x30	; 48	'0'
   7862 30                 3352 	.db #0x30	; 48	'0'
   7863 30                 3353 	.db #0x30	; 48	'0'
   7864 30                 3354 	.db #0x30	; 48	'0'
   7865 30                 3355 	.db #0x30	; 48	'0'
   7866 25                 3356 	.db #0x25	; 37
   7867 30                 3357 	.db #0x30	; 48	'0'
   7868 30                 3358 	.db #0x30	; 48	'0'
   7869 1A                 3359 	.db #0x1A	; 26
   786A 30                 3360 	.db #0x30	; 48	'0'
   786B 30                 3361 	.db #0x30	; 48	'0'
   786C 30                 3362 	.db #0x30	; 48	'0'
   786D 30                 3363 	.db #0x30	; 48	'0'
   786E 30                 3364 	.db #0x30	; 48	'0'
   786F 30                 3365 	.db #0x30	; 48	'0'
   7870 25                 3366 	.db #0x25	; 37
   7871 30                 3367 	.db #0x30	; 48	'0'
   7872 30                 3368 	.db #0x30	; 48	'0'
   7873 1A                 3369 	.db #0x1A	; 26
   7874 30                 3370 	.db #0x30	; 48	'0'
   7875 30                 3371 	.db #0x30	; 48	'0'
   7876 30                 3372 	.db #0x30	; 48	'0'
   7877 30                 3373 	.db #0x30	; 48	'0'
   7878 30                 3374 	.db #0x30	; 48	'0'
   7879 30                 3375 	.db #0x30	; 48	'0'
   787A 25                 3376 	.db #0x25	; 37
   787B 30                 3377 	.db #0x30	; 48	'0'
   787C 30                 3378 	.db #0x30	; 48	'0'
   787D 1A                 3379 	.db #0x1A	; 26
   787E 30                 3380 	.db #0x30	; 48	'0'
   787F 30                 3381 	.db #0x30	; 48	'0'
   7880 30                 3382 	.db #0x30	; 48	'0'
   7881 30                 3383 	.db #0x30	; 48	'0'
   7882 30                 3384 	.db #0x30	; 48	'0'
   7883 30                 3385 	.db #0x30	; 48	'0'
   7884 25                 3386 	.db #0x25	; 37
   7885 30                 3387 	.db #0x30	; 48	'0'
   7886 30                 3388 	.db #0x30	; 48	'0'
   7887 1A                 3389 	.db #0x1A	; 26
   7888 30                 3390 	.db #0x30	; 48	'0'
   7889 30                 3391 	.db #0x30	; 48	'0'
   788A 30                 3392 	.db #0x30	; 48	'0'
   788B 30                 3393 	.db #0x30	; 48	'0'
   788C 30                 3394 	.db #0x30	; 48	'0'
   788D 30                 3395 	.db #0x30	; 48	'0'
   788E 25                 3396 	.db #0x25	; 37
   788F 30                 3397 	.db #0x30	; 48	'0'
   7890 30                 3398 	.db #0x30	; 48	'0'
   7891 1A                 3399 	.db #0x1A	; 26
   7892 30                 3400 	.db #0x30	; 48	'0'
   7893 30                 3401 	.db #0x30	; 48	'0'
   7894 30                 3402 	.db #0x30	; 48	'0'
   7895 30                 3403 	.db #0x30	; 48	'0'
   7896 30                 3404 	.db #0x30	; 48	'0'
   7897 30                 3405 	.db #0x30	; 48	'0'
   7898 25                 3406 	.db #0x25	; 37
   7899 30                 3407 	.db #0x30	; 48	'0'
   789A 30                 3408 	.db #0x30	; 48	'0'
   789B 1A                 3409 	.db #0x1A	; 26
   789C 30                 3410 	.db #0x30	; 48	'0'
   789D CC                 3411 	.db #0xCC	; 204
   789E 30                 3412 	.db #0x30	; 48	'0'
   789F 30                 3413 	.db #0x30	; 48	'0'
   78A0 64                 3414 	.db #0x64	; 100	'd'
   78A1 98                 3415 	.db #0x98	; 152
   78A2 25                 3416 	.db #0x25	; 37
   78A3 30                 3417 	.db #0x30	; 48	'0'
   78A4 30                 3418 	.db #0x30	; 48	'0'
   78A5 1A                 3419 	.db #0x1A	; 26
   78A6 64                 3420 	.db #0x64	; 100	'd'
   78A7 30                 3421 	.db #0x30	; 48	'0'
   78A8 98                 3422 	.db #0x98	; 152
   78A9 30                 3423 	.db #0x30	; 48	'0'
   78AA 98                 3424 	.db #0x98	; 152
   78AB 30                 3425 	.db #0x30	; 48	'0'
   78AC 25                 3426 	.db #0x25	; 37
   78AD 30                 3427 	.db #0x30	; 48	'0'
   78AE 30                 3428 	.db #0x30	; 48	'0'
   78AF 1A                 3429 	.db #0x1A	; 26
   78B0 64                 3430 	.db #0x64	; 100	'd'
   78B1 30                 3431 	.db #0x30	; 48	'0'
   78B2 98                 3432 	.db #0x98	; 152
   78B3 64                 3433 	.db #0x64	; 100	'd'
   78B4 30                 3434 	.db #0x30	; 48	'0'
   78B5 30                 3435 	.db #0x30	; 48	'0'
   78B6 25                 3436 	.db #0x25	; 37
   78B7 30                 3437 	.db #0x30	; 48	'0'
   78B8 30                 3438 	.db #0x30	; 48	'0'
   78B9 1A                 3439 	.db #0x1A	; 26
   78BA 64                 3440 	.db #0x64	; 100	'd'
   78BB 30                 3441 	.db #0x30	; 48	'0'
   78BC 98                 3442 	.db #0x98	; 152
   78BD 64                 3443 	.db #0x64	; 100	'd'
   78BE 30                 3444 	.db #0x30	; 48	'0'
   78BF 30                 3445 	.db #0x30	; 48	'0'
   78C0 25                 3446 	.db #0x25	; 37
   78C1 30                 3447 	.db #0x30	; 48	'0'
   78C2 30                 3448 	.db #0x30	; 48	'0'
   78C3 1A                 3449 	.db #0x1A	; 26
   78C4 64                 3450 	.db #0x64	; 100	'd'
   78C5 30                 3451 	.db #0x30	; 48	'0'
   78C6 98                 3452 	.db #0x98	; 152
   78C7 64                 3453 	.db #0x64	; 100	'd'
   78C8 30                 3454 	.db #0x30	; 48	'0'
   78C9 30                 3455 	.db #0x30	; 48	'0'
   78CA 25                 3456 	.db #0x25	; 37
   78CB 30                 3457 	.db #0x30	; 48	'0'
   78CC 30                 3458 	.db #0x30	; 48	'0'
   78CD 1A                 3459 	.db #0x1A	; 26
   78CE 64                 3460 	.db #0x64	; 100	'd'
   78CF 30                 3461 	.db #0x30	; 48	'0'
   78D0 98                 3462 	.db #0x98	; 152
   78D1 64                 3463 	.db #0x64	; 100	'd'
   78D2 64                 3464 	.db #0x64	; 100	'd'
   78D3 30                 3465 	.db #0x30	; 48	'0'
   78D4 25                 3466 	.db #0x25	; 37
   78D5 30                 3467 	.db #0x30	; 48	'0'
   78D6 30                 3468 	.db #0x30	; 48	'0'
   78D7 1A                 3469 	.db #0x1A	; 26
   78D8 64                 3470 	.db #0x64	; 100	'd'
   78D9 30                 3471 	.db #0x30	; 48	'0'
   78DA 98                 3472 	.db #0x98	; 152
   78DB 64                 3473 	.db #0x64	; 100	'd'
   78DC 98                 3474 	.db #0x98	; 152
   78DD 98                 3475 	.db #0x98	; 152
   78DE 25                 3476 	.db #0x25	; 37
   78DF 30                 3477 	.db #0x30	; 48	'0'
   78E0 30                 3478 	.db #0x30	; 48	'0'
   78E1 1A                 3479 	.db #0x1A	; 26
   78E2 64                 3480 	.db #0x64	; 100	'd'
   78E3 64                 3481 	.db #0x64	; 100	'd'
   78E4 98                 3482 	.db #0x98	; 152
   78E5 64                 3483 	.db #0x64	; 100	'd'
   78E6 30                 3484 	.db #0x30	; 48	'0'
   78E7 98                 3485 	.db #0x98	; 152
   78E8 25                 3486 	.db #0x25	; 37
   78E9 30                 3487 	.db #0x30	; 48	'0'
   78EA 30                 3488 	.db #0x30	; 48	'0'
   78EB 1A                 3489 	.db #0x1A	; 26
   78EC 30                 3490 	.db #0x30	; 48	'0'
   78ED 98                 3491 	.db #0x98	; 152
   78EE 98                 3492 	.db #0x98	; 152
   78EF 64                 3493 	.db #0x64	; 100	'd'
   78F0 30                 3494 	.db #0x30	; 48	'0'
   78F1 98                 3495 	.db #0x98	; 152
   78F2 25                 3496 	.db #0x25	; 37
   78F3 30                 3497 	.db #0x30	; 48	'0'
   78F4 30                 3498 	.db #0x30	; 48	'0'
   78F5 1A                 3499 	.db #0x1A	; 26
   78F6 30                 3500 	.db #0x30	; 48	'0'
   78F7 30                 3501 	.db #0x30	; 48	'0'
   78F8 98                 3502 	.db #0x98	; 152
   78F9 64                 3503 	.db #0x64	; 100	'd'
   78FA 30                 3504 	.db #0x30	; 48	'0'
   78FB 98                 3505 	.db #0x98	; 152
   78FC 25                 3506 	.db #0x25	; 37
   78FD 30                 3507 	.db #0x30	; 48	'0'
   78FE 30                 3508 	.db #0x30	; 48	'0'
   78FF 1A                 3509 	.db #0x1A	; 26
   7900 30                 3510 	.db #0x30	; 48	'0'
   7901 30                 3511 	.db #0x30	; 48	'0'
   7902 98                 3512 	.db #0x98	; 152
   7903 64                 3513 	.db #0x64	; 100	'd'
   7904 30                 3514 	.db #0x30	; 48	'0'
   7905 98                 3515 	.db #0x98	; 152
   7906 25                 3516 	.db #0x25	; 37
   7907 30                 3517 	.db #0x30	; 48	'0'
   7908 30                 3518 	.db #0x30	; 48	'0'
   7909 1A                 3519 	.db #0x1A	; 26
   790A 30                 3520 	.db #0x30	; 48	'0'
   790B 64                 3521 	.db #0x64	; 100	'd'
   790C 30                 3522 	.db #0x30	; 48	'0'
   790D 64                 3523 	.db #0x64	; 100	'd'
   790E 30                 3524 	.db #0x30	; 48	'0'
   790F 98                 3525 	.db #0x98	; 152
   7910 25                 3526 	.db #0x25	; 37
   7911 30                 3527 	.db #0x30	; 48	'0'
   7912 30                 3528 	.db #0x30	; 48	'0'
   7913 1A                 3529 	.db #0x1A	; 26
   7914 64                 3530 	.db #0x64	; 100	'd'
   7915 64                 3531 	.db #0x64	; 100	'd'
   7916 30                 3532 	.db #0x30	; 48	'0'
   7917 30                 3533 	.db #0x30	; 48	'0'
   7918 CC                 3534 	.db #0xCC	; 204
   7919 30                 3535 	.db #0x30	; 48	'0'
   791A 25                 3536 	.db #0x25	; 37
   791B 30                 3537 	.db #0x30	; 48	'0'
   791C 30                 3538 	.db #0x30	; 48	'0'
   791D 1A                 3539 	.db #0x1A	; 26
   791E 30                 3540 	.db #0x30	; 48	'0'
   791F 98                 3541 	.db #0x98	; 152
   7920 30                 3542 	.db #0x30	; 48	'0'
   7921 30                 3543 	.db #0x30	; 48	'0'
   7922 CC                 3544 	.db #0xCC	; 204
   7923 30                 3545 	.db #0x30	; 48	'0'
   7924 25                 3546 	.db #0x25	; 37
   7925 30                 3547 	.db #0x30	; 48	'0'
   7926 30                 3548 	.db #0x30	; 48	'0'
   7927 1A                 3549 	.db #0x1A	; 26
   7928 30                 3550 	.db #0x30	; 48	'0'
   7929 30                 3551 	.db #0x30	; 48	'0'
   792A 30                 3552 	.db #0x30	; 48	'0'
   792B 30                 3553 	.db #0x30	; 48	'0'
   792C 30                 3554 	.db #0x30	; 48	'0'
   792D 30                 3555 	.db #0x30	; 48	'0'
   792E 25                 3556 	.db #0x25	; 37
   792F 30                 3557 	.db #0x30	; 48	'0'
   7930 30                 3558 	.db #0x30	; 48	'0'
   7931 1A                 3559 	.db #0x1A	; 26
   7932 30                 3560 	.db #0x30	; 48	'0'
   7933 30                 3561 	.db #0x30	; 48	'0'
   7934 30                 3562 	.db #0x30	; 48	'0'
   7935 30                 3563 	.db #0x30	; 48	'0'
   7936 30                 3564 	.db #0x30	; 48	'0'
   7937 30                 3565 	.db #0x30	; 48	'0'
   7938 25                 3566 	.db #0x25	; 37
   7939 30                 3567 	.db #0x30	; 48	'0'
   793A 30                 3568 	.db #0x30	; 48	'0'
   793B 1A                 3569 	.db #0x1A	; 26
   793C 30                 3570 	.db #0x30	; 48	'0'
   793D 30                 3571 	.db #0x30	; 48	'0'
   793E 30                 3572 	.db #0x30	; 48	'0'
   793F 30                 3573 	.db #0x30	; 48	'0'
   7940 30                 3574 	.db #0x30	; 48	'0'
   7941 30                 3575 	.db #0x30	; 48	'0'
   7942 25                 3576 	.db #0x25	; 37
   7943 30                 3577 	.db #0x30	; 48	'0'
   7944 30                 3578 	.db #0x30	; 48	'0'
   7945 1A                 3579 	.db #0x1A	; 26
   7946 30                 3580 	.db #0x30	; 48	'0'
   7947 30                 3581 	.db #0x30	; 48	'0'
   7948 30                 3582 	.db #0x30	; 48	'0'
   7949 30                 3583 	.db #0x30	; 48	'0'
   794A 30                 3584 	.db #0x30	; 48	'0'
   794B 30                 3585 	.db #0x30	; 48	'0'
   794C 25                 3586 	.db #0x25	; 37
   794D 30                 3587 	.db #0x30	; 48	'0'
   794E 30                 3588 	.db #0x30	; 48	'0'
   794F 1A                 3589 	.db #0x1A	; 26
   7950 30                 3590 	.db #0x30	; 48	'0'
   7951 30                 3591 	.db #0x30	; 48	'0'
   7952 30                 3592 	.db #0x30	; 48	'0'
   7953 30                 3593 	.db #0x30	; 48	'0'
   7954 30                 3594 	.db #0x30	; 48	'0'
   7955 30                 3595 	.db #0x30	; 48	'0'
   7956 25                 3596 	.db #0x25	; 37
   7957 30                 3597 	.db #0x30	; 48	'0'
   7958 30                 3598 	.db #0x30	; 48	'0'
   7959 1A                 3599 	.db #0x1A	; 26
   795A 30                 3600 	.db #0x30	; 48	'0'
   795B 30                 3601 	.db #0x30	; 48	'0'
   795C 30                 3602 	.db #0x30	; 48	'0'
   795D 30                 3603 	.db #0x30	; 48	'0'
   795E 30                 3604 	.db #0x30	; 48	'0'
   795F 30                 3605 	.db #0x30	; 48	'0'
   7960 25                 3606 	.db #0x25	; 37
   7961 30                 3607 	.db #0x30	; 48	'0'
   7962 30                 3608 	.db #0x30	; 48	'0'
   7963 1A                 3609 	.db #0x1A	; 26
   7964 30                 3610 	.db #0x30	; 48	'0'
   7965 30                 3611 	.db #0x30	; 48	'0'
   7966 30                 3612 	.db #0x30	; 48	'0'
   7967 30                 3613 	.db #0x30	; 48	'0'
   7968 30                 3614 	.db #0x30	; 48	'0'
   7969 30                 3615 	.db #0x30	; 48	'0'
   796A 25                 3616 	.db #0x25	; 37
   796B 30                 3617 	.db #0x30	; 48	'0'
   796C 30                 3618 	.db #0x30	; 48	'0'
   796D 0F                 3619 	.db #0x0F	; 15
   796E 30                 3620 	.db #0x30	; 48	'0'
   796F 30                 3621 	.db #0x30	; 48	'0'
   7970 30                 3622 	.db #0x30	; 48	'0'
   7971 30                 3623 	.db #0x30	; 48	'0'
   7972 30                 3624 	.db #0x30	; 48	'0'
   7973 30                 3625 	.db #0x30	; 48	'0'
   7974 0F                 3626 	.db #0x0F	; 15
   7975 30                 3627 	.db #0x30	; 48	'0'
   7976 30                 3628 	.db #0x30	; 48	'0'
   7977 25                 3629 	.db #0x25	; 37
   7978 30                 3630 	.db #0x30	; 48	'0'
   7979 30                 3631 	.db #0x30	; 48	'0'
   797A 30                 3632 	.db #0x30	; 48	'0'
   797B 30                 3633 	.db #0x30	; 48	'0'
   797C 30                 3634 	.db #0x30	; 48	'0'
   797D 30                 3635 	.db #0x30	; 48	'0'
   797E 1A                 3636 	.db #0x1A	; 26
   797F 30                 3637 	.db #0x30	; 48	'0'
   7980 30                 3638 	.db #0x30	; 48	'0'
   7981 25                 3639 	.db #0x25	; 37
   7982 0F                 3640 	.db #0x0F	; 15
   7983 0F                 3641 	.db #0x0F	; 15
   7984 0F                 3642 	.db #0x0F	; 15
   7985 0F                 3643 	.db #0x0F	; 15
   7986 0F                 3644 	.db #0x0F	; 15
   7987 0F                 3645 	.db #0x0F	; 15
   7988 1A                 3646 	.db #0x1A	; 26
   7989 30                 3647 	.db #0x30	; 48	'0'
   798A F0                 3648 	.db #0xF0	; 240
   798B 30                 3649 	.db #0x30	; 48	'0'
   798C 30                 3650 	.db #0x30	; 48	'0'
   798D 30                 3651 	.db #0x30	; 48	'0'
   798E 30                 3652 	.db #0x30	; 48	'0'
   798F 30                 3653 	.db #0x30	; 48	'0'
   7990 30                 3654 	.db #0x30	; 48	'0'
   7991 30                 3655 	.db #0x30	; 48	'0'
   7992 30                 3656 	.db #0x30	; 48	'0'
   7993 F0                 3657 	.db #0xF0	; 240
   7994 F0                 3658 	.db #0xF0	; 240
   7995 30                 3659 	.db #0x30	; 48	'0'
   7996 30                 3660 	.db #0x30	; 48	'0'
   7997 30                 3661 	.db #0x30	; 48	'0'
   7998 30                 3662 	.db #0x30	; 48	'0'
   7999 30                 3663 	.db #0x30	; 48	'0'
   799A 30                 3664 	.db #0x30	; 48	'0'
   799B 30                 3665 	.db #0x30	; 48	'0'
   799C 30                 3666 	.db #0x30	; 48	'0'
   799D F0                 3667 	.db #0xF0	; 240
   799E                    3668 _tile_tiles_09:
   799E F0                 3669 	.db #0xF0	; 240
   799F 30                 3670 	.db #0x30	; 48	'0'
   79A0 30                 3671 	.db #0x30	; 48	'0'
   79A1 30                 3672 	.db #0x30	; 48	'0'
   79A2 30                 3673 	.db #0x30	; 48	'0'
   79A3 30                 3674 	.db #0x30	; 48	'0'
   79A4 30                 3675 	.db #0x30	; 48	'0'
   79A5 30                 3676 	.db #0x30	; 48	'0'
   79A6 30                 3677 	.db #0x30	; 48	'0'
   79A7 F0                 3678 	.db #0xF0	; 240
   79A8 F0                 3679 	.db #0xF0	; 240
   79A9 30                 3680 	.db #0x30	; 48	'0'
   79AA 30                 3681 	.db #0x30	; 48	'0'
   79AB 30                 3682 	.db #0x30	; 48	'0'
   79AC 30                 3683 	.db #0x30	; 48	'0'
   79AD 30                 3684 	.db #0x30	; 48	'0'
   79AE 30                 3685 	.db #0x30	; 48	'0'
   79AF 30                 3686 	.db #0x30	; 48	'0'
   79B0 30                 3687 	.db #0x30	; 48	'0'
   79B1 F0                 3688 	.db #0xF0	; 240
   79B2 30                 3689 	.db #0x30	; 48	'0'
   79B3 25                 3690 	.db #0x25	; 37
   79B4 0F                 3691 	.db #0x0F	; 15
   79B5 0F                 3692 	.db #0x0F	; 15
   79B6 0F                 3693 	.db #0x0F	; 15
   79B7 0F                 3694 	.db #0x0F	; 15
   79B8 0F                 3695 	.db #0x0F	; 15
   79B9 0F                 3696 	.db #0x0F	; 15
   79BA 1A                 3697 	.db #0x1A	; 26
   79BB 30                 3698 	.db #0x30	; 48	'0'
   79BC 30                 3699 	.db #0x30	; 48	'0'
   79BD 25                 3700 	.db #0x25	; 37
   79BE 30                 3701 	.db #0x30	; 48	'0'
   79BF 30                 3702 	.db #0x30	; 48	'0'
   79C0 30                 3703 	.db #0x30	; 48	'0'
   79C1 30                 3704 	.db #0x30	; 48	'0'
   79C2 30                 3705 	.db #0x30	; 48	'0'
   79C3 30                 3706 	.db #0x30	; 48	'0'
   79C4 1A                 3707 	.db #0x1A	; 26
   79C5 30                 3708 	.db #0x30	; 48	'0'
   79C6 30                 3709 	.db #0x30	; 48	'0'
   79C7 0F                 3710 	.db #0x0F	; 15
   79C8 30                 3711 	.db #0x30	; 48	'0'
   79C9 30                 3712 	.db #0x30	; 48	'0'
   79CA 30                 3713 	.db #0x30	; 48	'0'
   79CB 30                 3714 	.db #0x30	; 48	'0'
   79CC 30                 3715 	.db #0x30	; 48	'0'
   79CD 30                 3716 	.db #0x30	; 48	'0'
   79CE 0F                 3717 	.db #0x0F	; 15
   79CF 30                 3718 	.db #0x30	; 48	'0'
   79D0 30                 3719 	.db #0x30	; 48	'0'
   79D1 1A                 3720 	.db #0x1A	; 26
   79D2 30                 3721 	.db #0x30	; 48	'0'
   79D3 30                 3722 	.db #0x30	; 48	'0'
   79D4 30                 3723 	.db #0x30	; 48	'0'
   79D5 30                 3724 	.db #0x30	; 48	'0'
   79D6 30                 3725 	.db #0x30	; 48	'0'
   79D7 30                 3726 	.db #0x30	; 48	'0'
   79D8 25                 3727 	.db #0x25	; 37
   79D9 30                 3728 	.db #0x30	; 48	'0'
   79DA 30                 3729 	.db #0x30	; 48	'0'
   79DB 1A                 3730 	.db #0x1A	; 26
   79DC 30                 3731 	.db #0x30	; 48	'0'
   79DD 30                 3732 	.db #0x30	; 48	'0'
   79DE 30                 3733 	.db #0x30	; 48	'0'
   79DF 30                 3734 	.db #0x30	; 48	'0'
   79E0 30                 3735 	.db #0x30	; 48	'0'
   79E1 30                 3736 	.db #0x30	; 48	'0'
   79E2 25                 3737 	.db #0x25	; 37
   79E3 30                 3738 	.db #0x30	; 48	'0'
   79E4 30                 3739 	.db #0x30	; 48	'0'
   79E5 1A                 3740 	.db #0x1A	; 26
   79E6 30                 3741 	.db #0x30	; 48	'0'
   79E7 30                 3742 	.db #0x30	; 48	'0'
   79E8 30                 3743 	.db #0x30	; 48	'0'
   79E9 30                 3744 	.db #0x30	; 48	'0'
   79EA 30                 3745 	.db #0x30	; 48	'0'
   79EB 30                 3746 	.db #0x30	; 48	'0'
   79EC 25                 3747 	.db #0x25	; 37
   79ED 30                 3748 	.db #0x30	; 48	'0'
   79EE 30                 3749 	.db #0x30	; 48	'0'
   79EF 1A                 3750 	.db #0x1A	; 26
   79F0 30                 3751 	.db #0x30	; 48	'0'
   79F1 30                 3752 	.db #0x30	; 48	'0'
   79F2 30                 3753 	.db #0x30	; 48	'0'
   79F3 30                 3754 	.db #0x30	; 48	'0'
   79F4 30                 3755 	.db #0x30	; 48	'0'
   79F5 30                 3756 	.db #0x30	; 48	'0'
   79F6 25                 3757 	.db #0x25	; 37
   79F7 30                 3758 	.db #0x30	; 48	'0'
   79F8 30                 3759 	.db #0x30	; 48	'0'
   79F9 1A                 3760 	.db #0x1A	; 26
   79FA 30                 3761 	.db #0x30	; 48	'0'
   79FB 30                 3762 	.db #0x30	; 48	'0'
   79FC 30                 3763 	.db #0x30	; 48	'0'
   79FD 30                 3764 	.db #0x30	; 48	'0'
   79FE 30                 3765 	.db #0x30	; 48	'0'
   79FF 30                 3766 	.db #0x30	; 48	'0'
   7A00 25                 3767 	.db #0x25	; 37
   7A01 30                 3768 	.db #0x30	; 48	'0'
   7A02 30                 3769 	.db #0x30	; 48	'0'
   7A03 1A                 3770 	.db #0x1A	; 26
   7A04 30                 3771 	.db #0x30	; 48	'0'
   7A05 30                 3772 	.db #0x30	; 48	'0'
   7A06 30                 3773 	.db #0x30	; 48	'0'
   7A07 30                 3774 	.db #0x30	; 48	'0'
   7A08 30                 3775 	.db #0x30	; 48	'0'
   7A09 30                 3776 	.db #0x30	; 48	'0'
   7A0A 25                 3777 	.db #0x25	; 37
   7A0B 30                 3778 	.db #0x30	; 48	'0'
   7A0C 30                 3779 	.db #0x30	; 48	'0'
   7A0D 1A                 3780 	.db #0x1A	; 26
   7A0E 30                 3781 	.db #0x30	; 48	'0'
   7A0F 30                 3782 	.db #0x30	; 48	'0'
   7A10 30                 3783 	.db #0x30	; 48	'0'
   7A11 30                 3784 	.db #0x30	; 48	'0'
   7A12 30                 3785 	.db #0x30	; 48	'0'
   7A13 30                 3786 	.db #0x30	; 48	'0'
   7A14 25                 3787 	.db #0x25	; 37
   7A15 30                 3788 	.db #0x30	; 48	'0'
   7A16 30                 3789 	.db #0x30	; 48	'0'
   7A17 1A                 3790 	.db #0x1A	; 26
   7A18 30                 3791 	.db #0x30	; 48	'0'
   7A19 30                 3792 	.db #0x30	; 48	'0'
   7A1A 30                 3793 	.db #0x30	; 48	'0'
   7A1B 30                 3794 	.db #0x30	; 48	'0'
   7A1C 30                 3795 	.db #0x30	; 48	'0'
   7A1D 30                 3796 	.db #0x30	; 48	'0'
   7A1E 25                 3797 	.db #0x25	; 37
   7A1F 30                 3798 	.db #0x30	; 48	'0'
   7A20 30                 3799 	.db #0x30	; 48	'0'
   7A21 1A                 3800 	.db #0x1A	; 26
   7A22 30                 3801 	.db #0x30	; 48	'0'
   7A23 30                 3802 	.db #0x30	; 48	'0'
   7A24 30                 3803 	.db #0x30	; 48	'0'
   7A25 30                 3804 	.db #0x30	; 48	'0'
   7A26 30                 3805 	.db #0x30	; 48	'0'
   7A27 30                 3806 	.db #0x30	; 48	'0'
   7A28 25                 3807 	.db #0x25	; 37
   7A29 30                 3808 	.db #0x30	; 48	'0'
   7A2A 30                 3809 	.db #0x30	; 48	'0'
   7A2B 1A                 3810 	.db #0x1A	; 26
   7A2C 30                 3811 	.db #0x30	; 48	'0'
   7A2D 30                 3812 	.db #0x30	; 48	'0'
   7A2E 30                 3813 	.db #0x30	; 48	'0'
   7A2F 30                 3814 	.db #0x30	; 48	'0'
   7A30 30                 3815 	.db #0x30	; 48	'0'
   7A31 30                 3816 	.db #0x30	; 48	'0'
   7A32 25                 3817 	.db #0x25	; 37
   7A33 30                 3818 	.db #0x30	; 48	'0'
   7A34 30                 3819 	.db #0x30	; 48	'0'
   7A35 1A                 3820 	.db #0x1A	; 26
   7A36 64                 3821 	.db #0x64	; 100	'd'
   7A37 30                 3822 	.db #0x30	; 48	'0'
   7A38 64                 3823 	.db #0x64	; 100	'd'
   7A39 98                 3824 	.db #0x98	; 152
   7A3A 30                 3825 	.db #0x30	; 48	'0'
   7A3B 98                 3826 	.db #0x98	; 152
   7A3C 25                 3827 	.db #0x25	; 37
   7A3D 30                 3828 	.db #0x30	; 48	'0'
   7A3E 30                 3829 	.db #0x30	; 48	'0'
   7A3F 1A                 3830 	.db #0x1A	; 26
   7A40 CC                 3831 	.db #0xCC	; 204
   7A41 30                 3832 	.db #0x30	; 48	'0'
   7A42 98                 3833 	.db #0x98	; 152
   7A43 64                 3834 	.db #0x64	; 100	'd'
   7A44 64                 3835 	.db #0x64	; 100	'd'
   7A45 64                 3836 	.db #0x64	; 100	'd'
   7A46 25                 3837 	.db #0x25	; 37
   7A47 30                 3838 	.db #0x30	; 48	'0'
   7A48 30                 3839 	.db #0x30	; 48	'0'
   7A49 1A                 3840 	.db #0x1A	; 26
   7A4A 64                 3841 	.db #0x64	; 100	'd'
   7A4B 30                 3842 	.db #0x30	; 48	'0'
   7A4C 98                 3843 	.db #0x98	; 152
   7A4D 64                 3844 	.db #0x64	; 100	'd'
   7A4E 64                 3845 	.db #0x64	; 100	'd'
   7A4F 64                 3846 	.db #0x64	; 100	'd'
   7A50 25                 3847 	.db #0x25	; 37
   7A51 30                 3848 	.db #0x30	; 48	'0'
   7A52 30                 3849 	.db #0x30	; 48	'0'
   7A53 1A                 3850 	.db #0x1A	; 26
   7A54 64                 3851 	.db #0x64	; 100	'd'
   7A55 30                 3852 	.db #0x30	; 48	'0'
   7A56 98                 3853 	.db #0x98	; 152
   7A57 64                 3854 	.db #0x64	; 100	'd'
   7A58 30                 3855 	.db #0x30	; 48	'0'
   7A59 64                 3856 	.db #0x64	; 100	'd'
   7A5A 25                 3857 	.db #0x25	; 37
   7A5B 30                 3858 	.db #0x30	; 48	'0'
   7A5C 30                 3859 	.db #0x30	; 48	'0'
   7A5D 1A                 3860 	.db #0x1A	; 26
   7A5E 64                 3861 	.db #0x64	; 100	'd'
   7A5F 30                 3862 	.db #0x30	; 48	'0'
   7A60 98                 3863 	.db #0x98	; 152
   7A61 64                 3864 	.db #0x64	; 100	'd'
   7A62 30                 3865 	.db #0x30	; 48	'0'
   7A63 64                 3866 	.db #0x64	; 100	'd'
   7A64 25                 3867 	.db #0x25	; 37
   7A65 30                 3868 	.db #0x30	; 48	'0'
   7A66 30                 3869 	.db #0x30	; 48	'0'
   7A67 1A                 3870 	.db #0x1A	; 26
   7A68 64                 3871 	.db #0x64	; 100	'd'
   7A69 30                 3872 	.db #0x30	; 48	'0'
   7A6A 98                 3873 	.db #0x98	; 152
   7A6B 64                 3874 	.db #0x64	; 100	'd'
   7A6C 30                 3875 	.db #0x30	; 48	'0'
   7A6D 98                 3876 	.db #0x98	; 152
   7A6E 25                 3877 	.db #0x25	; 37
   7A6F 30                 3878 	.db #0x30	; 48	'0'
   7A70 30                 3879 	.db #0x30	; 48	'0'
   7A71 1A                 3880 	.db #0x1A	; 26
   7A72 64                 3881 	.db #0x64	; 100	'd'
   7A73 30                 3882 	.db #0x30	; 48	'0'
   7A74 98                 3883 	.db #0x98	; 152
   7A75 64                 3884 	.db #0x64	; 100	'd'
   7A76 30                 3885 	.db #0x30	; 48	'0'
   7A77 98                 3886 	.db #0x98	; 152
   7A78 25                 3887 	.db #0x25	; 37
   7A79 30                 3888 	.db #0x30	; 48	'0'
   7A7A 30                 3889 	.db #0x30	; 48	'0'
   7A7B 1A                 3890 	.db #0x1A	; 26
   7A7C 64                 3891 	.db #0x64	; 100	'd'
   7A7D 30                 3892 	.db #0x30	; 48	'0'
   7A7E 64                 3893 	.db #0x64	; 100	'd'
   7A7F CC                 3894 	.db #0xCC	; 204
   7A80 30                 3895 	.db #0x30	; 48	'0'
   7A81 98                 3896 	.db #0x98	; 152
   7A82 25                 3897 	.db #0x25	; 37
   7A83 30                 3898 	.db #0x30	; 48	'0'
   7A84 30                 3899 	.db #0x30	; 48	'0'
   7A85 1A                 3900 	.db #0x1A	; 26
   7A86 64                 3901 	.db #0x64	; 100	'd'
   7A87 30                 3902 	.db #0x30	; 48	'0'
   7A88 30                 3903 	.db #0x30	; 48	'0'
   7A89 64                 3904 	.db #0x64	; 100	'd'
   7A8A 64                 3905 	.db #0x64	; 100	'd'
   7A8B 30                 3906 	.db #0x30	; 48	'0'
   7A8C 25                 3907 	.db #0x25	; 37
   7A8D 30                 3908 	.db #0x30	; 48	'0'
   7A8E 30                 3909 	.db #0x30	; 48	'0'
   7A8F 1A                 3910 	.db #0x1A	; 26
   7A90 64                 3911 	.db #0x64	; 100	'd'
   7A91 30                 3912 	.db #0x30	; 48	'0'
   7A92 30                 3913 	.db #0x30	; 48	'0'
   7A93 64                 3914 	.db #0x64	; 100	'd'
   7A94 64                 3915 	.db #0x64	; 100	'd'
   7A95 30                 3916 	.db #0x30	; 48	'0'
   7A96 25                 3917 	.db #0x25	; 37
   7A97 30                 3918 	.db #0x30	; 48	'0'
   7A98 30                 3919 	.db #0x30	; 48	'0'
   7A99 1A                 3920 	.db #0x1A	; 26
   7A9A 64                 3921 	.db #0x64	; 100	'd'
   7A9B 30                 3922 	.db #0x30	; 48	'0'
   7A9C 98                 3923 	.db #0x98	; 152
   7A9D CC                 3924 	.db #0xCC	; 204
   7A9E 64                 3925 	.db #0x64	; 100	'd'
   7A9F 30                 3926 	.db #0x30	; 48	'0'
   7AA0 25                 3927 	.db #0x25	; 37
   7AA1 30                 3928 	.db #0x30	; 48	'0'
   7AA2 30                 3929 	.db #0x30	; 48	'0'
   7AA3 1A                 3930 	.db #0x1A	; 26
   7AA4 CC                 3931 	.db #0xCC	; 204
   7AA5 98                 3932 	.db #0x98	; 152
   7AA6 64                 3933 	.db #0x64	; 100	'd'
   7AA7 98                 3934 	.db #0x98	; 152
   7AA8 64                 3935 	.db #0x64	; 100	'd'
   7AA9 CC                 3936 	.db #0xCC	; 204
   7AAA 25                 3937 	.db #0x25	; 37
   7AAB 30                 3938 	.db #0x30	; 48	'0'
   7AAC 30                 3939 	.db #0x30	; 48	'0'
   7AAD 1A                 3940 	.db #0x1A	; 26
   7AAE 30                 3941 	.db #0x30	; 48	'0'
   7AAF 30                 3942 	.db #0x30	; 48	'0'
   7AB0 30                 3943 	.db #0x30	; 48	'0'
   7AB1 30                 3944 	.db #0x30	; 48	'0'
   7AB2 30                 3945 	.db #0x30	; 48	'0'
   7AB3 30                 3946 	.db #0x30	; 48	'0'
   7AB4 25                 3947 	.db #0x25	; 37
   7AB5 30                 3948 	.db #0x30	; 48	'0'
   7AB6 30                 3949 	.db #0x30	; 48	'0'
   7AB7 1A                 3950 	.db #0x1A	; 26
   7AB8 30                 3951 	.db #0x30	; 48	'0'
   7AB9 30                 3952 	.db #0x30	; 48	'0'
   7ABA 30                 3953 	.db #0x30	; 48	'0'
   7ABB 30                 3954 	.db #0x30	; 48	'0'
   7ABC 30                 3955 	.db #0x30	; 48	'0'
   7ABD 30                 3956 	.db #0x30	; 48	'0'
   7ABE 25                 3957 	.db #0x25	; 37
   7ABF 30                 3958 	.db #0x30	; 48	'0'
   7AC0 30                 3959 	.db #0x30	; 48	'0'
   7AC1 1A                 3960 	.db #0x1A	; 26
   7AC2 30                 3961 	.db #0x30	; 48	'0'
   7AC3 30                 3962 	.db #0x30	; 48	'0'
   7AC4 30                 3963 	.db #0x30	; 48	'0'
   7AC5 30                 3964 	.db #0x30	; 48	'0'
   7AC6 30                 3965 	.db #0x30	; 48	'0'
   7AC7 30                 3966 	.db #0x30	; 48	'0'
   7AC8 25                 3967 	.db #0x25	; 37
   7AC9 30                 3968 	.db #0x30	; 48	'0'
   7ACA 30                 3969 	.db #0x30	; 48	'0'
   7ACB 1A                 3970 	.db #0x1A	; 26
   7ACC 30                 3971 	.db #0x30	; 48	'0'
   7ACD 30                 3972 	.db #0x30	; 48	'0'
   7ACE 30                 3973 	.db #0x30	; 48	'0'
   7ACF 30                 3974 	.db #0x30	; 48	'0'
   7AD0 30                 3975 	.db #0x30	; 48	'0'
   7AD1 30                 3976 	.db #0x30	; 48	'0'
   7AD2 25                 3977 	.db #0x25	; 37
   7AD3 30                 3978 	.db #0x30	; 48	'0'
   7AD4 30                 3979 	.db #0x30	; 48	'0'
   7AD5 1A                 3980 	.db #0x1A	; 26
   7AD6 30                 3981 	.db #0x30	; 48	'0'
   7AD7 30                 3982 	.db #0x30	; 48	'0'
   7AD8 30                 3983 	.db #0x30	; 48	'0'
   7AD9 30                 3984 	.db #0x30	; 48	'0'
   7ADA 30                 3985 	.db #0x30	; 48	'0'
   7ADB 30                 3986 	.db #0x30	; 48	'0'
   7ADC 25                 3987 	.db #0x25	; 37
   7ADD 30                 3988 	.db #0x30	; 48	'0'
   7ADE 30                 3989 	.db #0x30	; 48	'0'
   7ADF 1A                 3990 	.db #0x1A	; 26
   7AE0 30                 3991 	.db #0x30	; 48	'0'
   7AE1 30                 3992 	.db #0x30	; 48	'0'
   7AE2 30                 3993 	.db #0x30	; 48	'0'
   7AE3 30                 3994 	.db #0x30	; 48	'0'
   7AE4 30                 3995 	.db #0x30	; 48	'0'
   7AE5 30                 3996 	.db #0x30	; 48	'0'
   7AE6 25                 3997 	.db #0x25	; 37
   7AE7 30                 3998 	.db #0x30	; 48	'0'
   7AE8 30                 3999 	.db #0x30	; 48	'0'
   7AE9 1A                 4000 	.db #0x1A	; 26
   7AEA 30                 4001 	.db #0x30	; 48	'0'
   7AEB 30                 4002 	.db #0x30	; 48	'0'
   7AEC 30                 4003 	.db #0x30	; 48	'0'
   7AED 30                 4004 	.db #0x30	; 48	'0'
   7AEE 30                 4005 	.db #0x30	; 48	'0'
   7AEF 30                 4006 	.db #0x30	; 48	'0'
   7AF0 25                 4007 	.db #0x25	; 37
   7AF1 30                 4008 	.db #0x30	; 48	'0'
   7AF2 30                 4009 	.db #0x30	; 48	'0'
   7AF3 1A                 4010 	.db #0x1A	; 26
   7AF4 30                 4011 	.db #0x30	; 48	'0'
   7AF5 30                 4012 	.db #0x30	; 48	'0'
   7AF6 30                 4013 	.db #0x30	; 48	'0'
   7AF7 30                 4014 	.db #0x30	; 48	'0'
   7AF8 30                 4015 	.db #0x30	; 48	'0'
   7AF9 30                 4016 	.db #0x30	; 48	'0'
   7AFA 25                 4017 	.db #0x25	; 37
   7AFB 30                 4018 	.db #0x30	; 48	'0'
   7AFC 30                 4019 	.db #0x30	; 48	'0'
   7AFD 0F                 4020 	.db #0x0F	; 15
   7AFE 30                 4021 	.db #0x30	; 48	'0'
   7AFF 30                 4022 	.db #0x30	; 48	'0'
   7B00 30                 4023 	.db #0x30	; 48	'0'
   7B01 30                 4024 	.db #0x30	; 48	'0'
   7B02 30                 4025 	.db #0x30	; 48	'0'
   7B03 30                 4026 	.db #0x30	; 48	'0'
   7B04 0F                 4027 	.db #0x0F	; 15
   7B05 30                 4028 	.db #0x30	; 48	'0'
   7B06 30                 4029 	.db #0x30	; 48	'0'
   7B07 25                 4030 	.db #0x25	; 37
   7B08 30                 4031 	.db #0x30	; 48	'0'
   7B09 30                 4032 	.db #0x30	; 48	'0'
   7B0A 30                 4033 	.db #0x30	; 48	'0'
   7B0B 30                 4034 	.db #0x30	; 48	'0'
   7B0C 30                 4035 	.db #0x30	; 48	'0'
   7B0D 30                 4036 	.db #0x30	; 48	'0'
   7B0E 1A                 4037 	.db #0x1A	; 26
   7B0F 30                 4038 	.db #0x30	; 48	'0'
   7B10 30                 4039 	.db #0x30	; 48	'0'
   7B11 25                 4040 	.db #0x25	; 37
   7B12 0F                 4041 	.db #0x0F	; 15
   7B13 0F                 4042 	.db #0x0F	; 15
   7B14 0F                 4043 	.db #0x0F	; 15
   7B15 0F                 4044 	.db #0x0F	; 15
   7B16 0F                 4045 	.db #0x0F	; 15
   7B17 0F                 4046 	.db #0x0F	; 15
   7B18 1A                 4047 	.db #0x1A	; 26
   7B19 30                 4048 	.db #0x30	; 48	'0'
   7B1A F0                 4049 	.db #0xF0	; 240
   7B1B 30                 4050 	.db #0x30	; 48	'0'
   7B1C 30                 4051 	.db #0x30	; 48	'0'
   7B1D 30                 4052 	.db #0x30	; 48	'0'
   7B1E 30                 4053 	.db #0x30	; 48	'0'
   7B1F 30                 4054 	.db #0x30	; 48	'0'
   7B20 30                 4055 	.db #0x30	; 48	'0'
   7B21 30                 4056 	.db #0x30	; 48	'0'
   7B22 30                 4057 	.db #0x30	; 48	'0'
   7B23 F0                 4058 	.db #0xF0	; 240
   7B24 F0                 4059 	.db #0xF0	; 240
   7B25 30                 4060 	.db #0x30	; 48	'0'
   7B26 30                 4061 	.db #0x30	; 48	'0'
   7B27 30                 4062 	.db #0x30	; 48	'0'
   7B28 30                 4063 	.db #0x30	; 48	'0'
   7B29 30                 4064 	.db #0x30	; 48	'0'
   7B2A 30                 4065 	.db #0x30	; 48	'0'
   7B2B 30                 4066 	.db #0x30	; 48	'0'
   7B2C 30                 4067 	.db #0x30	; 48	'0'
   7B2D F0                 4068 	.db #0xF0	; 240
   7B2E                    4069 _tile_tiles_10:
   7B2E F0                 4070 	.db #0xF0	; 240
   7B2F 30                 4071 	.db #0x30	; 48	'0'
   7B30 30                 4072 	.db #0x30	; 48	'0'
   7B31 30                 4073 	.db #0x30	; 48	'0'
   7B32 30                 4074 	.db #0x30	; 48	'0'
   7B33 30                 4075 	.db #0x30	; 48	'0'
   7B34 30                 4076 	.db #0x30	; 48	'0'
   7B35 30                 4077 	.db #0x30	; 48	'0'
   7B36 30                 4078 	.db #0x30	; 48	'0'
   7B37 F0                 4079 	.db #0xF0	; 240
   7B38 F0                 4080 	.db #0xF0	; 240
   7B39 30                 4081 	.db #0x30	; 48	'0'
   7B3A 30                 4082 	.db #0x30	; 48	'0'
   7B3B 30                 4083 	.db #0x30	; 48	'0'
   7B3C 30                 4084 	.db #0x30	; 48	'0'
   7B3D 30                 4085 	.db #0x30	; 48	'0'
   7B3E 30                 4086 	.db #0x30	; 48	'0'
   7B3F 30                 4087 	.db #0x30	; 48	'0'
   7B40 30                 4088 	.db #0x30	; 48	'0'
   7B41 F0                 4089 	.db #0xF0	; 240
   7B42 30                 4090 	.db #0x30	; 48	'0'
   7B43 25                 4091 	.db #0x25	; 37
   7B44 0F                 4092 	.db #0x0F	; 15
   7B45 0F                 4093 	.db #0x0F	; 15
   7B46 0F                 4094 	.db #0x0F	; 15
   7B47 0F                 4095 	.db #0x0F	; 15
   7B48 0F                 4096 	.db #0x0F	; 15
   7B49 0F                 4097 	.db #0x0F	; 15
   7B4A 1A                 4098 	.db #0x1A	; 26
   7B4B 30                 4099 	.db #0x30	; 48	'0'
   7B4C 30                 4100 	.db #0x30	; 48	'0'
   7B4D 25                 4101 	.db #0x25	; 37
   7B4E 30                 4102 	.db #0x30	; 48	'0'
   7B4F 30                 4103 	.db #0x30	; 48	'0'
   7B50 30                 4104 	.db #0x30	; 48	'0'
   7B51 30                 4105 	.db #0x30	; 48	'0'
   7B52 30                 4106 	.db #0x30	; 48	'0'
   7B53 30                 4107 	.db #0x30	; 48	'0'
   7B54 1A                 4108 	.db #0x1A	; 26
   7B55 30                 4109 	.db #0x30	; 48	'0'
   7B56 30                 4110 	.db #0x30	; 48	'0'
   7B57 0F                 4111 	.db #0x0F	; 15
   7B58 30                 4112 	.db #0x30	; 48	'0'
   7B59 30                 4113 	.db #0x30	; 48	'0'
   7B5A 30                 4114 	.db #0x30	; 48	'0'
   7B5B 30                 4115 	.db #0x30	; 48	'0'
   7B5C 30                 4116 	.db #0x30	; 48	'0'
   7B5D 30                 4117 	.db #0x30	; 48	'0'
   7B5E 0F                 4118 	.db #0x0F	; 15
   7B5F 30                 4119 	.db #0x30	; 48	'0'
   7B60 30                 4120 	.db #0x30	; 48	'0'
   7B61 1A                 4121 	.db #0x1A	; 26
   7B62 30                 4122 	.db #0x30	; 48	'0'
   7B63 30                 4123 	.db #0x30	; 48	'0'
   7B64 30                 4124 	.db #0x30	; 48	'0'
   7B65 30                 4125 	.db #0x30	; 48	'0'
   7B66 30                 4126 	.db #0x30	; 48	'0'
   7B67 30                 4127 	.db #0x30	; 48	'0'
   7B68 25                 4128 	.db #0x25	; 37
   7B69 30                 4129 	.db #0x30	; 48	'0'
   7B6A 30                 4130 	.db #0x30	; 48	'0'
   7B6B 1A                 4131 	.db #0x1A	; 26
   7B6C 30                 4132 	.db #0x30	; 48	'0'
   7B6D 30                 4133 	.db #0x30	; 48	'0'
   7B6E 30                 4134 	.db #0x30	; 48	'0'
   7B6F 30                 4135 	.db #0x30	; 48	'0'
   7B70 30                 4136 	.db #0x30	; 48	'0'
   7B71 30                 4137 	.db #0x30	; 48	'0'
   7B72 25                 4138 	.db #0x25	; 37
   7B73 30                 4139 	.db #0x30	; 48	'0'
   7B74 30                 4140 	.db #0x30	; 48	'0'
   7B75 1A                 4141 	.db #0x1A	; 26
   7B76 30                 4142 	.db #0x30	; 48	'0'
   7B77 30                 4143 	.db #0x30	; 48	'0'
   7B78 30                 4144 	.db #0x30	; 48	'0'
   7B79 30                 4145 	.db #0x30	; 48	'0'
   7B7A 30                 4146 	.db #0x30	; 48	'0'
   7B7B 30                 4147 	.db #0x30	; 48	'0'
   7B7C 25                 4148 	.db #0x25	; 37
   7B7D 30                 4149 	.db #0x30	; 48	'0'
   7B7E 30                 4150 	.db #0x30	; 48	'0'
   7B7F 1A                 4151 	.db #0x1A	; 26
   7B80 30                 4152 	.db #0x30	; 48	'0'
   7B81 30                 4153 	.db #0x30	; 48	'0'
   7B82 30                 4154 	.db #0x30	; 48	'0'
   7B83 30                 4155 	.db #0x30	; 48	'0'
   7B84 30                 4156 	.db #0x30	; 48	'0'
   7B85 30                 4157 	.db #0x30	; 48	'0'
   7B86 25                 4158 	.db #0x25	; 37
   7B87 30                 4159 	.db #0x30	; 48	'0'
   7B88 30                 4160 	.db #0x30	; 48	'0'
   7B89 1A                 4161 	.db #0x1A	; 26
   7B8A 30                 4162 	.db #0x30	; 48	'0'
   7B8B 30                 4163 	.db #0x30	; 48	'0'
   7B8C 30                 4164 	.db #0x30	; 48	'0'
   7B8D 30                 4165 	.db #0x30	; 48	'0'
   7B8E 30                 4166 	.db #0x30	; 48	'0'
   7B8F 30                 4167 	.db #0x30	; 48	'0'
   7B90 25                 4168 	.db #0x25	; 37
   7B91 30                 4169 	.db #0x30	; 48	'0'
   7B92 30                 4170 	.db #0x30	; 48	'0'
   7B93 1A                 4171 	.db #0x1A	; 26
   7B94 30                 4172 	.db #0x30	; 48	'0'
   7B95 30                 4173 	.db #0x30	; 48	'0'
   7B96 30                 4174 	.db #0x30	; 48	'0'
   7B97 30                 4175 	.db #0x30	; 48	'0'
   7B98 30                 4176 	.db #0x30	; 48	'0'
   7B99 30                 4177 	.db #0x30	; 48	'0'
   7B9A 25                 4178 	.db #0x25	; 37
   7B9B 30                 4179 	.db #0x30	; 48	'0'
   7B9C 30                 4180 	.db #0x30	; 48	'0'
   7B9D 1A                 4181 	.db #0x1A	; 26
   7B9E 30                 4182 	.db #0x30	; 48	'0'
   7B9F 30                 4183 	.db #0x30	; 48	'0'
   7BA0 30                 4184 	.db #0x30	; 48	'0'
   7BA1 30                 4185 	.db #0x30	; 48	'0'
   7BA2 30                 4186 	.db #0x30	; 48	'0'
   7BA3 30                 4187 	.db #0x30	; 48	'0'
   7BA4 25                 4188 	.db #0x25	; 37
   7BA5 30                 4189 	.db #0x30	; 48	'0'
   7BA6 30                 4190 	.db #0x30	; 48	'0'
   7BA7 1A                 4191 	.db #0x1A	; 26
   7BA8 30                 4192 	.db #0x30	; 48	'0'
   7BA9 30                 4193 	.db #0x30	; 48	'0'
   7BAA 30                 4194 	.db #0x30	; 48	'0'
   7BAB 30                 4195 	.db #0x30	; 48	'0'
   7BAC 30                 4196 	.db #0x30	; 48	'0'
   7BAD 30                 4197 	.db #0x30	; 48	'0'
   7BAE 25                 4198 	.db #0x25	; 37
   7BAF 30                 4199 	.db #0x30	; 48	'0'
   7BB0 30                 4200 	.db #0x30	; 48	'0'
   7BB1 1A                 4201 	.db #0x1A	; 26
   7BB2 30                 4202 	.db #0x30	; 48	'0'
   7BB3 30                 4203 	.db #0x30	; 48	'0'
   7BB4 30                 4204 	.db #0x30	; 48	'0'
   7BB5 30                 4205 	.db #0x30	; 48	'0'
   7BB6 30                 4206 	.db #0x30	; 48	'0'
   7BB7 30                 4207 	.db #0x30	; 48	'0'
   7BB8 25                 4208 	.db #0x25	; 37
   7BB9 30                 4209 	.db #0x30	; 48	'0'
   7BBA 30                 4210 	.db #0x30	; 48	'0'
   7BBB 1A                 4211 	.db #0x1A	; 26
   7BBC 30                 4212 	.db #0x30	; 48	'0'
   7BBD 30                 4213 	.db #0x30	; 48	'0'
   7BBE 30                 4214 	.db #0x30	; 48	'0'
   7BBF 30                 4215 	.db #0x30	; 48	'0'
   7BC0 30                 4216 	.db #0x30	; 48	'0'
   7BC1 30                 4217 	.db #0x30	; 48	'0'
   7BC2 25                 4218 	.db #0x25	; 37
   7BC3 30                 4219 	.db #0x30	; 48	'0'
   7BC4 30                 4220 	.db #0x30	; 48	'0'
   7BC5 1A                 4221 	.db #0x1A	; 26
   7BC6 CC                 4222 	.db #0xCC	; 204
   7BC7 30                 4223 	.db #0x30	; 48	'0'
   7BC8 64                 4224 	.db #0x64	; 100	'd'
   7BC9 98                 4225 	.db #0x98	; 152
   7BCA 30                 4226 	.db #0x30	; 48	'0'
   7BCB 64                 4227 	.db #0x64	; 100	'd'
   7BCC 25                 4228 	.db #0x25	; 37
   7BCD 30                 4229 	.db #0x30	; 48	'0'
   7BCE 30                 4230 	.db #0x30	; 48	'0'
   7BCF 4E                 4231 	.db #0x4E	; 78	'N'
   7BD0 30                 4232 	.db #0x30	; 48	'0'
   7BD1 98                 4233 	.db #0x98	; 152
   7BD2 98                 4234 	.db #0x98	; 152
   7BD3 64                 4235 	.db #0x64	; 100	'd'
   7BD4 30                 4236 	.db #0x30	; 48	'0'
   7BD5 CC                 4237 	.db #0xCC	; 204
   7BD6 25                 4238 	.db #0x25	; 37
   7BD7 30                 4239 	.db #0x30	; 48	'0'
   7BD8 30                 4240 	.db #0x30	; 48	'0'
   7BD9 4E                 4241 	.db #0x4E	; 78	'N'
   7BDA 30                 4242 	.db #0x30	; 48	'0'
   7BDB 98                 4243 	.db #0x98	; 152
   7BDC 98                 4244 	.db #0x98	; 152
   7BDD 64                 4245 	.db #0x64	; 100	'd'
   7BDE 30                 4246 	.db #0x30	; 48	'0'
   7BDF CC                 4247 	.db #0xCC	; 204
   7BE0 25                 4248 	.db #0x25	; 37
   7BE1 30                 4249 	.db #0x30	; 48	'0'
   7BE2 30                 4250 	.db #0x30	; 48	'0'
   7BE3 1A                 4251 	.db #0x1A	; 26
   7BE4 30                 4252 	.db #0x30	; 48	'0'
   7BE5 98                 4253 	.db #0x98	; 152
   7BE6 98                 4254 	.db #0x98	; 152
   7BE7 64                 4255 	.db #0x64	; 100	'd'
   7BE8 64                 4256 	.db #0x64	; 100	'd'
   7BE9 64                 4257 	.db #0x64	; 100	'd'
   7BEA 25                 4258 	.db #0x25	; 37
   7BEB 30                 4259 	.db #0x30	; 48	'0'
   7BEC 30                 4260 	.db #0x30	; 48	'0'
   7BED 1A                 4261 	.db #0x1A	; 26
   7BEE 30                 4262 	.db #0x30	; 48	'0'
   7BEF 98                 4263 	.db #0x98	; 152
   7BF0 98                 4264 	.db #0x98	; 152
   7BF1 64                 4265 	.db #0x64	; 100	'd'
   7BF2 64                 4266 	.db #0x64	; 100	'd'
   7BF3 64                 4267 	.db #0x64	; 100	'd'
   7BF4 25                 4268 	.db #0x25	; 37
   7BF5 30                 4269 	.db #0x30	; 48	'0'
   7BF6 30                 4270 	.db #0x30	; 48	'0'
   7BF7 1A                 4271 	.db #0x1A	; 26
   7BF8 64                 4272 	.db #0x64	; 100	'd'
   7BF9 30                 4273 	.db #0x30	; 48	'0'
   7BFA 98                 4274 	.db #0x98	; 152
   7BFB 64                 4275 	.db #0x64	; 100	'd'
   7BFC 64                 4276 	.db #0x64	; 100	'd'
   7BFD 64                 4277 	.db #0x64	; 100	'd'
   7BFE 25                 4278 	.db #0x25	; 37
   7BFF 30                 4279 	.db #0x30	; 48	'0'
   7C00 30                 4280 	.db #0x30	; 48	'0'
   7C01 1A                 4281 	.db #0x1A	; 26
   7C02 30                 4282 	.db #0x30	; 48	'0'
   7C03 98                 4283 	.db #0x98	; 152
   7C04 64                 4284 	.db #0x64	; 100	'd'
   7C05 98                 4285 	.db #0x98	; 152
   7C06 64                 4286 	.db #0x64	; 100	'd'
   7C07 64                 4287 	.db #0x64	; 100	'd'
   7C08 25                 4288 	.db #0x25	; 37
   7C09 30                 4289 	.db #0x30	; 48	'0'
   7C0A 30                 4290 	.db #0x30	; 48	'0'
   7C0B 1A                 4291 	.db #0x1A	; 26
   7C0C 30                 4292 	.db #0x30	; 48	'0'
   7C0D 98                 4293 	.db #0x98	; 152
   7C0E 98                 4294 	.db #0x98	; 152
   7C0F 64                 4295 	.db #0x64	; 100	'd'
   7C10 64                 4296 	.db #0x64	; 100	'd'
   7C11 64                 4297 	.db #0x64	; 100	'd'
   7C12 25                 4298 	.db #0x25	; 37
   7C13 30                 4299 	.db #0x30	; 48	'0'
   7C14 30                 4300 	.db #0x30	; 48	'0'
   7C15 1A                 4301 	.db #0x1A	; 26
   7C16 30                 4302 	.db #0x30	; 48	'0'
   7C17 98                 4303 	.db #0x98	; 152
   7C18 98                 4304 	.db #0x98	; 152
   7C19 64                 4305 	.db #0x64	; 100	'd'
   7C1A 64                 4306 	.db #0x64	; 100	'd'
   7C1B CC                 4307 	.db #0xCC	; 204
   7C1C 8D                 4308 	.db #0x8D	; 141
   7C1D 30                 4309 	.db #0x30	; 48	'0'
   7C1E 30                 4310 	.db #0x30	; 48	'0'
   7C1F 4E                 4311 	.db #0x4E	; 78	'N'
   7C20 30                 4312 	.db #0x30	; 48	'0'
   7C21 98                 4313 	.db #0x98	; 152
   7C22 98                 4314 	.db #0x98	; 152
   7C23 64                 4315 	.db #0x64	; 100	'd'
   7C24 30                 4316 	.db #0x30	; 48	'0'
   7C25 64                 4317 	.db #0x64	; 100	'd'
   7C26 25                 4318 	.db #0x25	; 37
   7C27 30                 4319 	.db #0x30	; 48	'0'
   7C28 30                 4320 	.db #0x30	; 48	'0'
   7C29 4E                 4321 	.db #0x4E	; 78	'N'
   7C2A 30                 4322 	.db #0x30	; 48	'0'
   7C2B 98                 4323 	.db #0x98	; 152
   7C2C 98                 4324 	.db #0x98	; 152
   7C2D 64                 4325 	.db #0x64	; 100	'd'
   7C2E 30                 4326 	.db #0x30	; 48	'0'
   7C2F 64                 4327 	.db #0x64	; 100	'd'
   7C30 25                 4328 	.db #0x25	; 37
   7C31 30                 4329 	.db #0x30	; 48	'0'
   7C32 30                 4330 	.db #0x30	; 48	'0'
   7C33 1A                 4331 	.db #0x1A	; 26
   7C34 CC                 4332 	.db #0xCC	; 204
   7C35 30                 4333 	.db #0x30	; 48	'0'
   7C36 64                 4334 	.db #0x64	; 100	'd'
   7C37 98                 4335 	.db #0x98	; 152
   7C38 30                 4336 	.db #0x30	; 48	'0'
   7C39 64                 4337 	.db #0x64	; 100	'd'
   7C3A 25                 4338 	.db #0x25	; 37
   7C3B 30                 4339 	.db #0x30	; 48	'0'
   7C3C 30                 4340 	.db #0x30	; 48	'0'
   7C3D 1A                 4341 	.db #0x1A	; 26
   7C3E 30                 4342 	.db #0x30	; 48	'0'
   7C3F 30                 4343 	.db #0x30	; 48	'0'
   7C40 30                 4344 	.db #0x30	; 48	'0'
   7C41 30                 4345 	.db #0x30	; 48	'0'
   7C42 30                 4346 	.db #0x30	; 48	'0'
   7C43 30                 4347 	.db #0x30	; 48	'0'
   7C44 25                 4348 	.db #0x25	; 37
   7C45 30                 4349 	.db #0x30	; 48	'0'
   7C46 30                 4350 	.db #0x30	; 48	'0'
   7C47 1A                 4351 	.db #0x1A	; 26
   7C48 30                 4352 	.db #0x30	; 48	'0'
   7C49 30                 4353 	.db #0x30	; 48	'0'
   7C4A 30                 4354 	.db #0x30	; 48	'0'
   7C4B 30                 4355 	.db #0x30	; 48	'0'
   7C4C 30                 4356 	.db #0x30	; 48	'0'
   7C4D 30                 4357 	.db #0x30	; 48	'0'
   7C4E 25                 4358 	.db #0x25	; 37
   7C4F 30                 4359 	.db #0x30	; 48	'0'
   7C50 30                 4360 	.db #0x30	; 48	'0'
   7C51 1A                 4361 	.db #0x1A	; 26
   7C52 30                 4362 	.db #0x30	; 48	'0'
   7C53 30                 4363 	.db #0x30	; 48	'0'
   7C54 30                 4364 	.db #0x30	; 48	'0'
   7C55 30                 4365 	.db #0x30	; 48	'0'
   7C56 30                 4366 	.db #0x30	; 48	'0'
   7C57 30                 4367 	.db #0x30	; 48	'0'
   7C58 25                 4368 	.db #0x25	; 37
   7C59 30                 4369 	.db #0x30	; 48	'0'
   7C5A 30                 4370 	.db #0x30	; 48	'0'
   7C5B 1A                 4371 	.db #0x1A	; 26
   7C5C 30                 4372 	.db #0x30	; 48	'0'
   7C5D 30                 4373 	.db #0x30	; 48	'0'
   7C5E 30                 4374 	.db #0x30	; 48	'0'
   7C5F 30                 4375 	.db #0x30	; 48	'0'
   7C60 30                 4376 	.db #0x30	; 48	'0'
   7C61 30                 4377 	.db #0x30	; 48	'0'
   7C62 25                 4378 	.db #0x25	; 37
   7C63 30                 4379 	.db #0x30	; 48	'0'
   7C64 30                 4380 	.db #0x30	; 48	'0'
   7C65 1A                 4381 	.db #0x1A	; 26
   7C66 30                 4382 	.db #0x30	; 48	'0'
   7C67 30                 4383 	.db #0x30	; 48	'0'
   7C68 30                 4384 	.db #0x30	; 48	'0'
   7C69 30                 4385 	.db #0x30	; 48	'0'
   7C6A 30                 4386 	.db #0x30	; 48	'0'
   7C6B 30                 4387 	.db #0x30	; 48	'0'
   7C6C 25                 4388 	.db #0x25	; 37
   7C6D 30                 4389 	.db #0x30	; 48	'0'
   7C6E 30                 4390 	.db #0x30	; 48	'0'
   7C6F 1A                 4391 	.db #0x1A	; 26
   7C70 30                 4392 	.db #0x30	; 48	'0'
   7C71 30                 4393 	.db #0x30	; 48	'0'
   7C72 30                 4394 	.db #0x30	; 48	'0'
   7C73 30                 4395 	.db #0x30	; 48	'0'
   7C74 30                 4396 	.db #0x30	; 48	'0'
   7C75 30                 4397 	.db #0x30	; 48	'0'
   7C76 25                 4398 	.db #0x25	; 37
   7C77 30                 4399 	.db #0x30	; 48	'0'
   7C78 30                 4400 	.db #0x30	; 48	'0'
   7C79 1A                 4401 	.db #0x1A	; 26
   7C7A 30                 4402 	.db #0x30	; 48	'0'
   7C7B 30                 4403 	.db #0x30	; 48	'0'
   7C7C 30                 4404 	.db #0x30	; 48	'0'
   7C7D 30                 4405 	.db #0x30	; 48	'0'
   7C7E 30                 4406 	.db #0x30	; 48	'0'
   7C7F 30                 4407 	.db #0x30	; 48	'0'
   7C80 25                 4408 	.db #0x25	; 37
   7C81 30                 4409 	.db #0x30	; 48	'0'
   7C82 30                 4410 	.db #0x30	; 48	'0'
   7C83 1A                 4411 	.db #0x1A	; 26
   7C84 30                 4412 	.db #0x30	; 48	'0'
   7C85 30                 4413 	.db #0x30	; 48	'0'
   7C86 30                 4414 	.db #0x30	; 48	'0'
   7C87 30                 4415 	.db #0x30	; 48	'0'
   7C88 30                 4416 	.db #0x30	; 48	'0'
   7C89 30                 4417 	.db #0x30	; 48	'0'
   7C8A 25                 4418 	.db #0x25	; 37
   7C8B 30                 4419 	.db #0x30	; 48	'0'
   7C8C 30                 4420 	.db #0x30	; 48	'0'
   7C8D 0F                 4421 	.db #0x0F	; 15
   7C8E 30                 4422 	.db #0x30	; 48	'0'
   7C8F 30                 4423 	.db #0x30	; 48	'0'
   7C90 30                 4424 	.db #0x30	; 48	'0'
   7C91 30                 4425 	.db #0x30	; 48	'0'
   7C92 30                 4426 	.db #0x30	; 48	'0'
   7C93 30                 4427 	.db #0x30	; 48	'0'
   7C94 0F                 4428 	.db #0x0F	; 15
   7C95 30                 4429 	.db #0x30	; 48	'0'
   7C96 30                 4430 	.db #0x30	; 48	'0'
   7C97 25                 4431 	.db #0x25	; 37
   7C98 30                 4432 	.db #0x30	; 48	'0'
   7C99 30                 4433 	.db #0x30	; 48	'0'
   7C9A 30                 4434 	.db #0x30	; 48	'0'
   7C9B 30                 4435 	.db #0x30	; 48	'0'
   7C9C 30                 4436 	.db #0x30	; 48	'0'
   7C9D 30                 4437 	.db #0x30	; 48	'0'
   7C9E 1A                 4438 	.db #0x1A	; 26
   7C9F 30                 4439 	.db #0x30	; 48	'0'
   7CA0 30                 4440 	.db #0x30	; 48	'0'
   7CA1 25                 4441 	.db #0x25	; 37
   7CA2 0F                 4442 	.db #0x0F	; 15
   7CA3 0F                 4443 	.db #0x0F	; 15
   7CA4 0F                 4444 	.db #0x0F	; 15
   7CA5 0F                 4445 	.db #0x0F	; 15
   7CA6 0F                 4446 	.db #0x0F	; 15
   7CA7 0F                 4447 	.db #0x0F	; 15
   7CA8 1A                 4448 	.db #0x1A	; 26
   7CA9 30                 4449 	.db #0x30	; 48	'0'
   7CAA F0                 4450 	.db #0xF0	; 240
   7CAB 30                 4451 	.db #0x30	; 48	'0'
   7CAC 30                 4452 	.db #0x30	; 48	'0'
   7CAD 30                 4453 	.db #0x30	; 48	'0'
   7CAE 30                 4454 	.db #0x30	; 48	'0'
   7CAF 30                 4455 	.db #0x30	; 48	'0'
   7CB0 30                 4456 	.db #0x30	; 48	'0'
   7CB1 30                 4457 	.db #0x30	; 48	'0'
   7CB2 30                 4458 	.db #0x30	; 48	'0'
   7CB3 F0                 4459 	.db #0xF0	; 240
   7CB4 F0                 4460 	.db #0xF0	; 240
   7CB5 30                 4461 	.db #0x30	; 48	'0'
   7CB6 30                 4462 	.db #0x30	; 48	'0'
   7CB7 30                 4463 	.db #0x30	; 48	'0'
   7CB8 30                 4464 	.db #0x30	; 48	'0'
   7CB9 30                 4465 	.db #0x30	; 48	'0'
   7CBA 30                 4466 	.db #0x30	; 48	'0'
   7CBB 30                 4467 	.db #0x30	; 48	'0'
   7CBC 30                 4468 	.db #0x30	; 48	'0'
   7CBD F0                 4469 	.db #0xF0	; 240
   7CBE                    4470 _tile_tiles_11:
   7CBE F0                 4471 	.db #0xF0	; 240
   7CBF 30                 4472 	.db #0x30	; 48	'0'
   7CC0 30                 4473 	.db #0x30	; 48	'0'
   7CC1 30                 4474 	.db #0x30	; 48	'0'
   7CC2 30                 4475 	.db #0x30	; 48	'0'
   7CC3 30                 4476 	.db #0x30	; 48	'0'
   7CC4 30                 4477 	.db #0x30	; 48	'0'
   7CC5 30                 4478 	.db #0x30	; 48	'0'
   7CC6 30                 4479 	.db #0x30	; 48	'0'
   7CC7 F0                 4480 	.db #0xF0	; 240
   7CC8 F0                 4481 	.db #0xF0	; 240
   7CC9 30                 4482 	.db #0x30	; 48	'0'
   7CCA 30                 4483 	.db #0x30	; 48	'0'
   7CCB 30                 4484 	.db #0x30	; 48	'0'
   7CCC 30                 4485 	.db #0x30	; 48	'0'
   7CCD 30                 4486 	.db #0x30	; 48	'0'
   7CCE 30                 4487 	.db #0x30	; 48	'0'
   7CCF 30                 4488 	.db #0x30	; 48	'0'
   7CD0 30                 4489 	.db #0x30	; 48	'0'
   7CD1 F0                 4490 	.db #0xF0	; 240
   7CD2 30                 4491 	.db #0x30	; 48	'0'
   7CD3 25                 4492 	.db #0x25	; 37
   7CD4 0F                 4493 	.db #0x0F	; 15
   7CD5 0F                 4494 	.db #0x0F	; 15
   7CD6 0F                 4495 	.db #0x0F	; 15
   7CD7 0F                 4496 	.db #0x0F	; 15
   7CD8 0F                 4497 	.db #0x0F	; 15
   7CD9 0F                 4498 	.db #0x0F	; 15
   7CDA 1A                 4499 	.db #0x1A	; 26
   7CDB 30                 4500 	.db #0x30	; 48	'0'
   7CDC 30                 4501 	.db #0x30	; 48	'0'
   7CDD 25                 4502 	.db #0x25	; 37
   7CDE 30                 4503 	.db #0x30	; 48	'0'
   7CDF 30                 4504 	.db #0x30	; 48	'0'
   7CE0 30                 4505 	.db #0x30	; 48	'0'
   7CE1 30                 4506 	.db #0x30	; 48	'0'
   7CE2 30                 4507 	.db #0x30	; 48	'0'
   7CE3 30                 4508 	.db #0x30	; 48	'0'
   7CE4 1A                 4509 	.db #0x1A	; 26
   7CE5 30                 4510 	.db #0x30	; 48	'0'
   7CE6 30                 4511 	.db #0x30	; 48	'0'
   7CE7 0F                 4512 	.db #0x0F	; 15
   7CE8 30                 4513 	.db #0x30	; 48	'0'
   7CE9 30                 4514 	.db #0x30	; 48	'0'
   7CEA 30                 4515 	.db #0x30	; 48	'0'
   7CEB 30                 4516 	.db #0x30	; 48	'0'
   7CEC 30                 4517 	.db #0x30	; 48	'0'
   7CED 30                 4518 	.db #0x30	; 48	'0'
   7CEE 0F                 4519 	.db #0x0F	; 15
   7CEF 30                 4520 	.db #0x30	; 48	'0'
   7CF0 30                 4521 	.db #0x30	; 48	'0'
   7CF1 1A                 4522 	.db #0x1A	; 26
   7CF2 30                 4523 	.db #0x30	; 48	'0'
   7CF3 30                 4524 	.db #0x30	; 48	'0'
   7CF4 30                 4525 	.db #0x30	; 48	'0'
   7CF5 30                 4526 	.db #0x30	; 48	'0'
   7CF6 30                 4527 	.db #0x30	; 48	'0'
   7CF7 30                 4528 	.db #0x30	; 48	'0'
   7CF8 25                 4529 	.db #0x25	; 37
   7CF9 30                 4530 	.db #0x30	; 48	'0'
   7CFA 30                 4531 	.db #0x30	; 48	'0'
   7CFB 1A                 4532 	.db #0x1A	; 26
   7CFC 30                 4533 	.db #0x30	; 48	'0'
   7CFD 30                 4534 	.db #0x30	; 48	'0'
   7CFE 30                 4535 	.db #0x30	; 48	'0'
   7CFF 30                 4536 	.db #0x30	; 48	'0'
   7D00 30                 4537 	.db #0x30	; 48	'0'
   7D01 30                 4538 	.db #0x30	; 48	'0'
   7D02 25                 4539 	.db #0x25	; 37
   7D03 30                 4540 	.db #0x30	; 48	'0'
   7D04 30                 4541 	.db #0x30	; 48	'0'
   7D05 1A                 4542 	.db #0x1A	; 26
   7D06 30                 4543 	.db #0x30	; 48	'0'
   7D07 30                 4544 	.db #0x30	; 48	'0'
   7D08 30                 4545 	.db #0x30	; 48	'0'
   7D09 30                 4546 	.db #0x30	; 48	'0'
   7D0A 30                 4547 	.db #0x30	; 48	'0'
   7D0B 30                 4548 	.db #0x30	; 48	'0'
   7D0C 25                 4549 	.db #0x25	; 37
   7D0D 30                 4550 	.db #0x30	; 48	'0'
   7D0E 30                 4551 	.db #0x30	; 48	'0'
   7D0F 1A                 4552 	.db #0x1A	; 26
   7D10 30                 4553 	.db #0x30	; 48	'0'
   7D11 30                 4554 	.db #0x30	; 48	'0'
   7D12 30                 4555 	.db #0x30	; 48	'0'
   7D13 30                 4556 	.db #0x30	; 48	'0'
   7D14 30                 4557 	.db #0x30	; 48	'0'
   7D15 30                 4558 	.db #0x30	; 48	'0'
   7D16 25                 4559 	.db #0x25	; 37
   7D17 30                 4560 	.db #0x30	; 48	'0'
   7D18 30                 4561 	.db #0x30	; 48	'0'
   7D19 1A                 4562 	.db #0x1A	; 26
   7D1A 30                 4563 	.db #0x30	; 48	'0'
   7D1B 30                 4564 	.db #0x30	; 48	'0'
   7D1C 30                 4565 	.db #0x30	; 48	'0'
   7D1D 30                 4566 	.db #0x30	; 48	'0'
   7D1E 30                 4567 	.db #0x30	; 48	'0'
   7D1F 30                 4568 	.db #0x30	; 48	'0'
   7D20 25                 4569 	.db #0x25	; 37
   7D21 30                 4570 	.db #0x30	; 48	'0'
   7D22 30                 4571 	.db #0x30	; 48	'0'
   7D23 1A                 4572 	.db #0x1A	; 26
   7D24 30                 4573 	.db #0x30	; 48	'0'
   7D25 30                 4574 	.db #0x30	; 48	'0'
   7D26 30                 4575 	.db #0x30	; 48	'0'
   7D27 30                 4576 	.db #0x30	; 48	'0'
   7D28 30                 4577 	.db #0x30	; 48	'0'
   7D29 30                 4578 	.db #0x30	; 48	'0'
   7D2A 25                 4579 	.db #0x25	; 37
   7D2B 30                 4580 	.db #0x30	; 48	'0'
   7D2C 30                 4581 	.db #0x30	; 48	'0'
   7D2D 1A                 4582 	.db #0x1A	; 26
   7D2E 30                 4583 	.db #0x30	; 48	'0'
   7D2F 30                 4584 	.db #0x30	; 48	'0'
   7D30 30                 4585 	.db #0x30	; 48	'0'
   7D31 30                 4586 	.db #0x30	; 48	'0'
   7D32 30                 4587 	.db #0x30	; 48	'0'
   7D33 30                 4588 	.db #0x30	; 48	'0'
   7D34 25                 4589 	.db #0x25	; 37
   7D35 30                 4590 	.db #0x30	; 48	'0'
   7D36 30                 4591 	.db #0x30	; 48	'0'
   7D37 1A                 4592 	.db #0x1A	; 26
   7D38 30                 4593 	.db #0x30	; 48	'0'
   7D39 30                 4594 	.db #0x30	; 48	'0'
   7D3A 30                 4595 	.db #0x30	; 48	'0'
   7D3B 30                 4596 	.db #0x30	; 48	'0'
   7D3C 30                 4597 	.db #0x30	; 48	'0'
   7D3D 30                 4598 	.db #0x30	; 48	'0'
   7D3E 25                 4599 	.db #0x25	; 37
   7D3F 30                 4600 	.db #0x30	; 48	'0'
   7D40 30                 4601 	.db #0x30	; 48	'0'
   7D41 1A                 4602 	.db #0x1A	; 26
   7D42 30                 4603 	.db #0x30	; 48	'0'
   7D43 30                 4604 	.db #0x30	; 48	'0'
   7D44 30                 4605 	.db #0x30	; 48	'0'
   7D45 30                 4606 	.db #0x30	; 48	'0'
   7D46 30                 4607 	.db #0x30	; 48	'0'
   7D47 30                 4608 	.db #0x30	; 48	'0'
   7D48 25                 4609 	.db #0x25	; 37
   7D49 30                 4610 	.db #0x30	; 48	'0'
   7D4A 30                 4611 	.db #0x30	; 48	'0'
   7D4B 1A                 4612 	.db #0x1A	; 26
   7D4C 30                 4613 	.db #0x30	; 48	'0'
   7D4D 30                 4614 	.db #0x30	; 48	'0'
   7D4E 30                 4615 	.db #0x30	; 48	'0'
   7D4F 30                 4616 	.db #0x30	; 48	'0'
   7D50 30                 4617 	.db #0x30	; 48	'0'
   7D51 30                 4618 	.db #0x30	; 48	'0'
   7D52 25                 4619 	.db #0x25	; 37
   7D53 30                 4620 	.db #0x30	; 48	'0'
   7D54 30                 4621 	.db #0x30	; 48	'0'
   7D55 4E                 4622 	.db #0x4E	; 78	'N'
   7D56 CC                 4623 	.db #0xCC	; 204
   7D57 30                 4624 	.db #0x30	; 48	'0'
   7D58 64                 4625 	.db #0x64	; 100	'd'
   7D59 98                 4626 	.db #0x98	; 152
   7D5A 30                 4627 	.db #0x30	; 48	'0'
   7D5B 98                 4628 	.db #0x98	; 152
   7D5C 25                 4629 	.db #0x25	; 37
   7D5D 30                 4630 	.db #0x30	; 48	'0'
   7D5E 30                 4631 	.db #0x30	; 48	'0'
   7D5F 1A                 4632 	.db #0x1A	; 26
   7D60 64                 4633 	.db #0x64	; 100	'd'
   7D61 30                 4634 	.db #0x30	; 48	'0'
   7D62 98                 4635 	.db #0x98	; 152
   7D63 98                 4636 	.db #0x98	; 152
   7D64 64                 4637 	.db #0x64	; 100	'd'
   7D65 64                 4638 	.db #0x64	; 100	'd'
   7D66 25                 4639 	.db #0x25	; 37
   7D67 30                 4640 	.db #0x30	; 48	'0'
   7D68 30                 4641 	.db #0x30	; 48	'0'
   7D69 1A                 4642 	.db #0x1A	; 26
   7D6A 64                 4643 	.db #0x64	; 100	'd'
   7D6B 30                 4644 	.db #0x30	; 48	'0'
   7D6C 98                 4645 	.db #0x98	; 152
   7D6D 30                 4646 	.db #0x30	; 48	'0'
   7D6E 64                 4647 	.db #0x64	; 100	'd'
   7D6F 64                 4648 	.db #0x64	; 100	'd'
   7D70 25                 4649 	.db #0x25	; 37
   7D71 30                 4650 	.db #0x30	; 48	'0'
   7D72 30                 4651 	.db #0x30	; 48	'0'
   7D73 1A                 4652 	.db #0x1A	; 26
   7D74 64                 4653 	.db #0x64	; 100	'd'
   7D75 30                 4654 	.db #0x30	; 48	'0'
   7D76 98                 4655 	.db #0x98	; 152
   7D77 30                 4656 	.db #0x30	; 48	'0'
   7D78 64                 4657 	.db #0x64	; 100	'd'
   7D79 64                 4658 	.db #0x64	; 100	'd'
   7D7A 25                 4659 	.db #0x25	; 37
   7D7B 30                 4660 	.db #0x30	; 48	'0'
   7D7C 30                 4661 	.db #0x30	; 48	'0'
   7D7D 1A                 4662 	.db #0x1A	; 26
   7D7E 64                 4663 	.db #0x64	; 100	'd'
   7D7F 30                 4664 	.db #0x30	; 48	'0'
   7D80 98                 4665 	.db #0x98	; 152
   7D81 30                 4666 	.db #0x30	; 48	'0'
   7D82 64                 4667 	.db #0x64	; 100	'd'
   7D83 64                 4668 	.db #0x64	; 100	'd'
   7D84 25                 4669 	.db #0x25	; 37
   7D85 30                 4670 	.db #0x30	; 48	'0'
   7D86 30                 4671 	.db #0x30	; 48	'0'
   7D87 1A                 4672 	.db #0x1A	; 26
   7D88 64                 4673 	.db #0x64	; 100	'd'
   7D89 30                 4674 	.db #0x30	; 48	'0'
   7D8A CC                 4675 	.db #0xCC	; 204
   7D8B 30                 4676 	.db #0x30	; 48	'0'
   7D8C 64                 4677 	.db #0x64	; 100	'd'
   7D8D 64                 4678 	.db #0x64	; 100	'd'
   7D8E 25                 4679 	.db #0x25	; 37
   7D8F 30                 4680 	.db #0x30	; 48	'0'
   7D90 30                 4681 	.db #0x30	; 48	'0'
   7D91 1A                 4682 	.db #0x1A	; 26
   7D92 98                 4683 	.db #0x98	; 152
   7D93 30                 4684 	.db #0x30	; 48	'0'
   7D94 98                 4685 	.db #0x98	; 152
   7D95 98                 4686 	.db #0x98	; 152
   7D96 30                 4687 	.db #0x30	; 48	'0'
   7D97 98                 4688 	.db #0x98	; 152
   7D98 25                 4689 	.db #0x25	; 37
   7D99 30                 4690 	.db #0x30	; 48	'0'
   7D9A 30                 4691 	.db #0x30	; 48	'0'
   7D9B 1A                 4692 	.db #0x1A	; 26
   7D9C 98                 4693 	.db #0x98	; 152
   7D9D 30                 4694 	.db #0x30	; 48	'0'
   7D9E 98                 4695 	.db #0x98	; 152
   7D9F 98                 4696 	.db #0x98	; 152
   7DA0 64                 4697 	.db #0x64	; 100	'd'
   7DA1 64                 4698 	.db #0x64	; 100	'd'
   7DA2 25                 4699 	.db #0x25	; 37
   7DA3 30                 4700 	.db #0x30	; 48	'0'
   7DA4 30                 4701 	.db #0x30	; 48	'0'
   7DA5 1A                 4702 	.db #0x1A	; 26
   7DA6 98                 4703 	.db #0x98	; 152
   7DA7 30                 4704 	.db #0x30	; 48	'0'
   7DA8 98                 4705 	.db #0x98	; 152
   7DA9 98                 4706 	.db #0x98	; 152
   7DAA 64                 4707 	.db #0x64	; 100	'd'
   7DAB 64                 4708 	.db #0x64	; 100	'd'
   7DAC 25                 4709 	.db #0x25	; 37
   7DAD 30                 4710 	.db #0x30	; 48	'0'
   7DAE 30                 4711 	.db #0x30	; 48	'0'
   7DAF 1A                 4712 	.db #0x1A	; 26
   7DB0 98                 4713 	.db #0x98	; 152
   7DB1 30                 4714 	.db #0x30	; 48	'0'
   7DB2 98                 4715 	.db #0x98	; 152
   7DB3 98                 4716 	.db #0x98	; 152
   7DB4 64                 4717 	.db #0x64	; 100	'd'
   7DB5 64                 4718 	.db #0x64	; 100	'd'
   7DB6 25                 4719 	.db #0x25	; 37
   7DB7 30                 4720 	.db #0x30	; 48	'0'
   7DB8 30                 4721 	.db #0x30	; 48	'0'
   7DB9 1A                 4722 	.db #0x1A	; 26
   7DBA 98                 4723 	.db #0x98	; 152
   7DBB 30                 4724 	.db #0x30	; 48	'0'
   7DBC 98                 4725 	.db #0x98	; 152
   7DBD 98                 4726 	.db #0x98	; 152
   7DBE 64                 4727 	.db #0x64	; 100	'd'
   7DBF 64                 4728 	.db #0x64	; 100	'd'
   7DC0 25                 4729 	.db #0x25	; 37
   7DC1 30                 4730 	.db #0x30	; 48	'0'
   7DC2 30                 4731 	.db #0x30	; 48	'0'
   7DC3 1A                 4732 	.db #0x1A	; 26
   7DC4 98                 4733 	.db #0x98	; 152
   7DC5 30                 4734 	.db #0x30	; 48	'0'
   7DC6 64                 4735 	.db #0x64	; 100	'd'
   7DC7 30                 4736 	.db #0x30	; 48	'0'
   7DC8 30                 4737 	.db #0x30	; 48	'0'
   7DC9 98                 4738 	.db #0x98	; 152
   7DCA 25                 4739 	.db #0x25	; 37
   7DCB 30                 4740 	.db #0x30	; 48	'0'
   7DCC 30                 4741 	.db #0x30	; 48	'0'
   7DCD 1A                 4742 	.db #0x1A	; 26
   7DCE 30                 4743 	.db #0x30	; 48	'0'
   7DCF 30                 4744 	.db #0x30	; 48	'0'
   7DD0 30                 4745 	.db #0x30	; 48	'0'
   7DD1 30                 4746 	.db #0x30	; 48	'0'
   7DD2 30                 4747 	.db #0x30	; 48	'0'
   7DD3 30                 4748 	.db #0x30	; 48	'0'
   7DD4 25                 4749 	.db #0x25	; 37
   7DD5 30                 4750 	.db #0x30	; 48	'0'
   7DD6 30                 4751 	.db #0x30	; 48	'0'
   7DD7 1A                 4752 	.db #0x1A	; 26
   7DD8 30                 4753 	.db #0x30	; 48	'0'
   7DD9 30                 4754 	.db #0x30	; 48	'0'
   7DDA 30                 4755 	.db #0x30	; 48	'0'
   7DDB 30                 4756 	.db #0x30	; 48	'0'
   7DDC 30                 4757 	.db #0x30	; 48	'0'
   7DDD 30                 4758 	.db #0x30	; 48	'0'
   7DDE 25                 4759 	.db #0x25	; 37
   7DDF 30                 4760 	.db #0x30	; 48	'0'
   7DE0 30                 4761 	.db #0x30	; 48	'0'
   7DE1 1A                 4762 	.db #0x1A	; 26
   7DE2 30                 4763 	.db #0x30	; 48	'0'
   7DE3 30                 4764 	.db #0x30	; 48	'0'
   7DE4 30                 4765 	.db #0x30	; 48	'0'
   7DE5 30                 4766 	.db #0x30	; 48	'0'
   7DE6 30                 4767 	.db #0x30	; 48	'0'
   7DE7 30                 4768 	.db #0x30	; 48	'0'
   7DE8 25                 4769 	.db #0x25	; 37
   7DE9 30                 4770 	.db #0x30	; 48	'0'
   7DEA 30                 4771 	.db #0x30	; 48	'0'
   7DEB 1A                 4772 	.db #0x1A	; 26
   7DEC 30                 4773 	.db #0x30	; 48	'0'
   7DED 30                 4774 	.db #0x30	; 48	'0'
   7DEE 30                 4775 	.db #0x30	; 48	'0'
   7DEF 30                 4776 	.db #0x30	; 48	'0'
   7DF0 30                 4777 	.db #0x30	; 48	'0'
   7DF1 30                 4778 	.db #0x30	; 48	'0'
   7DF2 25                 4779 	.db #0x25	; 37
   7DF3 30                 4780 	.db #0x30	; 48	'0'
   7DF4 30                 4781 	.db #0x30	; 48	'0'
   7DF5 1A                 4782 	.db #0x1A	; 26
   7DF6 30                 4783 	.db #0x30	; 48	'0'
   7DF7 30                 4784 	.db #0x30	; 48	'0'
   7DF8 30                 4785 	.db #0x30	; 48	'0'
   7DF9 30                 4786 	.db #0x30	; 48	'0'
   7DFA 30                 4787 	.db #0x30	; 48	'0'
   7DFB 30                 4788 	.db #0x30	; 48	'0'
   7DFC 25                 4789 	.db #0x25	; 37
   7DFD 30                 4790 	.db #0x30	; 48	'0'
   7DFE 30                 4791 	.db #0x30	; 48	'0'
   7DFF 1A                 4792 	.db #0x1A	; 26
   7E00 30                 4793 	.db #0x30	; 48	'0'
   7E01 30                 4794 	.db #0x30	; 48	'0'
   7E02 30                 4795 	.db #0x30	; 48	'0'
   7E03 30                 4796 	.db #0x30	; 48	'0'
   7E04 30                 4797 	.db #0x30	; 48	'0'
   7E05 30                 4798 	.db #0x30	; 48	'0'
   7E06 25                 4799 	.db #0x25	; 37
   7E07 30                 4800 	.db #0x30	; 48	'0'
   7E08 30                 4801 	.db #0x30	; 48	'0'
   7E09 1A                 4802 	.db #0x1A	; 26
   7E0A 30                 4803 	.db #0x30	; 48	'0'
   7E0B 30                 4804 	.db #0x30	; 48	'0'
   7E0C 30                 4805 	.db #0x30	; 48	'0'
   7E0D 30                 4806 	.db #0x30	; 48	'0'
   7E0E 30                 4807 	.db #0x30	; 48	'0'
   7E0F 30                 4808 	.db #0x30	; 48	'0'
   7E10 25                 4809 	.db #0x25	; 37
   7E11 30                 4810 	.db #0x30	; 48	'0'
   7E12 30                 4811 	.db #0x30	; 48	'0'
   7E13 1A                 4812 	.db #0x1A	; 26
   7E14 30                 4813 	.db #0x30	; 48	'0'
   7E15 30                 4814 	.db #0x30	; 48	'0'
   7E16 30                 4815 	.db #0x30	; 48	'0'
   7E17 30                 4816 	.db #0x30	; 48	'0'
   7E18 30                 4817 	.db #0x30	; 48	'0'
   7E19 30                 4818 	.db #0x30	; 48	'0'
   7E1A 25                 4819 	.db #0x25	; 37
   7E1B 30                 4820 	.db #0x30	; 48	'0'
   7E1C 30                 4821 	.db #0x30	; 48	'0'
   7E1D 0F                 4822 	.db #0x0F	; 15
   7E1E 30                 4823 	.db #0x30	; 48	'0'
   7E1F 30                 4824 	.db #0x30	; 48	'0'
   7E20 30                 4825 	.db #0x30	; 48	'0'
   7E21 30                 4826 	.db #0x30	; 48	'0'
   7E22 30                 4827 	.db #0x30	; 48	'0'
   7E23 30                 4828 	.db #0x30	; 48	'0'
   7E24 0F                 4829 	.db #0x0F	; 15
   7E25 30                 4830 	.db #0x30	; 48	'0'
   7E26 30                 4831 	.db #0x30	; 48	'0'
   7E27 25                 4832 	.db #0x25	; 37
   7E28 30                 4833 	.db #0x30	; 48	'0'
   7E29 30                 4834 	.db #0x30	; 48	'0'
   7E2A 30                 4835 	.db #0x30	; 48	'0'
   7E2B 30                 4836 	.db #0x30	; 48	'0'
   7E2C 30                 4837 	.db #0x30	; 48	'0'
   7E2D 30                 4838 	.db #0x30	; 48	'0'
   7E2E 1A                 4839 	.db #0x1A	; 26
   7E2F 30                 4840 	.db #0x30	; 48	'0'
   7E30 30                 4841 	.db #0x30	; 48	'0'
   7E31 25                 4842 	.db #0x25	; 37
   7E32 0F                 4843 	.db #0x0F	; 15
   7E33 0F                 4844 	.db #0x0F	; 15
   7E34 0F                 4845 	.db #0x0F	; 15
   7E35 0F                 4846 	.db #0x0F	; 15
   7E36 0F                 4847 	.db #0x0F	; 15
   7E37 0F                 4848 	.db #0x0F	; 15
   7E38 1A                 4849 	.db #0x1A	; 26
   7E39 30                 4850 	.db #0x30	; 48	'0'
   7E3A F0                 4851 	.db #0xF0	; 240
   7E3B 30                 4852 	.db #0x30	; 48	'0'
   7E3C 30                 4853 	.db #0x30	; 48	'0'
   7E3D 30                 4854 	.db #0x30	; 48	'0'
   7E3E 30                 4855 	.db #0x30	; 48	'0'
   7E3F 30                 4856 	.db #0x30	; 48	'0'
   7E40 30                 4857 	.db #0x30	; 48	'0'
   7E41 30                 4858 	.db #0x30	; 48	'0'
   7E42 30                 4859 	.db #0x30	; 48	'0'
   7E43 F0                 4860 	.db #0xF0	; 240
   7E44 F0                 4861 	.db #0xF0	; 240
   7E45 30                 4862 	.db #0x30	; 48	'0'
   7E46 30                 4863 	.db #0x30	; 48	'0'
   7E47 30                 4864 	.db #0x30	; 48	'0'
   7E48 30                 4865 	.db #0x30	; 48	'0'
   7E49 30                 4866 	.db #0x30	; 48	'0'
   7E4A 30                 4867 	.db #0x30	; 48	'0'
   7E4B 30                 4868 	.db #0x30	; 48	'0'
   7E4C 30                 4869 	.db #0x30	; 48	'0'
   7E4D F0                 4870 	.db #0xF0	; 240
   7E4E                    4871 _tile_tiles_12:
   7E4E F0                 4872 	.db #0xF0	; 240
   7E4F 30                 4873 	.db #0x30	; 48	'0'
   7E50 30                 4874 	.db #0x30	; 48	'0'
   7E51 30                 4875 	.db #0x30	; 48	'0'
   7E52 30                 4876 	.db #0x30	; 48	'0'
   7E53 30                 4877 	.db #0x30	; 48	'0'
   7E54 30                 4878 	.db #0x30	; 48	'0'
   7E55 30                 4879 	.db #0x30	; 48	'0'
   7E56 30                 4880 	.db #0x30	; 48	'0'
   7E57 F0                 4881 	.db #0xF0	; 240
   7E58 F0                 4882 	.db #0xF0	; 240
   7E59 30                 4883 	.db #0x30	; 48	'0'
   7E5A 30                 4884 	.db #0x30	; 48	'0'
   7E5B 30                 4885 	.db #0x30	; 48	'0'
   7E5C 30                 4886 	.db #0x30	; 48	'0'
   7E5D 30                 4887 	.db #0x30	; 48	'0'
   7E5E 30                 4888 	.db #0x30	; 48	'0'
   7E5F 30                 4889 	.db #0x30	; 48	'0'
   7E60 30                 4890 	.db #0x30	; 48	'0'
   7E61 F0                 4891 	.db #0xF0	; 240
   7E62 30                 4892 	.db #0x30	; 48	'0'
   7E63 25                 4893 	.db #0x25	; 37
   7E64 0F                 4894 	.db #0x0F	; 15
   7E65 0F                 4895 	.db #0x0F	; 15
   7E66 0F                 4896 	.db #0x0F	; 15
   7E67 0F                 4897 	.db #0x0F	; 15
   7E68 0F                 4898 	.db #0x0F	; 15
   7E69 0F                 4899 	.db #0x0F	; 15
   7E6A 1A                 4900 	.db #0x1A	; 26
   7E6B 30                 4901 	.db #0x30	; 48	'0'
   7E6C 30                 4902 	.db #0x30	; 48	'0'
   7E6D 25                 4903 	.db #0x25	; 37
   7E6E 30                 4904 	.db #0x30	; 48	'0'
   7E6F 30                 4905 	.db #0x30	; 48	'0'
   7E70 30                 4906 	.db #0x30	; 48	'0'
   7E71 30                 4907 	.db #0x30	; 48	'0'
   7E72 30                 4908 	.db #0x30	; 48	'0'
   7E73 30                 4909 	.db #0x30	; 48	'0'
   7E74 1A                 4910 	.db #0x1A	; 26
   7E75 30                 4911 	.db #0x30	; 48	'0'
   7E76 30                 4912 	.db #0x30	; 48	'0'
   7E77 0F                 4913 	.db #0x0F	; 15
   7E78 30                 4914 	.db #0x30	; 48	'0'
   7E79 30                 4915 	.db #0x30	; 48	'0'
   7E7A 30                 4916 	.db #0x30	; 48	'0'
   7E7B 30                 4917 	.db #0x30	; 48	'0'
   7E7C 30                 4918 	.db #0x30	; 48	'0'
   7E7D 30                 4919 	.db #0x30	; 48	'0'
   7E7E 0F                 4920 	.db #0x0F	; 15
   7E7F 30                 4921 	.db #0x30	; 48	'0'
   7E80 30                 4922 	.db #0x30	; 48	'0'
   7E81 1A                 4923 	.db #0x1A	; 26
   7E82 30                 4924 	.db #0x30	; 48	'0'
   7E83 30                 4925 	.db #0x30	; 48	'0'
   7E84 30                 4926 	.db #0x30	; 48	'0'
   7E85 30                 4927 	.db #0x30	; 48	'0'
   7E86 30                 4928 	.db #0x30	; 48	'0'
   7E87 30                 4929 	.db #0x30	; 48	'0'
   7E88 25                 4930 	.db #0x25	; 37
   7E89 30                 4931 	.db #0x30	; 48	'0'
   7E8A 30                 4932 	.db #0x30	; 48	'0'
   7E8B 1A                 4933 	.db #0x1A	; 26
   7E8C 30                 4934 	.db #0x30	; 48	'0'
   7E8D 30                 4935 	.db #0x30	; 48	'0'
   7E8E 30                 4936 	.db #0x30	; 48	'0'
   7E8F 30                 4937 	.db #0x30	; 48	'0'
   7E90 30                 4938 	.db #0x30	; 48	'0'
   7E91 30                 4939 	.db #0x30	; 48	'0'
   7E92 25                 4940 	.db #0x25	; 37
   7E93 30                 4941 	.db #0x30	; 48	'0'
   7E94 30                 4942 	.db #0x30	; 48	'0'
   7E95 1A                 4943 	.db #0x1A	; 26
   7E96 30                 4944 	.db #0x30	; 48	'0'
   7E97 30                 4945 	.db #0x30	; 48	'0'
   7E98 30                 4946 	.db #0x30	; 48	'0'
   7E99 30                 4947 	.db #0x30	; 48	'0'
   7E9A 30                 4948 	.db #0x30	; 48	'0'
   7E9B 30                 4949 	.db #0x30	; 48	'0'
   7E9C 25                 4950 	.db #0x25	; 37
   7E9D 30                 4951 	.db #0x30	; 48	'0'
   7E9E 30                 4952 	.db #0x30	; 48	'0'
   7E9F 1A                 4953 	.db #0x1A	; 26
   7EA0 30                 4954 	.db #0x30	; 48	'0'
   7EA1 30                 4955 	.db #0x30	; 48	'0'
   7EA2 30                 4956 	.db #0x30	; 48	'0'
   7EA3 30                 4957 	.db #0x30	; 48	'0'
   7EA4 30                 4958 	.db #0x30	; 48	'0'
   7EA5 30                 4959 	.db #0x30	; 48	'0'
   7EA6 25                 4960 	.db #0x25	; 37
   7EA7 30                 4961 	.db #0x30	; 48	'0'
   7EA8 30                 4962 	.db #0x30	; 48	'0'
   7EA9 1A                 4963 	.db #0x1A	; 26
   7EAA 30                 4964 	.db #0x30	; 48	'0'
   7EAB 30                 4965 	.db #0x30	; 48	'0'
   7EAC 30                 4966 	.db #0x30	; 48	'0'
   7EAD 30                 4967 	.db #0x30	; 48	'0'
   7EAE 30                 4968 	.db #0x30	; 48	'0'
   7EAF 30                 4969 	.db #0x30	; 48	'0'
   7EB0 25                 4970 	.db #0x25	; 37
   7EB1 30                 4971 	.db #0x30	; 48	'0'
   7EB2 30                 4972 	.db #0x30	; 48	'0'
   7EB3 1A                 4973 	.db #0x1A	; 26
   7EB4 30                 4974 	.db #0x30	; 48	'0'
   7EB5 30                 4975 	.db #0x30	; 48	'0'
   7EB6 30                 4976 	.db #0x30	; 48	'0'
   7EB7 30                 4977 	.db #0x30	; 48	'0'
   7EB8 30                 4978 	.db #0x30	; 48	'0'
   7EB9 30                 4979 	.db #0x30	; 48	'0'
   7EBA 25                 4980 	.db #0x25	; 37
   7EBB 30                 4981 	.db #0x30	; 48	'0'
   7EBC 30                 4982 	.db #0x30	; 48	'0'
   7EBD 1A                 4983 	.db #0x1A	; 26
   7EBE 30                 4984 	.db #0x30	; 48	'0'
   7EBF 30                 4985 	.db #0x30	; 48	'0'
   7EC0 30                 4986 	.db #0x30	; 48	'0'
   7EC1 30                 4987 	.db #0x30	; 48	'0'
   7EC2 30                 4988 	.db #0x30	; 48	'0'
   7EC3 30                 4989 	.db #0x30	; 48	'0'
   7EC4 25                 4990 	.db #0x25	; 37
   7EC5 30                 4991 	.db #0x30	; 48	'0'
   7EC6 30                 4992 	.db #0x30	; 48	'0'
   7EC7 1A                 4993 	.db #0x1A	; 26
   7EC8 30                 4994 	.db #0x30	; 48	'0'
   7EC9 30                 4995 	.db #0x30	; 48	'0'
   7ECA 30                 4996 	.db #0x30	; 48	'0'
   7ECB 30                 4997 	.db #0x30	; 48	'0'
   7ECC 30                 4998 	.db #0x30	; 48	'0'
   7ECD 30                 4999 	.db #0x30	; 48	'0'
   7ECE 25                 5000 	.db #0x25	; 37
   7ECF 30                 5001 	.db #0x30	; 48	'0'
   7ED0 30                 5002 	.db #0x30	; 48	'0'
   7ED1 1A                 5003 	.db #0x1A	; 26
   7ED2 30                 5004 	.db #0x30	; 48	'0'
   7ED3 30                 5005 	.db #0x30	; 48	'0'
   7ED4 30                 5006 	.db #0x30	; 48	'0'
   7ED5 30                 5007 	.db #0x30	; 48	'0'
   7ED6 30                 5008 	.db #0x30	; 48	'0'
   7ED7 30                 5009 	.db #0x30	; 48	'0'
   7ED8 25                 5010 	.db #0x25	; 37
   7ED9 30                 5011 	.db #0x30	; 48	'0'
   7EDA 30                 5012 	.db #0x30	; 48	'0'
   7EDB 1A                 5013 	.db #0x1A	; 26
   7EDC 30                 5014 	.db #0x30	; 48	'0'
   7EDD 30                 5015 	.db #0x30	; 48	'0'
   7EDE 30                 5016 	.db #0x30	; 48	'0'
   7EDF 30                 5017 	.db #0x30	; 48	'0'
   7EE0 30                 5018 	.db #0x30	; 48	'0'
   7EE1 30                 5019 	.db #0x30	; 48	'0'
   7EE2 25                 5020 	.db #0x25	; 37
   7EE3 30                 5021 	.db #0x30	; 48	'0'
   7EE4 30                 5022 	.db #0x30	; 48	'0'
   7EE5 1A                 5023 	.db #0x1A	; 26
   7EE6 30                 5024 	.db #0x30	; 48	'0'
   7EE7 30                 5025 	.db #0x30	; 48	'0'
   7EE8 30                 5026 	.db #0x30	; 48	'0'
   7EE9 30                 5027 	.db #0x30	; 48	'0'
   7EEA 30                 5028 	.db #0x30	; 48	'0'
   7EEB 30                 5029 	.db #0x30	; 48	'0'
   7EEC 25                 5030 	.db #0x25	; 37
   7EED 30                 5031 	.db #0x30	; 48	'0'
   7EEE 30                 5032 	.db #0x30	; 48	'0'
   7EEF 1A                 5033 	.db #0x1A	; 26
   7EF0 30                 5034 	.db #0x30	; 48	'0'
   7EF1 30                 5035 	.db #0x30	; 48	'0'
   7EF2 30                 5036 	.db #0x30	; 48	'0'
   7EF3 30                 5037 	.db #0x30	; 48	'0'
   7EF4 30                 5038 	.db #0x30	; 48	'0'
   7EF5 30                 5039 	.db #0x30	; 48	'0'
   7EF6 25                 5040 	.db #0x25	; 37
   7EF7 30                 5041 	.db #0x30	; 48	'0'
   7EF8 30                 5042 	.db #0x30	; 48	'0'
   7EF9 4E                 5043 	.db #0x4E	; 78	'N'
   7EFA 30                 5044 	.db #0x30	; 48	'0'
   7EFB CC                 5045 	.db #0xCC	; 204
   7EFC 98                 5046 	.db #0x98	; 152
   7EFD 64                 5047 	.db #0x64	; 100	'd'
   7EFE 30                 5048 	.db #0x30	; 48	'0'
   7EFF 64                 5049 	.db #0x64	; 100	'd'
   7F00 25                 5050 	.db #0x25	; 37
   7F01 30                 5051 	.db #0x30	; 48	'0'
   7F02 30                 5052 	.db #0x30	; 48	'0'
   7F03 CC                 5053 	.db #0xCC	; 204
   7F04 30                 5054 	.db #0x30	; 48	'0'
   7F05 98                 5055 	.db #0x98	; 152
   7F06 30                 5056 	.db #0x30	; 48	'0'
   7F07 98                 5057 	.db #0x98	; 152
   7F08 98                 5058 	.db #0x98	; 152
   7F09 98                 5059 	.db #0x98	; 152
   7F0A 8D                 5060 	.db #0x8D	; 141
   7F0B 30                 5061 	.db #0x30	; 48	'0'
   7F0C 30                 5062 	.db #0x30	; 48	'0'
   7F0D 4E                 5063 	.db #0x4E	; 78	'N'
   7F0E 30                 5064 	.db #0x30	; 48	'0'
   7F0F 98                 5065 	.db #0x98	; 152
   7F10 30                 5066 	.db #0x30	; 48	'0'
   7F11 30                 5067 	.db #0x30	; 48	'0'
   7F12 98                 5068 	.db #0x98	; 152
   7F13 98                 5069 	.db #0x98	; 152
   7F14 25                 5070 	.db #0x25	; 37
   7F15 30                 5071 	.db #0x30	; 48	'0'
   7F16 30                 5072 	.db #0x30	; 48	'0'
   7F17 4E                 5073 	.db #0x4E	; 78	'N'
   7F18 30                 5074 	.db #0x30	; 48	'0'
   7F19 CC                 5075 	.db #0xCC	; 204
   7F1A 30                 5076 	.db #0x30	; 48	'0'
   7F1B 64                 5077 	.db #0x64	; 100	'd'
   7F1C 30                 5078 	.db #0x30	; 48	'0'
   7F1D 98                 5079 	.db #0x98	; 152
   7F1E 25                 5080 	.db #0x25	; 37
   7F1F 30                 5081 	.db #0x30	; 48	'0'
   7F20 30                 5082 	.db #0x30	; 48	'0'
   7F21 4E                 5083 	.db #0x4E	; 78	'N'
   7F22 30                 5084 	.db #0x30	; 48	'0'
   7F23 30                 5085 	.db #0x30	; 48	'0'
   7F24 98                 5086 	.db #0x98	; 152
   7F25 64                 5087 	.db #0x64	; 100	'd'
   7F26 30                 5088 	.db #0x30	; 48	'0'
   7F27 CC                 5089 	.db #0xCC	; 204
   7F28 25                 5090 	.db #0x25	; 37
   7F29 30                 5091 	.db #0x30	; 48	'0'
   7F2A 30                 5092 	.db #0x30	; 48	'0'
   7F2B 4E                 5093 	.db #0x4E	; 78	'N'
   7F2C 30                 5094 	.db #0x30	; 48	'0'
   7F2D 30                 5095 	.db #0x30	; 48	'0'
   7F2E 98                 5096 	.db #0x98	; 152
   7F2F 30                 5097 	.db #0x30	; 48	'0'
   7F30 98                 5098 	.db #0x98	; 152
   7F31 98                 5099 	.db #0x98	; 152
   7F32 8D                 5100 	.db #0x8D	; 141
   7F33 30                 5101 	.db #0x30	; 48	'0'
   7F34 30                 5102 	.db #0x30	; 48	'0'
   7F35 4E                 5103 	.db #0x4E	; 78	'N'
   7F36 30                 5104 	.db #0x30	; 48	'0'
   7F37 30                 5105 	.db #0x30	; 48	'0'
   7F38 98                 5106 	.db #0x98	; 152
   7F39 98                 5107 	.db #0x98	; 152
   7F3A 98                 5108 	.db #0x98	; 152
   7F3B 98                 5109 	.db #0x98	; 152
   7F3C 8D                 5110 	.db #0x8D	; 141
   7F3D 30                 5111 	.db #0x30	; 48	'0'
   7F3E 30                 5112 	.db #0x30	; 48	'0'
   7F3F CC                 5113 	.db #0xCC	; 204
   7F40 98                 5114 	.db #0x98	; 152
   7F41 CC                 5115 	.db #0xCC	; 204
   7F42 30                 5116 	.db #0x30	; 48	'0'
   7F43 64                 5117 	.db #0x64	; 100	'd'
   7F44 30                 5118 	.db #0x30	; 48	'0'
   7F45 64                 5119 	.db #0x64	; 100	'd'
   7F46 25                 5120 	.db #0x25	; 37
   7F47 30                 5121 	.db #0x30	; 48	'0'
   7F48 30                 5122 	.db #0x30	; 48	'0'
   7F49 1A                 5123 	.db #0x1A	; 26
   7F4A 30                 5124 	.db #0x30	; 48	'0'
   7F4B 30                 5125 	.db #0x30	; 48	'0'
   7F4C 30                 5126 	.db #0x30	; 48	'0'
   7F4D 30                 5127 	.db #0x30	; 48	'0'
   7F4E 30                 5128 	.db #0x30	; 48	'0'
   7F4F 30                 5129 	.db #0x30	; 48	'0'
   7F50 25                 5130 	.db #0x25	; 37
   7F51 30                 5131 	.db #0x30	; 48	'0'
   7F52 30                 5132 	.db #0x30	; 48	'0'
   7F53 1A                 5133 	.db #0x1A	; 26
   7F54 30                 5134 	.db #0x30	; 48	'0'
   7F55 30                 5135 	.db #0x30	; 48	'0'
   7F56 30                 5136 	.db #0x30	; 48	'0'
   7F57 30                 5137 	.db #0x30	; 48	'0'
   7F58 30                 5138 	.db #0x30	; 48	'0'
   7F59 30                 5139 	.db #0x30	; 48	'0'
   7F5A 25                 5140 	.db #0x25	; 37
   7F5B 30                 5141 	.db #0x30	; 48	'0'
   7F5C 30                 5142 	.db #0x30	; 48	'0'
   7F5D 1A                 5143 	.db #0x1A	; 26
   7F5E 30                 5144 	.db #0x30	; 48	'0'
   7F5F 30                 5145 	.db #0x30	; 48	'0'
   7F60 30                 5146 	.db #0x30	; 48	'0'
   7F61 30                 5147 	.db #0x30	; 48	'0'
   7F62 30                 5148 	.db #0x30	; 48	'0'
   7F63 30                 5149 	.db #0x30	; 48	'0'
   7F64 25                 5150 	.db #0x25	; 37
   7F65 30                 5151 	.db #0x30	; 48	'0'
   7F66 30                 5152 	.db #0x30	; 48	'0'
   7F67 1A                 5153 	.db #0x1A	; 26
   7F68 30                 5154 	.db #0x30	; 48	'0'
   7F69 30                 5155 	.db #0x30	; 48	'0'
   7F6A 30                 5156 	.db #0x30	; 48	'0'
   7F6B 30                 5157 	.db #0x30	; 48	'0'
   7F6C 30                 5158 	.db #0x30	; 48	'0'
   7F6D 30                 5159 	.db #0x30	; 48	'0'
   7F6E 25                 5160 	.db #0x25	; 37
   7F6F 30                 5161 	.db #0x30	; 48	'0'
   7F70 30                 5162 	.db #0x30	; 48	'0'
   7F71 1A                 5163 	.db #0x1A	; 26
   7F72 30                 5164 	.db #0x30	; 48	'0'
   7F73 30                 5165 	.db #0x30	; 48	'0'
   7F74 30                 5166 	.db #0x30	; 48	'0'
   7F75 30                 5167 	.db #0x30	; 48	'0'
   7F76 30                 5168 	.db #0x30	; 48	'0'
   7F77 30                 5169 	.db #0x30	; 48	'0'
   7F78 25                 5170 	.db #0x25	; 37
   7F79 30                 5171 	.db #0x30	; 48	'0'
   7F7A 30                 5172 	.db #0x30	; 48	'0'
   7F7B 1A                 5173 	.db #0x1A	; 26
   7F7C 30                 5174 	.db #0x30	; 48	'0'
   7F7D 30                 5175 	.db #0x30	; 48	'0'
   7F7E 30                 5176 	.db #0x30	; 48	'0'
   7F7F 30                 5177 	.db #0x30	; 48	'0'
   7F80 30                 5178 	.db #0x30	; 48	'0'
   7F81 30                 5179 	.db #0x30	; 48	'0'
   7F82 25                 5180 	.db #0x25	; 37
   7F83 30                 5181 	.db #0x30	; 48	'0'
   7F84 30                 5182 	.db #0x30	; 48	'0'
   7F85 1A                 5183 	.db #0x1A	; 26
   7F86 30                 5184 	.db #0x30	; 48	'0'
   7F87 30                 5185 	.db #0x30	; 48	'0'
   7F88 30                 5186 	.db #0x30	; 48	'0'
   7F89 30                 5187 	.db #0x30	; 48	'0'
   7F8A 30                 5188 	.db #0x30	; 48	'0'
   7F8B 30                 5189 	.db #0x30	; 48	'0'
   7F8C 25                 5190 	.db #0x25	; 37
   7F8D 30                 5191 	.db #0x30	; 48	'0'
   7F8E 30                 5192 	.db #0x30	; 48	'0'
   7F8F 1A                 5193 	.db #0x1A	; 26
   7F90 30                 5194 	.db #0x30	; 48	'0'
   7F91 30                 5195 	.db #0x30	; 48	'0'
   7F92 30                 5196 	.db #0x30	; 48	'0'
   7F93 30                 5197 	.db #0x30	; 48	'0'
   7F94 30                 5198 	.db #0x30	; 48	'0'
   7F95 30                 5199 	.db #0x30	; 48	'0'
   7F96 25                 5200 	.db #0x25	; 37
   7F97 30                 5201 	.db #0x30	; 48	'0'
   7F98 30                 5202 	.db #0x30	; 48	'0'
   7F99 1A                 5203 	.db #0x1A	; 26
   7F9A 30                 5204 	.db #0x30	; 48	'0'
   7F9B 30                 5205 	.db #0x30	; 48	'0'
   7F9C 30                 5206 	.db #0x30	; 48	'0'
   7F9D 30                 5207 	.db #0x30	; 48	'0'
   7F9E 30                 5208 	.db #0x30	; 48	'0'
   7F9F 30                 5209 	.db #0x30	; 48	'0'
   7FA0 25                 5210 	.db #0x25	; 37
   7FA1 30                 5211 	.db #0x30	; 48	'0'
   7FA2 30                 5212 	.db #0x30	; 48	'0'
   7FA3 1A                 5213 	.db #0x1A	; 26
   7FA4 30                 5214 	.db #0x30	; 48	'0'
   7FA5 30                 5215 	.db #0x30	; 48	'0'
   7FA6 30                 5216 	.db #0x30	; 48	'0'
   7FA7 30                 5217 	.db #0x30	; 48	'0'
   7FA8 30                 5218 	.db #0x30	; 48	'0'
   7FA9 30                 5219 	.db #0x30	; 48	'0'
   7FAA 25                 5220 	.db #0x25	; 37
   7FAB 30                 5221 	.db #0x30	; 48	'0'
   7FAC 30                 5222 	.db #0x30	; 48	'0'
   7FAD 0F                 5223 	.db #0x0F	; 15
   7FAE 30                 5224 	.db #0x30	; 48	'0'
   7FAF 30                 5225 	.db #0x30	; 48	'0'
   7FB0 30                 5226 	.db #0x30	; 48	'0'
   7FB1 30                 5227 	.db #0x30	; 48	'0'
   7FB2 30                 5228 	.db #0x30	; 48	'0'
   7FB3 30                 5229 	.db #0x30	; 48	'0'
   7FB4 0F                 5230 	.db #0x0F	; 15
   7FB5 30                 5231 	.db #0x30	; 48	'0'
   7FB6 30                 5232 	.db #0x30	; 48	'0'
   7FB7 25                 5233 	.db #0x25	; 37
   7FB8 30                 5234 	.db #0x30	; 48	'0'
   7FB9 30                 5235 	.db #0x30	; 48	'0'
   7FBA 30                 5236 	.db #0x30	; 48	'0'
   7FBB 30                 5237 	.db #0x30	; 48	'0'
   7FBC 30                 5238 	.db #0x30	; 48	'0'
   7FBD 30                 5239 	.db #0x30	; 48	'0'
   7FBE 1A                 5240 	.db #0x1A	; 26
   7FBF 30                 5241 	.db #0x30	; 48	'0'
   7FC0 30                 5242 	.db #0x30	; 48	'0'
   7FC1 25                 5243 	.db #0x25	; 37
   7FC2 0F                 5244 	.db #0x0F	; 15
   7FC3 0F                 5245 	.db #0x0F	; 15
   7FC4 0F                 5246 	.db #0x0F	; 15
   7FC5 0F                 5247 	.db #0x0F	; 15
   7FC6 0F                 5248 	.db #0x0F	; 15
   7FC7 0F                 5249 	.db #0x0F	; 15
   7FC8 1A                 5250 	.db #0x1A	; 26
   7FC9 30                 5251 	.db #0x30	; 48	'0'
   7FCA F0                 5252 	.db #0xF0	; 240
   7FCB 30                 5253 	.db #0x30	; 48	'0'
   7FCC 30                 5254 	.db #0x30	; 48	'0'
   7FCD 30                 5255 	.db #0x30	; 48	'0'
   7FCE 30                 5256 	.db #0x30	; 48	'0'
   7FCF 30                 5257 	.db #0x30	; 48	'0'
   7FD0 30                 5258 	.db #0x30	; 48	'0'
   7FD1 30                 5259 	.db #0x30	; 48	'0'
   7FD2 30                 5260 	.db #0x30	; 48	'0'
   7FD3 F0                 5261 	.db #0xF0	; 240
   7FD4 F0                 5262 	.db #0xF0	; 240
   7FD5 30                 5263 	.db #0x30	; 48	'0'
   7FD6 30                 5264 	.db #0x30	; 48	'0'
   7FD7 30                 5265 	.db #0x30	; 48	'0'
   7FD8 30                 5266 	.db #0x30	; 48	'0'
   7FD9 30                 5267 	.db #0x30	; 48	'0'
   7FDA 30                 5268 	.db #0x30	; 48	'0'
   7FDB 30                 5269 	.db #0x30	; 48	'0'
   7FDC 30                 5270 	.db #0x30	; 48	'0'
   7FDD F0                 5271 	.db #0xF0	; 240
   7FDE                    5272 _tile_tiles_13:
   7FDE F0                 5273 	.db #0xF0	; 240
   7FDF 30                 5274 	.db #0x30	; 48	'0'
   7FE0 30                 5275 	.db #0x30	; 48	'0'
   7FE1 30                 5276 	.db #0x30	; 48	'0'
   7FE2 30                 5277 	.db #0x30	; 48	'0'
   7FE3 30                 5278 	.db #0x30	; 48	'0'
   7FE4 30                 5279 	.db #0x30	; 48	'0'
   7FE5 30                 5280 	.db #0x30	; 48	'0'
   7FE6 30                 5281 	.db #0x30	; 48	'0'
   7FE7 F0                 5282 	.db #0xF0	; 240
   7FE8 F0                 5283 	.db #0xF0	; 240
   7FE9 30                 5284 	.db #0x30	; 48	'0'
   7FEA 30                 5285 	.db #0x30	; 48	'0'
   7FEB 30                 5286 	.db #0x30	; 48	'0'
   7FEC 30                 5287 	.db #0x30	; 48	'0'
   7FED 30                 5288 	.db #0x30	; 48	'0'
   7FEE 30                 5289 	.db #0x30	; 48	'0'
   7FEF 30                 5290 	.db #0x30	; 48	'0'
   7FF0 30                 5291 	.db #0x30	; 48	'0'
   7FF1 F0                 5292 	.db #0xF0	; 240
   7FF2 30                 5293 	.db #0x30	; 48	'0'
   7FF3 25                 5294 	.db #0x25	; 37
   7FF4 0F                 5295 	.db #0x0F	; 15
   7FF5 0F                 5296 	.db #0x0F	; 15
   7FF6 0F                 5297 	.db #0x0F	; 15
   7FF7 0F                 5298 	.db #0x0F	; 15
   7FF8 0F                 5299 	.db #0x0F	; 15
   7FF9 0F                 5300 	.db #0x0F	; 15
   7FFA 1A                 5301 	.db #0x1A	; 26
   7FFB 30                 5302 	.db #0x30	; 48	'0'
   7FFC 30                 5303 	.db #0x30	; 48	'0'
   7FFD 25                 5304 	.db #0x25	; 37
   7FFE 30                 5305 	.db #0x30	; 48	'0'
   7FFF 30                 5306 	.db #0x30	; 48	'0'
   8000 30                 5307 	.db #0x30	; 48	'0'
   8001 30                 5308 	.db #0x30	; 48	'0'
   8002 30                 5309 	.db #0x30	; 48	'0'
   8003 30                 5310 	.db #0x30	; 48	'0'
   8004 1A                 5311 	.db #0x1A	; 26
   8005 30                 5312 	.db #0x30	; 48	'0'
   8006 30                 5313 	.db #0x30	; 48	'0'
   8007 0F                 5314 	.db #0x0F	; 15
   8008 30                 5315 	.db #0x30	; 48	'0'
   8009 30                 5316 	.db #0x30	; 48	'0'
   800A 30                 5317 	.db #0x30	; 48	'0'
   800B 30                 5318 	.db #0x30	; 48	'0'
   800C 30                 5319 	.db #0x30	; 48	'0'
   800D 30                 5320 	.db #0x30	; 48	'0'
   800E 0F                 5321 	.db #0x0F	; 15
   800F 30                 5322 	.db #0x30	; 48	'0'
   8010 30                 5323 	.db #0x30	; 48	'0'
   8011 1A                 5324 	.db #0x1A	; 26
   8012 30                 5325 	.db #0x30	; 48	'0'
   8013 30                 5326 	.db #0x30	; 48	'0'
   8014 30                 5327 	.db #0x30	; 48	'0'
   8015 30                 5328 	.db #0x30	; 48	'0'
   8016 30                 5329 	.db #0x30	; 48	'0'
   8017 30                 5330 	.db #0x30	; 48	'0'
   8018 25                 5331 	.db #0x25	; 37
   8019 30                 5332 	.db #0x30	; 48	'0'
   801A 30                 5333 	.db #0x30	; 48	'0'
   801B 1A                 5334 	.db #0x1A	; 26
   801C 30                 5335 	.db #0x30	; 48	'0'
   801D 30                 5336 	.db #0x30	; 48	'0'
   801E 30                 5337 	.db #0x30	; 48	'0'
   801F 30                 5338 	.db #0x30	; 48	'0'
   8020 30                 5339 	.db #0x30	; 48	'0'
   8021 30                 5340 	.db #0x30	; 48	'0'
   8022 25                 5341 	.db #0x25	; 37
   8023 30                 5342 	.db #0x30	; 48	'0'
   8024 30                 5343 	.db #0x30	; 48	'0'
   8025 1A                 5344 	.db #0x1A	; 26
   8026 30                 5345 	.db #0x30	; 48	'0'
   8027 30                 5346 	.db #0x30	; 48	'0'
   8028 30                 5347 	.db #0x30	; 48	'0'
   8029 30                 5348 	.db #0x30	; 48	'0'
   802A 30                 5349 	.db #0x30	; 48	'0'
   802B 30                 5350 	.db #0x30	; 48	'0'
   802C 25                 5351 	.db #0x25	; 37
   802D 30                 5352 	.db #0x30	; 48	'0'
   802E 30                 5353 	.db #0x30	; 48	'0'
   802F 1A                 5354 	.db #0x1A	; 26
   8030 30                 5355 	.db #0x30	; 48	'0'
   8031 30                 5356 	.db #0x30	; 48	'0'
   8032 30                 5357 	.db #0x30	; 48	'0'
   8033 30                 5358 	.db #0x30	; 48	'0'
   8034 30                 5359 	.db #0x30	; 48	'0'
   8035 30                 5360 	.db #0x30	; 48	'0'
   8036 25                 5361 	.db #0x25	; 37
   8037 30                 5362 	.db #0x30	; 48	'0'
   8038 30                 5363 	.db #0x30	; 48	'0'
   8039 1A                 5364 	.db #0x1A	; 26
   803A 30                 5365 	.db #0x30	; 48	'0'
   803B 30                 5366 	.db #0x30	; 48	'0'
   803C 30                 5367 	.db #0x30	; 48	'0'
   803D 30                 5368 	.db #0x30	; 48	'0'
   803E 30                 5369 	.db #0x30	; 48	'0'
   803F 30                 5370 	.db #0x30	; 48	'0'
   8040 25                 5371 	.db #0x25	; 37
   8041 30                 5372 	.db #0x30	; 48	'0'
   8042 30                 5373 	.db #0x30	; 48	'0'
   8043 1A                 5374 	.db #0x1A	; 26
   8044 30                 5375 	.db #0x30	; 48	'0'
   8045 30                 5376 	.db #0x30	; 48	'0'
   8046 30                 5377 	.db #0x30	; 48	'0'
   8047 30                 5378 	.db #0x30	; 48	'0'
   8048 30                 5379 	.db #0x30	; 48	'0'
   8049 30                 5380 	.db #0x30	; 48	'0'
   804A 25                 5381 	.db #0x25	; 37
   804B 30                 5382 	.db #0x30	; 48	'0'
   804C 30                 5383 	.db #0x30	; 48	'0'
   804D 1A                 5384 	.db #0x1A	; 26
   804E 30                 5385 	.db #0x30	; 48	'0'
   804F 30                 5386 	.db #0x30	; 48	'0'
   8050 30                 5387 	.db #0x30	; 48	'0'
   8051 30                 5388 	.db #0x30	; 48	'0'
   8052 30                 5389 	.db #0x30	; 48	'0'
   8053 30                 5390 	.db #0x30	; 48	'0'
   8054 25                 5391 	.db #0x25	; 37
   8055 30                 5392 	.db #0x30	; 48	'0'
   8056 30                 5393 	.db #0x30	; 48	'0'
   8057 1A                 5394 	.db #0x1A	; 26
   8058 30                 5395 	.db #0x30	; 48	'0'
   8059 30                 5396 	.db #0x30	; 48	'0'
   805A 30                 5397 	.db #0x30	; 48	'0'
   805B 30                 5398 	.db #0x30	; 48	'0'
   805C 30                 5399 	.db #0x30	; 48	'0'
   805D 30                 5400 	.db #0x30	; 48	'0'
   805E 25                 5401 	.db #0x25	; 37
   805F 30                 5402 	.db #0x30	; 48	'0'
   8060 30                 5403 	.db #0x30	; 48	'0'
   8061 1A                 5404 	.db #0x1A	; 26
   8062 30                 5405 	.db #0x30	; 48	'0'
   8063 30                 5406 	.db #0x30	; 48	'0'
   8064 30                 5407 	.db #0x30	; 48	'0'
   8065 30                 5408 	.db #0x30	; 48	'0'
   8066 30                 5409 	.db #0x30	; 48	'0'
   8067 30                 5410 	.db #0x30	; 48	'0'
   8068 25                 5411 	.db #0x25	; 37
   8069 30                 5412 	.db #0x30	; 48	'0'
   806A 30                 5413 	.db #0x30	; 48	'0'
   806B 1A                 5414 	.db #0x1A	; 26
   806C 30                 5415 	.db #0x30	; 48	'0'
   806D 30                 5416 	.db #0x30	; 48	'0'
   806E 30                 5417 	.db #0x30	; 48	'0'
   806F 30                 5418 	.db #0x30	; 48	'0'
   8070 30                 5419 	.db #0x30	; 48	'0'
   8071 30                 5420 	.db #0x30	; 48	'0'
   8072 25                 5421 	.db #0x25	; 37
   8073 30                 5422 	.db #0x30	; 48	'0'
   8074 30                 5423 	.db #0x30	; 48	'0'
   8075 1A                 5424 	.db #0x1A	; 26
   8076 30                 5425 	.db #0x30	; 48	'0'
   8077 30                 5426 	.db #0x30	; 48	'0'
   8078 30                 5427 	.db #0x30	; 48	'0'
   8079 30                 5428 	.db #0x30	; 48	'0'
   807A 30                 5429 	.db #0x30	; 48	'0'
   807B 30                 5430 	.db #0x30	; 48	'0'
   807C 25                 5431 	.db #0x25	; 37
   807D 30                 5432 	.db #0x30	; 48	'0'
   807E 30                 5433 	.db #0x30	; 48	'0'
   807F 1A                 5434 	.db #0x1A	; 26
   8080 30                 5435 	.db #0x30	; 48	'0'
   8081 30                 5436 	.db #0x30	; 48	'0'
   8082 30                 5437 	.db #0x30	; 48	'0'
   8083 30                 5438 	.db #0x30	; 48	'0'
   8084 30                 5439 	.db #0x30	; 48	'0'
   8085 30                 5440 	.db #0x30	; 48	'0'
   8086 25                 5441 	.db #0x25	; 37
   8087 30                 5442 	.db #0x30	; 48	'0'
   8088 30                 5443 	.db #0x30	; 48	'0'
   8089 4E                 5444 	.db #0x4E	; 78	'N'
   808A 30                 5445 	.db #0x30	; 48	'0'
   808B 64                 5446 	.db #0x64	; 100	'd'
   808C 30                 5447 	.db #0x30	; 48	'0'
   808D CC                 5448 	.db #0xCC	; 204
   808E 98                 5449 	.db #0x98	; 152
   808F 64                 5450 	.db #0x64	; 100	'd'
   8090 25                 5451 	.db #0x25	; 37
   8091 30                 5452 	.db #0x30	; 48	'0'
   8092 30                 5453 	.db #0x30	; 48	'0'
   8093 98                 5454 	.db #0x98	; 152
   8094 98                 5455 	.db #0x98	; 152
   8095 98                 5456 	.db #0x98	; 152
   8096 98                 5457 	.db #0x98	; 152
   8097 30                 5458 	.db #0x30	; 48	'0'
   8098 98                 5459 	.db #0x98	; 152
   8099 98                 5460 	.db #0x98	; 152
   809A 8D                 5461 	.db #0x8D	; 141
   809B 30                 5462 	.db #0x30	; 48	'0'
   809C 30                 5463 	.db #0x30	; 48	'0'
   809D 1A                 5464 	.db #0x1A	; 26
   809E 98                 5465 	.db #0x98	; 152
   809F 98                 5466 	.db #0x98	; 152
   80A0 98                 5467 	.db #0x98	; 152
   80A1 30                 5468 	.db #0x30	; 48	'0'
   80A2 98                 5469 	.db #0x98	; 152
   80A3 30                 5470 	.db #0x30	; 48	'0'
   80A4 8D                 5471 	.db #0x8D	; 141
   80A5 30                 5472 	.db #0x30	; 48	'0'
   80A6 30                 5473 	.db #0x30	; 48	'0'
   80A7 4E                 5474 	.db #0x4E	; 78	'N'
   80A8 30                 5475 	.db #0x30	; 48	'0'
   80A9 98                 5476 	.db #0x98	; 152
   80AA 98                 5477 	.db #0x98	; 152
   80AB 30                 5478 	.db #0x30	; 48	'0'
   80AC 98                 5479 	.db #0x98	; 152
   80AD 64                 5480 	.db #0x64	; 100	'd'
   80AE 25                 5481 	.db #0x25	; 37
   80AF 30                 5482 	.db #0x30	; 48	'0'
   80B0 30                 5483 	.db #0x30	; 48	'0'
   80B1 4E                 5484 	.db #0x4E	; 78	'N'
   80B2 30                 5485 	.db #0x30	; 48	'0'
   80B3 98                 5486 	.db #0x98	; 152
   80B4 98                 5487 	.db #0x98	; 152
   80B5 64                 5488 	.db #0x64	; 100	'd'
   80B6 30                 5489 	.db #0x30	; 48	'0'
   80B7 64                 5490 	.db #0x64	; 100	'd'
   80B8 25                 5491 	.db #0x25	; 37
   80B9 30                 5492 	.db #0x30	; 48	'0'
   80BA 30                 5493 	.db #0x30	; 48	'0'
   80BB 1A                 5494 	.db #0x1A	; 26
   80BC 98                 5495 	.db #0x98	; 152
   80BD 98                 5496 	.db #0x98	; 152
   80BE 98                 5497 	.db #0x98	; 152
   80BF 64                 5498 	.db #0x64	; 100	'd'
   80C0 30                 5499 	.db #0x30	; 48	'0'
   80C1 98                 5500 	.db #0x98	; 152
   80C2 25                 5501 	.db #0x25	; 37
   80C3 30                 5502 	.db #0x30	; 48	'0'
   80C4 30                 5503 	.db #0x30	; 48	'0'
   80C5 98                 5504 	.db #0x98	; 152
   80C6 98                 5505 	.db #0x98	; 152
   80C7 98                 5506 	.db #0x98	; 152
   80C8 98                 5507 	.db #0x98	; 152
   80C9 64                 5508 	.db #0x64	; 100	'd'
   80CA 30                 5509 	.db #0x30	; 48	'0'
   80CB 98                 5510 	.db #0x98	; 152
   80CC 25                 5511 	.db #0x25	; 37
   80CD 30                 5512 	.db #0x30	; 48	'0'
   80CE 30                 5513 	.db #0x30	; 48	'0'
   80CF 4E                 5514 	.db #0x4E	; 78	'N'
   80D0 30                 5515 	.db #0x30	; 48	'0'
   80D1 64                 5516 	.db #0x64	; 100	'd'
   80D2 30                 5517 	.db #0x30	; 48	'0'
   80D3 64                 5518 	.db #0x64	; 100	'd'
   80D4 30                 5519 	.db #0x30	; 48	'0'
   80D5 CC                 5520 	.db #0xCC	; 204
   80D6 8D                 5521 	.db #0x8D	; 141
   80D7 30                 5522 	.db #0x30	; 48	'0'
   80D8 30                 5523 	.db #0x30	; 48	'0'
   80D9 1A                 5524 	.db #0x1A	; 26
   80DA 30                 5525 	.db #0x30	; 48	'0'
   80DB 30                 5526 	.db #0x30	; 48	'0'
   80DC 30                 5527 	.db #0x30	; 48	'0'
   80DD 30                 5528 	.db #0x30	; 48	'0'
   80DE 30                 5529 	.db #0x30	; 48	'0'
   80DF 30                 5530 	.db #0x30	; 48	'0'
   80E0 25                 5531 	.db #0x25	; 37
   80E1 30                 5532 	.db #0x30	; 48	'0'
   80E2 30                 5533 	.db #0x30	; 48	'0'
   80E3 1A                 5534 	.db #0x1A	; 26
   80E4 30                 5535 	.db #0x30	; 48	'0'
   80E5 30                 5536 	.db #0x30	; 48	'0'
   80E6 30                 5537 	.db #0x30	; 48	'0'
   80E7 30                 5538 	.db #0x30	; 48	'0'
   80E8 30                 5539 	.db #0x30	; 48	'0'
   80E9 30                 5540 	.db #0x30	; 48	'0'
   80EA 25                 5541 	.db #0x25	; 37
   80EB 30                 5542 	.db #0x30	; 48	'0'
   80EC 30                 5543 	.db #0x30	; 48	'0'
   80ED 1A                 5544 	.db #0x1A	; 26
   80EE 30                 5545 	.db #0x30	; 48	'0'
   80EF 30                 5546 	.db #0x30	; 48	'0'
   80F0 30                 5547 	.db #0x30	; 48	'0'
   80F1 30                 5548 	.db #0x30	; 48	'0'
   80F2 30                 5549 	.db #0x30	; 48	'0'
   80F3 30                 5550 	.db #0x30	; 48	'0'
   80F4 25                 5551 	.db #0x25	; 37
   80F5 30                 5552 	.db #0x30	; 48	'0'
   80F6 30                 5553 	.db #0x30	; 48	'0'
   80F7 1A                 5554 	.db #0x1A	; 26
   80F8 30                 5555 	.db #0x30	; 48	'0'
   80F9 30                 5556 	.db #0x30	; 48	'0'
   80FA 30                 5557 	.db #0x30	; 48	'0'
   80FB 30                 5558 	.db #0x30	; 48	'0'
   80FC 30                 5559 	.db #0x30	; 48	'0'
   80FD 30                 5560 	.db #0x30	; 48	'0'
   80FE 25                 5561 	.db #0x25	; 37
   80FF 30                 5562 	.db #0x30	; 48	'0'
   8100 30                 5563 	.db #0x30	; 48	'0'
   8101 1A                 5564 	.db #0x1A	; 26
   8102 30                 5565 	.db #0x30	; 48	'0'
   8103 30                 5566 	.db #0x30	; 48	'0'
   8104 30                 5567 	.db #0x30	; 48	'0'
   8105 30                 5568 	.db #0x30	; 48	'0'
   8106 30                 5569 	.db #0x30	; 48	'0'
   8107 30                 5570 	.db #0x30	; 48	'0'
   8108 25                 5571 	.db #0x25	; 37
   8109 30                 5572 	.db #0x30	; 48	'0'
   810A 30                 5573 	.db #0x30	; 48	'0'
   810B 1A                 5574 	.db #0x1A	; 26
   810C 30                 5575 	.db #0x30	; 48	'0'
   810D 30                 5576 	.db #0x30	; 48	'0'
   810E 30                 5577 	.db #0x30	; 48	'0'
   810F 30                 5578 	.db #0x30	; 48	'0'
   8110 30                 5579 	.db #0x30	; 48	'0'
   8111 30                 5580 	.db #0x30	; 48	'0'
   8112 25                 5581 	.db #0x25	; 37
   8113 30                 5582 	.db #0x30	; 48	'0'
   8114 30                 5583 	.db #0x30	; 48	'0'
   8115 1A                 5584 	.db #0x1A	; 26
   8116 30                 5585 	.db #0x30	; 48	'0'
   8117 30                 5586 	.db #0x30	; 48	'0'
   8118 30                 5587 	.db #0x30	; 48	'0'
   8119 30                 5588 	.db #0x30	; 48	'0'
   811A 30                 5589 	.db #0x30	; 48	'0'
   811B 30                 5590 	.db #0x30	; 48	'0'
   811C 25                 5591 	.db #0x25	; 37
   811D 30                 5592 	.db #0x30	; 48	'0'
   811E 30                 5593 	.db #0x30	; 48	'0'
   811F 1A                 5594 	.db #0x1A	; 26
   8120 30                 5595 	.db #0x30	; 48	'0'
   8121 30                 5596 	.db #0x30	; 48	'0'
   8122 30                 5597 	.db #0x30	; 48	'0'
   8123 30                 5598 	.db #0x30	; 48	'0'
   8124 30                 5599 	.db #0x30	; 48	'0'
   8125 30                 5600 	.db #0x30	; 48	'0'
   8126 25                 5601 	.db #0x25	; 37
   8127 30                 5602 	.db #0x30	; 48	'0'
   8128 30                 5603 	.db #0x30	; 48	'0'
   8129 1A                 5604 	.db #0x1A	; 26
   812A 30                 5605 	.db #0x30	; 48	'0'
   812B 30                 5606 	.db #0x30	; 48	'0'
   812C 30                 5607 	.db #0x30	; 48	'0'
   812D 30                 5608 	.db #0x30	; 48	'0'
   812E 30                 5609 	.db #0x30	; 48	'0'
   812F 30                 5610 	.db #0x30	; 48	'0'
   8130 25                 5611 	.db #0x25	; 37
   8131 30                 5612 	.db #0x30	; 48	'0'
   8132 30                 5613 	.db #0x30	; 48	'0'
   8133 1A                 5614 	.db #0x1A	; 26
   8134 30                 5615 	.db #0x30	; 48	'0'
   8135 30                 5616 	.db #0x30	; 48	'0'
   8136 30                 5617 	.db #0x30	; 48	'0'
   8137 30                 5618 	.db #0x30	; 48	'0'
   8138 30                 5619 	.db #0x30	; 48	'0'
   8139 30                 5620 	.db #0x30	; 48	'0'
   813A 25                 5621 	.db #0x25	; 37
   813B 30                 5622 	.db #0x30	; 48	'0'
   813C 30                 5623 	.db #0x30	; 48	'0'
   813D 0F                 5624 	.db #0x0F	; 15
   813E 30                 5625 	.db #0x30	; 48	'0'
   813F 30                 5626 	.db #0x30	; 48	'0'
   8140 30                 5627 	.db #0x30	; 48	'0'
   8141 30                 5628 	.db #0x30	; 48	'0'
   8142 30                 5629 	.db #0x30	; 48	'0'
   8143 30                 5630 	.db #0x30	; 48	'0'
   8144 0F                 5631 	.db #0x0F	; 15
   8145 30                 5632 	.db #0x30	; 48	'0'
   8146 30                 5633 	.db #0x30	; 48	'0'
   8147 25                 5634 	.db #0x25	; 37
   8148 30                 5635 	.db #0x30	; 48	'0'
   8149 30                 5636 	.db #0x30	; 48	'0'
   814A 30                 5637 	.db #0x30	; 48	'0'
   814B 30                 5638 	.db #0x30	; 48	'0'
   814C 30                 5639 	.db #0x30	; 48	'0'
   814D 30                 5640 	.db #0x30	; 48	'0'
   814E 1A                 5641 	.db #0x1A	; 26
   814F 30                 5642 	.db #0x30	; 48	'0'
   8150 30                 5643 	.db #0x30	; 48	'0'
   8151 25                 5644 	.db #0x25	; 37
   8152 0F                 5645 	.db #0x0F	; 15
   8153 0F                 5646 	.db #0x0F	; 15
   8154 0F                 5647 	.db #0x0F	; 15
   8155 0F                 5648 	.db #0x0F	; 15
   8156 0F                 5649 	.db #0x0F	; 15
   8157 0F                 5650 	.db #0x0F	; 15
   8158 1A                 5651 	.db #0x1A	; 26
   8159 30                 5652 	.db #0x30	; 48	'0'
   815A F0                 5653 	.db #0xF0	; 240
   815B 30                 5654 	.db #0x30	; 48	'0'
   815C 30                 5655 	.db #0x30	; 48	'0'
   815D 30                 5656 	.db #0x30	; 48	'0'
   815E 30                 5657 	.db #0x30	; 48	'0'
   815F 30                 5658 	.db #0x30	; 48	'0'
   8160 30                 5659 	.db #0x30	; 48	'0'
   8161 30                 5660 	.db #0x30	; 48	'0'
   8162 30                 5661 	.db #0x30	; 48	'0'
   8163 F0                 5662 	.db #0xF0	; 240
   8164 F0                 5663 	.db #0xF0	; 240
   8165 30                 5664 	.db #0x30	; 48	'0'
   8166 30                 5665 	.db #0x30	; 48	'0'
   8167 30                 5666 	.db #0x30	; 48	'0'
   8168 30                 5667 	.db #0x30	; 48	'0'
   8169 30                 5668 	.db #0x30	; 48	'0'
   816A 30                 5669 	.db #0x30	; 48	'0'
   816B 30                 5670 	.db #0x30	; 48	'0'
   816C 30                 5671 	.db #0x30	; 48	'0'
   816D F0                 5672 	.db #0xF0	; 240
   816E                    5673 _tile_tiles_14:
   816E F0                 5674 	.db #0xF0	; 240
   816F 30                 5675 	.db #0x30	; 48	'0'
   8170 30                 5676 	.db #0x30	; 48	'0'
   8171 30                 5677 	.db #0x30	; 48	'0'
   8172 30                 5678 	.db #0x30	; 48	'0'
   8173 30                 5679 	.db #0x30	; 48	'0'
   8174 30                 5680 	.db #0x30	; 48	'0'
   8175 30                 5681 	.db #0x30	; 48	'0'
   8176 30                 5682 	.db #0x30	; 48	'0'
   8177 F0                 5683 	.db #0xF0	; 240
   8178 F0                 5684 	.db #0xF0	; 240
   8179 30                 5685 	.db #0x30	; 48	'0'
   817A 30                 5686 	.db #0x30	; 48	'0'
   817B 30                 5687 	.db #0x30	; 48	'0'
   817C 30                 5688 	.db #0x30	; 48	'0'
   817D 30                 5689 	.db #0x30	; 48	'0'
   817E 30                 5690 	.db #0x30	; 48	'0'
   817F 30                 5691 	.db #0x30	; 48	'0'
   8180 30                 5692 	.db #0x30	; 48	'0'
   8181 F0                 5693 	.db #0xF0	; 240
   8182 30                 5694 	.db #0x30	; 48	'0'
   8183 25                 5695 	.db #0x25	; 37
   8184 0F                 5696 	.db #0x0F	; 15
   8185 0F                 5697 	.db #0x0F	; 15
   8186 0F                 5698 	.db #0x0F	; 15
   8187 0F                 5699 	.db #0x0F	; 15
   8188 0F                 5700 	.db #0x0F	; 15
   8189 0F                 5701 	.db #0x0F	; 15
   818A 1A                 5702 	.db #0x1A	; 26
   818B 30                 5703 	.db #0x30	; 48	'0'
   818C 30                 5704 	.db #0x30	; 48	'0'
   818D 25                 5705 	.db #0x25	; 37
   818E 30                 5706 	.db #0x30	; 48	'0'
   818F 30                 5707 	.db #0x30	; 48	'0'
   8190 30                 5708 	.db #0x30	; 48	'0'
   8191 30                 5709 	.db #0x30	; 48	'0'
   8192 30                 5710 	.db #0x30	; 48	'0'
   8193 30                 5711 	.db #0x30	; 48	'0'
   8194 1A                 5712 	.db #0x1A	; 26
   8195 30                 5713 	.db #0x30	; 48	'0'
   8196 30                 5714 	.db #0x30	; 48	'0'
   8197 0F                 5715 	.db #0x0F	; 15
   8198 30                 5716 	.db #0x30	; 48	'0'
   8199 30                 5717 	.db #0x30	; 48	'0'
   819A 30                 5718 	.db #0x30	; 48	'0'
   819B 30                 5719 	.db #0x30	; 48	'0'
   819C 30                 5720 	.db #0x30	; 48	'0'
   819D 30                 5721 	.db #0x30	; 48	'0'
   819E 0F                 5722 	.db #0x0F	; 15
   819F 30                 5723 	.db #0x30	; 48	'0'
   81A0 30                 5724 	.db #0x30	; 48	'0'
   81A1 1A                 5725 	.db #0x1A	; 26
   81A2 30                 5726 	.db #0x30	; 48	'0'
   81A3 30                 5727 	.db #0x30	; 48	'0'
   81A4 30                 5728 	.db #0x30	; 48	'0'
   81A5 30                 5729 	.db #0x30	; 48	'0'
   81A6 30                 5730 	.db #0x30	; 48	'0'
   81A7 30                 5731 	.db #0x30	; 48	'0'
   81A8 25                 5732 	.db #0x25	; 37
   81A9 30                 5733 	.db #0x30	; 48	'0'
   81AA 30                 5734 	.db #0x30	; 48	'0'
   81AB 1A                 5735 	.db #0x1A	; 26
   81AC 30                 5736 	.db #0x30	; 48	'0'
   81AD 30                 5737 	.db #0x30	; 48	'0'
   81AE 30                 5738 	.db #0x30	; 48	'0'
   81AF 30                 5739 	.db #0x30	; 48	'0'
   81B0 30                 5740 	.db #0x30	; 48	'0'
   81B1 30                 5741 	.db #0x30	; 48	'0'
   81B2 25                 5742 	.db #0x25	; 37
   81B3 30                 5743 	.db #0x30	; 48	'0'
   81B4 30                 5744 	.db #0x30	; 48	'0'
   81B5 1A                 5745 	.db #0x1A	; 26
   81B6 30                 5746 	.db #0x30	; 48	'0'
   81B7 30                 5747 	.db #0x30	; 48	'0'
   81B8 30                 5748 	.db #0x30	; 48	'0'
   81B9 30                 5749 	.db #0x30	; 48	'0'
   81BA 30                 5750 	.db #0x30	; 48	'0'
   81BB 30                 5751 	.db #0x30	; 48	'0'
   81BC 25                 5752 	.db #0x25	; 37
   81BD 30                 5753 	.db #0x30	; 48	'0'
   81BE 30                 5754 	.db #0x30	; 48	'0'
   81BF 1A                 5755 	.db #0x1A	; 26
   81C0 30                 5756 	.db #0x30	; 48	'0'
   81C1 30                 5757 	.db #0x30	; 48	'0'
   81C2 30                 5758 	.db #0x30	; 48	'0'
   81C3 30                 5759 	.db #0x30	; 48	'0'
   81C4 30                 5760 	.db #0x30	; 48	'0'
   81C5 30                 5761 	.db #0x30	; 48	'0'
   81C6 25                 5762 	.db #0x25	; 37
   81C7 30                 5763 	.db #0x30	; 48	'0'
   81C8 30                 5764 	.db #0x30	; 48	'0'
   81C9 1A                 5765 	.db #0x1A	; 26
   81CA 30                 5766 	.db #0x30	; 48	'0'
   81CB 30                 5767 	.db #0x30	; 48	'0'
   81CC 30                 5768 	.db #0x30	; 48	'0'
   81CD 30                 5769 	.db #0x30	; 48	'0'
   81CE 30                 5770 	.db #0x30	; 48	'0'
   81CF 30                 5771 	.db #0x30	; 48	'0'
   81D0 25                 5772 	.db #0x25	; 37
   81D1 30                 5773 	.db #0x30	; 48	'0'
   81D2 30                 5774 	.db #0x30	; 48	'0'
   81D3 1A                 5775 	.db #0x1A	; 26
   81D4 30                 5776 	.db #0x30	; 48	'0'
   81D5 30                 5777 	.db #0x30	; 48	'0'
   81D6 30                 5778 	.db #0x30	; 48	'0'
   81D7 30                 5779 	.db #0x30	; 48	'0'
   81D8 30                 5780 	.db #0x30	; 48	'0'
   81D9 30                 5781 	.db #0x30	; 48	'0'
   81DA 25                 5782 	.db #0x25	; 37
   81DB 30                 5783 	.db #0x30	; 48	'0'
   81DC 30                 5784 	.db #0x30	; 48	'0'
   81DD 1A                 5785 	.db #0x1A	; 26
   81DE 30                 5786 	.db #0x30	; 48	'0'
   81DF 30                 5787 	.db #0x30	; 48	'0'
   81E0 30                 5788 	.db #0x30	; 48	'0'
   81E1 30                 5789 	.db #0x30	; 48	'0'
   81E2 30                 5790 	.db #0x30	; 48	'0'
   81E3 30                 5791 	.db #0x30	; 48	'0'
   81E4 25                 5792 	.db #0x25	; 37
   81E5 30                 5793 	.db #0x30	; 48	'0'
   81E6 30                 5794 	.db #0x30	; 48	'0'
   81E7 1A                 5795 	.db #0x1A	; 26
   81E8 30                 5796 	.db #0x30	; 48	'0'
   81E9 30                 5797 	.db #0x30	; 48	'0'
   81EA 30                 5798 	.db #0x30	; 48	'0'
   81EB 30                 5799 	.db #0x30	; 48	'0'
   81EC 30                 5800 	.db #0x30	; 48	'0'
   81ED 30                 5801 	.db #0x30	; 48	'0'
   81EE 25                 5802 	.db #0x25	; 37
   81EF 30                 5803 	.db #0x30	; 48	'0'
   81F0 30                 5804 	.db #0x30	; 48	'0'
   81F1 1A                 5805 	.db #0x1A	; 26
   81F2 30                 5806 	.db #0x30	; 48	'0'
   81F3 30                 5807 	.db #0x30	; 48	'0'
   81F4 30                 5808 	.db #0x30	; 48	'0'
   81F5 30                 5809 	.db #0x30	; 48	'0'
   81F6 30                 5810 	.db #0x30	; 48	'0'
   81F7 30                 5811 	.db #0x30	; 48	'0'
   81F8 25                 5812 	.db #0x25	; 37
   81F9 30                 5813 	.db #0x30	; 48	'0'
   81FA 30                 5814 	.db #0x30	; 48	'0'
   81FB 1A                 5815 	.db #0x1A	; 26
   81FC 30                 5816 	.db #0x30	; 48	'0'
   81FD 30                 5817 	.db #0x30	; 48	'0'
   81FE 30                 5818 	.db #0x30	; 48	'0'
   81FF 30                 5819 	.db #0x30	; 48	'0'
   8200 30                 5820 	.db #0x30	; 48	'0'
   8201 30                 5821 	.db #0x30	; 48	'0'
   8202 25                 5822 	.db #0x25	; 37
   8203 30                 5823 	.db #0x30	; 48	'0'
   8204 30                 5824 	.db #0x30	; 48	'0'
   8205 1A                 5825 	.db #0x1A	; 26
   8206 30                 5826 	.db #0x30	; 48	'0'
   8207 30                 5827 	.db #0x30	; 48	'0'
   8208 30                 5828 	.db #0x30	; 48	'0'
   8209 30                 5829 	.db #0x30	; 48	'0'
   820A 30                 5830 	.db #0x30	; 48	'0'
   820B 30                 5831 	.db #0x30	; 48	'0'
   820C 25                 5832 	.db #0x25	; 37
   820D 30                 5833 	.db #0x30	; 48	'0'
   820E 30                 5834 	.db #0x30	; 48	'0'
   820F 1A                 5835 	.db #0x1A	; 26
   8210 30                 5836 	.db #0x30	; 48	'0'
   8211 30                 5837 	.db #0x30	; 48	'0'
   8212 30                 5838 	.db #0x30	; 48	'0'
   8213 30                 5839 	.db #0x30	; 48	'0'
   8214 30                 5840 	.db #0x30	; 48	'0'
   8215 30                 5841 	.db #0x30	; 48	'0'
   8216 25                 5842 	.db #0x25	; 37
   8217 30                 5843 	.db #0x30	; 48	'0'
   8218 30                 5844 	.db #0x30	; 48	'0'
   8219 4E                 5845 	.db #0x4E	; 78	'N'
   821A 98                 5846 	.db #0x98	; 152
   821B 64                 5847 	.db #0x64	; 100	'd'
   821C 30                 5848 	.db #0x30	; 48	'0'
   821D 30                 5849 	.db #0x30	; 48	'0'
   821E 98                 5850 	.db #0x98	; 152
   821F 30                 5851 	.db #0x30	; 48	'0'
   8220 8D                 5852 	.db #0x8D	; 141
   8221 30                 5853 	.db #0x30	; 48	'0'
   8222 30                 5854 	.db #0x30	; 48	'0'
   8223 98                 5855 	.db #0x98	; 152
   8224 30                 5856 	.db #0x30	; 48	'0'
   8225 CC                 5857 	.db #0xCC	; 204
   8226 30                 5858 	.db #0x30	; 48	'0'
   8227 64                 5859 	.db #0x64	; 100	'd'
   8228 98                 5860 	.db #0x98	; 152
   8229 64                 5861 	.db #0x64	; 100	'd'
   822A 8D                 5862 	.db #0x8D	; 141
   822B 30                 5863 	.db #0x30	; 48	'0'
   822C 30                 5864 	.db #0x30	; 48	'0'
   822D 98                 5865 	.db #0x98	; 152
   822E 30                 5866 	.db #0x30	; 48	'0'
   822F 64                 5867 	.db #0x64	; 100	'd'
   8230 30                 5868 	.db #0x30	; 48	'0'
   8231 64                 5869 	.db #0x64	; 100	'd'
   8232 98                 5870 	.db #0x98	; 152
   8233 64                 5871 	.db #0x64	; 100	'd'
   8234 8D                 5872 	.db #0x8D	; 141
   8235 30                 5873 	.db #0x30	; 48	'0'
   8236 30                 5874 	.db #0x30	; 48	'0'
   8237 CC                 5875 	.db #0xCC	; 204
   8238 30                 5876 	.db #0x30	; 48	'0'
   8239 64                 5877 	.db #0x64	; 100	'd'
   823A 30                 5878 	.db #0x30	; 48	'0'
   823B 98                 5879 	.db #0x98	; 152
   823C 98                 5880 	.db #0x98	; 152
   823D 98                 5881 	.db #0x98	; 152
   823E 8D                 5882 	.db #0x8D	; 141
   823F 30                 5883 	.db #0x30	; 48	'0'
   8240 30                 5884 	.db #0x30	; 48	'0'
   8241 98                 5885 	.db #0x98	; 152
   8242 98                 5886 	.db #0x98	; 152
   8243 64                 5887 	.db #0x64	; 100	'd'
   8244 30                 5888 	.db #0x30	; 48	'0'
   8245 CC                 5889 	.db #0xCC	; 204
   8246 98                 5890 	.db #0x98	; 152
   8247 CC                 5891 	.db #0xCC	; 204
   8248 8D                 5892 	.db #0x8D	; 141
   8249 30                 5893 	.db #0x30	; 48	'0'
   824A 30                 5894 	.db #0x30	; 48	'0'
   824B 98                 5895 	.db #0x98	; 152
   824C 98                 5896 	.db #0x98	; 152
   824D 64                 5897 	.db #0x64	; 100	'd'
   824E 30                 5898 	.db #0x30	; 48	'0'
   824F 30                 5899 	.db #0x30	; 48	'0'
   8250 98                 5900 	.db #0x98	; 152
   8251 30                 5901 	.db #0x30	; 48	'0'
   8252 8D                 5902 	.db #0x8D	; 141
   8253 30                 5903 	.db #0x30	; 48	'0'
   8254 30                 5904 	.db #0x30	; 48	'0'
   8255 98                 5905 	.db #0x98	; 152
   8256 98                 5906 	.db #0x98	; 152
   8257 64                 5907 	.db #0x64	; 100	'd'
   8258 30                 5908 	.db #0x30	; 48	'0'
   8259 30                 5909 	.db #0x30	; 48	'0'
   825A 98                 5910 	.db #0x98	; 152
   825B 30                 5911 	.db #0x30	; 48	'0'
   825C 8D                 5912 	.db #0x8D	; 141
   825D 30                 5913 	.db #0x30	; 48	'0'
   825E 30                 5914 	.db #0x30	; 48	'0'
   825F 4E                 5915 	.db #0x4E	; 78	'N'
   8260 30                 5916 	.db #0x30	; 48	'0'
   8261 CC                 5917 	.db #0xCC	; 204
   8262 98                 5918 	.db #0x98	; 152
   8263 30                 5919 	.db #0x30	; 48	'0'
   8264 98                 5920 	.db #0x98	; 152
   8265 30                 5921 	.db #0x30	; 48	'0'
   8266 8D                 5922 	.db #0x8D	; 141
   8267 30                 5923 	.db #0x30	; 48	'0'
   8268 30                 5924 	.db #0x30	; 48	'0'
   8269 1A                 5925 	.db #0x1A	; 26
   826A 30                 5926 	.db #0x30	; 48	'0'
   826B 30                 5927 	.db #0x30	; 48	'0'
   826C 30                 5928 	.db #0x30	; 48	'0'
   826D 30                 5929 	.db #0x30	; 48	'0'
   826E 30                 5930 	.db #0x30	; 48	'0'
   826F 30                 5931 	.db #0x30	; 48	'0'
   8270 25                 5932 	.db #0x25	; 37
   8271 30                 5933 	.db #0x30	; 48	'0'
   8272 30                 5934 	.db #0x30	; 48	'0'
   8273 1A                 5935 	.db #0x1A	; 26
   8274 30                 5936 	.db #0x30	; 48	'0'
   8275 30                 5937 	.db #0x30	; 48	'0'
   8276 30                 5938 	.db #0x30	; 48	'0'
   8277 30                 5939 	.db #0x30	; 48	'0'
   8278 30                 5940 	.db #0x30	; 48	'0'
   8279 30                 5941 	.db #0x30	; 48	'0'
   827A 25                 5942 	.db #0x25	; 37
   827B 30                 5943 	.db #0x30	; 48	'0'
   827C 30                 5944 	.db #0x30	; 48	'0'
   827D 1A                 5945 	.db #0x1A	; 26
   827E 30                 5946 	.db #0x30	; 48	'0'
   827F 30                 5947 	.db #0x30	; 48	'0'
   8280 30                 5948 	.db #0x30	; 48	'0'
   8281 30                 5949 	.db #0x30	; 48	'0'
   8282 30                 5950 	.db #0x30	; 48	'0'
   8283 30                 5951 	.db #0x30	; 48	'0'
   8284 25                 5952 	.db #0x25	; 37
   8285 30                 5953 	.db #0x30	; 48	'0'
   8286 30                 5954 	.db #0x30	; 48	'0'
   8287 1A                 5955 	.db #0x1A	; 26
   8288 30                 5956 	.db #0x30	; 48	'0'
   8289 30                 5957 	.db #0x30	; 48	'0'
   828A 30                 5958 	.db #0x30	; 48	'0'
   828B 30                 5959 	.db #0x30	; 48	'0'
   828C 30                 5960 	.db #0x30	; 48	'0'
   828D 30                 5961 	.db #0x30	; 48	'0'
   828E 25                 5962 	.db #0x25	; 37
   828F 30                 5963 	.db #0x30	; 48	'0'
   8290 30                 5964 	.db #0x30	; 48	'0'
   8291 1A                 5965 	.db #0x1A	; 26
   8292 30                 5966 	.db #0x30	; 48	'0'
   8293 30                 5967 	.db #0x30	; 48	'0'
   8294 30                 5968 	.db #0x30	; 48	'0'
   8295 30                 5969 	.db #0x30	; 48	'0'
   8296 30                 5970 	.db #0x30	; 48	'0'
   8297 30                 5971 	.db #0x30	; 48	'0'
   8298 25                 5972 	.db #0x25	; 37
   8299 30                 5973 	.db #0x30	; 48	'0'
   829A 30                 5974 	.db #0x30	; 48	'0'
   829B 1A                 5975 	.db #0x1A	; 26
   829C 30                 5976 	.db #0x30	; 48	'0'
   829D 30                 5977 	.db #0x30	; 48	'0'
   829E 30                 5978 	.db #0x30	; 48	'0'
   829F 30                 5979 	.db #0x30	; 48	'0'
   82A0 30                 5980 	.db #0x30	; 48	'0'
   82A1 30                 5981 	.db #0x30	; 48	'0'
   82A2 25                 5982 	.db #0x25	; 37
   82A3 30                 5983 	.db #0x30	; 48	'0'
   82A4 30                 5984 	.db #0x30	; 48	'0'
   82A5 1A                 5985 	.db #0x1A	; 26
   82A6 30                 5986 	.db #0x30	; 48	'0'
   82A7 30                 5987 	.db #0x30	; 48	'0'
   82A8 30                 5988 	.db #0x30	; 48	'0'
   82A9 30                 5989 	.db #0x30	; 48	'0'
   82AA 30                 5990 	.db #0x30	; 48	'0'
   82AB 30                 5991 	.db #0x30	; 48	'0'
   82AC 25                 5992 	.db #0x25	; 37
   82AD 30                 5993 	.db #0x30	; 48	'0'
   82AE 30                 5994 	.db #0x30	; 48	'0'
   82AF 1A                 5995 	.db #0x1A	; 26
   82B0 30                 5996 	.db #0x30	; 48	'0'
   82B1 30                 5997 	.db #0x30	; 48	'0'
   82B2 30                 5998 	.db #0x30	; 48	'0'
   82B3 30                 5999 	.db #0x30	; 48	'0'
   82B4 30                 6000 	.db #0x30	; 48	'0'
   82B5 30                 6001 	.db #0x30	; 48	'0'
   82B6 25                 6002 	.db #0x25	; 37
   82B7 30                 6003 	.db #0x30	; 48	'0'
   82B8 30                 6004 	.db #0x30	; 48	'0'
   82B9 1A                 6005 	.db #0x1A	; 26
   82BA 30                 6006 	.db #0x30	; 48	'0'
   82BB 30                 6007 	.db #0x30	; 48	'0'
   82BC 30                 6008 	.db #0x30	; 48	'0'
   82BD 30                 6009 	.db #0x30	; 48	'0'
   82BE 30                 6010 	.db #0x30	; 48	'0'
   82BF 30                 6011 	.db #0x30	; 48	'0'
   82C0 25                 6012 	.db #0x25	; 37
   82C1 30                 6013 	.db #0x30	; 48	'0'
   82C2 30                 6014 	.db #0x30	; 48	'0'
   82C3 1A                 6015 	.db #0x1A	; 26
   82C4 30                 6016 	.db #0x30	; 48	'0'
   82C5 30                 6017 	.db #0x30	; 48	'0'
   82C6 30                 6018 	.db #0x30	; 48	'0'
   82C7 30                 6019 	.db #0x30	; 48	'0'
   82C8 30                 6020 	.db #0x30	; 48	'0'
   82C9 30                 6021 	.db #0x30	; 48	'0'
   82CA 25                 6022 	.db #0x25	; 37
   82CB 30                 6023 	.db #0x30	; 48	'0'
   82CC 30                 6024 	.db #0x30	; 48	'0'
   82CD 0F                 6025 	.db #0x0F	; 15
   82CE 30                 6026 	.db #0x30	; 48	'0'
   82CF 30                 6027 	.db #0x30	; 48	'0'
   82D0 30                 6028 	.db #0x30	; 48	'0'
   82D1 30                 6029 	.db #0x30	; 48	'0'
   82D2 30                 6030 	.db #0x30	; 48	'0'
   82D3 30                 6031 	.db #0x30	; 48	'0'
   82D4 0F                 6032 	.db #0x0F	; 15
   82D5 30                 6033 	.db #0x30	; 48	'0'
   82D6 30                 6034 	.db #0x30	; 48	'0'
   82D7 25                 6035 	.db #0x25	; 37
   82D8 30                 6036 	.db #0x30	; 48	'0'
   82D9 30                 6037 	.db #0x30	; 48	'0'
   82DA 30                 6038 	.db #0x30	; 48	'0'
   82DB 30                 6039 	.db #0x30	; 48	'0'
   82DC 30                 6040 	.db #0x30	; 48	'0'
   82DD 30                 6041 	.db #0x30	; 48	'0'
   82DE 1A                 6042 	.db #0x1A	; 26
   82DF 30                 6043 	.db #0x30	; 48	'0'
   82E0 30                 6044 	.db #0x30	; 48	'0'
   82E1 25                 6045 	.db #0x25	; 37
   82E2 0F                 6046 	.db #0x0F	; 15
   82E3 0F                 6047 	.db #0x0F	; 15
   82E4 0F                 6048 	.db #0x0F	; 15
   82E5 0F                 6049 	.db #0x0F	; 15
   82E6 0F                 6050 	.db #0x0F	; 15
   82E7 0F                 6051 	.db #0x0F	; 15
   82E8 1A                 6052 	.db #0x1A	; 26
   82E9 30                 6053 	.db #0x30	; 48	'0'
   82EA F0                 6054 	.db #0xF0	; 240
   82EB 30                 6055 	.db #0x30	; 48	'0'
   82EC 30                 6056 	.db #0x30	; 48	'0'
   82ED 30                 6057 	.db #0x30	; 48	'0'
   82EE 30                 6058 	.db #0x30	; 48	'0'
   82EF 30                 6059 	.db #0x30	; 48	'0'
   82F0 30                 6060 	.db #0x30	; 48	'0'
   82F1 30                 6061 	.db #0x30	; 48	'0'
   82F2 30                 6062 	.db #0x30	; 48	'0'
   82F3 F0                 6063 	.db #0xF0	; 240
   82F4 F0                 6064 	.db #0xF0	; 240
   82F5 30                 6065 	.db #0x30	; 48	'0'
   82F6 30                 6066 	.db #0x30	; 48	'0'
   82F7 30                 6067 	.db #0x30	; 48	'0'
   82F8 30                 6068 	.db #0x30	; 48	'0'
   82F9 30                 6069 	.db #0x30	; 48	'0'
   82FA 30                 6070 	.db #0x30	; 48	'0'
   82FB 30                 6071 	.db #0x30	; 48	'0'
   82FC 30                 6072 	.db #0x30	; 48	'0'
   82FD F0                 6073 	.db #0xF0	; 240
   82FE                    6074 _tile_tiles_15:
   82FE F0                 6075 	.db #0xF0	; 240
   82FF 0F                 6076 	.db #0x0F	; 15
   8300 0F                 6077 	.db #0x0F	; 15
   8301 0F                 6078 	.db #0x0F	; 15
   8302 0F                 6079 	.db #0x0F	; 15
   8303 0F                 6080 	.db #0x0F	; 15
   8304 0F                 6081 	.db #0x0F	; 15
   8305 0F                 6082 	.db #0x0F	; 15
   8306 0F                 6083 	.db #0x0F	; 15
   8307 F0                 6084 	.db #0xF0	; 240
   8308 F0                 6085 	.db #0xF0	; 240
   8309 0F                 6086 	.db #0x0F	; 15
   830A 0F                 6087 	.db #0x0F	; 15
   830B 0F                 6088 	.db #0x0F	; 15
   830C 0F                 6089 	.db #0x0F	; 15
   830D 0F                 6090 	.db #0x0F	; 15
   830E 0F                 6091 	.db #0x0F	; 15
   830F 0F                 6092 	.db #0x0F	; 15
   8310 0F                 6093 	.db #0x0F	; 15
   8311 F0                 6094 	.db #0xF0	; 240
   8312 0F                 6095 	.db #0x0F	; 15
   8313 0F                 6096 	.db #0x0F	; 15
   8314 0F                 6097 	.db #0x0F	; 15
   8315 0F                 6098 	.db #0x0F	; 15
   8316 0F                 6099 	.db #0x0F	; 15
   8317 0F                 6100 	.db #0x0F	; 15
   8318 0F                 6101 	.db #0x0F	; 15
   8319 0F                 6102 	.db #0x0F	; 15
   831A 0F                 6103 	.db #0x0F	; 15
   831B 0F                 6104 	.db #0x0F	; 15
   831C 0F                 6105 	.db #0x0F	; 15
   831D 0F                 6106 	.db #0x0F	; 15
   831E 0F                 6107 	.db #0x0F	; 15
   831F 0F                 6108 	.db #0x0F	; 15
   8320 0F                 6109 	.db #0x0F	; 15
   8321 0F                 6110 	.db #0x0F	; 15
   8322 0F                 6111 	.db #0x0F	; 15
   8323 0F                 6112 	.db #0x0F	; 15
   8324 0F                 6113 	.db #0x0F	; 15
   8325 0F                 6114 	.db #0x0F	; 15
   8326 0F                 6115 	.db #0x0F	; 15
   8327 0F                 6116 	.db #0x0F	; 15
   8328 0F                 6117 	.db #0x0F	; 15
   8329 0F                 6118 	.db #0x0F	; 15
   832A 0F                 6119 	.db #0x0F	; 15
   832B 0F                 6120 	.db #0x0F	; 15
   832C 0F                 6121 	.db #0x0F	; 15
   832D 0F                 6122 	.db #0x0F	; 15
   832E 0F                 6123 	.db #0x0F	; 15
   832F 0F                 6124 	.db #0x0F	; 15
   8330 0F                 6125 	.db #0x0F	; 15
   8331 0F                 6126 	.db #0x0F	; 15
   8332 0F                 6127 	.db #0x0F	; 15
   8333 0F                 6128 	.db #0x0F	; 15
   8334 0F                 6129 	.db #0x0F	; 15
   8335 0F                 6130 	.db #0x0F	; 15
   8336 0F                 6131 	.db #0x0F	; 15
   8337 0F                 6132 	.db #0x0F	; 15
   8338 0F                 6133 	.db #0x0F	; 15
   8339 0F                 6134 	.db #0x0F	; 15
   833A 0F                 6135 	.db #0x0F	; 15
   833B 0F                 6136 	.db #0x0F	; 15
   833C 0F                 6137 	.db #0x0F	; 15
   833D 0F                 6138 	.db #0x0F	; 15
   833E 0F                 6139 	.db #0x0F	; 15
   833F 0F                 6140 	.db #0x0F	; 15
   8340 0F                 6141 	.db #0x0F	; 15
   8341 0F                 6142 	.db #0x0F	; 15
   8342 0F                 6143 	.db #0x0F	; 15
   8343 0F                 6144 	.db #0x0F	; 15
   8344 0F                 6145 	.db #0x0F	; 15
   8345 0F                 6146 	.db #0x0F	; 15
   8346 0F                 6147 	.db #0x0F	; 15
   8347 0F                 6148 	.db #0x0F	; 15
   8348 0F                 6149 	.db #0x0F	; 15
   8349 0F                 6150 	.db #0x0F	; 15
   834A 0F                 6151 	.db #0x0F	; 15
   834B 0F                 6152 	.db #0x0F	; 15
   834C 0F                 6153 	.db #0x0F	; 15
   834D 0F                 6154 	.db #0x0F	; 15
   834E 0F                 6155 	.db #0x0F	; 15
   834F 0F                 6156 	.db #0x0F	; 15
   8350 0F                 6157 	.db #0x0F	; 15
   8351 0F                 6158 	.db #0x0F	; 15
   8352 0F                 6159 	.db #0x0F	; 15
   8353 0F                 6160 	.db #0x0F	; 15
   8354 0F                 6161 	.db #0x0F	; 15
   8355 0F                 6162 	.db #0x0F	; 15
   8356 0F                 6163 	.db #0x0F	; 15
   8357 0F                 6164 	.db #0x0F	; 15
   8358 0F                 6165 	.db #0x0F	; 15
   8359 0F                 6166 	.db #0x0F	; 15
   835A 0F                 6167 	.db #0x0F	; 15
   835B 0F                 6168 	.db #0x0F	; 15
   835C 0F                 6169 	.db #0x0F	; 15
   835D 0F                 6170 	.db #0x0F	; 15
   835E 0F                 6171 	.db #0x0F	; 15
   835F 0F                 6172 	.db #0x0F	; 15
   8360 0F                 6173 	.db #0x0F	; 15
   8361 0F                 6174 	.db #0x0F	; 15
   8362 0F                 6175 	.db #0x0F	; 15
   8363 0F                 6176 	.db #0x0F	; 15
   8364 0F                 6177 	.db #0x0F	; 15
   8365 0F                 6178 	.db #0x0F	; 15
   8366 0F                 6179 	.db #0x0F	; 15
   8367 0F                 6180 	.db #0x0F	; 15
   8368 0F                 6181 	.db #0x0F	; 15
   8369 0F                 6182 	.db #0x0F	; 15
   836A 0F                 6183 	.db #0x0F	; 15
   836B 0F                 6184 	.db #0x0F	; 15
   836C 0F                 6185 	.db #0x0F	; 15
   836D 0F                 6186 	.db #0x0F	; 15
   836E 0F                 6187 	.db #0x0F	; 15
   836F 0F                 6188 	.db #0x0F	; 15
   8370 0F                 6189 	.db #0x0F	; 15
   8371 0F                 6190 	.db #0x0F	; 15
   8372 0F                 6191 	.db #0x0F	; 15
   8373 0F                 6192 	.db #0x0F	; 15
   8374 0F                 6193 	.db #0x0F	; 15
   8375 0F                 6194 	.db #0x0F	; 15
   8376 0F                 6195 	.db #0x0F	; 15
   8377 0F                 6196 	.db #0x0F	; 15
   8378 0F                 6197 	.db #0x0F	; 15
   8379 0F                 6198 	.db #0x0F	; 15
   837A 0F                 6199 	.db #0x0F	; 15
   837B 0F                 6200 	.db #0x0F	; 15
   837C 0F                 6201 	.db #0x0F	; 15
   837D 0F                 6202 	.db #0x0F	; 15
   837E 0F                 6203 	.db #0x0F	; 15
   837F 0F                 6204 	.db #0x0F	; 15
   8380 0F                 6205 	.db #0x0F	; 15
   8381 0F                 6206 	.db #0x0F	; 15
   8382 0F                 6207 	.db #0x0F	; 15
   8383 0F                 6208 	.db #0x0F	; 15
   8384 0F                 6209 	.db #0x0F	; 15
   8385 0F                 6210 	.db #0x0F	; 15
   8386 0F                 6211 	.db #0x0F	; 15
   8387 0F                 6212 	.db #0x0F	; 15
   8388 0F                 6213 	.db #0x0F	; 15
   8389 0F                 6214 	.db #0x0F	; 15
   838A 0F                 6215 	.db #0x0F	; 15
   838B 0F                 6216 	.db #0x0F	; 15
   838C 0F                 6217 	.db #0x0F	; 15
   838D 0F                 6218 	.db #0x0F	; 15
   838E 0F                 6219 	.db #0x0F	; 15
   838F 0F                 6220 	.db #0x0F	; 15
   8390 0F                 6221 	.db #0x0F	; 15
   8391 0F                 6222 	.db #0x0F	; 15
   8392 0F                 6223 	.db #0x0F	; 15
   8393 0F                 6224 	.db #0x0F	; 15
   8394 0F                 6225 	.db #0x0F	; 15
   8395 0F                 6226 	.db #0x0F	; 15
   8396 0F                 6227 	.db #0x0F	; 15
   8397 0F                 6228 	.db #0x0F	; 15
   8398 0F                 6229 	.db #0x0F	; 15
   8399 0F                 6230 	.db #0x0F	; 15
   839A 0F                 6231 	.db #0x0F	; 15
   839B 0F                 6232 	.db #0x0F	; 15
   839C 0F                 6233 	.db #0x0F	; 15
   839D 0F                 6234 	.db #0x0F	; 15
   839E 0F                 6235 	.db #0x0F	; 15
   839F 0F                 6236 	.db #0x0F	; 15
   83A0 0F                 6237 	.db #0x0F	; 15
   83A1 0F                 6238 	.db #0x0F	; 15
   83A2 0F                 6239 	.db #0x0F	; 15
   83A3 0F                 6240 	.db #0x0F	; 15
   83A4 0F                 6241 	.db #0x0F	; 15
   83A5 0F                 6242 	.db #0x0F	; 15
   83A6 0F                 6243 	.db #0x0F	; 15
   83A7 0F                 6244 	.db #0x0F	; 15
   83A8 0F                 6245 	.db #0x0F	; 15
   83A9 0F                 6246 	.db #0x0F	; 15
   83AA 0F                 6247 	.db #0x0F	; 15
   83AB 0F                 6248 	.db #0x0F	; 15
   83AC 0F                 6249 	.db #0x0F	; 15
   83AD 0F                 6250 	.db #0x0F	; 15
   83AE 0F                 6251 	.db #0x0F	; 15
   83AF 0F                 6252 	.db #0x0F	; 15
   83B0 0F                 6253 	.db #0x0F	; 15
   83B1 0F                 6254 	.db #0x0F	; 15
   83B2 0F                 6255 	.db #0x0F	; 15
   83B3 0F                 6256 	.db #0x0F	; 15
   83B4 0F                 6257 	.db #0x0F	; 15
   83B5 0F                 6258 	.db #0x0F	; 15
   83B6 0F                 6259 	.db #0x0F	; 15
   83B7 0F                 6260 	.db #0x0F	; 15
   83B8 0F                 6261 	.db #0x0F	; 15
   83B9 0F                 6262 	.db #0x0F	; 15
   83BA 0F                 6263 	.db #0x0F	; 15
   83BB 0F                 6264 	.db #0x0F	; 15
   83BC 0F                 6265 	.db #0x0F	; 15
   83BD 0F                 6266 	.db #0x0F	; 15
   83BE 0F                 6267 	.db #0x0F	; 15
   83BF 0F                 6268 	.db #0x0F	; 15
   83C0 0F                 6269 	.db #0x0F	; 15
   83C1 0F                 6270 	.db #0x0F	; 15
   83C2 0F                 6271 	.db #0x0F	; 15
   83C3 0F                 6272 	.db #0x0F	; 15
   83C4 0F                 6273 	.db #0x0F	; 15
   83C5 0F                 6274 	.db #0x0F	; 15
   83C6 0F                 6275 	.db #0x0F	; 15
   83C7 0F                 6276 	.db #0x0F	; 15
   83C8 0F                 6277 	.db #0x0F	; 15
   83C9 0F                 6278 	.db #0x0F	; 15
   83CA 0F                 6279 	.db #0x0F	; 15
   83CB 0F                 6280 	.db #0x0F	; 15
   83CC 0F                 6281 	.db #0x0F	; 15
   83CD 0F                 6282 	.db #0x0F	; 15
   83CE 0F                 6283 	.db #0x0F	; 15
   83CF 0F                 6284 	.db #0x0F	; 15
   83D0 0F                 6285 	.db #0x0F	; 15
   83D1 0F                 6286 	.db #0x0F	; 15
   83D2 0F                 6287 	.db #0x0F	; 15
   83D3 0F                 6288 	.db #0x0F	; 15
   83D4 0F                 6289 	.db #0x0F	; 15
   83D5 0F                 6290 	.db #0x0F	; 15
   83D6 0F                 6291 	.db #0x0F	; 15
   83D7 0F                 6292 	.db #0x0F	; 15
   83D8 0F                 6293 	.db #0x0F	; 15
   83D9 0F                 6294 	.db #0x0F	; 15
   83DA 0F                 6295 	.db #0x0F	; 15
   83DB 0F                 6296 	.db #0x0F	; 15
   83DC 0F                 6297 	.db #0x0F	; 15
   83DD 0F                 6298 	.db #0x0F	; 15
   83DE 0F                 6299 	.db #0x0F	; 15
   83DF 0F                 6300 	.db #0x0F	; 15
   83E0 0F                 6301 	.db #0x0F	; 15
   83E1 0F                 6302 	.db #0x0F	; 15
   83E2 0F                 6303 	.db #0x0F	; 15
   83E3 0F                 6304 	.db #0x0F	; 15
   83E4 0F                 6305 	.db #0x0F	; 15
   83E5 0F                 6306 	.db #0x0F	; 15
   83E6 0F                 6307 	.db #0x0F	; 15
   83E7 0F                 6308 	.db #0x0F	; 15
   83E8 0F                 6309 	.db #0x0F	; 15
   83E9 0F                 6310 	.db #0x0F	; 15
   83EA 0F                 6311 	.db #0x0F	; 15
   83EB 0F                 6312 	.db #0x0F	; 15
   83EC 0F                 6313 	.db #0x0F	; 15
   83ED 0F                 6314 	.db #0x0F	; 15
   83EE 0F                 6315 	.db #0x0F	; 15
   83EF 0F                 6316 	.db #0x0F	; 15
   83F0 0F                 6317 	.db #0x0F	; 15
   83F1 0F                 6318 	.db #0x0F	; 15
   83F2 0F                 6319 	.db #0x0F	; 15
   83F3 0F                 6320 	.db #0x0F	; 15
   83F4 0F                 6321 	.db #0x0F	; 15
   83F5 0F                 6322 	.db #0x0F	; 15
   83F6 0F                 6323 	.db #0x0F	; 15
   83F7 0F                 6324 	.db #0x0F	; 15
   83F8 0F                 6325 	.db #0x0F	; 15
   83F9 0F                 6326 	.db #0x0F	; 15
   83FA 0F                 6327 	.db #0x0F	; 15
   83FB 0F                 6328 	.db #0x0F	; 15
   83FC 0F                 6329 	.db #0x0F	; 15
   83FD 0F                 6330 	.db #0x0F	; 15
   83FE 0F                 6331 	.db #0x0F	; 15
   83FF 0F                 6332 	.db #0x0F	; 15
   8400 0F                 6333 	.db #0x0F	; 15
   8401 0F                 6334 	.db #0x0F	; 15
   8402 0F                 6335 	.db #0x0F	; 15
   8403 0F                 6336 	.db #0x0F	; 15
   8404 0F                 6337 	.db #0x0F	; 15
   8405 0F                 6338 	.db #0x0F	; 15
   8406 0F                 6339 	.db #0x0F	; 15
   8407 0F                 6340 	.db #0x0F	; 15
   8408 0F                 6341 	.db #0x0F	; 15
   8409 0F                 6342 	.db #0x0F	; 15
   840A 0F                 6343 	.db #0x0F	; 15
   840B 0F                 6344 	.db #0x0F	; 15
   840C 0F                 6345 	.db #0x0F	; 15
   840D 0F                 6346 	.db #0x0F	; 15
   840E 0F                 6347 	.db #0x0F	; 15
   840F 0F                 6348 	.db #0x0F	; 15
   8410 0F                 6349 	.db #0x0F	; 15
   8411 0F                 6350 	.db #0x0F	; 15
   8412 0F                 6351 	.db #0x0F	; 15
   8413 0F                 6352 	.db #0x0F	; 15
   8414 0F                 6353 	.db #0x0F	; 15
   8415 0F                 6354 	.db #0x0F	; 15
   8416 0F                 6355 	.db #0x0F	; 15
   8417 0F                 6356 	.db #0x0F	; 15
   8418 0F                 6357 	.db #0x0F	; 15
   8419 0F                 6358 	.db #0x0F	; 15
   841A 0F                 6359 	.db #0x0F	; 15
   841B 0F                 6360 	.db #0x0F	; 15
   841C 0F                 6361 	.db #0x0F	; 15
   841D 0F                 6362 	.db #0x0F	; 15
   841E 0F                 6363 	.db #0x0F	; 15
   841F 0F                 6364 	.db #0x0F	; 15
   8420 0F                 6365 	.db #0x0F	; 15
   8421 0F                 6366 	.db #0x0F	; 15
   8422 0F                 6367 	.db #0x0F	; 15
   8423 0F                 6368 	.db #0x0F	; 15
   8424 0F                 6369 	.db #0x0F	; 15
   8425 0F                 6370 	.db #0x0F	; 15
   8426 0F                 6371 	.db #0x0F	; 15
   8427 0F                 6372 	.db #0x0F	; 15
   8428 0F                 6373 	.db #0x0F	; 15
   8429 0F                 6374 	.db #0x0F	; 15
   842A 0F                 6375 	.db #0x0F	; 15
   842B 0F                 6376 	.db #0x0F	; 15
   842C 0F                 6377 	.db #0x0F	; 15
   842D 0F                 6378 	.db #0x0F	; 15
   842E 0F                 6379 	.db #0x0F	; 15
   842F 0F                 6380 	.db #0x0F	; 15
   8430 0F                 6381 	.db #0x0F	; 15
   8431 0F                 6382 	.db #0x0F	; 15
   8432 0F                 6383 	.db #0x0F	; 15
   8433 0F                 6384 	.db #0x0F	; 15
   8434 0F                 6385 	.db #0x0F	; 15
   8435 0F                 6386 	.db #0x0F	; 15
   8436 0F                 6387 	.db #0x0F	; 15
   8437 0F                 6388 	.db #0x0F	; 15
   8438 0F                 6389 	.db #0x0F	; 15
   8439 0F                 6390 	.db #0x0F	; 15
   843A 0F                 6391 	.db #0x0F	; 15
   843B 0F                 6392 	.db #0x0F	; 15
   843C 0F                 6393 	.db #0x0F	; 15
   843D 0F                 6394 	.db #0x0F	; 15
   843E 0F                 6395 	.db #0x0F	; 15
   843F 0F                 6396 	.db #0x0F	; 15
   8440 0F                 6397 	.db #0x0F	; 15
   8441 0F                 6398 	.db #0x0F	; 15
   8442 0F                 6399 	.db #0x0F	; 15
   8443 0F                 6400 	.db #0x0F	; 15
   8444 0F                 6401 	.db #0x0F	; 15
   8445 0F                 6402 	.db #0x0F	; 15
   8446 0F                 6403 	.db #0x0F	; 15
   8447 0F                 6404 	.db #0x0F	; 15
   8448 0F                 6405 	.db #0x0F	; 15
   8449 0F                 6406 	.db #0x0F	; 15
   844A 0F                 6407 	.db #0x0F	; 15
   844B 0F                 6408 	.db #0x0F	; 15
   844C 0F                 6409 	.db #0x0F	; 15
   844D 0F                 6410 	.db #0x0F	; 15
   844E 0F                 6411 	.db #0x0F	; 15
   844F 0F                 6412 	.db #0x0F	; 15
   8450 0F                 6413 	.db #0x0F	; 15
   8451 0F                 6414 	.db #0x0F	; 15
   8452 0F                 6415 	.db #0x0F	; 15
   8453 0F                 6416 	.db #0x0F	; 15
   8454 0F                 6417 	.db #0x0F	; 15
   8455 0F                 6418 	.db #0x0F	; 15
   8456 0F                 6419 	.db #0x0F	; 15
   8457 0F                 6420 	.db #0x0F	; 15
   8458 0F                 6421 	.db #0x0F	; 15
   8459 0F                 6422 	.db #0x0F	; 15
   845A 0F                 6423 	.db #0x0F	; 15
   845B 0F                 6424 	.db #0x0F	; 15
   845C 0F                 6425 	.db #0x0F	; 15
   845D 0F                 6426 	.db #0x0F	; 15
   845E 0F                 6427 	.db #0x0F	; 15
   845F 0F                 6428 	.db #0x0F	; 15
   8460 0F                 6429 	.db #0x0F	; 15
   8461 0F                 6430 	.db #0x0F	; 15
   8462 0F                 6431 	.db #0x0F	; 15
   8463 0F                 6432 	.db #0x0F	; 15
   8464 0F                 6433 	.db #0x0F	; 15
   8465 0F                 6434 	.db #0x0F	; 15
   8466 0F                 6435 	.db #0x0F	; 15
   8467 0F                 6436 	.db #0x0F	; 15
   8468 0F                 6437 	.db #0x0F	; 15
   8469 0F                 6438 	.db #0x0F	; 15
   846A 0F                 6439 	.db #0x0F	; 15
   846B 0F                 6440 	.db #0x0F	; 15
   846C 0F                 6441 	.db #0x0F	; 15
   846D 0F                 6442 	.db #0x0F	; 15
   846E 0F                 6443 	.db #0x0F	; 15
   846F 0F                 6444 	.db #0x0F	; 15
   8470 0F                 6445 	.db #0x0F	; 15
   8471 0F                 6446 	.db #0x0F	; 15
   8472 0F                 6447 	.db #0x0F	; 15
   8473 0F                 6448 	.db #0x0F	; 15
   8474 0F                 6449 	.db #0x0F	; 15
   8475 0F                 6450 	.db #0x0F	; 15
   8476 0F                 6451 	.db #0x0F	; 15
   8477 0F                 6452 	.db #0x0F	; 15
   8478 0F                 6453 	.db #0x0F	; 15
   8479 0F                 6454 	.db #0x0F	; 15
   847A F0                 6455 	.db #0xF0	; 240
   847B 0F                 6456 	.db #0x0F	; 15
   847C 0F                 6457 	.db #0x0F	; 15
   847D 0F                 6458 	.db #0x0F	; 15
   847E 0F                 6459 	.db #0x0F	; 15
   847F 0F                 6460 	.db #0x0F	; 15
   8480 0F                 6461 	.db #0x0F	; 15
   8481 0F                 6462 	.db #0x0F	; 15
   8482 0F                 6463 	.db #0x0F	; 15
   8483 F0                 6464 	.db #0xF0	; 240
   8484 F0                 6465 	.db #0xF0	; 240
   8485 0F                 6466 	.db #0x0F	; 15
   8486 0F                 6467 	.db #0x0F	; 15
   8487 0F                 6468 	.db #0x0F	; 15
   8488 0F                 6469 	.db #0x0F	; 15
   8489 0F                 6470 	.db #0x0F	; 15
   848A 0F                 6471 	.db #0x0F	; 15
   848B 0F                 6472 	.db #0x0F	; 15
   848C 0F                 6473 	.db #0x0F	; 15
   848D F0                 6474 	.db #0xF0	; 240
                           6475 	.area _INITIALIZER
                           6476 	.area _CABS (ABS)
