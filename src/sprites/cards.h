// Data created with Img2CPC - (c) Retroworks - 2007-2015
#ifndef _CARDS_H_
#define _CARDS_H_

#include <types.h>

// Define constant sizes
#define CARD_W	10
#define CARD_H 44
#define CARD_SIZE CARD_W * CARD_H


extern const u8 cards_00[TILE_SIZE];
extern const u8 cards_01[TILE_SIZE];
extern const u8 cards_02[CARD_W * CARD_H];
extern const u8 cards_03[CARD_W * CARD_H];
extern const u8 cards_04[CARD_W * CARD_H];
extern const u8 cards_05[CARD_W * CARD_H];
extern const u8 cards_06[CARD_W * CARD_H];
extern const u8 cards_07[CARD_W * CARD_H];
extern const u8 cards_08[CARD_W * CARD_H];
extern const u8 cards_09[CARD_W * CARD_H];
extern const u8 cards_10[CARD_W * CARD_H];
extern const u8 cards_11[CARD_W * CARD_H];
extern const u8 cards_12[CARD_W * CARD_H];
extern const u8 cards_13[CARD_W * CARD_H];

extern const u8 card_mask[CARD_W * CARD_H];

#endif
