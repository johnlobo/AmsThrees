//-----------------------------LICENSE NOTICE------------------------------------
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.
//------------------------------------------------------------------------------

#ifndef _GAME_H_
#define _GAME_H_

#include <cpctelera.h>

//Sprites Size
#define FONT_H 11
#define FONT_W 3


//FALLING TEXT
#define FALLING_TEXT_SPEED  3
#define FALLING_TEXT_MAX_BOUNCES 6
#define FALLING_TEXT_MAX_LENGHT  20

#define SWITCH_SCREENS 400


#define LEFT 0
#define RIGHT 1
#define UP 2
#define DOWN 3
#define NUM_TILES 14

// cells value
//	0 empty
//	1 	1
//	2	2
//	3	3
//	4	6
//	5	12
//	6	24
//	7	48
//	8	96
//	9	192
//	10	384
//	11	768
//	12	1536
//	13	3072
//	14	6144 

typedef struct {  
   u8 count;   
   u8 values[4];
} TAdjacents;

typedef struct {
	u32 score;
	u8 name[20];
} TScoreBoard;

typedef struct Keys{
    cpct_keyID up;
    cpct_keyID down;
    cpct_keyID left;
    cpct_keyID right;
    cpct_keyID fire;
    cpct_keyID pause;
    cpct_keyID abort;
    cpct_keyID music;
} Keys;

typedef struct Coords{
    u8 xPos;
    u8 yPos;
} Coords;

typedef struct
{
    u8 x;
    u8 y;
    u8 prev;
    u8 post;
} TChangedCards;

extern const u8 G_graphics_palette[16];

// Declare am_tablatrans, which is defined in game.c, and used in more places
cpctm_declareMaskTable(am_tablatrans);

void init();
void initialization();
void threes();

#endif