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
   5962                      44 _G_numbers_big:
   5962 E4                   45 	.db #0xE4	; 228
   5963 CC                   46 	.db #0xCC	; 204
   5964 F0                   47 	.db #0xF0	; 240
   5965 CC                   48 	.db #0xCC	; 204
   5966 CC                   49 	.db #0xCC	; 204
   5967 D8                   50 	.db #0xD8	; 216
   5968 D8                   51 	.db #0xD8	; 216
   5969 F0                   52 	.db #0xF0	; 240
   596A D8                   53 	.db #0xD8	; 216
   596B D8                   54 	.db #0xD8	; 216
   596C E4                   55 	.db #0xE4	; 228
   596D D8                   56 	.db #0xD8	; 216
   596E D8                   57 	.db #0xD8	; 216
   596F E4                   58 	.db #0xE4	; 228
   5970 D8                   59 	.db #0xD8	; 216
   5971 D8                   60 	.db #0xD8	; 216
   5972 D8                   61 	.db #0xD8	; 216
   5973 D8                   62 	.db #0xD8	; 216
   5974 D8                   63 	.db #0xD8	; 216
   5975 D8                   64 	.db #0xD8	; 216
   5976 D8                   65 	.db #0xD8	; 216
   5977 CC                   66 	.db #0xCC	; 204
   5978 F0                   67 	.db #0xF0	; 240
   5979 D8                   68 	.db #0xD8	; 216
   597A CC                   69 	.db #0xCC	; 204
   597B F0                   70 	.db #0xF0	; 240
   597C D8                   71 	.db #0xD8	; 216
   597D E4                   72 	.db #0xE4	; 228
   597E CC                   73 	.db #0xCC	; 204
   597F F0                   74 	.db #0xF0	; 240
   5980 E4                   75 	.db #0xE4	; 228
   5981 CC                   76 	.db #0xCC	; 204
   5982 F0                   77 	.db #0xF0	; 240
   5983 F0                   78 	.db #0xF0	; 240
   5984 D8                   79 	.db #0xD8	; 216
   5985 F0                   80 	.db #0xF0	; 240
   5986 E4                   81 	.db #0xE4	; 228
   5987 D8                   82 	.db #0xD8	; 216
   5988 F0                   83 	.db #0xF0	; 240
   5989 D8                   84 	.db #0xD8	; 216
   598A D8                   85 	.db #0xD8	; 216
   598B F0                   86 	.db #0xF0	; 240
   598C F0                   87 	.db #0xF0	; 240
   598D D8                   88 	.db #0xD8	; 216
   598E F0                   89 	.db #0xF0	; 240
   598F F0                   90 	.db #0xF0	; 240
   5990 D8                   91 	.db #0xD8	; 216
   5991 F0                   92 	.db #0xF0	; 240
   5992 F0                   93 	.db #0xF0	; 240
   5993 D8                   94 	.db #0xD8	; 216
   5994 F0                   95 	.db #0xF0	; 240
   5995 F0                   96 	.db #0xF0	; 240
   5996 D8                   97 	.db #0xD8	; 216
   5997 F0                   98 	.db #0xF0	; 240
   5998 F0                   99 	.db #0xF0	; 240
   5999 D8                  100 	.db #0xD8	; 216
   599A F0                  101 	.db #0xF0	; 240
   599B F0                  102 	.db #0xF0	; 240
   599C D8                  103 	.db #0xD8	; 216
   599D F0                  104 	.db #0xF0	; 240
   599E CC                  105 	.db #0xCC	; 204
   599F CC                  106 	.db #0xCC	; 204
   59A0 D8                  107 	.db #0xD8	; 216
   59A1 CC                  108 	.db #0xCC	; 204
   59A2 CC                  109 	.db #0xCC	; 204
   59A3 D8                  110 	.db #0xD8	; 216
   59A4 E4                  111 	.db #0xE4	; 228
   59A5 CC                  112 	.db #0xCC	; 204
   59A6 F0                  113 	.db #0xF0	; 240
   59A7 CC                  114 	.db #0xCC	; 204
   59A8 CC                  115 	.db #0xCC	; 204
   59A9 D8                  116 	.db #0xD8	; 216
   59AA D8                  117 	.db #0xD8	; 216
   59AB F0                  118 	.db #0xF0	; 240
   59AC D8                  119 	.db #0xD8	; 216
   59AD F0                  120 	.db #0xF0	; 240
   59AE F0                  121 	.db #0xF0	; 240
   59AF D8                  122 	.db #0xD8	; 216
   59B0 F0                  123 	.db #0xF0	; 240
   59B1 E4                  124 	.db #0xE4	; 228
   59B2 D8                  125 	.db #0xD8	; 216
   59B3 F0                  126 	.db #0xF0	; 240
   59B4 CC                  127 	.db #0xCC	; 204
   59B5 F0                  128 	.db #0xF0	; 240
   59B6 E4                  129 	.db #0xE4	; 228
   59B7 D8                  130 	.db #0xD8	; 216
   59B8 F0                  131 	.db #0xF0	; 240
   59B9 CC                  132 	.db #0xCC	; 204
   59BA F0                  133 	.db #0xF0	; 240
   59BB F0                  134 	.db #0xF0	; 240
   59BC D8                  135 	.db #0xD8	; 216
   59BD F0                  136 	.db #0xF0	; 240
   59BE F0                  137 	.db #0xF0	; 240
   59BF CC                  138 	.db #0xCC	; 204
   59C0 CC                  139 	.db #0xCC	; 204
   59C1 D8                  140 	.db #0xD8	; 216
   59C2 CC                  141 	.db #0xCC	; 204
   59C3 CC                  142 	.db #0xCC	; 204
   59C4 D8                  143 	.db #0xD8	; 216
   59C5 E4                  144 	.db #0xE4	; 228
   59C6 CC                  145 	.db #0xCC	; 204
   59C7 F0                  146 	.db #0xF0	; 240
   59C8 CC                  147 	.db #0xCC	; 204
   59C9 CC                  148 	.db #0xCC	; 204
   59CA D8                  149 	.db #0xD8	; 216
   59CB D8                  150 	.db #0xD8	; 216
   59CC F0                  151 	.db #0xF0	; 240
   59CD D8                  152 	.db #0xD8	; 216
   59CE F0                  153 	.db #0xF0	; 240
   59CF F0                  154 	.db #0xF0	; 240
   59D0 D8                  155 	.db #0xD8	; 216
   59D1 F0                  156 	.db #0xF0	; 240
   59D2 CC                  157 	.db #0xCC	; 204
   59D3 D8                  158 	.db #0xD8	; 216
   59D4 F0                  159 	.db #0xF0	; 240
   59D5 CC                  160 	.db #0xCC	; 204
   59D6 F0                  161 	.db #0xF0	; 240
   59D7 F0                  162 	.db #0xF0	; 240
   59D8 F0                  163 	.db #0xF0	; 240
   59D9 D8                  164 	.db #0xD8	; 216
   59DA D8                  165 	.db #0xD8	; 216
   59DB F0                  166 	.db #0xF0	; 240
   59DC D8                  167 	.db #0xD8	; 216
   59DD D8                  168 	.db #0xD8	; 216
   59DE F0                  169 	.db #0xF0	; 240
   59DF D8                  170 	.db #0xD8	; 216
   59E0 E4                  171 	.db #0xE4	; 228
   59E1 CC                  172 	.db #0xCC	; 204
   59E2 F0                  173 	.db #0xF0	; 240
   59E3 E4                  174 	.db #0xE4	; 228
   59E4 CC                  175 	.db #0xCC	; 204
   59E5 F0                  176 	.db #0xF0	; 240
   59E6 F0                  177 	.db #0xF0	; 240
   59E7 E4                  178 	.db #0xE4	; 228
   59E8 D8                  179 	.db #0xD8	; 216
   59E9 F0                  180 	.db #0xF0	; 240
   59EA CC                  181 	.db #0xCC	; 204
   59EB D8                  182 	.db #0xD8	; 216
   59EC E4                  183 	.db #0xE4	; 228
   59ED D8                  184 	.db #0xD8	; 216
   59EE D8                  185 	.db #0xD8	; 216
   59EF E4                  186 	.db #0xE4	; 228
   59F0 F0                  187 	.db #0xF0	; 240
   59F1 D8                  188 	.db #0xD8	; 216
   59F2 D8                  189 	.db #0xD8	; 216
   59F3 F0                  190 	.db #0xF0	; 240
   59F4 D8                  191 	.db #0xD8	; 216
   59F5 D8                  192 	.db #0xD8	; 216
   59F6 F0                  193 	.db #0xF0	; 240
   59F7 D8                  194 	.db #0xD8	; 216
   59F8 CC                  195 	.db #0xCC	; 204
   59F9 CC                  196 	.db #0xCC	; 204
   59FA D8                  197 	.db #0xD8	; 216
   59FB CC                  198 	.db #0xCC	; 204
   59FC CC                  199 	.db #0xCC	; 204
   59FD D8                  200 	.db #0xD8	; 216
   59FE F0                  201 	.db #0xF0	; 240
   59FF F0                  202 	.db #0xF0	; 240
   5A00 D8                  203 	.db #0xD8	; 216
   5A01 F0                  204 	.db #0xF0	; 240
   5A02 F0                  205 	.db #0xF0	; 240
   5A03 D8                  206 	.db #0xD8	; 216
   5A04 F0                  207 	.db #0xF0	; 240
   5A05 F0                  208 	.db #0xF0	; 240
   5A06 D8                  209 	.db #0xD8	; 216
   5A07 CC                  210 	.db #0xCC	; 204
   5A08 CC                  211 	.db #0xCC	; 204
   5A09 D8                  212 	.db #0xD8	; 216
   5A0A CC                  213 	.db #0xCC	; 204
   5A0B CC                  214 	.db #0xCC	; 204
   5A0C D8                  215 	.db #0xD8	; 216
   5A0D D8                  216 	.db #0xD8	; 216
   5A0E F0                  217 	.db #0xF0	; 240
   5A0F F0                  218 	.db #0xF0	; 240
   5A10 CC                  219 	.db #0xCC	; 204
   5A11 CC                  220 	.db #0xCC	; 204
   5A12 F0                  221 	.db #0xF0	; 240
   5A13 CC                  222 	.db #0xCC	; 204
   5A14 CC                  223 	.db #0xCC	; 204
   5A15 D8                  224 	.db #0xD8	; 216
   5A16 F0                  225 	.db #0xF0	; 240
   5A17 F0                  226 	.db #0xF0	; 240
   5A18 D8                  227 	.db #0xD8	; 216
   5A19 F0                  228 	.db #0xF0	; 240
   5A1A F0                  229 	.db #0xF0	; 240
   5A1B D8                  230 	.db #0xD8	; 216
   5A1C D8                  231 	.db #0xD8	; 216
   5A1D F0                  232 	.db #0xF0	; 240
   5A1E D8                  233 	.db #0xD8	; 216
   5A1F D8                  234 	.db #0xD8	; 216
   5A20 F0                  235 	.db #0xF0	; 240
   5A21 D8                  236 	.db #0xD8	; 216
   5A22 E4                  237 	.db #0xE4	; 228
   5A23 CC                  238 	.db #0xCC	; 204
   5A24 F0                  239 	.db #0xF0	; 240
   5A25 E4                  240 	.db #0xE4	; 228
   5A26 CC                  241 	.db #0xCC	; 204
   5A27 F0                  242 	.db #0xF0	; 240
   5A28 E4                  243 	.db #0xE4	; 228
   5A29 CC                  244 	.db #0xCC	; 204
   5A2A D8                  245 	.db #0xD8	; 216
   5A2B CC                  246 	.db #0xCC	; 204
   5A2C CC                  247 	.db #0xCC	; 204
   5A2D D8                  248 	.db #0xD8	; 216
   5A2E D8                  249 	.db #0xD8	; 216
   5A2F F0                  250 	.db #0xF0	; 240
   5A30 F0                  251 	.db #0xF0	; 240
   5A31 D8                  252 	.db #0xD8	; 216
   5A32 F0                  253 	.db #0xF0	; 240
   5A33 F0                  254 	.db #0xF0	; 240
   5A34 CC                  255 	.db #0xCC	; 204
   5A35 CC                  256 	.db #0xCC	; 204
   5A36 F0                  257 	.db #0xF0	; 240
   5A37 CC                  258 	.db #0xCC	; 204
   5A38 CC                  259 	.db #0xCC	; 204
   5A39 F0                  260 	.db #0xF0	; 240
   5A3A D8                  261 	.db #0xD8	; 216
   5A3B F0                  262 	.db #0xF0	; 240
   5A3C D8                  263 	.db #0xD8	; 216
   5A3D D8                  264 	.db #0xD8	; 216
   5A3E F0                  265 	.db #0xF0	; 240
   5A3F D8                  266 	.db #0xD8	; 216
   5A40 D8                  267 	.db #0xD8	; 216
   5A41 F0                  268 	.db #0xF0	; 240
   5A42 D8                  269 	.db #0xD8	; 216
   5A43 E4                  270 	.db #0xE4	; 228
   5A44 CC                  271 	.db #0xCC	; 204
   5A45 F0                  272 	.db #0xF0	; 240
   5A46 E4                  273 	.db #0xE4	; 228
   5A47 CC                  274 	.db #0xCC	; 204
   5A48 F0                  275 	.db #0xF0	; 240
   5A49 CC                  276 	.db #0xCC	; 204
   5A4A CC                  277 	.db #0xCC	; 204
   5A4B D8                  278 	.db #0xD8	; 216
   5A4C CC                  279 	.db #0xCC	; 204
   5A4D CC                  280 	.db #0xCC	; 204
   5A4E D8                  281 	.db #0xD8	; 216
   5A4F D8                  282 	.db #0xD8	; 216
   5A50 F0                  283 	.db #0xF0	; 240
   5A51 D8                  284 	.db #0xD8	; 216
   5A52 F0                  285 	.db #0xF0	; 240
   5A53 F0                  286 	.db #0xF0	; 240
   5A54 D8                  287 	.db #0xD8	; 216
   5A55 F0                  288 	.db #0xF0	; 240
   5A56 E4                  289 	.db #0xE4	; 228
   5A57 D8                  290 	.db #0xD8	; 216
   5A58 F0                  291 	.db #0xF0	; 240
   5A59 E4                  292 	.db #0xE4	; 228
   5A5A F0                  293 	.db #0xF0	; 240
   5A5B F0                  294 	.db #0xF0	; 240
   5A5C CC                  295 	.db #0xCC	; 204
   5A5D F0                  296 	.db #0xF0	; 240
   5A5E E4                  297 	.db #0xE4	; 228
   5A5F D8                  298 	.db #0xD8	; 216
   5A60 F0                  299 	.db #0xF0	; 240
   5A61 E4                  300 	.db #0xE4	; 228
   5A62 F0                  301 	.db #0xF0	; 240
   5A63 F0                  302 	.db #0xF0	; 240
   5A64 E4                  303 	.db #0xE4	; 228
   5A65 F0                  304 	.db #0xF0	; 240
   5A66 F0                  305 	.db #0xF0	; 240
   5A67 E4                  306 	.db #0xE4	; 228
   5A68 F0                  307 	.db #0xF0	; 240
   5A69 F0                  308 	.db #0xF0	; 240
   5A6A E4                  309 	.db #0xE4	; 228
   5A6B CC                  310 	.db #0xCC	; 204
   5A6C F0                  311 	.db #0xF0	; 240
   5A6D CC                  312 	.db #0xCC	; 204
   5A6E CC                  313 	.db #0xCC	; 204
   5A6F D8                  314 	.db #0xD8	; 216
   5A70 D8                  315 	.db #0xD8	; 216
   5A71 F0                  316 	.db #0xF0	; 240
   5A72 D8                  317 	.db #0xD8	; 216
   5A73 D8                  318 	.db #0xD8	; 216
   5A74 F0                  319 	.db #0xF0	; 240
   5A75 D8                  320 	.db #0xD8	; 216
   5A76 CC                  321 	.db #0xCC	; 204
   5A77 CC                  322 	.db #0xCC	; 204
   5A78 D8                  323 	.db #0xD8	; 216
   5A79 E4                  324 	.db #0xE4	; 228
   5A7A CC                  325 	.db #0xCC	; 204
   5A7B F0                  326 	.db #0xF0	; 240
   5A7C CC                  327 	.db #0xCC	; 204
   5A7D CC                  328 	.db #0xCC	; 204
   5A7E D8                  329 	.db #0xD8	; 216
   5A7F D8                  330 	.db #0xD8	; 216
   5A80 F0                  331 	.db #0xF0	; 240
   5A81 D8                  332 	.db #0xD8	; 216
   5A82 D8                  333 	.db #0xD8	; 216
   5A83 F0                  334 	.db #0xF0	; 240
   5A84 D8                  335 	.db #0xD8	; 216
   5A85 E4                  336 	.db #0xE4	; 228
   5A86 CC                  337 	.db #0xCC	; 204
   5A87 F0                  338 	.db #0xF0	; 240
   5A88 E4                  339 	.db #0xE4	; 228
   5A89 CC                  340 	.db #0xCC	; 204
   5A8A F0                  341 	.db #0xF0	; 240
   5A8B E4                  342 	.db #0xE4	; 228
   5A8C CC                  343 	.db #0xCC	; 204
   5A8D F0                  344 	.db #0xF0	; 240
   5A8E CC                  345 	.db #0xCC	; 204
   5A8F CC                  346 	.db #0xCC	; 204
   5A90 D8                  347 	.db #0xD8	; 216
   5A91 D8                  348 	.db #0xD8	; 216
   5A92 F0                  349 	.db #0xF0	; 240
   5A93 D8                  350 	.db #0xD8	; 216
   5A94 D8                  351 	.db #0xD8	; 216
   5A95 F0                  352 	.db #0xF0	; 240
   5A96 D8                  353 	.db #0xD8	; 216
   5A97 CC                  354 	.db #0xCC	; 204
   5A98 CC                  355 	.db #0xCC	; 204
   5A99 D8                  356 	.db #0xD8	; 216
   5A9A E4                  357 	.db #0xE4	; 228
   5A9B CC                  358 	.db #0xCC	; 204
   5A9C D8                  359 	.db #0xD8	; 216
   5A9D F0                  360 	.db #0xF0	; 240
   5A9E E4                  361 	.db #0xE4	; 228
   5A9F D8                  362 	.db #0xD8	; 216
   5AA0 F0                  363 	.db #0xF0	; 240
   5AA1 E4                  364 	.db #0xE4	; 228
   5AA2 D8                  365 	.db #0xD8	; 216
   5AA3 F0                  366 	.db #0xF0	; 240
   5AA4 CC                  367 	.db #0xCC	; 204
   5AA5 F0                  368 	.db #0xF0	; 240
   5AA6 E4                  369 	.db #0xE4	; 228
   5AA7 D8                  370 	.db #0xD8	; 216
   5AA8 F0                  371 	.db #0xF0	; 240
   5AA9 E4                  372 	.db #0xE4	; 228
   5AAA F0                  373 	.db #0xF0	; 240
   5AAB F0                  374 	.db #0xF0	; 240
                            375 	.area _INITIALIZER
                            376 	.area _CABS (ABS)
