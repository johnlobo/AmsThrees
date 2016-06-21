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
   4EC0                      59 _tile_tiles_00:
   4EC0 F0                   60 	.db #0xF0	; 240
   4EC1 0F                   61 	.db #0x0F	; 15
   4EC2 0F                   62 	.db #0x0F	; 15
   4EC3 0F                   63 	.db #0x0F	; 15
   4EC4 0F                   64 	.db #0x0F	; 15
   4EC5 0F                   65 	.db #0x0F	; 15
   4EC6 0F                   66 	.db #0x0F	; 15
   4EC7 0F                   67 	.db #0x0F	; 15
   4EC8 0F                   68 	.db #0x0F	; 15
   4EC9 F0                   69 	.db #0xF0	; 240
   4ECA F0                   70 	.db #0xF0	; 240
   4ECB 0F                   71 	.db #0x0F	; 15
   4ECC 0F                   72 	.db #0x0F	; 15
   4ECD 0F                   73 	.db #0x0F	; 15
   4ECE 0F                   74 	.db #0x0F	; 15
   4ECF 0F                   75 	.db #0x0F	; 15
   4ED0 0F                   76 	.db #0x0F	; 15
   4ED1 0F                   77 	.db #0x0F	; 15
   4ED2 0F                   78 	.db #0x0F	; 15
   4ED3 F0                   79 	.db #0xF0	; 240
   4ED4 0F                   80 	.db #0x0F	; 15
   4ED5 0F                   81 	.db #0x0F	; 15
   4ED6 0F                   82 	.db #0x0F	; 15
   4ED7 0F                   83 	.db #0x0F	; 15
   4ED8 0F                   84 	.db #0x0F	; 15
   4ED9 0F                   85 	.db #0x0F	; 15
   4EDA 0F                   86 	.db #0x0F	; 15
   4EDB 0F                   87 	.db #0x0F	; 15
   4EDC 0F                   88 	.db #0x0F	; 15
   4EDD 0F                   89 	.db #0x0F	; 15
   4EDE 0F                   90 	.db #0x0F	; 15
   4EDF 0F                   91 	.db #0x0F	; 15
   4EE0 0F                   92 	.db #0x0F	; 15
   4EE1 0F                   93 	.db #0x0F	; 15
   4EE2 0F                   94 	.db #0x0F	; 15
   4EE3 0F                   95 	.db #0x0F	; 15
   4EE4 0F                   96 	.db #0x0F	; 15
   4EE5 0F                   97 	.db #0x0F	; 15
   4EE6 0F                   98 	.db #0x0F	; 15
   4EE7 0F                   99 	.db #0x0F	; 15
   4EE8 0F                  100 	.db #0x0F	; 15
   4EE9 0F                  101 	.db #0x0F	; 15
   4EEA 0F                  102 	.db #0x0F	; 15
   4EEB 0F                  103 	.db #0x0F	; 15
   4EEC 0F                  104 	.db #0x0F	; 15
   4EED 0F                  105 	.db #0x0F	; 15
   4EEE 0F                  106 	.db #0x0F	; 15
   4EEF 0F                  107 	.db #0x0F	; 15
   4EF0 0F                  108 	.db #0x0F	; 15
   4EF1 0F                  109 	.db #0x0F	; 15
   4EF2 0F                  110 	.db #0x0F	; 15
   4EF3 0F                  111 	.db #0x0F	; 15
   4EF4 0F                  112 	.db #0x0F	; 15
   4EF5 0F                  113 	.db #0x0F	; 15
   4EF6 0F                  114 	.db #0x0F	; 15
   4EF7 0F                  115 	.db #0x0F	; 15
   4EF8 0F                  116 	.db #0x0F	; 15
   4EF9 0F                  117 	.db #0x0F	; 15
   4EFA 0F                  118 	.db #0x0F	; 15
   4EFB 0F                  119 	.db #0x0F	; 15
   4EFC 0F                  120 	.db #0x0F	; 15
   4EFD 0F                  121 	.db #0x0F	; 15
   4EFE 0F                  122 	.db #0x0F	; 15
   4EFF 0F                  123 	.db #0x0F	; 15
   4F00 0F                  124 	.db #0x0F	; 15
   4F01 0F                  125 	.db #0x0F	; 15
   4F02 0F                  126 	.db #0x0F	; 15
   4F03 0F                  127 	.db #0x0F	; 15
   4F04 0F                  128 	.db #0x0F	; 15
   4F05 0F                  129 	.db #0x0F	; 15
   4F06 0F                  130 	.db #0x0F	; 15
   4F07 0F                  131 	.db #0x0F	; 15
   4F08 0F                  132 	.db #0x0F	; 15
   4F09 0F                  133 	.db #0x0F	; 15
   4F0A 0F                  134 	.db #0x0F	; 15
   4F0B 0F                  135 	.db #0x0F	; 15
   4F0C 0F                  136 	.db #0x0F	; 15
   4F0D 0F                  137 	.db #0x0F	; 15
   4F0E 0F                  138 	.db #0x0F	; 15
   4F0F 0F                  139 	.db #0x0F	; 15
   4F10 0F                  140 	.db #0x0F	; 15
   4F11 0F                  141 	.db #0x0F	; 15
   4F12 0F                  142 	.db #0x0F	; 15
   4F13 0F                  143 	.db #0x0F	; 15
   4F14 0F                  144 	.db #0x0F	; 15
   4F15 0F                  145 	.db #0x0F	; 15
   4F16 0F                  146 	.db #0x0F	; 15
   4F17 0F                  147 	.db #0x0F	; 15
   4F18 0F                  148 	.db #0x0F	; 15
   4F19 0F                  149 	.db #0x0F	; 15
   4F1A 0F                  150 	.db #0x0F	; 15
   4F1B 0F                  151 	.db #0x0F	; 15
   4F1C 0F                  152 	.db #0x0F	; 15
   4F1D 0F                  153 	.db #0x0F	; 15
   4F1E 0F                  154 	.db #0x0F	; 15
   4F1F 0F                  155 	.db #0x0F	; 15
   4F20 0F                  156 	.db #0x0F	; 15
   4F21 0F                  157 	.db #0x0F	; 15
   4F22 0F                  158 	.db #0x0F	; 15
   4F23 0F                  159 	.db #0x0F	; 15
   4F24 0F                  160 	.db #0x0F	; 15
   4F25 0F                  161 	.db #0x0F	; 15
   4F26 0F                  162 	.db #0x0F	; 15
   4F27 0F                  163 	.db #0x0F	; 15
   4F28 0F                  164 	.db #0x0F	; 15
   4F29 0F                  165 	.db #0x0F	; 15
   4F2A 0F                  166 	.db #0x0F	; 15
   4F2B 0F                  167 	.db #0x0F	; 15
   4F2C 0F                  168 	.db #0x0F	; 15
   4F2D 0F                  169 	.db #0x0F	; 15
   4F2E 0F                  170 	.db #0x0F	; 15
   4F2F 0F                  171 	.db #0x0F	; 15
   4F30 0F                  172 	.db #0x0F	; 15
   4F31 0F                  173 	.db #0x0F	; 15
   4F32 0F                  174 	.db #0x0F	; 15
   4F33 0F                  175 	.db #0x0F	; 15
   4F34 0F                  176 	.db #0x0F	; 15
   4F35 0F                  177 	.db #0x0F	; 15
   4F36 0F                  178 	.db #0x0F	; 15
   4F37 0F                  179 	.db #0x0F	; 15
   4F38 0F                  180 	.db #0x0F	; 15
   4F39 0F                  181 	.db #0x0F	; 15
   4F3A 0F                  182 	.db #0x0F	; 15
   4F3B 0F                  183 	.db #0x0F	; 15
   4F3C 0F                  184 	.db #0x0F	; 15
   4F3D 0F                  185 	.db #0x0F	; 15
   4F3E 0F                  186 	.db #0x0F	; 15
   4F3F 0F                  187 	.db #0x0F	; 15
   4F40 0F                  188 	.db #0x0F	; 15
   4F41 0F                  189 	.db #0x0F	; 15
   4F42 0F                  190 	.db #0x0F	; 15
   4F43 0F                  191 	.db #0x0F	; 15
   4F44 0F                  192 	.db #0x0F	; 15
   4F45 0F                  193 	.db #0x0F	; 15
   4F46 0F                  194 	.db #0x0F	; 15
   4F47 0F                  195 	.db #0x0F	; 15
   4F48 0F                  196 	.db #0x0F	; 15
   4F49 0F                  197 	.db #0x0F	; 15
   4F4A 0F                  198 	.db #0x0F	; 15
   4F4B 0F                  199 	.db #0x0F	; 15
   4F4C 0F                  200 	.db #0x0F	; 15
   4F4D 0F                  201 	.db #0x0F	; 15
   4F4E 0F                  202 	.db #0x0F	; 15
   4F4F 0F                  203 	.db #0x0F	; 15
   4F50 0F                  204 	.db #0x0F	; 15
   4F51 0F                  205 	.db #0x0F	; 15
   4F52 0F                  206 	.db #0x0F	; 15
   4F53 0F                  207 	.db #0x0F	; 15
   4F54 0F                  208 	.db #0x0F	; 15
   4F55 0F                  209 	.db #0x0F	; 15
   4F56 0F                  210 	.db #0x0F	; 15
   4F57 0F                  211 	.db #0x0F	; 15
   4F58 0F                  212 	.db #0x0F	; 15
   4F59 0F                  213 	.db #0x0F	; 15
   4F5A 0F                  214 	.db #0x0F	; 15
   4F5B 0F                  215 	.db #0x0F	; 15
   4F5C 0F                  216 	.db #0x0F	; 15
   4F5D 0F                  217 	.db #0x0F	; 15
   4F5E 0F                  218 	.db #0x0F	; 15
   4F5F 0F                  219 	.db #0x0F	; 15
   4F60 0F                  220 	.db #0x0F	; 15
   4F61 0F                  221 	.db #0x0F	; 15
   4F62 0F                  222 	.db #0x0F	; 15
   4F63 0F                  223 	.db #0x0F	; 15
   4F64 0F                  224 	.db #0x0F	; 15
   4F65 0F                  225 	.db #0x0F	; 15
   4F66 0F                  226 	.db #0x0F	; 15
   4F67 0F                  227 	.db #0x0F	; 15
   4F68 0F                  228 	.db #0x0F	; 15
   4F69 0F                  229 	.db #0x0F	; 15
   4F6A 0F                  230 	.db #0x0F	; 15
   4F6B 0F                  231 	.db #0x0F	; 15
   4F6C 0F                  232 	.db #0x0F	; 15
   4F6D 0F                  233 	.db #0x0F	; 15
   4F6E 0F                  234 	.db #0x0F	; 15
   4F6F 0F                  235 	.db #0x0F	; 15
   4F70 0F                  236 	.db #0x0F	; 15
   4F71 0F                  237 	.db #0x0F	; 15
   4F72 0F                  238 	.db #0x0F	; 15
   4F73 0F                  239 	.db #0x0F	; 15
   4F74 0F                  240 	.db #0x0F	; 15
   4F75 0F                  241 	.db #0x0F	; 15
   4F76 0F                  242 	.db #0x0F	; 15
   4F77 0F                  243 	.db #0x0F	; 15
   4F78 0F                  244 	.db #0x0F	; 15
   4F79 0F                  245 	.db #0x0F	; 15
   4F7A 0F                  246 	.db #0x0F	; 15
   4F7B 0F                  247 	.db #0x0F	; 15
   4F7C 0F                  248 	.db #0x0F	; 15
   4F7D 0F                  249 	.db #0x0F	; 15
   4F7E 0F                  250 	.db #0x0F	; 15
   4F7F 0F                  251 	.db #0x0F	; 15
   4F80 0F                  252 	.db #0x0F	; 15
   4F81 0F                  253 	.db #0x0F	; 15
   4F82 0F                  254 	.db #0x0F	; 15
   4F83 0F                  255 	.db #0x0F	; 15
   4F84 0F                  256 	.db #0x0F	; 15
   4F85 0F                  257 	.db #0x0F	; 15
   4F86 0F                  258 	.db #0x0F	; 15
   4F87 0F                  259 	.db #0x0F	; 15
   4F88 0F                  260 	.db #0x0F	; 15
   4F89 0F                  261 	.db #0x0F	; 15
   4F8A 0F                  262 	.db #0x0F	; 15
   4F8B 0F                  263 	.db #0x0F	; 15
   4F8C 0F                  264 	.db #0x0F	; 15
   4F8D 0F                  265 	.db #0x0F	; 15
   4F8E 0F                  266 	.db #0x0F	; 15
   4F8F 0F                  267 	.db #0x0F	; 15
   4F90 0F                  268 	.db #0x0F	; 15
   4F91 0F                  269 	.db #0x0F	; 15
   4F92 0F                  270 	.db #0x0F	; 15
   4F93 0F                  271 	.db #0x0F	; 15
   4F94 0F                  272 	.db #0x0F	; 15
   4F95 0F                  273 	.db #0x0F	; 15
   4F96 0F                  274 	.db #0x0F	; 15
   4F97 0F                  275 	.db #0x0F	; 15
   4F98 0F                  276 	.db #0x0F	; 15
   4F99 0F                  277 	.db #0x0F	; 15
   4F9A 0F                  278 	.db #0x0F	; 15
   4F9B 0F                  279 	.db #0x0F	; 15
   4F9C 0F                  280 	.db #0x0F	; 15
   4F9D 0F                  281 	.db #0x0F	; 15
   4F9E 0F                  282 	.db #0x0F	; 15
   4F9F 0F                  283 	.db #0x0F	; 15
   4FA0 0F                  284 	.db #0x0F	; 15
   4FA1 0F                  285 	.db #0x0F	; 15
   4FA2 0F                  286 	.db #0x0F	; 15
   4FA3 0F                  287 	.db #0x0F	; 15
   4FA4 0F                  288 	.db #0x0F	; 15
   4FA5 0F                  289 	.db #0x0F	; 15
   4FA6 0F                  290 	.db #0x0F	; 15
   4FA7 0F                  291 	.db #0x0F	; 15
   4FA8 0F                  292 	.db #0x0F	; 15
   4FA9 0F                  293 	.db #0x0F	; 15
   4FAA 0F                  294 	.db #0x0F	; 15
   4FAB 0F                  295 	.db #0x0F	; 15
   4FAC 0F                  296 	.db #0x0F	; 15
   4FAD 0F                  297 	.db #0x0F	; 15
   4FAE 0F                  298 	.db #0x0F	; 15
   4FAF 0F                  299 	.db #0x0F	; 15
   4FB0 0F                  300 	.db #0x0F	; 15
   4FB1 0F                  301 	.db #0x0F	; 15
   4FB2 0F                  302 	.db #0x0F	; 15
   4FB3 0F                  303 	.db #0x0F	; 15
   4FB4 0F                  304 	.db #0x0F	; 15
   4FB5 0F                  305 	.db #0x0F	; 15
   4FB6 0F                  306 	.db #0x0F	; 15
   4FB7 0F                  307 	.db #0x0F	; 15
   4FB8 0F                  308 	.db #0x0F	; 15
   4FB9 0F                  309 	.db #0x0F	; 15
   4FBA 0F                  310 	.db #0x0F	; 15
   4FBB 0F                  311 	.db #0x0F	; 15
   4FBC 0F                  312 	.db #0x0F	; 15
   4FBD 0F                  313 	.db #0x0F	; 15
   4FBE 0F                  314 	.db #0x0F	; 15
   4FBF 0F                  315 	.db #0x0F	; 15
   4FC0 0F                  316 	.db #0x0F	; 15
   4FC1 0F                  317 	.db #0x0F	; 15
   4FC2 0F                  318 	.db #0x0F	; 15
   4FC3 0F                  319 	.db #0x0F	; 15
   4FC4 0F                  320 	.db #0x0F	; 15
   4FC5 0F                  321 	.db #0x0F	; 15
   4FC6 0F                  322 	.db #0x0F	; 15
   4FC7 0F                  323 	.db #0x0F	; 15
   4FC8 0F                  324 	.db #0x0F	; 15
   4FC9 0F                  325 	.db #0x0F	; 15
   4FCA 0F                  326 	.db #0x0F	; 15
   4FCB 0F                  327 	.db #0x0F	; 15
   4FCC 0F                  328 	.db #0x0F	; 15
   4FCD 0F                  329 	.db #0x0F	; 15
   4FCE 0F                  330 	.db #0x0F	; 15
   4FCF 0F                  331 	.db #0x0F	; 15
   4FD0 0F                  332 	.db #0x0F	; 15
   4FD1 0F                  333 	.db #0x0F	; 15
   4FD2 0F                  334 	.db #0x0F	; 15
   4FD3 0F                  335 	.db #0x0F	; 15
   4FD4 0F                  336 	.db #0x0F	; 15
   4FD5 0F                  337 	.db #0x0F	; 15
   4FD6 0F                  338 	.db #0x0F	; 15
   4FD7 0F                  339 	.db #0x0F	; 15
   4FD8 0F                  340 	.db #0x0F	; 15
   4FD9 0F                  341 	.db #0x0F	; 15
   4FDA 0F                  342 	.db #0x0F	; 15
   4FDB 0F                  343 	.db #0x0F	; 15
   4FDC 0F                  344 	.db #0x0F	; 15
   4FDD 0F                  345 	.db #0x0F	; 15
   4FDE 0F                  346 	.db #0x0F	; 15
   4FDF 0F                  347 	.db #0x0F	; 15
   4FE0 0F                  348 	.db #0x0F	; 15
   4FE1 0F                  349 	.db #0x0F	; 15
   4FE2 0F                  350 	.db #0x0F	; 15
   4FE3 0F                  351 	.db #0x0F	; 15
   4FE4 0F                  352 	.db #0x0F	; 15
   4FE5 0F                  353 	.db #0x0F	; 15
   4FE6 0F                  354 	.db #0x0F	; 15
   4FE7 0F                  355 	.db #0x0F	; 15
   4FE8 0F                  356 	.db #0x0F	; 15
   4FE9 0F                  357 	.db #0x0F	; 15
   4FEA 0F                  358 	.db #0x0F	; 15
   4FEB 0F                  359 	.db #0x0F	; 15
   4FEC 0F                  360 	.db #0x0F	; 15
   4FED 0F                  361 	.db #0x0F	; 15
   4FEE 0F                  362 	.db #0x0F	; 15
   4FEF 0F                  363 	.db #0x0F	; 15
   4FF0 0F                  364 	.db #0x0F	; 15
   4FF1 0F                  365 	.db #0x0F	; 15
   4FF2 0F                  366 	.db #0x0F	; 15
   4FF3 0F                  367 	.db #0x0F	; 15
   4FF4 0F                  368 	.db #0x0F	; 15
   4FF5 0F                  369 	.db #0x0F	; 15
   4FF6 0F                  370 	.db #0x0F	; 15
   4FF7 0F                  371 	.db #0x0F	; 15
   4FF8 0F                  372 	.db #0x0F	; 15
   4FF9 0F                  373 	.db #0x0F	; 15
   4FFA 0F                  374 	.db #0x0F	; 15
   4FFB 0F                  375 	.db #0x0F	; 15
   4FFC 0F                  376 	.db #0x0F	; 15
   4FFD 0F                  377 	.db #0x0F	; 15
   4FFE 0F                  378 	.db #0x0F	; 15
   4FFF 0F                  379 	.db #0x0F	; 15
   5000 0F                  380 	.db #0x0F	; 15
   5001 0F                  381 	.db #0x0F	; 15
   5002 0F                  382 	.db #0x0F	; 15
   5003 0F                  383 	.db #0x0F	; 15
   5004 0F                  384 	.db #0x0F	; 15
   5005 0F                  385 	.db #0x0F	; 15
   5006 0F                  386 	.db #0x0F	; 15
   5007 0F                  387 	.db #0x0F	; 15
   5008 0F                  388 	.db #0x0F	; 15
   5009 0F                  389 	.db #0x0F	; 15
   500A 0F                  390 	.db #0x0F	; 15
   500B 0F                  391 	.db #0x0F	; 15
   500C 0F                  392 	.db #0x0F	; 15
   500D 0F                  393 	.db #0x0F	; 15
   500E 0F                  394 	.db #0x0F	; 15
   500F 0F                  395 	.db #0x0F	; 15
   5010 0F                  396 	.db #0x0F	; 15
   5011 0F                  397 	.db #0x0F	; 15
   5012 0F                  398 	.db #0x0F	; 15
   5013 0F                  399 	.db #0x0F	; 15
   5014 0F                  400 	.db #0x0F	; 15
   5015 0F                  401 	.db #0x0F	; 15
   5016 0F                  402 	.db #0x0F	; 15
   5017 0F                  403 	.db #0x0F	; 15
   5018 0F                  404 	.db #0x0F	; 15
   5019 0F                  405 	.db #0x0F	; 15
   501A 0F                  406 	.db #0x0F	; 15
   501B 0F                  407 	.db #0x0F	; 15
   501C 0F                  408 	.db #0x0F	; 15
   501D 0F                  409 	.db #0x0F	; 15
   501E 0F                  410 	.db #0x0F	; 15
   501F 0F                  411 	.db #0x0F	; 15
   5020 0F                  412 	.db #0x0F	; 15
   5021 0F                  413 	.db #0x0F	; 15
   5022 0F                  414 	.db #0x0F	; 15
   5023 0F                  415 	.db #0x0F	; 15
   5024 0F                  416 	.db #0x0F	; 15
   5025 0F                  417 	.db #0x0F	; 15
   5026 0F                  418 	.db #0x0F	; 15
   5027 0F                  419 	.db #0x0F	; 15
   5028 0F                  420 	.db #0x0F	; 15
   5029 0F                  421 	.db #0x0F	; 15
   502A 0F                  422 	.db #0x0F	; 15
   502B 0F                  423 	.db #0x0F	; 15
   502C 0F                  424 	.db #0x0F	; 15
   502D 0F                  425 	.db #0x0F	; 15
   502E 0F                  426 	.db #0x0F	; 15
   502F 0F                  427 	.db #0x0F	; 15
   5030 0F                  428 	.db #0x0F	; 15
   5031 0F                  429 	.db #0x0F	; 15
   5032 0F                  430 	.db #0x0F	; 15
   5033 0F                  431 	.db #0x0F	; 15
   5034 0F                  432 	.db #0x0F	; 15
   5035 0F                  433 	.db #0x0F	; 15
   5036 0F                  434 	.db #0x0F	; 15
   5037 0F                  435 	.db #0x0F	; 15
   5038 0F                  436 	.db #0x0F	; 15
   5039 0F                  437 	.db #0x0F	; 15
   503A 0F                  438 	.db #0x0F	; 15
   503B 0F                  439 	.db #0x0F	; 15
   503C F0                  440 	.db #0xF0	; 240
   503D 0F                  441 	.db #0x0F	; 15
   503E 0F                  442 	.db #0x0F	; 15
   503F 0F                  443 	.db #0x0F	; 15
   5040 0F                  444 	.db #0x0F	; 15
   5041 0F                  445 	.db #0x0F	; 15
   5042 0F                  446 	.db #0x0F	; 15
   5043 0F                  447 	.db #0x0F	; 15
   5044 0F                  448 	.db #0x0F	; 15
   5045 F0                  449 	.db #0xF0	; 240
   5046 F0                  450 	.db #0xF0	; 240
   5047 0F                  451 	.db #0x0F	; 15
   5048 0F                  452 	.db #0x0F	; 15
   5049 0F                  453 	.db #0x0F	; 15
   504A 0F                  454 	.db #0x0F	; 15
   504B 0F                  455 	.db #0x0F	; 15
   504C 0F                  456 	.db #0x0F	; 15
   504D 0F                  457 	.db #0x0F	; 15
   504E 0F                  458 	.db #0x0F	; 15
   504F F0                  459 	.db #0xF0	; 240
   5050                     460 _tile_tiles_01:
   5050 F0                  461 	.db #0xF0	; 240
   5051 3C                  462 	.db #0x3C	; 60
   5052 3C                  463 	.db #0x3C	; 60
   5053 3C                  464 	.db #0x3C	; 60
   5054 3C                  465 	.db #0x3C	; 60
   5055 3C                  466 	.db #0x3C	; 60
   5056 3C                  467 	.db #0x3C	; 60
   5057 3C                  468 	.db #0x3C	; 60
   5058 3C                  469 	.db #0x3C	; 60
   5059 F0                  470 	.db #0xF0	; 240
   505A F0                  471 	.db #0xF0	; 240
   505B 3C                  472 	.db #0x3C	; 60
   505C 3C                  473 	.db #0x3C	; 60
   505D 3C                  474 	.db #0x3C	; 60
   505E 3C                  475 	.db #0x3C	; 60
   505F 3C                  476 	.db #0x3C	; 60
   5060 3C                  477 	.db #0x3C	; 60
   5061 3C                  478 	.db #0x3C	; 60
   5062 3C                  479 	.db #0x3C	; 60
   5063 F0                  480 	.db #0xF0	; 240
   5064 3C                  481 	.db #0x3C	; 60
   5065 2D                  482 	.db #0x2D	; 45
   5066 0F                  483 	.db #0x0F	; 15
   5067 0F                  484 	.db #0x0F	; 15
   5068 0F                  485 	.db #0x0F	; 15
   5069 0F                  486 	.db #0x0F	; 15
   506A 0F                  487 	.db #0x0F	; 15
   506B 0F                  488 	.db #0x0F	; 15
   506C 1E                  489 	.db #0x1E	; 30
   506D 3C                  490 	.db #0x3C	; 60
   506E 3C                  491 	.db #0x3C	; 60
   506F 2D                  492 	.db #0x2D	; 45
   5070 3C                  493 	.db #0x3C	; 60
   5071 3C                  494 	.db #0x3C	; 60
   5072 3C                  495 	.db #0x3C	; 60
   5073 3C                  496 	.db #0x3C	; 60
   5074 3C                  497 	.db #0x3C	; 60
   5075 3C                  498 	.db #0x3C	; 60
   5076 1E                  499 	.db #0x1E	; 30
   5077 3C                  500 	.db #0x3C	; 60
   5078 3C                  501 	.db #0x3C	; 60
   5079 0F                  502 	.db #0x0F	; 15
   507A 3C                  503 	.db #0x3C	; 60
   507B 3C                  504 	.db #0x3C	; 60
   507C 3C                  505 	.db #0x3C	; 60
   507D 3C                  506 	.db #0x3C	; 60
   507E 3C                  507 	.db #0x3C	; 60
   507F 3C                  508 	.db #0x3C	; 60
   5080 0F                  509 	.db #0x0F	; 15
   5081 3C                  510 	.db #0x3C	; 60
   5082 3C                  511 	.db #0x3C	; 60
   5083 1E                  512 	.db #0x1E	; 30
   5084 3C                  513 	.db #0x3C	; 60
   5085 3C                  514 	.db #0x3C	; 60
   5086 3C                  515 	.db #0x3C	; 60
   5087 3C                  516 	.db #0x3C	; 60
   5088 3C                  517 	.db #0x3C	; 60
   5089 3C                  518 	.db #0x3C	; 60
   508A 2D                  519 	.db #0x2D	; 45
   508B 3C                  520 	.db #0x3C	; 60
   508C 3C                  521 	.db #0x3C	; 60
   508D 1E                  522 	.db #0x1E	; 30
   508E 3C                  523 	.db #0x3C	; 60
   508F 3C                  524 	.db #0x3C	; 60
   5090 3C                  525 	.db #0x3C	; 60
   5091 3C                  526 	.db #0x3C	; 60
   5092 3C                  527 	.db #0x3C	; 60
   5093 3C                  528 	.db #0x3C	; 60
   5094 2D                  529 	.db #0x2D	; 45
   5095 3C                  530 	.db #0x3C	; 60
   5096 3C                  531 	.db #0x3C	; 60
   5097 1E                  532 	.db #0x1E	; 30
   5098 3C                  533 	.db #0x3C	; 60
   5099 3C                  534 	.db #0x3C	; 60
   509A 3C                  535 	.db #0x3C	; 60
   509B 3C                  536 	.db #0x3C	; 60
   509C 3C                  537 	.db #0x3C	; 60
   509D 3C                  538 	.db #0x3C	; 60
   509E 2D                  539 	.db #0x2D	; 45
   509F 3C                  540 	.db #0x3C	; 60
   50A0 3C                  541 	.db #0x3C	; 60
   50A1 1E                  542 	.db #0x1E	; 30
   50A2 3C                  543 	.db #0x3C	; 60
   50A3 3C                  544 	.db #0x3C	; 60
   50A4 3C                  545 	.db #0x3C	; 60
   50A5 3C                  546 	.db #0x3C	; 60
   50A6 3C                  547 	.db #0x3C	; 60
   50A7 3C                  548 	.db #0x3C	; 60
   50A8 2D                  549 	.db #0x2D	; 45
   50A9 3C                  550 	.db #0x3C	; 60
   50AA 3C                  551 	.db #0x3C	; 60
   50AB 1E                  552 	.db #0x1E	; 30
   50AC 3C                  553 	.db #0x3C	; 60
   50AD 3C                  554 	.db #0x3C	; 60
   50AE 3C                  555 	.db #0x3C	; 60
   50AF 34                  556 	.db #0x34	; 52	'4'
   50B0 3C                  557 	.db #0x3C	; 60
   50B1 3C                  558 	.db #0x3C	; 60
   50B2 2D                  559 	.db #0x2D	; 45
   50B3 3C                  560 	.db #0x3C	; 60
   50B4 3C                  561 	.db #0x3C	; 60
   50B5 1E                  562 	.db #0x1E	; 30
   50B6 3C                  563 	.db #0x3C	; 60
   50B7 3C                  564 	.db #0x3C	; 60
   50B8 38                  565 	.db #0x38	; 56	'8'
   50B9 34                  566 	.db #0x34	; 52	'4'
   50BA 3C                  567 	.db #0x3C	; 60
   50BB 3C                  568 	.db #0x3C	; 60
   50BC 2D                  569 	.db #0x2D	; 45
   50BD 3C                  570 	.db #0x3C	; 60
   50BE 3C                  571 	.db #0x3C	; 60
   50BF 1E                  572 	.db #0x1E	; 30
   50C0 3C                  573 	.db #0x3C	; 60
   50C1 3C                  574 	.db #0x3C	; 60
   50C2 30                  575 	.db #0x30	; 48	'0'
   50C3 34                  576 	.db #0x34	; 52	'4'
   50C4 3C                  577 	.db #0x3C	; 60
   50C5 3C                  578 	.db #0x3C	; 60
   50C6 2D                  579 	.db #0x2D	; 45
   50C7 3C                  580 	.db #0x3C	; 60
   50C8 3C                  581 	.db #0x3C	; 60
   50C9 1E                  582 	.db #0x1E	; 30
   50CA 3C                  583 	.db #0x3C	; 60
   50CB 3C                  584 	.db #0x3C	; 60
   50CC 34                  585 	.db #0x34	; 52	'4'
   50CD 34                  586 	.db #0x34	; 52	'4'
   50CE 3C                  587 	.db #0x3C	; 60
   50CF 3C                  588 	.db #0x3C	; 60
   50D0 2D                  589 	.db #0x2D	; 45
   50D1 3C                  590 	.db #0x3C	; 60
   50D2 3C                  591 	.db #0x3C	; 60
   50D3 1E                  592 	.db #0x1E	; 30
   50D4 3C                  593 	.db #0x3C	; 60
   50D5 3C                  594 	.db #0x3C	; 60
   50D6 3C                  595 	.db #0x3C	; 60
   50D7 34                  596 	.db #0x34	; 52	'4'
   50D8 3C                  597 	.db #0x3C	; 60
   50D9 3C                  598 	.db #0x3C	; 60
   50DA 2D                  599 	.db #0x2D	; 45
   50DB 3C                  600 	.db #0x3C	; 60
   50DC 3C                  601 	.db #0x3C	; 60
   50DD 1E                  602 	.db #0x1E	; 30
   50DE 3C                  603 	.db #0x3C	; 60
   50DF 3C                  604 	.db #0x3C	; 60
   50E0 3C                  605 	.db #0x3C	; 60
   50E1 34                  606 	.db #0x34	; 52	'4'
   50E2 3C                  607 	.db #0x3C	; 60
   50E3 3C                  608 	.db #0x3C	; 60
   50E4 2D                  609 	.db #0x2D	; 45
   50E5 3C                  610 	.db #0x3C	; 60
   50E6 3C                  611 	.db #0x3C	; 60
   50E7 1E                  612 	.db #0x1E	; 30
   50E8 3C                  613 	.db #0x3C	; 60
   50E9 3C                  614 	.db #0x3C	; 60
   50EA 3C                  615 	.db #0x3C	; 60
   50EB 34                  616 	.db #0x34	; 52	'4'
   50EC 3C                  617 	.db #0x3C	; 60
   50ED 3C                  618 	.db #0x3C	; 60
   50EE 2D                  619 	.db #0x2D	; 45
   50EF 3C                  620 	.db #0x3C	; 60
   50F0 3C                  621 	.db #0x3C	; 60
   50F1 1E                  622 	.db #0x1E	; 30
   50F2 3C                  623 	.db #0x3C	; 60
   50F3 3C                  624 	.db #0x3C	; 60
   50F4 3C                  625 	.db #0x3C	; 60
   50F5 34                  626 	.db #0x34	; 52	'4'
   50F6 3C                  627 	.db #0x3C	; 60
   50F7 3C                  628 	.db #0x3C	; 60
   50F8 2D                  629 	.db #0x2D	; 45
   50F9 3C                  630 	.db #0x3C	; 60
   50FA 3C                  631 	.db #0x3C	; 60
   50FB 1E                  632 	.db #0x1E	; 30
   50FC 3C                  633 	.db #0x3C	; 60
   50FD 3C                  634 	.db #0x3C	; 60
   50FE 3C                  635 	.db #0x3C	; 60
   50FF 34                  636 	.db #0x34	; 52	'4'
   5100 3C                  637 	.db #0x3C	; 60
   5101 3C                  638 	.db #0x3C	; 60
   5102 2D                  639 	.db #0x2D	; 45
   5103 3C                  640 	.db #0x3C	; 60
   5104 3C                  641 	.db #0x3C	; 60
   5105 1E                  642 	.db #0x1E	; 30
   5106 3C                  643 	.db #0x3C	; 60
   5107 3C                  644 	.db #0x3C	; 60
   5108 3C                  645 	.db #0x3C	; 60
   5109 34                  646 	.db #0x34	; 52	'4'
   510A 3C                  647 	.db #0x3C	; 60
   510B 3C                  648 	.db #0x3C	; 60
   510C 2D                  649 	.db #0x2D	; 45
   510D 3C                  650 	.db #0x3C	; 60
   510E 3C                  651 	.db #0x3C	; 60
   510F 1E                  652 	.db #0x1E	; 30
   5110 3C                  653 	.db #0x3C	; 60
   5111 3C                  654 	.db #0x3C	; 60
   5112 3C                  655 	.db #0x3C	; 60
   5113 34                  656 	.db #0x34	; 52	'4'
   5114 3C                  657 	.db #0x3C	; 60
   5115 3C                  658 	.db #0x3C	; 60
   5116 2D                  659 	.db #0x2D	; 45
   5117 3C                  660 	.db #0x3C	; 60
   5118 3C                  661 	.db #0x3C	; 60
   5119 1E                  662 	.db #0x1E	; 30
   511A 3C                  663 	.db #0x3C	; 60
   511B 3C                  664 	.db #0x3C	; 60
   511C 3C                  665 	.db #0x3C	; 60
   511D 34                  666 	.db #0x34	; 52	'4'
   511E 3C                  667 	.db #0x3C	; 60
   511F 3C                  668 	.db #0x3C	; 60
   5120 2D                  669 	.db #0x2D	; 45
   5121 3C                  670 	.db #0x3C	; 60
   5122 3C                  671 	.db #0x3C	; 60
   5123 1E                  672 	.db #0x1E	; 30
   5124 3C                  673 	.db #0x3C	; 60
   5125 3C                  674 	.db #0x3C	; 60
   5126 3C                  675 	.db #0x3C	; 60
   5127 34                  676 	.db #0x34	; 52	'4'
   5128 3C                  677 	.db #0x3C	; 60
   5129 3C                  678 	.db #0x3C	; 60
   512A 2D                  679 	.db #0x2D	; 45
   512B 3C                  680 	.db #0x3C	; 60
   512C 3C                  681 	.db #0x3C	; 60
   512D 1E                  682 	.db #0x1E	; 30
   512E 3C                  683 	.db #0x3C	; 60
   512F 3C                  684 	.db #0x3C	; 60
   5130 3C                  685 	.db #0x3C	; 60
   5131 34                  686 	.db #0x34	; 52	'4'
   5132 3C                  687 	.db #0x3C	; 60
   5133 3C                  688 	.db #0x3C	; 60
   5134 2D                  689 	.db #0x2D	; 45
   5135 3C                  690 	.db #0x3C	; 60
   5136 3C                  691 	.db #0x3C	; 60
   5137 1E                  692 	.db #0x1E	; 30
   5138 3C                  693 	.db #0x3C	; 60
   5139 3C                  694 	.db #0x3C	; 60
   513A 3C                  695 	.db #0x3C	; 60
   513B 34                  696 	.db #0x34	; 52	'4'
   513C 3C                  697 	.db #0x3C	; 60
   513D 3C                  698 	.db #0x3C	; 60
   513E 2D                  699 	.db #0x2D	; 45
   513F 3C                  700 	.db #0x3C	; 60
   5140 3C                  701 	.db #0x3C	; 60
   5141 1E                  702 	.db #0x1E	; 30
   5142 3C                  703 	.db #0x3C	; 60
   5143 3C                  704 	.db #0x3C	; 60
   5144 3C                  705 	.db #0x3C	; 60
   5145 34                  706 	.db #0x34	; 52	'4'
   5146 3C                  707 	.db #0x3C	; 60
   5147 3C                  708 	.db #0x3C	; 60
   5148 2D                  709 	.db #0x2D	; 45
   5149 3C                  710 	.db #0x3C	; 60
   514A 3C                  711 	.db #0x3C	; 60
   514B 1E                  712 	.db #0x1E	; 30
   514C 3C                  713 	.db #0x3C	; 60
   514D 3C                  714 	.db #0x3C	; 60
   514E 3C                  715 	.db #0x3C	; 60
   514F 34                  716 	.db #0x34	; 52	'4'
   5150 3C                  717 	.db #0x3C	; 60
   5151 3C                  718 	.db #0x3C	; 60
   5152 2D                  719 	.db #0x2D	; 45
   5153 3C                  720 	.db #0x3C	; 60
   5154 3C                  721 	.db #0x3C	; 60
   5155 1E                  722 	.db #0x1E	; 30
   5156 3C                  723 	.db #0x3C	; 60
   5157 3C                  724 	.db #0x3C	; 60
   5158 3C                  725 	.db #0x3C	; 60
   5159 34                  726 	.db #0x34	; 52	'4'
   515A 3C                  727 	.db #0x3C	; 60
   515B 3C                  728 	.db #0x3C	; 60
   515C 2D                  729 	.db #0x2D	; 45
   515D 3C                  730 	.db #0x3C	; 60
   515E 3C                  731 	.db #0x3C	; 60
   515F 1E                  732 	.db #0x1E	; 30
   5160 3C                  733 	.db #0x3C	; 60
   5161 3C                  734 	.db #0x3C	; 60
   5162 3C                  735 	.db #0x3C	; 60
   5163 34                  736 	.db #0x34	; 52	'4'
   5164 3C                  737 	.db #0x3C	; 60
   5165 3C                  738 	.db #0x3C	; 60
   5166 2D                  739 	.db #0x2D	; 45
   5167 3C                  740 	.db #0x3C	; 60
   5168 3C                  741 	.db #0x3C	; 60
   5169 1E                  742 	.db #0x1E	; 30
   516A 3C                  743 	.db #0x3C	; 60
   516B 3C                  744 	.db #0x3C	; 60
   516C 3C                  745 	.db #0x3C	; 60
   516D 34                  746 	.db #0x34	; 52	'4'
   516E 3C                  747 	.db #0x3C	; 60
   516F 3C                  748 	.db #0x3C	; 60
   5170 2D                  749 	.db #0x2D	; 45
   5171 3C                  750 	.db #0x3C	; 60
   5172 3C                  751 	.db #0x3C	; 60
   5173 1E                  752 	.db #0x1E	; 30
   5174 3C                  753 	.db #0x3C	; 60
   5175 3C                  754 	.db #0x3C	; 60
   5176 30                  755 	.db #0x30	; 48	'0'
   5177 30                  756 	.db #0x30	; 48	'0'
   5178 34                  757 	.db #0x34	; 52	'4'
   5179 3C                  758 	.db #0x3C	; 60
   517A 2D                  759 	.db #0x2D	; 45
   517B 3C                  760 	.db #0x3C	; 60
   517C 3C                  761 	.db #0x3C	; 60
   517D 1E                  762 	.db #0x1E	; 30
   517E 3C                  763 	.db #0x3C	; 60
   517F 3C                  764 	.db #0x3C	; 60
   5180 30                  765 	.db #0x30	; 48	'0'
   5181 30                  766 	.db #0x30	; 48	'0'
   5182 34                  767 	.db #0x34	; 52	'4'
   5183 3C                  768 	.db #0x3C	; 60
   5184 2D                  769 	.db #0x2D	; 45
   5185 3C                  770 	.db #0x3C	; 60
   5186 3C                  771 	.db #0x3C	; 60
   5187 1E                  772 	.db #0x1E	; 30
   5188 3C                  773 	.db #0x3C	; 60
   5189 3C                  774 	.db #0x3C	; 60
   518A 3C                  775 	.db #0x3C	; 60
   518B 3C                  776 	.db #0x3C	; 60
   518C 3C                  777 	.db #0x3C	; 60
   518D 3C                  778 	.db #0x3C	; 60
   518E 2D                  779 	.db #0x2D	; 45
   518F 3C                  780 	.db #0x3C	; 60
   5190 3C                  781 	.db #0x3C	; 60
   5191 1E                  782 	.db #0x1E	; 30
   5192 3C                  783 	.db #0x3C	; 60
   5193 3C                  784 	.db #0x3C	; 60
   5194 3C                  785 	.db #0x3C	; 60
   5195 3C                  786 	.db #0x3C	; 60
   5196 3C                  787 	.db #0x3C	; 60
   5197 3C                  788 	.db #0x3C	; 60
   5198 2D                  789 	.db #0x2D	; 45
   5199 3C                  790 	.db #0x3C	; 60
   519A 3C                  791 	.db #0x3C	; 60
   519B 1E                  792 	.db #0x1E	; 30
   519C 3C                  793 	.db #0x3C	; 60
   519D 3C                  794 	.db #0x3C	; 60
   519E 3C                  795 	.db #0x3C	; 60
   519F 3C                  796 	.db #0x3C	; 60
   51A0 3C                  797 	.db #0x3C	; 60
   51A1 3C                  798 	.db #0x3C	; 60
   51A2 2D                  799 	.db #0x2D	; 45
   51A3 3C                  800 	.db #0x3C	; 60
   51A4 3C                  801 	.db #0x3C	; 60
   51A5 1E                  802 	.db #0x1E	; 30
   51A6 3C                  803 	.db #0x3C	; 60
   51A7 3C                  804 	.db #0x3C	; 60
   51A8 3C                  805 	.db #0x3C	; 60
   51A9 3C                  806 	.db #0x3C	; 60
   51AA 3C                  807 	.db #0x3C	; 60
   51AB 3C                  808 	.db #0x3C	; 60
   51AC 2D                  809 	.db #0x2D	; 45
   51AD 3C                  810 	.db #0x3C	; 60
   51AE 3C                  811 	.db #0x3C	; 60
   51AF 0F                  812 	.db #0x0F	; 15
   51B0 3C                  813 	.db #0x3C	; 60
   51B1 3C                  814 	.db #0x3C	; 60
   51B2 3C                  815 	.db #0x3C	; 60
   51B3 3C                  816 	.db #0x3C	; 60
   51B4 3C                  817 	.db #0x3C	; 60
   51B5 3C                  818 	.db #0x3C	; 60
   51B6 0F                  819 	.db #0x0F	; 15
   51B7 3C                  820 	.db #0x3C	; 60
   51B8 3C                  821 	.db #0x3C	; 60
   51B9 2D                  822 	.db #0x2D	; 45
   51BA 3C                  823 	.db #0x3C	; 60
   51BB 3C                  824 	.db #0x3C	; 60
   51BC 3C                  825 	.db #0x3C	; 60
   51BD 3C                  826 	.db #0x3C	; 60
   51BE 3C                  827 	.db #0x3C	; 60
   51BF 3C                  828 	.db #0x3C	; 60
   51C0 1E                  829 	.db #0x1E	; 30
   51C1 3C                  830 	.db #0x3C	; 60
   51C2 3C                  831 	.db #0x3C	; 60
   51C3 2D                  832 	.db #0x2D	; 45
   51C4 0F                  833 	.db #0x0F	; 15
   51C5 0F                  834 	.db #0x0F	; 15
   51C6 0F                  835 	.db #0x0F	; 15
   51C7 0F                  836 	.db #0x0F	; 15
   51C8 0F                  837 	.db #0x0F	; 15
   51C9 0F                  838 	.db #0x0F	; 15
   51CA 1E                  839 	.db #0x1E	; 30
   51CB 3C                  840 	.db #0x3C	; 60
   51CC F0                  841 	.db #0xF0	; 240
   51CD 3C                  842 	.db #0x3C	; 60
   51CE 3C                  843 	.db #0x3C	; 60
   51CF 3C                  844 	.db #0x3C	; 60
   51D0 3C                  845 	.db #0x3C	; 60
   51D1 3C                  846 	.db #0x3C	; 60
   51D2 3C                  847 	.db #0x3C	; 60
   51D3 3C                  848 	.db #0x3C	; 60
   51D4 3C                  849 	.db #0x3C	; 60
   51D5 F0                  850 	.db #0xF0	; 240
   51D6 F0                  851 	.db #0xF0	; 240
   51D7 3C                  852 	.db #0x3C	; 60
   51D8 3C                  853 	.db #0x3C	; 60
   51D9 3C                  854 	.db #0x3C	; 60
   51DA 3C                  855 	.db #0x3C	; 60
   51DB 3C                  856 	.db #0x3C	; 60
   51DC 3C                  857 	.db #0x3C	; 60
   51DD 3C                  858 	.db #0x3C	; 60
   51DE 3C                  859 	.db #0x3C	; 60
   51DF F0                  860 	.db #0xF0	; 240
   51E0                     861 _tile_tiles_02:
   51E0 F0                  862 	.db #0xF0	; 240
   51E1 CC                  863 	.db #0xCC	; 204
   51E2 CC                  864 	.db #0xCC	; 204
   51E3 CC                  865 	.db #0xCC	; 204
   51E4 CC                  866 	.db #0xCC	; 204
   51E5 CC                  867 	.db #0xCC	; 204
   51E6 CC                  868 	.db #0xCC	; 204
   51E7 CC                  869 	.db #0xCC	; 204
   51E8 CC                  870 	.db #0xCC	; 204
   51E9 F0                  871 	.db #0xF0	; 240
   51EA F0                  872 	.db #0xF0	; 240
   51EB CC                  873 	.db #0xCC	; 204
   51EC CC                  874 	.db #0xCC	; 204
   51ED CC                  875 	.db #0xCC	; 204
   51EE CC                  876 	.db #0xCC	; 204
   51EF CC                  877 	.db #0xCC	; 204
   51F0 CC                  878 	.db #0xCC	; 204
   51F1 CC                  879 	.db #0xCC	; 204
   51F2 CC                  880 	.db #0xCC	; 204
   51F3 F0                  881 	.db #0xF0	; 240
   51F4 CC                  882 	.db #0xCC	; 204
   51F5 8D                  883 	.db #0x8D	; 141
   51F6 0F                  884 	.db #0x0F	; 15
   51F7 0F                  885 	.db #0x0F	; 15
   51F8 0F                  886 	.db #0x0F	; 15
   51F9 0F                  887 	.db #0x0F	; 15
   51FA 0F                  888 	.db #0x0F	; 15
   51FB 0F                  889 	.db #0x0F	; 15
   51FC 4E                  890 	.db #0x4E	; 78	'N'
   51FD CC                  891 	.db #0xCC	; 204
   51FE CC                  892 	.db #0xCC	; 204
   51FF 8D                  893 	.db #0x8D	; 141
   5200 CC                  894 	.db #0xCC	; 204
   5201 CC                  895 	.db #0xCC	; 204
   5202 CC                  896 	.db #0xCC	; 204
   5203 CC                  897 	.db #0xCC	; 204
   5204 CC                  898 	.db #0xCC	; 204
   5205 CC                  899 	.db #0xCC	; 204
   5206 4E                  900 	.db #0x4E	; 78	'N'
   5207 CC                  901 	.db #0xCC	; 204
   5208 CC                  902 	.db #0xCC	; 204
   5209 0F                  903 	.db #0x0F	; 15
   520A CC                  904 	.db #0xCC	; 204
   520B CC                  905 	.db #0xCC	; 204
   520C CC                  906 	.db #0xCC	; 204
   520D CC                  907 	.db #0xCC	; 204
   520E CC                  908 	.db #0xCC	; 204
   520F CC                  909 	.db #0xCC	; 204
   5210 0F                  910 	.db #0x0F	; 15
   5211 CC                  911 	.db #0xCC	; 204
   5212 CC                  912 	.db #0xCC	; 204
   5213 4E                  913 	.db #0x4E	; 78	'N'
   5214 CC                  914 	.db #0xCC	; 204
   5215 CC                  915 	.db #0xCC	; 204
   5216 CC                  916 	.db #0xCC	; 204
   5217 CC                  917 	.db #0xCC	; 204
   5218 CC                  918 	.db #0xCC	; 204
   5219 CC                  919 	.db #0xCC	; 204
   521A 8D                  920 	.db #0x8D	; 141
   521B CC                  921 	.db #0xCC	; 204
   521C CC                  922 	.db #0xCC	; 204
   521D 4E                  923 	.db #0x4E	; 78	'N'
   521E CC                  924 	.db #0xCC	; 204
   521F CC                  925 	.db #0xCC	; 204
   5220 CC                  926 	.db #0xCC	; 204
   5221 CC                  927 	.db #0xCC	; 204
   5222 CC                  928 	.db #0xCC	; 204
   5223 CC                  929 	.db #0xCC	; 204
   5224 8D                  930 	.db #0x8D	; 141
   5225 CC                  931 	.db #0xCC	; 204
   5226 CC                  932 	.db #0xCC	; 204
   5227 4E                  933 	.db #0x4E	; 78	'N'
   5228 CC                  934 	.db #0xCC	; 204
   5229 CC                  935 	.db #0xCC	; 204
   522A CC                  936 	.db #0xCC	; 204
   522B CC                  937 	.db #0xCC	; 204
   522C CC                  938 	.db #0xCC	; 204
   522D CC                  939 	.db #0xCC	; 204
   522E 8D                  940 	.db #0x8D	; 141
   522F CC                  941 	.db #0xCC	; 204
   5230 CC                  942 	.db #0xCC	; 204
   5231 4E                  943 	.db #0x4E	; 78	'N'
   5232 CC                  944 	.db #0xCC	; 204
   5233 CC                  945 	.db #0xCC	; 204
   5234 CC                  946 	.db #0xCC	; 204
   5235 CC                  947 	.db #0xCC	; 204
   5236 CC                  948 	.db #0xCC	; 204
   5237 CC                  949 	.db #0xCC	; 204
   5238 8D                  950 	.db #0x8D	; 141
   5239 CC                  951 	.db #0xCC	; 204
   523A CC                  952 	.db #0xCC	; 204
   523B 4E                  953 	.db #0x4E	; 78	'N'
   523C CC                  954 	.db #0xCC	; 204
   523D CC                  955 	.db #0xCC	; 204
   523E CC                  956 	.db #0xCC	; 204
   523F 30                  957 	.db #0x30	; 48	'0'
   5240 CC                  958 	.db #0xCC	; 204
   5241 CC                  959 	.db #0xCC	; 204
   5242 8D                  960 	.db #0x8D	; 141
   5243 CC                  961 	.db #0xCC	; 204
   5244 CC                  962 	.db #0xCC	; 204
   5245 4E                  963 	.db #0x4E	; 78	'N'
   5246 CC                  964 	.db #0xCC	; 204
   5247 CC                  965 	.db #0xCC	; 204
   5248 98                  966 	.db #0x98	; 152
   5249 30                  967 	.db #0x30	; 48	'0'
   524A CC                  968 	.db #0xCC	; 204
   524B CC                  969 	.db #0xCC	; 204
   524C 8D                  970 	.db #0x8D	; 141
   524D CC                  971 	.db #0xCC	; 204
   524E CC                  972 	.db #0xCC	; 204
   524F 4E                  973 	.db #0x4E	; 78	'N'
   5250 CC                  974 	.db #0xCC	; 204
   5251 CC                  975 	.db #0xCC	; 204
   5252 98                  976 	.db #0x98	; 152
   5253 98                  977 	.db #0x98	; 152
   5254 64                  978 	.db #0x64	; 100	'd'
   5255 CC                  979 	.db #0xCC	; 204
   5256 8D                  980 	.db #0x8D	; 141
   5257 CC                  981 	.db #0xCC	; 204
   5258 CC                  982 	.db #0xCC	; 204
   5259 4E                  983 	.db #0x4E	; 78	'N'
   525A CC                  984 	.db #0xCC	; 204
   525B CC                  985 	.db #0xCC	; 204
   525C 64                  986 	.db #0x64	; 100	'd'
   525D CC                  987 	.db #0xCC	; 204
   525E 64                  988 	.db #0x64	; 100	'd'
   525F CC                  989 	.db #0xCC	; 204
   5260 8D                  990 	.db #0x8D	; 141
   5261 CC                  991 	.db #0xCC	; 204
   5262 CC                  992 	.db #0xCC	; 204
   5263 4E                  993 	.db #0x4E	; 78	'N'
   5264 CC                  994 	.db #0xCC	; 204
   5265 CC                  995 	.db #0xCC	; 204
   5266 64                  996 	.db #0x64	; 100	'd'
   5267 CC                  997 	.db #0xCC	; 204
   5268 64                  998 	.db #0x64	; 100	'd'
   5269 CC                  999 	.db #0xCC	; 204
   526A 8D                 1000 	.db #0x8D	; 141
   526B CC                 1001 	.db #0xCC	; 204
   526C CC                 1002 	.db #0xCC	; 204
   526D 4E                 1003 	.db #0x4E	; 78	'N'
   526E CC                 1004 	.db #0xCC	; 204
   526F CC                 1005 	.db #0xCC	; 204
   5270 64                 1006 	.db #0x64	; 100	'd'
   5271 CC                 1007 	.db #0xCC	; 204
   5272 64                 1008 	.db #0x64	; 100	'd'
   5273 CC                 1009 	.db #0xCC	; 204
   5274 8D                 1010 	.db #0x8D	; 141
   5275 CC                 1011 	.db #0xCC	; 204
   5276 CC                 1012 	.db #0xCC	; 204
   5277 4E                 1013 	.db #0x4E	; 78	'N'
   5278 CC                 1014 	.db #0xCC	; 204
   5279 CC                 1015 	.db #0xCC	; 204
   527A CC                 1016 	.db #0xCC	; 204
   527B CC                 1017 	.db #0xCC	; 204
   527C 64                 1018 	.db #0x64	; 100	'd'
   527D CC                 1019 	.db #0xCC	; 204
   527E 8D                 1020 	.db #0x8D	; 141
   527F CC                 1021 	.db #0xCC	; 204
   5280 CC                 1022 	.db #0xCC	; 204
   5281 4E                 1023 	.db #0x4E	; 78	'N'
   5282 CC                 1024 	.db #0xCC	; 204
   5283 CC                 1025 	.db #0xCC	; 204
   5284 CC                 1026 	.db #0xCC	; 204
   5285 CC                 1027 	.db #0xCC	; 204
   5286 64                 1028 	.db #0x64	; 100	'd'
   5287 CC                 1029 	.db #0xCC	; 204
   5288 8D                 1030 	.db #0x8D	; 141
   5289 CC                 1031 	.db #0xCC	; 204
   528A CC                 1032 	.db #0xCC	; 204
   528B 4E                 1033 	.db #0x4E	; 78	'N'
   528C CC                 1034 	.db #0xCC	; 204
   528D CC                 1035 	.db #0xCC	; 204
   528E CC                 1036 	.db #0xCC	; 204
   528F 98                 1037 	.db #0x98	; 152
   5290 CC                 1038 	.db #0xCC	; 204
   5291 CC                 1039 	.db #0xCC	; 204
   5292 8D                 1040 	.db #0x8D	; 141
   5293 CC                 1041 	.db #0xCC	; 204
   5294 CC                 1042 	.db #0xCC	; 204
   5295 4E                 1043 	.db #0x4E	; 78	'N'
   5296 CC                 1044 	.db #0xCC	; 204
   5297 CC                 1045 	.db #0xCC	; 204
   5298 CC                 1046 	.db #0xCC	; 204
   5299 98                 1047 	.db #0x98	; 152
   529A CC                 1048 	.db #0xCC	; 204
   529B CC                 1049 	.db #0xCC	; 204
   529C 8D                 1050 	.db #0x8D	; 141
   529D CC                 1051 	.db #0xCC	; 204
   529E CC                 1052 	.db #0xCC	; 204
   529F 4E                 1053 	.db #0x4E	; 78	'N'
   52A0 CC                 1054 	.db #0xCC	; 204
   52A1 CC                 1055 	.db #0xCC	; 204
   52A2 CC                 1056 	.db #0xCC	; 204
   52A3 30                 1057 	.db #0x30	; 48	'0'
   52A4 CC                 1058 	.db #0xCC	; 204
   52A5 CC                 1059 	.db #0xCC	; 204
   52A6 8D                 1060 	.db #0x8D	; 141
   52A7 CC                 1061 	.db #0xCC	; 204
   52A8 CC                 1062 	.db #0xCC	; 204
   52A9 4E                 1063 	.db #0x4E	; 78	'N'
   52AA CC                 1064 	.db #0xCC	; 204
   52AB CC                 1065 	.db #0xCC	; 204
   52AC CC                 1066 	.db #0xCC	; 204
   52AD 64                 1067 	.db #0x64	; 100	'd'
   52AE CC                 1068 	.db #0xCC	; 204
   52AF CC                 1069 	.db #0xCC	; 204
   52B0 8D                 1070 	.db #0x8D	; 141
   52B1 CC                 1071 	.db #0xCC	; 204
   52B2 CC                 1072 	.db #0xCC	; 204
   52B3 4E                 1073 	.db #0x4E	; 78	'N'
   52B4 CC                 1074 	.db #0xCC	; 204
   52B5 CC                 1075 	.db #0xCC	; 204
   52B6 CC                 1076 	.db #0xCC	; 204
   52B7 64                 1077 	.db #0x64	; 100	'd'
   52B8 CC                 1078 	.db #0xCC	; 204
   52B9 CC                 1079 	.db #0xCC	; 204
   52BA 8D                 1080 	.db #0x8D	; 141
   52BB CC                 1081 	.db #0xCC	; 204
   52BC CC                 1082 	.db #0xCC	; 204
   52BD 4E                 1083 	.db #0x4E	; 78	'N'
   52BE CC                 1084 	.db #0xCC	; 204
   52BF CC                 1085 	.db #0xCC	; 204
   52C0 98                 1086 	.db #0x98	; 152
   52C1 64                 1087 	.db #0x64	; 100	'd'
   52C2 CC                 1088 	.db #0xCC	; 204
   52C3 CC                 1089 	.db #0xCC	; 204
   52C4 8D                 1090 	.db #0x8D	; 141
   52C5 CC                 1091 	.db #0xCC	; 204
   52C6 CC                 1092 	.db #0xCC	; 204
   52C7 4E                 1093 	.db #0x4E	; 78	'N'
   52C8 CC                 1094 	.db #0xCC	; 204
   52C9 CC                 1095 	.db #0xCC	; 204
   52CA 98                 1096 	.db #0x98	; 152
   52CB CC                 1097 	.db #0xCC	; 204
   52CC CC                 1098 	.db #0xCC	; 204
   52CD CC                 1099 	.db #0xCC	; 204
   52CE 8D                 1100 	.db #0x8D	; 141
   52CF CC                 1101 	.db #0xCC	; 204
   52D0 CC                 1102 	.db #0xCC	; 204
   52D1 4E                 1103 	.db #0x4E	; 78	'N'
   52D2 CC                 1104 	.db #0xCC	; 204
   52D3 CC                 1105 	.db #0xCC	; 204
   52D4 98                 1106 	.db #0x98	; 152
   52D5 CC                 1107 	.db #0xCC	; 204
   52D6 CC                 1108 	.db #0xCC	; 204
   52D7 CC                 1109 	.db #0xCC	; 204
   52D8 8D                 1110 	.db #0x8D	; 141
   52D9 CC                 1111 	.db #0xCC	; 204
   52DA CC                 1112 	.db #0xCC	; 204
   52DB 4E                 1113 	.db #0x4E	; 78	'N'
   52DC CC                 1114 	.db #0xCC	; 204
   52DD CC                 1115 	.db #0xCC	; 204
   52DE 64                 1116 	.db #0x64	; 100	'd'
   52DF CC                 1117 	.db #0xCC	; 204
   52E0 CC                 1118 	.db #0xCC	; 204
   52E1 CC                 1119 	.db #0xCC	; 204
   52E2 8D                 1120 	.db #0x8D	; 141
   52E3 CC                 1121 	.db #0xCC	; 204
   52E4 CC                 1122 	.db #0xCC	; 204
   52E5 4E                 1123 	.db #0x4E	; 78	'N'
   52E6 CC                 1124 	.db #0xCC	; 204
   52E7 CC                 1125 	.db #0xCC	; 204
   52E8 64                 1126 	.db #0x64	; 100	'd'
   52E9 CC                 1127 	.db #0xCC	; 204
   52EA CC                 1128 	.db #0xCC	; 204
   52EB CC                 1129 	.db #0xCC	; 204
   52EC 8D                 1130 	.db #0x8D	; 141
   52ED CC                 1131 	.db #0xCC	; 204
   52EE CC                 1132 	.db #0xCC	; 204
   52EF 4E                 1133 	.db #0x4E	; 78	'N'
   52F0 CC                 1134 	.db #0xCC	; 204
   52F1 CC                 1135 	.db #0xCC	; 204
   52F2 64                 1136 	.db #0x64	; 100	'd'
   52F3 CC                 1137 	.db #0xCC	; 204
   52F4 CC                 1138 	.db #0xCC	; 204
   52F5 CC                 1139 	.db #0xCC	; 204
   52F6 8D                 1140 	.db #0x8D	; 141
   52F7 CC                 1141 	.db #0xCC	; 204
   52F8 CC                 1142 	.db #0xCC	; 204
   52F9 4E                 1143 	.db #0x4E	; 78	'N'
   52FA CC                 1144 	.db #0xCC	; 204
   52FB CC                 1145 	.db #0xCC	; 204
   52FC 64                 1146 	.db #0x64	; 100	'd'
   52FD CC                 1147 	.db #0xCC	; 204
   52FE CC                 1148 	.db #0xCC	; 204
   52FF CC                 1149 	.db #0xCC	; 204
   5300 8D                 1150 	.db #0x8D	; 141
   5301 CC                 1151 	.db #0xCC	; 204
   5302 CC                 1152 	.db #0xCC	; 204
   5303 4E                 1153 	.db #0x4E	; 78	'N'
   5304 CC                 1154 	.db #0xCC	; 204
   5305 CC                 1155 	.db #0xCC	; 204
   5306 30                 1156 	.db #0x30	; 48	'0'
   5307 30                 1157 	.db #0x30	; 48	'0'
   5308 64                 1158 	.db #0x64	; 100	'd'
   5309 CC                 1159 	.db #0xCC	; 204
   530A 8D                 1160 	.db #0x8D	; 141
   530B CC                 1161 	.db #0xCC	; 204
   530C CC                 1162 	.db #0xCC	; 204
   530D 4E                 1163 	.db #0x4E	; 78	'N'
   530E CC                 1164 	.db #0xCC	; 204
   530F CC                 1165 	.db #0xCC	; 204
   5310 30                 1166 	.db #0x30	; 48	'0'
   5311 30                 1167 	.db #0x30	; 48	'0'
   5312 64                 1168 	.db #0x64	; 100	'd'
   5313 CC                 1169 	.db #0xCC	; 204
   5314 8D                 1170 	.db #0x8D	; 141
   5315 CC                 1171 	.db #0xCC	; 204
   5316 CC                 1172 	.db #0xCC	; 204
   5317 4E                 1173 	.db #0x4E	; 78	'N'
   5318 CC                 1174 	.db #0xCC	; 204
   5319 CC                 1175 	.db #0xCC	; 204
   531A CC                 1176 	.db #0xCC	; 204
   531B CC                 1177 	.db #0xCC	; 204
   531C CC                 1178 	.db #0xCC	; 204
   531D CC                 1179 	.db #0xCC	; 204
   531E 8D                 1180 	.db #0x8D	; 141
   531F CC                 1181 	.db #0xCC	; 204
   5320 CC                 1182 	.db #0xCC	; 204
   5321 4E                 1183 	.db #0x4E	; 78	'N'
   5322 CC                 1184 	.db #0xCC	; 204
   5323 CC                 1185 	.db #0xCC	; 204
   5324 CC                 1186 	.db #0xCC	; 204
   5325 CC                 1187 	.db #0xCC	; 204
   5326 CC                 1188 	.db #0xCC	; 204
   5327 CC                 1189 	.db #0xCC	; 204
   5328 8D                 1190 	.db #0x8D	; 141
   5329 CC                 1191 	.db #0xCC	; 204
   532A CC                 1192 	.db #0xCC	; 204
   532B 4E                 1193 	.db #0x4E	; 78	'N'
   532C CC                 1194 	.db #0xCC	; 204
   532D CC                 1195 	.db #0xCC	; 204
   532E CC                 1196 	.db #0xCC	; 204
   532F CC                 1197 	.db #0xCC	; 204
   5330 CC                 1198 	.db #0xCC	; 204
   5331 CC                 1199 	.db #0xCC	; 204
   5332 8D                 1200 	.db #0x8D	; 141
   5333 CC                 1201 	.db #0xCC	; 204
   5334 CC                 1202 	.db #0xCC	; 204
   5335 4E                 1203 	.db #0x4E	; 78	'N'
   5336 CC                 1204 	.db #0xCC	; 204
   5337 CC                 1205 	.db #0xCC	; 204
   5338 CC                 1206 	.db #0xCC	; 204
   5339 CC                 1207 	.db #0xCC	; 204
   533A CC                 1208 	.db #0xCC	; 204
   533B CC                 1209 	.db #0xCC	; 204
   533C 8D                 1210 	.db #0x8D	; 141
   533D CC                 1211 	.db #0xCC	; 204
   533E CC                 1212 	.db #0xCC	; 204
   533F 0F                 1213 	.db #0x0F	; 15
   5340 CC                 1214 	.db #0xCC	; 204
   5341 CC                 1215 	.db #0xCC	; 204
   5342 CC                 1216 	.db #0xCC	; 204
   5343 CC                 1217 	.db #0xCC	; 204
   5344 CC                 1218 	.db #0xCC	; 204
   5345 CC                 1219 	.db #0xCC	; 204
   5346 0F                 1220 	.db #0x0F	; 15
   5347 CC                 1221 	.db #0xCC	; 204
   5348 CC                 1222 	.db #0xCC	; 204
   5349 8D                 1223 	.db #0x8D	; 141
   534A CC                 1224 	.db #0xCC	; 204
   534B CC                 1225 	.db #0xCC	; 204
   534C CC                 1226 	.db #0xCC	; 204
   534D CC                 1227 	.db #0xCC	; 204
   534E CC                 1228 	.db #0xCC	; 204
   534F CC                 1229 	.db #0xCC	; 204
   5350 4E                 1230 	.db #0x4E	; 78	'N'
   5351 CC                 1231 	.db #0xCC	; 204
   5352 CC                 1232 	.db #0xCC	; 204
   5353 8D                 1233 	.db #0x8D	; 141
   5354 0F                 1234 	.db #0x0F	; 15
   5355 0F                 1235 	.db #0x0F	; 15
   5356 0F                 1236 	.db #0x0F	; 15
   5357 0F                 1237 	.db #0x0F	; 15
   5358 0F                 1238 	.db #0x0F	; 15
   5359 0F                 1239 	.db #0x0F	; 15
   535A 4E                 1240 	.db #0x4E	; 78	'N'
   535B CC                 1241 	.db #0xCC	; 204
   535C F0                 1242 	.db #0xF0	; 240
   535D CC                 1243 	.db #0xCC	; 204
   535E CC                 1244 	.db #0xCC	; 204
   535F CC                 1245 	.db #0xCC	; 204
   5360 CC                 1246 	.db #0xCC	; 204
   5361 CC                 1247 	.db #0xCC	; 204
   5362 CC                 1248 	.db #0xCC	; 204
   5363 CC                 1249 	.db #0xCC	; 204
   5364 CC                 1250 	.db #0xCC	; 204
   5365 F0                 1251 	.db #0xF0	; 240
   5366 F0                 1252 	.db #0xF0	; 240
   5367 CC                 1253 	.db #0xCC	; 204
   5368 CC                 1254 	.db #0xCC	; 204
   5369 CC                 1255 	.db #0xCC	; 204
   536A CC                 1256 	.db #0xCC	; 204
   536B CC                 1257 	.db #0xCC	; 204
   536C CC                 1258 	.db #0xCC	; 204
   536D CC                 1259 	.db #0xCC	; 204
   536E CC                 1260 	.db #0xCC	; 204
   536F F0                 1261 	.db #0xF0	; 240
   5370                    1262 _tile_tiles_03:
   5370 F0                 1263 	.db #0xF0	; 240
   5371 30                 1264 	.db #0x30	; 48	'0'
   5372 30                 1265 	.db #0x30	; 48	'0'
   5373 30                 1266 	.db #0x30	; 48	'0'
   5374 30                 1267 	.db #0x30	; 48	'0'
   5375 30                 1268 	.db #0x30	; 48	'0'
   5376 30                 1269 	.db #0x30	; 48	'0'
   5377 30                 1270 	.db #0x30	; 48	'0'
   5378 30                 1271 	.db #0x30	; 48	'0'
   5379 F0                 1272 	.db #0xF0	; 240
   537A F0                 1273 	.db #0xF0	; 240
   537B 30                 1274 	.db #0x30	; 48	'0'
   537C 30                 1275 	.db #0x30	; 48	'0'
   537D 30                 1276 	.db #0x30	; 48	'0'
   537E 30                 1277 	.db #0x30	; 48	'0'
   537F 30                 1278 	.db #0x30	; 48	'0'
   5380 30                 1279 	.db #0x30	; 48	'0'
   5381 30                 1280 	.db #0x30	; 48	'0'
   5382 30                 1281 	.db #0x30	; 48	'0'
   5383 F0                 1282 	.db #0xF0	; 240
   5384 30                 1283 	.db #0x30	; 48	'0'
   5385 25                 1284 	.db #0x25	; 37
   5386 0F                 1285 	.db #0x0F	; 15
   5387 0F                 1286 	.db #0x0F	; 15
   5388 0F                 1287 	.db #0x0F	; 15
   5389 0F                 1288 	.db #0x0F	; 15
   538A 0F                 1289 	.db #0x0F	; 15
   538B 0F                 1290 	.db #0x0F	; 15
   538C 1A                 1291 	.db #0x1A	; 26
   538D 30                 1292 	.db #0x30	; 48	'0'
   538E 30                 1293 	.db #0x30	; 48	'0'
   538F 25                 1294 	.db #0x25	; 37
   5390 30                 1295 	.db #0x30	; 48	'0'
   5391 30                 1296 	.db #0x30	; 48	'0'
   5392 30                 1297 	.db #0x30	; 48	'0'
   5393 30                 1298 	.db #0x30	; 48	'0'
   5394 30                 1299 	.db #0x30	; 48	'0'
   5395 30                 1300 	.db #0x30	; 48	'0'
   5396 1A                 1301 	.db #0x1A	; 26
   5397 30                 1302 	.db #0x30	; 48	'0'
   5398 30                 1303 	.db #0x30	; 48	'0'
   5399 0F                 1304 	.db #0x0F	; 15
   539A 30                 1305 	.db #0x30	; 48	'0'
   539B 30                 1306 	.db #0x30	; 48	'0'
   539C 30                 1307 	.db #0x30	; 48	'0'
   539D 30                 1308 	.db #0x30	; 48	'0'
   539E 30                 1309 	.db #0x30	; 48	'0'
   539F 30                 1310 	.db #0x30	; 48	'0'
   53A0 0F                 1311 	.db #0x0F	; 15
   53A1 30                 1312 	.db #0x30	; 48	'0'
   53A2 30                 1313 	.db #0x30	; 48	'0'
   53A3 1A                 1314 	.db #0x1A	; 26
   53A4 30                 1315 	.db #0x30	; 48	'0'
   53A5 30                 1316 	.db #0x30	; 48	'0'
   53A6 30                 1317 	.db #0x30	; 48	'0'
   53A7 30                 1318 	.db #0x30	; 48	'0'
   53A8 30                 1319 	.db #0x30	; 48	'0'
   53A9 30                 1320 	.db #0x30	; 48	'0'
   53AA 25                 1321 	.db #0x25	; 37
   53AB 30                 1322 	.db #0x30	; 48	'0'
   53AC 30                 1323 	.db #0x30	; 48	'0'
   53AD 1A                 1324 	.db #0x1A	; 26
   53AE 30                 1325 	.db #0x30	; 48	'0'
   53AF 30                 1326 	.db #0x30	; 48	'0'
   53B0 30                 1327 	.db #0x30	; 48	'0'
   53B1 30                 1328 	.db #0x30	; 48	'0'
   53B2 30                 1329 	.db #0x30	; 48	'0'
   53B3 30                 1330 	.db #0x30	; 48	'0'
   53B4 25                 1331 	.db #0x25	; 37
   53B5 30                 1332 	.db #0x30	; 48	'0'
   53B6 30                 1333 	.db #0x30	; 48	'0'
   53B7 1A                 1334 	.db #0x1A	; 26
   53B8 30                 1335 	.db #0x30	; 48	'0'
   53B9 30                 1336 	.db #0x30	; 48	'0'
   53BA 30                 1337 	.db #0x30	; 48	'0'
   53BB 30                 1338 	.db #0x30	; 48	'0'
   53BC 30                 1339 	.db #0x30	; 48	'0'
   53BD 30                 1340 	.db #0x30	; 48	'0'
   53BE 25                 1341 	.db #0x25	; 37
   53BF 30                 1342 	.db #0x30	; 48	'0'
   53C0 30                 1343 	.db #0x30	; 48	'0'
   53C1 1A                 1344 	.db #0x1A	; 26
   53C2 30                 1345 	.db #0x30	; 48	'0'
   53C3 30                 1346 	.db #0x30	; 48	'0'
   53C4 30                 1347 	.db #0x30	; 48	'0'
   53C5 30                 1348 	.db #0x30	; 48	'0'
   53C6 30                 1349 	.db #0x30	; 48	'0'
   53C7 30                 1350 	.db #0x30	; 48	'0'
   53C8 25                 1351 	.db #0x25	; 37
   53C9 30                 1352 	.db #0x30	; 48	'0'
   53CA 30                 1353 	.db #0x30	; 48	'0'
   53CB 1A                 1354 	.db #0x1A	; 26
   53CC 30                 1355 	.db #0x30	; 48	'0'
   53CD 30                 1356 	.db #0x30	; 48	'0'
   53CE 30                 1357 	.db #0x30	; 48	'0'
   53CF 30                 1358 	.db #0x30	; 48	'0'
   53D0 30                 1359 	.db #0x30	; 48	'0'
   53D1 30                 1360 	.db #0x30	; 48	'0'
   53D2 25                 1361 	.db #0x25	; 37
   53D3 30                 1362 	.db #0x30	; 48	'0'
   53D4 30                 1363 	.db #0x30	; 48	'0'
   53D5 1A                 1364 	.db #0x1A	; 26
   53D6 30                 1365 	.db #0x30	; 48	'0'
   53D7 30                 1366 	.db #0x30	; 48	'0'
   53D8 64                 1367 	.db #0x64	; 100	'd'
   53D9 CC                 1368 	.db #0xCC	; 204
   53DA 30                 1369 	.db #0x30	; 48	'0'
   53DB 30                 1370 	.db #0x30	; 48	'0'
   53DC 25                 1371 	.db #0x25	; 37
   53DD 30                 1372 	.db #0x30	; 48	'0'
   53DE 30                 1373 	.db #0x30	; 48	'0'
   53DF 1A                 1374 	.db #0x1A	; 26
   53E0 30                 1375 	.db #0x30	; 48	'0'
   53E1 30                 1376 	.db #0x30	; 48	'0'
   53E2 CC                 1377 	.db #0xCC	; 204
   53E3 CC                 1378 	.db #0xCC	; 204
   53E4 98                 1379 	.db #0x98	; 152
   53E5 30                 1380 	.db #0x30	; 48	'0'
   53E6 25                 1381 	.db #0x25	; 37
   53E7 30                 1382 	.db #0x30	; 48	'0'
   53E8 30                 1383 	.db #0x30	; 48	'0'
   53E9 1A                 1384 	.db #0x1A	; 26
   53EA 30                 1385 	.db #0x30	; 48	'0'
   53EB 64                 1386 	.db #0x64	; 100	'd'
   53EC CC                 1387 	.db #0xCC	; 204
   53ED 64                 1388 	.db #0x64	; 100	'd'
   53EE CC                 1389 	.db #0xCC	; 204
   53EF 30                 1390 	.db #0x30	; 48	'0'
   53F0 25                 1391 	.db #0x25	; 37
   53F1 30                 1392 	.db #0x30	; 48	'0'
   53F2 30                 1393 	.db #0x30	; 48	'0'
   53F3 1A                 1394 	.db #0x1A	; 26
   53F4 30                 1395 	.db #0x30	; 48	'0'
   53F5 64                 1396 	.db #0x64	; 100	'd'
   53F6 98                 1397 	.db #0x98	; 152
   53F7 30                 1398 	.db #0x30	; 48	'0'
   53F8 CC                 1399 	.db #0xCC	; 204
   53F9 30                 1400 	.db #0x30	; 48	'0'
   53FA 25                 1401 	.db #0x25	; 37
   53FB 30                 1402 	.db #0x30	; 48	'0'
   53FC 30                 1403 	.db #0x30	; 48	'0'
   53FD 1A                 1404 	.db #0x1A	; 26
   53FE 30                 1405 	.db #0x30	; 48	'0'
   53FF 64                 1406 	.db #0x64	; 100	'd'
   5400 98                 1407 	.db #0x98	; 152
   5401 30                 1408 	.db #0x30	; 48	'0'
   5402 CC                 1409 	.db #0xCC	; 204
   5403 30                 1410 	.db #0x30	; 48	'0'
   5404 25                 1411 	.db #0x25	; 37
   5405 30                 1412 	.db #0x30	; 48	'0'
   5406 30                 1413 	.db #0x30	; 48	'0'
   5407 1A                 1414 	.db #0x1A	; 26
   5408 30                 1415 	.db #0x30	; 48	'0'
   5409 30                 1416 	.db #0x30	; 48	'0'
   540A 30                 1417 	.db #0x30	; 48	'0'
   540B 30                 1418 	.db #0x30	; 48	'0'
   540C CC                 1419 	.db #0xCC	; 204
   540D 30                 1420 	.db #0x30	; 48	'0'
   540E 25                 1421 	.db #0x25	; 37
   540F 30                 1422 	.db #0x30	; 48	'0'
   5410 30                 1423 	.db #0x30	; 48	'0'
   5411 1A                 1424 	.db #0x1A	; 26
   5412 30                 1425 	.db #0x30	; 48	'0'
   5413 30                 1426 	.db #0x30	; 48	'0'
   5414 30                 1427 	.db #0x30	; 48	'0'
   5415 30                 1428 	.db #0x30	; 48	'0'
   5416 CC                 1429 	.db #0xCC	; 204
   5417 30                 1430 	.db #0x30	; 48	'0'
   5418 25                 1431 	.db #0x25	; 37
   5419 30                 1432 	.db #0x30	; 48	'0'
   541A 30                 1433 	.db #0x30	; 48	'0'
   541B 1A                 1434 	.db #0x1A	; 26
   541C 30                 1435 	.db #0x30	; 48	'0'
   541D 30                 1436 	.db #0x30	; 48	'0'
   541E 30                 1437 	.db #0x30	; 48	'0'
   541F 30                 1438 	.db #0x30	; 48	'0'
   5420 CC                 1439 	.db #0xCC	; 204
   5421 30                 1440 	.db #0x30	; 48	'0'
   5422 25                 1441 	.db #0x25	; 37
   5423 30                 1442 	.db #0x30	; 48	'0'
   5424 30                 1443 	.db #0x30	; 48	'0'
   5425 1A                 1444 	.db #0x1A	; 26
   5426 30                 1445 	.db #0x30	; 48	'0'
   5427 30                 1446 	.db #0x30	; 48	'0'
   5428 30                 1447 	.db #0x30	; 48	'0'
   5429 64                 1448 	.db #0x64	; 100	'd'
   542A CC                 1449 	.db #0xCC	; 204
   542B 30                 1450 	.db #0x30	; 48	'0'
   542C 25                 1451 	.db #0x25	; 37
   542D 30                 1452 	.db #0x30	; 48	'0'
   542E 30                 1453 	.db #0x30	; 48	'0'
   542F 1A                 1454 	.db #0x1A	; 26
   5430 30                 1455 	.db #0x30	; 48	'0'
   5431 30                 1456 	.db #0x30	; 48	'0'
   5432 30                 1457 	.db #0x30	; 48	'0'
   5433 CC                 1458 	.db #0xCC	; 204
   5434 CC                 1459 	.db #0xCC	; 204
   5435 30                 1460 	.db #0x30	; 48	'0'
   5436 25                 1461 	.db #0x25	; 37
   5437 30                 1462 	.db #0x30	; 48	'0'
   5438 30                 1463 	.db #0x30	; 48	'0'
   5439 1A                 1464 	.db #0x1A	; 26
   543A 30                 1465 	.db #0x30	; 48	'0'
   543B 30                 1466 	.db #0x30	; 48	'0'
   543C 30                 1467 	.db #0x30	; 48	'0'
   543D CC                 1468 	.db #0xCC	; 204
   543E 98                 1469 	.db #0x98	; 152
   543F 30                 1470 	.db #0x30	; 48	'0'
   5440 25                 1471 	.db #0x25	; 37
   5441 30                 1472 	.db #0x30	; 48	'0'
   5442 30                 1473 	.db #0x30	; 48	'0'
   5443 1A                 1474 	.db #0x1A	; 26
   5444 30                 1475 	.db #0x30	; 48	'0'
   5445 30                 1476 	.db #0x30	; 48	'0'
   5446 30                 1477 	.db #0x30	; 48	'0'
   5447 64                 1478 	.db #0x64	; 100	'd'
   5448 CC                 1479 	.db #0xCC	; 204
   5449 30                 1480 	.db #0x30	; 48	'0'
   544A 25                 1481 	.db #0x25	; 37
   544B 30                 1482 	.db #0x30	; 48	'0'
   544C 30                 1483 	.db #0x30	; 48	'0'
   544D 1A                 1484 	.db #0x1A	; 26
   544E 30                 1485 	.db #0x30	; 48	'0'
   544F 30                 1486 	.db #0x30	; 48	'0'
   5450 30                 1487 	.db #0x30	; 48	'0'
   5451 30                 1488 	.db #0x30	; 48	'0'
   5452 CC                 1489 	.db #0xCC	; 204
   5453 30                 1490 	.db #0x30	; 48	'0'
   5454 25                 1491 	.db #0x25	; 37
   5455 30                 1492 	.db #0x30	; 48	'0'
   5456 30                 1493 	.db #0x30	; 48	'0'
   5457 1A                 1494 	.db #0x1A	; 26
   5458 30                 1495 	.db #0x30	; 48	'0'
   5459 30                 1496 	.db #0x30	; 48	'0'
   545A 30                 1497 	.db #0x30	; 48	'0'
   545B 30                 1498 	.db #0x30	; 48	'0'
   545C CC                 1499 	.db #0xCC	; 204
   545D 30                 1500 	.db #0x30	; 48	'0'
   545E 25                 1501 	.db #0x25	; 37
   545F 30                 1502 	.db #0x30	; 48	'0'
   5460 30                 1503 	.db #0x30	; 48	'0'
   5461 1A                 1504 	.db #0x1A	; 26
   5462 30                 1505 	.db #0x30	; 48	'0'
   5463 30                 1506 	.db #0x30	; 48	'0'
   5464 30                 1507 	.db #0x30	; 48	'0'
   5465 30                 1508 	.db #0x30	; 48	'0'
   5466 CC                 1509 	.db #0xCC	; 204
   5467 30                 1510 	.db #0x30	; 48	'0'
   5468 25                 1511 	.db #0x25	; 37
   5469 30                 1512 	.db #0x30	; 48	'0'
   546A 30                 1513 	.db #0x30	; 48	'0'
   546B 1A                 1514 	.db #0x1A	; 26
   546C 30                 1515 	.db #0x30	; 48	'0'
   546D 30                 1516 	.db #0x30	; 48	'0'
   546E 30                 1517 	.db #0x30	; 48	'0'
   546F 30                 1518 	.db #0x30	; 48	'0'
   5470 CC                 1519 	.db #0xCC	; 204
   5471 30                 1520 	.db #0x30	; 48	'0'
   5472 25                 1521 	.db #0x25	; 37
   5473 30                 1522 	.db #0x30	; 48	'0'
   5474 30                 1523 	.db #0x30	; 48	'0'
   5475 1A                 1524 	.db #0x1A	; 26
   5476 30                 1525 	.db #0x30	; 48	'0'
   5477 30                 1526 	.db #0x30	; 48	'0'
   5478 30                 1527 	.db #0x30	; 48	'0'
   5479 30                 1528 	.db #0x30	; 48	'0'
   547A CC                 1529 	.db #0xCC	; 204
   547B 30                 1530 	.db #0x30	; 48	'0'
   547C 25                 1531 	.db #0x25	; 37
   547D 30                 1532 	.db #0x30	; 48	'0'
   547E 30                 1533 	.db #0x30	; 48	'0'
   547F 1A                 1534 	.db #0x1A	; 26
   5480 30                 1535 	.db #0x30	; 48	'0'
   5481 64                 1536 	.db #0x64	; 100	'd'
   5482 98                 1537 	.db #0x98	; 152
   5483 30                 1538 	.db #0x30	; 48	'0'
   5484 CC                 1539 	.db #0xCC	; 204
   5485 30                 1540 	.db #0x30	; 48	'0'
   5486 25                 1541 	.db #0x25	; 37
   5487 30                 1542 	.db #0x30	; 48	'0'
   5488 30                 1543 	.db #0x30	; 48	'0'
   5489 1A                 1544 	.db #0x1A	; 26
   548A 30                 1545 	.db #0x30	; 48	'0'
   548B 64                 1546 	.db #0x64	; 100	'd'
   548C CC                 1547 	.db #0xCC	; 204
   548D 64                 1548 	.db #0x64	; 100	'd'
   548E CC                 1549 	.db #0xCC	; 204
   548F 30                 1550 	.db #0x30	; 48	'0'
   5490 25                 1551 	.db #0x25	; 37
   5491 30                 1552 	.db #0x30	; 48	'0'
   5492 30                 1553 	.db #0x30	; 48	'0'
   5493 1A                 1554 	.db #0x1A	; 26
   5494 30                 1555 	.db #0x30	; 48	'0'
   5495 64                 1556 	.db #0x64	; 100	'd'
   5496 CC                 1557 	.db #0xCC	; 204
   5497 CC                 1558 	.db #0xCC	; 204
   5498 CC                 1559 	.db #0xCC	; 204
   5499 30                 1560 	.db #0x30	; 48	'0'
   549A 25                 1561 	.db #0x25	; 37
   549B 30                 1562 	.db #0x30	; 48	'0'
   549C 30                 1563 	.db #0x30	; 48	'0'
   549D 1A                 1564 	.db #0x1A	; 26
   549E 30                 1565 	.db #0x30	; 48	'0'
   549F 30                 1566 	.db #0x30	; 48	'0'
   54A0 CC                 1567 	.db #0xCC	; 204
   54A1 CC                 1568 	.db #0xCC	; 204
   54A2 98                 1569 	.db #0x98	; 152
   54A3 30                 1570 	.db #0x30	; 48	'0'
   54A4 25                 1571 	.db #0x25	; 37
   54A5 30                 1572 	.db #0x30	; 48	'0'
   54A6 30                 1573 	.db #0x30	; 48	'0'
   54A7 1A                 1574 	.db #0x1A	; 26
   54A8 30                 1575 	.db #0x30	; 48	'0'
   54A9 30                 1576 	.db #0x30	; 48	'0'
   54AA 64                 1577 	.db #0x64	; 100	'd'
   54AB CC                 1578 	.db #0xCC	; 204
   54AC 30                 1579 	.db #0x30	; 48	'0'
   54AD 30                 1580 	.db #0x30	; 48	'0'
   54AE 25                 1581 	.db #0x25	; 37
   54AF 30                 1582 	.db #0x30	; 48	'0'
   54B0 30                 1583 	.db #0x30	; 48	'0'
   54B1 1A                 1584 	.db #0x1A	; 26
   54B2 30                 1585 	.db #0x30	; 48	'0'
   54B3 30                 1586 	.db #0x30	; 48	'0'
   54B4 30                 1587 	.db #0x30	; 48	'0'
   54B5 30                 1588 	.db #0x30	; 48	'0'
   54B6 30                 1589 	.db #0x30	; 48	'0'
   54B7 30                 1590 	.db #0x30	; 48	'0'
   54B8 25                 1591 	.db #0x25	; 37
   54B9 30                 1592 	.db #0x30	; 48	'0'
   54BA 30                 1593 	.db #0x30	; 48	'0'
   54BB 1A                 1594 	.db #0x1A	; 26
   54BC 30                 1595 	.db #0x30	; 48	'0'
   54BD 30                 1596 	.db #0x30	; 48	'0'
   54BE 30                 1597 	.db #0x30	; 48	'0'
   54BF 30                 1598 	.db #0x30	; 48	'0'
   54C0 30                 1599 	.db #0x30	; 48	'0'
   54C1 30                 1600 	.db #0x30	; 48	'0'
   54C2 25                 1601 	.db #0x25	; 37
   54C3 30                 1602 	.db #0x30	; 48	'0'
   54C4 30                 1603 	.db #0x30	; 48	'0'
   54C5 1A                 1604 	.db #0x1A	; 26
   54C6 30                 1605 	.db #0x30	; 48	'0'
   54C7 30                 1606 	.db #0x30	; 48	'0'
   54C8 30                 1607 	.db #0x30	; 48	'0'
   54C9 30                 1608 	.db #0x30	; 48	'0'
   54CA 30                 1609 	.db #0x30	; 48	'0'
   54CB 30                 1610 	.db #0x30	; 48	'0'
   54CC 25                 1611 	.db #0x25	; 37
   54CD 30                 1612 	.db #0x30	; 48	'0'
   54CE 30                 1613 	.db #0x30	; 48	'0'
   54CF 0F                 1614 	.db #0x0F	; 15
   54D0 30                 1615 	.db #0x30	; 48	'0'
   54D1 30                 1616 	.db #0x30	; 48	'0'
   54D2 30                 1617 	.db #0x30	; 48	'0'
   54D3 30                 1618 	.db #0x30	; 48	'0'
   54D4 30                 1619 	.db #0x30	; 48	'0'
   54D5 30                 1620 	.db #0x30	; 48	'0'
   54D6 0F                 1621 	.db #0x0F	; 15
   54D7 30                 1622 	.db #0x30	; 48	'0'
   54D8 30                 1623 	.db #0x30	; 48	'0'
   54D9 25                 1624 	.db #0x25	; 37
   54DA 30                 1625 	.db #0x30	; 48	'0'
   54DB 30                 1626 	.db #0x30	; 48	'0'
   54DC 30                 1627 	.db #0x30	; 48	'0'
   54DD 30                 1628 	.db #0x30	; 48	'0'
   54DE 30                 1629 	.db #0x30	; 48	'0'
   54DF 30                 1630 	.db #0x30	; 48	'0'
   54E0 1A                 1631 	.db #0x1A	; 26
   54E1 30                 1632 	.db #0x30	; 48	'0'
   54E2 30                 1633 	.db #0x30	; 48	'0'
   54E3 25                 1634 	.db #0x25	; 37
   54E4 0F                 1635 	.db #0x0F	; 15
   54E5 0F                 1636 	.db #0x0F	; 15
   54E6 0F                 1637 	.db #0x0F	; 15
   54E7 0F                 1638 	.db #0x0F	; 15
   54E8 0F                 1639 	.db #0x0F	; 15
   54E9 0F                 1640 	.db #0x0F	; 15
   54EA 1A                 1641 	.db #0x1A	; 26
   54EB 30                 1642 	.db #0x30	; 48	'0'
   54EC F0                 1643 	.db #0xF0	; 240
   54ED 30                 1644 	.db #0x30	; 48	'0'
   54EE 30                 1645 	.db #0x30	; 48	'0'
   54EF 30                 1646 	.db #0x30	; 48	'0'
   54F0 30                 1647 	.db #0x30	; 48	'0'
   54F1 30                 1648 	.db #0x30	; 48	'0'
   54F2 30                 1649 	.db #0x30	; 48	'0'
   54F3 30                 1650 	.db #0x30	; 48	'0'
   54F4 30                 1651 	.db #0x30	; 48	'0'
   54F5 F0                 1652 	.db #0xF0	; 240
   54F6 F0                 1653 	.db #0xF0	; 240
   54F7 30                 1654 	.db #0x30	; 48	'0'
   54F8 30                 1655 	.db #0x30	; 48	'0'
   54F9 30                 1656 	.db #0x30	; 48	'0'
   54FA 30                 1657 	.db #0x30	; 48	'0'
   54FB 30                 1658 	.db #0x30	; 48	'0'
   54FC 30                 1659 	.db #0x30	; 48	'0'
   54FD 30                 1660 	.db #0x30	; 48	'0'
   54FE 30                 1661 	.db #0x30	; 48	'0'
   54FF F0                 1662 	.db #0xF0	; 240
   5500                    1663 _tile_tiles_04:
   5500 F0                 1664 	.db #0xF0	; 240
   5501 30                 1665 	.db #0x30	; 48	'0'
   5502 30                 1666 	.db #0x30	; 48	'0'
   5503 30                 1667 	.db #0x30	; 48	'0'
   5504 30                 1668 	.db #0x30	; 48	'0'
   5505 30                 1669 	.db #0x30	; 48	'0'
   5506 30                 1670 	.db #0x30	; 48	'0'
   5507 30                 1671 	.db #0x30	; 48	'0'
   5508 30                 1672 	.db #0x30	; 48	'0'
   5509 F0                 1673 	.db #0xF0	; 240
   550A F0                 1674 	.db #0xF0	; 240
   550B 30                 1675 	.db #0x30	; 48	'0'
   550C 30                 1676 	.db #0x30	; 48	'0'
   550D 30                 1677 	.db #0x30	; 48	'0'
   550E 30                 1678 	.db #0x30	; 48	'0'
   550F 30                 1679 	.db #0x30	; 48	'0'
   5510 30                 1680 	.db #0x30	; 48	'0'
   5511 30                 1681 	.db #0x30	; 48	'0'
   5512 30                 1682 	.db #0x30	; 48	'0'
   5513 F0                 1683 	.db #0xF0	; 240
   5514 30                 1684 	.db #0x30	; 48	'0'
   5515 25                 1685 	.db #0x25	; 37
   5516 0F                 1686 	.db #0x0F	; 15
   5517 0F                 1687 	.db #0x0F	; 15
   5518 0F                 1688 	.db #0x0F	; 15
   5519 0F                 1689 	.db #0x0F	; 15
   551A 0F                 1690 	.db #0x0F	; 15
   551B 0F                 1691 	.db #0x0F	; 15
   551C 1A                 1692 	.db #0x1A	; 26
   551D 30                 1693 	.db #0x30	; 48	'0'
   551E 30                 1694 	.db #0x30	; 48	'0'
   551F 25                 1695 	.db #0x25	; 37
   5520 30                 1696 	.db #0x30	; 48	'0'
   5521 30                 1697 	.db #0x30	; 48	'0'
   5522 30                 1698 	.db #0x30	; 48	'0'
   5523 30                 1699 	.db #0x30	; 48	'0'
   5524 30                 1700 	.db #0x30	; 48	'0'
   5525 30                 1701 	.db #0x30	; 48	'0'
   5526 1A                 1702 	.db #0x1A	; 26
   5527 30                 1703 	.db #0x30	; 48	'0'
   5528 30                 1704 	.db #0x30	; 48	'0'
   5529 0F                 1705 	.db #0x0F	; 15
   552A 30                 1706 	.db #0x30	; 48	'0'
   552B 30                 1707 	.db #0x30	; 48	'0'
   552C 30                 1708 	.db #0x30	; 48	'0'
   552D 30                 1709 	.db #0x30	; 48	'0'
   552E 30                 1710 	.db #0x30	; 48	'0'
   552F 30                 1711 	.db #0x30	; 48	'0'
   5530 0F                 1712 	.db #0x0F	; 15
   5531 30                 1713 	.db #0x30	; 48	'0'
   5532 30                 1714 	.db #0x30	; 48	'0'
   5533 1A                 1715 	.db #0x1A	; 26
   5534 30                 1716 	.db #0x30	; 48	'0'
   5535 30                 1717 	.db #0x30	; 48	'0'
   5536 30                 1718 	.db #0x30	; 48	'0'
   5537 30                 1719 	.db #0x30	; 48	'0'
   5538 30                 1720 	.db #0x30	; 48	'0'
   5539 30                 1721 	.db #0x30	; 48	'0'
   553A 25                 1722 	.db #0x25	; 37
   553B 30                 1723 	.db #0x30	; 48	'0'
   553C 30                 1724 	.db #0x30	; 48	'0'
   553D 1A                 1725 	.db #0x1A	; 26
   553E 30                 1726 	.db #0x30	; 48	'0'
   553F 30                 1727 	.db #0x30	; 48	'0'
   5540 30                 1728 	.db #0x30	; 48	'0'
   5541 30                 1729 	.db #0x30	; 48	'0'
   5542 30                 1730 	.db #0x30	; 48	'0'
   5543 30                 1731 	.db #0x30	; 48	'0'
   5544 25                 1732 	.db #0x25	; 37
   5545 30                 1733 	.db #0x30	; 48	'0'
   5546 30                 1734 	.db #0x30	; 48	'0'
   5547 1A                 1735 	.db #0x1A	; 26
   5548 30                 1736 	.db #0x30	; 48	'0'
   5549 30                 1737 	.db #0x30	; 48	'0'
   554A 30                 1738 	.db #0x30	; 48	'0'
   554B 30                 1739 	.db #0x30	; 48	'0'
   554C 30                 1740 	.db #0x30	; 48	'0'
   554D 30                 1741 	.db #0x30	; 48	'0'
   554E 25                 1742 	.db #0x25	; 37
   554F 30                 1743 	.db #0x30	; 48	'0'
   5550 30                 1744 	.db #0x30	; 48	'0'
   5551 1A                 1745 	.db #0x1A	; 26
   5552 30                 1746 	.db #0x30	; 48	'0'
   5553 30                 1747 	.db #0x30	; 48	'0'
   5554 30                 1748 	.db #0x30	; 48	'0'
   5555 30                 1749 	.db #0x30	; 48	'0'
   5556 30                 1750 	.db #0x30	; 48	'0'
   5557 30                 1751 	.db #0x30	; 48	'0'
   5558 25                 1752 	.db #0x25	; 37
   5559 30                 1753 	.db #0x30	; 48	'0'
   555A 30                 1754 	.db #0x30	; 48	'0'
   555B 1A                 1755 	.db #0x1A	; 26
   555C 30                 1756 	.db #0x30	; 48	'0'
   555D 30                 1757 	.db #0x30	; 48	'0'
   555E 30                 1758 	.db #0x30	; 48	'0'
   555F 30                 1759 	.db #0x30	; 48	'0'
   5560 30                 1760 	.db #0x30	; 48	'0'
   5561 30                 1761 	.db #0x30	; 48	'0'
   5562 25                 1762 	.db #0x25	; 37
   5563 30                 1763 	.db #0x30	; 48	'0'
   5564 30                 1764 	.db #0x30	; 48	'0'
   5565 1A                 1765 	.db #0x1A	; 26
   5566 30                 1766 	.db #0x30	; 48	'0'
   5567 30                 1767 	.db #0x30	; 48	'0'
   5568 30                 1768 	.db #0x30	; 48	'0'
   5569 CC                 1769 	.db #0xCC	; 204
   556A 98                 1770 	.db #0x98	; 152
   556B 30                 1771 	.db #0x30	; 48	'0'
   556C 25                 1772 	.db #0x25	; 37
   556D 30                 1773 	.db #0x30	; 48	'0'
   556E 30                 1774 	.db #0x30	; 48	'0'
   556F 1A                 1775 	.db #0x1A	; 26
   5570 30                 1776 	.db #0x30	; 48	'0'
   5571 30                 1777 	.db #0x30	; 48	'0'
   5572 64                 1778 	.db #0x64	; 100	'd'
   5573 CC                 1779 	.db #0xCC	; 204
   5574 CC                 1780 	.db #0xCC	; 204
   5575 30                 1781 	.db #0x30	; 48	'0'
   5576 25                 1782 	.db #0x25	; 37
   5577 30                 1783 	.db #0x30	; 48	'0'
   5578 30                 1784 	.db #0x30	; 48	'0'
   5579 1A                 1785 	.db #0x1A	; 26
   557A 30                 1786 	.db #0x30	; 48	'0'
   557B 30                 1787 	.db #0x30	; 48	'0'
   557C CC                 1788 	.db #0xCC	; 204
   557D 98                 1789 	.db #0x98	; 152
   557E CC                 1790 	.db #0xCC	; 204
   557F 30                 1791 	.db #0x30	; 48	'0'
   5580 25                 1792 	.db #0x25	; 37
   5581 30                 1793 	.db #0x30	; 48	'0'
   5582 30                 1794 	.db #0x30	; 48	'0'
   5583 1A                 1795 	.db #0x1A	; 26
   5584 30                 1796 	.db #0x30	; 48	'0'
   5585 30                 1797 	.db #0x30	; 48	'0'
   5586 CC                 1798 	.db #0xCC	; 204
   5587 30                 1799 	.db #0x30	; 48	'0'
   5588 30                 1800 	.db #0x30	; 48	'0'
   5589 30                 1801 	.db #0x30	; 48	'0'
   558A 25                 1802 	.db #0x25	; 37
   558B 30                 1803 	.db #0x30	; 48	'0'
   558C 30                 1804 	.db #0x30	; 48	'0'
   558D 1A                 1805 	.db #0x1A	; 26
   558E 30                 1806 	.db #0x30	; 48	'0'
   558F 64                 1807 	.db #0x64	; 100	'd'
   5590 98                 1808 	.db #0x98	; 152
   5591 30                 1809 	.db #0x30	; 48	'0'
   5592 30                 1810 	.db #0x30	; 48	'0'
   5593 30                 1811 	.db #0x30	; 48	'0'
   5594 25                 1812 	.db #0x25	; 37
   5595 30                 1813 	.db #0x30	; 48	'0'
   5596 30                 1814 	.db #0x30	; 48	'0'
   5597 1A                 1815 	.db #0x1A	; 26
   5598 30                 1816 	.db #0x30	; 48	'0'
   5599 64                 1817 	.db #0x64	; 100	'd'
   559A 98                 1818 	.db #0x98	; 152
   559B 30                 1819 	.db #0x30	; 48	'0'
   559C 30                 1820 	.db #0x30	; 48	'0'
   559D 30                 1821 	.db #0x30	; 48	'0'
   559E 25                 1822 	.db #0x25	; 37
   559F 30                 1823 	.db #0x30	; 48	'0'
   55A0 30                 1824 	.db #0x30	; 48	'0'
   55A1 1A                 1825 	.db #0x1A	; 26
   55A2 30                 1826 	.db #0x30	; 48	'0'
   55A3 64                 1827 	.db #0x64	; 100	'd'
   55A4 98                 1828 	.db #0x98	; 152
   55A5 30                 1829 	.db #0x30	; 48	'0'
   55A6 30                 1830 	.db #0x30	; 48	'0'
   55A7 30                 1831 	.db #0x30	; 48	'0'
   55A8 25                 1832 	.db #0x25	; 37
   55A9 30                 1833 	.db #0x30	; 48	'0'
   55AA 30                 1834 	.db #0x30	; 48	'0'
   55AB 1A                 1835 	.db #0x1A	; 26
   55AC 30                 1836 	.db #0x30	; 48	'0'
   55AD 64                 1837 	.db #0x64	; 100	'd'
   55AE 98                 1838 	.db #0x98	; 152
   55AF 30                 1839 	.db #0x30	; 48	'0'
   55B0 30                 1840 	.db #0x30	; 48	'0'
   55B1 30                 1841 	.db #0x30	; 48	'0'
   55B2 25                 1842 	.db #0x25	; 37
   55B3 30                 1843 	.db #0x30	; 48	'0'
   55B4 30                 1844 	.db #0x30	; 48	'0'
   55B5 1A                 1845 	.db #0x1A	; 26
   55B6 30                 1846 	.db #0x30	; 48	'0'
   55B7 64                 1847 	.db #0x64	; 100	'd'
   55B8 98                 1848 	.db #0x98	; 152
   55B9 CC                 1849 	.db #0xCC	; 204
   55BA 30                 1850 	.db #0x30	; 48	'0'
   55BB 30                 1851 	.db #0x30	; 48	'0'
   55BC 25                 1852 	.db #0x25	; 37
   55BD 30                 1853 	.db #0x30	; 48	'0'
   55BE 30                 1854 	.db #0x30	; 48	'0'
   55BF 1A                 1855 	.db #0x1A	; 26
   55C0 30                 1856 	.db #0x30	; 48	'0'
   55C1 64                 1857 	.db #0x64	; 100	'd'
   55C2 CC                 1858 	.db #0xCC	; 204
   55C3 CC                 1859 	.db #0xCC	; 204
   55C4 98                 1860 	.db #0x98	; 152
   55C5 30                 1861 	.db #0x30	; 48	'0'
   55C6 25                 1862 	.db #0x25	; 37
   55C7 30                 1863 	.db #0x30	; 48	'0'
   55C8 30                 1864 	.db #0x30	; 48	'0'
   55C9 1A                 1865 	.db #0x1A	; 26
   55CA 30                 1866 	.db #0x30	; 48	'0'
   55CB 64                 1867 	.db #0x64	; 100	'd'
   55CC CC                 1868 	.db #0xCC	; 204
   55CD CC                 1869 	.db #0xCC	; 204
   55CE 98                 1870 	.db #0x98	; 152
   55CF 30                 1871 	.db #0x30	; 48	'0'
   55D0 25                 1872 	.db #0x25	; 37
   55D1 30                 1873 	.db #0x30	; 48	'0'
   55D2 30                 1874 	.db #0x30	; 48	'0'
   55D3 1A                 1875 	.db #0x1A	; 26
   55D4 30                 1876 	.db #0x30	; 48	'0'
   55D5 64                 1877 	.db #0x64	; 100	'd'
   55D6 CC                 1878 	.db #0xCC	; 204
   55D7 30                 1879 	.db #0x30	; 48	'0'
   55D8 CC                 1880 	.db #0xCC	; 204
   55D9 30                 1881 	.db #0x30	; 48	'0'
   55DA 25                 1882 	.db #0x25	; 37
   55DB 30                 1883 	.db #0x30	; 48	'0'
   55DC 30                 1884 	.db #0x30	; 48	'0'
   55DD 1A                 1885 	.db #0x1A	; 26
   55DE 30                 1886 	.db #0x30	; 48	'0'
   55DF 64                 1887 	.db #0x64	; 100	'd'
   55E0 98                 1888 	.db #0x98	; 152
   55E1 30                 1889 	.db #0x30	; 48	'0'
   55E2 CC                 1890 	.db #0xCC	; 204
   55E3 30                 1891 	.db #0x30	; 48	'0'
   55E4 25                 1892 	.db #0x25	; 37
   55E5 30                 1893 	.db #0x30	; 48	'0'
   55E6 30                 1894 	.db #0x30	; 48	'0'
   55E7 1A                 1895 	.db #0x1A	; 26
   55E8 30                 1896 	.db #0x30	; 48	'0'
   55E9 64                 1897 	.db #0x64	; 100	'd'
   55EA 98                 1898 	.db #0x98	; 152
   55EB 30                 1899 	.db #0x30	; 48	'0'
   55EC CC                 1900 	.db #0xCC	; 204
   55ED 30                 1901 	.db #0x30	; 48	'0'
   55EE 25                 1902 	.db #0x25	; 37
   55EF 30                 1903 	.db #0x30	; 48	'0'
   55F0 30                 1904 	.db #0x30	; 48	'0'
   55F1 1A                 1905 	.db #0x1A	; 26
   55F2 30                 1906 	.db #0x30	; 48	'0'
   55F3 64                 1907 	.db #0x64	; 100	'd'
   55F4 98                 1908 	.db #0x98	; 152
   55F5 30                 1909 	.db #0x30	; 48	'0'
   55F6 CC                 1910 	.db #0xCC	; 204
   55F7 30                 1911 	.db #0x30	; 48	'0'
   55F8 25                 1912 	.db #0x25	; 37
   55F9 30                 1913 	.db #0x30	; 48	'0'
   55FA 30                 1914 	.db #0x30	; 48	'0'
   55FB 1A                 1915 	.db #0x1A	; 26
   55FC 30                 1916 	.db #0x30	; 48	'0'
   55FD 64                 1917 	.db #0x64	; 100	'd'
   55FE 98                 1918 	.db #0x98	; 152
   55FF 30                 1919 	.db #0x30	; 48	'0'
   5600 CC                 1920 	.db #0xCC	; 204
   5601 30                 1921 	.db #0x30	; 48	'0'
   5602 25                 1922 	.db #0x25	; 37
   5603 30                 1923 	.db #0x30	; 48	'0'
   5604 30                 1924 	.db #0x30	; 48	'0'
   5605 1A                 1925 	.db #0x1A	; 26
   5606 30                 1926 	.db #0x30	; 48	'0'
   5607 64                 1927 	.db #0x64	; 100	'd'
   5608 98                 1928 	.db #0x98	; 152
   5609 30                 1929 	.db #0x30	; 48	'0'
   560A CC                 1930 	.db #0xCC	; 204
   560B 30                 1931 	.db #0x30	; 48	'0'
   560C 25                 1932 	.db #0x25	; 37
   560D 30                 1933 	.db #0x30	; 48	'0'
   560E 30                 1934 	.db #0x30	; 48	'0'
   560F 1A                 1935 	.db #0x1A	; 26
   5610 30                 1936 	.db #0x30	; 48	'0'
   5611 64                 1937 	.db #0x64	; 100	'd'
   5612 98                 1938 	.db #0x98	; 152
   5613 30                 1939 	.db #0x30	; 48	'0'
   5614 CC                 1940 	.db #0xCC	; 204
   5615 30                 1941 	.db #0x30	; 48	'0'
   5616 25                 1942 	.db #0x25	; 37
   5617 30                 1943 	.db #0x30	; 48	'0'
   5618 30                 1944 	.db #0x30	; 48	'0'
   5619 1A                 1945 	.db #0x1A	; 26
   561A 30                 1946 	.db #0x30	; 48	'0'
   561B 30                 1947 	.db #0x30	; 48	'0'
   561C CC                 1948 	.db #0xCC	; 204
   561D 64                 1949 	.db #0x64	; 100	'd'
   561E 98                 1950 	.db #0x98	; 152
   561F 30                 1951 	.db #0x30	; 48	'0'
   5620 25                 1952 	.db #0x25	; 37
   5621 30                 1953 	.db #0x30	; 48	'0'
   5622 30                 1954 	.db #0x30	; 48	'0'
   5623 1A                 1955 	.db #0x1A	; 26
   5624 30                 1956 	.db #0x30	; 48	'0'
   5625 30                 1957 	.db #0x30	; 48	'0'
   5626 CC                 1958 	.db #0xCC	; 204
   5627 CC                 1959 	.db #0xCC	; 204
   5628 98                 1960 	.db #0x98	; 152
   5629 30                 1961 	.db #0x30	; 48	'0'
   562A 25                 1962 	.db #0x25	; 37
   562B 30                 1963 	.db #0x30	; 48	'0'
   562C 30                 1964 	.db #0x30	; 48	'0'
   562D 1A                 1965 	.db #0x1A	; 26
   562E 30                 1966 	.db #0x30	; 48	'0'
   562F 30                 1967 	.db #0x30	; 48	'0'
   5630 CC                 1968 	.db #0xCC	; 204
   5631 CC                 1969 	.db #0xCC	; 204
   5632 98                 1970 	.db #0x98	; 152
   5633 30                 1971 	.db #0x30	; 48	'0'
   5634 25                 1972 	.db #0x25	; 37
   5635 30                 1973 	.db #0x30	; 48	'0'
   5636 30                 1974 	.db #0x30	; 48	'0'
   5637 1A                 1975 	.db #0x1A	; 26
   5638 30                 1976 	.db #0x30	; 48	'0'
   5639 30                 1977 	.db #0x30	; 48	'0'
   563A 64                 1978 	.db #0x64	; 100	'd'
   563B CC                 1979 	.db #0xCC	; 204
   563C 30                 1980 	.db #0x30	; 48	'0'
   563D 30                 1981 	.db #0x30	; 48	'0'
   563E 25                 1982 	.db #0x25	; 37
   563F 30                 1983 	.db #0x30	; 48	'0'
   5640 30                 1984 	.db #0x30	; 48	'0'
   5641 1A                 1985 	.db #0x1A	; 26
   5642 30                 1986 	.db #0x30	; 48	'0'
   5643 30                 1987 	.db #0x30	; 48	'0'
   5644 30                 1988 	.db #0x30	; 48	'0'
   5645 30                 1989 	.db #0x30	; 48	'0'
   5646 30                 1990 	.db #0x30	; 48	'0'
   5647 30                 1991 	.db #0x30	; 48	'0'
   5648 25                 1992 	.db #0x25	; 37
   5649 30                 1993 	.db #0x30	; 48	'0'
   564A 30                 1994 	.db #0x30	; 48	'0'
   564B 1A                 1995 	.db #0x1A	; 26
   564C 30                 1996 	.db #0x30	; 48	'0'
   564D 30                 1997 	.db #0x30	; 48	'0'
   564E 30                 1998 	.db #0x30	; 48	'0'
   564F 30                 1999 	.db #0x30	; 48	'0'
   5650 30                 2000 	.db #0x30	; 48	'0'
   5651 30                 2001 	.db #0x30	; 48	'0'
   5652 25                 2002 	.db #0x25	; 37
   5653 30                 2003 	.db #0x30	; 48	'0'
   5654 30                 2004 	.db #0x30	; 48	'0'
   5655 1A                 2005 	.db #0x1A	; 26
   5656 30                 2006 	.db #0x30	; 48	'0'
   5657 30                 2007 	.db #0x30	; 48	'0'
   5658 30                 2008 	.db #0x30	; 48	'0'
   5659 30                 2009 	.db #0x30	; 48	'0'
   565A 30                 2010 	.db #0x30	; 48	'0'
   565B 30                 2011 	.db #0x30	; 48	'0'
   565C 25                 2012 	.db #0x25	; 37
   565D 30                 2013 	.db #0x30	; 48	'0'
   565E 30                 2014 	.db #0x30	; 48	'0'
   565F 0F                 2015 	.db #0x0F	; 15
   5660 30                 2016 	.db #0x30	; 48	'0'
   5661 30                 2017 	.db #0x30	; 48	'0'
   5662 30                 2018 	.db #0x30	; 48	'0'
   5663 30                 2019 	.db #0x30	; 48	'0'
   5664 30                 2020 	.db #0x30	; 48	'0'
   5665 30                 2021 	.db #0x30	; 48	'0'
   5666 0F                 2022 	.db #0x0F	; 15
   5667 30                 2023 	.db #0x30	; 48	'0'
   5668 30                 2024 	.db #0x30	; 48	'0'
   5669 25                 2025 	.db #0x25	; 37
   566A 30                 2026 	.db #0x30	; 48	'0'
   566B 30                 2027 	.db #0x30	; 48	'0'
   566C 30                 2028 	.db #0x30	; 48	'0'
   566D 30                 2029 	.db #0x30	; 48	'0'
   566E 30                 2030 	.db #0x30	; 48	'0'
   566F 30                 2031 	.db #0x30	; 48	'0'
   5670 1A                 2032 	.db #0x1A	; 26
   5671 30                 2033 	.db #0x30	; 48	'0'
   5672 30                 2034 	.db #0x30	; 48	'0'
   5673 25                 2035 	.db #0x25	; 37
   5674 0F                 2036 	.db #0x0F	; 15
   5675 0F                 2037 	.db #0x0F	; 15
   5676 0F                 2038 	.db #0x0F	; 15
   5677 0F                 2039 	.db #0x0F	; 15
   5678 0F                 2040 	.db #0x0F	; 15
   5679 0F                 2041 	.db #0x0F	; 15
   567A 1A                 2042 	.db #0x1A	; 26
   567B 30                 2043 	.db #0x30	; 48	'0'
   567C F0                 2044 	.db #0xF0	; 240
   567D 30                 2045 	.db #0x30	; 48	'0'
   567E 30                 2046 	.db #0x30	; 48	'0'
   567F 30                 2047 	.db #0x30	; 48	'0'
   5680 30                 2048 	.db #0x30	; 48	'0'
   5681 30                 2049 	.db #0x30	; 48	'0'
   5682 30                 2050 	.db #0x30	; 48	'0'
   5683 30                 2051 	.db #0x30	; 48	'0'
   5684 30                 2052 	.db #0x30	; 48	'0'
   5685 F0                 2053 	.db #0xF0	; 240
   5686 F0                 2054 	.db #0xF0	; 240
   5687 30                 2055 	.db #0x30	; 48	'0'
   5688 30                 2056 	.db #0x30	; 48	'0'
   5689 30                 2057 	.db #0x30	; 48	'0'
   568A 30                 2058 	.db #0x30	; 48	'0'
   568B 30                 2059 	.db #0x30	; 48	'0'
   568C 30                 2060 	.db #0x30	; 48	'0'
   568D 30                 2061 	.db #0x30	; 48	'0'
   568E 30                 2062 	.db #0x30	; 48	'0'
   568F F0                 2063 	.db #0xF0	; 240
   5690                    2064 _tile_tiles_05:
   5690 F0                 2065 	.db #0xF0	; 240
   5691 30                 2066 	.db #0x30	; 48	'0'
   5692 30                 2067 	.db #0x30	; 48	'0'
   5693 30                 2068 	.db #0x30	; 48	'0'
   5694 30                 2069 	.db #0x30	; 48	'0'
   5695 30                 2070 	.db #0x30	; 48	'0'
   5696 30                 2071 	.db #0x30	; 48	'0'
   5697 30                 2072 	.db #0x30	; 48	'0'
   5698 30                 2073 	.db #0x30	; 48	'0'
   5699 F0                 2074 	.db #0xF0	; 240
   569A F0                 2075 	.db #0xF0	; 240
   569B 30                 2076 	.db #0x30	; 48	'0'
   569C 30                 2077 	.db #0x30	; 48	'0'
   569D 30                 2078 	.db #0x30	; 48	'0'
   569E 30                 2079 	.db #0x30	; 48	'0'
   569F 30                 2080 	.db #0x30	; 48	'0'
   56A0 30                 2081 	.db #0x30	; 48	'0'
   56A1 30                 2082 	.db #0x30	; 48	'0'
   56A2 30                 2083 	.db #0x30	; 48	'0'
   56A3 F0                 2084 	.db #0xF0	; 240
   56A4 30                 2085 	.db #0x30	; 48	'0'
   56A5 25                 2086 	.db #0x25	; 37
   56A6 0F                 2087 	.db #0x0F	; 15
   56A7 0F                 2088 	.db #0x0F	; 15
   56A8 0F                 2089 	.db #0x0F	; 15
   56A9 0F                 2090 	.db #0x0F	; 15
   56AA 0F                 2091 	.db #0x0F	; 15
   56AB 0F                 2092 	.db #0x0F	; 15
   56AC 1A                 2093 	.db #0x1A	; 26
   56AD 30                 2094 	.db #0x30	; 48	'0'
   56AE 30                 2095 	.db #0x30	; 48	'0'
   56AF 25                 2096 	.db #0x25	; 37
   56B0 30                 2097 	.db #0x30	; 48	'0'
   56B1 30                 2098 	.db #0x30	; 48	'0'
   56B2 30                 2099 	.db #0x30	; 48	'0'
   56B3 30                 2100 	.db #0x30	; 48	'0'
   56B4 30                 2101 	.db #0x30	; 48	'0'
   56B5 30                 2102 	.db #0x30	; 48	'0'
   56B6 1A                 2103 	.db #0x1A	; 26
   56B7 30                 2104 	.db #0x30	; 48	'0'
   56B8 30                 2105 	.db #0x30	; 48	'0'
   56B9 0F                 2106 	.db #0x0F	; 15
   56BA 30                 2107 	.db #0x30	; 48	'0'
   56BB 30                 2108 	.db #0x30	; 48	'0'
   56BC 30                 2109 	.db #0x30	; 48	'0'
   56BD 30                 2110 	.db #0x30	; 48	'0'
   56BE 30                 2111 	.db #0x30	; 48	'0'
   56BF 30                 2112 	.db #0x30	; 48	'0'
   56C0 0F                 2113 	.db #0x0F	; 15
   56C1 30                 2114 	.db #0x30	; 48	'0'
   56C2 30                 2115 	.db #0x30	; 48	'0'
   56C3 1A                 2116 	.db #0x1A	; 26
   56C4 30                 2117 	.db #0x30	; 48	'0'
   56C5 30                 2118 	.db #0x30	; 48	'0'
   56C6 30                 2119 	.db #0x30	; 48	'0'
   56C7 30                 2120 	.db #0x30	; 48	'0'
   56C8 30                 2121 	.db #0x30	; 48	'0'
   56C9 30                 2122 	.db #0x30	; 48	'0'
   56CA 25                 2123 	.db #0x25	; 37
   56CB 30                 2124 	.db #0x30	; 48	'0'
   56CC 30                 2125 	.db #0x30	; 48	'0'
   56CD 1A                 2126 	.db #0x1A	; 26
   56CE 30                 2127 	.db #0x30	; 48	'0'
   56CF 30                 2128 	.db #0x30	; 48	'0'
   56D0 30                 2129 	.db #0x30	; 48	'0'
   56D1 30                 2130 	.db #0x30	; 48	'0'
   56D2 30                 2131 	.db #0x30	; 48	'0'
   56D3 30                 2132 	.db #0x30	; 48	'0'
   56D4 25                 2133 	.db #0x25	; 37
   56D5 30                 2134 	.db #0x30	; 48	'0'
   56D6 30                 2135 	.db #0x30	; 48	'0'
   56D7 1A                 2136 	.db #0x1A	; 26
   56D8 30                 2137 	.db #0x30	; 48	'0'
   56D9 30                 2138 	.db #0x30	; 48	'0'
   56DA 30                 2139 	.db #0x30	; 48	'0'
   56DB 30                 2140 	.db #0x30	; 48	'0'
   56DC 30                 2141 	.db #0x30	; 48	'0'
   56DD 30                 2142 	.db #0x30	; 48	'0'
   56DE 25                 2143 	.db #0x25	; 37
   56DF 30                 2144 	.db #0x30	; 48	'0'
   56E0 30                 2145 	.db #0x30	; 48	'0'
   56E1 1A                 2146 	.db #0x1A	; 26
   56E2 30                 2147 	.db #0x30	; 48	'0'
   56E3 30                 2148 	.db #0x30	; 48	'0'
   56E4 30                 2149 	.db #0x30	; 48	'0'
   56E5 30                 2150 	.db #0x30	; 48	'0'
   56E6 30                 2151 	.db #0x30	; 48	'0'
   56E7 30                 2152 	.db #0x30	; 48	'0'
   56E8 25                 2153 	.db #0x25	; 37
   56E9 30                 2154 	.db #0x30	; 48	'0'
   56EA 30                 2155 	.db #0x30	; 48	'0'
   56EB 1A                 2156 	.db #0x1A	; 26
   56EC 30                 2157 	.db #0x30	; 48	'0'
   56ED 30                 2158 	.db #0x30	; 48	'0'
   56EE 30                 2159 	.db #0x30	; 48	'0'
   56EF 30                 2160 	.db #0x30	; 48	'0'
   56F0 30                 2161 	.db #0x30	; 48	'0'
   56F1 30                 2162 	.db #0x30	; 48	'0'
   56F2 25                 2163 	.db #0x25	; 37
   56F3 30                 2164 	.db #0x30	; 48	'0'
   56F4 30                 2165 	.db #0x30	; 48	'0'
   56F5 1A                 2166 	.db #0x1A	; 26
   56F6 30                 2167 	.db #0x30	; 48	'0'
   56F7 30                 2168 	.db #0x30	; 48	'0'
   56F8 30                 2169 	.db #0x30	; 48	'0'
   56F9 30                 2170 	.db #0x30	; 48	'0'
   56FA 30                 2171 	.db #0x30	; 48	'0'
   56FB 30                 2172 	.db #0x30	; 48	'0'
   56FC 25                 2173 	.db #0x25	; 37
   56FD 30                 2174 	.db #0x30	; 48	'0'
   56FE 30                 2175 	.db #0x30	; 48	'0'
   56FF 1A                 2176 	.db #0x1A	; 26
   5700 30                 2177 	.db #0x30	; 48	'0'
   5701 30                 2178 	.db #0x30	; 48	'0'
   5702 30                 2179 	.db #0x30	; 48	'0'
   5703 30                 2180 	.db #0x30	; 48	'0'
   5704 30                 2181 	.db #0x30	; 48	'0'
   5705 30                 2182 	.db #0x30	; 48	'0'
   5706 25                 2183 	.db #0x25	; 37
   5707 30                 2184 	.db #0x30	; 48	'0'
   5708 30                 2185 	.db #0x30	; 48	'0'
   5709 1A                 2186 	.db #0x1A	; 26
   570A 30                 2187 	.db #0x30	; 48	'0'
   570B 30                 2188 	.db #0x30	; 48	'0'
   570C 30                 2189 	.db #0x30	; 48	'0'
   570D 30                 2190 	.db #0x30	; 48	'0'
   570E 30                 2191 	.db #0x30	; 48	'0'
   570F 30                 2192 	.db #0x30	; 48	'0'
   5710 25                 2193 	.db #0x25	; 37
   5711 30                 2194 	.db #0x30	; 48	'0'
   5712 30                 2195 	.db #0x30	; 48	'0'
   5713 1A                 2196 	.db #0x1A	; 26
   5714 30                 2197 	.db #0x30	; 48	'0'
   5715 30                 2198 	.db #0x30	; 48	'0'
   5716 30                 2199 	.db #0x30	; 48	'0'
   5717 30                 2200 	.db #0x30	; 48	'0'
   5718 30                 2201 	.db #0x30	; 48	'0'
   5719 30                 2202 	.db #0x30	; 48	'0'
   571A 25                 2203 	.db #0x25	; 37
   571B 30                 2204 	.db #0x30	; 48	'0'
   571C 30                 2205 	.db #0x30	; 48	'0'
   571D 1A                 2206 	.db #0x1A	; 26
   571E 30                 2207 	.db #0x30	; 48	'0'
   571F 64                 2208 	.db #0x64	; 100	'd'
   5720 30                 2209 	.db #0x30	; 48	'0'
   5721 30                 2210 	.db #0x30	; 48	'0'
   5722 64                 2211 	.db #0x64	; 100	'd'
   5723 30                 2212 	.db #0x30	; 48	'0'
   5724 25                 2213 	.db #0x25	; 37
   5725 30                 2214 	.db #0x30	; 48	'0'
   5726 30                 2215 	.db #0x30	; 48	'0'
   5727 1A                 2216 	.db #0x1A	; 26
   5728 30                 2217 	.db #0x30	; 48	'0'
   5729 CC                 2218 	.db #0xCC	; 204
   572A 30                 2219 	.db #0x30	; 48	'0'
   572B 30                 2220 	.db #0x30	; 48	'0'
   572C 98                 2221 	.db #0x98	; 152
   572D 98                 2222 	.db #0x98	; 152
   572E 25                 2223 	.db #0x25	; 37
   572F 30                 2224 	.db #0x30	; 48	'0'
   5730 30                 2225 	.db #0x30	; 48	'0'
   5731 1A                 2226 	.db #0x1A	; 26
   5732 64                 2227 	.db #0x64	; 100	'd'
   5733 64                 2228 	.db #0x64	; 100	'd'
   5734 30                 2229 	.db #0x30	; 48	'0'
   5735 64                 2230 	.db #0x64	; 100	'd'
   5736 30                 2231 	.db #0x30	; 48	'0'
   5737 98                 2232 	.db #0x98	; 152
   5738 25                 2233 	.db #0x25	; 37
   5739 30                 2234 	.db #0x30	; 48	'0'
   573A 30                 2235 	.db #0x30	; 48	'0'
   573B 1A                 2236 	.db #0x1A	; 26
   573C 30                 2237 	.db #0x30	; 48	'0'
   573D 64                 2238 	.db #0x64	; 100	'd'
   573E 30                 2239 	.db #0x30	; 48	'0'
   573F 64                 2240 	.db #0x64	; 100	'd'
   5740 30                 2241 	.db #0x30	; 48	'0'
   5741 98                 2242 	.db #0x98	; 152
   5742 25                 2243 	.db #0x25	; 37
   5743 30                 2244 	.db #0x30	; 48	'0'
   5744 30                 2245 	.db #0x30	; 48	'0'
   5745 1A                 2246 	.db #0x1A	; 26
   5746 30                 2247 	.db #0x30	; 48	'0'
   5747 64                 2248 	.db #0x64	; 100	'd'
   5748 30                 2249 	.db #0x30	; 48	'0'
   5749 30                 2250 	.db #0x30	; 48	'0'
   574A 30                 2251 	.db #0x30	; 48	'0'
   574B 98                 2252 	.db #0x98	; 152
   574C 25                 2253 	.db #0x25	; 37
   574D 30                 2254 	.db #0x30	; 48	'0'
   574E 30                 2255 	.db #0x30	; 48	'0'
   574F 1A                 2256 	.db #0x1A	; 26
   5750 30                 2257 	.db #0x30	; 48	'0'
   5751 64                 2258 	.db #0x64	; 100	'd'
   5752 30                 2259 	.db #0x30	; 48	'0'
   5753 30                 2260 	.db #0x30	; 48	'0'
   5754 30                 2261 	.db #0x30	; 48	'0'
   5755 98                 2262 	.db #0x98	; 152
   5756 25                 2263 	.db #0x25	; 37
   5757 30                 2264 	.db #0x30	; 48	'0'
   5758 30                 2265 	.db #0x30	; 48	'0'
   5759 1A                 2266 	.db #0x1A	; 26
   575A 30                 2267 	.db #0x30	; 48	'0'
   575B 64                 2268 	.db #0x64	; 100	'd'
   575C 30                 2269 	.db #0x30	; 48	'0'
   575D 30                 2270 	.db #0x30	; 48	'0'
   575E 64                 2271 	.db #0x64	; 100	'd'
   575F 30                 2272 	.db #0x30	; 48	'0'
   5760 25                 2273 	.db #0x25	; 37
   5761 30                 2274 	.db #0x30	; 48	'0'
   5762 30                 2275 	.db #0x30	; 48	'0'
   5763 1A                 2276 	.db #0x1A	; 26
   5764 30                 2277 	.db #0x30	; 48	'0'
   5765 64                 2278 	.db #0x64	; 100	'd'
   5766 30                 2279 	.db #0x30	; 48	'0'
   5767 30                 2280 	.db #0x30	; 48	'0'
   5768 64                 2281 	.db #0x64	; 100	'd'
   5769 30                 2282 	.db #0x30	; 48	'0'
   576A 25                 2283 	.db #0x25	; 37
   576B 30                 2284 	.db #0x30	; 48	'0'
   576C 30                 2285 	.db #0x30	; 48	'0'
   576D 1A                 2286 	.db #0x1A	; 26
   576E 30                 2287 	.db #0x30	; 48	'0'
   576F 64                 2288 	.db #0x64	; 100	'd'
   5770 30                 2289 	.db #0x30	; 48	'0'
   5771 30                 2290 	.db #0x30	; 48	'0'
   5772 98                 2291 	.db #0x98	; 152
   5773 30                 2292 	.db #0x30	; 48	'0'
   5774 25                 2293 	.db #0x25	; 37
   5775 30                 2294 	.db #0x30	; 48	'0'
   5776 30                 2295 	.db #0x30	; 48	'0'
   5777 1A                 2296 	.db #0x1A	; 26
   5778 30                 2297 	.db #0x30	; 48	'0'
   5779 64                 2298 	.db #0x64	; 100	'd'
   577A 30                 2299 	.db #0x30	; 48	'0'
   577B 30                 2300 	.db #0x30	; 48	'0'
   577C 98                 2301 	.db #0x98	; 152
   577D 30                 2302 	.db #0x30	; 48	'0'
   577E 25                 2303 	.db #0x25	; 37
   577F 30                 2304 	.db #0x30	; 48	'0'
   5780 30                 2305 	.db #0x30	; 48	'0'
   5781 1A                 2306 	.db #0x1A	; 26
   5782 30                 2307 	.db #0x30	; 48	'0'
   5783 64                 2308 	.db #0x64	; 100	'd'
   5784 30                 2309 	.db #0x30	; 48	'0'
   5785 30                 2310 	.db #0x30	; 48	'0'
   5786 98                 2311 	.db #0x98	; 152
   5787 30                 2312 	.db #0x30	; 48	'0'
   5788 25                 2313 	.db #0x25	; 37
   5789 30                 2314 	.db #0x30	; 48	'0'
   578A 30                 2315 	.db #0x30	; 48	'0'
   578B 1A                 2316 	.db #0x1A	; 26
   578C 30                 2317 	.db #0x30	; 48	'0'
   578D 64                 2318 	.db #0x64	; 100	'd'
   578E 30                 2319 	.db #0x30	; 48	'0'
   578F 64                 2320 	.db #0x64	; 100	'd'
   5790 30                 2321 	.db #0x30	; 48	'0'
   5791 30                 2322 	.db #0x30	; 48	'0'
   5792 25                 2323 	.db #0x25	; 37
   5793 30                 2324 	.db #0x30	; 48	'0'
   5794 30                 2325 	.db #0x30	; 48	'0'
   5795 1A                 2326 	.db #0x1A	; 26
   5796 30                 2327 	.db #0x30	; 48	'0'
   5797 64                 2328 	.db #0x64	; 100	'd'
   5798 30                 2329 	.db #0x30	; 48	'0'
   5799 64                 2330 	.db #0x64	; 100	'd'
   579A 30                 2331 	.db #0x30	; 48	'0'
   579B 30                 2332 	.db #0x30	; 48	'0'
   579C 25                 2333 	.db #0x25	; 37
   579D 30                 2334 	.db #0x30	; 48	'0'
   579E 30                 2335 	.db #0x30	; 48	'0'
   579F 1A                 2336 	.db #0x1A	; 26
   57A0 30                 2337 	.db #0x30	; 48	'0'
   57A1 64                 2338 	.db #0x64	; 100	'd'
   57A2 30                 2339 	.db #0x30	; 48	'0'
   57A3 64                 2340 	.db #0x64	; 100	'd'
   57A4 30                 2341 	.db #0x30	; 48	'0'
   57A5 30                 2342 	.db #0x30	; 48	'0'
   57A6 25                 2343 	.db #0x25	; 37
   57A7 30                 2344 	.db #0x30	; 48	'0'
   57A8 30                 2345 	.db #0x30	; 48	'0'
   57A9 1A                 2346 	.db #0x1A	; 26
   57AA 64                 2347 	.db #0x64	; 100	'd'
   57AB CC                 2348 	.db #0xCC	; 204
   57AC 98                 2349 	.db #0x98	; 152
   57AD 64                 2350 	.db #0x64	; 100	'd'
   57AE CC                 2351 	.db #0xCC	; 204
   57AF 98                 2352 	.db #0x98	; 152
   57B0 25                 2353 	.db #0x25	; 37
   57B1 30                 2354 	.db #0x30	; 48	'0'
   57B2 30                 2355 	.db #0x30	; 48	'0'
   57B3 1A                 2356 	.db #0x1A	; 26
   57B4 30                 2357 	.db #0x30	; 48	'0'
   57B5 30                 2358 	.db #0x30	; 48	'0'
   57B6 30                 2359 	.db #0x30	; 48	'0'
   57B7 30                 2360 	.db #0x30	; 48	'0'
   57B8 30                 2361 	.db #0x30	; 48	'0'
   57B9 30                 2362 	.db #0x30	; 48	'0'
   57BA 25                 2363 	.db #0x25	; 37
   57BB 30                 2364 	.db #0x30	; 48	'0'
   57BC 30                 2365 	.db #0x30	; 48	'0'
   57BD 1A                 2366 	.db #0x1A	; 26
   57BE 30                 2367 	.db #0x30	; 48	'0'
   57BF 30                 2368 	.db #0x30	; 48	'0'
   57C0 30                 2369 	.db #0x30	; 48	'0'
   57C1 30                 2370 	.db #0x30	; 48	'0'
   57C2 30                 2371 	.db #0x30	; 48	'0'
   57C3 30                 2372 	.db #0x30	; 48	'0'
   57C4 25                 2373 	.db #0x25	; 37
   57C5 30                 2374 	.db #0x30	; 48	'0'
   57C6 30                 2375 	.db #0x30	; 48	'0'
   57C7 1A                 2376 	.db #0x1A	; 26
   57C8 30                 2377 	.db #0x30	; 48	'0'
   57C9 30                 2378 	.db #0x30	; 48	'0'
   57CA 30                 2379 	.db #0x30	; 48	'0'
   57CB 30                 2380 	.db #0x30	; 48	'0'
   57CC 30                 2381 	.db #0x30	; 48	'0'
   57CD 30                 2382 	.db #0x30	; 48	'0'
   57CE 25                 2383 	.db #0x25	; 37
   57CF 30                 2384 	.db #0x30	; 48	'0'
   57D0 30                 2385 	.db #0x30	; 48	'0'
   57D1 1A                 2386 	.db #0x1A	; 26
   57D2 30                 2387 	.db #0x30	; 48	'0'
   57D3 30                 2388 	.db #0x30	; 48	'0'
   57D4 30                 2389 	.db #0x30	; 48	'0'
   57D5 30                 2390 	.db #0x30	; 48	'0'
   57D6 30                 2391 	.db #0x30	; 48	'0'
   57D7 30                 2392 	.db #0x30	; 48	'0'
   57D8 25                 2393 	.db #0x25	; 37
   57D9 30                 2394 	.db #0x30	; 48	'0'
   57DA 30                 2395 	.db #0x30	; 48	'0'
   57DB 1A                 2396 	.db #0x1A	; 26
   57DC 30                 2397 	.db #0x30	; 48	'0'
   57DD 30                 2398 	.db #0x30	; 48	'0'
   57DE 30                 2399 	.db #0x30	; 48	'0'
   57DF 30                 2400 	.db #0x30	; 48	'0'
   57E0 30                 2401 	.db #0x30	; 48	'0'
   57E1 30                 2402 	.db #0x30	; 48	'0'
   57E2 25                 2403 	.db #0x25	; 37
   57E3 30                 2404 	.db #0x30	; 48	'0'
   57E4 30                 2405 	.db #0x30	; 48	'0'
   57E5 1A                 2406 	.db #0x1A	; 26
   57E6 30                 2407 	.db #0x30	; 48	'0'
   57E7 30                 2408 	.db #0x30	; 48	'0'
   57E8 30                 2409 	.db #0x30	; 48	'0'
   57E9 30                 2410 	.db #0x30	; 48	'0'
   57EA 30                 2411 	.db #0x30	; 48	'0'
   57EB 30                 2412 	.db #0x30	; 48	'0'
   57EC 25                 2413 	.db #0x25	; 37
   57ED 30                 2414 	.db #0x30	; 48	'0'
   57EE 30                 2415 	.db #0x30	; 48	'0'
   57EF 0F                 2416 	.db #0x0F	; 15
   57F0 30                 2417 	.db #0x30	; 48	'0'
   57F1 30                 2418 	.db #0x30	; 48	'0'
   57F2 30                 2419 	.db #0x30	; 48	'0'
   57F3 30                 2420 	.db #0x30	; 48	'0'
   57F4 30                 2421 	.db #0x30	; 48	'0'
   57F5 30                 2422 	.db #0x30	; 48	'0'
   57F6 0F                 2423 	.db #0x0F	; 15
   57F7 30                 2424 	.db #0x30	; 48	'0'
   57F8 30                 2425 	.db #0x30	; 48	'0'
   57F9 25                 2426 	.db #0x25	; 37
   57FA 30                 2427 	.db #0x30	; 48	'0'
   57FB 30                 2428 	.db #0x30	; 48	'0'
   57FC 30                 2429 	.db #0x30	; 48	'0'
   57FD 30                 2430 	.db #0x30	; 48	'0'
   57FE 30                 2431 	.db #0x30	; 48	'0'
   57FF 30                 2432 	.db #0x30	; 48	'0'
   5800 1A                 2433 	.db #0x1A	; 26
   5801 30                 2434 	.db #0x30	; 48	'0'
   5802 30                 2435 	.db #0x30	; 48	'0'
   5803 25                 2436 	.db #0x25	; 37
   5804 0F                 2437 	.db #0x0F	; 15
   5805 0F                 2438 	.db #0x0F	; 15
   5806 0F                 2439 	.db #0x0F	; 15
   5807 0F                 2440 	.db #0x0F	; 15
   5808 0F                 2441 	.db #0x0F	; 15
   5809 0F                 2442 	.db #0x0F	; 15
   580A 1A                 2443 	.db #0x1A	; 26
   580B 30                 2444 	.db #0x30	; 48	'0'
   580C F0                 2445 	.db #0xF0	; 240
   580D 30                 2446 	.db #0x30	; 48	'0'
   580E 30                 2447 	.db #0x30	; 48	'0'
   580F 30                 2448 	.db #0x30	; 48	'0'
   5810 30                 2449 	.db #0x30	; 48	'0'
   5811 30                 2450 	.db #0x30	; 48	'0'
   5812 30                 2451 	.db #0x30	; 48	'0'
   5813 30                 2452 	.db #0x30	; 48	'0'
   5814 30                 2453 	.db #0x30	; 48	'0'
   5815 F0                 2454 	.db #0xF0	; 240
   5816 F0                 2455 	.db #0xF0	; 240
   5817 30                 2456 	.db #0x30	; 48	'0'
   5818 30                 2457 	.db #0x30	; 48	'0'
   5819 30                 2458 	.db #0x30	; 48	'0'
   581A 30                 2459 	.db #0x30	; 48	'0'
   581B 30                 2460 	.db #0x30	; 48	'0'
   581C 30                 2461 	.db #0x30	; 48	'0'
   581D 30                 2462 	.db #0x30	; 48	'0'
   581E 30                 2463 	.db #0x30	; 48	'0'
   581F F0                 2464 	.db #0xF0	; 240
   5820                    2465 _tile_tiles_06:
   5820 F0                 2466 	.db #0xF0	; 240
   5821 30                 2467 	.db #0x30	; 48	'0'
   5822 30                 2468 	.db #0x30	; 48	'0'
   5823 30                 2469 	.db #0x30	; 48	'0'
   5824 30                 2470 	.db #0x30	; 48	'0'
   5825 30                 2471 	.db #0x30	; 48	'0'
   5826 30                 2472 	.db #0x30	; 48	'0'
   5827 30                 2473 	.db #0x30	; 48	'0'
   5828 30                 2474 	.db #0x30	; 48	'0'
   5829 F0                 2475 	.db #0xF0	; 240
   582A F0                 2476 	.db #0xF0	; 240
   582B 30                 2477 	.db #0x30	; 48	'0'
   582C 30                 2478 	.db #0x30	; 48	'0'
   582D 30                 2479 	.db #0x30	; 48	'0'
   582E 30                 2480 	.db #0x30	; 48	'0'
   582F 30                 2481 	.db #0x30	; 48	'0'
   5830 30                 2482 	.db #0x30	; 48	'0'
   5831 30                 2483 	.db #0x30	; 48	'0'
   5832 30                 2484 	.db #0x30	; 48	'0'
   5833 F0                 2485 	.db #0xF0	; 240
   5834 30                 2486 	.db #0x30	; 48	'0'
   5835 25                 2487 	.db #0x25	; 37
   5836 0F                 2488 	.db #0x0F	; 15
   5837 0F                 2489 	.db #0x0F	; 15
   5838 0F                 2490 	.db #0x0F	; 15
   5839 0F                 2491 	.db #0x0F	; 15
   583A 0F                 2492 	.db #0x0F	; 15
   583B 0F                 2493 	.db #0x0F	; 15
   583C 1A                 2494 	.db #0x1A	; 26
   583D 30                 2495 	.db #0x30	; 48	'0'
   583E 30                 2496 	.db #0x30	; 48	'0'
   583F 25                 2497 	.db #0x25	; 37
   5840 30                 2498 	.db #0x30	; 48	'0'
   5841 30                 2499 	.db #0x30	; 48	'0'
   5842 30                 2500 	.db #0x30	; 48	'0'
   5843 30                 2501 	.db #0x30	; 48	'0'
   5844 30                 2502 	.db #0x30	; 48	'0'
   5845 30                 2503 	.db #0x30	; 48	'0'
   5846 1A                 2504 	.db #0x1A	; 26
   5847 30                 2505 	.db #0x30	; 48	'0'
   5848 30                 2506 	.db #0x30	; 48	'0'
   5849 0F                 2507 	.db #0x0F	; 15
   584A 30                 2508 	.db #0x30	; 48	'0'
   584B 30                 2509 	.db #0x30	; 48	'0'
   584C 30                 2510 	.db #0x30	; 48	'0'
   584D 30                 2511 	.db #0x30	; 48	'0'
   584E 30                 2512 	.db #0x30	; 48	'0'
   584F 30                 2513 	.db #0x30	; 48	'0'
   5850 0F                 2514 	.db #0x0F	; 15
   5851 30                 2515 	.db #0x30	; 48	'0'
   5852 30                 2516 	.db #0x30	; 48	'0'
   5853 1A                 2517 	.db #0x1A	; 26
   5854 30                 2518 	.db #0x30	; 48	'0'
   5855 30                 2519 	.db #0x30	; 48	'0'
   5856 30                 2520 	.db #0x30	; 48	'0'
   5857 30                 2521 	.db #0x30	; 48	'0'
   5858 30                 2522 	.db #0x30	; 48	'0'
   5859 30                 2523 	.db #0x30	; 48	'0'
   585A 25                 2524 	.db #0x25	; 37
   585B 30                 2525 	.db #0x30	; 48	'0'
   585C 30                 2526 	.db #0x30	; 48	'0'
   585D 1A                 2527 	.db #0x1A	; 26
   585E 30                 2528 	.db #0x30	; 48	'0'
   585F 30                 2529 	.db #0x30	; 48	'0'
   5860 30                 2530 	.db #0x30	; 48	'0'
   5861 30                 2531 	.db #0x30	; 48	'0'
   5862 30                 2532 	.db #0x30	; 48	'0'
   5863 30                 2533 	.db #0x30	; 48	'0'
   5864 25                 2534 	.db #0x25	; 37
   5865 30                 2535 	.db #0x30	; 48	'0'
   5866 30                 2536 	.db #0x30	; 48	'0'
   5867 1A                 2537 	.db #0x1A	; 26
   5868 30                 2538 	.db #0x30	; 48	'0'
   5869 30                 2539 	.db #0x30	; 48	'0'
   586A 30                 2540 	.db #0x30	; 48	'0'
   586B 30                 2541 	.db #0x30	; 48	'0'
   586C 30                 2542 	.db #0x30	; 48	'0'
   586D 30                 2543 	.db #0x30	; 48	'0'
   586E 25                 2544 	.db #0x25	; 37
   586F 30                 2545 	.db #0x30	; 48	'0'
   5870 30                 2546 	.db #0x30	; 48	'0'
   5871 1A                 2547 	.db #0x1A	; 26
   5872 30                 2548 	.db #0x30	; 48	'0'
   5873 30                 2549 	.db #0x30	; 48	'0'
   5874 30                 2550 	.db #0x30	; 48	'0'
   5875 30                 2551 	.db #0x30	; 48	'0'
   5876 30                 2552 	.db #0x30	; 48	'0'
   5877 30                 2553 	.db #0x30	; 48	'0'
   5878 25                 2554 	.db #0x25	; 37
   5879 30                 2555 	.db #0x30	; 48	'0'
   587A 30                 2556 	.db #0x30	; 48	'0'
   587B 1A                 2557 	.db #0x1A	; 26
   587C 30                 2558 	.db #0x30	; 48	'0'
   587D 30                 2559 	.db #0x30	; 48	'0'
   587E 30                 2560 	.db #0x30	; 48	'0'
   587F 30                 2561 	.db #0x30	; 48	'0'
   5880 30                 2562 	.db #0x30	; 48	'0'
   5881 30                 2563 	.db #0x30	; 48	'0'
   5882 25                 2564 	.db #0x25	; 37
   5883 30                 2565 	.db #0x30	; 48	'0'
   5884 30                 2566 	.db #0x30	; 48	'0'
   5885 1A                 2567 	.db #0x1A	; 26
   5886 30                 2568 	.db #0x30	; 48	'0'
   5887 30                 2569 	.db #0x30	; 48	'0'
   5888 30                 2570 	.db #0x30	; 48	'0'
   5889 30                 2571 	.db #0x30	; 48	'0'
   588A 30                 2572 	.db #0x30	; 48	'0'
   588B 30                 2573 	.db #0x30	; 48	'0'
   588C 25                 2574 	.db #0x25	; 37
   588D 30                 2575 	.db #0x30	; 48	'0'
   588E 30                 2576 	.db #0x30	; 48	'0'
   588F 1A                 2577 	.db #0x1A	; 26
   5890 30                 2578 	.db #0x30	; 48	'0'
   5891 30                 2579 	.db #0x30	; 48	'0'
   5892 30                 2580 	.db #0x30	; 48	'0'
   5893 30                 2581 	.db #0x30	; 48	'0'
   5894 30                 2582 	.db #0x30	; 48	'0'
   5895 30                 2583 	.db #0x30	; 48	'0'
   5896 25                 2584 	.db #0x25	; 37
   5897 30                 2585 	.db #0x30	; 48	'0'
   5898 30                 2586 	.db #0x30	; 48	'0'
   5899 1A                 2587 	.db #0x1A	; 26
   589A 30                 2588 	.db #0x30	; 48	'0'
   589B 30                 2589 	.db #0x30	; 48	'0'
   589C 30                 2590 	.db #0x30	; 48	'0'
   589D 30                 2591 	.db #0x30	; 48	'0'
   589E 30                 2592 	.db #0x30	; 48	'0'
   589F 30                 2593 	.db #0x30	; 48	'0'
   58A0 25                 2594 	.db #0x25	; 37
   58A1 30                 2595 	.db #0x30	; 48	'0'
   58A2 30                 2596 	.db #0x30	; 48	'0'
   58A3 1A                 2597 	.db #0x1A	; 26
   58A4 30                 2598 	.db #0x30	; 48	'0'
   58A5 30                 2599 	.db #0x30	; 48	'0'
   58A6 30                 2600 	.db #0x30	; 48	'0'
   58A7 30                 2601 	.db #0x30	; 48	'0'
   58A8 30                 2602 	.db #0x30	; 48	'0'
   58A9 30                 2603 	.db #0x30	; 48	'0'
   58AA 25                 2604 	.db #0x25	; 37
   58AB 30                 2605 	.db #0x30	; 48	'0'
   58AC 30                 2606 	.db #0x30	; 48	'0'
   58AD 1A                 2607 	.db #0x1A	; 26
   58AE 30                 2608 	.db #0x30	; 48	'0'
   58AF 64                 2609 	.db #0x64	; 100	'd'
   58B0 30                 2610 	.db #0x30	; 48	'0'
   58B1 30                 2611 	.db #0x30	; 48	'0'
   58B2 64                 2612 	.db #0x64	; 100	'd'
   58B3 30                 2613 	.db #0x30	; 48	'0'
   58B4 25                 2614 	.db #0x25	; 37
   58B5 30                 2615 	.db #0x30	; 48	'0'
   58B6 30                 2616 	.db #0x30	; 48	'0'
   58B7 1A                 2617 	.db #0x1A	; 26
   58B8 30                 2618 	.db #0x30	; 48	'0'
   58B9 98                 2619 	.db #0x98	; 152
   58BA 98                 2620 	.db #0x98	; 152
   58BB 30                 2621 	.db #0x30	; 48	'0'
   58BC 64                 2622 	.db #0x64	; 100	'd'
   58BD 30                 2623 	.db #0x30	; 48	'0'
   58BE 25                 2624 	.db #0x25	; 37
   58BF 30                 2625 	.db #0x30	; 48	'0'
   58C0 30                 2626 	.db #0x30	; 48	'0'
   58C1 1A                 2627 	.db #0x1A	; 26
   58C2 64                 2628 	.db #0x64	; 100	'd'
   58C3 30                 2629 	.db #0x30	; 48	'0'
   58C4 98                 2630 	.db #0x98	; 152
   58C5 30                 2631 	.db #0x30	; 48	'0'
   58C6 CC                 2632 	.db #0xCC	; 204
   58C7 30                 2633 	.db #0x30	; 48	'0'
   58C8 25                 2634 	.db #0x25	; 37
   58C9 30                 2635 	.db #0x30	; 48	'0'
   58CA 30                 2636 	.db #0x30	; 48	'0'
   58CB 1A                 2637 	.db #0x1A	; 26
   58CC 64                 2638 	.db #0x64	; 100	'd'
   58CD 30                 2639 	.db #0x30	; 48	'0'
   58CE 98                 2640 	.db #0x98	; 152
   58CF 30                 2641 	.db #0x30	; 48	'0'
   58D0 CC                 2642 	.db #0xCC	; 204
   58D1 30                 2643 	.db #0x30	; 48	'0'
   58D2 25                 2644 	.db #0x25	; 37
   58D3 30                 2645 	.db #0x30	; 48	'0'
   58D4 30                 2646 	.db #0x30	; 48	'0'
   58D5 1A                 2647 	.db #0x1A	; 26
   58D6 30                 2648 	.db #0x30	; 48	'0'
   58D7 30                 2649 	.db #0x30	; 48	'0'
   58D8 98                 2650 	.db #0x98	; 152
   58D9 64                 2651 	.db #0x64	; 100	'd'
   58DA 64                 2652 	.db #0x64	; 100	'd'
   58DB 30                 2653 	.db #0x30	; 48	'0'
   58DC 25                 2654 	.db #0x25	; 37
   58DD 30                 2655 	.db #0x30	; 48	'0'
   58DE 30                 2656 	.db #0x30	; 48	'0'
   58DF 1A                 2657 	.db #0x1A	; 26
   58E0 30                 2658 	.db #0x30	; 48	'0'
   58E1 30                 2659 	.db #0x30	; 48	'0'
   58E2 98                 2660 	.db #0x98	; 152
   58E3 64                 2661 	.db #0x64	; 100	'd'
   58E4 64                 2662 	.db #0x64	; 100	'd'
   58E5 30                 2663 	.db #0x30	; 48	'0'
   58E6 25                 2664 	.db #0x25	; 37
   58E7 30                 2665 	.db #0x30	; 48	'0'
   58E8 30                 2666 	.db #0x30	; 48	'0'
   58E9 1A                 2667 	.db #0x1A	; 26
   58EA 30                 2668 	.db #0x30	; 48	'0'
   58EB 64                 2669 	.db #0x64	; 100	'd'
   58EC 30                 2670 	.db #0x30	; 48	'0'
   58ED 64                 2671 	.db #0x64	; 100	'd'
   58EE 64                 2672 	.db #0x64	; 100	'd'
   58EF 30                 2673 	.db #0x30	; 48	'0'
   58F0 25                 2674 	.db #0x25	; 37
   58F1 30                 2675 	.db #0x30	; 48	'0'
   58F2 30                 2676 	.db #0x30	; 48	'0'
   58F3 1A                 2677 	.db #0x1A	; 26
   58F4 30                 2678 	.db #0x30	; 48	'0'
   58F5 64                 2679 	.db #0x64	; 100	'd'
   58F6 30                 2680 	.db #0x30	; 48	'0'
   58F7 98                 2681 	.db #0x98	; 152
   58F8 64                 2682 	.db #0x64	; 100	'd'
   58F9 30                 2683 	.db #0x30	; 48	'0'
   58FA 25                 2684 	.db #0x25	; 37
   58FB 30                 2685 	.db #0x30	; 48	'0'
   58FC 30                 2686 	.db #0x30	; 48	'0'
   58FD 1A                 2687 	.db #0x1A	; 26
   58FE 30                 2688 	.db #0x30	; 48	'0'
   58FF 98                 2689 	.db #0x98	; 152
   5900 30                 2690 	.db #0x30	; 48	'0'
   5901 98                 2691 	.db #0x98	; 152
   5902 64                 2692 	.db #0x64	; 100	'd'
   5903 30                 2693 	.db #0x30	; 48	'0'
   5904 25                 2694 	.db #0x25	; 37
   5905 30                 2695 	.db #0x30	; 48	'0'
   5906 30                 2696 	.db #0x30	; 48	'0'
   5907 1A                 2697 	.db #0x1A	; 26
   5908 30                 2698 	.db #0x30	; 48	'0'
   5909 98                 2699 	.db #0x98	; 152
   590A 30                 2700 	.db #0x30	; 48	'0'
   590B 98                 2701 	.db #0x98	; 152
   590C 64                 2702 	.db #0x64	; 100	'd'
   590D 30                 2703 	.db #0x30	; 48	'0'
   590E 25                 2704 	.db #0x25	; 37
   590F 30                 2705 	.db #0x30	; 48	'0'
   5910 30                 2706 	.db #0x30	; 48	'0'
   5911 1A                 2707 	.db #0x1A	; 26
   5912 30                 2708 	.db #0x30	; 48	'0'
   5913 98                 2709 	.db #0x98	; 152
   5914 30                 2710 	.db #0x30	; 48	'0'
   5915 CC                 2711 	.db #0xCC	; 204
   5916 CC                 2712 	.db #0xCC	; 204
   5917 98                 2713 	.db #0x98	; 152
   5918 25                 2714 	.db #0x25	; 37
   5919 30                 2715 	.db #0x30	; 48	'0'
   591A 30                 2716 	.db #0x30	; 48	'0'
   591B 1A                 2717 	.db #0x1A	; 26
   591C 64                 2718 	.db #0x64	; 100	'd'
   591D 30                 2719 	.db #0x30	; 48	'0'
   591E 30                 2720 	.db #0x30	; 48	'0'
   591F 30                 2721 	.db #0x30	; 48	'0'
   5920 64                 2722 	.db #0x64	; 100	'd'
   5921 30                 2723 	.db #0x30	; 48	'0'
   5922 25                 2724 	.db #0x25	; 37
   5923 30                 2725 	.db #0x30	; 48	'0'
   5924 30                 2726 	.db #0x30	; 48	'0'
   5925 1A                 2727 	.db #0x1A	; 26
   5926 64                 2728 	.db #0x64	; 100	'd'
   5927 30                 2729 	.db #0x30	; 48	'0'
   5928 30                 2730 	.db #0x30	; 48	'0'
   5929 30                 2731 	.db #0x30	; 48	'0'
   592A 64                 2732 	.db #0x64	; 100	'd'
   592B 30                 2733 	.db #0x30	; 48	'0'
   592C 25                 2734 	.db #0x25	; 37
   592D 30                 2735 	.db #0x30	; 48	'0'
   592E 30                 2736 	.db #0x30	; 48	'0'
   592F 1A                 2737 	.db #0x1A	; 26
   5930 64                 2738 	.db #0x64	; 100	'd'
   5931 30                 2739 	.db #0x30	; 48	'0'
   5932 30                 2740 	.db #0x30	; 48	'0'
   5933 30                 2741 	.db #0x30	; 48	'0'
   5934 64                 2742 	.db #0x64	; 100	'd'
   5935 30                 2743 	.db #0x30	; 48	'0'
   5936 25                 2744 	.db #0x25	; 37
   5937 30                 2745 	.db #0x30	; 48	'0'
   5938 30                 2746 	.db #0x30	; 48	'0'
   5939 1A                 2747 	.db #0x1A	; 26
   593A 64                 2748 	.db #0x64	; 100	'd'
   593B CC                 2749 	.db #0xCC	; 204
   593C 98                 2750 	.db #0x98	; 152
   593D 30                 2751 	.db #0x30	; 48	'0'
   593E 64                 2752 	.db #0x64	; 100	'd'
   593F 30                 2753 	.db #0x30	; 48	'0'
   5940 25                 2754 	.db #0x25	; 37
   5941 30                 2755 	.db #0x30	; 48	'0'
   5942 30                 2756 	.db #0x30	; 48	'0'
   5943 1A                 2757 	.db #0x1A	; 26
   5944 30                 2758 	.db #0x30	; 48	'0'
   5945 30                 2759 	.db #0x30	; 48	'0'
   5946 30                 2760 	.db #0x30	; 48	'0'
   5947 30                 2761 	.db #0x30	; 48	'0'
   5948 30                 2762 	.db #0x30	; 48	'0'
   5949 30                 2763 	.db #0x30	; 48	'0'
   594A 25                 2764 	.db #0x25	; 37
   594B 30                 2765 	.db #0x30	; 48	'0'
   594C 30                 2766 	.db #0x30	; 48	'0'
   594D 1A                 2767 	.db #0x1A	; 26
   594E 30                 2768 	.db #0x30	; 48	'0'
   594F 30                 2769 	.db #0x30	; 48	'0'
   5950 30                 2770 	.db #0x30	; 48	'0'
   5951 30                 2771 	.db #0x30	; 48	'0'
   5952 30                 2772 	.db #0x30	; 48	'0'
   5953 30                 2773 	.db #0x30	; 48	'0'
   5954 25                 2774 	.db #0x25	; 37
   5955 30                 2775 	.db #0x30	; 48	'0'
   5956 30                 2776 	.db #0x30	; 48	'0'
   5957 1A                 2777 	.db #0x1A	; 26
   5958 30                 2778 	.db #0x30	; 48	'0'
   5959 30                 2779 	.db #0x30	; 48	'0'
   595A 30                 2780 	.db #0x30	; 48	'0'
   595B 30                 2781 	.db #0x30	; 48	'0'
   595C 30                 2782 	.db #0x30	; 48	'0'
   595D 30                 2783 	.db #0x30	; 48	'0'
   595E 25                 2784 	.db #0x25	; 37
   595F 30                 2785 	.db #0x30	; 48	'0'
   5960 30                 2786 	.db #0x30	; 48	'0'
   5961 1A                 2787 	.db #0x1A	; 26
   5962 30                 2788 	.db #0x30	; 48	'0'
   5963 30                 2789 	.db #0x30	; 48	'0'
   5964 30                 2790 	.db #0x30	; 48	'0'
   5965 30                 2791 	.db #0x30	; 48	'0'
   5966 30                 2792 	.db #0x30	; 48	'0'
   5967 30                 2793 	.db #0x30	; 48	'0'
   5968 25                 2794 	.db #0x25	; 37
   5969 30                 2795 	.db #0x30	; 48	'0'
   596A 30                 2796 	.db #0x30	; 48	'0'
   596B 1A                 2797 	.db #0x1A	; 26
   596C 30                 2798 	.db #0x30	; 48	'0'
   596D 30                 2799 	.db #0x30	; 48	'0'
   596E 30                 2800 	.db #0x30	; 48	'0'
   596F 30                 2801 	.db #0x30	; 48	'0'
   5970 30                 2802 	.db #0x30	; 48	'0'
   5971 30                 2803 	.db #0x30	; 48	'0'
   5972 25                 2804 	.db #0x25	; 37
   5973 30                 2805 	.db #0x30	; 48	'0'
   5974 30                 2806 	.db #0x30	; 48	'0'
   5975 1A                 2807 	.db #0x1A	; 26
   5976 30                 2808 	.db #0x30	; 48	'0'
   5977 30                 2809 	.db #0x30	; 48	'0'
   5978 30                 2810 	.db #0x30	; 48	'0'
   5979 30                 2811 	.db #0x30	; 48	'0'
   597A 30                 2812 	.db #0x30	; 48	'0'
   597B 30                 2813 	.db #0x30	; 48	'0'
   597C 25                 2814 	.db #0x25	; 37
   597D 30                 2815 	.db #0x30	; 48	'0'
   597E 30                 2816 	.db #0x30	; 48	'0'
   597F 0F                 2817 	.db #0x0F	; 15
   5980 30                 2818 	.db #0x30	; 48	'0'
   5981 30                 2819 	.db #0x30	; 48	'0'
   5982 30                 2820 	.db #0x30	; 48	'0'
   5983 30                 2821 	.db #0x30	; 48	'0'
   5984 30                 2822 	.db #0x30	; 48	'0'
   5985 30                 2823 	.db #0x30	; 48	'0'
   5986 0F                 2824 	.db #0x0F	; 15
   5987 30                 2825 	.db #0x30	; 48	'0'
   5988 30                 2826 	.db #0x30	; 48	'0'
   5989 25                 2827 	.db #0x25	; 37
   598A 30                 2828 	.db #0x30	; 48	'0'
   598B 30                 2829 	.db #0x30	; 48	'0'
   598C 30                 2830 	.db #0x30	; 48	'0'
   598D 30                 2831 	.db #0x30	; 48	'0'
   598E 30                 2832 	.db #0x30	; 48	'0'
   598F 30                 2833 	.db #0x30	; 48	'0'
   5990 1A                 2834 	.db #0x1A	; 26
   5991 30                 2835 	.db #0x30	; 48	'0'
   5992 30                 2836 	.db #0x30	; 48	'0'
   5993 25                 2837 	.db #0x25	; 37
   5994 0F                 2838 	.db #0x0F	; 15
   5995 0F                 2839 	.db #0x0F	; 15
   5996 0F                 2840 	.db #0x0F	; 15
   5997 0F                 2841 	.db #0x0F	; 15
   5998 0F                 2842 	.db #0x0F	; 15
   5999 0F                 2843 	.db #0x0F	; 15
   599A 1A                 2844 	.db #0x1A	; 26
   599B 30                 2845 	.db #0x30	; 48	'0'
   599C F0                 2846 	.db #0xF0	; 240
   599D 30                 2847 	.db #0x30	; 48	'0'
   599E 30                 2848 	.db #0x30	; 48	'0'
   599F 30                 2849 	.db #0x30	; 48	'0'
   59A0 30                 2850 	.db #0x30	; 48	'0'
   59A1 30                 2851 	.db #0x30	; 48	'0'
   59A2 30                 2852 	.db #0x30	; 48	'0'
   59A3 30                 2853 	.db #0x30	; 48	'0'
   59A4 30                 2854 	.db #0x30	; 48	'0'
   59A5 F0                 2855 	.db #0xF0	; 240
   59A6 F0                 2856 	.db #0xF0	; 240
   59A7 30                 2857 	.db #0x30	; 48	'0'
   59A8 30                 2858 	.db #0x30	; 48	'0'
   59A9 30                 2859 	.db #0x30	; 48	'0'
   59AA 30                 2860 	.db #0x30	; 48	'0'
   59AB 30                 2861 	.db #0x30	; 48	'0'
   59AC 30                 2862 	.db #0x30	; 48	'0'
   59AD 30                 2863 	.db #0x30	; 48	'0'
   59AE 30                 2864 	.db #0x30	; 48	'0'
   59AF F0                 2865 	.db #0xF0	; 240
   59B0                    2866 _tile_tiles_07:
   59B0 F0                 2867 	.db #0xF0	; 240
   59B1 30                 2868 	.db #0x30	; 48	'0'
   59B2 30                 2869 	.db #0x30	; 48	'0'
   59B3 30                 2870 	.db #0x30	; 48	'0'
   59B4 30                 2871 	.db #0x30	; 48	'0'
   59B5 30                 2872 	.db #0x30	; 48	'0'
   59B6 30                 2873 	.db #0x30	; 48	'0'
   59B7 30                 2874 	.db #0x30	; 48	'0'
   59B8 30                 2875 	.db #0x30	; 48	'0'
   59B9 F0                 2876 	.db #0xF0	; 240
   59BA F0                 2877 	.db #0xF0	; 240
   59BB 30                 2878 	.db #0x30	; 48	'0'
   59BC 30                 2879 	.db #0x30	; 48	'0'
   59BD 30                 2880 	.db #0x30	; 48	'0'
   59BE 30                 2881 	.db #0x30	; 48	'0'
   59BF 30                 2882 	.db #0x30	; 48	'0'
   59C0 30                 2883 	.db #0x30	; 48	'0'
   59C1 30                 2884 	.db #0x30	; 48	'0'
   59C2 30                 2885 	.db #0x30	; 48	'0'
   59C3 F0                 2886 	.db #0xF0	; 240
   59C4 30                 2887 	.db #0x30	; 48	'0'
   59C5 25                 2888 	.db #0x25	; 37
   59C6 0F                 2889 	.db #0x0F	; 15
   59C7 0F                 2890 	.db #0x0F	; 15
   59C8 0F                 2891 	.db #0x0F	; 15
   59C9 0F                 2892 	.db #0x0F	; 15
   59CA 0F                 2893 	.db #0x0F	; 15
   59CB 0F                 2894 	.db #0x0F	; 15
   59CC 1A                 2895 	.db #0x1A	; 26
   59CD 30                 2896 	.db #0x30	; 48	'0'
   59CE 30                 2897 	.db #0x30	; 48	'0'
   59CF 25                 2898 	.db #0x25	; 37
   59D0 30                 2899 	.db #0x30	; 48	'0'
   59D1 30                 2900 	.db #0x30	; 48	'0'
   59D2 30                 2901 	.db #0x30	; 48	'0'
   59D3 30                 2902 	.db #0x30	; 48	'0'
   59D4 30                 2903 	.db #0x30	; 48	'0'
   59D5 30                 2904 	.db #0x30	; 48	'0'
   59D6 1A                 2905 	.db #0x1A	; 26
   59D7 30                 2906 	.db #0x30	; 48	'0'
   59D8 30                 2907 	.db #0x30	; 48	'0'
   59D9 0F                 2908 	.db #0x0F	; 15
   59DA 30                 2909 	.db #0x30	; 48	'0'
   59DB 30                 2910 	.db #0x30	; 48	'0'
   59DC 30                 2911 	.db #0x30	; 48	'0'
   59DD 30                 2912 	.db #0x30	; 48	'0'
   59DE 30                 2913 	.db #0x30	; 48	'0'
   59DF 30                 2914 	.db #0x30	; 48	'0'
   59E0 0F                 2915 	.db #0x0F	; 15
   59E1 30                 2916 	.db #0x30	; 48	'0'
   59E2 30                 2917 	.db #0x30	; 48	'0'
   59E3 1A                 2918 	.db #0x1A	; 26
   59E4 30                 2919 	.db #0x30	; 48	'0'
   59E5 30                 2920 	.db #0x30	; 48	'0'
   59E6 30                 2921 	.db #0x30	; 48	'0'
   59E7 30                 2922 	.db #0x30	; 48	'0'
   59E8 30                 2923 	.db #0x30	; 48	'0'
   59E9 30                 2924 	.db #0x30	; 48	'0'
   59EA 25                 2925 	.db #0x25	; 37
   59EB 30                 2926 	.db #0x30	; 48	'0'
   59EC 30                 2927 	.db #0x30	; 48	'0'
   59ED 1A                 2928 	.db #0x1A	; 26
   59EE 30                 2929 	.db #0x30	; 48	'0'
   59EF 30                 2930 	.db #0x30	; 48	'0'
   59F0 30                 2931 	.db #0x30	; 48	'0'
   59F1 30                 2932 	.db #0x30	; 48	'0'
   59F2 30                 2933 	.db #0x30	; 48	'0'
   59F3 30                 2934 	.db #0x30	; 48	'0'
   59F4 25                 2935 	.db #0x25	; 37
   59F5 30                 2936 	.db #0x30	; 48	'0'
   59F6 30                 2937 	.db #0x30	; 48	'0'
   59F7 1A                 2938 	.db #0x1A	; 26
   59F8 30                 2939 	.db #0x30	; 48	'0'
   59F9 30                 2940 	.db #0x30	; 48	'0'
   59FA 30                 2941 	.db #0x30	; 48	'0'
   59FB 30                 2942 	.db #0x30	; 48	'0'
   59FC 30                 2943 	.db #0x30	; 48	'0'
   59FD 30                 2944 	.db #0x30	; 48	'0'
   59FE 25                 2945 	.db #0x25	; 37
   59FF 30                 2946 	.db #0x30	; 48	'0'
   5A00 30                 2947 	.db #0x30	; 48	'0'
   5A01 1A                 2948 	.db #0x1A	; 26
   5A02 30                 2949 	.db #0x30	; 48	'0'
   5A03 30                 2950 	.db #0x30	; 48	'0'
   5A04 30                 2951 	.db #0x30	; 48	'0'
   5A05 30                 2952 	.db #0x30	; 48	'0'
   5A06 30                 2953 	.db #0x30	; 48	'0'
   5A07 30                 2954 	.db #0x30	; 48	'0'
   5A08 25                 2955 	.db #0x25	; 37
   5A09 30                 2956 	.db #0x30	; 48	'0'
   5A0A 30                 2957 	.db #0x30	; 48	'0'
   5A0B 1A                 2958 	.db #0x1A	; 26
   5A0C 30                 2959 	.db #0x30	; 48	'0'
   5A0D 30                 2960 	.db #0x30	; 48	'0'
   5A0E 30                 2961 	.db #0x30	; 48	'0'
   5A0F 30                 2962 	.db #0x30	; 48	'0'
   5A10 30                 2963 	.db #0x30	; 48	'0'
   5A11 30                 2964 	.db #0x30	; 48	'0'
   5A12 25                 2965 	.db #0x25	; 37
   5A13 30                 2966 	.db #0x30	; 48	'0'
   5A14 30                 2967 	.db #0x30	; 48	'0'
   5A15 1A                 2968 	.db #0x1A	; 26
   5A16 30                 2969 	.db #0x30	; 48	'0'
   5A17 30                 2970 	.db #0x30	; 48	'0'
   5A18 30                 2971 	.db #0x30	; 48	'0'
   5A19 30                 2972 	.db #0x30	; 48	'0'
   5A1A 30                 2973 	.db #0x30	; 48	'0'
   5A1B 30                 2974 	.db #0x30	; 48	'0'
   5A1C 25                 2975 	.db #0x25	; 37
   5A1D 30                 2976 	.db #0x30	; 48	'0'
   5A1E 30                 2977 	.db #0x30	; 48	'0'
   5A1F 1A                 2978 	.db #0x1A	; 26
   5A20 30                 2979 	.db #0x30	; 48	'0'
   5A21 30                 2980 	.db #0x30	; 48	'0'
   5A22 30                 2981 	.db #0x30	; 48	'0'
   5A23 30                 2982 	.db #0x30	; 48	'0'
   5A24 30                 2983 	.db #0x30	; 48	'0'
   5A25 30                 2984 	.db #0x30	; 48	'0'
   5A26 25                 2985 	.db #0x25	; 37
   5A27 30                 2986 	.db #0x30	; 48	'0'
   5A28 30                 2987 	.db #0x30	; 48	'0'
   5A29 1A                 2988 	.db #0x1A	; 26
   5A2A 30                 2989 	.db #0x30	; 48	'0'
   5A2B 30                 2990 	.db #0x30	; 48	'0'
   5A2C 30                 2991 	.db #0x30	; 48	'0'
   5A2D 30                 2992 	.db #0x30	; 48	'0'
   5A2E 30                 2993 	.db #0x30	; 48	'0'
   5A2F 30                 2994 	.db #0x30	; 48	'0'
   5A30 25                 2995 	.db #0x25	; 37
   5A31 30                 2996 	.db #0x30	; 48	'0'
   5A32 30                 2997 	.db #0x30	; 48	'0'
   5A33 1A                 2998 	.db #0x1A	; 26
   5A34 30                 2999 	.db #0x30	; 48	'0'
   5A35 64                 3000 	.db #0x64	; 100	'd'
   5A36 30                 3001 	.db #0x30	; 48	'0'
   5A37 30                 3002 	.db #0x30	; 48	'0'
   5A38 CC                 3003 	.db #0xCC	; 204
   5A39 30                 3004 	.db #0x30	; 48	'0'
   5A3A 25                 3005 	.db #0x25	; 37
   5A3B 30                 3006 	.db #0x30	; 48	'0'
   5A3C 30                 3007 	.db #0x30	; 48	'0'
   5A3D 1A                 3008 	.db #0x1A	; 26
   5A3E 30                 3009 	.db #0x30	; 48	'0'
   5A3F 64                 3010 	.db #0x64	; 100	'd'
   5A40 30                 3011 	.db #0x30	; 48	'0'
   5A41 64                 3012 	.db #0x64	; 100	'd'
   5A42 30                 3013 	.db #0x30	; 48	'0'
   5A43 98                 3014 	.db #0x98	; 152
   5A44 25                 3015 	.db #0x25	; 37
   5A45 30                 3016 	.db #0x30	; 48	'0'
   5A46 30                 3017 	.db #0x30	; 48	'0'
   5A47 1A                 3018 	.db #0x1A	; 26
   5A48 30                 3019 	.db #0x30	; 48	'0'
   5A49 CC                 3020 	.db #0xCC	; 204
   5A4A 30                 3021 	.db #0x30	; 48	'0'
   5A4B 64                 3022 	.db #0x64	; 100	'd'
   5A4C 30                 3023 	.db #0x30	; 48	'0'
   5A4D 98                 3024 	.db #0x98	; 152
   5A4E 25                 3025 	.db #0x25	; 37
   5A4F 30                 3026 	.db #0x30	; 48	'0'
   5A50 30                 3027 	.db #0x30	; 48	'0'
   5A51 1A                 3028 	.db #0x1A	; 26
   5A52 30                 3029 	.db #0x30	; 48	'0'
   5A53 CC                 3030 	.db #0xCC	; 204
   5A54 30                 3031 	.db #0x30	; 48	'0'
   5A55 64                 3032 	.db #0x64	; 100	'd'
   5A56 30                 3033 	.db #0x30	; 48	'0'
   5A57 98                 3034 	.db #0x98	; 152
   5A58 25                 3035 	.db #0x25	; 37
   5A59 30                 3036 	.db #0x30	; 48	'0'
   5A5A 30                 3037 	.db #0x30	; 48	'0'
   5A5B 1A                 3038 	.db #0x1A	; 26
   5A5C 64                 3039 	.db #0x64	; 100	'd'
   5A5D 64                 3040 	.db #0x64	; 100	'd'
   5A5E 30                 3041 	.db #0x30	; 48	'0'
   5A5F 64                 3042 	.db #0x64	; 100	'd'
   5A60 30                 3043 	.db #0x30	; 48	'0'
   5A61 98                 3044 	.db #0x98	; 152
   5A62 25                 3045 	.db #0x25	; 37
   5A63 30                 3046 	.db #0x30	; 48	'0'
   5A64 30                 3047 	.db #0x30	; 48	'0'
   5A65 1A                 3048 	.db #0x1A	; 26
   5A66 64                 3049 	.db #0x64	; 100	'd'
   5A67 64                 3050 	.db #0x64	; 100	'd'
   5A68 30                 3051 	.db #0x30	; 48	'0'
   5A69 64                 3052 	.db #0x64	; 100	'd'
   5A6A 30                 3053 	.db #0x30	; 48	'0'
   5A6B 98                 3054 	.db #0x98	; 152
   5A6C 25                 3055 	.db #0x25	; 37
   5A6D 30                 3056 	.db #0x30	; 48	'0'
   5A6E 30                 3057 	.db #0x30	; 48	'0'
   5A6F 1A                 3058 	.db #0x1A	; 26
   5A70 64                 3059 	.db #0x64	; 100	'd'
   5A71 64                 3060 	.db #0x64	; 100	'd'
   5A72 30                 3061 	.db #0x30	; 48	'0'
   5A73 64                 3062 	.db #0x64	; 100	'd'
   5A74 30                 3063 	.db #0x30	; 48	'0'
   5A75 98                 3064 	.db #0x98	; 152
   5A76 25                 3065 	.db #0x25	; 37
   5A77 30                 3066 	.db #0x30	; 48	'0'
   5A78 30                 3067 	.db #0x30	; 48	'0'
   5A79 1A                 3068 	.db #0x1A	; 26
   5A7A 64                 3069 	.db #0x64	; 100	'd'
   5A7B 64                 3070 	.db #0x64	; 100	'd'
   5A7C 30                 3071 	.db #0x30	; 48	'0'
   5A7D 30                 3072 	.db #0x30	; 48	'0'
   5A7E CC                 3073 	.db #0xCC	; 204
   5A7F 30                 3074 	.db #0x30	; 48	'0'
   5A80 25                 3075 	.db #0x25	; 37
   5A81 30                 3076 	.db #0x30	; 48	'0'
   5A82 30                 3077 	.db #0x30	; 48	'0'
   5A83 1A                 3078 	.db #0x1A	; 26
   5A84 98                 3079 	.db #0x98	; 152
   5A85 64                 3080 	.db #0x64	; 100	'd'
   5A86 30                 3081 	.db #0x30	; 48	'0'
   5A87 64                 3082 	.db #0x64	; 100	'd'
   5A88 30                 3083 	.db #0x30	; 48	'0'
   5A89 98                 3084 	.db #0x98	; 152
   5A8A 25                 3085 	.db #0x25	; 37
   5A8B 30                 3086 	.db #0x30	; 48	'0'
   5A8C 30                 3087 	.db #0x30	; 48	'0'
   5A8D 1A                 3088 	.db #0x1A	; 26
   5A8E 98                 3089 	.db #0x98	; 152
   5A8F 64                 3090 	.db #0x64	; 100	'd'
   5A90 30                 3091 	.db #0x30	; 48	'0'
   5A91 64                 3092 	.db #0x64	; 100	'd'
   5A92 30                 3093 	.db #0x30	; 48	'0'
   5A93 98                 3094 	.db #0x98	; 152
   5A94 25                 3095 	.db #0x25	; 37
   5A95 30                 3096 	.db #0x30	; 48	'0'
   5A96 30                 3097 	.db #0x30	; 48	'0'
   5A97 1A                 3098 	.db #0x1A	; 26
   5A98 CC                 3099 	.db #0xCC	; 204
   5A99 CC                 3100 	.db #0xCC	; 204
   5A9A 98                 3101 	.db #0x98	; 152
   5A9B 64                 3102 	.db #0x64	; 100	'd'
   5A9C 30                 3103 	.db #0x30	; 48	'0'
   5A9D 98                 3104 	.db #0x98	; 152
   5A9E 25                 3105 	.db #0x25	; 37
   5A9F 30                 3106 	.db #0x30	; 48	'0'
   5AA0 30                 3107 	.db #0x30	; 48	'0'
   5AA1 1A                 3108 	.db #0x1A	; 26
   5AA2 30                 3109 	.db #0x30	; 48	'0'
   5AA3 64                 3110 	.db #0x64	; 100	'd'
   5AA4 30                 3111 	.db #0x30	; 48	'0'
   5AA5 64                 3112 	.db #0x64	; 100	'd'
   5AA6 30                 3113 	.db #0x30	; 48	'0'
   5AA7 98                 3114 	.db #0x98	; 152
   5AA8 25                 3115 	.db #0x25	; 37
   5AA9 30                 3116 	.db #0x30	; 48	'0'
   5AAA 30                 3117 	.db #0x30	; 48	'0'
   5AAB 1A                 3118 	.db #0x1A	; 26
   5AAC 30                 3119 	.db #0x30	; 48	'0'
   5AAD 64                 3120 	.db #0x64	; 100	'd'
   5AAE 30                 3121 	.db #0x30	; 48	'0'
   5AAF 64                 3122 	.db #0x64	; 100	'd'
   5AB0 30                 3123 	.db #0x30	; 48	'0'
   5AB1 98                 3124 	.db #0x98	; 152
   5AB2 25                 3125 	.db #0x25	; 37
   5AB3 30                 3126 	.db #0x30	; 48	'0'
   5AB4 30                 3127 	.db #0x30	; 48	'0'
   5AB5 1A                 3128 	.db #0x1A	; 26
   5AB6 30                 3129 	.db #0x30	; 48	'0'
   5AB7 64                 3130 	.db #0x64	; 100	'd'
   5AB8 30                 3131 	.db #0x30	; 48	'0'
   5AB9 64                 3132 	.db #0x64	; 100	'd'
   5ABA 30                 3133 	.db #0x30	; 48	'0'
   5ABB 98                 3134 	.db #0x98	; 152
   5ABC 25                 3135 	.db #0x25	; 37
   5ABD 30                 3136 	.db #0x30	; 48	'0'
   5ABE 30                 3137 	.db #0x30	; 48	'0'
   5ABF 1A                 3138 	.db #0x1A	; 26
   5AC0 30                 3139 	.db #0x30	; 48	'0'
   5AC1 64                 3140 	.db #0x64	; 100	'd'
   5AC2 30                 3141 	.db #0x30	; 48	'0'
   5AC3 30                 3142 	.db #0x30	; 48	'0'
   5AC4 CC                 3143 	.db #0xCC	; 204
   5AC5 30                 3144 	.db #0x30	; 48	'0'
   5AC6 25                 3145 	.db #0x25	; 37
   5AC7 30                 3146 	.db #0x30	; 48	'0'
   5AC8 30                 3147 	.db #0x30	; 48	'0'
   5AC9 1A                 3148 	.db #0x1A	; 26
   5ACA 30                 3149 	.db #0x30	; 48	'0'
   5ACB 30                 3150 	.db #0x30	; 48	'0'
   5ACC 30                 3151 	.db #0x30	; 48	'0'
   5ACD 30                 3152 	.db #0x30	; 48	'0'
   5ACE 30                 3153 	.db #0x30	; 48	'0'
   5ACF 30                 3154 	.db #0x30	; 48	'0'
   5AD0 25                 3155 	.db #0x25	; 37
   5AD1 30                 3156 	.db #0x30	; 48	'0'
   5AD2 30                 3157 	.db #0x30	; 48	'0'
   5AD3 1A                 3158 	.db #0x1A	; 26
   5AD4 30                 3159 	.db #0x30	; 48	'0'
   5AD5 30                 3160 	.db #0x30	; 48	'0'
   5AD6 30                 3161 	.db #0x30	; 48	'0'
   5AD7 30                 3162 	.db #0x30	; 48	'0'
   5AD8 30                 3163 	.db #0x30	; 48	'0'
   5AD9 30                 3164 	.db #0x30	; 48	'0'
   5ADA 25                 3165 	.db #0x25	; 37
   5ADB 30                 3166 	.db #0x30	; 48	'0'
   5ADC 30                 3167 	.db #0x30	; 48	'0'
   5ADD 1A                 3168 	.db #0x1A	; 26
   5ADE 30                 3169 	.db #0x30	; 48	'0'
   5ADF 30                 3170 	.db #0x30	; 48	'0'
   5AE0 30                 3171 	.db #0x30	; 48	'0'
   5AE1 30                 3172 	.db #0x30	; 48	'0'
   5AE2 30                 3173 	.db #0x30	; 48	'0'
   5AE3 30                 3174 	.db #0x30	; 48	'0'
   5AE4 25                 3175 	.db #0x25	; 37
   5AE5 30                 3176 	.db #0x30	; 48	'0'
   5AE6 30                 3177 	.db #0x30	; 48	'0'
   5AE7 1A                 3178 	.db #0x1A	; 26
   5AE8 30                 3179 	.db #0x30	; 48	'0'
   5AE9 30                 3180 	.db #0x30	; 48	'0'
   5AEA 30                 3181 	.db #0x30	; 48	'0'
   5AEB 30                 3182 	.db #0x30	; 48	'0'
   5AEC 30                 3183 	.db #0x30	; 48	'0'
   5AED 30                 3184 	.db #0x30	; 48	'0'
   5AEE 25                 3185 	.db #0x25	; 37
   5AEF 30                 3186 	.db #0x30	; 48	'0'
   5AF0 30                 3187 	.db #0x30	; 48	'0'
   5AF1 1A                 3188 	.db #0x1A	; 26
   5AF2 30                 3189 	.db #0x30	; 48	'0'
   5AF3 30                 3190 	.db #0x30	; 48	'0'
   5AF4 30                 3191 	.db #0x30	; 48	'0'
   5AF5 30                 3192 	.db #0x30	; 48	'0'
   5AF6 30                 3193 	.db #0x30	; 48	'0'
   5AF7 30                 3194 	.db #0x30	; 48	'0'
   5AF8 25                 3195 	.db #0x25	; 37
   5AF9 30                 3196 	.db #0x30	; 48	'0'
   5AFA 30                 3197 	.db #0x30	; 48	'0'
   5AFB 1A                 3198 	.db #0x1A	; 26
   5AFC 30                 3199 	.db #0x30	; 48	'0'
   5AFD 30                 3200 	.db #0x30	; 48	'0'
   5AFE 30                 3201 	.db #0x30	; 48	'0'
   5AFF 30                 3202 	.db #0x30	; 48	'0'
   5B00 30                 3203 	.db #0x30	; 48	'0'
   5B01 30                 3204 	.db #0x30	; 48	'0'
   5B02 25                 3205 	.db #0x25	; 37
   5B03 30                 3206 	.db #0x30	; 48	'0'
   5B04 30                 3207 	.db #0x30	; 48	'0'
   5B05 1A                 3208 	.db #0x1A	; 26
   5B06 30                 3209 	.db #0x30	; 48	'0'
   5B07 30                 3210 	.db #0x30	; 48	'0'
   5B08 30                 3211 	.db #0x30	; 48	'0'
   5B09 30                 3212 	.db #0x30	; 48	'0'
   5B0A 30                 3213 	.db #0x30	; 48	'0'
   5B0B 30                 3214 	.db #0x30	; 48	'0'
   5B0C 25                 3215 	.db #0x25	; 37
   5B0D 30                 3216 	.db #0x30	; 48	'0'
   5B0E 30                 3217 	.db #0x30	; 48	'0'
   5B0F 0F                 3218 	.db #0x0F	; 15
   5B10 30                 3219 	.db #0x30	; 48	'0'
   5B11 30                 3220 	.db #0x30	; 48	'0'
   5B12 30                 3221 	.db #0x30	; 48	'0'
   5B13 30                 3222 	.db #0x30	; 48	'0'
   5B14 30                 3223 	.db #0x30	; 48	'0'
   5B15 30                 3224 	.db #0x30	; 48	'0'
   5B16 0F                 3225 	.db #0x0F	; 15
   5B17 30                 3226 	.db #0x30	; 48	'0'
   5B18 30                 3227 	.db #0x30	; 48	'0'
   5B19 25                 3228 	.db #0x25	; 37
   5B1A 30                 3229 	.db #0x30	; 48	'0'
   5B1B 30                 3230 	.db #0x30	; 48	'0'
   5B1C 30                 3231 	.db #0x30	; 48	'0'
   5B1D 30                 3232 	.db #0x30	; 48	'0'
   5B1E 30                 3233 	.db #0x30	; 48	'0'
   5B1F 30                 3234 	.db #0x30	; 48	'0'
   5B20 1A                 3235 	.db #0x1A	; 26
   5B21 30                 3236 	.db #0x30	; 48	'0'
   5B22 30                 3237 	.db #0x30	; 48	'0'
   5B23 25                 3238 	.db #0x25	; 37
   5B24 0F                 3239 	.db #0x0F	; 15
   5B25 0F                 3240 	.db #0x0F	; 15
   5B26 0F                 3241 	.db #0x0F	; 15
   5B27 0F                 3242 	.db #0x0F	; 15
   5B28 0F                 3243 	.db #0x0F	; 15
   5B29 0F                 3244 	.db #0x0F	; 15
   5B2A 1A                 3245 	.db #0x1A	; 26
   5B2B 30                 3246 	.db #0x30	; 48	'0'
   5B2C F0                 3247 	.db #0xF0	; 240
   5B2D 30                 3248 	.db #0x30	; 48	'0'
   5B2E 30                 3249 	.db #0x30	; 48	'0'
   5B2F 30                 3250 	.db #0x30	; 48	'0'
   5B30 30                 3251 	.db #0x30	; 48	'0'
   5B31 30                 3252 	.db #0x30	; 48	'0'
   5B32 30                 3253 	.db #0x30	; 48	'0'
   5B33 30                 3254 	.db #0x30	; 48	'0'
   5B34 30                 3255 	.db #0x30	; 48	'0'
   5B35 F0                 3256 	.db #0xF0	; 240
   5B36 F0                 3257 	.db #0xF0	; 240
   5B37 30                 3258 	.db #0x30	; 48	'0'
   5B38 30                 3259 	.db #0x30	; 48	'0'
   5B39 30                 3260 	.db #0x30	; 48	'0'
   5B3A 30                 3261 	.db #0x30	; 48	'0'
   5B3B 30                 3262 	.db #0x30	; 48	'0'
   5B3C 30                 3263 	.db #0x30	; 48	'0'
   5B3D 30                 3264 	.db #0x30	; 48	'0'
   5B3E 30                 3265 	.db #0x30	; 48	'0'
   5B3F F0                 3266 	.db #0xF0	; 240
   5B40                    3267 _tile_tiles_08:
   5B40 F0                 3268 	.db #0xF0	; 240
   5B41 30                 3269 	.db #0x30	; 48	'0'
   5B42 30                 3270 	.db #0x30	; 48	'0'
   5B43 30                 3271 	.db #0x30	; 48	'0'
   5B44 30                 3272 	.db #0x30	; 48	'0'
   5B45 30                 3273 	.db #0x30	; 48	'0'
   5B46 30                 3274 	.db #0x30	; 48	'0'
   5B47 30                 3275 	.db #0x30	; 48	'0'
   5B48 30                 3276 	.db #0x30	; 48	'0'
   5B49 F0                 3277 	.db #0xF0	; 240
   5B4A F0                 3278 	.db #0xF0	; 240
   5B4B 30                 3279 	.db #0x30	; 48	'0'
   5B4C 30                 3280 	.db #0x30	; 48	'0'
   5B4D 30                 3281 	.db #0x30	; 48	'0'
   5B4E 30                 3282 	.db #0x30	; 48	'0'
   5B4F 30                 3283 	.db #0x30	; 48	'0'
   5B50 30                 3284 	.db #0x30	; 48	'0'
   5B51 30                 3285 	.db #0x30	; 48	'0'
   5B52 30                 3286 	.db #0x30	; 48	'0'
   5B53 F0                 3287 	.db #0xF0	; 240
   5B54 30                 3288 	.db #0x30	; 48	'0'
   5B55 25                 3289 	.db #0x25	; 37
   5B56 0F                 3290 	.db #0x0F	; 15
   5B57 0F                 3291 	.db #0x0F	; 15
   5B58 0F                 3292 	.db #0x0F	; 15
   5B59 0F                 3293 	.db #0x0F	; 15
   5B5A 0F                 3294 	.db #0x0F	; 15
   5B5B 0F                 3295 	.db #0x0F	; 15
   5B5C 1A                 3296 	.db #0x1A	; 26
   5B5D 30                 3297 	.db #0x30	; 48	'0'
   5B5E 30                 3298 	.db #0x30	; 48	'0'
   5B5F 25                 3299 	.db #0x25	; 37
   5B60 30                 3300 	.db #0x30	; 48	'0'
   5B61 30                 3301 	.db #0x30	; 48	'0'
   5B62 30                 3302 	.db #0x30	; 48	'0'
   5B63 30                 3303 	.db #0x30	; 48	'0'
   5B64 30                 3304 	.db #0x30	; 48	'0'
   5B65 30                 3305 	.db #0x30	; 48	'0'
   5B66 1A                 3306 	.db #0x1A	; 26
   5B67 30                 3307 	.db #0x30	; 48	'0'
   5B68 30                 3308 	.db #0x30	; 48	'0'
   5B69 0F                 3309 	.db #0x0F	; 15
   5B6A 30                 3310 	.db #0x30	; 48	'0'
   5B6B 30                 3311 	.db #0x30	; 48	'0'
   5B6C 30                 3312 	.db #0x30	; 48	'0'
   5B6D 30                 3313 	.db #0x30	; 48	'0'
   5B6E 30                 3314 	.db #0x30	; 48	'0'
   5B6F 30                 3315 	.db #0x30	; 48	'0'
   5B70 0F                 3316 	.db #0x0F	; 15
   5B71 30                 3317 	.db #0x30	; 48	'0'
   5B72 30                 3318 	.db #0x30	; 48	'0'
   5B73 1A                 3319 	.db #0x1A	; 26
   5B74 30                 3320 	.db #0x30	; 48	'0'
   5B75 30                 3321 	.db #0x30	; 48	'0'
   5B76 30                 3322 	.db #0x30	; 48	'0'
   5B77 30                 3323 	.db #0x30	; 48	'0'
   5B78 30                 3324 	.db #0x30	; 48	'0'
   5B79 30                 3325 	.db #0x30	; 48	'0'
   5B7A 25                 3326 	.db #0x25	; 37
   5B7B 30                 3327 	.db #0x30	; 48	'0'
   5B7C 30                 3328 	.db #0x30	; 48	'0'
   5B7D 1A                 3329 	.db #0x1A	; 26
   5B7E 30                 3330 	.db #0x30	; 48	'0'
   5B7F 30                 3331 	.db #0x30	; 48	'0'
   5B80 30                 3332 	.db #0x30	; 48	'0'
   5B81 30                 3333 	.db #0x30	; 48	'0'
   5B82 30                 3334 	.db #0x30	; 48	'0'
   5B83 30                 3335 	.db #0x30	; 48	'0'
   5B84 25                 3336 	.db #0x25	; 37
   5B85 30                 3337 	.db #0x30	; 48	'0'
   5B86 30                 3338 	.db #0x30	; 48	'0'
   5B87 1A                 3339 	.db #0x1A	; 26
   5B88 30                 3340 	.db #0x30	; 48	'0'
   5B89 30                 3341 	.db #0x30	; 48	'0'
   5B8A 30                 3342 	.db #0x30	; 48	'0'
   5B8B 30                 3343 	.db #0x30	; 48	'0'
   5B8C 30                 3344 	.db #0x30	; 48	'0'
   5B8D 30                 3345 	.db #0x30	; 48	'0'
   5B8E 25                 3346 	.db #0x25	; 37
   5B8F 30                 3347 	.db #0x30	; 48	'0'
   5B90 30                 3348 	.db #0x30	; 48	'0'
   5B91 1A                 3349 	.db #0x1A	; 26
   5B92 30                 3350 	.db #0x30	; 48	'0'
   5B93 30                 3351 	.db #0x30	; 48	'0'
   5B94 30                 3352 	.db #0x30	; 48	'0'
   5B95 30                 3353 	.db #0x30	; 48	'0'
   5B96 30                 3354 	.db #0x30	; 48	'0'
   5B97 30                 3355 	.db #0x30	; 48	'0'
   5B98 25                 3356 	.db #0x25	; 37
   5B99 30                 3357 	.db #0x30	; 48	'0'
   5B9A 30                 3358 	.db #0x30	; 48	'0'
   5B9B 1A                 3359 	.db #0x1A	; 26
   5B9C 30                 3360 	.db #0x30	; 48	'0'
   5B9D 30                 3361 	.db #0x30	; 48	'0'
   5B9E 30                 3362 	.db #0x30	; 48	'0'
   5B9F 30                 3363 	.db #0x30	; 48	'0'
   5BA0 30                 3364 	.db #0x30	; 48	'0'
   5BA1 30                 3365 	.db #0x30	; 48	'0'
   5BA2 25                 3366 	.db #0x25	; 37
   5BA3 30                 3367 	.db #0x30	; 48	'0'
   5BA4 30                 3368 	.db #0x30	; 48	'0'
   5BA5 1A                 3369 	.db #0x1A	; 26
   5BA6 30                 3370 	.db #0x30	; 48	'0'
   5BA7 30                 3371 	.db #0x30	; 48	'0'
   5BA8 30                 3372 	.db #0x30	; 48	'0'
   5BA9 30                 3373 	.db #0x30	; 48	'0'
   5BAA 30                 3374 	.db #0x30	; 48	'0'
   5BAB 30                 3375 	.db #0x30	; 48	'0'
   5BAC 25                 3376 	.db #0x25	; 37
   5BAD 30                 3377 	.db #0x30	; 48	'0'
   5BAE 30                 3378 	.db #0x30	; 48	'0'
   5BAF 1A                 3379 	.db #0x1A	; 26
   5BB0 30                 3380 	.db #0x30	; 48	'0'
   5BB1 30                 3381 	.db #0x30	; 48	'0'
   5BB2 30                 3382 	.db #0x30	; 48	'0'
   5BB3 30                 3383 	.db #0x30	; 48	'0'
   5BB4 30                 3384 	.db #0x30	; 48	'0'
   5BB5 30                 3385 	.db #0x30	; 48	'0'
   5BB6 25                 3386 	.db #0x25	; 37
   5BB7 30                 3387 	.db #0x30	; 48	'0'
   5BB8 30                 3388 	.db #0x30	; 48	'0'
   5BB9 1A                 3389 	.db #0x1A	; 26
   5BBA 30                 3390 	.db #0x30	; 48	'0'
   5BBB 30                 3391 	.db #0x30	; 48	'0'
   5BBC 30                 3392 	.db #0x30	; 48	'0'
   5BBD 30                 3393 	.db #0x30	; 48	'0'
   5BBE 30                 3394 	.db #0x30	; 48	'0'
   5BBF 30                 3395 	.db #0x30	; 48	'0'
   5BC0 25                 3396 	.db #0x25	; 37
   5BC1 30                 3397 	.db #0x30	; 48	'0'
   5BC2 30                 3398 	.db #0x30	; 48	'0'
   5BC3 1A                 3399 	.db #0x1A	; 26
   5BC4 30                 3400 	.db #0x30	; 48	'0'
   5BC5 30                 3401 	.db #0x30	; 48	'0'
   5BC6 30                 3402 	.db #0x30	; 48	'0'
   5BC7 30                 3403 	.db #0x30	; 48	'0'
   5BC8 30                 3404 	.db #0x30	; 48	'0'
   5BC9 30                 3405 	.db #0x30	; 48	'0'
   5BCA 25                 3406 	.db #0x25	; 37
   5BCB 30                 3407 	.db #0x30	; 48	'0'
   5BCC 30                 3408 	.db #0x30	; 48	'0'
   5BCD 1A                 3409 	.db #0x1A	; 26
   5BCE 30                 3410 	.db #0x30	; 48	'0'
   5BCF CC                 3411 	.db #0xCC	; 204
   5BD0 30                 3412 	.db #0x30	; 48	'0'
   5BD1 30                 3413 	.db #0x30	; 48	'0'
   5BD2 64                 3414 	.db #0x64	; 100	'd'
   5BD3 98                 3415 	.db #0x98	; 152
   5BD4 25                 3416 	.db #0x25	; 37
   5BD5 30                 3417 	.db #0x30	; 48	'0'
   5BD6 30                 3418 	.db #0x30	; 48	'0'
   5BD7 1A                 3419 	.db #0x1A	; 26
   5BD8 64                 3420 	.db #0x64	; 100	'd'
   5BD9 30                 3421 	.db #0x30	; 48	'0'
   5BDA 98                 3422 	.db #0x98	; 152
   5BDB 30                 3423 	.db #0x30	; 48	'0'
   5BDC 98                 3424 	.db #0x98	; 152
   5BDD 30                 3425 	.db #0x30	; 48	'0'
   5BDE 25                 3426 	.db #0x25	; 37
   5BDF 30                 3427 	.db #0x30	; 48	'0'
   5BE0 30                 3428 	.db #0x30	; 48	'0'
   5BE1 1A                 3429 	.db #0x1A	; 26
   5BE2 64                 3430 	.db #0x64	; 100	'd'
   5BE3 30                 3431 	.db #0x30	; 48	'0'
   5BE4 98                 3432 	.db #0x98	; 152
   5BE5 64                 3433 	.db #0x64	; 100	'd'
   5BE6 30                 3434 	.db #0x30	; 48	'0'
   5BE7 30                 3435 	.db #0x30	; 48	'0'
   5BE8 25                 3436 	.db #0x25	; 37
   5BE9 30                 3437 	.db #0x30	; 48	'0'
   5BEA 30                 3438 	.db #0x30	; 48	'0'
   5BEB 1A                 3439 	.db #0x1A	; 26
   5BEC 64                 3440 	.db #0x64	; 100	'd'
   5BED 30                 3441 	.db #0x30	; 48	'0'
   5BEE 98                 3442 	.db #0x98	; 152
   5BEF 64                 3443 	.db #0x64	; 100	'd'
   5BF0 30                 3444 	.db #0x30	; 48	'0'
   5BF1 30                 3445 	.db #0x30	; 48	'0'
   5BF2 25                 3446 	.db #0x25	; 37
   5BF3 30                 3447 	.db #0x30	; 48	'0'
   5BF4 30                 3448 	.db #0x30	; 48	'0'
   5BF5 1A                 3449 	.db #0x1A	; 26
   5BF6 64                 3450 	.db #0x64	; 100	'd'
   5BF7 30                 3451 	.db #0x30	; 48	'0'
   5BF8 98                 3452 	.db #0x98	; 152
   5BF9 64                 3453 	.db #0x64	; 100	'd'
   5BFA 30                 3454 	.db #0x30	; 48	'0'
   5BFB 30                 3455 	.db #0x30	; 48	'0'
   5BFC 25                 3456 	.db #0x25	; 37
   5BFD 30                 3457 	.db #0x30	; 48	'0'
   5BFE 30                 3458 	.db #0x30	; 48	'0'
   5BFF 1A                 3459 	.db #0x1A	; 26
   5C00 64                 3460 	.db #0x64	; 100	'd'
   5C01 30                 3461 	.db #0x30	; 48	'0'
   5C02 98                 3462 	.db #0x98	; 152
   5C03 64                 3463 	.db #0x64	; 100	'd'
   5C04 64                 3464 	.db #0x64	; 100	'd'
   5C05 30                 3465 	.db #0x30	; 48	'0'
   5C06 25                 3466 	.db #0x25	; 37
   5C07 30                 3467 	.db #0x30	; 48	'0'
   5C08 30                 3468 	.db #0x30	; 48	'0'
   5C09 1A                 3469 	.db #0x1A	; 26
   5C0A 64                 3470 	.db #0x64	; 100	'd'
   5C0B 30                 3471 	.db #0x30	; 48	'0'
   5C0C 98                 3472 	.db #0x98	; 152
   5C0D 64                 3473 	.db #0x64	; 100	'd'
   5C0E 98                 3474 	.db #0x98	; 152
   5C0F 98                 3475 	.db #0x98	; 152
   5C10 25                 3476 	.db #0x25	; 37
   5C11 30                 3477 	.db #0x30	; 48	'0'
   5C12 30                 3478 	.db #0x30	; 48	'0'
   5C13 1A                 3479 	.db #0x1A	; 26
   5C14 64                 3480 	.db #0x64	; 100	'd'
   5C15 64                 3481 	.db #0x64	; 100	'd'
   5C16 98                 3482 	.db #0x98	; 152
   5C17 64                 3483 	.db #0x64	; 100	'd'
   5C18 30                 3484 	.db #0x30	; 48	'0'
   5C19 98                 3485 	.db #0x98	; 152
   5C1A 25                 3486 	.db #0x25	; 37
   5C1B 30                 3487 	.db #0x30	; 48	'0'
   5C1C 30                 3488 	.db #0x30	; 48	'0'
   5C1D 1A                 3489 	.db #0x1A	; 26
   5C1E 30                 3490 	.db #0x30	; 48	'0'
   5C1F 98                 3491 	.db #0x98	; 152
   5C20 98                 3492 	.db #0x98	; 152
   5C21 64                 3493 	.db #0x64	; 100	'd'
   5C22 30                 3494 	.db #0x30	; 48	'0'
   5C23 98                 3495 	.db #0x98	; 152
   5C24 25                 3496 	.db #0x25	; 37
   5C25 30                 3497 	.db #0x30	; 48	'0'
   5C26 30                 3498 	.db #0x30	; 48	'0'
   5C27 1A                 3499 	.db #0x1A	; 26
   5C28 30                 3500 	.db #0x30	; 48	'0'
   5C29 30                 3501 	.db #0x30	; 48	'0'
   5C2A 98                 3502 	.db #0x98	; 152
   5C2B 64                 3503 	.db #0x64	; 100	'd'
   5C2C 30                 3504 	.db #0x30	; 48	'0'
   5C2D 98                 3505 	.db #0x98	; 152
   5C2E 25                 3506 	.db #0x25	; 37
   5C2F 30                 3507 	.db #0x30	; 48	'0'
   5C30 30                 3508 	.db #0x30	; 48	'0'
   5C31 1A                 3509 	.db #0x1A	; 26
   5C32 30                 3510 	.db #0x30	; 48	'0'
   5C33 30                 3511 	.db #0x30	; 48	'0'
   5C34 98                 3512 	.db #0x98	; 152
   5C35 64                 3513 	.db #0x64	; 100	'd'
   5C36 30                 3514 	.db #0x30	; 48	'0'
   5C37 98                 3515 	.db #0x98	; 152
   5C38 25                 3516 	.db #0x25	; 37
   5C39 30                 3517 	.db #0x30	; 48	'0'
   5C3A 30                 3518 	.db #0x30	; 48	'0'
   5C3B 1A                 3519 	.db #0x1A	; 26
   5C3C 30                 3520 	.db #0x30	; 48	'0'
   5C3D 64                 3521 	.db #0x64	; 100	'd'
   5C3E 30                 3522 	.db #0x30	; 48	'0'
   5C3F 64                 3523 	.db #0x64	; 100	'd'
   5C40 30                 3524 	.db #0x30	; 48	'0'
   5C41 98                 3525 	.db #0x98	; 152
   5C42 25                 3526 	.db #0x25	; 37
   5C43 30                 3527 	.db #0x30	; 48	'0'
   5C44 30                 3528 	.db #0x30	; 48	'0'
   5C45 1A                 3529 	.db #0x1A	; 26
   5C46 64                 3530 	.db #0x64	; 100	'd'
   5C47 64                 3531 	.db #0x64	; 100	'd'
   5C48 30                 3532 	.db #0x30	; 48	'0'
   5C49 30                 3533 	.db #0x30	; 48	'0'
   5C4A CC                 3534 	.db #0xCC	; 204
   5C4B 30                 3535 	.db #0x30	; 48	'0'
   5C4C 25                 3536 	.db #0x25	; 37
   5C4D 30                 3537 	.db #0x30	; 48	'0'
   5C4E 30                 3538 	.db #0x30	; 48	'0'
   5C4F 1A                 3539 	.db #0x1A	; 26
   5C50 30                 3540 	.db #0x30	; 48	'0'
   5C51 98                 3541 	.db #0x98	; 152
   5C52 30                 3542 	.db #0x30	; 48	'0'
   5C53 30                 3543 	.db #0x30	; 48	'0'
   5C54 CC                 3544 	.db #0xCC	; 204
   5C55 30                 3545 	.db #0x30	; 48	'0'
   5C56 25                 3546 	.db #0x25	; 37
   5C57 30                 3547 	.db #0x30	; 48	'0'
   5C58 30                 3548 	.db #0x30	; 48	'0'
   5C59 1A                 3549 	.db #0x1A	; 26
   5C5A 30                 3550 	.db #0x30	; 48	'0'
   5C5B 30                 3551 	.db #0x30	; 48	'0'
   5C5C 30                 3552 	.db #0x30	; 48	'0'
   5C5D 30                 3553 	.db #0x30	; 48	'0'
   5C5E 30                 3554 	.db #0x30	; 48	'0'
   5C5F 30                 3555 	.db #0x30	; 48	'0'
   5C60 25                 3556 	.db #0x25	; 37
   5C61 30                 3557 	.db #0x30	; 48	'0'
   5C62 30                 3558 	.db #0x30	; 48	'0'
   5C63 1A                 3559 	.db #0x1A	; 26
   5C64 30                 3560 	.db #0x30	; 48	'0'
   5C65 30                 3561 	.db #0x30	; 48	'0'
   5C66 30                 3562 	.db #0x30	; 48	'0'
   5C67 30                 3563 	.db #0x30	; 48	'0'
   5C68 30                 3564 	.db #0x30	; 48	'0'
   5C69 30                 3565 	.db #0x30	; 48	'0'
   5C6A 25                 3566 	.db #0x25	; 37
   5C6B 30                 3567 	.db #0x30	; 48	'0'
   5C6C 30                 3568 	.db #0x30	; 48	'0'
   5C6D 1A                 3569 	.db #0x1A	; 26
   5C6E 30                 3570 	.db #0x30	; 48	'0'
   5C6F 30                 3571 	.db #0x30	; 48	'0'
   5C70 30                 3572 	.db #0x30	; 48	'0'
   5C71 30                 3573 	.db #0x30	; 48	'0'
   5C72 30                 3574 	.db #0x30	; 48	'0'
   5C73 30                 3575 	.db #0x30	; 48	'0'
   5C74 25                 3576 	.db #0x25	; 37
   5C75 30                 3577 	.db #0x30	; 48	'0'
   5C76 30                 3578 	.db #0x30	; 48	'0'
   5C77 1A                 3579 	.db #0x1A	; 26
   5C78 30                 3580 	.db #0x30	; 48	'0'
   5C79 30                 3581 	.db #0x30	; 48	'0'
   5C7A 30                 3582 	.db #0x30	; 48	'0'
   5C7B 30                 3583 	.db #0x30	; 48	'0'
   5C7C 30                 3584 	.db #0x30	; 48	'0'
   5C7D 30                 3585 	.db #0x30	; 48	'0'
   5C7E 25                 3586 	.db #0x25	; 37
   5C7F 30                 3587 	.db #0x30	; 48	'0'
   5C80 30                 3588 	.db #0x30	; 48	'0'
   5C81 1A                 3589 	.db #0x1A	; 26
   5C82 30                 3590 	.db #0x30	; 48	'0'
   5C83 30                 3591 	.db #0x30	; 48	'0'
   5C84 30                 3592 	.db #0x30	; 48	'0'
   5C85 30                 3593 	.db #0x30	; 48	'0'
   5C86 30                 3594 	.db #0x30	; 48	'0'
   5C87 30                 3595 	.db #0x30	; 48	'0'
   5C88 25                 3596 	.db #0x25	; 37
   5C89 30                 3597 	.db #0x30	; 48	'0'
   5C8A 30                 3598 	.db #0x30	; 48	'0'
   5C8B 1A                 3599 	.db #0x1A	; 26
   5C8C 30                 3600 	.db #0x30	; 48	'0'
   5C8D 30                 3601 	.db #0x30	; 48	'0'
   5C8E 30                 3602 	.db #0x30	; 48	'0'
   5C8F 30                 3603 	.db #0x30	; 48	'0'
   5C90 30                 3604 	.db #0x30	; 48	'0'
   5C91 30                 3605 	.db #0x30	; 48	'0'
   5C92 25                 3606 	.db #0x25	; 37
   5C93 30                 3607 	.db #0x30	; 48	'0'
   5C94 30                 3608 	.db #0x30	; 48	'0'
   5C95 1A                 3609 	.db #0x1A	; 26
   5C96 30                 3610 	.db #0x30	; 48	'0'
   5C97 30                 3611 	.db #0x30	; 48	'0'
   5C98 30                 3612 	.db #0x30	; 48	'0'
   5C99 30                 3613 	.db #0x30	; 48	'0'
   5C9A 30                 3614 	.db #0x30	; 48	'0'
   5C9B 30                 3615 	.db #0x30	; 48	'0'
   5C9C 25                 3616 	.db #0x25	; 37
   5C9D 30                 3617 	.db #0x30	; 48	'0'
   5C9E 30                 3618 	.db #0x30	; 48	'0'
   5C9F 0F                 3619 	.db #0x0F	; 15
   5CA0 30                 3620 	.db #0x30	; 48	'0'
   5CA1 30                 3621 	.db #0x30	; 48	'0'
   5CA2 30                 3622 	.db #0x30	; 48	'0'
   5CA3 30                 3623 	.db #0x30	; 48	'0'
   5CA4 30                 3624 	.db #0x30	; 48	'0'
   5CA5 30                 3625 	.db #0x30	; 48	'0'
   5CA6 0F                 3626 	.db #0x0F	; 15
   5CA7 30                 3627 	.db #0x30	; 48	'0'
   5CA8 30                 3628 	.db #0x30	; 48	'0'
   5CA9 25                 3629 	.db #0x25	; 37
   5CAA 30                 3630 	.db #0x30	; 48	'0'
   5CAB 30                 3631 	.db #0x30	; 48	'0'
   5CAC 30                 3632 	.db #0x30	; 48	'0'
   5CAD 30                 3633 	.db #0x30	; 48	'0'
   5CAE 30                 3634 	.db #0x30	; 48	'0'
   5CAF 30                 3635 	.db #0x30	; 48	'0'
   5CB0 1A                 3636 	.db #0x1A	; 26
   5CB1 30                 3637 	.db #0x30	; 48	'0'
   5CB2 30                 3638 	.db #0x30	; 48	'0'
   5CB3 25                 3639 	.db #0x25	; 37
   5CB4 0F                 3640 	.db #0x0F	; 15
   5CB5 0F                 3641 	.db #0x0F	; 15
   5CB6 0F                 3642 	.db #0x0F	; 15
   5CB7 0F                 3643 	.db #0x0F	; 15
   5CB8 0F                 3644 	.db #0x0F	; 15
   5CB9 0F                 3645 	.db #0x0F	; 15
   5CBA 1A                 3646 	.db #0x1A	; 26
   5CBB 30                 3647 	.db #0x30	; 48	'0'
   5CBC F0                 3648 	.db #0xF0	; 240
   5CBD 30                 3649 	.db #0x30	; 48	'0'
   5CBE 30                 3650 	.db #0x30	; 48	'0'
   5CBF 30                 3651 	.db #0x30	; 48	'0'
   5CC0 30                 3652 	.db #0x30	; 48	'0'
   5CC1 30                 3653 	.db #0x30	; 48	'0'
   5CC2 30                 3654 	.db #0x30	; 48	'0'
   5CC3 30                 3655 	.db #0x30	; 48	'0'
   5CC4 30                 3656 	.db #0x30	; 48	'0'
   5CC5 F0                 3657 	.db #0xF0	; 240
   5CC6 F0                 3658 	.db #0xF0	; 240
   5CC7 30                 3659 	.db #0x30	; 48	'0'
   5CC8 30                 3660 	.db #0x30	; 48	'0'
   5CC9 30                 3661 	.db #0x30	; 48	'0'
   5CCA 30                 3662 	.db #0x30	; 48	'0'
   5CCB 30                 3663 	.db #0x30	; 48	'0'
   5CCC 30                 3664 	.db #0x30	; 48	'0'
   5CCD 30                 3665 	.db #0x30	; 48	'0'
   5CCE 30                 3666 	.db #0x30	; 48	'0'
   5CCF F0                 3667 	.db #0xF0	; 240
   5CD0                    3668 _tile_tiles_09:
   5CD0 F0                 3669 	.db #0xF0	; 240
   5CD1 30                 3670 	.db #0x30	; 48	'0'
   5CD2 30                 3671 	.db #0x30	; 48	'0'
   5CD3 30                 3672 	.db #0x30	; 48	'0'
   5CD4 30                 3673 	.db #0x30	; 48	'0'
   5CD5 30                 3674 	.db #0x30	; 48	'0'
   5CD6 30                 3675 	.db #0x30	; 48	'0'
   5CD7 30                 3676 	.db #0x30	; 48	'0'
   5CD8 30                 3677 	.db #0x30	; 48	'0'
   5CD9 F0                 3678 	.db #0xF0	; 240
   5CDA F0                 3679 	.db #0xF0	; 240
   5CDB 30                 3680 	.db #0x30	; 48	'0'
   5CDC 30                 3681 	.db #0x30	; 48	'0'
   5CDD 30                 3682 	.db #0x30	; 48	'0'
   5CDE 30                 3683 	.db #0x30	; 48	'0'
   5CDF 30                 3684 	.db #0x30	; 48	'0'
   5CE0 30                 3685 	.db #0x30	; 48	'0'
   5CE1 30                 3686 	.db #0x30	; 48	'0'
   5CE2 30                 3687 	.db #0x30	; 48	'0'
   5CE3 F0                 3688 	.db #0xF0	; 240
   5CE4 30                 3689 	.db #0x30	; 48	'0'
   5CE5 25                 3690 	.db #0x25	; 37
   5CE6 0F                 3691 	.db #0x0F	; 15
   5CE7 0F                 3692 	.db #0x0F	; 15
   5CE8 0F                 3693 	.db #0x0F	; 15
   5CE9 0F                 3694 	.db #0x0F	; 15
   5CEA 0F                 3695 	.db #0x0F	; 15
   5CEB 0F                 3696 	.db #0x0F	; 15
   5CEC 1A                 3697 	.db #0x1A	; 26
   5CED 30                 3698 	.db #0x30	; 48	'0'
   5CEE 30                 3699 	.db #0x30	; 48	'0'
   5CEF 25                 3700 	.db #0x25	; 37
   5CF0 30                 3701 	.db #0x30	; 48	'0'
   5CF1 30                 3702 	.db #0x30	; 48	'0'
   5CF2 30                 3703 	.db #0x30	; 48	'0'
   5CF3 30                 3704 	.db #0x30	; 48	'0'
   5CF4 30                 3705 	.db #0x30	; 48	'0'
   5CF5 30                 3706 	.db #0x30	; 48	'0'
   5CF6 1A                 3707 	.db #0x1A	; 26
   5CF7 30                 3708 	.db #0x30	; 48	'0'
   5CF8 30                 3709 	.db #0x30	; 48	'0'
   5CF9 0F                 3710 	.db #0x0F	; 15
   5CFA 30                 3711 	.db #0x30	; 48	'0'
   5CFB 30                 3712 	.db #0x30	; 48	'0'
   5CFC 30                 3713 	.db #0x30	; 48	'0'
   5CFD 30                 3714 	.db #0x30	; 48	'0'
   5CFE 30                 3715 	.db #0x30	; 48	'0'
   5CFF 30                 3716 	.db #0x30	; 48	'0'
   5D00 0F                 3717 	.db #0x0F	; 15
   5D01 30                 3718 	.db #0x30	; 48	'0'
   5D02 30                 3719 	.db #0x30	; 48	'0'
   5D03 1A                 3720 	.db #0x1A	; 26
   5D04 30                 3721 	.db #0x30	; 48	'0'
   5D05 30                 3722 	.db #0x30	; 48	'0'
   5D06 30                 3723 	.db #0x30	; 48	'0'
   5D07 30                 3724 	.db #0x30	; 48	'0'
   5D08 30                 3725 	.db #0x30	; 48	'0'
   5D09 30                 3726 	.db #0x30	; 48	'0'
   5D0A 25                 3727 	.db #0x25	; 37
   5D0B 30                 3728 	.db #0x30	; 48	'0'
   5D0C 30                 3729 	.db #0x30	; 48	'0'
   5D0D 1A                 3730 	.db #0x1A	; 26
   5D0E 30                 3731 	.db #0x30	; 48	'0'
   5D0F 30                 3732 	.db #0x30	; 48	'0'
   5D10 30                 3733 	.db #0x30	; 48	'0'
   5D11 30                 3734 	.db #0x30	; 48	'0'
   5D12 30                 3735 	.db #0x30	; 48	'0'
   5D13 30                 3736 	.db #0x30	; 48	'0'
   5D14 25                 3737 	.db #0x25	; 37
   5D15 30                 3738 	.db #0x30	; 48	'0'
   5D16 30                 3739 	.db #0x30	; 48	'0'
   5D17 1A                 3740 	.db #0x1A	; 26
   5D18 30                 3741 	.db #0x30	; 48	'0'
   5D19 30                 3742 	.db #0x30	; 48	'0'
   5D1A 30                 3743 	.db #0x30	; 48	'0'
   5D1B 30                 3744 	.db #0x30	; 48	'0'
   5D1C 30                 3745 	.db #0x30	; 48	'0'
   5D1D 30                 3746 	.db #0x30	; 48	'0'
   5D1E 25                 3747 	.db #0x25	; 37
   5D1F 30                 3748 	.db #0x30	; 48	'0'
   5D20 30                 3749 	.db #0x30	; 48	'0'
   5D21 1A                 3750 	.db #0x1A	; 26
   5D22 30                 3751 	.db #0x30	; 48	'0'
   5D23 30                 3752 	.db #0x30	; 48	'0'
   5D24 30                 3753 	.db #0x30	; 48	'0'
   5D25 30                 3754 	.db #0x30	; 48	'0'
   5D26 30                 3755 	.db #0x30	; 48	'0'
   5D27 30                 3756 	.db #0x30	; 48	'0'
   5D28 25                 3757 	.db #0x25	; 37
   5D29 30                 3758 	.db #0x30	; 48	'0'
   5D2A 30                 3759 	.db #0x30	; 48	'0'
   5D2B 1A                 3760 	.db #0x1A	; 26
   5D2C 30                 3761 	.db #0x30	; 48	'0'
   5D2D 30                 3762 	.db #0x30	; 48	'0'
   5D2E 30                 3763 	.db #0x30	; 48	'0'
   5D2F 30                 3764 	.db #0x30	; 48	'0'
   5D30 30                 3765 	.db #0x30	; 48	'0'
   5D31 30                 3766 	.db #0x30	; 48	'0'
   5D32 25                 3767 	.db #0x25	; 37
   5D33 30                 3768 	.db #0x30	; 48	'0'
   5D34 30                 3769 	.db #0x30	; 48	'0'
   5D35 1A                 3770 	.db #0x1A	; 26
   5D36 30                 3771 	.db #0x30	; 48	'0'
   5D37 30                 3772 	.db #0x30	; 48	'0'
   5D38 30                 3773 	.db #0x30	; 48	'0'
   5D39 30                 3774 	.db #0x30	; 48	'0'
   5D3A 30                 3775 	.db #0x30	; 48	'0'
   5D3B 30                 3776 	.db #0x30	; 48	'0'
   5D3C 25                 3777 	.db #0x25	; 37
   5D3D 30                 3778 	.db #0x30	; 48	'0'
   5D3E 30                 3779 	.db #0x30	; 48	'0'
   5D3F 1A                 3780 	.db #0x1A	; 26
   5D40 30                 3781 	.db #0x30	; 48	'0'
   5D41 30                 3782 	.db #0x30	; 48	'0'
   5D42 30                 3783 	.db #0x30	; 48	'0'
   5D43 30                 3784 	.db #0x30	; 48	'0'
   5D44 30                 3785 	.db #0x30	; 48	'0'
   5D45 30                 3786 	.db #0x30	; 48	'0'
   5D46 25                 3787 	.db #0x25	; 37
   5D47 30                 3788 	.db #0x30	; 48	'0'
   5D48 30                 3789 	.db #0x30	; 48	'0'
   5D49 1A                 3790 	.db #0x1A	; 26
   5D4A 30                 3791 	.db #0x30	; 48	'0'
   5D4B 30                 3792 	.db #0x30	; 48	'0'
   5D4C 30                 3793 	.db #0x30	; 48	'0'
   5D4D 30                 3794 	.db #0x30	; 48	'0'
   5D4E 30                 3795 	.db #0x30	; 48	'0'
   5D4F 30                 3796 	.db #0x30	; 48	'0'
   5D50 25                 3797 	.db #0x25	; 37
   5D51 30                 3798 	.db #0x30	; 48	'0'
   5D52 30                 3799 	.db #0x30	; 48	'0'
   5D53 1A                 3800 	.db #0x1A	; 26
   5D54 30                 3801 	.db #0x30	; 48	'0'
   5D55 30                 3802 	.db #0x30	; 48	'0'
   5D56 30                 3803 	.db #0x30	; 48	'0'
   5D57 30                 3804 	.db #0x30	; 48	'0'
   5D58 30                 3805 	.db #0x30	; 48	'0'
   5D59 30                 3806 	.db #0x30	; 48	'0'
   5D5A 25                 3807 	.db #0x25	; 37
   5D5B 30                 3808 	.db #0x30	; 48	'0'
   5D5C 30                 3809 	.db #0x30	; 48	'0'
   5D5D 1A                 3810 	.db #0x1A	; 26
   5D5E 30                 3811 	.db #0x30	; 48	'0'
   5D5F 30                 3812 	.db #0x30	; 48	'0'
   5D60 30                 3813 	.db #0x30	; 48	'0'
   5D61 30                 3814 	.db #0x30	; 48	'0'
   5D62 30                 3815 	.db #0x30	; 48	'0'
   5D63 30                 3816 	.db #0x30	; 48	'0'
   5D64 25                 3817 	.db #0x25	; 37
   5D65 30                 3818 	.db #0x30	; 48	'0'
   5D66 30                 3819 	.db #0x30	; 48	'0'
   5D67 1A                 3820 	.db #0x1A	; 26
   5D68 64                 3821 	.db #0x64	; 100	'd'
   5D69 30                 3822 	.db #0x30	; 48	'0'
   5D6A 64                 3823 	.db #0x64	; 100	'd'
   5D6B 98                 3824 	.db #0x98	; 152
   5D6C 30                 3825 	.db #0x30	; 48	'0'
   5D6D 98                 3826 	.db #0x98	; 152
   5D6E 25                 3827 	.db #0x25	; 37
   5D6F 30                 3828 	.db #0x30	; 48	'0'
   5D70 30                 3829 	.db #0x30	; 48	'0'
   5D71 1A                 3830 	.db #0x1A	; 26
   5D72 CC                 3831 	.db #0xCC	; 204
   5D73 30                 3832 	.db #0x30	; 48	'0'
   5D74 98                 3833 	.db #0x98	; 152
   5D75 64                 3834 	.db #0x64	; 100	'd'
   5D76 64                 3835 	.db #0x64	; 100	'd'
   5D77 64                 3836 	.db #0x64	; 100	'd'
   5D78 25                 3837 	.db #0x25	; 37
   5D79 30                 3838 	.db #0x30	; 48	'0'
   5D7A 30                 3839 	.db #0x30	; 48	'0'
   5D7B 1A                 3840 	.db #0x1A	; 26
   5D7C 64                 3841 	.db #0x64	; 100	'd'
   5D7D 30                 3842 	.db #0x30	; 48	'0'
   5D7E 98                 3843 	.db #0x98	; 152
   5D7F 64                 3844 	.db #0x64	; 100	'd'
   5D80 64                 3845 	.db #0x64	; 100	'd'
   5D81 64                 3846 	.db #0x64	; 100	'd'
   5D82 25                 3847 	.db #0x25	; 37
   5D83 30                 3848 	.db #0x30	; 48	'0'
   5D84 30                 3849 	.db #0x30	; 48	'0'
   5D85 1A                 3850 	.db #0x1A	; 26
   5D86 64                 3851 	.db #0x64	; 100	'd'
   5D87 30                 3852 	.db #0x30	; 48	'0'
   5D88 98                 3853 	.db #0x98	; 152
   5D89 64                 3854 	.db #0x64	; 100	'd'
   5D8A 30                 3855 	.db #0x30	; 48	'0'
   5D8B 64                 3856 	.db #0x64	; 100	'd'
   5D8C 25                 3857 	.db #0x25	; 37
   5D8D 30                 3858 	.db #0x30	; 48	'0'
   5D8E 30                 3859 	.db #0x30	; 48	'0'
   5D8F 1A                 3860 	.db #0x1A	; 26
   5D90 64                 3861 	.db #0x64	; 100	'd'
   5D91 30                 3862 	.db #0x30	; 48	'0'
   5D92 98                 3863 	.db #0x98	; 152
   5D93 64                 3864 	.db #0x64	; 100	'd'
   5D94 30                 3865 	.db #0x30	; 48	'0'
   5D95 64                 3866 	.db #0x64	; 100	'd'
   5D96 25                 3867 	.db #0x25	; 37
   5D97 30                 3868 	.db #0x30	; 48	'0'
   5D98 30                 3869 	.db #0x30	; 48	'0'
   5D99 1A                 3870 	.db #0x1A	; 26
   5D9A 64                 3871 	.db #0x64	; 100	'd'
   5D9B 30                 3872 	.db #0x30	; 48	'0'
   5D9C 98                 3873 	.db #0x98	; 152
   5D9D 64                 3874 	.db #0x64	; 100	'd'
   5D9E 30                 3875 	.db #0x30	; 48	'0'
   5D9F 98                 3876 	.db #0x98	; 152
   5DA0 25                 3877 	.db #0x25	; 37
   5DA1 30                 3878 	.db #0x30	; 48	'0'
   5DA2 30                 3879 	.db #0x30	; 48	'0'
   5DA3 1A                 3880 	.db #0x1A	; 26
   5DA4 64                 3881 	.db #0x64	; 100	'd'
   5DA5 30                 3882 	.db #0x30	; 48	'0'
   5DA6 98                 3883 	.db #0x98	; 152
   5DA7 64                 3884 	.db #0x64	; 100	'd'
   5DA8 30                 3885 	.db #0x30	; 48	'0'
   5DA9 98                 3886 	.db #0x98	; 152
   5DAA 25                 3887 	.db #0x25	; 37
   5DAB 30                 3888 	.db #0x30	; 48	'0'
   5DAC 30                 3889 	.db #0x30	; 48	'0'
   5DAD 1A                 3890 	.db #0x1A	; 26
   5DAE 64                 3891 	.db #0x64	; 100	'd'
   5DAF 30                 3892 	.db #0x30	; 48	'0'
   5DB0 64                 3893 	.db #0x64	; 100	'd'
   5DB1 CC                 3894 	.db #0xCC	; 204
   5DB2 30                 3895 	.db #0x30	; 48	'0'
   5DB3 98                 3896 	.db #0x98	; 152
   5DB4 25                 3897 	.db #0x25	; 37
   5DB5 30                 3898 	.db #0x30	; 48	'0'
   5DB6 30                 3899 	.db #0x30	; 48	'0'
   5DB7 1A                 3900 	.db #0x1A	; 26
   5DB8 64                 3901 	.db #0x64	; 100	'd'
   5DB9 30                 3902 	.db #0x30	; 48	'0'
   5DBA 30                 3903 	.db #0x30	; 48	'0'
   5DBB 64                 3904 	.db #0x64	; 100	'd'
   5DBC 64                 3905 	.db #0x64	; 100	'd'
   5DBD 30                 3906 	.db #0x30	; 48	'0'
   5DBE 25                 3907 	.db #0x25	; 37
   5DBF 30                 3908 	.db #0x30	; 48	'0'
   5DC0 30                 3909 	.db #0x30	; 48	'0'
   5DC1 1A                 3910 	.db #0x1A	; 26
   5DC2 64                 3911 	.db #0x64	; 100	'd'
   5DC3 30                 3912 	.db #0x30	; 48	'0'
   5DC4 30                 3913 	.db #0x30	; 48	'0'
   5DC5 64                 3914 	.db #0x64	; 100	'd'
   5DC6 64                 3915 	.db #0x64	; 100	'd'
   5DC7 30                 3916 	.db #0x30	; 48	'0'
   5DC8 25                 3917 	.db #0x25	; 37
   5DC9 30                 3918 	.db #0x30	; 48	'0'
   5DCA 30                 3919 	.db #0x30	; 48	'0'
   5DCB 1A                 3920 	.db #0x1A	; 26
   5DCC 64                 3921 	.db #0x64	; 100	'd'
   5DCD 30                 3922 	.db #0x30	; 48	'0'
   5DCE 98                 3923 	.db #0x98	; 152
   5DCF CC                 3924 	.db #0xCC	; 204
   5DD0 64                 3925 	.db #0x64	; 100	'd'
   5DD1 30                 3926 	.db #0x30	; 48	'0'
   5DD2 25                 3927 	.db #0x25	; 37
   5DD3 30                 3928 	.db #0x30	; 48	'0'
   5DD4 30                 3929 	.db #0x30	; 48	'0'
   5DD5 1A                 3930 	.db #0x1A	; 26
   5DD6 CC                 3931 	.db #0xCC	; 204
   5DD7 98                 3932 	.db #0x98	; 152
   5DD8 64                 3933 	.db #0x64	; 100	'd'
   5DD9 98                 3934 	.db #0x98	; 152
   5DDA 64                 3935 	.db #0x64	; 100	'd'
   5DDB CC                 3936 	.db #0xCC	; 204
   5DDC 25                 3937 	.db #0x25	; 37
   5DDD 30                 3938 	.db #0x30	; 48	'0'
   5DDE 30                 3939 	.db #0x30	; 48	'0'
   5DDF 1A                 3940 	.db #0x1A	; 26
   5DE0 30                 3941 	.db #0x30	; 48	'0'
   5DE1 30                 3942 	.db #0x30	; 48	'0'
   5DE2 30                 3943 	.db #0x30	; 48	'0'
   5DE3 30                 3944 	.db #0x30	; 48	'0'
   5DE4 30                 3945 	.db #0x30	; 48	'0'
   5DE5 30                 3946 	.db #0x30	; 48	'0'
   5DE6 25                 3947 	.db #0x25	; 37
   5DE7 30                 3948 	.db #0x30	; 48	'0'
   5DE8 30                 3949 	.db #0x30	; 48	'0'
   5DE9 1A                 3950 	.db #0x1A	; 26
   5DEA 30                 3951 	.db #0x30	; 48	'0'
   5DEB 30                 3952 	.db #0x30	; 48	'0'
   5DEC 30                 3953 	.db #0x30	; 48	'0'
   5DED 30                 3954 	.db #0x30	; 48	'0'
   5DEE 30                 3955 	.db #0x30	; 48	'0'
   5DEF 30                 3956 	.db #0x30	; 48	'0'
   5DF0 25                 3957 	.db #0x25	; 37
   5DF1 30                 3958 	.db #0x30	; 48	'0'
   5DF2 30                 3959 	.db #0x30	; 48	'0'
   5DF3 1A                 3960 	.db #0x1A	; 26
   5DF4 30                 3961 	.db #0x30	; 48	'0'
   5DF5 30                 3962 	.db #0x30	; 48	'0'
   5DF6 30                 3963 	.db #0x30	; 48	'0'
   5DF7 30                 3964 	.db #0x30	; 48	'0'
   5DF8 30                 3965 	.db #0x30	; 48	'0'
   5DF9 30                 3966 	.db #0x30	; 48	'0'
   5DFA 25                 3967 	.db #0x25	; 37
   5DFB 30                 3968 	.db #0x30	; 48	'0'
   5DFC 30                 3969 	.db #0x30	; 48	'0'
   5DFD 1A                 3970 	.db #0x1A	; 26
   5DFE 30                 3971 	.db #0x30	; 48	'0'
   5DFF 30                 3972 	.db #0x30	; 48	'0'
   5E00 30                 3973 	.db #0x30	; 48	'0'
   5E01 30                 3974 	.db #0x30	; 48	'0'
   5E02 30                 3975 	.db #0x30	; 48	'0'
   5E03 30                 3976 	.db #0x30	; 48	'0'
   5E04 25                 3977 	.db #0x25	; 37
   5E05 30                 3978 	.db #0x30	; 48	'0'
   5E06 30                 3979 	.db #0x30	; 48	'0'
   5E07 1A                 3980 	.db #0x1A	; 26
   5E08 30                 3981 	.db #0x30	; 48	'0'
   5E09 30                 3982 	.db #0x30	; 48	'0'
   5E0A 30                 3983 	.db #0x30	; 48	'0'
   5E0B 30                 3984 	.db #0x30	; 48	'0'
   5E0C 30                 3985 	.db #0x30	; 48	'0'
   5E0D 30                 3986 	.db #0x30	; 48	'0'
   5E0E 25                 3987 	.db #0x25	; 37
   5E0F 30                 3988 	.db #0x30	; 48	'0'
   5E10 30                 3989 	.db #0x30	; 48	'0'
   5E11 1A                 3990 	.db #0x1A	; 26
   5E12 30                 3991 	.db #0x30	; 48	'0'
   5E13 30                 3992 	.db #0x30	; 48	'0'
   5E14 30                 3993 	.db #0x30	; 48	'0'
   5E15 30                 3994 	.db #0x30	; 48	'0'
   5E16 30                 3995 	.db #0x30	; 48	'0'
   5E17 30                 3996 	.db #0x30	; 48	'0'
   5E18 25                 3997 	.db #0x25	; 37
   5E19 30                 3998 	.db #0x30	; 48	'0'
   5E1A 30                 3999 	.db #0x30	; 48	'0'
   5E1B 1A                 4000 	.db #0x1A	; 26
   5E1C 30                 4001 	.db #0x30	; 48	'0'
   5E1D 30                 4002 	.db #0x30	; 48	'0'
   5E1E 30                 4003 	.db #0x30	; 48	'0'
   5E1F 30                 4004 	.db #0x30	; 48	'0'
   5E20 30                 4005 	.db #0x30	; 48	'0'
   5E21 30                 4006 	.db #0x30	; 48	'0'
   5E22 25                 4007 	.db #0x25	; 37
   5E23 30                 4008 	.db #0x30	; 48	'0'
   5E24 30                 4009 	.db #0x30	; 48	'0'
   5E25 1A                 4010 	.db #0x1A	; 26
   5E26 30                 4011 	.db #0x30	; 48	'0'
   5E27 30                 4012 	.db #0x30	; 48	'0'
   5E28 30                 4013 	.db #0x30	; 48	'0'
   5E29 30                 4014 	.db #0x30	; 48	'0'
   5E2A 30                 4015 	.db #0x30	; 48	'0'
   5E2B 30                 4016 	.db #0x30	; 48	'0'
   5E2C 25                 4017 	.db #0x25	; 37
   5E2D 30                 4018 	.db #0x30	; 48	'0'
   5E2E 30                 4019 	.db #0x30	; 48	'0'
   5E2F 0F                 4020 	.db #0x0F	; 15
   5E30 30                 4021 	.db #0x30	; 48	'0'
   5E31 30                 4022 	.db #0x30	; 48	'0'
   5E32 30                 4023 	.db #0x30	; 48	'0'
   5E33 30                 4024 	.db #0x30	; 48	'0'
   5E34 30                 4025 	.db #0x30	; 48	'0'
   5E35 30                 4026 	.db #0x30	; 48	'0'
   5E36 0F                 4027 	.db #0x0F	; 15
   5E37 30                 4028 	.db #0x30	; 48	'0'
   5E38 30                 4029 	.db #0x30	; 48	'0'
   5E39 25                 4030 	.db #0x25	; 37
   5E3A 30                 4031 	.db #0x30	; 48	'0'
   5E3B 30                 4032 	.db #0x30	; 48	'0'
   5E3C 30                 4033 	.db #0x30	; 48	'0'
   5E3D 30                 4034 	.db #0x30	; 48	'0'
   5E3E 30                 4035 	.db #0x30	; 48	'0'
   5E3F 30                 4036 	.db #0x30	; 48	'0'
   5E40 1A                 4037 	.db #0x1A	; 26
   5E41 30                 4038 	.db #0x30	; 48	'0'
   5E42 30                 4039 	.db #0x30	; 48	'0'
   5E43 25                 4040 	.db #0x25	; 37
   5E44 0F                 4041 	.db #0x0F	; 15
   5E45 0F                 4042 	.db #0x0F	; 15
   5E46 0F                 4043 	.db #0x0F	; 15
   5E47 0F                 4044 	.db #0x0F	; 15
   5E48 0F                 4045 	.db #0x0F	; 15
   5E49 0F                 4046 	.db #0x0F	; 15
   5E4A 1A                 4047 	.db #0x1A	; 26
   5E4B 30                 4048 	.db #0x30	; 48	'0'
   5E4C F0                 4049 	.db #0xF0	; 240
   5E4D 30                 4050 	.db #0x30	; 48	'0'
   5E4E 30                 4051 	.db #0x30	; 48	'0'
   5E4F 30                 4052 	.db #0x30	; 48	'0'
   5E50 30                 4053 	.db #0x30	; 48	'0'
   5E51 30                 4054 	.db #0x30	; 48	'0'
   5E52 30                 4055 	.db #0x30	; 48	'0'
   5E53 30                 4056 	.db #0x30	; 48	'0'
   5E54 30                 4057 	.db #0x30	; 48	'0'
   5E55 F0                 4058 	.db #0xF0	; 240
   5E56 F0                 4059 	.db #0xF0	; 240
   5E57 30                 4060 	.db #0x30	; 48	'0'
   5E58 30                 4061 	.db #0x30	; 48	'0'
   5E59 30                 4062 	.db #0x30	; 48	'0'
   5E5A 30                 4063 	.db #0x30	; 48	'0'
   5E5B 30                 4064 	.db #0x30	; 48	'0'
   5E5C 30                 4065 	.db #0x30	; 48	'0'
   5E5D 30                 4066 	.db #0x30	; 48	'0'
   5E5E 30                 4067 	.db #0x30	; 48	'0'
   5E5F F0                 4068 	.db #0xF0	; 240
   5E60                    4069 _tile_tiles_10:
   5E60 F0                 4070 	.db #0xF0	; 240
   5E61 30                 4071 	.db #0x30	; 48	'0'
   5E62 30                 4072 	.db #0x30	; 48	'0'
   5E63 30                 4073 	.db #0x30	; 48	'0'
   5E64 30                 4074 	.db #0x30	; 48	'0'
   5E65 30                 4075 	.db #0x30	; 48	'0'
   5E66 30                 4076 	.db #0x30	; 48	'0'
   5E67 30                 4077 	.db #0x30	; 48	'0'
   5E68 30                 4078 	.db #0x30	; 48	'0'
   5E69 F0                 4079 	.db #0xF0	; 240
   5E6A F0                 4080 	.db #0xF0	; 240
   5E6B 30                 4081 	.db #0x30	; 48	'0'
   5E6C 30                 4082 	.db #0x30	; 48	'0'
   5E6D 30                 4083 	.db #0x30	; 48	'0'
   5E6E 30                 4084 	.db #0x30	; 48	'0'
   5E6F 30                 4085 	.db #0x30	; 48	'0'
   5E70 30                 4086 	.db #0x30	; 48	'0'
   5E71 30                 4087 	.db #0x30	; 48	'0'
   5E72 30                 4088 	.db #0x30	; 48	'0'
   5E73 F0                 4089 	.db #0xF0	; 240
   5E74 30                 4090 	.db #0x30	; 48	'0'
   5E75 25                 4091 	.db #0x25	; 37
   5E76 0F                 4092 	.db #0x0F	; 15
   5E77 0F                 4093 	.db #0x0F	; 15
   5E78 0F                 4094 	.db #0x0F	; 15
   5E79 0F                 4095 	.db #0x0F	; 15
   5E7A 0F                 4096 	.db #0x0F	; 15
   5E7B 0F                 4097 	.db #0x0F	; 15
   5E7C 1A                 4098 	.db #0x1A	; 26
   5E7D 30                 4099 	.db #0x30	; 48	'0'
   5E7E 30                 4100 	.db #0x30	; 48	'0'
   5E7F 25                 4101 	.db #0x25	; 37
   5E80 30                 4102 	.db #0x30	; 48	'0'
   5E81 30                 4103 	.db #0x30	; 48	'0'
   5E82 30                 4104 	.db #0x30	; 48	'0'
   5E83 30                 4105 	.db #0x30	; 48	'0'
   5E84 30                 4106 	.db #0x30	; 48	'0'
   5E85 30                 4107 	.db #0x30	; 48	'0'
   5E86 1A                 4108 	.db #0x1A	; 26
   5E87 30                 4109 	.db #0x30	; 48	'0'
   5E88 30                 4110 	.db #0x30	; 48	'0'
   5E89 0F                 4111 	.db #0x0F	; 15
   5E8A 30                 4112 	.db #0x30	; 48	'0'
   5E8B 30                 4113 	.db #0x30	; 48	'0'
   5E8C 30                 4114 	.db #0x30	; 48	'0'
   5E8D 30                 4115 	.db #0x30	; 48	'0'
   5E8E 30                 4116 	.db #0x30	; 48	'0'
   5E8F 30                 4117 	.db #0x30	; 48	'0'
   5E90 0F                 4118 	.db #0x0F	; 15
   5E91 30                 4119 	.db #0x30	; 48	'0'
   5E92 30                 4120 	.db #0x30	; 48	'0'
   5E93 1A                 4121 	.db #0x1A	; 26
   5E94 30                 4122 	.db #0x30	; 48	'0'
   5E95 30                 4123 	.db #0x30	; 48	'0'
   5E96 30                 4124 	.db #0x30	; 48	'0'
   5E97 30                 4125 	.db #0x30	; 48	'0'
   5E98 30                 4126 	.db #0x30	; 48	'0'
   5E99 30                 4127 	.db #0x30	; 48	'0'
   5E9A 25                 4128 	.db #0x25	; 37
   5E9B 30                 4129 	.db #0x30	; 48	'0'
   5E9C 30                 4130 	.db #0x30	; 48	'0'
   5E9D 1A                 4131 	.db #0x1A	; 26
   5E9E 30                 4132 	.db #0x30	; 48	'0'
   5E9F 30                 4133 	.db #0x30	; 48	'0'
   5EA0 30                 4134 	.db #0x30	; 48	'0'
   5EA1 30                 4135 	.db #0x30	; 48	'0'
   5EA2 30                 4136 	.db #0x30	; 48	'0'
   5EA3 30                 4137 	.db #0x30	; 48	'0'
   5EA4 25                 4138 	.db #0x25	; 37
   5EA5 30                 4139 	.db #0x30	; 48	'0'
   5EA6 30                 4140 	.db #0x30	; 48	'0'
   5EA7 1A                 4141 	.db #0x1A	; 26
   5EA8 30                 4142 	.db #0x30	; 48	'0'
   5EA9 30                 4143 	.db #0x30	; 48	'0'
   5EAA 30                 4144 	.db #0x30	; 48	'0'
   5EAB 30                 4145 	.db #0x30	; 48	'0'
   5EAC 30                 4146 	.db #0x30	; 48	'0'
   5EAD 30                 4147 	.db #0x30	; 48	'0'
   5EAE 25                 4148 	.db #0x25	; 37
   5EAF 30                 4149 	.db #0x30	; 48	'0'
   5EB0 30                 4150 	.db #0x30	; 48	'0'
   5EB1 1A                 4151 	.db #0x1A	; 26
   5EB2 30                 4152 	.db #0x30	; 48	'0'
   5EB3 30                 4153 	.db #0x30	; 48	'0'
   5EB4 30                 4154 	.db #0x30	; 48	'0'
   5EB5 30                 4155 	.db #0x30	; 48	'0'
   5EB6 30                 4156 	.db #0x30	; 48	'0'
   5EB7 30                 4157 	.db #0x30	; 48	'0'
   5EB8 25                 4158 	.db #0x25	; 37
   5EB9 30                 4159 	.db #0x30	; 48	'0'
   5EBA 30                 4160 	.db #0x30	; 48	'0'
   5EBB 1A                 4161 	.db #0x1A	; 26
   5EBC 30                 4162 	.db #0x30	; 48	'0'
   5EBD 30                 4163 	.db #0x30	; 48	'0'
   5EBE 30                 4164 	.db #0x30	; 48	'0'
   5EBF 30                 4165 	.db #0x30	; 48	'0'
   5EC0 30                 4166 	.db #0x30	; 48	'0'
   5EC1 30                 4167 	.db #0x30	; 48	'0'
   5EC2 25                 4168 	.db #0x25	; 37
   5EC3 30                 4169 	.db #0x30	; 48	'0'
   5EC4 30                 4170 	.db #0x30	; 48	'0'
   5EC5 1A                 4171 	.db #0x1A	; 26
   5EC6 30                 4172 	.db #0x30	; 48	'0'
   5EC7 30                 4173 	.db #0x30	; 48	'0'
   5EC8 30                 4174 	.db #0x30	; 48	'0'
   5EC9 30                 4175 	.db #0x30	; 48	'0'
   5ECA 30                 4176 	.db #0x30	; 48	'0'
   5ECB 30                 4177 	.db #0x30	; 48	'0'
   5ECC 25                 4178 	.db #0x25	; 37
   5ECD 30                 4179 	.db #0x30	; 48	'0'
   5ECE 30                 4180 	.db #0x30	; 48	'0'
   5ECF 1A                 4181 	.db #0x1A	; 26
   5ED0 30                 4182 	.db #0x30	; 48	'0'
   5ED1 30                 4183 	.db #0x30	; 48	'0'
   5ED2 30                 4184 	.db #0x30	; 48	'0'
   5ED3 30                 4185 	.db #0x30	; 48	'0'
   5ED4 30                 4186 	.db #0x30	; 48	'0'
   5ED5 30                 4187 	.db #0x30	; 48	'0'
   5ED6 25                 4188 	.db #0x25	; 37
   5ED7 30                 4189 	.db #0x30	; 48	'0'
   5ED8 30                 4190 	.db #0x30	; 48	'0'
   5ED9 1A                 4191 	.db #0x1A	; 26
   5EDA 30                 4192 	.db #0x30	; 48	'0'
   5EDB 30                 4193 	.db #0x30	; 48	'0'
   5EDC 30                 4194 	.db #0x30	; 48	'0'
   5EDD 30                 4195 	.db #0x30	; 48	'0'
   5EDE 30                 4196 	.db #0x30	; 48	'0'
   5EDF 30                 4197 	.db #0x30	; 48	'0'
   5EE0 25                 4198 	.db #0x25	; 37
   5EE1 30                 4199 	.db #0x30	; 48	'0'
   5EE2 30                 4200 	.db #0x30	; 48	'0'
   5EE3 1A                 4201 	.db #0x1A	; 26
   5EE4 30                 4202 	.db #0x30	; 48	'0'
   5EE5 30                 4203 	.db #0x30	; 48	'0'
   5EE6 30                 4204 	.db #0x30	; 48	'0'
   5EE7 30                 4205 	.db #0x30	; 48	'0'
   5EE8 30                 4206 	.db #0x30	; 48	'0'
   5EE9 30                 4207 	.db #0x30	; 48	'0'
   5EEA 25                 4208 	.db #0x25	; 37
   5EEB 30                 4209 	.db #0x30	; 48	'0'
   5EEC 30                 4210 	.db #0x30	; 48	'0'
   5EED 1A                 4211 	.db #0x1A	; 26
   5EEE 30                 4212 	.db #0x30	; 48	'0'
   5EEF 30                 4213 	.db #0x30	; 48	'0'
   5EF0 30                 4214 	.db #0x30	; 48	'0'
   5EF1 30                 4215 	.db #0x30	; 48	'0'
   5EF2 30                 4216 	.db #0x30	; 48	'0'
   5EF3 30                 4217 	.db #0x30	; 48	'0'
   5EF4 25                 4218 	.db #0x25	; 37
   5EF5 30                 4219 	.db #0x30	; 48	'0'
   5EF6 30                 4220 	.db #0x30	; 48	'0'
   5EF7 1A                 4221 	.db #0x1A	; 26
   5EF8 CC                 4222 	.db #0xCC	; 204
   5EF9 30                 4223 	.db #0x30	; 48	'0'
   5EFA 64                 4224 	.db #0x64	; 100	'd'
   5EFB 98                 4225 	.db #0x98	; 152
   5EFC 30                 4226 	.db #0x30	; 48	'0'
   5EFD 64                 4227 	.db #0x64	; 100	'd'
   5EFE 25                 4228 	.db #0x25	; 37
   5EFF 30                 4229 	.db #0x30	; 48	'0'
   5F00 30                 4230 	.db #0x30	; 48	'0'
   5F01 4E                 4231 	.db #0x4E	; 78	'N'
   5F02 30                 4232 	.db #0x30	; 48	'0'
   5F03 98                 4233 	.db #0x98	; 152
   5F04 98                 4234 	.db #0x98	; 152
   5F05 64                 4235 	.db #0x64	; 100	'd'
   5F06 30                 4236 	.db #0x30	; 48	'0'
   5F07 CC                 4237 	.db #0xCC	; 204
   5F08 25                 4238 	.db #0x25	; 37
   5F09 30                 4239 	.db #0x30	; 48	'0'
   5F0A 30                 4240 	.db #0x30	; 48	'0'
   5F0B 4E                 4241 	.db #0x4E	; 78	'N'
   5F0C 30                 4242 	.db #0x30	; 48	'0'
   5F0D 98                 4243 	.db #0x98	; 152
   5F0E 98                 4244 	.db #0x98	; 152
   5F0F 64                 4245 	.db #0x64	; 100	'd'
   5F10 30                 4246 	.db #0x30	; 48	'0'
   5F11 CC                 4247 	.db #0xCC	; 204
   5F12 25                 4248 	.db #0x25	; 37
   5F13 30                 4249 	.db #0x30	; 48	'0'
   5F14 30                 4250 	.db #0x30	; 48	'0'
   5F15 1A                 4251 	.db #0x1A	; 26
   5F16 30                 4252 	.db #0x30	; 48	'0'
   5F17 98                 4253 	.db #0x98	; 152
   5F18 98                 4254 	.db #0x98	; 152
   5F19 64                 4255 	.db #0x64	; 100	'd'
   5F1A 64                 4256 	.db #0x64	; 100	'd'
   5F1B 64                 4257 	.db #0x64	; 100	'd'
   5F1C 25                 4258 	.db #0x25	; 37
   5F1D 30                 4259 	.db #0x30	; 48	'0'
   5F1E 30                 4260 	.db #0x30	; 48	'0'
   5F1F 1A                 4261 	.db #0x1A	; 26
   5F20 30                 4262 	.db #0x30	; 48	'0'
   5F21 98                 4263 	.db #0x98	; 152
   5F22 98                 4264 	.db #0x98	; 152
   5F23 64                 4265 	.db #0x64	; 100	'd'
   5F24 64                 4266 	.db #0x64	; 100	'd'
   5F25 64                 4267 	.db #0x64	; 100	'd'
   5F26 25                 4268 	.db #0x25	; 37
   5F27 30                 4269 	.db #0x30	; 48	'0'
   5F28 30                 4270 	.db #0x30	; 48	'0'
   5F29 1A                 4271 	.db #0x1A	; 26
   5F2A 64                 4272 	.db #0x64	; 100	'd'
   5F2B 30                 4273 	.db #0x30	; 48	'0'
   5F2C 98                 4274 	.db #0x98	; 152
   5F2D 64                 4275 	.db #0x64	; 100	'd'
   5F2E 64                 4276 	.db #0x64	; 100	'd'
   5F2F 64                 4277 	.db #0x64	; 100	'd'
   5F30 25                 4278 	.db #0x25	; 37
   5F31 30                 4279 	.db #0x30	; 48	'0'
   5F32 30                 4280 	.db #0x30	; 48	'0'
   5F33 1A                 4281 	.db #0x1A	; 26
   5F34 30                 4282 	.db #0x30	; 48	'0'
   5F35 98                 4283 	.db #0x98	; 152
   5F36 64                 4284 	.db #0x64	; 100	'd'
   5F37 98                 4285 	.db #0x98	; 152
   5F38 64                 4286 	.db #0x64	; 100	'd'
   5F39 64                 4287 	.db #0x64	; 100	'd'
   5F3A 25                 4288 	.db #0x25	; 37
   5F3B 30                 4289 	.db #0x30	; 48	'0'
   5F3C 30                 4290 	.db #0x30	; 48	'0'
   5F3D 1A                 4291 	.db #0x1A	; 26
   5F3E 30                 4292 	.db #0x30	; 48	'0'
   5F3F 98                 4293 	.db #0x98	; 152
   5F40 98                 4294 	.db #0x98	; 152
   5F41 64                 4295 	.db #0x64	; 100	'd'
   5F42 64                 4296 	.db #0x64	; 100	'd'
   5F43 64                 4297 	.db #0x64	; 100	'd'
   5F44 25                 4298 	.db #0x25	; 37
   5F45 30                 4299 	.db #0x30	; 48	'0'
   5F46 30                 4300 	.db #0x30	; 48	'0'
   5F47 1A                 4301 	.db #0x1A	; 26
   5F48 30                 4302 	.db #0x30	; 48	'0'
   5F49 98                 4303 	.db #0x98	; 152
   5F4A 98                 4304 	.db #0x98	; 152
   5F4B 64                 4305 	.db #0x64	; 100	'd'
   5F4C 64                 4306 	.db #0x64	; 100	'd'
   5F4D CC                 4307 	.db #0xCC	; 204
   5F4E 8D                 4308 	.db #0x8D	; 141
   5F4F 30                 4309 	.db #0x30	; 48	'0'
   5F50 30                 4310 	.db #0x30	; 48	'0'
   5F51 4E                 4311 	.db #0x4E	; 78	'N'
   5F52 30                 4312 	.db #0x30	; 48	'0'
   5F53 98                 4313 	.db #0x98	; 152
   5F54 98                 4314 	.db #0x98	; 152
   5F55 64                 4315 	.db #0x64	; 100	'd'
   5F56 30                 4316 	.db #0x30	; 48	'0'
   5F57 64                 4317 	.db #0x64	; 100	'd'
   5F58 25                 4318 	.db #0x25	; 37
   5F59 30                 4319 	.db #0x30	; 48	'0'
   5F5A 30                 4320 	.db #0x30	; 48	'0'
   5F5B 4E                 4321 	.db #0x4E	; 78	'N'
   5F5C 30                 4322 	.db #0x30	; 48	'0'
   5F5D 98                 4323 	.db #0x98	; 152
   5F5E 98                 4324 	.db #0x98	; 152
   5F5F 64                 4325 	.db #0x64	; 100	'd'
   5F60 30                 4326 	.db #0x30	; 48	'0'
   5F61 64                 4327 	.db #0x64	; 100	'd'
   5F62 25                 4328 	.db #0x25	; 37
   5F63 30                 4329 	.db #0x30	; 48	'0'
   5F64 30                 4330 	.db #0x30	; 48	'0'
   5F65 1A                 4331 	.db #0x1A	; 26
   5F66 CC                 4332 	.db #0xCC	; 204
   5F67 30                 4333 	.db #0x30	; 48	'0'
   5F68 64                 4334 	.db #0x64	; 100	'd'
   5F69 98                 4335 	.db #0x98	; 152
   5F6A 30                 4336 	.db #0x30	; 48	'0'
   5F6B 64                 4337 	.db #0x64	; 100	'd'
   5F6C 25                 4338 	.db #0x25	; 37
   5F6D 30                 4339 	.db #0x30	; 48	'0'
   5F6E 30                 4340 	.db #0x30	; 48	'0'
   5F6F 1A                 4341 	.db #0x1A	; 26
   5F70 30                 4342 	.db #0x30	; 48	'0'
   5F71 30                 4343 	.db #0x30	; 48	'0'
   5F72 30                 4344 	.db #0x30	; 48	'0'
   5F73 30                 4345 	.db #0x30	; 48	'0'
   5F74 30                 4346 	.db #0x30	; 48	'0'
   5F75 30                 4347 	.db #0x30	; 48	'0'
   5F76 25                 4348 	.db #0x25	; 37
   5F77 30                 4349 	.db #0x30	; 48	'0'
   5F78 30                 4350 	.db #0x30	; 48	'0'
   5F79 1A                 4351 	.db #0x1A	; 26
   5F7A 30                 4352 	.db #0x30	; 48	'0'
   5F7B 30                 4353 	.db #0x30	; 48	'0'
   5F7C 30                 4354 	.db #0x30	; 48	'0'
   5F7D 30                 4355 	.db #0x30	; 48	'0'
   5F7E 30                 4356 	.db #0x30	; 48	'0'
   5F7F 30                 4357 	.db #0x30	; 48	'0'
   5F80 25                 4358 	.db #0x25	; 37
   5F81 30                 4359 	.db #0x30	; 48	'0'
   5F82 30                 4360 	.db #0x30	; 48	'0'
   5F83 1A                 4361 	.db #0x1A	; 26
   5F84 30                 4362 	.db #0x30	; 48	'0'
   5F85 30                 4363 	.db #0x30	; 48	'0'
   5F86 30                 4364 	.db #0x30	; 48	'0'
   5F87 30                 4365 	.db #0x30	; 48	'0'
   5F88 30                 4366 	.db #0x30	; 48	'0'
   5F89 30                 4367 	.db #0x30	; 48	'0'
   5F8A 25                 4368 	.db #0x25	; 37
   5F8B 30                 4369 	.db #0x30	; 48	'0'
   5F8C 30                 4370 	.db #0x30	; 48	'0'
   5F8D 1A                 4371 	.db #0x1A	; 26
   5F8E 30                 4372 	.db #0x30	; 48	'0'
   5F8F 30                 4373 	.db #0x30	; 48	'0'
   5F90 30                 4374 	.db #0x30	; 48	'0'
   5F91 30                 4375 	.db #0x30	; 48	'0'
   5F92 30                 4376 	.db #0x30	; 48	'0'
   5F93 30                 4377 	.db #0x30	; 48	'0'
   5F94 25                 4378 	.db #0x25	; 37
   5F95 30                 4379 	.db #0x30	; 48	'0'
   5F96 30                 4380 	.db #0x30	; 48	'0'
   5F97 1A                 4381 	.db #0x1A	; 26
   5F98 30                 4382 	.db #0x30	; 48	'0'
   5F99 30                 4383 	.db #0x30	; 48	'0'
   5F9A 30                 4384 	.db #0x30	; 48	'0'
   5F9B 30                 4385 	.db #0x30	; 48	'0'
   5F9C 30                 4386 	.db #0x30	; 48	'0'
   5F9D 30                 4387 	.db #0x30	; 48	'0'
   5F9E 25                 4388 	.db #0x25	; 37
   5F9F 30                 4389 	.db #0x30	; 48	'0'
   5FA0 30                 4390 	.db #0x30	; 48	'0'
   5FA1 1A                 4391 	.db #0x1A	; 26
   5FA2 30                 4392 	.db #0x30	; 48	'0'
   5FA3 30                 4393 	.db #0x30	; 48	'0'
   5FA4 30                 4394 	.db #0x30	; 48	'0'
   5FA5 30                 4395 	.db #0x30	; 48	'0'
   5FA6 30                 4396 	.db #0x30	; 48	'0'
   5FA7 30                 4397 	.db #0x30	; 48	'0'
   5FA8 25                 4398 	.db #0x25	; 37
   5FA9 30                 4399 	.db #0x30	; 48	'0'
   5FAA 30                 4400 	.db #0x30	; 48	'0'
   5FAB 1A                 4401 	.db #0x1A	; 26
   5FAC 30                 4402 	.db #0x30	; 48	'0'
   5FAD 30                 4403 	.db #0x30	; 48	'0'
   5FAE 30                 4404 	.db #0x30	; 48	'0'
   5FAF 30                 4405 	.db #0x30	; 48	'0'
   5FB0 30                 4406 	.db #0x30	; 48	'0'
   5FB1 30                 4407 	.db #0x30	; 48	'0'
   5FB2 25                 4408 	.db #0x25	; 37
   5FB3 30                 4409 	.db #0x30	; 48	'0'
   5FB4 30                 4410 	.db #0x30	; 48	'0'
   5FB5 1A                 4411 	.db #0x1A	; 26
   5FB6 30                 4412 	.db #0x30	; 48	'0'
   5FB7 30                 4413 	.db #0x30	; 48	'0'
   5FB8 30                 4414 	.db #0x30	; 48	'0'
   5FB9 30                 4415 	.db #0x30	; 48	'0'
   5FBA 30                 4416 	.db #0x30	; 48	'0'
   5FBB 30                 4417 	.db #0x30	; 48	'0'
   5FBC 25                 4418 	.db #0x25	; 37
   5FBD 30                 4419 	.db #0x30	; 48	'0'
   5FBE 30                 4420 	.db #0x30	; 48	'0'
   5FBF 0F                 4421 	.db #0x0F	; 15
   5FC0 30                 4422 	.db #0x30	; 48	'0'
   5FC1 30                 4423 	.db #0x30	; 48	'0'
   5FC2 30                 4424 	.db #0x30	; 48	'0'
   5FC3 30                 4425 	.db #0x30	; 48	'0'
   5FC4 30                 4426 	.db #0x30	; 48	'0'
   5FC5 30                 4427 	.db #0x30	; 48	'0'
   5FC6 0F                 4428 	.db #0x0F	; 15
   5FC7 30                 4429 	.db #0x30	; 48	'0'
   5FC8 30                 4430 	.db #0x30	; 48	'0'
   5FC9 25                 4431 	.db #0x25	; 37
   5FCA 30                 4432 	.db #0x30	; 48	'0'
   5FCB 30                 4433 	.db #0x30	; 48	'0'
   5FCC 30                 4434 	.db #0x30	; 48	'0'
   5FCD 30                 4435 	.db #0x30	; 48	'0'
   5FCE 30                 4436 	.db #0x30	; 48	'0'
   5FCF 30                 4437 	.db #0x30	; 48	'0'
   5FD0 1A                 4438 	.db #0x1A	; 26
   5FD1 30                 4439 	.db #0x30	; 48	'0'
   5FD2 30                 4440 	.db #0x30	; 48	'0'
   5FD3 25                 4441 	.db #0x25	; 37
   5FD4 0F                 4442 	.db #0x0F	; 15
   5FD5 0F                 4443 	.db #0x0F	; 15
   5FD6 0F                 4444 	.db #0x0F	; 15
   5FD7 0F                 4445 	.db #0x0F	; 15
   5FD8 0F                 4446 	.db #0x0F	; 15
   5FD9 0F                 4447 	.db #0x0F	; 15
   5FDA 1A                 4448 	.db #0x1A	; 26
   5FDB 30                 4449 	.db #0x30	; 48	'0'
   5FDC F0                 4450 	.db #0xF0	; 240
   5FDD 30                 4451 	.db #0x30	; 48	'0'
   5FDE 30                 4452 	.db #0x30	; 48	'0'
   5FDF 30                 4453 	.db #0x30	; 48	'0'
   5FE0 30                 4454 	.db #0x30	; 48	'0'
   5FE1 30                 4455 	.db #0x30	; 48	'0'
   5FE2 30                 4456 	.db #0x30	; 48	'0'
   5FE3 30                 4457 	.db #0x30	; 48	'0'
   5FE4 30                 4458 	.db #0x30	; 48	'0'
   5FE5 F0                 4459 	.db #0xF0	; 240
   5FE6 F0                 4460 	.db #0xF0	; 240
   5FE7 30                 4461 	.db #0x30	; 48	'0'
   5FE8 30                 4462 	.db #0x30	; 48	'0'
   5FE9 30                 4463 	.db #0x30	; 48	'0'
   5FEA 30                 4464 	.db #0x30	; 48	'0'
   5FEB 30                 4465 	.db #0x30	; 48	'0'
   5FEC 30                 4466 	.db #0x30	; 48	'0'
   5FED 30                 4467 	.db #0x30	; 48	'0'
   5FEE 30                 4468 	.db #0x30	; 48	'0'
   5FEF F0                 4469 	.db #0xF0	; 240
   5FF0                    4470 _tile_tiles_11:
   5FF0 F0                 4471 	.db #0xF0	; 240
   5FF1 30                 4472 	.db #0x30	; 48	'0'
   5FF2 30                 4473 	.db #0x30	; 48	'0'
   5FF3 30                 4474 	.db #0x30	; 48	'0'
   5FF4 30                 4475 	.db #0x30	; 48	'0'
   5FF5 30                 4476 	.db #0x30	; 48	'0'
   5FF6 30                 4477 	.db #0x30	; 48	'0'
   5FF7 30                 4478 	.db #0x30	; 48	'0'
   5FF8 30                 4479 	.db #0x30	; 48	'0'
   5FF9 F0                 4480 	.db #0xF0	; 240
   5FFA F0                 4481 	.db #0xF0	; 240
   5FFB 30                 4482 	.db #0x30	; 48	'0'
   5FFC 30                 4483 	.db #0x30	; 48	'0'
   5FFD 30                 4484 	.db #0x30	; 48	'0'
   5FFE 30                 4485 	.db #0x30	; 48	'0'
   5FFF 30                 4486 	.db #0x30	; 48	'0'
   6000 30                 4487 	.db #0x30	; 48	'0'
   6001 30                 4488 	.db #0x30	; 48	'0'
   6002 30                 4489 	.db #0x30	; 48	'0'
   6003 F0                 4490 	.db #0xF0	; 240
   6004 30                 4491 	.db #0x30	; 48	'0'
   6005 25                 4492 	.db #0x25	; 37
   6006 0F                 4493 	.db #0x0F	; 15
   6007 0F                 4494 	.db #0x0F	; 15
   6008 0F                 4495 	.db #0x0F	; 15
   6009 0F                 4496 	.db #0x0F	; 15
   600A 0F                 4497 	.db #0x0F	; 15
   600B 0F                 4498 	.db #0x0F	; 15
   600C 1A                 4499 	.db #0x1A	; 26
   600D 30                 4500 	.db #0x30	; 48	'0'
   600E 30                 4501 	.db #0x30	; 48	'0'
   600F 25                 4502 	.db #0x25	; 37
   6010 30                 4503 	.db #0x30	; 48	'0'
   6011 30                 4504 	.db #0x30	; 48	'0'
   6012 30                 4505 	.db #0x30	; 48	'0'
   6013 30                 4506 	.db #0x30	; 48	'0'
   6014 30                 4507 	.db #0x30	; 48	'0'
   6015 30                 4508 	.db #0x30	; 48	'0'
   6016 1A                 4509 	.db #0x1A	; 26
   6017 30                 4510 	.db #0x30	; 48	'0'
   6018 30                 4511 	.db #0x30	; 48	'0'
   6019 0F                 4512 	.db #0x0F	; 15
   601A 30                 4513 	.db #0x30	; 48	'0'
   601B 30                 4514 	.db #0x30	; 48	'0'
   601C 30                 4515 	.db #0x30	; 48	'0'
   601D 30                 4516 	.db #0x30	; 48	'0'
   601E 30                 4517 	.db #0x30	; 48	'0'
   601F 30                 4518 	.db #0x30	; 48	'0'
   6020 0F                 4519 	.db #0x0F	; 15
   6021 30                 4520 	.db #0x30	; 48	'0'
   6022 30                 4521 	.db #0x30	; 48	'0'
   6023 1A                 4522 	.db #0x1A	; 26
   6024 30                 4523 	.db #0x30	; 48	'0'
   6025 30                 4524 	.db #0x30	; 48	'0'
   6026 30                 4525 	.db #0x30	; 48	'0'
   6027 30                 4526 	.db #0x30	; 48	'0'
   6028 30                 4527 	.db #0x30	; 48	'0'
   6029 30                 4528 	.db #0x30	; 48	'0'
   602A 25                 4529 	.db #0x25	; 37
   602B 30                 4530 	.db #0x30	; 48	'0'
   602C 30                 4531 	.db #0x30	; 48	'0'
   602D 1A                 4532 	.db #0x1A	; 26
   602E 30                 4533 	.db #0x30	; 48	'0'
   602F 30                 4534 	.db #0x30	; 48	'0'
   6030 30                 4535 	.db #0x30	; 48	'0'
   6031 30                 4536 	.db #0x30	; 48	'0'
   6032 30                 4537 	.db #0x30	; 48	'0'
   6033 30                 4538 	.db #0x30	; 48	'0'
   6034 25                 4539 	.db #0x25	; 37
   6035 30                 4540 	.db #0x30	; 48	'0'
   6036 30                 4541 	.db #0x30	; 48	'0'
   6037 1A                 4542 	.db #0x1A	; 26
   6038 30                 4543 	.db #0x30	; 48	'0'
   6039 30                 4544 	.db #0x30	; 48	'0'
   603A 30                 4545 	.db #0x30	; 48	'0'
   603B 30                 4546 	.db #0x30	; 48	'0'
   603C 30                 4547 	.db #0x30	; 48	'0'
   603D 30                 4548 	.db #0x30	; 48	'0'
   603E 25                 4549 	.db #0x25	; 37
   603F 30                 4550 	.db #0x30	; 48	'0'
   6040 30                 4551 	.db #0x30	; 48	'0'
   6041 1A                 4552 	.db #0x1A	; 26
   6042 30                 4553 	.db #0x30	; 48	'0'
   6043 30                 4554 	.db #0x30	; 48	'0'
   6044 30                 4555 	.db #0x30	; 48	'0'
   6045 30                 4556 	.db #0x30	; 48	'0'
   6046 30                 4557 	.db #0x30	; 48	'0'
   6047 30                 4558 	.db #0x30	; 48	'0'
   6048 25                 4559 	.db #0x25	; 37
   6049 30                 4560 	.db #0x30	; 48	'0'
   604A 30                 4561 	.db #0x30	; 48	'0'
   604B 1A                 4562 	.db #0x1A	; 26
   604C 30                 4563 	.db #0x30	; 48	'0'
   604D 30                 4564 	.db #0x30	; 48	'0'
   604E 30                 4565 	.db #0x30	; 48	'0'
   604F 30                 4566 	.db #0x30	; 48	'0'
   6050 30                 4567 	.db #0x30	; 48	'0'
   6051 30                 4568 	.db #0x30	; 48	'0'
   6052 25                 4569 	.db #0x25	; 37
   6053 30                 4570 	.db #0x30	; 48	'0'
   6054 30                 4571 	.db #0x30	; 48	'0'
   6055 1A                 4572 	.db #0x1A	; 26
   6056 30                 4573 	.db #0x30	; 48	'0'
   6057 30                 4574 	.db #0x30	; 48	'0'
   6058 30                 4575 	.db #0x30	; 48	'0'
   6059 30                 4576 	.db #0x30	; 48	'0'
   605A 30                 4577 	.db #0x30	; 48	'0'
   605B 30                 4578 	.db #0x30	; 48	'0'
   605C 25                 4579 	.db #0x25	; 37
   605D 30                 4580 	.db #0x30	; 48	'0'
   605E 30                 4581 	.db #0x30	; 48	'0'
   605F 1A                 4582 	.db #0x1A	; 26
   6060 30                 4583 	.db #0x30	; 48	'0'
   6061 30                 4584 	.db #0x30	; 48	'0'
   6062 30                 4585 	.db #0x30	; 48	'0'
   6063 30                 4586 	.db #0x30	; 48	'0'
   6064 30                 4587 	.db #0x30	; 48	'0'
   6065 30                 4588 	.db #0x30	; 48	'0'
   6066 25                 4589 	.db #0x25	; 37
   6067 30                 4590 	.db #0x30	; 48	'0'
   6068 30                 4591 	.db #0x30	; 48	'0'
   6069 1A                 4592 	.db #0x1A	; 26
   606A 30                 4593 	.db #0x30	; 48	'0'
   606B 30                 4594 	.db #0x30	; 48	'0'
   606C 30                 4595 	.db #0x30	; 48	'0'
   606D 30                 4596 	.db #0x30	; 48	'0'
   606E 30                 4597 	.db #0x30	; 48	'0'
   606F 30                 4598 	.db #0x30	; 48	'0'
   6070 25                 4599 	.db #0x25	; 37
   6071 30                 4600 	.db #0x30	; 48	'0'
   6072 30                 4601 	.db #0x30	; 48	'0'
   6073 1A                 4602 	.db #0x1A	; 26
   6074 30                 4603 	.db #0x30	; 48	'0'
   6075 30                 4604 	.db #0x30	; 48	'0'
   6076 30                 4605 	.db #0x30	; 48	'0'
   6077 30                 4606 	.db #0x30	; 48	'0'
   6078 30                 4607 	.db #0x30	; 48	'0'
   6079 30                 4608 	.db #0x30	; 48	'0'
   607A 25                 4609 	.db #0x25	; 37
   607B 30                 4610 	.db #0x30	; 48	'0'
   607C 30                 4611 	.db #0x30	; 48	'0'
   607D 1A                 4612 	.db #0x1A	; 26
   607E 30                 4613 	.db #0x30	; 48	'0'
   607F 30                 4614 	.db #0x30	; 48	'0'
   6080 30                 4615 	.db #0x30	; 48	'0'
   6081 30                 4616 	.db #0x30	; 48	'0'
   6082 30                 4617 	.db #0x30	; 48	'0'
   6083 30                 4618 	.db #0x30	; 48	'0'
   6084 25                 4619 	.db #0x25	; 37
   6085 30                 4620 	.db #0x30	; 48	'0'
   6086 30                 4621 	.db #0x30	; 48	'0'
   6087 4E                 4622 	.db #0x4E	; 78	'N'
   6088 CC                 4623 	.db #0xCC	; 204
   6089 30                 4624 	.db #0x30	; 48	'0'
   608A 64                 4625 	.db #0x64	; 100	'd'
   608B 98                 4626 	.db #0x98	; 152
   608C 30                 4627 	.db #0x30	; 48	'0'
   608D 98                 4628 	.db #0x98	; 152
   608E 25                 4629 	.db #0x25	; 37
   608F 30                 4630 	.db #0x30	; 48	'0'
   6090 30                 4631 	.db #0x30	; 48	'0'
   6091 1A                 4632 	.db #0x1A	; 26
   6092 64                 4633 	.db #0x64	; 100	'd'
   6093 30                 4634 	.db #0x30	; 48	'0'
   6094 98                 4635 	.db #0x98	; 152
   6095 98                 4636 	.db #0x98	; 152
   6096 64                 4637 	.db #0x64	; 100	'd'
   6097 64                 4638 	.db #0x64	; 100	'd'
   6098 25                 4639 	.db #0x25	; 37
   6099 30                 4640 	.db #0x30	; 48	'0'
   609A 30                 4641 	.db #0x30	; 48	'0'
   609B 1A                 4642 	.db #0x1A	; 26
   609C 64                 4643 	.db #0x64	; 100	'd'
   609D 30                 4644 	.db #0x30	; 48	'0'
   609E 98                 4645 	.db #0x98	; 152
   609F 30                 4646 	.db #0x30	; 48	'0'
   60A0 64                 4647 	.db #0x64	; 100	'd'
   60A1 64                 4648 	.db #0x64	; 100	'd'
   60A2 25                 4649 	.db #0x25	; 37
   60A3 30                 4650 	.db #0x30	; 48	'0'
   60A4 30                 4651 	.db #0x30	; 48	'0'
   60A5 1A                 4652 	.db #0x1A	; 26
   60A6 64                 4653 	.db #0x64	; 100	'd'
   60A7 30                 4654 	.db #0x30	; 48	'0'
   60A8 98                 4655 	.db #0x98	; 152
   60A9 30                 4656 	.db #0x30	; 48	'0'
   60AA 64                 4657 	.db #0x64	; 100	'd'
   60AB 64                 4658 	.db #0x64	; 100	'd'
   60AC 25                 4659 	.db #0x25	; 37
   60AD 30                 4660 	.db #0x30	; 48	'0'
   60AE 30                 4661 	.db #0x30	; 48	'0'
   60AF 1A                 4662 	.db #0x1A	; 26
   60B0 64                 4663 	.db #0x64	; 100	'd'
   60B1 30                 4664 	.db #0x30	; 48	'0'
   60B2 98                 4665 	.db #0x98	; 152
   60B3 30                 4666 	.db #0x30	; 48	'0'
   60B4 64                 4667 	.db #0x64	; 100	'd'
   60B5 64                 4668 	.db #0x64	; 100	'd'
   60B6 25                 4669 	.db #0x25	; 37
   60B7 30                 4670 	.db #0x30	; 48	'0'
   60B8 30                 4671 	.db #0x30	; 48	'0'
   60B9 1A                 4672 	.db #0x1A	; 26
   60BA 64                 4673 	.db #0x64	; 100	'd'
   60BB 30                 4674 	.db #0x30	; 48	'0'
   60BC CC                 4675 	.db #0xCC	; 204
   60BD 30                 4676 	.db #0x30	; 48	'0'
   60BE 64                 4677 	.db #0x64	; 100	'd'
   60BF 64                 4678 	.db #0x64	; 100	'd'
   60C0 25                 4679 	.db #0x25	; 37
   60C1 30                 4680 	.db #0x30	; 48	'0'
   60C2 30                 4681 	.db #0x30	; 48	'0'
   60C3 1A                 4682 	.db #0x1A	; 26
   60C4 98                 4683 	.db #0x98	; 152
   60C5 30                 4684 	.db #0x30	; 48	'0'
   60C6 98                 4685 	.db #0x98	; 152
   60C7 98                 4686 	.db #0x98	; 152
   60C8 30                 4687 	.db #0x30	; 48	'0'
   60C9 98                 4688 	.db #0x98	; 152
   60CA 25                 4689 	.db #0x25	; 37
   60CB 30                 4690 	.db #0x30	; 48	'0'
   60CC 30                 4691 	.db #0x30	; 48	'0'
   60CD 1A                 4692 	.db #0x1A	; 26
   60CE 98                 4693 	.db #0x98	; 152
   60CF 30                 4694 	.db #0x30	; 48	'0'
   60D0 98                 4695 	.db #0x98	; 152
   60D1 98                 4696 	.db #0x98	; 152
   60D2 64                 4697 	.db #0x64	; 100	'd'
   60D3 64                 4698 	.db #0x64	; 100	'd'
   60D4 25                 4699 	.db #0x25	; 37
   60D5 30                 4700 	.db #0x30	; 48	'0'
   60D6 30                 4701 	.db #0x30	; 48	'0'
   60D7 1A                 4702 	.db #0x1A	; 26
   60D8 98                 4703 	.db #0x98	; 152
   60D9 30                 4704 	.db #0x30	; 48	'0'
   60DA 98                 4705 	.db #0x98	; 152
   60DB 98                 4706 	.db #0x98	; 152
   60DC 64                 4707 	.db #0x64	; 100	'd'
   60DD 64                 4708 	.db #0x64	; 100	'd'
   60DE 25                 4709 	.db #0x25	; 37
   60DF 30                 4710 	.db #0x30	; 48	'0'
   60E0 30                 4711 	.db #0x30	; 48	'0'
   60E1 1A                 4712 	.db #0x1A	; 26
   60E2 98                 4713 	.db #0x98	; 152
   60E3 30                 4714 	.db #0x30	; 48	'0'
   60E4 98                 4715 	.db #0x98	; 152
   60E5 98                 4716 	.db #0x98	; 152
   60E6 64                 4717 	.db #0x64	; 100	'd'
   60E7 64                 4718 	.db #0x64	; 100	'd'
   60E8 25                 4719 	.db #0x25	; 37
   60E9 30                 4720 	.db #0x30	; 48	'0'
   60EA 30                 4721 	.db #0x30	; 48	'0'
   60EB 1A                 4722 	.db #0x1A	; 26
   60EC 98                 4723 	.db #0x98	; 152
   60ED 30                 4724 	.db #0x30	; 48	'0'
   60EE 98                 4725 	.db #0x98	; 152
   60EF 98                 4726 	.db #0x98	; 152
   60F0 64                 4727 	.db #0x64	; 100	'd'
   60F1 64                 4728 	.db #0x64	; 100	'd'
   60F2 25                 4729 	.db #0x25	; 37
   60F3 30                 4730 	.db #0x30	; 48	'0'
   60F4 30                 4731 	.db #0x30	; 48	'0'
   60F5 1A                 4732 	.db #0x1A	; 26
   60F6 98                 4733 	.db #0x98	; 152
   60F7 30                 4734 	.db #0x30	; 48	'0'
   60F8 64                 4735 	.db #0x64	; 100	'd'
   60F9 30                 4736 	.db #0x30	; 48	'0'
   60FA 30                 4737 	.db #0x30	; 48	'0'
   60FB 98                 4738 	.db #0x98	; 152
   60FC 25                 4739 	.db #0x25	; 37
   60FD 30                 4740 	.db #0x30	; 48	'0'
   60FE 30                 4741 	.db #0x30	; 48	'0'
   60FF 1A                 4742 	.db #0x1A	; 26
   6100 30                 4743 	.db #0x30	; 48	'0'
   6101 30                 4744 	.db #0x30	; 48	'0'
   6102 30                 4745 	.db #0x30	; 48	'0'
   6103 30                 4746 	.db #0x30	; 48	'0'
   6104 30                 4747 	.db #0x30	; 48	'0'
   6105 30                 4748 	.db #0x30	; 48	'0'
   6106 25                 4749 	.db #0x25	; 37
   6107 30                 4750 	.db #0x30	; 48	'0'
   6108 30                 4751 	.db #0x30	; 48	'0'
   6109 1A                 4752 	.db #0x1A	; 26
   610A 30                 4753 	.db #0x30	; 48	'0'
   610B 30                 4754 	.db #0x30	; 48	'0'
   610C 30                 4755 	.db #0x30	; 48	'0'
   610D 30                 4756 	.db #0x30	; 48	'0'
   610E 30                 4757 	.db #0x30	; 48	'0'
   610F 30                 4758 	.db #0x30	; 48	'0'
   6110 25                 4759 	.db #0x25	; 37
   6111 30                 4760 	.db #0x30	; 48	'0'
   6112 30                 4761 	.db #0x30	; 48	'0'
   6113 1A                 4762 	.db #0x1A	; 26
   6114 30                 4763 	.db #0x30	; 48	'0'
   6115 30                 4764 	.db #0x30	; 48	'0'
   6116 30                 4765 	.db #0x30	; 48	'0'
   6117 30                 4766 	.db #0x30	; 48	'0'
   6118 30                 4767 	.db #0x30	; 48	'0'
   6119 30                 4768 	.db #0x30	; 48	'0'
   611A 25                 4769 	.db #0x25	; 37
   611B 30                 4770 	.db #0x30	; 48	'0'
   611C 30                 4771 	.db #0x30	; 48	'0'
   611D 1A                 4772 	.db #0x1A	; 26
   611E 30                 4773 	.db #0x30	; 48	'0'
   611F 30                 4774 	.db #0x30	; 48	'0'
   6120 30                 4775 	.db #0x30	; 48	'0'
   6121 30                 4776 	.db #0x30	; 48	'0'
   6122 30                 4777 	.db #0x30	; 48	'0'
   6123 30                 4778 	.db #0x30	; 48	'0'
   6124 25                 4779 	.db #0x25	; 37
   6125 30                 4780 	.db #0x30	; 48	'0'
   6126 30                 4781 	.db #0x30	; 48	'0'
   6127 1A                 4782 	.db #0x1A	; 26
   6128 30                 4783 	.db #0x30	; 48	'0'
   6129 30                 4784 	.db #0x30	; 48	'0'
   612A 30                 4785 	.db #0x30	; 48	'0'
   612B 30                 4786 	.db #0x30	; 48	'0'
   612C 30                 4787 	.db #0x30	; 48	'0'
   612D 30                 4788 	.db #0x30	; 48	'0'
   612E 25                 4789 	.db #0x25	; 37
   612F 30                 4790 	.db #0x30	; 48	'0'
   6130 30                 4791 	.db #0x30	; 48	'0'
   6131 1A                 4792 	.db #0x1A	; 26
   6132 30                 4793 	.db #0x30	; 48	'0'
   6133 30                 4794 	.db #0x30	; 48	'0'
   6134 30                 4795 	.db #0x30	; 48	'0'
   6135 30                 4796 	.db #0x30	; 48	'0'
   6136 30                 4797 	.db #0x30	; 48	'0'
   6137 30                 4798 	.db #0x30	; 48	'0'
   6138 25                 4799 	.db #0x25	; 37
   6139 30                 4800 	.db #0x30	; 48	'0'
   613A 30                 4801 	.db #0x30	; 48	'0'
   613B 1A                 4802 	.db #0x1A	; 26
   613C 30                 4803 	.db #0x30	; 48	'0'
   613D 30                 4804 	.db #0x30	; 48	'0'
   613E 30                 4805 	.db #0x30	; 48	'0'
   613F 30                 4806 	.db #0x30	; 48	'0'
   6140 30                 4807 	.db #0x30	; 48	'0'
   6141 30                 4808 	.db #0x30	; 48	'0'
   6142 25                 4809 	.db #0x25	; 37
   6143 30                 4810 	.db #0x30	; 48	'0'
   6144 30                 4811 	.db #0x30	; 48	'0'
   6145 1A                 4812 	.db #0x1A	; 26
   6146 30                 4813 	.db #0x30	; 48	'0'
   6147 30                 4814 	.db #0x30	; 48	'0'
   6148 30                 4815 	.db #0x30	; 48	'0'
   6149 30                 4816 	.db #0x30	; 48	'0'
   614A 30                 4817 	.db #0x30	; 48	'0'
   614B 30                 4818 	.db #0x30	; 48	'0'
   614C 25                 4819 	.db #0x25	; 37
   614D 30                 4820 	.db #0x30	; 48	'0'
   614E 30                 4821 	.db #0x30	; 48	'0'
   614F 0F                 4822 	.db #0x0F	; 15
   6150 30                 4823 	.db #0x30	; 48	'0'
   6151 30                 4824 	.db #0x30	; 48	'0'
   6152 30                 4825 	.db #0x30	; 48	'0'
   6153 30                 4826 	.db #0x30	; 48	'0'
   6154 30                 4827 	.db #0x30	; 48	'0'
   6155 30                 4828 	.db #0x30	; 48	'0'
   6156 0F                 4829 	.db #0x0F	; 15
   6157 30                 4830 	.db #0x30	; 48	'0'
   6158 30                 4831 	.db #0x30	; 48	'0'
   6159 25                 4832 	.db #0x25	; 37
   615A 30                 4833 	.db #0x30	; 48	'0'
   615B 30                 4834 	.db #0x30	; 48	'0'
   615C 30                 4835 	.db #0x30	; 48	'0'
   615D 30                 4836 	.db #0x30	; 48	'0'
   615E 30                 4837 	.db #0x30	; 48	'0'
   615F 30                 4838 	.db #0x30	; 48	'0'
   6160 1A                 4839 	.db #0x1A	; 26
   6161 30                 4840 	.db #0x30	; 48	'0'
   6162 30                 4841 	.db #0x30	; 48	'0'
   6163 25                 4842 	.db #0x25	; 37
   6164 0F                 4843 	.db #0x0F	; 15
   6165 0F                 4844 	.db #0x0F	; 15
   6166 0F                 4845 	.db #0x0F	; 15
   6167 0F                 4846 	.db #0x0F	; 15
   6168 0F                 4847 	.db #0x0F	; 15
   6169 0F                 4848 	.db #0x0F	; 15
   616A 1A                 4849 	.db #0x1A	; 26
   616B 30                 4850 	.db #0x30	; 48	'0'
   616C F0                 4851 	.db #0xF0	; 240
   616D 30                 4852 	.db #0x30	; 48	'0'
   616E 30                 4853 	.db #0x30	; 48	'0'
   616F 30                 4854 	.db #0x30	; 48	'0'
   6170 30                 4855 	.db #0x30	; 48	'0'
   6171 30                 4856 	.db #0x30	; 48	'0'
   6172 30                 4857 	.db #0x30	; 48	'0'
   6173 30                 4858 	.db #0x30	; 48	'0'
   6174 30                 4859 	.db #0x30	; 48	'0'
   6175 F0                 4860 	.db #0xF0	; 240
   6176 F0                 4861 	.db #0xF0	; 240
   6177 30                 4862 	.db #0x30	; 48	'0'
   6178 30                 4863 	.db #0x30	; 48	'0'
   6179 30                 4864 	.db #0x30	; 48	'0'
   617A 30                 4865 	.db #0x30	; 48	'0'
   617B 30                 4866 	.db #0x30	; 48	'0'
   617C 30                 4867 	.db #0x30	; 48	'0'
   617D 30                 4868 	.db #0x30	; 48	'0'
   617E 30                 4869 	.db #0x30	; 48	'0'
   617F F0                 4870 	.db #0xF0	; 240
   6180                    4871 _tile_tiles_12:
   6180 F0                 4872 	.db #0xF0	; 240
   6181 30                 4873 	.db #0x30	; 48	'0'
   6182 30                 4874 	.db #0x30	; 48	'0'
   6183 30                 4875 	.db #0x30	; 48	'0'
   6184 30                 4876 	.db #0x30	; 48	'0'
   6185 30                 4877 	.db #0x30	; 48	'0'
   6186 30                 4878 	.db #0x30	; 48	'0'
   6187 30                 4879 	.db #0x30	; 48	'0'
   6188 30                 4880 	.db #0x30	; 48	'0'
   6189 F0                 4881 	.db #0xF0	; 240
   618A F0                 4882 	.db #0xF0	; 240
   618B 30                 4883 	.db #0x30	; 48	'0'
   618C 30                 4884 	.db #0x30	; 48	'0'
   618D 30                 4885 	.db #0x30	; 48	'0'
   618E 30                 4886 	.db #0x30	; 48	'0'
   618F 30                 4887 	.db #0x30	; 48	'0'
   6190 30                 4888 	.db #0x30	; 48	'0'
   6191 30                 4889 	.db #0x30	; 48	'0'
   6192 30                 4890 	.db #0x30	; 48	'0'
   6193 F0                 4891 	.db #0xF0	; 240
   6194 30                 4892 	.db #0x30	; 48	'0'
   6195 25                 4893 	.db #0x25	; 37
   6196 0F                 4894 	.db #0x0F	; 15
   6197 0F                 4895 	.db #0x0F	; 15
   6198 0F                 4896 	.db #0x0F	; 15
   6199 0F                 4897 	.db #0x0F	; 15
   619A 0F                 4898 	.db #0x0F	; 15
   619B 0F                 4899 	.db #0x0F	; 15
   619C 1A                 4900 	.db #0x1A	; 26
   619D 30                 4901 	.db #0x30	; 48	'0'
   619E 30                 4902 	.db #0x30	; 48	'0'
   619F 25                 4903 	.db #0x25	; 37
   61A0 30                 4904 	.db #0x30	; 48	'0'
   61A1 30                 4905 	.db #0x30	; 48	'0'
   61A2 30                 4906 	.db #0x30	; 48	'0'
   61A3 30                 4907 	.db #0x30	; 48	'0'
   61A4 30                 4908 	.db #0x30	; 48	'0'
   61A5 30                 4909 	.db #0x30	; 48	'0'
   61A6 1A                 4910 	.db #0x1A	; 26
   61A7 30                 4911 	.db #0x30	; 48	'0'
   61A8 30                 4912 	.db #0x30	; 48	'0'
   61A9 0F                 4913 	.db #0x0F	; 15
   61AA 30                 4914 	.db #0x30	; 48	'0'
   61AB 30                 4915 	.db #0x30	; 48	'0'
   61AC 30                 4916 	.db #0x30	; 48	'0'
   61AD 30                 4917 	.db #0x30	; 48	'0'
   61AE 30                 4918 	.db #0x30	; 48	'0'
   61AF 30                 4919 	.db #0x30	; 48	'0'
   61B0 0F                 4920 	.db #0x0F	; 15
   61B1 30                 4921 	.db #0x30	; 48	'0'
   61B2 30                 4922 	.db #0x30	; 48	'0'
   61B3 1A                 4923 	.db #0x1A	; 26
   61B4 30                 4924 	.db #0x30	; 48	'0'
   61B5 30                 4925 	.db #0x30	; 48	'0'
   61B6 30                 4926 	.db #0x30	; 48	'0'
   61B7 30                 4927 	.db #0x30	; 48	'0'
   61B8 30                 4928 	.db #0x30	; 48	'0'
   61B9 30                 4929 	.db #0x30	; 48	'0'
   61BA 25                 4930 	.db #0x25	; 37
   61BB 30                 4931 	.db #0x30	; 48	'0'
   61BC 30                 4932 	.db #0x30	; 48	'0'
   61BD 1A                 4933 	.db #0x1A	; 26
   61BE 30                 4934 	.db #0x30	; 48	'0'
   61BF 30                 4935 	.db #0x30	; 48	'0'
   61C0 30                 4936 	.db #0x30	; 48	'0'
   61C1 30                 4937 	.db #0x30	; 48	'0'
   61C2 30                 4938 	.db #0x30	; 48	'0'
   61C3 30                 4939 	.db #0x30	; 48	'0'
   61C4 25                 4940 	.db #0x25	; 37
   61C5 30                 4941 	.db #0x30	; 48	'0'
   61C6 30                 4942 	.db #0x30	; 48	'0'
   61C7 1A                 4943 	.db #0x1A	; 26
   61C8 30                 4944 	.db #0x30	; 48	'0'
   61C9 30                 4945 	.db #0x30	; 48	'0'
   61CA 30                 4946 	.db #0x30	; 48	'0'
   61CB 30                 4947 	.db #0x30	; 48	'0'
   61CC 30                 4948 	.db #0x30	; 48	'0'
   61CD 30                 4949 	.db #0x30	; 48	'0'
   61CE 25                 4950 	.db #0x25	; 37
   61CF 30                 4951 	.db #0x30	; 48	'0'
   61D0 30                 4952 	.db #0x30	; 48	'0'
   61D1 1A                 4953 	.db #0x1A	; 26
   61D2 30                 4954 	.db #0x30	; 48	'0'
   61D3 30                 4955 	.db #0x30	; 48	'0'
   61D4 30                 4956 	.db #0x30	; 48	'0'
   61D5 30                 4957 	.db #0x30	; 48	'0'
   61D6 30                 4958 	.db #0x30	; 48	'0'
   61D7 30                 4959 	.db #0x30	; 48	'0'
   61D8 25                 4960 	.db #0x25	; 37
   61D9 30                 4961 	.db #0x30	; 48	'0'
   61DA 30                 4962 	.db #0x30	; 48	'0'
   61DB 1A                 4963 	.db #0x1A	; 26
   61DC 30                 4964 	.db #0x30	; 48	'0'
   61DD 30                 4965 	.db #0x30	; 48	'0'
   61DE 30                 4966 	.db #0x30	; 48	'0'
   61DF 30                 4967 	.db #0x30	; 48	'0'
   61E0 30                 4968 	.db #0x30	; 48	'0'
   61E1 30                 4969 	.db #0x30	; 48	'0'
   61E2 25                 4970 	.db #0x25	; 37
   61E3 30                 4971 	.db #0x30	; 48	'0'
   61E4 30                 4972 	.db #0x30	; 48	'0'
   61E5 1A                 4973 	.db #0x1A	; 26
   61E6 30                 4974 	.db #0x30	; 48	'0'
   61E7 30                 4975 	.db #0x30	; 48	'0'
   61E8 30                 4976 	.db #0x30	; 48	'0'
   61E9 30                 4977 	.db #0x30	; 48	'0'
   61EA 30                 4978 	.db #0x30	; 48	'0'
   61EB 30                 4979 	.db #0x30	; 48	'0'
   61EC 25                 4980 	.db #0x25	; 37
   61ED 30                 4981 	.db #0x30	; 48	'0'
   61EE 30                 4982 	.db #0x30	; 48	'0'
   61EF 1A                 4983 	.db #0x1A	; 26
   61F0 30                 4984 	.db #0x30	; 48	'0'
   61F1 30                 4985 	.db #0x30	; 48	'0'
   61F2 30                 4986 	.db #0x30	; 48	'0'
   61F3 30                 4987 	.db #0x30	; 48	'0'
   61F4 30                 4988 	.db #0x30	; 48	'0'
   61F5 30                 4989 	.db #0x30	; 48	'0'
   61F6 25                 4990 	.db #0x25	; 37
   61F7 30                 4991 	.db #0x30	; 48	'0'
   61F8 30                 4992 	.db #0x30	; 48	'0'
   61F9 1A                 4993 	.db #0x1A	; 26
   61FA 30                 4994 	.db #0x30	; 48	'0'
   61FB 30                 4995 	.db #0x30	; 48	'0'
   61FC 30                 4996 	.db #0x30	; 48	'0'
   61FD 30                 4997 	.db #0x30	; 48	'0'
   61FE 30                 4998 	.db #0x30	; 48	'0'
   61FF 30                 4999 	.db #0x30	; 48	'0'
   6200 25                 5000 	.db #0x25	; 37
   6201 30                 5001 	.db #0x30	; 48	'0'
   6202 30                 5002 	.db #0x30	; 48	'0'
   6203 1A                 5003 	.db #0x1A	; 26
   6204 30                 5004 	.db #0x30	; 48	'0'
   6205 30                 5005 	.db #0x30	; 48	'0'
   6206 30                 5006 	.db #0x30	; 48	'0'
   6207 30                 5007 	.db #0x30	; 48	'0'
   6208 30                 5008 	.db #0x30	; 48	'0'
   6209 30                 5009 	.db #0x30	; 48	'0'
   620A 25                 5010 	.db #0x25	; 37
   620B 30                 5011 	.db #0x30	; 48	'0'
   620C 30                 5012 	.db #0x30	; 48	'0'
   620D 1A                 5013 	.db #0x1A	; 26
   620E 30                 5014 	.db #0x30	; 48	'0'
   620F 30                 5015 	.db #0x30	; 48	'0'
   6210 30                 5016 	.db #0x30	; 48	'0'
   6211 30                 5017 	.db #0x30	; 48	'0'
   6212 30                 5018 	.db #0x30	; 48	'0'
   6213 30                 5019 	.db #0x30	; 48	'0'
   6214 25                 5020 	.db #0x25	; 37
   6215 30                 5021 	.db #0x30	; 48	'0'
   6216 30                 5022 	.db #0x30	; 48	'0'
   6217 1A                 5023 	.db #0x1A	; 26
   6218 30                 5024 	.db #0x30	; 48	'0'
   6219 30                 5025 	.db #0x30	; 48	'0'
   621A 30                 5026 	.db #0x30	; 48	'0'
   621B 30                 5027 	.db #0x30	; 48	'0'
   621C 30                 5028 	.db #0x30	; 48	'0'
   621D 30                 5029 	.db #0x30	; 48	'0'
   621E 25                 5030 	.db #0x25	; 37
   621F 30                 5031 	.db #0x30	; 48	'0'
   6220 30                 5032 	.db #0x30	; 48	'0'
   6221 1A                 5033 	.db #0x1A	; 26
   6222 30                 5034 	.db #0x30	; 48	'0'
   6223 30                 5035 	.db #0x30	; 48	'0'
   6224 30                 5036 	.db #0x30	; 48	'0'
   6225 30                 5037 	.db #0x30	; 48	'0'
   6226 30                 5038 	.db #0x30	; 48	'0'
   6227 30                 5039 	.db #0x30	; 48	'0'
   6228 25                 5040 	.db #0x25	; 37
   6229 30                 5041 	.db #0x30	; 48	'0'
   622A 30                 5042 	.db #0x30	; 48	'0'
   622B 4E                 5043 	.db #0x4E	; 78	'N'
   622C 30                 5044 	.db #0x30	; 48	'0'
   622D CC                 5045 	.db #0xCC	; 204
   622E 98                 5046 	.db #0x98	; 152
   622F 64                 5047 	.db #0x64	; 100	'd'
   6230 30                 5048 	.db #0x30	; 48	'0'
   6231 64                 5049 	.db #0x64	; 100	'd'
   6232 25                 5050 	.db #0x25	; 37
   6233 30                 5051 	.db #0x30	; 48	'0'
   6234 30                 5052 	.db #0x30	; 48	'0'
   6235 CC                 5053 	.db #0xCC	; 204
   6236 30                 5054 	.db #0x30	; 48	'0'
   6237 98                 5055 	.db #0x98	; 152
   6238 30                 5056 	.db #0x30	; 48	'0'
   6239 98                 5057 	.db #0x98	; 152
   623A 98                 5058 	.db #0x98	; 152
   623B 98                 5059 	.db #0x98	; 152
   623C 8D                 5060 	.db #0x8D	; 141
   623D 30                 5061 	.db #0x30	; 48	'0'
   623E 30                 5062 	.db #0x30	; 48	'0'
   623F 4E                 5063 	.db #0x4E	; 78	'N'
   6240 30                 5064 	.db #0x30	; 48	'0'
   6241 98                 5065 	.db #0x98	; 152
   6242 30                 5066 	.db #0x30	; 48	'0'
   6243 30                 5067 	.db #0x30	; 48	'0'
   6244 98                 5068 	.db #0x98	; 152
   6245 98                 5069 	.db #0x98	; 152
   6246 25                 5070 	.db #0x25	; 37
   6247 30                 5071 	.db #0x30	; 48	'0'
   6248 30                 5072 	.db #0x30	; 48	'0'
   6249 4E                 5073 	.db #0x4E	; 78	'N'
   624A 30                 5074 	.db #0x30	; 48	'0'
   624B CC                 5075 	.db #0xCC	; 204
   624C 30                 5076 	.db #0x30	; 48	'0'
   624D 64                 5077 	.db #0x64	; 100	'd'
   624E 30                 5078 	.db #0x30	; 48	'0'
   624F 98                 5079 	.db #0x98	; 152
   6250 25                 5080 	.db #0x25	; 37
   6251 30                 5081 	.db #0x30	; 48	'0'
   6252 30                 5082 	.db #0x30	; 48	'0'
   6253 4E                 5083 	.db #0x4E	; 78	'N'
   6254 30                 5084 	.db #0x30	; 48	'0'
   6255 30                 5085 	.db #0x30	; 48	'0'
   6256 98                 5086 	.db #0x98	; 152
   6257 64                 5087 	.db #0x64	; 100	'd'
   6258 30                 5088 	.db #0x30	; 48	'0'
   6259 CC                 5089 	.db #0xCC	; 204
   625A 25                 5090 	.db #0x25	; 37
   625B 30                 5091 	.db #0x30	; 48	'0'
   625C 30                 5092 	.db #0x30	; 48	'0'
   625D 4E                 5093 	.db #0x4E	; 78	'N'
   625E 30                 5094 	.db #0x30	; 48	'0'
   625F 30                 5095 	.db #0x30	; 48	'0'
   6260 98                 5096 	.db #0x98	; 152
   6261 30                 5097 	.db #0x30	; 48	'0'
   6262 98                 5098 	.db #0x98	; 152
   6263 98                 5099 	.db #0x98	; 152
   6264 8D                 5100 	.db #0x8D	; 141
   6265 30                 5101 	.db #0x30	; 48	'0'
   6266 30                 5102 	.db #0x30	; 48	'0'
   6267 4E                 5103 	.db #0x4E	; 78	'N'
   6268 30                 5104 	.db #0x30	; 48	'0'
   6269 30                 5105 	.db #0x30	; 48	'0'
   626A 98                 5106 	.db #0x98	; 152
   626B 98                 5107 	.db #0x98	; 152
   626C 98                 5108 	.db #0x98	; 152
   626D 98                 5109 	.db #0x98	; 152
   626E 8D                 5110 	.db #0x8D	; 141
   626F 30                 5111 	.db #0x30	; 48	'0'
   6270 30                 5112 	.db #0x30	; 48	'0'
   6271 CC                 5113 	.db #0xCC	; 204
   6272 98                 5114 	.db #0x98	; 152
   6273 CC                 5115 	.db #0xCC	; 204
   6274 30                 5116 	.db #0x30	; 48	'0'
   6275 64                 5117 	.db #0x64	; 100	'd'
   6276 30                 5118 	.db #0x30	; 48	'0'
   6277 64                 5119 	.db #0x64	; 100	'd'
   6278 25                 5120 	.db #0x25	; 37
   6279 30                 5121 	.db #0x30	; 48	'0'
   627A 30                 5122 	.db #0x30	; 48	'0'
   627B 1A                 5123 	.db #0x1A	; 26
   627C 30                 5124 	.db #0x30	; 48	'0'
   627D 30                 5125 	.db #0x30	; 48	'0'
   627E 30                 5126 	.db #0x30	; 48	'0'
   627F 30                 5127 	.db #0x30	; 48	'0'
   6280 30                 5128 	.db #0x30	; 48	'0'
   6281 30                 5129 	.db #0x30	; 48	'0'
   6282 25                 5130 	.db #0x25	; 37
   6283 30                 5131 	.db #0x30	; 48	'0'
   6284 30                 5132 	.db #0x30	; 48	'0'
   6285 1A                 5133 	.db #0x1A	; 26
   6286 30                 5134 	.db #0x30	; 48	'0'
   6287 30                 5135 	.db #0x30	; 48	'0'
   6288 30                 5136 	.db #0x30	; 48	'0'
   6289 30                 5137 	.db #0x30	; 48	'0'
   628A 30                 5138 	.db #0x30	; 48	'0'
   628B 30                 5139 	.db #0x30	; 48	'0'
   628C 25                 5140 	.db #0x25	; 37
   628D 30                 5141 	.db #0x30	; 48	'0'
   628E 30                 5142 	.db #0x30	; 48	'0'
   628F 1A                 5143 	.db #0x1A	; 26
   6290 30                 5144 	.db #0x30	; 48	'0'
   6291 30                 5145 	.db #0x30	; 48	'0'
   6292 30                 5146 	.db #0x30	; 48	'0'
   6293 30                 5147 	.db #0x30	; 48	'0'
   6294 30                 5148 	.db #0x30	; 48	'0'
   6295 30                 5149 	.db #0x30	; 48	'0'
   6296 25                 5150 	.db #0x25	; 37
   6297 30                 5151 	.db #0x30	; 48	'0'
   6298 30                 5152 	.db #0x30	; 48	'0'
   6299 1A                 5153 	.db #0x1A	; 26
   629A 30                 5154 	.db #0x30	; 48	'0'
   629B 30                 5155 	.db #0x30	; 48	'0'
   629C 30                 5156 	.db #0x30	; 48	'0'
   629D 30                 5157 	.db #0x30	; 48	'0'
   629E 30                 5158 	.db #0x30	; 48	'0'
   629F 30                 5159 	.db #0x30	; 48	'0'
   62A0 25                 5160 	.db #0x25	; 37
   62A1 30                 5161 	.db #0x30	; 48	'0'
   62A2 30                 5162 	.db #0x30	; 48	'0'
   62A3 1A                 5163 	.db #0x1A	; 26
   62A4 30                 5164 	.db #0x30	; 48	'0'
   62A5 30                 5165 	.db #0x30	; 48	'0'
   62A6 30                 5166 	.db #0x30	; 48	'0'
   62A7 30                 5167 	.db #0x30	; 48	'0'
   62A8 30                 5168 	.db #0x30	; 48	'0'
   62A9 30                 5169 	.db #0x30	; 48	'0'
   62AA 25                 5170 	.db #0x25	; 37
   62AB 30                 5171 	.db #0x30	; 48	'0'
   62AC 30                 5172 	.db #0x30	; 48	'0'
   62AD 1A                 5173 	.db #0x1A	; 26
   62AE 30                 5174 	.db #0x30	; 48	'0'
   62AF 30                 5175 	.db #0x30	; 48	'0'
   62B0 30                 5176 	.db #0x30	; 48	'0'
   62B1 30                 5177 	.db #0x30	; 48	'0'
   62B2 30                 5178 	.db #0x30	; 48	'0'
   62B3 30                 5179 	.db #0x30	; 48	'0'
   62B4 25                 5180 	.db #0x25	; 37
   62B5 30                 5181 	.db #0x30	; 48	'0'
   62B6 30                 5182 	.db #0x30	; 48	'0'
   62B7 1A                 5183 	.db #0x1A	; 26
   62B8 30                 5184 	.db #0x30	; 48	'0'
   62B9 30                 5185 	.db #0x30	; 48	'0'
   62BA 30                 5186 	.db #0x30	; 48	'0'
   62BB 30                 5187 	.db #0x30	; 48	'0'
   62BC 30                 5188 	.db #0x30	; 48	'0'
   62BD 30                 5189 	.db #0x30	; 48	'0'
   62BE 25                 5190 	.db #0x25	; 37
   62BF 30                 5191 	.db #0x30	; 48	'0'
   62C0 30                 5192 	.db #0x30	; 48	'0'
   62C1 1A                 5193 	.db #0x1A	; 26
   62C2 30                 5194 	.db #0x30	; 48	'0'
   62C3 30                 5195 	.db #0x30	; 48	'0'
   62C4 30                 5196 	.db #0x30	; 48	'0'
   62C5 30                 5197 	.db #0x30	; 48	'0'
   62C6 30                 5198 	.db #0x30	; 48	'0'
   62C7 30                 5199 	.db #0x30	; 48	'0'
   62C8 25                 5200 	.db #0x25	; 37
   62C9 30                 5201 	.db #0x30	; 48	'0'
   62CA 30                 5202 	.db #0x30	; 48	'0'
   62CB 1A                 5203 	.db #0x1A	; 26
   62CC 30                 5204 	.db #0x30	; 48	'0'
   62CD 30                 5205 	.db #0x30	; 48	'0'
   62CE 30                 5206 	.db #0x30	; 48	'0'
   62CF 30                 5207 	.db #0x30	; 48	'0'
   62D0 30                 5208 	.db #0x30	; 48	'0'
   62D1 30                 5209 	.db #0x30	; 48	'0'
   62D2 25                 5210 	.db #0x25	; 37
   62D3 30                 5211 	.db #0x30	; 48	'0'
   62D4 30                 5212 	.db #0x30	; 48	'0'
   62D5 1A                 5213 	.db #0x1A	; 26
   62D6 30                 5214 	.db #0x30	; 48	'0'
   62D7 30                 5215 	.db #0x30	; 48	'0'
   62D8 30                 5216 	.db #0x30	; 48	'0'
   62D9 30                 5217 	.db #0x30	; 48	'0'
   62DA 30                 5218 	.db #0x30	; 48	'0'
   62DB 30                 5219 	.db #0x30	; 48	'0'
   62DC 25                 5220 	.db #0x25	; 37
   62DD 30                 5221 	.db #0x30	; 48	'0'
   62DE 30                 5222 	.db #0x30	; 48	'0'
   62DF 0F                 5223 	.db #0x0F	; 15
   62E0 30                 5224 	.db #0x30	; 48	'0'
   62E1 30                 5225 	.db #0x30	; 48	'0'
   62E2 30                 5226 	.db #0x30	; 48	'0'
   62E3 30                 5227 	.db #0x30	; 48	'0'
   62E4 30                 5228 	.db #0x30	; 48	'0'
   62E5 30                 5229 	.db #0x30	; 48	'0'
   62E6 0F                 5230 	.db #0x0F	; 15
   62E7 30                 5231 	.db #0x30	; 48	'0'
   62E8 30                 5232 	.db #0x30	; 48	'0'
   62E9 25                 5233 	.db #0x25	; 37
   62EA 30                 5234 	.db #0x30	; 48	'0'
   62EB 30                 5235 	.db #0x30	; 48	'0'
   62EC 30                 5236 	.db #0x30	; 48	'0'
   62ED 30                 5237 	.db #0x30	; 48	'0'
   62EE 30                 5238 	.db #0x30	; 48	'0'
   62EF 30                 5239 	.db #0x30	; 48	'0'
   62F0 1A                 5240 	.db #0x1A	; 26
   62F1 30                 5241 	.db #0x30	; 48	'0'
   62F2 30                 5242 	.db #0x30	; 48	'0'
   62F3 25                 5243 	.db #0x25	; 37
   62F4 0F                 5244 	.db #0x0F	; 15
   62F5 0F                 5245 	.db #0x0F	; 15
   62F6 0F                 5246 	.db #0x0F	; 15
   62F7 0F                 5247 	.db #0x0F	; 15
   62F8 0F                 5248 	.db #0x0F	; 15
   62F9 0F                 5249 	.db #0x0F	; 15
   62FA 1A                 5250 	.db #0x1A	; 26
   62FB 30                 5251 	.db #0x30	; 48	'0'
   62FC F0                 5252 	.db #0xF0	; 240
   62FD 30                 5253 	.db #0x30	; 48	'0'
   62FE 30                 5254 	.db #0x30	; 48	'0'
   62FF 30                 5255 	.db #0x30	; 48	'0'
   6300 30                 5256 	.db #0x30	; 48	'0'
   6301 30                 5257 	.db #0x30	; 48	'0'
   6302 30                 5258 	.db #0x30	; 48	'0'
   6303 30                 5259 	.db #0x30	; 48	'0'
   6304 30                 5260 	.db #0x30	; 48	'0'
   6305 F0                 5261 	.db #0xF0	; 240
   6306 F0                 5262 	.db #0xF0	; 240
   6307 30                 5263 	.db #0x30	; 48	'0'
   6308 30                 5264 	.db #0x30	; 48	'0'
   6309 30                 5265 	.db #0x30	; 48	'0'
   630A 30                 5266 	.db #0x30	; 48	'0'
   630B 30                 5267 	.db #0x30	; 48	'0'
   630C 30                 5268 	.db #0x30	; 48	'0'
   630D 30                 5269 	.db #0x30	; 48	'0'
   630E 30                 5270 	.db #0x30	; 48	'0'
   630F F0                 5271 	.db #0xF0	; 240
   6310                    5272 _tile_tiles_13:
   6310 F0                 5273 	.db #0xF0	; 240
   6311 30                 5274 	.db #0x30	; 48	'0'
   6312 30                 5275 	.db #0x30	; 48	'0'
   6313 30                 5276 	.db #0x30	; 48	'0'
   6314 30                 5277 	.db #0x30	; 48	'0'
   6315 30                 5278 	.db #0x30	; 48	'0'
   6316 30                 5279 	.db #0x30	; 48	'0'
   6317 30                 5280 	.db #0x30	; 48	'0'
   6318 30                 5281 	.db #0x30	; 48	'0'
   6319 F0                 5282 	.db #0xF0	; 240
   631A F0                 5283 	.db #0xF0	; 240
   631B 30                 5284 	.db #0x30	; 48	'0'
   631C 30                 5285 	.db #0x30	; 48	'0'
   631D 30                 5286 	.db #0x30	; 48	'0'
   631E 30                 5287 	.db #0x30	; 48	'0'
   631F 30                 5288 	.db #0x30	; 48	'0'
   6320 30                 5289 	.db #0x30	; 48	'0'
   6321 30                 5290 	.db #0x30	; 48	'0'
   6322 30                 5291 	.db #0x30	; 48	'0'
   6323 F0                 5292 	.db #0xF0	; 240
   6324 30                 5293 	.db #0x30	; 48	'0'
   6325 25                 5294 	.db #0x25	; 37
   6326 0F                 5295 	.db #0x0F	; 15
   6327 0F                 5296 	.db #0x0F	; 15
   6328 0F                 5297 	.db #0x0F	; 15
   6329 0F                 5298 	.db #0x0F	; 15
   632A 0F                 5299 	.db #0x0F	; 15
   632B 0F                 5300 	.db #0x0F	; 15
   632C 1A                 5301 	.db #0x1A	; 26
   632D 30                 5302 	.db #0x30	; 48	'0'
   632E 30                 5303 	.db #0x30	; 48	'0'
   632F 25                 5304 	.db #0x25	; 37
   6330 30                 5305 	.db #0x30	; 48	'0'
   6331 30                 5306 	.db #0x30	; 48	'0'
   6332 30                 5307 	.db #0x30	; 48	'0'
   6333 30                 5308 	.db #0x30	; 48	'0'
   6334 30                 5309 	.db #0x30	; 48	'0'
   6335 30                 5310 	.db #0x30	; 48	'0'
   6336 1A                 5311 	.db #0x1A	; 26
   6337 30                 5312 	.db #0x30	; 48	'0'
   6338 30                 5313 	.db #0x30	; 48	'0'
   6339 0F                 5314 	.db #0x0F	; 15
   633A 30                 5315 	.db #0x30	; 48	'0'
   633B 30                 5316 	.db #0x30	; 48	'0'
   633C 30                 5317 	.db #0x30	; 48	'0'
   633D 30                 5318 	.db #0x30	; 48	'0'
   633E 30                 5319 	.db #0x30	; 48	'0'
   633F 30                 5320 	.db #0x30	; 48	'0'
   6340 0F                 5321 	.db #0x0F	; 15
   6341 30                 5322 	.db #0x30	; 48	'0'
   6342 30                 5323 	.db #0x30	; 48	'0'
   6343 1A                 5324 	.db #0x1A	; 26
   6344 30                 5325 	.db #0x30	; 48	'0'
   6345 30                 5326 	.db #0x30	; 48	'0'
   6346 30                 5327 	.db #0x30	; 48	'0'
   6347 30                 5328 	.db #0x30	; 48	'0'
   6348 30                 5329 	.db #0x30	; 48	'0'
   6349 30                 5330 	.db #0x30	; 48	'0'
   634A 25                 5331 	.db #0x25	; 37
   634B 30                 5332 	.db #0x30	; 48	'0'
   634C 30                 5333 	.db #0x30	; 48	'0'
   634D 1A                 5334 	.db #0x1A	; 26
   634E 30                 5335 	.db #0x30	; 48	'0'
   634F 30                 5336 	.db #0x30	; 48	'0'
   6350 30                 5337 	.db #0x30	; 48	'0'
   6351 30                 5338 	.db #0x30	; 48	'0'
   6352 30                 5339 	.db #0x30	; 48	'0'
   6353 30                 5340 	.db #0x30	; 48	'0'
   6354 25                 5341 	.db #0x25	; 37
   6355 30                 5342 	.db #0x30	; 48	'0'
   6356 30                 5343 	.db #0x30	; 48	'0'
   6357 1A                 5344 	.db #0x1A	; 26
   6358 30                 5345 	.db #0x30	; 48	'0'
   6359 30                 5346 	.db #0x30	; 48	'0'
   635A 30                 5347 	.db #0x30	; 48	'0'
   635B 30                 5348 	.db #0x30	; 48	'0'
   635C 30                 5349 	.db #0x30	; 48	'0'
   635D 30                 5350 	.db #0x30	; 48	'0'
   635E 25                 5351 	.db #0x25	; 37
   635F 30                 5352 	.db #0x30	; 48	'0'
   6360 30                 5353 	.db #0x30	; 48	'0'
   6361 1A                 5354 	.db #0x1A	; 26
   6362 30                 5355 	.db #0x30	; 48	'0'
   6363 30                 5356 	.db #0x30	; 48	'0'
   6364 30                 5357 	.db #0x30	; 48	'0'
   6365 30                 5358 	.db #0x30	; 48	'0'
   6366 30                 5359 	.db #0x30	; 48	'0'
   6367 30                 5360 	.db #0x30	; 48	'0'
   6368 25                 5361 	.db #0x25	; 37
   6369 30                 5362 	.db #0x30	; 48	'0'
   636A 30                 5363 	.db #0x30	; 48	'0'
   636B 1A                 5364 	.db #0x1A	; 26
   636C 30                 5365 	.db #0x30	; 48	'0'
   636D 30                 5366 	.db #0x30	; 48	'0'
   636E 30                 5367 	.db #0x30	; 48	'0'
   636F 30                 5368 	.db #0x30	; 48	'0'
   6370 30                 5369 	.db #0x30	; 48	'0'
   6371 30                 5370 	.db #0x30	; 48	'0'
   6372 25                 5371 	.db #0x25	; 37
   6373 30                 5372 	.db #0x30	; 48	'0'
   6374 30                 5373 	.db #0x30	; 48	'0'
   6375 1A                 5374 	.db #0x1A	; 26
   6376 30                 5375 	.db #0x30	; 48	'0'
   6377 30                 5376 	.db #0x30	; 48	'0'
   6378 30                 5377 	.db #0x30	; 48	'0'
   6379 30                 5378 	.db #0x30	; 48	'0'
   637A 30                 5379 	.db #0x30	; 48	'0'
   637B 30                 5380 	.db #0x30	; 48	'0'
   637C 25                 5381 	.db #0x25	; 37
   637D 30                 5382 	.db #0x30	; 48	'0'
   637E 30                 5383 	.db #0x30	; 48	'0'
   637F 1A                 5384 	.db #0x1A	; 26
   6380 30                 5385 	.db #0x30	; 48	'0'
   6381 30                 5386 	.db #0x30	; 48	'0'
   6382 30                 5387 	.db #0x30	; 48	'0'
   6383 30                 5388 	.db #0x30	; 48	'0'
   6384 30                 5389 	.db #0x30	; 48	'0'
   6385 30                 5390 	.db #0x30	; 48	'0'
   6386 25                 5391 	.db #0x25	; 37
   6387 30                 5392 	.db #0x30	; 48	'0'
   6388 30                 5393 	.db #0x30	; 48	'0'
   6389 1A                 5394 	.db #0x1A	; 26
   638A 30                 5395 	.db #0x30	; 48	'0'
   638B 30                 5396 	.db #0x30	; 48	'0'
   638C 30                 5397 	.db #0x30	; 48	'0'
   638D 30                 5398 	.db #0x30	; 48	'0'
   638E 30                 5399 	.db #0x30	; 48	'0'
   638F 30                 5400 	.db #0x30	; 48	'0'
   6390 25                 5401 	.db #0x25	; 37
   6391 30                 5402 	.db #0x30	; 48	'0'
   6392 30                 5403 	.db #0x30	; 48	'0'
   6393 1A                 5404 	.db #0x1A	; 26
   6394 30                 5405 	.db #0x30	; 48	'0'
   6395 30                 5406 	.db #0x30	; 48	'0'
   6396 30                 5407 	.db #0x30	; 48	'0'
   6397 30                 5408 	.db #0x30	; 48	'0'
   6398 30                 5409 	.db #0x30	; 48	'0'
   6399 30                 5410 	.db #0x30	; 48	'0'
   639A 25                 5411 	.db #0x25	; 37
   639B 30                 5412 	.db #0x30	; 48	'0'
   639C 30                 5413 	.db #0x30	; 48	'0'
   639D 1A                 5414 	.db #0x1A	; 26
   639E 30                 5415 	.db #0x30	; 48	'0'
   639F 30                 5416 	.db #0x30	; 48	'0'
   63A0 30                 5417 	.db #0x30	; 48	'0'
   63A1 30                 5418 	.db #0x30	; 48	'0'
   63A2 30                 5419 	.db #0x30	; 48	'0'
   63A3 30                 5420 	.db #0x30	; 48	'0'
   63A4 25                 5421 	.db #0x25	; 37
   63A5 30                 5422 	.db #0x30	; 48	'0'
   63A6 30                 5423 	.db #0x30	; 48	'0'
   63A7 1A                 5424 	.db #0x1A	; 26
   63A8 30                 5425 	.db #0x30	; 48	'0'
   63A9 30                 5426 	.db #0x30	; 48	'0'
   63AA 30                 5427 	.db #0x30	; 48	'0'
   63AB 30                 5428 	.db #0x30	; 48	'0'
   63AC 30                 5429 	.db #0x30	; 48	'0'
   63AD 30                 5430 	.db #0x30	; 48	'0'
   63AE 25                 5431 	.db #0x25	; 37
   63AF 30                 5432 	.db #0x30	; 48	'0'
   63B0 30                 5433 	.db #0x30	; 48	'0'
   63B1 1A                 5434 	.db #0x1A	; 26
   63B2 30                 5435 	.db #0x30	; 48	'0'
   63B3 30                 5436 	.db #0x30	; 48	'0'
   63B4 30                 5437 	.db #0x30	; 48	'0'
   63B5 30                 5438 	.db #0x30	; 48	'0'
   63B6 30                 5439 	.db #0x30	; 48	'0'
   63B7 30                 5440 	.db #0x30	; 48	'0'
   63B8 25                 5441 	.db #0x25	; 37
   63B9 30                 5442 	.db #0x30	; 48	'0'
   63BA 30                 5443 	.db #0x30	; 48	'0'
   63BB 4E                 5444 	.db #0x4E	; 78	'N'
   63BC 30                 5445 	.db #0x30	; 48	'0'
   63BD 64                 5446 	.db #0x64	; 100	'd'
   63BE 30                 5447 	.db #0x30	; 48	'0'
   63BF CC                 5448 	.db #0xCC	; 204
   63C0 98                 5449 	.db #0x98	; 152
   63C1 64                 5450 	.db #0x64	; 100	'd'
   63C2 25                 5451 	.db #0x25	; 37
   63C3 30                 5452 	.db #0x30	; 48	'0'
   63C4 30                 5453 	.db #0x30	; 48	'0'
   63C5 98                 5454 	.db #0x98	; 152
   63C6 98                 5455 	.db #0x98	; 152
   63C7 98                 5456 	.db #0x98	; 152
   63C8 98                 5457 	.db #0x98	; 152
   63C9 30                 5458 	.db #0x30	; 48	'0'
   63CA 98                 5459 	.db #0x98	; 152
   63CB 98                 5460 	.db #0x98	; 152
   63CC 8D                 5461 	.db #0x8D	; 141
   63CD 30                 5462 	.db #0x30	; 48	'0'
   63CE 30                 5463 	.db #0x30	; 48	'0'
   63CF 1A                 5464 	.db #0x1A	; 26
   63D0 98                 5465 	.db #0x98	; 152
   63D1 98                 5466 	.db #0x98	; 152
   63D2 98                 5467 	.db #0x98	; 152
   63D3 30                 5468 	.db #0x30	; 48	'0'
   63D4 98                 5469 	.db #0x98	; 152
   63D5 30                 5470 	.db #0x30	; 48	'0'
   63D6 8D                 5471 	.db #0x8D	; 141
   63D7 30                 5472 	.db #0x30	; 48	'0'
   63D8 30                 5473 	.db #0x30	; 48	'0'
   63D9 4E                 5474 	.db #0x4E	; 78	'N'
   63DA 30                 5475 	.db #0x30	; 48	'0'
   63DB 98                 5476 	.db #0x98	; 152
   63DC 98                 5477 	.db #0x98	; 152
   63DD 30                 5478 	.db #0x30	; 48	'0'
   63DE 98                 5479 	.db #0x98	; 152
   63DF 64                 5480 	.db #0x64	; 100	'd'
   63E0 25                 5481 	.db #0x25	; 37
   63E1 30                 5482 	.db #0x30	; 48	'0'
   63E2 30                 5483 	.db #0x30	; 48	'0'
   63E3 4E                 5484 	.db #0x4E	; 78	'N'
   63E4 30                 5485 	.db #0x30	; 48	'0'
   63E5 98                 5486 	.db #0x98	; 152
   63E6 98                 5487 	.db #0x98	; 152
   63E7 64                 5488 	.db #0x64	; 100	'd'
   63E8 30                 5489 	.db #0x30	; 48	'0'
   63E9 64                 5490 	.db #0x64	; 100	'd'
   63EA 25                 5491 	.db #0x25	; 37
   63EB 30                 5492 	.db #0x30	; 48	'0'
   63EC 30                 5493 	.db #0x30	; 48	'0'
   63ED 1A                 5494 	.db #0x1A	; 26
   63EE 98                 5495 	.db #0x98	; 152
   63EF 98                 5496 	.db #0x98	; 152
   63F0 98                 5497 	.db #0x98	; 152
   63F1 64                 5498 	.db #0x64	; 100	'd'
   63F2 30                 5499 	.db #0x30	; 48	'0'
   63F3 98                 5500 	.db #0x98	; 152
   63F4 25                 5501 	.db #0x25	; 37
   63F5 30                 5502 	.db #0x30	; 48	'0'
   63F6 30                 5503 	.db #0x30	; 48	'0'
   63F7 98                 5504 	.db #0x98	; 152
   63F8 98                 5505 	.db #0x98	; 152
   63F9 98                 5506 	.db #0x98	; 152
   63FA 98                 5507 	.db #0x98	; 152
   63FB 64                 5508 	.db #0x64	; 100	'd'
   63FC 30                 5509 	.db #0x30	; 48	'0'
   63FD 98                 5510 	.db #0x98	; 152
   63FE 25                 5511 	.db #0x25	; 37
   63FF 30                 5512 	.db #0x30	; 48	'0'
   6400 30                 5513 	.db #0x30	; 48	'0'
   6401 4E                 5514 	.db #0x4E	; 78	'N'
   6402 30                 5515 	.db #0x30	; 48	'0'
   6403 64                 5516 	.db #0x64	; 100	'd'
   6404 30                 5517 	.db #0x30	; 48	'0'
   6405 64                 5518 	.db #0x64	; 100	'd'
   6406 30                 5519 	.db #0x30	; 48	'0'
   6407 CC                 5520 	.db #0xCC	; 204
   6408 8D                 5521 	.db #0x8D	; 141
   6409 30                 5522 	.db #0x30	; 48	'0'
   640A 30                 5523 	.db #0x30	; 48	'0'
   640B 1A                 5524 	.db #0x1A	; 26
   640C 30                 5525 	.db #0x30	; 48	'0'
   640D 30                 5526 	.db #0x30	; 48	'0'
   640E 30                 5527 	.db #0x30	; 48	'0'
   640F 30                 5528 	.db #0x30	; 48	'0'
   6410 30                 5529 	.db #0x30	; 48	'0'
   6411 30                 5530 	.db #0x30	; 48	'0'
   6412 25                 5531 	.db #0x25	; 37
   6413 30                 5532 	.db #0x30	; 48	'0'
   6414 30                 5533 	.db #0x30	; 48	'0'
   6415 1A                 5534 	.db #0x1A	; 26
   6416 30                 5535 	.db #0x30	; 48	'0'
   6417 30                 5536 	.db #0x30	; 48	'0'
   6418 30                 5537 	.db #0x30	; 48	'0'
   6419 30                 5538 	.db #0x30	; 48	'0'
   641A 30                 5539 	.db #0x30	; 48	'0'
   641B 30                 5540 	.db #0x30	; 48	'0'
   641C 25                 5541 	.db #0x25	; 37
   641D 30                 5542 	.db #0x30	; 48	'0'
   641E 30                 5543 	.db #0x30	; 48	'0'
   641F 1A                 5544 	.db #0x1A	; 26
   6420 30                 5545 	.db #0x30	; 48	'0'
   6421 30                 5546 	.db #0x30	; 48	'0'
   6422 30                 5547 	.db #0x30	; 48	'0'
   6423 30                 5548 	.db #0x30	; 48	'0'
   6424 30                 5549 	.db #0x30	; 48	'0'
   6425 30                 5550 	.db #0x30	; 48	'0'
   6426 25                 5551 	.db #0x25	; 37
   6427 30                 5552 	.db #0x30	; 48	'0'
   6428 30                 5553 	.db #0x30	; 48	'0'
   6429 1A                 5554 	.db #0x1A	; 26
   642A 30                 5555 	.db #0x30	; 48	'0'
   642B 30                 5556 	.db #0x30	; 48	'0'
   642C 30                 5557 	.db #0x30	; 48	'0'
   642D 30                 5558 	.db #0x30	; 48	'0'
   642E 30                 5559 	.db #0x30	; 48	'0'
   642F 30                 5560 	.db #0x30	; 48	'0'
   6430 25                 5561 	.db #0x25	; 37
   6431 30                 5562 	.db #0x30	; 48	'0'
   6432 30                 5563 	.db #0x30	; 48	'0'
   6433 1A                 5564 	.db #0x1A	; 26
   6434 30                 5565 	.db #0x30	; 48	'0'
   6435 30                 5566 	.db #0x30	; 48	'0'
   6436 30                 5567 	.db #0x30	; 48	'0'
   6437 30                 5568 	.db #0x30	; 48	'0'
   6438 30                 5569 	.db #0x30	; 48	'0'
   6439 30                 5570 	.db #0x30	; 48	'0'
   643A 25                 5571 	.db #0x25	; 37
   643B 30                 5572 	.db #0x30	; 48	'0'
   643C 30                 5573 	.db #0x30	; 48	'0'
   643D 1A                 5574 	.db #0x1A	; 26
   643E 30                 5575 	.db #0x30	; 48	'0'
   643F 30                 5576 	.db #0x30	; 48	'0'
   6440 30                 5577 	.db #0x30	; 48	'0'
   6441 30                 5578 	.db #0x30	; 48	'0'
   6442 30                 5579 	.db #0x30	; 48	'0'
   6443 30                 5580 	.db #0x30	; 48	'0'
   6444 25                 5581 	.db #0x25	; 37
   6445 30                 5582 	.db #0x30	; 48	'0'
   6446 30                 5583 	.db #0x30	; 48	'0'
   6447 1A                 5584 	.db #0x1A	; 26
   6448 30                 5585 	.db #0x30	; 48	'0'
   6449 30                 5586 	.db #0x30	; 48	'0'
   644A 30                 5587 	.db #0x30	; 48	'0'
   644B 30                 5588 	.db #0x30	; 48	'0'
   644C 30                 5589 	.db #0x30	; 48	'0'
   644D 30                 5590 	.db #0x30	; 48	'0'
   644E 25                 5591 	.db #0x25	; 37
   644F 30                 5592 	.db #0x30	; 48	'0'
   6450 30                 5593 	.db #0x30	; 48	'0'
   6451 1A                 5594 	.db #0x1A	; 26
   6452 30                 5595 	.db #0x30	; 48	'0'
   6453 30                 5596 	.db #0x30	; 48	'0'
   6454 30                 5597 	.db #0x30	; 48	'0'
   6455 30                 5598 	.db #0x30	; 48	'0'
   6456 30                 5599 	.db #0x30	; 48	'0'
   6457 30                 5600 	.db #0x30	; 48	'0'
   6458 25                 5601 	.db #0x25	; 37
   6459 30                 5602 	.db #0x30	; 48	'0'
   645A 30                 5603 	.db #0x30	; 48	'0'
   645B 1A                 5604 	.db #0x1A	; 26
   645C 30                 5605 	.db #0x30	; 48	'0'
   645D 30                 5606 	.db #0x30	; 48	'0'
   645E 30                 5607 	.db #0x30	; 48	'0'
   645F 30                 5608 	.db #0x30	; 48	'0'
   6460 30                 5609 	.db #0x30	; 48	'0'
   6461 30                 5610 	.db #0x30	; 48	'0'
   6462 25                 5611 	.db #0x25	; 37
   6463 30                 5612 	.db #0x30	; 48	'0'
   6464 30                 5613 	.db #0x30	; 48	'0'
   6465 1A                 5614 	.db #0x1A	; 26
   6466 30                 5615 	.db #0x30	; 48	'0'
   6467 30                 5616 	.db #0x30	; 48	'0'
   6468 30                 5617 	.db #0x30	; 48	'0'
   6469 30                 5618 	.db #0x30	; 48	'0'
   646A 30                 5619 	.db #0x30	; 48	'0'
   646B 30                 5620 	.db #0x30	; 48	'0'
   646C 25                 5621 	.db #0x25	; 37
   646D 30                 5622 	.db #0x30	; 48	'0'
   646E 30                 5623 	.db #0x30	; 48	'0'
   646F 0F                 5624 	.db #0x0F	; 15
   6470 30                 5625 	.db #0x30	; 48	'0'
   6471 30                 5626 	.db #0x30	; 48	'0'
   6472 30                 5627 	.db #0x30	; 48	'0'
   6473 30                 5628 	.db #0x30	; 48	'0'
   6474 30                 5629 	.db #0x30	; 48	'0'
   6475 30                 5630 	.db #0x30	; 48	'0'
   6476 0F                 5631 	.db #0x0F	; 15
   6477 30                 5632 	.db #0x30	; 48	'0'
   6478 30                 5633 	.db #0x30	; 48	'0'
   6479 25                 5634 	.db #0x25	; 37
   647A 30                 5635 	.db #0x30	; 48	'0'
   647B 30                 5636 	.db #0x30	; 48	'0'
   647C 30                 5637 	.db #0x30	; 48	'0'
   647D 30                 5638 	.db #0x30	; 48	'0'
   647E 30                 5639 	.db #0x30	; 48	'0'
   647F 30                 5640 	.db #0x30	; 48	'0'
   6480 1A                 5641 	.db #0x1A	; 26
   6481 30                 5642 	.db #0x30	; 48	'0'
   6482 30                 5643 	.db #0x30	; 48	'0'
   6483 25                 5644 	.db #0x25	; 37
   6484 0F                 5645 	.db #0x0F	; 15
   6485 0F                 5646 	.db #0x0F	; 15
   6486 0F                 5647 	.db #0x0F	; 15
   6487 0F                 5648 	.db #0x0F	; 15
   6488 0F                 5649 	.db #0x0F	; 15
   6489 0F                 5650 	.db #0x0F	; 15
   648A 1A                 5651 	.db #0x1A	; 26
   648B 30                 5652 	.db #0x30	; 48	'0'
   648C F0                 5653 	.db #0xF0	; 240
   648D 30                 5654 	.db #0x30	; 48	'0'
   648E 30                 5655 	.db #0x30	; 48	'0'
   648F 30                 5656 	.db #0x30	; 48	'0'
   6490 30                 5657 	.db #0x30	; 48	'0'
   6491 30                 5658 	.db #0x30	; 48	'0'
   6492 30                 5659 	.db #0x30	; 48	'0'
   6493 30                 5660 	.db #0x30	; 48	'0'
   6494 30                 5661 	.db #0x30	; 48	'0'
   6495 F0                 5662 	.db #0xF0	; 240
   6496 F0                 5663 	.db #0xF0	; 240
   6497 30                 5664 	.db #0x30	; 48	'0'
   6498 30                 5665 	.db #0x30	; 48	'0'
   6499 30                 5666 	.db #0x30	; 48	'0'
   649A 30                 5667 	.db #0x30	; 48	'0'
   649B 30                 5668 	.db #0x30	; 48	'0'
   649C 30                 5669 	.db #0x30	; 48	'0'
   649D 30                 5670 	.db #0x30	; 48	'0'
   649E 30                 5671 	.db #0x30	; 48	'0'
   649F F0                 5672 	.db #0xF0	; 240
   64A0                    5673 _tile_tiles_14:
   64A0 F0                 5674 	.db #0xF0	; 240
   64A1 30                 5675 	.db #0x30	; 48	'0'
   64A2 30                 5676 	.db #0x30	; 48	'0'
   64A3 30                 5677 	.db #0x30	; 48	'0'
   64A4 30                 5678 	.db #0x30	; 48	'0'
   64A5 30                 5679 	.db #0x30	; 48	'0'
   64A6 30                 5680 	.db #0x30	; 48	'0'
   64A7 30                 5681 	.db #0x30	; 48	'0'
   64A8 30                 5682 	.db #0x30	; 48	'0'
   64A9 F0                 5683 	.db #0xF0	; 240
   64AA F0                 5684 	.db #0xF0	; 240
   64AB 30                 5685 	.db #0x30	; 48	'0'
   64AC 30                 5686 	.db #0x30	; 48	'0'
   64AD 30                 5687 	.db #0x30	; 48	'0'
   64AE 30                 5688 	.db #0x30	; 48	'0'
   64AF 30                 5689 	.db #0x30	; 48	'0'
   64B0 30                 5690 	.db #0x30	; 48	'0'
   64B1 30                 5691 	.db #0x30	; 48	'0'
   64B2 30                 5692 	.db #0x30	; 48	'0'
   64B3 F0                 5693 	.db #0xF0	; 240
   64B4 30                 5694 	.db #0x30	; 48	'0'
   64B5 25                 5695 	.db #0x25	; 37
   64B6 0F                 5696 	.db #0x0F	; 15
   64B7 0F                 5697 	.db #0x0F	; 15
   64B8 0F                 5698 	.db #0x0F	; 15
   64B9 0F                 5699 	.db #0x0F	; 15
   64BA 0F                 5700 	.db #0x0F	; 15
   64BB 0F                 5701 	.db #0x0F	; 15
   64BC 1A                 5702 	.db #0x1A	; 26
   64BD 30                 5703 	.db #0x30	; 48	'0'
   64BE 30                 5704 	.db #0x30	; 48	'0'
   64BF 25                 5705 	.db #0x25	; 37
   64C0 30                 5706 	.db #0x30	; 48	'0'
   64C1 30                 5707 	.db #0x30	; 48	'0'
   64C2 30                 5708 	.db #0x30	; 48	'0'
   64C3 30                 5709 	.db #0x30	; 48	'0'
   64C4 30                 5710 	.db #0x30	; 48	'0'
   64C5 30                 5711 	.db #0x30	; 48	'0'
   64C6 1A                 5712 	.db #0x1A	; 26
   64C7 30                 5713 	.db #0x30	; 48	'0'
   64C8 30                 5714 	.db #0x30	; 48	'0'
   64C9 0F                 5715 	.db #0x0F	; 15
   64CA 30                 5716 	.db #0x30	; 48	'0'
   64CB 30                 5717 	.db #0x30	; 48	'0'
   64CC 30                 5718 	.db #0x30	; 48	'0'
   64CD 30                 5719 	.db #0x30	; 48	'0'
   64CE 30                 5720 	.db #0x30	; 48	'0'
   64CF 30                 5721 	.db #0x30	; 48	'0'
   64D0 0F                 5722 	.db #0x0F	; 15
   64D1 30                 5723 	.db #0x30	; 48	'0'
   64D2 30                 5724 	.db #0x30	; 48	'0'
   64D3 1A                 5725 	.db #0x1A	; 26
   64D4 30                 5726 	.db #0x30	; 48	'0'
   64D5 30                 5727 	.db #0x30	; 48	'0'
   64D6 30                 5728 	.db #0x30	; 48	'0'
   64D7 30                 5729 	.db #0x30	; 48	'0'
   64D8 30                 5730 	.db #0x30	; 48	'0'
   64D9 30                 5731 	.db #0x30	; 48	'0'
   64DA 25                 5732 	.db #0x25	; 37
   64DB 30                 5733 	.db #0x30	; 48	'0'
   64DC 30                 5734 	.db #0x30	; 48	'0'
   64DD 1A                 5735 	.db #0x1A	; 26
   64DE 30                 5736 	.db #0x30	; 48	'0'
   64DF 30                 5737 	.db #0x30	; 48	'0'
   64E0 30                 5738 	.db #0x30	; 48	'0'
   64E1 30                 5739 	.db #0x30	; 48	'0'
   64E2 30                 5740 	.db #0x30	; 48	'0'
   64E3 30                 5741 	.db #0x30	; 48	'0'
   64E4 25                 5742 	.db #0x25	; 37
   64E5 30                 5743 	.db #0x30	; 48	'0'
   64E6 30                 5744 	.db #0x30	; 48	'0'
   64E7 1A                 5745 	.db #0x1A	; 26
   64E8 30                 5746 	.db #0x30	; 48	'0'
   64E9 30                 5747 	.db #0x30	; 48	'0'
   64EA 30                 5748 	.db #0x30	; 48	'0'
   64EB 30                 5749 	.db #0x30	; 48	'0'
   64EC 30                 5750 	.db #0x30	; 48	'0'
   64ED 30                 5751 	.db #0x30	; 48	'0'
   64EE 25                 5752 	.db #0x25	; 37
   64EF 30                 5753 	.db #0x30	; 48	'0'
   64F0 30                 5754 	.db #0x30	; 48	'0'
   64F1 1A                 5755 	.db #0x1A	; 26
   64F2 30                 5756 	.db #0x30	; 48	'0'
   64F3 30                 5757 	.db #0x30	; 48	'0'
   64F4 30                 5758 	.db #0x30	; 48	'0'
   64F5 30                 5759 	.db #0x30	; 48	'0'
   64F6 30                 5760 	.db #0x30	; 48	'0'
   64F7 30                 5761 	.db #0x30	; 48	'0'
   64F8 25                 5762 	.db #0x25	; 37
   64F9 30                 5763 	.db #0x30	; 48	'0'
   64FA 30                 5764 	.db #0x30	; 48	'0'
   64FB 1A                 5765 	.db #0x1A	; 26
   64FC 30                 5766 	.db #0x30	; 48	'0'
   64FD 30                 5767 	.db #0x30	; 48	'0'
   64FE 30                 5768 	.db #0x30	; 48	'0'
   64FF 30                 5769 	.db #0x30	; 48	'0'
   6500 30                 5770 	.db #0x30	; 48	'0'
   6501 30                 5771 	.db #0x30	; 48	'0'
   6502 25                 5772 	.db #0x25	; 37
   6503 30                 5773 	.db #0x30	; 48	'0'
   6504 30                 5774 	.db #0x30	; 48	'0'
   6505 1A                 5775 	.db #0x1A	; 26
   6506 30                 5776 	.db #0x30	; 48	'0'
   6507 30                 5777 	.db #0x30	; 48	'0'
   6508 30                 5778 	.db #0x30	; 48	'0'
   6509 30                 5779 	.db #0x30	; 48	'0'
   650A 30                 5780 	.db #0x30	; 48	'0'
   650B 30                 5781 	.db #0x30	; 48	'0'
   650C 25                 5782 	.db #0x25	; 37
   650D 30                 5783 	.db #0x30	; 48	'0'
   650E 30                 5784 	.db #0x30	; 48	'0'
   650F 1A                 5785 	.db #0x1A	; 26
   6510 30                 5786 	.db #0x30	; 48	'0'
   6511 30                 5787 	.db #0x30	; 48	'0'
   6512 30                 5788 	.db #0x30	; 48	'0'
   6513 30                 5789 	.db #0x30	; 48	'0'
   6514 30                 5790 	.db #0x30	; 48	'0'
   6515 30                 5791 	.db #0x30	; 48	'0'
   6516 25                 5792 	.db #0x25	; 37
   6517 30                 5793 	.db #0x30	; 48	'0'
   6518 30                 5794 	.db #0x30	; 48	'0'
   6519 1A                 5795 	.db #0x1A	; 26
   651A 30                 5796 	.db #0x30	; 48	'0'
   651B 30                 5797 	.db #0x30	; 48	'0'
   651C 30                 5798 	.db #0x30	; 48	'0'
   651D 30                 5799 	.db #0x30	; 48	'0'
   651E 30                 5800 	.db #0x30	; 48	'0'
   651F 30                 5801 	.db #0x30	; 48	'0'
   6520 25                 5802 	.db #0x25	; 37
   6521 30                 5803 	.db #0x30	; 48	'0'
   6522 30                 5804 	.db #0x30	; 48	'0'
   6523 1A                 5805 	.db #0x1A	; 26
   6524 30                 5806 	.db #0x30	; 48	'0'
   6525 30                 5807 	.db #0x30	; 48	'0'
   6526 30                 5808 	.db #0x30	; 48	'0'
   6527 30                 5809 	.db #0x30	; 48	'0'
   6528 30                 5810 	.db #0x30	; 48	'0'
   6529 30                 5811 	.db #0x30	; 48	'0'
   652A 25                 5812 	.db #0x25	; 37
   652B 30                 5813 	.db #0x30	; 48	'0'
   652C 30                 5814 	.db #0x30	; 48	'0'
   652D 1A                 5815 	.db #0x1A	; 26
   652E 30                 5816 	.db #0x30	; 48	'0'
   652F 30                 5817 	.db #0x30	; 48	'0'
   6530 30                 5818 	.db #0x30	; 48	'0'
   6531 30                 5819 	.db #0x30	; 48	'0'
   6532 30                 5820 	.db #0x30	; 48	'0'
   6533 30                 5821 	.db #0x30	; 48	'0'
   6534 25                 5822 	.db #0x25	; 37
   6535 30                 5823 	.db #0x30	; 48	'0'
   6536 30                 5824 	.db #0x30	; 48	'0'
   6537 1A                 5825 	.db #0x1A	; 26
   6538 30                 5826 	.db #0x30	; 48	'0'
   6539 30                 5827 	.db #0x30	; 48	'0'
   653A 30                 5828 	.db #0x30	; 48	'0'
   653B 30                 5829 	.db #0x30	; 48	'0'
   653C 30                 5830 	.db #0x30	; 48	'0'
   653D 30                 5831 	.db #0x30	; 48	'0'
   653E 25                 5832 	.db #0x25	; 37
   653F 30                 5833 	.db #0x30	; 48	'0'
   6540 30                 5834 	.db #0x30	; 48	'0'
   6541 1A                 5835 	.db #0x1A	; 26
   6542 30                 5836 	.db #0x30	; 48	'0'
   6543 30                 5837 	.db #0x30	; 48	'0'
   6544 30                 5838 	.db #0x30	; 48	'0'
   6545 30                 5839 	.db #0x30	; 48	'0'
   6546 30                 5840 	.db #0x30	; 48	'0'
   6547 30                 5841 	.db #0x30	; 48	'0'
   6548 25                 5842 	.db #0x25	; 37
   6549 30                 5843 	.db #0x30	; 48	'0'
   654A 30                 5844 	.db #0x30	; 48	'0'
   654B 4E                 5845 	.db #0x4E	; 78	'N'
   654C 98                 5846 	.db #0x98	; 152
   654D 64                 5847 	.db #0x64	; 100	'd'
   654E 30                 5848 	.db #0x30	; 48	'0'
   654F 30                 5849 	.db #0x30	; 48	'0'
   6550 98                 5850 	.db #0x98	; 152
   6551 30                 5851 	.db #0x30	; 48	'0'
   6552 8D                 5852 	.db #0x8D	; 141
   6553 30                 5853 	.db #0x30	; 48	'0'
   6554 30                 5854 	.db #0x30	; 48	'0'
   6555 98                 5855 	.db #0x98	; 152
   6556 30                 5856 	.db #0x30	; 48	'0'
   6557 CC                 5857 	.db #0xCC	; 204
   6558 30                 5858 	.db #0x30	; 48	'0'
   6559 64                 5859 	.db #0x64	; 100	'd'
   655A 98                 5860 	.db #0x98	; 152
   655B 64                 5861 	.db #0x64	; 100	'd'
   655C 8D                 5862 	.db #0x8D	; 141
   655D 30                 5863 	.db #0x30	; 48	'0'
   655E 30                 5864 	.db #0x30	; 48	'0'
   655F 98                 5865 	.db #0x98	; 152
   6560 30                 5866 	.db #0x30	; 48	'0'
   6561 64                 5867 	.db #0x64	; 100	'd'
   6562 30                 5868 	.db #0x30	; 48	'0'
   6563 64                 5869 	.db #0x64	; 100	'd'
   6564 98                 5870 	.db #0x98	; 152
   6565 64                 5871 	.db #0x64	; 100	'd'
   6566 8D                 5872 	.db #0x8D	; 141
   6567 30                 5873 	.db #0x30	; 48	'0'
   6568 30                 5874 	.db #0x30	; 48	'0'
   6569 CC                 5875 	.db #0xCC	; 204
   656A 30                 5876 	.db #0x30	; 48	'0'
   656B 64                 5877 	.db #0x64	; 100	'd'
   656C 30                 5878 	.db #0x30	; 48	'0'
   656D 98                 5879 	.db #0x98	; 152
   656E 98                 5880 	.db #0x98	; 152
   656F 98                 5881 	.db #0x98	; 152
   6570 8D                 5882 	.db #0x8D	; 141
   6571 30                 5883 	.db #0x30	; 48	'0'
   6572 30                 5884 	.db #0x30	; 48	'0'
   6573 98                 5885 	.db #0x98	; 152
   6574 98                 5886 	.db #0x98	; 152
   6575 64                 5887 	.db #0x64	; 100	'd'
   6576 30                 5888 	.db #0x30	; 48	'0'
   6577 CC                 5889 	.db #0xCC	; 204
   6578 98                 5890 	.db #0x98	; 152
   6579 CC                 5891 	.db #0xCC	; 204
   657A 8D                 5892 	.db #0x8D	; 141
   657B 30                 5893 	.db #0x30	; 48	'0'
   657C 30                 5894 	.db #0x30	; 48	'0'
   657D 98                 5895 	.db #0x98	; 152
   657E 98                 5896 	.db #0x98	; 152
   657F 64                 5897 	.db #0x64	; 100	'd'
   6580 30                 5898 	.db #0x30	; 48	'0'
   6581 30                 5899 	.db #0x30	; 48	'0'
   6582 98                 5900 	.db #0x98	; 152
   6583 30                 5901 	.db #0x30	; 48	'0'
   6584 8D                 5902 	.db #0x8D	; 141
   6585 30                 5903 	.db #0x30	; 48	'0'
   6586 30                 5904 	.db #0x30	; 48	'0'
   6587 98                 5905 	.db #0x98	; 152
   6588 98                 5906 	.db #0x98	; 152
   6589 64                 5907 	.db #0x64	; 100	'd'
   658A 30                 5908 	.db #0x30	; 48	'0'
   658B 30                 5909 	.db #0x30	; 48	'0'
   658C 98                 5910 	.db #0x98	; 152
   658D 30                 5911 	.db #0x30	; 48	'0'
   658E 8D                 5912 	.db #0x8D	; 141
   658F 30                 5913 	.db #0x30	; 48	'0'
   6590 30                 5914 	.db #0x30	; 48	'0'
   6591 4E                 5915 	.db #0x4E	; 78	'N'
   6592 30                 5916 	.db #0x30	; 48	'0'
   6593 CC                 5917 	.db #0xCC	; 204
   6594 98                 5918 	.db #0x98	; 152
   6595 30                 5919 	.db #0x30	; 48	'0'
   6596 98                 5920 	.db #0x98	; 152
   6597 30                 5921 	.db #0x30	; 48	'0'
   6598 8D                 5922 	.db #0x8D	; 141
   6599 30                 5923 	.db #0x30	; 48	'0'
   659A 30                 5924 	.db #0x30	; 48	'0'
   659B 1A                 5925 	.db #0x1A	; 26
   659C 30                 5926 	.db #0x30	; 48	'0'
   659D 30                 5927 	.db #0x30	; 48	'0'
   659E 30                 5928 	.db #0x30	; 48	'0'
   659F 30                 5929 	.db #0x30	; 48	'0'
   65A0 30                 5930 	.db #0x30	; 48	'0'
   65A1 30                 5931 	.db #0x30	; 48	'0'
   65A2 25                 5932 	.db #0x25	; 37
   65A3 30                 5933 	.db #0x30	; 48	'0'
   65A4 30                 5934 	.db #0x30	; 48	'0'
   65A5 1A                 5935 	.db #0x1A	; 26
   65A6 30                 5936 	.db #0x30	; 48	'0'
   65A7 30                 5937 	.db #0x30	; 48	'0'
   65A8 30                 5938 	.db #0x30	; 48	'0'
   65A9 30                 5939 	.db #0x30	; 48	'0'
   65AA 30                 5940 	.db #0x30	; 48	'0'
   65AB 30                 5941 	.db #0x30	; 48	'0'
   65AC 25                 5942 	.db #0x25	; 37
   65AD 30                 5943 	.db #0x30	; 48	'0'
   65AE 30                 5944 	.db #0x30	; 48	'0'
   65AF 1A                 5945 	.db #0x1A	; 26
   65B0 30                 5946 	.db #0x30	; 48	'0'
   65B1 30                 5947 	.db #0x30	; 48	'0'
   65B2 30                 5948 	.db #0x30	; 48	'0'
   65B3 30                 5949 	.db #0x30	; 48	'0'
   65B4 30                 5950 	.db #0x30	; 48	'0'
   65B5 30                 5951 	.db #0x30	; 48	'0'
   65B6 25                 5952 	.db #0x25	; 37
   65B7 30                 5953 	.db #0x30	; 48	'0'
   65B8 30                 5954 	.db #0x30	; 48	'0'
   65B9 1A                 5955 	.db #0x1A	; 26
   65BA 30                 5956 	.db #0x30	; 48	'0'
   65BB 30                 5957 	.db #0x30	; 48	'0'
   65BC 30                 5958 	.db #0x30	; 48	'0'
   65BD 30                 5959 	.db #0x30	; 48	'0'
   65BE 30                 5960 	.db #0x30	; 48	'0'
   65BF 30                 5961 	.db #0x30	; 48	'0'
   65C0 25                 5962 	.db #0x25	; 37
   65C1 30                 5963 	.db #0x30	; 48	'0'
   65C2 30                 5964 	.db #0x30	; 48	'0'
   65C3 1A                 5965 	.db #0x1A	; 26
   65C4 30                 5966 	.db #0x30	; 48	'0'
   65C5 30                 5967 	.db #0x30	; 48	'0'
   65C6 30                 5968 	.db #0x30	; 48	'0'
   65C7 30                 5969 	.db #0x30	; 48	'0'
   65C8 30                 5970 	.db #0x30	; 48	'0'
   65C9 30                 5971 	.db #0x30	; 48	'0'
   65CA 25                 5972 	.db #0x25	; 37
   65CB 30                 5973 	.db #0x30	; 48	'0'
   65CC 30                 5974 	.db #0x30	; 48	'0'
   65CD 1A                 5975 	.db #0x1A	; 26
   65CE 30                 5976 	.db #0x30	; 48	'0'
   65CF 30                 5977 	.db #0x30	; 48	'0'
   65D0 30                 5978 	.db #0x30	; 48	'0'
   65D1 30                 5979 	.db #0x30	; 48	'0'
   65D2 30                 5980 	.db #0x30	; 48	'0'
   65D3 30                 5981 	.db #0x30	; 48	'0'
   65D4 25                 5982 	.db #0x25	; 37
   65D5 30                 5983 	.db #0x30	; 48	'0'
   65D6 30                 5984 	.db #0x30	; 48	'0'
   65D7 1A                 5985 	.db #0x1A	; 26
   65D8 30                 5986 	.db #0x30	; 48	'0'
   65D9 30                 5987 	.db #0x30	; 48	'0'
   65DA 30                 5988 	.db #0x30	; 48	'0'
   65DB 30                 5989 	.db #0x30	; 48	'0'
   65DC 30                 5990 	.db #0x30	; 48	'0'
   65DD 30                 5991 	.db #0x30	; 48	'0'
   65DE 25                 5992 	.db #0x25	; 37
   65DF 30                 5993 	.db #0x30	; 48	'0'
   65E0 30                 5994 	.db #0x30	; 48	'0'
   65E1 1A                 5995 	.db #0x1A	; 26
   65E2 30                 5996 	.db #0x30	; 48	'0'
   65E3 30                 5997 	.db #0x30	; 48	'0'
   65E4 30                 5998 	.db #0x30	; 48	'0'
   65E5 30                 5999 	.db #0x30	; 48	'0'
   65E6 30                 6000 	.db #0x30	; 48	'0'
   65E7 30                 6001 	.db #0x30	; 48	'0'
   65E8 25                 6002 	.db #0x25	; 37
   65E9 30                 6003 	.db #0x30	; 48	'0'
   65EA 30                 6004 	.db #0x30	; 48	'0'
   65EB 1A                 6005 	.db #0x1A	; 26
   65EC 30                 6006 	.db #0x30	; 48	'0'
   65ED 30                 6007 	.db #0x30	; 48	'0'
   65EE 30                 6008 	.db #0x30	; 48	'0'
   65EF 30                 6009 	.db #0x30	; 48	'0'
   65F0 30                 6010 	.db #0x30	; 48	'0'
   65F1 30                 6011 	.db #0x30	; 48	'0'
   65F2 25                 6012 	.db #0x25	; 37
   65F3 30                 6013 	.db #0x30	; 48	'0'
   65F4 30                 6014 	.db #0x30	; 48	'0'
   65F5 1A                 6015 	.db #0x1A	; 26
   65F6 30                 6016 	.db #0x30	; 48	'0'
   65F7 30                 6017 	.db #0x30	; 48	'0'
   65F8 30                 6018 	.db #0x30	; 48	'0'
   65F9 30                 6019 	.db #0x30	; 48	'0'
   65FA 30                 6020 	.db #0x30	; 48	'0'
   65FB 30                 6021 	.db #0x30	; 48	'0'
   65FC 25                 6022 	.db #0x25	; 37
   65FD 30                 6023 	.db #0x30	; 48	'0'
   65FE 30                 6024 	.db #0x30	; 48	'0'
   65FF 0F                 6025 	.db #0x0F	; 15
   6600 30                 6026 	.db #0x30	; 48	'0'
   6601 30                 6027 	.db #0x30	; 48	'0'
   6602 30                 6028 	.db #0x30	; 48	'0'
   6603 30                 6029 	.db #0x30	; 48	'0'
   6604 30                 6030 	.db #0x30	; 48	'0'
   6605 30                 6031 	.db #0x30	; 48	'0'
   6606 0F                 6032 	.db #0x0F	; 15
   6607 30                 6033 	.db #0x30	; 48	'0'
   6608 30                 6034 	.db #0x30	; 48	'0'
   6609 25                 6035 	.db #0x25	; 37
   660A 30                 6036 	.db #0x30	; 48	'0'
   660B 30                 6037 	.db #0x30	; 48	'0'
   660C 30                 6038 	.db #0x30	; 48	'0'
   660D 30                 6039 	.db #0x30	; 48	'0'
   660E 30                 6040 	.db #0x30	; 48	'0'
   660F 30                 6041 	.db #0x30	; 48	'0'
   6610 1A                 6042 	.db #0x1A	; 26
   6611 30                 6043 	.db #0x30	; 48	'0'
   6612 30                 6044 	.db #0x30	; 48	'0'
   6613 25                 6045 	.db #0x25	; 37
   6614 0F                 6046 	.db #0x0F	; 15
   6615 0F                 6047 	.db #0x0F	; 15
   6616 0F                 6048 	.db #0x0F	; 15
   6617 0F                 6049 	.db #0x0F	; 15
   6618 0F                 6050 	.db #0x0F	; 15
   6619 0F                 6051 	.db #0x0F	; 15
   661A 1A                 6052 	.db #0x1A	; 26
   661B 30                 6053 	.db #0x30	; 48	'0'
   661C F0                 6054 	.db #0xF0	; 240
   661D 30                 6055 	.db #0x30	; 48	'0'
   661E 30                 6056 	.db #0x30	; 48	'0'
   661F 30                 6057 	.db #0x30	; 48	'0'
   6620 30                 6058 	.db #0x30	; 48	'0'
   6621 30                 6059 	.db #0x30	; 48	'0'
   6622 30                 6060 	.db #0x30	; 48	'0'
   6623 30                 6061 	.db #0x30	; 48	'0'
   6624 30                 6062 	.db #0x30	; 48	'0'
   6625 F0                 6063 	.db #0xF0	; 240
   6626 F0                 6064 	.db #0xF0	; 240
   6627 30                 6065 	.db #0x30	; 48	'0'
   6628 30                 6066 	.db #0x30	; 48	'0'
   6629 30                 6067 	.db #0x30	; 48	'0'
   662A 30                 6068 	.db #0x30	; 48	'0'
   662B 30                 6069 	.db #0x30	; 48	'0'
   662C 30                 6070 	.db #0x30	; 48	'0'
   662D 30                 6071 	.db #0x30	; 48	'0'
   662E 30                 6072 	.db #0x30	; 48	'0'
   662F F0                 6073 	.db #0xF0	; 240
   6630                    6074 _tile_tiles_15:
   6630 F0                 6075 	.db #0xF0	; 240
   6631 0F                 6076 	.db #0x0F	; 15
   6632 0F                 6077 	.db #0x0F	; 15
   6633 0F                 6078 	.db #0x0F	; 15
   6634 0F                 6079 	.db #0x0F	; 15
   6635 0F                 6080 	.db #0x0F	; 15
   6636 0F                 6081 	.db #0x0F	; 15
   6637 0F                 6082 	.db #0x0F	; 15
   6638 0F                 6083 	.db #0x0F	; 15
   6639 F0                 6084 	.db #0xF0	; 240
   663A F0                 6085 	.db #0xF0	; 240
   663B 0F                 6086 	.db #0x0F	; 15
   663C 0F                 6087 	.db #0x0F	; 15
   663D 0F                 6088 	.db #0x0F	; 15
   663E 0F                 6089 	.db #0x0F	; 15
   663F 0F                 6090 	.db #0x0F	; 15
   6640 0F                 6091 	.db #0x0F	; 15
   6641 0F                 6092 	.db #0x0F	; 15
   6642 0F                 6093 	.db #0x0F	; 15
   6643 F0                 6094 	.db #0xF0	; 240
   6644 0F                 6095 	.db #0x0F	; 15
   6645 0F                 6096 	.db #0x0F	; 15
   6646 0F                 6097 	.db #0x0F	; 15
   6647 0F                 6098 	.db #0x0F	; 15
   6648 0F                 6099 	.db #0x0F	; 15
   6649 0F                 6100 	.db #0x0F	; 15
   664A 0F                 6101 	.db #0x0F	; 15
   664B 0F                 6102 	.db #0x0F	; 15
   664C 0F                 6103 	.db #0x0F	; 15
   664D 0F                 6104 	.db #0x0F	; 15
   664E 0F                 6105 	.db #0x0F	; 15
   664F 0F                 6106 	.db #0x0F	; 15
   6650 0F                 6107 	.db #0x0F	; 15
   6651 0F                 6108 	.db #0x0F	; 15
   6652 0F                 6109 	.db #0x0F	; 15
   6653 0F                 6110 	.db #0x0F	; 15
   6654 0F                 6111 	.db #0x0F	; 15
   6655 0F                 6112 	.db #0x0F	; 15
   6656 0F                 6113 	.db #0x0F	; 15
   6657 0F                 6114 	.db #0x0F	; 15
   6658 0F                 6115 	.db #0x0F	; 15
   6659 0F                 6116 	.db #0x0F	; 15
   665A 0F                 6117 	.db #0x0F	; 15
   665B 0F                 6118 	.db #0x0F	; 15
   665C 0F                 6119 	.db #0x0F	; 15
   665D 0F                 6120 	.db #0x0F	; 15
   665E 0F                 6121 	.db #0x0F	; 15
   665F 0F                 6122 	.db #0x0F	; 15
   6660 0F                 6123 	.db #0x0F	; 15
   6661 0F                 6124 	.db #0x0F	; 15
   6662 0F                 6125 	.db #0x0F	; 15
   6663 0F                 6126 	.db #0x0F	; 15
   6664 0F                 6127 	.db #0x0F	; 15
   6665 0F                 6128 	.db #0x0F	; 15
   6666 0F                 6129 	.db #0x0F	; 15
   6667 0F                 6130 	.db #0x0F	; 15
   6668 0F                 6131 	.db #0x0F	; 15
   6669 0F                 6132 	.db #0x0F	; 15
   666A 0F                 6133 	.db #0x0F	; 15
   666B 0F                 6134 	.db #0x0F	; 15
   666C 0F                 6135 	.db #0x0F	; 15
   666D 0F                 6136 	.db #0x0F	; 15
   666E 0F                 6137 	.db #0x0F	; 15
   666F 0F                 6138 	.db #0x0F	; 15
   6670 0F                 6139 	.db #0x0F	; 15
   6671 0F                 6140 	.db #0x0F	; 15
   6672 0F                 6141 	.db #0x0F	; 15
   6673 0F                 6142 	.db #0x0F	; 15
   6674 0F                 6143 	.db #0x0F	; 15
   6675 0F                 6144 	.db #0x0F	; 15
   6676 0F                 6145 	.db #0x0F	; 15
   6677 0F                 6146 	.db #0x0F	; 15
   6678 0F                 6147 	.db #0x0F	; 15
   6679 0F                 6148 	.db #0x0F	; 15
   667A 0F                 6149 	.db #0x0F	; 15
   667B 0F                 6150 	.db #0x0F	; 15
   667C 0F                 6151 	.db #0x0F	; 15
   667D 0F                 6152 	.db #0x0F	; 15
   667E 0F                 6153 	.db #0x0F	; 15
   667F 0F                 6154 	.db #0x0F	; 15
   6680 0F                 6155 	.db #0x0F	; 15
   6681 0F                 6156 	.db #0x0F	; 15
   6682 0F                 6157 	.db #0x0F	; 15
   6683 0F                 6158 	.db #0x0F	; 15
   6684 0F                 6159 	.db #0x0F	; 15
   6685 0F                 6160 	.db #0x0F	; 15
   6686 0F                 6161 	.db #0x0F	; 15
   6687 0F                 6162 	.db #0x0F	; 15
   6688 0F                 6163 	.db #0x0F	; 15
   6689 0F                 6164 	.db #0x0F	; 15
   668A 0F                 6165 	.db #0x0F	; 15
   668B 0F                 6166 	.db #0x0F	; 15
   668C 0F                 6167 	.db #0x0F	; 15
   668D 0F                 6168 	.db #0x0F	; 15
   668E 0F                 6169 	.db #0x0F	; 15
   668F 0F                 6170 	.db #0x0F	; 15
   6690 0F                 6171 	.db #0x0F	; 15
   6691 0F                 6172 	.db #0x0F	; 15
   6692 0F                 6173 	.db #0x0F	; 15
   6693 0F                 6174 	.db #0x0F	; 15
   6694 0F                 6175 	.db #0x0F	; 15
   6695 0F                 6176 	.db #0x0F	; 15
   6696 0F                 6177 	.db #0x0F	; 15
   6697 0F                 6178 	.db #0x0F	; 15
   6698 0F                 6179 	.db #0x0F	; 15
   6699 0F                 6180 	.db #0x0F	; 15
   669A 0F                 6181 	.db #0x0F	; 15
   669B 0F                 6182 	.db #0x0F	; 15
   669C 0F                 6183 	.db #0x0F	; 15
   669D 0F                 6184 	.db #0x0F	; 15
   669E 0F                 6185 	.db #0x0F	; 15
   669F 0F                 6186 	.db #0x0F	; 15
   66A0 0F                 6187 	.db #0x0F	; 15
   66A1 0F                 6188 	.db #0x0F	; 15
   66A2 0F                 6189 	.db #0x0F	; 15
   66A3 0F                 6190 	.db #0x0F	; 15
   66A4 0F                 6191 	.db #0x0F	; 15
   66A5 0F                 6192 	.db #0x0F	; 15
   66A6 0F                 6193 	.db #0x0F	; 15
   66A7 0F                 6194 	.db #0x0F	; 15
   66A8 0F                 6195 	.db #0x0F	; 15
   66A9 0F                 6196 	.db #0x0F	; 15
   66AA 0F                 6197 	.db #0x0F	; 15
   66AB 0F                 6198 	.db #0x0F	; 15
   66AC 0F                 6199 	.db #0x0F	; 15
   66AD 0F                 6200 	.db #0x0F	; 15
   66AE 0F                 6201 	.db #0x0F	; 15
   66AF 0F                 6202 	.db #0x0F	; 15
   66B0 0F                 6203 	.db #0x0F	; 15
   66B1 0F                 6204 	.db #0x0F	; 15
   66B2 0F                 6205 	.db #0x0F	; 15
   66B3 0F                 6206 	.db #0x0F	; 15
   66B4 0F                 6207 	.db #0x0F	; 15
   66B5 0F                 6208 	.db #0x0F	; 15
   66B6 0F                 6209 	.db #0x0F	; 15
   66B7 0F                 6210 	.db #0x0F	; 15
   66B8 0F                 6211 	.db #0x0F	; 15
   66B9 0F                 6212 	.db #0x0F	; 15
   66BA 0F                 6213 	.db #0x0F	; 15
   66BB 0F                 6214 	.db #0x0F	; 15
   66BC 0F                 6215 	.db #0x0F	; 15
   66BD 0F                 6216 	.db #0x0F	; 15
   66BE 0F                 6217 	.db #0x0F	; 15
   66BF 0F                 6218 	.db #0x0F	; 15
   66C0 0F                 6219 	.db #0x0F	; 15
   66C1 0F                 6220 	.db #0x0F	; 15
   66C2 0F                 6221 	.db #0x0F	; 15
   66C3 0F                 6222 	.db #0x0F	; 15
   66C4 0F                 6223 	.db #0x0F	; 15
   66C5 0F                 6224 	.db #0x0F	; 15
   66C6 0F                 6225 	.db #0x0F	; 15
   66C7 0F                 6226 	.db #0x0F	; 15
   66C8 0F                 6227 	.db #0x0F	; 15
   66C9 0F                 6228 	.db #0x0F	; 15
   66CA 0F                 6229 	.db #0x0F	; 15
   66CB 0F                 6230 	.db #0x0F	; 15
   66CC 0F                 6231 	.db #0x0F	; 15
   66CD 0F                 6232 	.db #0x0F	; 15
   66CE 0F                 6233 	.db #0x0F	; 15
   66CF 0F                 6234 	.db #0x0F	; 15
   66D0 0F                 6235 	.db #0x0F	; 15
   66D1 0F                 6236 	.db #0x0F	; 15
   66D2 0F                 6237 	.db #0x0F	; 15
   66D3 0F                 6238 	.db #0x0F	; 15
   66D4 0F                 6239 	.db #0x0F	; 15
   66D5 0F                 6240 	.db #0x0F	; 15
   66D6 0F                 6241 	.db #0x0F	; 15
   66D7 0F                 6242 	.db #0x0F	; 15
   66D8 0F                 6243 	.db #0x0F	; 15
   66D9 0F                 6244 	.db #0x0F	; 15
   66DA 0F                 6245 	.db #0x0F	; 15
   66DB 0F                 6246 	.db #0x0F	; 15
   66DC 0F                 6247 	.db #0x0F	; 15
   66DD 0F                 6248 	.db #0x0F	; 15
   66DE 0F                 6249 	.db #0x0F	; 15
   66DF 0F                 6250 	.db #0x0F	; 15
   66E0 0F                 6251 	.db #0x0F	; 15
   66E1 0F                 6252 	.db #0x0F	; 15
   66E2 0F                 6253 	.db #0x0F	; 15
   66E3 0F                 6254 	.db #0x0F	; 15
   66E4 0F                 6255 	.db #0x0F	; 15
   66E5 0F                 6256 	.db #0x0F	; 15
   66E6 0F                 6257 	.db #0x0F	; 15
   66E7 0F                 6258 	.db #0x0F	; 15
   66E8 0F                 6259 	.db #0x0F	; 15
   66E9 0F                 6260 	.db #0x0F	; 15
   66EA 0F                 6261 	.db #0x0F	; 15
   66EB 0F                 6262 	.db #0x0F	; 15
   66EC 0F                 6263 	.db #0x0F	; 15
   66ED 0F                 6264 	.db #0x0F	; 15
   66EE 0F                 6265 	.db #0x0F	; 15
   66EF 0F                 6266 	.db #0x0F	; 15
   66F0 0F                 6267 	.db #0x0F	; 15
   66F1 0F                 6268 	.db #0x0F	; 15
   66F2 0F                 6269 	.db #0x0F	; 15
   66F3 0F                 6270 	.db #0x0F	; 15
   66F4 0F                 6271 	.db #0x0F	; 15
   66F5 0F                 6272 	.db #0x0F	; 15
   66F6 0F                 6273 	.db #0x0F	; 15
   66F7 0F                 6274 	.db #0x0F	; 15
   66F8 0F                 6275 	.db #0x0F	; 15
   66F9 0F                 6276 	.db #0x0F	; 15
   66FA 0F                 6277 	.db #0x0F	; 15
   66FB 0F                 6278 	.db #0x0F	; 15
   66FC 0F                 6279 	.db #0x0F	; 15
   66FD 0F                 6280 	.db #0x0F	; 15
   66FE 0F                 6281 	.db #0x0F	; 15
   66FF 0F                 6282 	.db #0x0F	; 15
   6700 0F                 6283 	.db #0x0F	; 15
   6701 0F                 6284 	.db #0x0F	; 15
   6702 0F                 6285 	.db #0x0F	; 15
   6703 0F                 6286 	.db #0x0F	; 15
   6704 0F                 6287 	.db #0x0F	; 15
   6705 0F                 6288 	.db #0x0F	; 15
   6706 0F                 6289 	.db #0x0F	; 15
   6707 0F                 6290 	.db #0x0F	; 15
   6708 0F                 6291 	.db #0x0F	; 15
   6709 0F                 6292 	.db #0x0F	; 15
   670A 0F                 6293 	.db #0x0F	; 15
   670B 0F                 6294 	.db #0x0F	; 15
   670C 0F                 6295 	.db #0x0F	; 15
   670D 0F                 6296 	.db #0x0F	; 15
   670E 0F                 6297 	.db #0x0F	; 15
   670F 0F                 6298 	.db #0x0F	; 15
   6710 0F                 6299 	.db #0x0F	; 15
   6711 0F                 6300 	.db #0x0F	; 15
   6712 0F                 6301 	.db #0x0F	; 15
   6713 0F                 6302 	.db #0x0F	; 15
   6714 0F                 6303 	.db #0x0F	; 15
   6715 0F                 6304 	.db #0x0F	; 15
   6716 0F                 6305 	.db #0x0F	; 15
   6717 0F                 6306 	.db #0x0F	; 15
   6718 0F                 6307 	.db #0x0F	; 15
   6719 0F                 6308 	.db #0x0F	; 15
   671A 0F                 6309 	.db #0x0F	; 15
   671B 0F                 6310 	.db #0x0F	; 15
   671C 0F                 6311 	.db #0x0F	; 15
   671D 0F                 6312 	.db #0x0F	; 15
   671E 0F                 6313 	.db #0x0F	; 15
   671F 0F                 6314 	.db #0x0F	; 15
   6720 0F                 6315 	.db #0x0F	; 15
   6721 0F                 6316 	.db #0x0F	; 15
   6722 0F                 6317 	.db #0x0F	; 15
   6723 0F                 6318 	.db #0x0F	; 15
   6724 0F                 6319 	.db #0x0F	; 15
   6725 0F                 6320 	.db #0x0F	; 15
   6726 0F                 6321 	.db #0x0F	; 15
   6727 0F                 6322 	.db #0x0F	; 15
   6728 0F                 6323 	.db #0x0F	; 15
   6729 0F                 6324 	.db #0x0F	; 15
   672A 0F                 6325 	.db #0x0F	; 15
   672B 0F                 6326 	.db #0x0F	; 15
   672C 0F                 6327 	.db #0x0F	; 15
   672D 0F                 6328 	.db #0x0F	; 15
   672E 0F                 6329 	.db #0x0F	; 15
   672F 0F                 6330 	.db #0x0F	; 15
   6730 0F                 6331 	.db #0x0F	; 15
   6731 0F                 6332 	.db #0x0F	; 15
   6732 0F                 6333 	.db #0x0F	; 15
   6733 0F                 6334 	.db #0x0F	; 15
   6734 0F                 6335 	.db #0x0F	; 15
   6735 0F                 6336 	.db #0x0F	; 15
   6736 0F                 6337 	.db #0x0F	; 15
   6737 0F                 6338 	.db #0x0F	; 15
   6738 0F                 6339 	.db #0x0F	; 15
   6739 0F                 6340 	.db #0x0F	; 15
   673A 0F                 6341 	.db #0x0F	; 15
   673B 0F                 6342 	.db #0x0F	; 15
   673C 0F                 6343 	.db #0x0F	; 15
   673D 0F                 6344 	.db #0x0F	; 15
   673E 0F                 6345 	.db #0x0F	; 15
   673F 0F                 6346 	.db #0x0F	; 15
   6740 0F                 6347 	.db #0x0F	; 15
   6741 0F                 6348 	.db #0x0F	; 15
   6742 0F                 6349 	.db #0x0F	; 15
   6743 0F                 6350 	.db #0x0F	; 15
   6744 0F                 6351 	.db #0x0F	; 15
   6745 0F                 6352 	.db #0x0F	; 15
   6746 0F                 6353 	.db #0x0F	; 15
   6747 0F                 6354 	.db #0x0F	; 15
   6748 0F                 6355 	.db #0x0F	; 15
   6749 0F                 6356 	.db #0x0F	; 15
   674A 0F                 6357 	.db #0x0F	; 15
   674B 0F                 6358 	.db #0x0F	; 15
   674C 0F                 6359 	.db #0x0F	; 15
   674D 0F                 6360 	.db #0x0F	; 15
   674E 0F                 6361 	.db #0x0F	; 15
   674F 0F                 6362 	.db #0x0F	; 15
   6750 0F                 6363 	.db #0x0F	; 15
   6751 0F                 6364 	.db #0x0F	; 15
   6752 0F                 6365 	.db #0x0F	; 15
   6753 0F                 6366 	.db #0x0F	; 15
   6754 0F                 6367 	.db #0x0F	; 15
   6755 0F                 6368 	.db #0x0F	; 15
   6756 0F                 6369 	.db #0x0F	; 15
   6757 0F                 6370 	.db #0x0F	; 15
   6758 0F                 6371 	.db #0x0F	; 15
   6759 0F                 6372 	.db #0x0F	; 15
   675A 0F                 6373 	.db #0x0F	; 15
   675B 0F                 6374 	.db #0x0F	; 15
   675C 0F                 6375 	.db #0x0F	; 15
   675D 0F                 6376 	.db #0x0F	; 15
   675E 0F                 6377 	.db #0x0F	; 15
   675F 0F                 6378 	.db #0x0F	; 15
   6760 0F                 6379 	.db #0x0F	; 15
   6761 0F                 6380 	.db #0x0F	; 15
   6762 0F                 6381 	.db #0x0F	; 15
   6763 0F                 6382 	.db #0x0F	; 15
   6764 0F                 6383 	.db #0x0F	; 15
   6765 0F                 6384 	.db #0x0F	; 15
   6766 0F                 6385 	.db #0x0F	; 15
   6767 0F                 6386 	.db #0x0F	; 15
   6768 0F                 6387 	.db #0x0F	; 15
   6769 0F                 6388 	.db #0x0F	; 15
   676A 0F                 6389 	.db #0x0F	; 15
   676B 0F                 6390 	.db #0x0F	; 15
   676C 0F                 6391 	.db #0x0F	; 15
   676D 0F                 6392 	.db #0x0F	; 15
   676E 0F                 6393 	.db #0x0F	; 15
   676F 0F                 6394 	.db #0x0F	; 15
   6770 0F                 6395 	.db #0x0F	; 15
   6771 0F                 6396 	.db #0x0F	; 15
   6772 0F                 6397 	.db #0x0F	; 15
   6773 0F                 6398 	.db #0x0F	; 15
   6774 0F                 6399 	.db #0x0F	; 15
   6775 0F                 6400 	.db #0x0F	; 15
   6776 0F                 6401 	.db #0x0F	; 15
   6777 0F                 6402 	.db #0x0F	; 15
   6778 0F                 6403 	.db #0x0F	; 15
   6779 0F                 6404 	.db #0x0F	; 15
   677A 0F                 6405 	.db #0x0F	; 15
   677B 0F                 6406 	.db #0x0F	; 15
   677C 0F                 6407 	.db #0x0F	; 15
   677D 0F                 6408 	.db #0x0F	; 15
   677E 0F                 6409 	.db #0x0F	; 15
   677F 0F                 6410 	.db #0x0F	; 15
   6780 0F                 6411 	.db #0x0F	; 15
   6781 0F                 6412 	.db #0x0F	; 15
   6782 0F                 6413 	.db #0x0F	; 15
   6783 0F                 6414 	.db #0x0F	; 15
   6784 0F                 6415 	.db #0x0F	; 15
   6785 0F                 6416 	.db #0x0F	; 15
   6786 0F                 6417 	.db #0x0F	; 15
   6787 0F                 6418 	.db #0x0F	; 15
   6788 0F                 6419 	.db #0x0F	; 15
   6789 0F                 6420 	.db #0x0F	; 15
   678A 0F                 6421 	.db #0x0F	; 15
   678B 0F                 6422 	.db #0x0F	; 15
   678C 0F                 6423 	.db #0x0F	; 15
   678D 0F                 6424 	.db #0x0F	; 15
   678E 0F                 6425 	.db #0x0F	; 15
   678F 0F                 6426 	.db #0x0F	; 15
   6790 0F                 6427 	.db #0x0F	; 15
   6791 0F                 6428 	.db #0x0F	; 15
   6792 0F                 6429 	.db #0x0F	; 15
   6793 0F                 6430 	.db #0x0F	; 15
   6794 0F                 6431 	.db #0x0F	; 15
   6795 0F                 6432 	.db #0x0F	; 15
   6796 0F                 6433 	.db #0x0F	; 15
   6797 0F                 6434 	.db #0x0F	; 15
   6798 0F                 6435 	.db #0x0F	; 15
   6799 0F                 6436 	.db #0x0F	; 15
   679A 0F                 6437 	.db #0x0F	; 15
   679B 0F                 6438 	.db #0x0F	; 15
   679C 0F                 6439 	.db #0x0F	; 15
   679D 0F                 6440 	.db #0x0F	; 15
   679E 0F                 6441 	.db #0x0F	; 15
   679F 0F                 6442 	.db #0x0F	; 15
   67A0 0F                 6443 	.db #0x0F	; 15
   67A1 0F                 6444 	.db #0x0F	; 15
   67A2 0F                 6445 	.db #0x0F	; 15
   67A3 0F                 6446 	.db #0x0F	; 15
   67A4 0F                 6447 	.db #0x0F	; 15
   67A5 0F                 6448 	.db #0x0F	; 15
   67A6 0F                 6449 	.db #0x0F	; 15
   67A7 0F                 6450 	.db #0x0F	; 15
   67A8 0F                 6451 	.db #0x0F	; 15
   67A9 0F                 6452 	.db #0x0F	; 15
   67AA 0F                 6453 	.db #0x0F	; 15
   67AB 0F                 6454 	.db #0x0F	; 15
   67AC F0                 6455 	.db #0xF0	; 240
   67AD 0F                 6456 	.db #0x0F	; 15
   67AE 0F                 6457 	.db #0x0F	; 15
   67AF 0F                 6458 	.db #0x0F	; 15
   67B0 0F                 6459 	.db #0x0F	; 15
   67B1 0F                 6460 	.db #0x0F	; 15
   67B2 0F                 6461 	.db #0x0F	; 15
   67B3 0F                 6462 	.db #0x0F	; 15
   67B4 0F                 6463 	.db #0x0F	; 15
   67B5 F0                 6464 	.db #0xF0	; 240
   67B6 F0                 6465 	.db #0xF0	; 240
   67B7 0F                 6466 	.db #0x0F	; 15
   67B8 0F                 6467 	.db #0x0F	; 15
   67B9 0F                 6468 	.db #0x0F	; 15
   67BA 0F                 6469 	.db #0x0F	; 15
   67BB 0F                 6470 	.db #0x0F	; 15
   67BC 0F                 6471 	.db #0x0F	; 15
   67BD 0F                 6472 	.db #0x0F	; 15
   67BE 0F                 6473 	.db #0x0F	; 15
   67BF F0                 6474 	.db #0xF0	; 240
                           6475 	.area _INITIALIZER
                           6476 	.area _CABS (ABS)
