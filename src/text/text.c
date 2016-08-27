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

#include "../game.h"
#include "text.h"

u8* const font[39] = { g_fonts_big_00, g_fonts_big_01, g_fonts_big_02, g_fonts_big_03, g_fonts_big_04,
                       g_fonts_big_05, g_fonts_big_06, g_fonts_big_07, g_fonts_big_08, g_fonts_big_09,
                       g_fonts_big_10, g_fonts_big_11, g_fonts_big_12, g_fonts_big_13, g_fonts_big_14,
                       g_fonts_big_15, g_fonts_big_16, g_fonts_big_17, g_fonts_big_18, g_fonts_big_19,
                       g_fonts_big_20, g_fonts_big_21, g_fonts_big_22, g_fonts_big_23, g_fonts_big_24,
                       g_fonts_big_25, g_fonts_big_26, g_fonts_big_27, g_fonts_big_28, g_fonts_big_29,
                       g_fonts_big_30, g_fonts_big_31, g_fonts_big_32, g_fonts_big_33, g_fonts_big_34, 
                       g_fonts_big_35, g_fonts_big_36, g_fonts_big_37, g_fonts_big_38 };
u8* const numbers[10] = { g_numbers_big_00, g_numbers_big_01, g_numbers_big_02, g_numbers_big_03, g_numbers_big_04,
                       g_numbers_big_05, g_numbers_big_06, g_numbers_big_07, g_numbers_big_08, g_numbers_big_09};

u8 strLength(u8 str[]) {
    u8 result;

    result = 0;
    while (str[result] != '\0') {
        result++;
    }
    return result;
}

//
// Copy a string into a given buffer
//
void strCopy(i8* to, const i8* from) {
    u8 i;
    i = 30;
    while (i) {
        *to++ = *from++;
        i--;
    }
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
        //cpct_drawSpriteMaskedAlignedTable(G_numbers_big[number - 48], pvideo, FONT_W, FONT_H, am_tablatrans);

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

            //cpct_drawSprite(G_numbers_big[character - 48], pvideo, FONT_W, FONT_H);
            cpct_drawSpriteMaskedAlignedTable(numbers[character - 48], pvideo, FONT_W, FONT_H, am_tablatrans);
        }

        else if (character != 32) { //32 = SPACE

            //cpct_drawSprite(g_font_big[character - 64], pvideo, FONT_W, FONT_H);
            cpct_drawSpriteMaskedAlignedTable(font[character - 64], pvideo, FONT_W, FONT_H, am_tablatrans);
        }

        character = text[++x];
    }
}

void moveCharacter(FChar *character) {

    if (character->phase != FALLING_TEXT_MAX_BOUNCES) {

        //Restauramos el fondo que había antes de haberlo machacado con la letra


        if (character->yPos != character->startyPos) {

            clearWindow(character->xPos, character->yPos + (character->phase % 2 != 0 ? - FALLING_TEXT_SPEED : FALLING_TEXT_SPEED), FONT_W, FONT_H);

        }

        //Fases de bajada
        if (character->phase % 2 != 0) {

            character->yPos += FALLING_TEXT_SPEED;

            if (character->yPos >= character->destinationyPos) {

                character->phase++;

                character->destinationyPos = character->endyPos - ((character->endyPos - character->startyPos) / character->phase);
            }

        }
        //Fases de subida
        else {

            character->yPos -= FALLING_TEXT_SPEED;

            if (character->yPos <= character->destinationyPos) {

                character->phase++;

                character->destinationyPos = character->endyPos;
            }

        }

        //Pintamos la letra
        drawText(character->character, character->xPos, character->yPos, 0);
    }
    else {

        clearWindow(character->xPos, character->yPos - FALLING_TEXT_SPEED, FONT_W, FONT_H);
        drawText(character->character, character->xPos, character->yPos, 0);

    }
}

u8 moveFallingText(FChar *text, u8 lenght) {

    u8 x;

    for (x = 0; x < lenght; x++) {

        if (x == 0 || (x > 0 && text[x - 1].phase == 1 && text[x - 1].yPos >= text[x].yPos + 15) || text[x - 1].phase > 1) moveCharacter(&text[x]);
    }

    return text[lenght - 1].phase == FALLING_TEXT_MAX_BOUNCES;



}

void drawFallingText(u8 text[], u8 xPos, u8 yPos, u8 destinationyPos) {

    FChar ftext[FALLING_TEXT_MAX_LENGHT];
    u8 x;


    for (x = 0; x < strLength(text) && x < FALLING_TEXT_MAX_LENGHT; x++) {

        ftext[x].phase = 1;
        ftext[x].xPos = xPos + (x * FONT_W);
        ftext[x].yPos = yPos;
        ftext[x].startyPos = yPos;
        ftext[x].endyPos = destinationyPos;
        ftext[x].destinationyPos = destinationyPos;
        ftext[x].character[0] = text[x];
        ftext[x].character[1] = '\0';
    }

    while (1) {


        if (moveFallingText(ftext, strLength(text) <= FALLING_TEXT_MAX_LENGHT ? strLength(text) : FALLING_TEXT_MAX_LENGHT)) {

            return;

        }

        cpct_waitVSYNC();

    }


}
