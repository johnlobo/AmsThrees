#ifndef _TABLE_H_
#define _TABLE_H_

//
// File table.tmx converted to csv using cpct_tmx2csv [20160625 11:48:00 CEST]
//   * Width:  23
//   * Height: 43
//   * Bytes:  989
//


#include <types.h>

// Generated CSV tilemap from table.tmx
//   989 bytes (23 x 43)


// Define constant sizes
#define TILESIZE     2*4
#define NUMTILES      17
#define MAP_WIDTH     27
#define MAP_HEIGHT    47
#define SCR_HEIGHT   172
#define SCR_WIDTH     92

// Declaration of the tileset
extern u8* const tileset[NUMTILES];

extern const u8 table_tiles_00[TILESIZE];
extern const u8 table_tiles_01[TILESIZE];
extern const u8 table_tiles_02[TILESIZE];
extern const u8 table_tiles_03[TILESIZE];
extern const u8 table_tiles_04[TILESIZE];
extern const u8 table_tiles_05[TILESIZE];
extern const u8 table_tiles_06[TILESIZE];
extern const u8 table_tiles_07[TILESIZE];
extern const u8 table_tiles_08[TILESIZE];
extern const u8 table_tiles_09[TILESIZE];
extern const u8 table_tiles_10[TILESIZE];
extern const u8 table_tiles_11[TILESIZE];
extern const u8 table_tiles_12[TILESIZE];
extern const u8 table_tiles_13[TILESIZE];
extern const u8 table_tiles_14[TILESIZE];
extern const u8 table_tiles_15[TILESIZE];
extern const u8 table_tiles_16[TILESIZE];

extern const u8 tmx[MAP_WIDTH * MAP_HEIGHT];

#endif