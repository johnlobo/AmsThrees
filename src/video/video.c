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


#include "video.h"

const u8 G_graphics_palette[16] = {0, 1, 15, 20, 6, 2, 8, 10, 12, 14, 16, 18, 3, 24, 11, 26};

//////////////////////////////////////////////////////////////////
// setupVideo
//
//
//
// Returns:
//    void
//

void setUpVideo() {

    //Disable firmware
    cpct_disableFirmware();

    cpct_fw2hw(G_graphics_palette, 16);
    cpct_setPalette  (G_graphics_palette, 16);
    cpct_setBorder(G_graphics_palette[1]);
    cpct_setVideoMode(0);
    clearScreen();

}

//////////////////////////////////////////////////////////////////
// clearScreen
//
//
//
// Returns:
//    void
//

void clearScreen() {
    // Clear Screen
    cpct_memset(CPCT_VMEM_START, cpct_px2byteM0(0,0), 0x4000);
}

//////////////////////////////////////////////////////////////////
// clearVideo
//
//
//
// Returns:
//    void
//

void clearWindow(u8 xPos, u8 yPos, u8 width, u8 height) {

    u8* pvideo = cpct_getScreenPtr(CPCT_VMEM_START, xPos, yPos);
    cpct_drawSolidBox(pvideo, cpct_px2byteM0(0,0), width, height);

}

//////////////////////////////////////////////////////////////////
// clearGameScreen
//
//
//
// Returns:
//    void
//

void clearGameScreen() {
    u8* pvideo = cpct_getScreenPtr(CPCT_VMEM_START, MIN_X, MIN_Y);

    cpct_drawSolidBox(pvideo, 0, MAX_X - MIN_X + 1, MAX_Y - MIN_Y);
}

//////////////////////////////////////////////////////////////////
// drawFrame
//
//
//
// Returns:
//    void
//

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
    for (x = x1 + 2; x < (x2 - 2); x = x + 2) {
        cpct_drawSprite(g_tile_border_4,  pvideo + (x - x1), 2, 4);
    }

    //UPRIGHTCORNER
    cpct_drawSprite(g_tile_border_1,  pvideo + (frame_w - 2), 2, 4);

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