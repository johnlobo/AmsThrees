                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.5 #9498 (Mac OS X x86_64)
                              4 ;--------------------------------------------------------
                              5 	.module numbers_big
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _G_numbers_big
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
                             43 	.area _CODE
   59D4                      44 _G_numbers_big:
   59D4 E4                   45 	.db #0xE4	; 228
   59D5 CC                   46 	.db #0xCC	; 204
   59D6 F0                   47 	.db #0xF0	; 240
   59D7 CC                   48 	.db #0xCC	; 204
   59D8 CC                   49 	.db #0xCC	; 204
   59D9 D8                   50 	.db #0xD8	; 216
   59DA D8                   51 	.db #0xD8	; 216
   59DB F0                   52 	.db #0xF0	; 240
   59DC D8                   53 	.db #0xD8	; 216
   59DD D8                   54 	.db #0xD8	; 216
   59DE E4                   55 	.db #0xE4	; 228
   59DF D8                   56 	.db #0xD8	; 216
   59E0 D8                   57 	.db #0xD8	; 216
   59E1 E4                   58 	.db #0xE4	; 228
   59E2 D8                   59 	.db #0xD8	; 216
   59E3 D8                   60 	.db #0xD8	; 216
   59E4 D8                   61 	.db #0xD8	; 216
   59E5 D8                   62 	.db #0xD8	; 216
   59E6 D8                   63 	.db #0xD8	; 216
   59E7 D8                   64 	.db #0xD8	; 216
   59E8 D8                   65 	.db #0xD8	; 216
   59E9 CC                   66 	.db #0xCC	; 204
   59EA F0                   67 	.db #0xF0	; 240
   59EB D8                   68 	.db #0xD8	; 216
   59EC CC                   69 	.db #0xCC	; 204
   59ED F0                   70 	.db #0xF0	; 240
   59EE D8                   71 	.db #0xD8	; 216
   59EF E4                   72 	.db #0xE4	; 228
   59F0 CC                   73 	.db #0xCC	; 204
   59F1 F0                   74 	.db #0xF0	; 240
   59F2 E4                   75 	.db #0xE4	; 228
   59F3 CC                   76 	.db #0xCC	; 204
   59F4 F0                   77 	.db #0xF0	; 240
   59F5 F0                   78 	.db #0xF0	; 240
   59F6 D8                   79 	.db #0xD8	; 216
   59F7 F0                   80 	.db #0xF0	; 240
   59F8 E4                   81 	.db #0xE4	; 228
   59F9 D8                   82 	.db #0xD8	; 216
   59FA F0                   83 	.db #0xF0	; 240
   59FB D8                   84 	.db #0xD8	; 216
   59FC D8                   85 	.db #0xD8	; 216
   59FD F0                   86 	.db #0xF0	; 240
   59FE F0                   87 	.db #0xF0	; 240
   59FF D8                   88 	.db #0xD8	; 216
   5A00 F0                   89 	.db #0xF0	; 240
   5A01 F0                   90 	.db #0xF0	; 240
   5A02 D8                   91 	.db #0xD8	; 216
   5A03 F0                   92 	.db #0xF0	; 240
   5A04 F0                   93 	.db #0xF0	; 240
   5A05 D8                   94 	.db #0xD8	; 216
   5A06 F0                   95 	.db #0xF0	; 240
   5A07 F0                   96 	.db #0xF0	; 240
   5A08 D8                   97 	.db #0xD8	; 216
   5A09 F0                   98 	.db #0xF0	; 240
   5A0A F0                   99 	.db #0xF0	; 240
   5A0B D8                  100 	.db #0xD8	; 216
   5A0C F0                  101 	.db #0xF0	; 240
   5A0D F0                  102 	.db #0xF0	; 240
   5A0E D8                  103 	.db #0xD8	; 216
   5A0F F0                  104 	.db #0xF0	; 240
   5A10 CC                  105 	.db #0xCC	; 204
   5A11 CC                  106 	.db #0xCC	; 204
   5A12 D8                  107 	.db #0xD8	; 216
   5A13 CC                  108 	.db #0xCC	; 204
   5A14 CC                  109 	.db #0xCC	; 204
   5A15 D8                  110 	.db #0xD8	; 216
   5A16 E4                  111 	.db #0xE4	; 228
   5A17 CC                  112 	.db #0xCC	; 204
   5A18 F0                  113 	.db #0xF0	; 240
   5A19 CC                  114 	.db #0xCC	; 204
   5A1A CC                  115 	.db #0xCC	; 204
   5A1B D8                  116 	.db #0xD8	; 216
   5A1C D8                  117 	.db #0xD8	; 216
   5A1D F0                  118 	.db #0xF0	; 240
   5A1E D8                  119 	.db #0xD8	; 216
   5A1F F0                  120 	.db #0xF0	; 240
   5A20 F0                  121 	.db #0xF0	; 240
   5A21 D8                  122 	.db #0xD8	; 216
   5A22 F0                  123 	.db #0xF0	; 240
   5A23 E4                  124 	.db #0xE4	; 228
   5A24 D8                  125 	.db #0xD8	; 216
   5A25 F0                  126 	.db #0xF0	; 240
   5A26 CC                  127 	.db #0xCC	; 204
   5A27 F0                  128 	.db #0xF0	; 240
   5A28 E4                  129 	.db #0xE4	; 228
   5A29 D8                  130 	.db #0xD8	; 216
   5A2A F0                  131 	.db #0xF0	; 240
   5A2B CC                  132 	.db #0xCC	; 204
   5A2C F0                  133 	.db #0xF0	; 240
   5A2D F0                  134 	.db #0xF0	; 240
   5A2E D8                  135 	.db #0xD8	; 216
   5A2F F0                  136 	.db #0xF0	; 240
   5A30 F0                  137 	.db #0xF0	; 240
   5A31 CC                  138 	.db #0xCC	; 204
   5A32 CC                  139 	.db #0xCC	; 204
   5A33 D8                  140 	.db #0xD8	; 216
   5A34 CC                  141 	.db #0xCC	; 204
   5A35 CC                  142 	.db #0xCC	; 204
   5A36 D8                  143 	.db #0xD8	; 216
   5A37 E4                  144 	.db #0xE4	; 228
   5A38 CC                  145 	.db #0xCC	; 204
   5A39 F0                  146 	.db #0xF0	; 240
   5A3A CC                  147 	.db #0xCC	; 204
   5A3B CC                  148 	.db #0xCC	; 204
   5A3C D8                  149 	.db #0xD8	; 216
   5A3D D8                  150 	.db #0xD8	; 216
   5A3E F0                  151 	.db #0xF0	; 240
   5A3F D8                  152 	.db #0xD8	; 216
   5A40 F0                  153 	.db #0xF0	; 240
   5A41 F0                  154 	.db #0xF0	; 240
   5A42 D8                  155 	.db #0xD8	; 216
   5A43 F0                  156 	.db #0xF0	; 240
   5A44 CC                  157 	.db #0xCC	; 204
   5A45 D8                  158 	.db #0xD8	; 216
   5A46 F0                  159 	.db #0xF0	; 240
   5A47 CC                  160 	.db #0xCC	; 204
   5A48 F0                  161 	.db #0xF0	; 240
   5A49 F0                  162 	.db #0xF0	; 240
   5A4A F0                  163 	.db #0xF0	; 240
   5A4B D8                  164 	.db #0xD8	; 216
   5A4C D8                  165 	.db #0xD8	; 216
   5A4D F0                  166 	.db #0xF0	; 240
   5A4E D8                  167 	.db #0xD8	; 216
   5A4F D8                  168 	.db #0xD8	; 216
   5A50 F0                  169 	.db #0xF0	; 240
   5A51 D8                  170 	.db #0xD8	; 216
   5A52 E4                  171 	.db #0xE4	; 228
   5A53 CC                  172 	.db #0xCC	; 204
   5A54 F0                  173 	.db #0xF0	; 240
   5A55 E4                  174 	.db #0xE4	; 228
   5A56 CC                  175 	.db #0xCC	; 204
   5A57 F0                  176 	.db #0xF0	; 240
   5A58 F0                  177 	.db #0xF0	; 240
   5A59 E4                  178 	.db #0xE4	; 228
   5A5A D8                  179 	.db #0xD8	; 216
   5A5B F0                  180 	.db #0xF0	; 240
   5A5C CC                  181 	.db #0xCC	; 204
   5A5D D8                  182 	.db #0xD8	; 216
   5A5E E4                  183 	.db #0xE4	; 228
   5A5F D8                  184 	.db #0xD8	; 216
   5A60 D8                  185 	.db #0xD8	; 216
   5A61 E4                  186 	.db #0xE4	; 228
   5A62 F0                  187 	.db #0xF0	; 240
   5A63 D8                  188 	.db #0xD8	; 216
   5A64 D8                  189 	.db #0xD8	; 216
   5A65 F0                  190 	.db #0xF0	; 240
   5A66 D8                  191 	.db #0xD8	; 216
   5A67 D8                  192 	.db #0xD8	; 216
   5A68 F0                  193 	.db #0xF0	; 240
   5A69 D8                  194 	.db #0xD8	; 216
   5A6A CC                  195 	.db #0xCC	; 204
   5A6B CC                  196 	.db #0xCC	; 204
   5A6C D8                  197 	.db #0xD8	; 216
   5A6D CC                  198 	.db #0xCC	; 204
   5A6E CC                  199 	.db #0xCC	; 204
   5A6F D8                  200 	.db #0xD8	; 216
   5A70 F0                  201 	.db #0xF0	; 240
   5A71 F0                  202 	.db #0xF0	; 240
   5A72 D8                  203 	.db #0xD8	; 216
   5A73 F0                  204 	.db #0xF0	; 240
   5A74 F0                  205 	.db #0xF0	; 240
   5A75 D8                  206 	.db #0xD8	; 216
   5A76 F0                  207 	.db #0xF0	; 240
   5A77 F0                  208 	.db #0xF0	; 240
   5A78 D8                  209 	.db #0xD8	; 216
   5A79 CC                  210 	.db #0xCC	; 204
   5A7A CC                  211 	.db #0xCC	; 204
   5A7B D8                  212 	.db #0xD8	; 216
   5A7C CC                  213 	.db #0xCC	; 204
   5A7D CC                  214 	.db #0xCC	; 204
   5A7E D8                  215 	.db #0xD8	; 216
   5A7F D8                  216 	.db #0xD8	; 216
   5A80 F0                  217 	.db #0xF0	; 240
   5A81 F0                  218 	.db #0xF0	; 240
   5A82 CC                  219 	.db #0xCC	; 204
   5A83 CC                  220 	.db #0xCC	; 204
   5A84 F0                  221 	.db #0xF0	; 240
   5A85 CC                  222 	.db #0xCC	; 204
   5A86 CC                  223 	.db #0xCC	; 204
   5A87 D8                  224 	.db #0xD8	; 216
   5A88 F0                  225 	.db #0xF0	; 240
   5A89 F0                  226 	.db #0xF0	; 240
   5A8A D8                  227 	.db #0xD8	; 216
   5A8B F0                  228 	.db #0xF0	; 240
   5A8C F0                  229 	.db #0xF0	; 240
   5A8D D8                  230 	.db #0xD8	; 216
   5A8E D8                  231 	.db #0xD8	; 216
   5A8F F0                  232 	.db #0xF0	; 240
   5A90 D8                  233 	.db #0xD8	; 216
   5A91 D8                  234 	.db #0xD8	; 216
   5A92 F0                  235 	.db #0xF0	; 240
   5A93 D8                  236 	.db #0xD8	; 216
   5A94 E4                  237 	.db #0xE4	; 228
   5A95 CC                  238 	.db #0xCC	; 204
   5A96 F0                  239 	.db #0xF0	; 240
   5A97 E4                  240 	.db #0xE4	; 228
   5A98 CC                  241 	.db #0xCC	; 204
   5A99 F0                  242 	.db #0xF0	; 240
   5A9A E4                  243 	.db #0xE4	; 228
   5A9B CC                  244 	.db #0xCC	; 204
   5A9C D8                  245 	.db #0xD8	; 216
   5A9D CC                  246 	.db #0xCC	; 204
   5A9E CC                  247 	.db #0xCC	; 204
   5A9F D8                  248 	.db #0xD8	; 216
   5AA0 D8                  249 	.db #0xD8	; 216
   5AA1 F0                  250 	.db #0xF0	; 240
   5AA2 F0                  251 	.db #0xF0	; 240
   5AA3 D8                  252 	.db #0xD8	; 216
   5AA4 F0                  253 	.db #0xF0	; 240
   5AA5 F0                  254 	.db #0xF0	; 240
   5AA6 CC                  255 	.db #0xCC	; 204
   5AA7 CC                  256 	.db #0xCC	; 204
   5AA8 F0                  257 	.db #0xF0	; 240
   5AA9 CC                  258 	.db #0xCC	; 204
   5AAA CC                  259 	.db #0xCC	; 204
   5AAB F0                  260 	.db #0xF0	; 240
   5AAC D8                  261 	.db #0xD8	; 216
   5AAD F0                  262 	.db #0xF0	; 240
   5AAE D8                  263 	.db #0xD8	; 216
   5AAF D8                  264 	.db #0xD8	; 216
   5AB0 F0                  265 	.db #0xF0	; 240
   5AB1 D8                  266 	.db #0xD8	; 216
   5AB2 D8                  267 	.db #0xD8	; 216
   5AB3 F0                  268 	.db #0xF0	; 240
   5AB4 D8                  269 	.db #0xD8	; 216
   5AB5 E4                  270 	.db #0xE4	; 228
   5AB6 CC                  271 	.db #0xCC	; 204
   5AB7 F0                  272 	.db #0xF0	; 240
   5AB8 E4                  273 	.db #0xE4	; 228
   5AB9 CC                  274 	.db #0xCC	; 204
   5ABA F0                  275 	.db #0xF0	; 240
   5ABB CC                  276 	.db #0xCC	; 204
   5ABC CC                  277 	.db #0xCC	; 204
   5ABD D8                  278 	.db #0xD8	; 216
   5ABE CC                  279 	.db #0xCC	; 204
   5ABF CC                  280 	.db #0xCC	; 204
   5AC0 D8                  281 	.db #0xD8	; 216
   5AC1 D8                  282 	.db #0xD8	; 216
   5AC2 F0                  283 	.db #0xF0	; 240
   5AC3 D8                  284 	.db #0xD8	; 216
   5AC4 F0                  285 	.db #0xF0	; 240
   5AC5 F0                  286 	.db #0xF0	; 240
   5AC6 D8                  287 	.db #0xD8	; 216
   5AC7 F0                  288 	.db #0xF0	; 240
   5AC8 E4                  289 	.db #0xE4	; 228
   5AC9 D8                  290 	.db #0xD8	; 216
   5ACA F0                  291 	.db #0xF0	; 240
   5ACB E4                  292 	.db #0xE4	; 228
   5ACC F0                  293 	.db #0xF0	; 240
   5ACD F0                  294 	.db #0xF0	; 240
   5ACE CC                  295 	.db #0xCC	; 204
   5ACF F0                  296 	.db #0xF0	; 240
   5AD0 E4                  297 	.db #0xE4	; 228
   5AD1 D8                  298 	.db #0xD8	; 216
   5AD2 F0                  299 	.db #0xF0	; 240
   5AD3 E4                  300 	.db #0xE4	; 228
   5AD4 F0                  301 	.db #0xF0	; 240
   5AD5 F0                  302 	.db #0xF0	; 240
   5AD6 E4                  303 	.db #0xE4	; 228
   5AD7 F0                  304 	.db #0xF0	; 240
   5AD8 F0                  305 	.db #0xF0	; 240
   5AD9 E4                  306 	.db #0xE4	; 228
   5ADA F0                  307 	.db #0xF0	; 240
   5ADB F0                  308 	.db #0xF0	; 240
   5ADC E4                  309 	.db #0xE4	; 228
   5ADD CC                  310 	.db #0xCC	; 204
   5ADE F0                  311 	.db #0xF0	; 240
   5ADF CC                  312 	.db #0xCC	; 204
   5AE0 CC                  313 	.db #0xCC	; 204
   5AE1 D8                  314 	.db #0xD8	; 216
   5AE2 D8                  315 	.db #0xD8	; 216
   5AE3 F0                  316 	.db #0xF0	; 240
   5AE4 D8                  317 	.db #0xD8	; 216
   5AE5 D8                  318 	.db #0xD8	; 216
   5AE6 F0                  319 	.db #0xF0	; 240
   5AE7 D8                  320 	.db #0xD8	; 216
   5AE8 CC                  321 	.db #0xCC	; 204
   5AE9 CC                  322 	.db #0xCC	; 204
   5AEA D8                  323 	.db #0xD8	; 216
   5AEB E4                  324 	.db #0xE4	; 228
   5AEC CC                  325 	.db #0xCC	; 204
   5AED F0                  326 	.db #0xF0	; 240
   5AEE CC                  327 	.db #0xCC	; 204
   5AEF CC                  328 	.db #0xCC	; 204
   5AF0 D8                  329 	.db #0xD8	; 216
   5AF1 D8                  330 	.db #0xD8	; 216
   5AF2 F0                  331 	.db #0xF0	; 240
   5AF3 D8                  332 	.db #0xD8	; 216
   5AF4 D8                  333 	.db #0xD8	; 216
   5AF5 F0                  334 	.db #0xF0	; 240
   5AF6 D8                  335 	.db #0xD8	; 216
   5AF7 E4                  336 	.db #0xE4	; 228
   5AF8 CC                  337 	.db #0xCC	; 204
   5AF9 F0                  338 	.db #0xF0	; 240
   5AFA E4                  339 	.db #0xE4	; 228
   5AFB CC                  340 	.db #0xCC	; 204
   5AFC F0                  341 	.db #0xF0	; 240
   5AFD E4                  342 	.db #0xE4	; 228
   5AFE CC                  343 	.db #0xCC	; 204
   5AFF F0                  344 	.db #0xF0	; 240
   5B00 CC                  345 	.db #0xCC	; 204
   5B01 CC                  346 	.db #0xCC	; 204
   5B02 D8                  347 	.db #0xD8	; 216
   5B03 D8                  348 	.db #0xD8	; 216
   5B04 F0                  349 	.db #0xF0	; 240
   5B05 D8                  350 	.db #0xD8	; 216
   5B06 D8                  351 	.db #0xD8	; 216
   5B07 F0                  352 	.db #0xF0	; 240
   5B08 D8                  353 	.db #0xD8	; 216
   5B09 CC                  354 	.db #0xCC	; 204
   5B0A CC                  355 	.db #0xCC	; 204
   5B0B D8                  356 	.db #0xD8	; 216
   5B0C E4                  357 	.db #0xE4	; 228
   5B0D CC                  358 	.db #0xCC	; 204
   5B0E D8                  359 	.db #0xD8	; 216
   5B0F F0                  360 	.db #0xF0	; 240
   5B10 E4                  361 	.db #0xE4	; 228
   5B11 D8                  362 	.db #0xD8	; 216
   5B12 F0                  363 	.db #0xF0	; 240
   5B13 E4                  364 	.db #0xE4	; 228
   5B14 D8                  365 	.db #0xD8	; 216
   5B15 F0                  366 	.db #0xF0	; 240
   5B16 CC                  367 	.db #0xCC	; 204
   5B17 F0                  368 	.db #0xF0	; 240
   5B18 E4                  369 	.db #0xE4	; 228
   5B19 D8                  370 	.db #0xD8	; 216
   5B1A F0                  371 	.db #0xF0	; 240
   5B1B E4                  372 	.db #0xE4	; 228
   5B1C F0                  373 	.db #0xF0	; 240
   5B1D F0                  374 	.db #0xF0	; 240
                            375 	.area _INITIALIZER
                            376 	.area _CABS (ABS)
