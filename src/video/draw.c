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

#include "draw.h"
#include "../utils/keyboard.h"



void clearGameScreen() {

    u8* pvideo = cpct_getScreenPtr(CPCT_VMEM_START, MIN_X, MIN_Y);

    cpct_drawSolidBox(pvideo, 0, MAX_X - MIN_X + 1, MAX_Y - MIN_Y);

}


void drawFrame(u8 x1, u8 y1, u8 x2, u8 y2) {

    u8 *pvideo;
    u8 x, frame_w, frame_h;

    frame_w = x2 - x1;
    frame_h = y2 - y1;

    clearWindow(x1, y1, x2 - x1, y2 - y1);

    //UPLEFTCORNER
    pvideo = cpct_getScreenPtr(CPCT_VMEM_START, x1, y1);
    cpct_drawSprite(g_tile_border_0,  pvideo, 2, 4);

    //UPPER BAR
    //for (x = 1; x < (frame_w * 2) - 1; x++) {
    for (x = x1 + 2; x < (x2 - 2); x = x + 2) {

        cpct_drawSprite(g_tile_border_4,  pvideo + (x - x1), 2, 4);
    }

    //UPRIGHTCORNER
    cpct_drawSprite(g_tile_border_1,  pvideo + (frame_w - 2), 2,4);


    //LEFT & RIGHT BARS
    for (x = y1 + 4; x < (y2 - 4); x = x + 4) {

        pvideo = cpct_getScreenPtr(CPCT_VMEM_START, x1, x);
        cpct_drawSprite(g_tile_border_5,  pvideo, 2, 4);
        cpct_drawSprite(g_tile_border_6,  pvideo + (frame_w - 2), 2, 4);

    }

    pvideo = cpct_getScreenPtr(CPCT_VMEM_START, x1, y2 - 4);

    //DOWNLEFTCORNER
    cpct_drawSprite(g_tile_border_2,  pvideo, 2, 4);


    //LOWER BAR
    for (x = x1 + 2; x < (x2 - 2); x = x + 2) {

        cpct_drawSprite(g_tile_border_7,  pvideo + (x - x1), 2, 4);
    }

    //DOWNRIGHTCORNER
    cpct_drawSprite(g_tile_border_3,  pvideo + (frame_w - 2), 2, 4);

}

void drawStar(u8 color1, u8 color2, u8 xPos, u8 yPos) {

    u8* pvideo = cpct_getScreenPtr(CPCT_VMEM_START, xPos, yPos);
    cpct_drawSolidBox(pvideo, cpct_px2byteM0(color1, color2), 1, 1);

}


void drawStars(Coords *stars) {

    u8 x;
    u8* pvideo;

    static u8 starsCycles = 1;

    for (x = 0; x < MAX_STARS + MAX_COLOR_STARS; x++) {

        if (x < MAX_STARS) {

            if (starsCycles == 2) {

                drawStar(1, 0, stars[x].xPos, stars[x].yPos);
                stars[x].xPos--;

                if (stars[x].xPos < MIN_X) {

                    stars[x].xPos = MAX_X;
                }

            }
            else {

                drawStar(0, 1, stars[x].xPos, stars[x].yPos);

            }
        }
        else {

            pvideo = cpct_getScreenPtr(CPCT_VMEM_START,  stars[x].xPos, stars[x].yPos);

            cpct_drawSprite(G_bluestar, pvideo, COLOR_STAR_W, COLOR_STAR_H);

            stars[x].xPos--;

            if (stars[x].xPos < MIN_X) {

                stars[x].xPos = MAX_X - COLOR_STAR_W;
                stars[x].yPos = MIN_Y + cpct_rand() % (MAX_Y - COLOR_STAR_H - MIN_Y);

            }

        }

    }


    if (starsCycles++ == 2) starsCycles = 1;

}

void drawTable(){
     //cpct_etm_drawTilemap2x4_f (23,43),
}

