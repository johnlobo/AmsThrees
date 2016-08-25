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

#ifndef _DEFINES_H_
#define _DEFINES_H_

//Screen Sizes
#define MIN_X  9
#define MIN_Y  5
#define MAX_X  MIN_X + (FRAME_WIDTH - 2) * FONT_W + 1
#define MAX_Y  MIN_Y + (FRAME_HEIGHT/2 - 1) * FONT_H - 1

//Sprites Size
#define FONT_H 11
//#define FONT_H 8
//#define FONT_W 2
#define FONT_W 3


//FALLING TEXT
#define FALLING_TEXT_SPEED  3
#define FALLING_TEXT_MAX_BOUNCES 6
#define FALLING_TEXT_MAX_LENGHT  20

//STARS
#define MAX_STARS 8
#define MAX_COLOR_STARS 3

#define COLOR_STAR_W 2
#define COLOR_STAR_H 7

#define SWITCH_SCREENS 7000


#endif