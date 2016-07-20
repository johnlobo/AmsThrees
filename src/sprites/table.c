//
// File table.tmx converted to csv using cpct_tmx2csv [20160625 11:48:00 CEST]
//   * Width:  23
//   * Height:043
//   * Bytes: 0989
//
#include <types.h>
#include "table.h"



// Tile table_tiles_00:04x4 pixels, 2x4 bytes.
const u8 table_tiles_00[TILESIZE] = {
	0xf0, 0x0f,
	0xa5, 0x0f,
	0x0f, 0x5a,
	0x0f, 0xa5
};

// Tile table_tiles_01:04x4 pixels, 2x4 bytes.
const u8 table_tiles_01[TILESIZE] = {
	0x0f, 0x0f,
	0x0f, 0x0f,
	0xf0, 0xf0,
	0x0f, 0x0f
};

// Tile table_tiles_02:04x4 pixels, 2x4 bytes.
const u8 table_tiles_02[TILESIZE] = {
	0x0f, 0xf0,
	0x0f, 0x5a,
	0xa5, 0x0f,
	0x5a, 0x0f
};

// Tile table_tiles_03:04x4 pixels, 2x4 bytes.
const u8 table_tiles_03[TILESIZE] = {
	0x0f, 0xa5,
	0x0f, 0xa5,
	0x0f, 0xa5,
	0x0f, 0xa5
};

// Tile table_tiles_04:04x4 pixels, 2x4 bytes.
const u8 table_tiles_04[TILESIZE] = {
	0x0f, 0x0f,
	0x0f, 0x0f,
	0x0f, 0x0f,
	0x0f, 0x0f
};

// Tile table_tiles_05:04x4 pixels, 2x4 bytes.
const u8 table_tiles_05[TILESIZE] = {
	0x5a, 0x0f,
	0x5a, 0x0f,
	0x5a, 0x0f,
	0x5a, 0x0f
};

// Tile table_tiles_06:04x4 pixels, 2x4 bytes.
const u8 table_tiles_06[TILESIZE] = {
	0x0f, 0xa5,
	0x0f, 0x5a,
	0xa5, 0x0f,
	0xf0, 0x0f
};

// Tile table_tiles_07:04x4 pixels, 2x4 bytes.
const u8 table_tiles_07[TILESIZE] = {
	0x0f, 0x0f,
	0xf0, 0xf0,
	0x0f, 0x0f,
	0x0f, 0x0f
};

// Tile table_tiles_08:04x4 pixels, 2x4 bytes.
const u8 table_tiles_08[TILESIZE] = {
	0x5a, 0x0f,
	0xa5, 0x0f,
	0x0f, 0x5a,
	0x0f, 0xf0
};

// Tile table_tiles_09:04x4 pixels, 2x4 bytes.
const u8 table_tiles_09[TILESIZE] = {
	0x0f, 0xf0,
	0x5a, 0xa5,
	0xf0, 0x0f,
	0xa5, 0x0f
};

// Tile table_tiles_10:04x4 pixels, 2x4 bytes.
const u8 table_tiles_10[TILESIZE] = {
	0xf0, 0xf0,
	0x0f, 0x0f,
	0x0f, 0x0f,
	0x0f, 0x0f
};

// Tile table_tiles_11:04x4 pixels, 2x4 bytes.
const u8 table_tiles_11[TILESIZE] = {
	0xf0, 0x0f,
	0x5a, 0xa5,
	0x0f, 0xf0,
	0x0f, 0x5a
};

// Tile table_tiles_12:04x4 pixels, 2x4 bytes.
const u8 table_tiles_12[TILESIZE] = {
	0xa5, 0x0f,
	0xf0, 0x0f,
	0x5a, 0xa5,
	0x0f, 0xf0
};

// Tile table_tiles_13:04x4 pixels, 2x4 bytes.
const u8 table_tiles_13[TILESIZE] = {
	0x0f, 0x0f,
	0x0f, 0x0f,
	0x0f, 0x0f,
	0xf0, 0xf0
};

// Tile table_tiles_14:04x4 pixels, 2x4 bytes.
const u8 table_tiles_14[TILESIZE] = {
	0x0f, 0x5a,
	0x0f, 0xf0,
	0x5a, 0xa5,
	0xf0, 0x0f
};

// Tile table_tiles_15:04x4 pixels, 2x4 bytes.
const u8 table_tiles_15[TILESIZE] = {
	0xa5, 0x0f,
	0xa5, 0x0f,
	0xa5, 0x0f,
	0xa5, 0x0f
};

// Tile table_tiles_16:04x4 pixels, 2x4 bytes.
const u8 table_tiles_16[TILESIZE] = {
	0x0f, 0x5a,
	0x0f, 0x5a,
	0x0f, 0x5a,
	0x0f, 0x5a
};


/////////////////////////////////////////////////////////////////////////////////////////
// Tileset: Ordered array of pointers to the different tiles that are used
//          in the tilemap.
//
u8* const tileset[NUMTILES] = { table_tiles_00, table_tiles_01,
                                table_tiles_02, table_tiles_03,
                                table_tiles_04, table_tiles_05,
                                table_tiles_06, table_tiles_07,
                                table_tiles_08, table_tiles_09,
                                table_tiles_10, table_tiles_11,
                                table_tiles_12, table_tiles_13,
                                table_tiles_14, table_tiles_15,
                                table_tiles_16,
                              };

// Generated CSV tilemap from table.tmx
const u8 tmx[MAP_WIDTH * MAP_HEIGHT] = {
	00, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2,
	03, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5,
	03, 4, 9, 10, 10, 10, 11, 4, 9, 10, 10, 10, 11, 4, 9, 10, 10, 10, 11, 4, 9, 10, 10, 10, 11, 4, 5,
	03, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 5,
	03, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 5,
	03, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 5,
	03, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 5,
	03, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 5,
	03, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 5,
	03, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 5,
	03, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 5,
	03, 4, 12, 13, 13, 13, 14, 4, 12, 13, 13, 13, 14, 4, 12, 13, 13, 13, 14, 4, 12, 13, 13, 13, 14, 4, 5,
	03, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5,
	03, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5,
	03, 4, 9, 10, 10, 10, 11, 4, 9, 10, 10, 10, 11, 4, 9, 10, 10, 10, 11, 4, 9, 10, 10, 10, 11, 4, 5,
	03, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 5,
	03, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 5,
	03, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 5,
	03, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 5,
	03, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 5,
	03, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 5,
	03, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 5,
	03, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 5,
	03, 4, 12, 13, 13, 13, 14, 4, 12, 13, 13, 13, 14, 4, 12, 13, 13, 13, 14, 4, 12, 13, 13, 13, 14, 4, 5,
	03, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5,
	03, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5,
	03, 4, 9, 10, 10, 10, 11, 4, 9, 10, 10, 10, 11, 4, 9, 10, 10, 10, 11, 4, 9, 10, 10, 10, 11, 4, 5,
	03, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 5,
	03, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 5,
	03, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 5,
	03, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 5,
	03, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 5,
	03, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 5,
	03, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 5,
	03, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 5,
	03, 4, 12, 13, 13, 13, 14, 4, 12, 13, 13, 13, 14, 4, 12, 13, 13, 13, 14, 4, 12, 13, 13, 13, 14, 4, 5,
	03, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5,
	03, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5,
	03, 4, 9, 10, 10, 10, 11, 4, 9, 10, 10, 10, 11, 4, 9, 10, 10, 10, 11, 4, 9, 10, 10, 10, 11, 4, 5,
	03, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 5,
	03, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 5,
	03, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 5,
	03, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 5,
	03, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 5,
	03, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 5,
	03, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 5,
	03, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 15, 4, 4, 4, 16, 4, 5,
	03, 4, 12, 13, 13, 13, 14, 4, 12, 13, 13, 13, 14, 4, 12, 13, 13, 13, 14, 4, 12, 13, 13, 13, 14, 4, 5,
	06, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8
};
