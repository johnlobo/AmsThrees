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

#include "../video/video.h"
#include "../utils/itoa.h"
#include "../sprites/fonts-big.h"
#include "../sprites/numbers-big.h"
#include "../game.h"
#include "text.h"

u8* const font[39] = { g_fonts_big_00, g_fonts_big_01, g_fonts_big_02, g_fonts_big_03, g_fonts_big_04,
                       g_fonts_big_05, g_fonts_big_06, g_fonts_big_07, g_fonts_big_08, g_fonts_big_09,
                       g_fonts_big_10, g_fonts_big_11, g_fonts_big_12, g_fonts_big_13, g_fonts_big_14,
                       g_fonts_big_15, g_fonts_big_16, g_fonts_big_17, g_fonts_big_18, g_fonts_big_19,
                       g_fonts_big_20, g_fonts_big_21, g_fonts_big_22, g_fonts_big_23, g_fonts_big_24,
                       g_fonts_big_25, g_fonts_big_26, g_fonts_big_27, g_fonts_big_28, g_fonts_big_29,
                       g_fonts_big_30, g_fonts_big_31, g_fonts_big_32
                     };
u8* const numbers[10] = { g_numbers_big_00, g_numbers_big_01, g_numbers_big_02, g_numbers_big_03, g_numbers_big_04,
                          g_numbers_big_05, g_numbers_big_06, g_numbers_big_07, g_numbers_big_08, g_numbers_big_09
                        };

u8 strLength(u8 str[]) {
    u8 result;

    result = 0;
    while (str[result] != '\0') {
        result++;
    }
    return result;
}


void drawNumber(u16 aNumber, u8 length, u8 xPos, u8 yPos) {

    u8 str[6];
    u8* pvideo;
    u8 zeros;
    u8 x = 0;
    u8 number;

    itoa(aNumber, str, 10);

    zeros = length - strLength(str);

    number = str[x];

    while (number != '\0') {

        pvideo = cpct_getScreenPtr(CPCT_VMEM_START, (zeros + x) * FONT_W + xPos, yPos);
        cpct_drawSprite(numbers[number - 48], pvideo, FONT_W, FONT_H);
        number = str[++x];
    }


}

void drawText(u8 text[], u8 xPos, u8 yPos, u8 centered) {

    u8* pvideo;
    u8 character;
    u8 x = 0;

    if (centered) {
        x = strLength(text);
        xPos = 39 - (x / 2) * FONT_W;
    }

    x = 0;
    character = text[x];

    while (character != '\0') {

        pvideo = cpct_getScreenPtr(CPCT_VMEM_START, (x * FONT_W) + xPos, yPos);

        //NUMEROS
        if (character >= 48 && character <= 57) {

            cpct_drawSpriteMaskedAlignedTable(numbers[character - 48], pvideo, FONT_W, FONT_H, am_tablatrans);
        }

        else if (character != 32) { //32 = SPACE

            cpct_drawSpriteMaskedAlignedTable(font[character - 63], pvideo, FONT_W, FONT_H, am_tablatrans);
        }

        character = text[++x];
    }
}