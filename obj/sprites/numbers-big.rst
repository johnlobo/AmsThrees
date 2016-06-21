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
   4B80                      44 _G_numbers_big:
   4B80 E4                   45 	.db #0xE4	; 228
   4B81 CC                   46 	.db #0xCC	; 204
   4B82 F0                   47 	.db #0xF0	; 240
   4B83 CC                   48 	.db #0xCC	; 204
   4B84 CC                   49 	.db #0xCC	; 204
   4B85 D8                   50 	.db #0xD8	; 216
   4B86 D8                   51 	.db #0xD8	; 216
   4B87 F0                   52 	.db #0xF0	; 240
   4B88 D8                   53 	.db #0xD8	; 216
   4B89 D8                   54 	.db #0xD8	; 216
   4B8A E4                   55 	.db #0xE4	; 228
   4B8B D8                   56 	.db #0xD8	; 216
   4B8C D8                   57 	.db #0xD8	; 216
   4B8D E4                   58 	.db #0xE4	; 228
   4B8E D8                   59 	.db #0xD8	; 216
   4B8F D8                   60 	.db #0xD8	; 216
   4B90 D8                   61 	.db #0xD8	; 216
   4B91 D8                   62 	.db #0xD8	; 216
   4B92 D8                   63 	.db #0xD8	; 216
   4B93 D8                   64 	.db #0xD8	; 216
   4B94 D8                   65 	.db #0xD8	; 216
   4B95 CC                   66 	.db #0xCC	; 204
   4B96 F0                   67 	.db #0xF0	; 240
   4B97 D8                   68 	.db #0xD8	; 216
   4B98 CC                   69 	.db #0xCC	; 204
   4B99 F0                   70 	.db #0xF0	; 240
   4B9A D8                   71 	.db #0xD8	; 216
   4B9B E4                   72 	.db #0xE4	; 228
   4B9C CC                   73 	.db #0xCC	; 204
   4B9D F0                   74 	.db #0xF0	; 240
   4B9E E4                   75 	.db #0xE4	; 228
   4B9F CC                   76 	.db #0xCC	; 204
   4BA0 F0                   77 	.db #0xF0	; 240
   4BA1 F0                   78 	.db #0xF0	; 240
   4BA2 D8                   79 	.db #0xD8	; 216
   4BA3 F0                   80 	.db #0xF0	; 240
   4BA4 E4                   81 	.db #0xE4	; 228
   4BA5 D8                   82 	.db #0xD8	; 216
   4BA6 F0                   83 	.db #0xF0	; 240
   4BA7 D8                   84 	.db #0xD8	; 216
   4BA8 D8                   85 	.db #0xD8	; 216
   4BA9 F0                   86 	.db #0xF0	; 240
   4BAA F0                   87 	.db #0xF0	; 240
   4BAB D8                   88 	.db #0xD8	; 216
   4BAC F0                   89 	.db #0xF0	; 240
   4BAD F0                   90 	.db #0xF0	; 240
   4BAE D8                   91 	.db #0xD8	; 216
   4BAF F0                   92 	.db #0xF0	; 240
   4BB0 F0                   93 	.db #0xF0	; 240
   4BB1 D8                   94 	.db #0xD8	; 216
   4BB2 F0                   95 	.db #0xF0	; 240
   4BB3 F0                   96 	.db #0xF0	; 240
   4BB4 D8                   97 	.db #0xD8	; 216
   4BB5 F0                   98 	.db #0xF0	; 240
   4BB6 F0                   99 	.db #0xF0	; 240
   4BB7 D8                  100 	.db #0xD8	; 216
   4BB8 F0                  101 	.db #0xF0	; 240
   4BB9 F0                  102 	.db #0xF0	; 240
   4BBA D8                  103 	.db #0xD8	; 216
   4BBB F0                  104 	.db #0xF0	; 240
   4BBC CC                  105 	.db #0xCC	; 204
   4BBD CC                  106 	.db #0xCC	; 204
   4BBE D8                  107 	.db #0xD8	; 216
   4BBF CC                  108 	.db #0xCC	; 204
   4BC0 CC                  109 	.db #0xCC	; 204
   4BC1 D8                  110 	.db #0xD8	; 216
   4BC2 E4                  111 	.db #0xE4	; 228
   4BC3 CC                  112 	.db #0xCC	; 204
   4BC4 F0                  113 	.db #0xF0	; 240
   4BC5 CC                  114 	.db #0xCC	; 204
   4BC6 CC                  115 	.db #0xCC	; 204
   4BC7 D8                  116 	.db #0xD8	; 216
   4BC8 D8                  117 	.db #0xD8	; 216
   4BC9 F0                  118 	.db #0xF0	; 240
   4BCA D8                  119 	.db #0xD8	; 216
   4BCB F0                  120 	.db #0xF0	; 240
   4BCC F0                  121 	.db #0xF0	; 240
   4BCD D8                  122 	.db #0xD8	; 216
   4BCE F0                  123 	.db #0xF0	; 240
   4BCF E4                  124 	.db #0xE4	; 228
   4BD0 D8                  125 	.db #0xD8	; 216
   4BD1 F0                  126 	.db #0xF0	; 240
   4BD2 CC                  127 	.db #0xCC	; 204
   4BD3 F0                  128 	.db #0xF0	; 240
   4BD4 E4                  129 	.db #0xE4	; 228
   4BD5 D8                  130 	.db #0xD8	; 216
   4BD6 F0                  131 	.db #0xF0	; 240
   4BD7 CC                  132 	.db #0xCC	; 204
   4BD8 F0                  133 	.db #0xF0	; 240
   4BD9 F0                  134 	.db #0xF0	; 240
   4BDA D8                  135 	.db #0xD8	; 216
   4BDB F0                  136 	.db #0xF0	; 240
   4BDC F0                  137 	.db #0xF0	; 240
   4BDD CC                  138 	.db #0xCC	; 204
   4BDE CC                  139 	.db #0xCC	; 204
   4BDF D8                  140 	.db #0xD8	; 216
   4BE0 CC                  141 	.db #0xCC	; 204
   4BE1 CC                  142 	.db #0xCC	; 204
   4BE2 D8                  143 	.db #0xD8	; 216
   4BE3 E4                  144 	.db #0xE4	; 228
   4BE4 CC                  145 	.db #0xCC	; 204
   4BE5 F0                  146 	.db #0xF0	; 240
   4BE6 CC                  147 	.db #0xCC	; 204
   4BE7 CC                  148 	.db #0xCC	; 204
   4BE8 D8                  149 	.db #0xD8	; 216
   4BE9 D8                  150 	.db #0xD8	; 216
   4BEA F0                  151 	.db #0xF0	; 240
   4BEB D8                  152 	.db #0xD8	; 216
   4BEC F0                  153 	.db #0xF0	; 240
   4BED F0                  154 	.db #0xF0	; 240
   4BEE D8                  155 	.db #0xD8	; 216
   4BEF F0                  156 	.db #0xF0	; 240
   4BF0 CC                  157 	.db #0xCC	; 204
   4BF1 D8                  158 	.db #0xD8	; 216
   4BF2 F0                  159 	.db #0xF0	; 240
   4BF3 CC                  160 	.db #0xCC	; 204
   4BF4 F0                  161 	.db #0xF0	; 240
   4BF5 F0                  162 	.db #0xF0	; 240
   4BF6 F0                  163 	.db #0xF0	; 240
   4BF7 D8                  164 	.db #0xD8	; 216
   4BF8 D8                  165 	.db #0xD8	; 216
   4BF9 F0                  166 	.db #0xF0	; 240
   4BFA D8                  167 	.db #0xD8	; 216
   4BFB D8                  168 	.db #0xD8	; 216
   4BFC F0                  169 	.db #0xF0	; 240
   4BFD D8                  170 	.db #0xD8	; 216
   4BFE E4                  171 	.db #0xE4	; 228
   4BFF CC                  172 	.db #0xCC	; 204
   4C00 F0                  173 	.db #0xF0	; 240
   4C01 E4                  174 	.db #0xE4	; 228
   4C02 CC                  175 	.db #0xCC	; 204
   4C03 F0                  176 	.db #0xF0	; 240
   4C04 F0                  177 	.db #0xF0	; 240
   4C05 E4                  178 	.db #0xE4	; 228
   4C06 D8                  179 	.db #0xD8	; 216
   4C07 F0                  180 	.db #0xF0	; 240
   4C08 CC                  181 	.db #0xCC	; 204
   4C09 D8                  182 	.db #0xD8	; 216
   4C0A E4                  183 	.db #0xE4	; 228
   4C0B D8                  184 	.db #0xD8	; 216
   4C0C D8                  185 	.db #0xD8	; 216
   4C0D E4                  186 	.db #0xE4	; 228
   4C0E F0                  187 	.db #0xF0	; 240
   4C0F D8                  188 	.db #0xD8	; 216
   4C10 D8                  189 	.db #0xD8	; 216
   4C11 F0                  190 	.db #0xF0	; 240
   4C12 D8                  191 	.db #0xD8	; 216
   4C13 D8                  192 	.db #0xD8	; 216
   4C14 F0                  193 	.db #0xF0	; 240
   4C15 D8                  194 	.db #0xD8	; 216
   4C16 CC                  195 	.db #0xCC	; 204
   4C17 CC                  196 	.db #0xCC	; 204
   4C18 D8                  197 	.db #0xD8	; 216
   4C19 CC                  198 	.db #0xCC	; 204
   4C1A CC                  199 	.db #0xCC	; 204
   4C1B D8                  200 	.db #0xD8	; 216
   4C1C F0                  201 	.db #0xF0	; 240
   4C1D F0                  202 	.db #0xF0	; 240
   4C1E D8                  203 	.db #0xD8	; 216
   4C1F F0                  204 	.db #0xF0	; 240
   4C20 F0                  205 	.db #0xF0	; 240
   4C21 D8                  206 	.db #0xD8	; 216
   4C22 F0                  207 	.db #0xF0	; 240
   4C23 F0                  208 	.db #0xF0	; 240
   4C24 D8                  209 	.db #0xD8	; 216
   4C25 CC                  210 	.db #0xCC	; 204
   4C26 CC                  211 	.db #0xCC	; 204
   4C27 D8                  212 	.db #0xD8	; 216
   4C28 CC                  213 	.db #0xCC	; 204
   4C29 CC                  214 	.db #0xCC	; 204
   4C2A D8                  215 	.db #0xD8	; 216
   4C2B D8                  216 	.db #0xD8	; 216
   4C2C F0                  217 	.db #0xF0	; 240
   4C2D F0                  218 	.db #0xF0	; 240
   4C2E CC                  219 	.db #0xCC	; 204
   4C2F CC                  220 	.db #0xCC	; 204
   4C30 F0                  221 	.db #0xF0	; 240
   4C31 CC                  222 	.db #0xCC	; 204
   4C32 CC                  223 	.db #0xCC	; 204
   4C33 D8                  224 	.db #0xD8	; 216
   4C34 F0                  225 	.db #0xF0	; 240
   4C35 F0                  226 	.db #0xF0	; 240
   4C36 D8                  227 	.db #0xD8	; 216
   4C37 F0                  228 	.db #0xF0	; 240
   4C38 F0                  229 	.db #0xF0	; 240
   4C39 D8                  230 	.db #0xD8	; 216
   4C3A D8                  231 	.db #0xD8	; 216
   4C3B F0                  232 	.db #0xF0	; 240
   4C3C D8                  233 	.db #0xD8	; 216
   4C3D D8                  234 	.db #0xD8	; 216
   4C3E F0                  235 	.db #0xF0	; 240
   4C3F D8                  236 	.db #0xD8	; 216
   4C40 E4                  237 	.db #0xE4	; 228
   4C41 CC                  238 	.db #0xCC	; 204
   4C42 F0                  239 	.db #0xF0	; 240
   4C43 E4                  240 	.db #0xE4	; 228
   4C44 CC                  241 	.db #0xCC	; 204
   4C45 F0                  242 	.db #0xF0	; 240
   4C46 E4                  243 	.db #0xE4	; 228
   4C47 CC                  244 	.db #0xCC	; 204
   4C48 D8                  245 	.db #0xD8	; 216
   4C49 CC                  246 	.db #0xCC	; 204
   4C4A CC                  247 	.db #0xCC	; 204
   4C4B D8                  248 	.db #0xD8	; 216
   4C4C D8                  249 	.db #0xD8	; 216
   4C4D F0                  250 	.db #0xF0	; 240
   4C4E F0                  251 	.db #0xF0	; 240
   4C4F D8                  252 	.db #0xD8	; 216
   4C50 F0                  253 	.db #0xF0	; 240
   4C51 F0                  254 	.db #0xF0	; 240
   4C52 CC                  255 	.db #0xCC	; 204
   4C53 CC                  256 	.db #0xCC	; 204
   4C54 F0                  257 	.db #0xF0	; 240
   4C55 CC                  258 	.db #0xCC	; 204
   4C56 CC                  259 	.db #0xCC	; 204
   4C57 F0                  260 	.db #0xF0	; 240
   4C58 D8                  261 	.db #0xD8	; 216
   4C59 F0                  262 	.db #0xF0	; 240
   4C5A D8                  263 	.db #0xD8	; 216
   4C5B D8                  264 	.db #0xD8	; 216
   4C5C F0                  265 	.db #0xF0	; 240
   4C5D D8                  266 	.db #0xD8	; 216
   4C5E D8                  267 	.db #0xD8	; 216
   4C5F F0                  268 	.db #0xF0	; 240
   4C60 D8                  269 	.db #0xD8	; 216
   4C61 E4                  270 	.db #0xE4	; 228
   4C62 CC                  271 	.db #0xCC	; 204
   4C63 F0                  272 	.db #0xF0	; 240
   4C64 E4                  273 	.db #0xE4	; 228
   4C65 CC                  274 	.db #0xCC	; 204
   4C66 F0                  275 	.db #0xF0	; 240
   4C67 CC                  276 	.db #0xCC	; 204
   4C68 CC                  277 	.db #0xCC	; 204
   4C69 D8                  278 	.db #0xD8	; 216
   4C6A CC                  279 	.db #0xCC	; 204
   4C6B CC                  280 	.db #0xCC	; 204
   4C6C D8                  281 	.db #0xD8	; 216
   4C6D D8                  282 	.db #0xD8	; 216
   4C6E F0                  283 	.db #0xF0	; 240
   4C6F D8                  284 	.db #0xD8	; 216
   4C70 F0                  285 	.db #0xF0	; 240
   4C71 F0                  286 	.db #0xF0	; 240
   4C72 D8                  287 	.db #0xD8	; 216
   4C73 F0                  288 	.db #0xF0	; 240
   4C74 E4                  289 	.db #0xE4	; 228
   4C75 D8                  290 	.db #0xD8	; 216
   4C76 F0                  291 	.db #0xF0	; 240
   4C77 E4                  292 	.db #0xE4	; 228
   4C78 F0                  293 	.db #0xF0	; 240
   4C79 F0                  294 	.db #0xF0	; 240
   4C7A CC                  295 	.db #0xCC	; 204
   4C7B F0                  296 	.db #0xF0	; 240
   4C7C E4                  297 	.db #0xE4	; 228
   4C7D D8                  298 	.db #0xD8	; 216
   4C7E F0                  299 	.db #0xF0	; 240
   4C7F E4                  300 	.db #0xE4	; 228
   4C80 F0                  301 	.db #0xF0	; 240
   4C81 F0                  302 	.db #0xF0	; 240
   4C82 E4                  303 	.db #0xE4	; 228
   4C83 F0                  304 	.db #0xF0	; 240
   4C84 F0                  305 	.db #0xF0	; 240
   4C85 E4                  306 	.db #0xE4	; 228
   4C86 F0                  307 	.db #0xF0	; 240
   4C87 F0                  308 	.db #0xF0	; 240
   4C88 E4                  309 	.db #0xE4	; 228
   4C89 CC                  310 	.db #0xCC	; 204
   4C8A F0                  311 	.db #0xF0	; 240
   4C8B CC                  312 	.db #0xCC	; 204
   4C8C CC                  313 	.db #0xCC	; 204
   4C8D D8                  314 	.db #0xD8	; 216
   4C8E D8                  315 	.db #0xD8	; 216
   4C8F F0                  316 	.db #0xF0	; 240
   4C90 D8                  317 	.db #0xD8	; 216
   4C91 D8                  318 	.db #0xD8	; 216
   4C92 F0                  319 	.db #0xF0	; 240
   4C93 D8                  320 	.db #0xD8	; 216
   4C94 CC                  321 	.db #0xCC	; 204
   4C95 CC                  322 	.db #0xCC	; 204
   4C96 D8                  323 	.db #0xD8	; 216
   4C97 E4                  324 	.db #0xE4	; 228
   4C98 CC                  325 	.db #0xCC	; 204
   4C99 F0                  326 	.db #0xF0	; 240
   4C9A CC                  327 	.db #0xCC	; 204
   4C9B CC                  328 	.db #0xCC	; 204
   4C9C D8                  329 	.db #0xD8	; 216
   4C9D D8                  330 	.db #0xD8	; 216
   4C9E F0                  331 	.db #0xF0	; 240
   4C9F D8                  332 	.db #0xD8	; 216
   4CA0 D8                  333 	.db #0xD8	; 216
   4CA1 F0                  334 	.db #0xF0	; 240
   4CA2 D8                  335 	.db #0xD8	; 216
   4CA3 E4                  336 	.db #0xE4	; 228
   4CA4 CC                  337 	.db #0xCC	; 204
   4CA5 F0                  338 	.db #0xF0	; 240
   4CA6 E4                  339 	.db #0xE4	; 228
   4CA7 CC                  340 	.db #0xCC	; 204
   4CA8 F0                  341 	.db #0xF0	; 240
   4CA9 E4                  342 	.db #0xE4	; 228
   4CAA CC                  343 	.db #0xCC	; 204
   4CAB F0                  344 	.db #0xF0	; 240
   4CAC CC                  345 	.db #0xCC	; 204
   4CAD CC                  346 	.db #0xCC	; 204
   4CAE D8                  347 	.db #0xD8	; 216
   4CAF D8                  348 	.db #0xD8	; 216
   4CB0 F0                  349 	.db #0xF0	; 240
   4CB1 D8                  350 	.db #0xD8	; 216
   4CB2 D8                  351 	.db #0xD8	; 216
   4CB3 F0                  352 	.db #0xF0	; 240
   4CB4 D8                  353 	.db #0xD8	; 216
   4CB5 CC                  354 	.db #0xCC	; 204
   4CB6 CC                  355 	.db #0xCC	; 204
   4CB7 D8                  356 	.db #0xD8	; 216
   4CB8 E4                  357 	.db #0xE4	; 228
   4CB9 CC                  358 	.db #0xCC	; 204
   4CBA D8                  359 	.db #0xD8	; 216
   4CBB F0                  360 	.db #0xF0	; 240
   4CBC E4                  361 	.db #0xE4	; 228
   4CBD D8                  362 	.db #0xD8	; 216
   4CBE F0                  363 	.db #0xF0	; 240
   4CBF E4                  364 	.db #0xE4	; 228
   4CC0 D8                  365 	.db #0xD8	; 216
   4CC1 F0                  366 	.db #0xF0	; 240
   4CC2 CC                  367 	.db #0xCC	; 204
   4CC3 F0                  368 	.db #0xF0	; 240
   4CC4 E4                  369 	.db #0xE4	; 228
   4CC5 D8                  370 	.db #0xD8	; 216
   4CC6 F0                  371 	.db #0xF0	; 240
   4CC7 E4                  372 	.db #0xE4	; 228
   4CC8 F0                  373 	.db #0xF0	; 240
   4CC9 F0                  374 	.db #0xF0	; 240
                            375 	.area _INITIALIZER
                            376 	.area _CABS (ABS)
