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


#include <cpctelera.h>
#include "../sprites/tilemap.h"
#include "../game.h"

#ifndef _VIDEO_H_
#define _VIDEO_H_

//Screen Sizes
#define MIN_X  9
#define MIN_Y  5
#define MAX_X  MIN_X + (FRAME_WIDTH - 2) * FONT_W + 1
#define MAX_Y  MIN_Y + (FRAME_HEIGHT/2 - 1) * FONT_H - 1

extern const u8 G_graphics_palette[16];

void clearWindow(u8 xPos, u8 yPos, u8 width, u8 height);
void setUpVideo();
void clearScreen();
void drawFrame(u8 x1, u8 y1, u8 x2, u8 y2);

#endif