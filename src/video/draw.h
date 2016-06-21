//-----------------------------LICENSE NOTICE------------------------------------
//  This file is part of Space Moves
//  Copyright (C) 2015 Toni Ramírez (@AmstradGamer)
//
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

#include <cpctelera.h>
#include "../defines.h"
#include "../types/types.h"
#include "../text/text.h"
#include "../sprites/tilemap.h"
#include "../sprites/tiles.h"
#include "../sprites/sprites.h"
#include "../sprites/border.h"

#ifndef _DRAW_H_
#define _DRAW_H_

//extern u8 shift;
//extern u16 tilemapPos;
//extern u8 gameOver;
//extern u8 pause;
//extern u16 score;
//extern u8 lifes;
//extern u16 distance;


void drawFrame(u8 x1, u8 y1, u8 x2, u8 y2);
void drawStar(u8 color1, u8 color2, u8 xPos, u8 yPos);
void drawStars(Coords *stars);

#endif