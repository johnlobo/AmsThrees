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

#include <stdio.h>
#include <stdlib.h>
#include "sprites/numbers-big.h"
#include "sprites/tilemap.h"
#include "sprites/cards.h"
#include "sprites/symbols.h"
#include "sprites/table.h"
#include "sprites/logo-small.h"
#include "sprites/logo-micro.h"
#include "sprites/fonts-big.h"
#include "sprites/icons.h"
#include "sprites/marker.h"
#include "utils/itoa.h"
#include "utils/keyboard.h"
#include "text/text.h"
#include "video/video.h"
#include "music/song02.h"
#include "music/song05.h"
#include "levels/levels.h"
#include "game.h"

// Global Variables
Keys keys;
u8 cells[4][4];
const u16 values[15] = { 0, 1, 2, 3, 6, 12, 24, 48, 96, 192, 384, 768, 1536, 3072, 6144};
const u32 scores[15] = { 0, 0, 0, 3, 9, 27, 81, 243, 729, 2187, 6561, 19683, 59049, 177147, 531441};
TAdjacents adjacents;
u8* const cards[15] = {cards_00, cards_00, cards_01, cards_02, cards_03, cards_04,
                       cards_05, cards_06, cards_07, cards_08, cards_09,
                       cards_10, cards_11, cards_12, cards_13
                      };
u8 highestCardGame, highestCardAll;
u32 score;
u32 scoreHallOfFame[8];
u8 nameHallOfFame[8][15];
u8 newNameHighScore[15] = {32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0};
u8 selectedOption;
u8 aux_txt[26];
u8 cardBag[12];
u8 currentCard;
u8 playing = 0;
u8 rotatedCells;
u8 touchedCells[4][4];

// Define Transparency mask
cpctm_createTransparentMaskTable(am_tablatrans, 0x100, M0, 0);

u8 changed;
extern TChangedCards changedCards[12];


void changed_init() __naked
{
    __asm
    _changedCards::
    .db 0x00, 0x00, 0x00, 0x00
    .db 0x00, 0x00, 0x00, 0x00
    .db 0x00, 0x00, 0x00, 0x00
    .db 0x00, 0x00, 0x00, 0x00
    .db 0x00, 0x00, 0x00, 0x00
    .db 0x00, 0x00, 0x00, 0x00
    .db 0x00, 0x00, 0x00, 0x00
    .db 0x00, 0x00, 0x00, 0x00
    .db 0x00, 0x00, 0x00, 0x00
    .db 0x00, 0x00, 0x00, 0x00
    .db 0x00, 0x00, 0x00, 0x00
    .db 0x00, 0x00, 0x00, 0x00
    __endasm;
}

void animate(u8 dir) {
    u8 i, x, y;
    u8 *pvmem;
    u8 tempx, tempy, shiftx, shifty;
    u8* pStartTable = 0xC002;  // Pointer to video memory

    //pStartTable = cpct_getScreenPtr(CPCT_VMEM_START, 2, 0);

    switch (dir)    {
    case LEFT:
        shiftx = -1;
        shifty = 0;
        break;
    case RIGHT:
        shiftx = 1;
        shifty = 0;
        break;
    case UP:
        shiftx = 0;
        shifty = -1;
        break;
    case DOWN:
        shiftx = 0;
        shifty = 1;
        break;
    }
    //Step 1
    //Erase changed slots and print the moved card
    cpct_waitVSYNC();
    for (i = 0; i < changed; i++) {
        tempx = changedCards[i].x;
        tempy = changedCards[i].y;
        cpct_etm_drawTileBox2x4 (2 + (tempx * 6), 1 + (tempy * 12), (CARD_W / 2), (CARD_H / 4), MAP_WIDTH, pStartTable, tmx);
        //multiply by 6 and 22 to reuse shift in next step
        pvmem = cpct_getScreenPtr(CPCT_VMEM_START, tempx + (shiftx * 6), tempy + (shifty * 22));
        cpct_drawSpriteMaskedAlignedTable(cards[changedCards[i].prev], pvmem, CARD_W, CARD_H, am_tablatrans);
    }
    //Step 2
    //Erase moved card and print animation end for sigle movements
    cpct_waitVSYNC();
    for (i = 0; i < changed; i++)
    {
        tempx = changedCards[i].x;
        tempy = changedCards[i].y;
        //Restore touched tiles
        switch (dir)
        {
        case LEFT:
            cpct_etm_drawTileBox2x4 (2 + ((tempx - 1) * 6), 1 + (tempy * 12), (CARD_W), (CARD_H / 4), MAP_WIDTH, pStartTable, tmx);
            break;
        case RIGHT:
            cpct_etm_drawTileBox2x4 (2 + (tempx * 6), 1 + (tempy * 12), (CARD_W), (CARD_H / 4), MAP_WIDTH, pStartTable, tmx);
            break;
        case UP:
            cpct_etm_drawTileBox2x4 (2 + (tempx * 6), 1 + ((tempy - 1) * 12), (CARD_W / 2), (CARD_H / 2), MAP_WIDTH, pStartTable, tmx);
            break;
        case DOWN:
            cpct_etm_drawTileBox2x4 (2 + (tempx * 6), 1 + (tempy * 12), (CARD_W / 2), (CARD_H / 2), MAP_WIDTH, pStartTable, tmx);
            break;
        }
        //If no upgrade is necessary, print card in final position
        if (changedCards[i].prev == changedCards[i].post) {
            pvmem = cpct_getScreenPtr(CPCT_VMEM_START, tempx + shiftx, tempy + shifty);
            cpct_drawSpriteMaskedAlignedTable(cards[changedCards[i].post], pvmem, CARD_W, CARD_H, am_tablatrans);
        }


    }

}



//////////////////////////////////////////////////////////////////
// playmusic
//
//  Function to play music saving the registers
//
// Returns: void.
//
//

void playmusic() {
    __asm
    exx
    .db #0x08
    push af
    push bc
    push de
    push hl
    call _cpct_akp_musicPlay
    pop hl
    pop de
    pop bc
    pop af
    .db #0x08
    exx
    __endasm;
}

//////////////////////////////////////////////////////////////////
// myInterruptHandler
//
//  Interruphandler that subsitutes the default one. Includes calls for reading the keyboard and playing music, if activated
//
// Returns:
//  void
//

void interruptHandler() {
    static u8 i;

    i++;
    switch (i) {
    case 4:
        cpct_scanKeyboard_if();
        break;
    case 5:
        // Play music
        if (playing)
            playmusic();
        break;
    case 6:
        i = 0;
    }
}

//////////////////////////////////////////////////////////////////
// renewCardBag
//    renew the cardBag that ensures the proper ammount of every tile type
//
//
// Returns:
//    void
//

void renewCardBag() {
    u8 i;
    u8 currentValue = 0;
    u8 counters[3];

    counters[0] = 0;
    counters[1] = 0;
    counters[2] = 0;

    for (i = 0; i < 12; i++) {
        do
            currentValue = (cpct_rand() / 85) + 1;
        while (counters[currentValue - 1] > 3);
        counters[currentValue - 1]++;
        cardBag[i] = currentValue;
    }
    currentCard = 0;
}

//////////////////////////////////////////////////////////////////
// delay
//
//    Wait for an specific number of cycles
//
//
// Returns:
//    void
//

void delay(u32 cycles) {
    u32 i;
    for (i = 0; i < cycles; i++) {
        __asm
        halt
        __endasm;
    }
}

//////////////////////////////////////////////////////////////////
// countZeroes
//    Count the number of zeroes that still remains in the cells
//
//
// Returns:
//    <u8> Number of zeroes in cells
//

u8 countZeroes() {
    u8 i, j;
    u8 count;

    count = 0;
    for (i = 0; i < 4; i++) {
        for (j = 0; j < 4; j++) {
            if (cells[i][j] == 0)
                count++;
        }
    }
    return count;
}


//////////////////////////////////////////////////////////////////
// getHighestCard
//
//    returns the highest card in the table
//
//
// Returns:
//    the index to the highest card in the cells
//

u8 getHighestCard() {
    u8 i, j;
    u8 highest;

    highest = 0;
    for (i = 0; i < 4; i++) {
        for (j = 0; j < 4; j++) {
            if (cells[i][j] > highest)
                highest = cells[i][j];
        }
    }
    return highest;
}

//////////////////////////////////////////////////////////////////
// initAdjacents
//
//    Initialize the adjacents structure
//
//
// Returns:
//    void
//

void initAdjacents() {
    u8 i;

    for (i = 0; i < 4; i++) {
        adjacents.values[i] = 255;
    }
    adjacents.count = 0;
}

//////////////////////////////////////////////////////////////////
// getAdjacents
//
//      Get the adjacents
//
//
// Returns:
//    void
//
void getAdjacents(u8 i, u8 j) {
    u8 count;

    initAdjacents();

    count = 0;
    if (i != 0) {
        adjacents.values[count] = cells [i - 1][j];
        count++;
    }
    if (j != 3) {
        adjacents.values[count] = cells [i][j + 1];
        count++;
    }
    if (i != 3) {
        adjacents.values[count] = cells [i + 1][j];
        count++;
    }
    if (j != 0) {
        adjacents.values[count] = cells [i][j - 1];
        count++;
    }

    adjacents.count = count;
}

//////////////////////////////////////////////////////////////////
// anyOfThisInAdjacents
//
//
//
// Returns:
//    void
//
u8 anyOfThisInAdjacents(u8 value) {
    u8 i;
    u8 result;

    result = 0;
    for (i = 0; i < adjacents.count; i++) {
        if (adjacents.values[i] == value) {
            result = 1;
            break;
        }
    }
    return result;
}

//////////////////////////////////////////////////////////////////
// anyMovesLeft
//
//      Checks if are ther any more moves left
//
//
// Returns:
//    true if there are more moves left, false otherways
//

u8 anyMovesLeft() {
    u8 i, j;
    u8 movesLeft;

    movesLeft = 0;

    if (countZeroes() == 0) {
        for (i = 0; i < 4; i++) {
            for (j = 0; j < 4; j++) {
                getAdjacents(i, j);
                if (((cells[i][j] == 1) && anyOfThisInAdjacents(2)) ||
                        ((cells[i][j] == 2) && anyOfThisInAdjacents(1)) ||
                        ((cells[i][j] > 2) && anyOfThisInAdjacents(cells[i][j]))) {
                    movesLeft = 1;
                    break;
                }
            }
            if (movesLeft)
                break;
        }

    } else
        movesLeft = 1;
    return movesLeft;
}

//////////////////////////////////////////////////////////////////
// addRandomCellTurn
//
//
//
// Returns:
//    void
//

void addRandomCellTurn(u8 dir) {
    u8 i = 0;
    u8 j = 0;

    // Fix the row or column
    switch (dir) {
    case LEFT:
        j = 3;
        break;
    case RIGHT:
        j = 0;
        break;
    case UP:
        i = 3;
        break;
    case DOWN:
        i = 0;
        break;
    }
    if ((dir == LEFT) || (dir == RIGHT))
        i = cpct_rand() / 64;
    else
        j = cpct_rand() / 64;
    while (cells[i][j] != 0) {
        if ((dir == LEFT) || (dir == RIGHT))
            i = cpct_rand() / 64;
        else
            j = cpct_rand() / 64;
    }
    cells[i][j] = cardBag[currentCard];
    touchedCells[i][j] = 1;
    if (currentCard < 11)
        currentCard++;
    else
        renewCardBag();
}


//////////////////////////////////////////////////////////////////
// initCells
//
//      Initializes the cells
//
//
// Returns:
//    void
//
void initCells(u8 touched) {
    u8 i, j;

    for (i = 0; i < 4; i++) {
        for (j = 0; j < 4; j++) {
            if (touched)
                touchedCells[i][j] = 0;
            else
                cells[i][j] = 0;
        }
    }
}


//////////////////////////////////////////////////////////////////
// initialization
//
//  initializes the whole program
//
// Returns:
//    void
//
void initialization() {
    u32 seed;    // Value to initialize the random seed

    // Music on
    playing = 1;
    cpct_akp_musicInit(song02);
    cpct_akp_SFXInit(song02);
    cpct_setInterruptHandler(interruptHandler);
    cpct_akp_musicPlay();

    drawText("AMSTHREES IS READY", 31, 76, 1);
    drawText("PRESS ANY KEY", 20, 90, 1);

    seed = wait4UserKeypress();
    // Random seed may never be 0, so check first and add 1 if it was 0
    if (!seed)
        seed++;
    cpct_srand(seed);

    scoreHallOfFame[0] = 10000;
    scoreHallOfFame[1] = 8000;
    scoreHallOfFame[2] = 6000;
    scoreHallOfFame[3] = 5000;
    scoreHallOfFame[4] = 2500;
    scoreHallOfFame[5] = 1000;
    scoreHallOfFame[6] = 500;
    scoreHallOfFame[7] = 300;

    strcpy(nameHallOfFame[0], "[ MARTIN [");
    strcpy(nameHallOfFame[1], "\\ DIEGO \\");
    strcpy(nameHallOfFame[2], "] MARIA ]");
    strcpy(nameHallOfFame[3], "^ DAVID ^");
    strcpy(nameHallOfFame[4], "MASTER");
    strcpy(nameHallOfFame[5], "EXPERT");
    strcpy(nameHallOfFame[6], "INTERMEDIATE");
    strcpy(nameHallOfFame[7], "BEGINNER");


    clearScreen();

    keys.up    = Key_CursorUp;
    keys.down  = Key_CursorDown;
    keys.left  = Key_CursorLeft;
    keys.right = Key_CursorRight;
    keys.fire  = Key_Space;
    keys.pause = Key_Del;
    keys.abort = Key_Esc;
    keys.music = Key_M;

    selectedOption = 0;

    highestCardAll = 0;


    cpct_etm_setTileset2x4(tileset);

}


//////////////////////////////////////////////////////////////////
// initGame
//
//
//
// Returns:
//    void
//
void initGame() {
    u8 i, j, k;

    initCells(0);
    initCells(1);

    renewCardBag();

    for (i = 0; i < 9; i++) {
        j = cpct_rand() / 64;
        k = cpct_rand() / 64;
        while (cells[j][k] != 0) {
            j = cpct_rand() / 64;
            k = cpct_rand() / 64;
        }
        cells[j][k] = cardBag[currentCard];
        currentCard++;
    }

    score = 0;

    highestCardGame = 0;




}

//////////////////////////////////////////////////////////////////
// rotateCellsLeft
//
//
//
// Returns:
//    void
//
u8 rotateCellsLeft() {
    u8 i, j;
    u8 tilesMatched, matched;

    tilesMatched = 0;
    matched = 0;

    for (i = 0; i < 4; i++) {
        for (j = 1; j < 4; j++) {
            if (cells[i][j] != 0) {
                touchedCells[i][j] = 1;
                // empty cell on the left
                if (cells[i][j - 1] == 0) {
                    cells[i][j - 1] = cells[i][j];
                    cells[i][j] = 0;
                    matched = 1;
                } else if (((cells[i][j - 1] == 1) && (cells[i][j] == 2)) ||
                           ((cells[i][j - 1] == 2) && (cells[i][j] == 1))) {
                    cells[i][j - 1] = 3;
                    cells[i][j] = 0;
                    matched = 1;
                } else if ((cells[i][j - 1] == cells[i][j]) && (cells[i][j] > 2)) {
                    cells[i][j - 1]++;
                    cells[i][j] = 0;
                    matched = 1;
                }
                if (matched) {
                    touchedCells[i][j] = 2;
                    touchedCells[i][j - 1] = 1;
                    tilesMatched++;
                    matched = 0;
                }

            }
        }
    }
    return tilesMatched;
}

//////////////////////////////////////////////////////////////////
// rotateCellsRight
//
//
//
// Returns:
//    void
//
u8 rotateCellsRight() {
    u8 i, j;
    u8 tilesMatched, matched;

    tilesMatched = 0;
    matched = 0;

    for (i = 0; i < 4; i++) {
        j = 3;
        do {
            j--;
            if (cells[i][j] != 0) {
                touchedCells[i][j] = 1;
                // empty cell on the left
                if (cells[i][j + 1] == 0) {
                    cells[i][j + 1] = cells[i][j];
                    cells[i][j] = 0;
                    matched = 1;
                } if (((cells[i][j + 1] == 1) && (cells[i][j] == 2)) ||
                        ((cells[i][j + 1] == 2) && (cells[i][j] == 1))) {
                    cells[i][j + 1] = 3;
                    cells[i][j] = 0;
                    matched = 1;
                } else if ((cells[i][j + 1] == cells[i][j]) && (cells[i][j] > 2)) {
                    cells[i][j + 1]++;
                    cells[i][j] = 0;
                    matched = 1;
                }
                if (matched) {
                    touchedCells[i][j] = 2;
                    touchedCells[i][j + 1] = 1;
                    tilesMatched++;
                    matched = 0;
                }
            }
        } while (j > 0);
    }
    return tilesMatched;
}

//////////////////////////////////////////////////////////////////
// rotateCellsUp
//
//
//
// Returns:
//    void
//
u8 rotateCellsUp() {
    u8 i, j;
    u8 tilesMatched, matched;

    tilesMatched = 0;
    matched = 0;

    for (i = 1; i < 4; i++) {
        for (j = 0; j < 4; j++) {
            if (cells[i][j] != 0) {
                touchedCells[i][j] = 1;
                // empty cell on the left
                if (cells[i - 1][j] == 0) {
                    cells[i - 1][j] = cells[i][j];
                    cells[i][j] = 0;
                    matched = 1;
                } else if (((cells[i - 1][j] == 1) && (cells[i][j] == 2)) ||
                           ((cells[i - 1][j] == 2) && (cells[i][j] == 1))) {
                    cells[i - 1][j] = 3;
                    cells[i][j] = 0;
                    matched = 1;
                } else if ((cells[i - 1][j] == cells[i][j]) && (cells[i][j] > 2)) {
                    cells[i - 1][j]++;
                    cells[i][j] = 0;
                    matched = 1;
                }
                if (matched) {
                    touchedCells[i][j] = 2;
                    touchedCells[i - 1][j] = 1;
                    tilesMatched++;
                    matched = 0;
                }
            }
        }
    }
    return tilesMatched;
}

//////////////////////////////////////////////////////////////////
// rotateCellsDown
//
//
//
// Returns:
//    void
//

u8 rotateCellsDown() {
    u8 i, j;
    u8 tilesMatched, matched;

    tilesMatched = 0;
    matched = 0;

    i = 3;
    do {
        i--;
        for (j = 0; j < 4; j++) {
            if (cells[i][j] != 0) {
                touchedCells[i][j] = 1;
                if (cells[i + 1][j] == 0) {
                    cells[i + 1][j] = cells[i][j];
                    cells[i][j] = 0;
                    matched = 1;
                } else if (((cells[i + 1][j] == 1) && (cells[i][j] == 2)) ||
                           ((cells[i + 1][j] == 2) && (cells[i][j] == 1))) {
                    cells[i + 1][j] = 3;
                    cells[i][j] = 0;
                    matched = 1;
                } else if ((cells[i + 1][j] == cells[i][j]) && (cells[i][j] > 2)) {
                    cells[i + 1][j]++;
                    cells[i][j] = 0;
                    matched = 1;

                }
                if (matched) {
                    touchedCells[i][j] = 2;
                    touchedCells[i + 1][j] = 1;
                    tilesMatched++;
                    matched = 0;
                }
            }
        }
    } while (i > 0);

    return tilesMatched;
}

//////////////////////////////////////////////////////////////////
// drawTable
//
//
//
// Returns:
//    void
//

void drawTable() {
    u8* pvmem;

    pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 2, 0);
    cpct_etm_drawTilemap2x4_f(MAP_WIDTH, MAP_HEIGHT, pvmem, tmx);

}

//////////////////////////////////////////////////////////////////
// Cells
//
//
//
// Returns:
//    void
//

void printCells() {
    u8 i;
    u8 j;
    u8 x;
    u8 y;
    u8* pvmem;  // Pointer to video memory

    for (i = 0; i < 4; i++) {
        //y = 30 + (i * 10);
        y = 4 + (i * 48);

        for (j = 0; j < 4; j++) {
            //  x = 3 + (j * 12);
            x = 6 + (j * 12);
            if (cells[i][j] > 0) {
                pvmem = cpct_getScreenPtr(CPCT_VMEM_START, x, y);
                cpct_drawSpriteMaskedAlignedTable(cards[cells[i][j]], pvmem, CARD_W, CARD_H, am_tablatrans);
            }
        }
    }
    pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 63, 18);
    cpct_drawSprite(cards[cardBag[currentCard]], pvmem, CARD_W, CARD_H);
}

//////////////////////////////////////////////////////////////////
// printTouched
//
//
//
// Returns:
//    void
//
void printTouched() {
    u8 i;
    u8 j;
    u8 x;
    u8 y;
    u8* pvmem;
    u8* pStartTable = 0xC002;  // Pointer to video memory

    //pStartTable = cpct_getScreenPtr(CPCT_VMEM_START, 2, 0);

    for (i = 0; i < 4; i++) {
        y = 4 + (i * 48);
        for (j = 0; j < 4; j++) {
            x = 6 + (j * 12);
            if (touchedCells[i][j] == 1) {
                pvmem = cpct_getScreenPtr(CPCT_VMEM_START, x, y);
                cpct_drawSpriteMaskedAlignedTable(cards[cells[i][j]], pvmem, CARD_W, CARD_H, am_tablatrans);

            } else if (touchedCells[i][j] == 2) {
                cpct_etm_drawTileBox2x4 (2 + (j * 6), 1 + (i * 12), (CARD_W / 2), (CARD_H / 4), MAP_WIDTH, pStartTable, tmx);
            }
        }
    }
    pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 63, 18);
    cpct_drawSprite(cards[cardBag[currentCard]], pvmem, CARD_W, CARD_H);
}

//////////////////////////////////////////////////////////////////
// drawScore
//
//
//
// Returns:
//    void
//
void drawScore() {
    u8 i, j, z;
    u8 x, y;
    u32 partialScore;

    for (i = 0; i < 4; i++) {
        y = 4 + (i * 48);
        for (j = 0; j < 4; j++) {
            x = 6 + (j * 12);
            z = cells[i][j];
            if (z >= 3) {
                if (z == 3) {
                    partialScore = 1;
                } else {
                    partialScore = scores[z];
                }
                score += partialScore;
                drawNumber(partialScore, 4, x - 3, y);
            }
        }
    }
}

//////////////////////////////////////////////////////////////////
// getName()
//
//
//
// Returns:
//    void
//

void getName() {
    u8* pvmem;
    u8 moved, pos, chr;
    u8 markerX, markerY;

    drawFrame(9, 60, 73, 150);

    drawText("NEW HIGH SCORE", 20, 70, 1);
    drawText("ENTER YOUR NAME", 18, 85, 1);
    pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 11, 100);
    cpct_drawSprite(g_tile_symbols_1, pvmem, 3, 11);
    pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 14, 100);
    cpct_drawSprite(g_tile_symbols_2, pvmem, 3, 11);
    pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 17, 100);
    cpct_drawSprite(g_tile_symbols_3, pvmem, 3, 11);
    pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 20, 100);
    cpct_drawSprite(g_tile_symbols_4, pvmem, 3, 11);
    drawText("CHANGE LETTER", 24, 100, 0);
    drawText(" _ TO END", 20, 115, 1);
    drawFrame(12, 130, 70, 160);
    strcpy(newNameHighScore, "A");
    drawText(newNameHighScore, 16, 140, 0);

    markerX = 15;
    markerY = 138;
    cpct_setBlendMode(CPCT_BLEND_XOR);
    pvmem = cpct_getScreenPtr(CPCT_VMEM_START, markerX, markerY);
    cpct_drawSpriteBlended(pvmem, AM_MARKER_H, AM_MARKER_W, am_marker);
    pos = 0;
    chr = 65;
    moved = 0;
    while (1) {
        delay(24);

        if ((cpct_isKeyPressed(Joy0_Down)) || (cpct_isKeyPressed(keys.down))) {
            chr++;
            moved = 1;
        } else if ((cpct_isKeyPressed(Joy0_Up)) || (cpct_isKeyPressed(keys.up))) {
            chr--;
            moved = 1;
        } else if ((pos < 14) && ((cpct_isKeyPressed(Joy0_Right)) || (cpct_isKeyPressed(Joy0_Fire1)) || (cpct_isKeyPressed(keys.right)))) {
            if (chr == 95) {
                newNameHighScore[pos] = '\0';
                break;
            }
            else {
                pos++;
                newNameHighScore[pos] = 65;
                newNameHighScore[pos + 1] = '\0';
                chr = 65;
                moved = 1;
            }

        } else if ((pos > 0) && ((cpct_isKeyPressed(Joy0_Left)) || (cpct_isKeyPressed(keys.left)))) {
            newNameHighScore[pos] = '\0';
            pos--;
            chr = newNameHighScore[pos];
            moved = 1;
        } else if (cpct_isKeyPressed(keys.abort)) {
            break;
        }
        if (moved) {
            moved = 0;
            if (chr > 95)
                chr = 65;
            else if (chr < 65)
                chr = 95;
            newNameHighScore[pos] = chr;
            pvmem = cpct_getScreenPtr(CPCT_VMEM_START, markerX, markerY);
            cpct_drawSpriteBlended(pvmem, AM_MARKER_H, AM_MARKER_W, am_marker);
            pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 16, 140);
            cpct_drawSolidBox(pvmem, #0, 45, 11);
            drawText(newNameHighScore, 16, 140, 0);
            markerX = 15 + (pos * 3);
            pvmem = cpct_getScreenPtr(CPCT_VMEM_START, markerX, markerY);
            cpct_drawSpriteBlended(pvmem, AM_MARKER_H, AM_MARKER_W, am_marker);
        }
    }

}

//////////////////////////////////////////////////////////////////
// setHighScore
//
//
//
// Returns:
//    void
//
void setHighScore(u32 score) {
    u8 i, j;

    i = 8;
    while ((score > scoreHallOfFame[i - 1]) && (i > 0)) {
        i--;
    }
    j = 7;
    if (i <= j) {
        while ((i < j) && (j > 0)) {
            scoreHallOfFame[j] = scoreHallOfFame[j - 1];
            strcpy(nameHallOfFame[j], nameHallOfFame[j - 1]);
            j--;
        }
        getName();
        wait4UserKeypress();
        scoreHallOfFame[j] = score;
        strcpy(nameHallOfFame[j], newNameHighScore);
    }
    highestCardAll = highestCardGame;
}

//////////////////////////////////////////////////////////////////
// drawScoreBoard
//
//
// Returns:
//    void
//

void drawScoreBoard() {
    u8 i;
    u32 c = 0;

    cpct_waitVSYNC();

    cpct_memset(CPCT_VMEM_START, cpct_px2byteM0(0, 0), 0x4000);

    drawText("AMSTHREES SCOREBOARD", 13, 2, 1);

    for (i = 0; i < 8; i++) {
        drawNumber(i + 1, 2, 5, 30 + (i * 15));
        drawText(nameHallOfFame[i], 14, 30 + (i * 15), 0);
        drawNumber(scoreHallOfFame[i], 1, 69, 30 + (i * 15));
    }

    drawText("JOHN LOBO", 25, 170, 1);
    drawText("@ GLASNOST CORP 2016", 11, 185, 1);

    c = 40000;     // Number of loops passed if not keypressed
    // Wait 'till the user presses a key, counting loop iterations
    do {
        c--;                       // One more cycle
        cpct_scanKeyboard_f();     // Scan the keyboard
    } while (( ! cpct_isAnyKeyPressed_f() ) && c > 0);
    //delay(2000);
}



//////////////////////////////////////////////////////////////////
// game
//
//
//
// Returns:
//    void
//
void game(void) {
    u8 moved;
    u8 *pvmem;


    initGame();

    // Clear Screen
    clearScreen();

    pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 61, 72);
    cpct_drawSprite(logo_small, pvmem, 15, 55);

    //drawFrame(2, 1, 49, 182);
    drawTable();
    drawText("NEXT", 62, 2, 0);
    printCells();
    highestCardGame = getHighestCard();
    drawText("HIGHEST", 59, 138, 0);
    pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 63, 154);
    cpct_drawSprite(cards[highestCardGame], pvmem, CARD_W, CARD_H);

    moved = 0;
    // Loop forever
    while (1) {
        delay(24);

        rotatedCells = 0;

        if ((cpct_isKeyPressed(Joy0_Right)) || (cpct_isKeyPressed(keys.right))) {
            if (rotateCellsRight() > 0) {
                addRandomCellTurn(RIGHT);
                moved = 1;
            }
        } else if ((cpct_isKeyPressed(Joy0_Left)) || (cpct_isKeyPressed(keys.left))) {
            if (rotateCellsLeft() > 0) {
                addRandomCellTurn(LEFT);
                moved = 1;
            }
        } else if ((cpct_isKeyPressed(Joy0_Down)) || (cpct_isKeyPressed(keys.down))) {
            if (rotateCellsDown() > 0) {
                addRandomCellTurn(DOWN);
                moved = 1;
            }
        } else if ((cpct_isKeyPressed(Joy0_Up)) || (cpct_isKeyPressed(keys.up))) {
            if (rotateCellsUp() > 0) {
                addRandomCellTurn(UP);
                moved = 1;
            }

        } else if ( cpct_isKeyPressed(keys.music)) {
            if (!playing) {
                playing = 1;
            } else {
                playing = 0;
                cpct_akp_stop ();
            }
        } else if (cpct_isKeyPressed(keys.abort))
            break;

        if (moved) {
            //Empty the rotated cells buffer after ending the animation
            cpct_waitVSYNC();

            highestCardGame = getHighestCard();
            pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 63, 154);
            cpct_drawSprite(cards[highestCardGame], pvmem, CARD_W, CARD_H);

            // Play sound Effect
            cpct_akp_SFXPlay(3, 14, 50 + (highestCardGame * 2), 1, 0, AY_CHANNEL_A);

            printTouched();
            initCells(1);

            moved = 0;
            if (anyMovesLeft() == 0) {
                cpct_akp_stop();
                cpct_akp_musicInit(song05);
                cpct_akp_musicPlay();
                drawScore();
                wait4UserKeypress();
                drawFrame(14, 60, 68, 142);
                drawText("NO MORE MOVES", 20, 90, 1);
                drawText("GAME OVER", 22, 70, 1);
                sprintf(aux_txt, "SCORE  %d", score);
                drawText(aux_txt, 22, 120, 1);
                wait4UserKeypress();
                setHighScore(score);
                drawScoreBoard();
                cpct_akp_stop();
                cpct_akp_musicInit(song02);
                cpct_akp_musicPlay();
                break;
            }
        }

    }
}

//////////////////////////////////////////////////////////////////
// initPuzzleGame
//
//
//
// Returns:
//    void
//
void initPuzzleGame() {

    initCells(0);
    initCells(1);


}


//////////////////////////////////////////////////////////////////
// puzzle game
//
//
//
// Returns:
//    void
//
void puzzleGame(void) {
    u8 moved;
    u8 *pvmem;


    initGame();

    // Clear Screen
    clearScreen();

    pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 61, 72);
    cpct_drawSprite(logo_small, pvmem, 15, 55);

    //drawFrame(2, 1, 49, 182);
    drawTable();
    drawText("NEXT", 62, 2, 0);
    printCells();
    highestCardGame = getHighestCard();
    drawText("HIGHEST", 59, 138, 0);
    pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 63, 154);
    cpct_drawSprite(cards[highestCardGame], pvmem, CARD_W, CARD_H);

    moved = 0;
    // Loop forever
}

//////////////////////////////////////////////////////////////////
// help
//  help screen
//
//
// Returns:
//    void
//

void help() {
    u8* pvmem;

    clearScreen();
    drawText("MOVE THE TABLE     ", 0, 0, 1);
    pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 57, 0);
    cpct_drawSprite(g_tile_symbols_1, pvmem, 3, 11);
    pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 60, 0);
    cpct_drawSprite(g_tile_symbols_2, pvmem, 3, 11);
    pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 63, 0);
    cpct_drawSprite(g_tile_symbols_3, pvmem, 3, 11);
    pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 66, 0);
    cpct_drawSprite(g_tile_symbols_4, pvmem, 3, 11);
    drawText("TO COMBINE TWO CARDS", 0, 15, 1);
    drawText("AND CREATE A NEW ONE", 0, 30, 1);

    pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 15, 58);
    cpct_drawSprite(cards[1], pvmem, CARD_W, CARD_H);
    pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 29, 78);
    cpct_drawSprite(ic_icons_2, pvmem, IC_ICONS_2_W, IC_ICONS_2_H);
    pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 35, 58);
    cpct_drawSprite(cards[2], pvmem, CARD_W, CARD_H);
    pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 49, 78);
    cpct_drawSprite(ic_icons_3, pvmem, IC_ICONS_3_W, IC_ICONS_3_H);
    pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 55, 58);
    cpct_drawSprite(cards[3], pvmem, CARD_W, CARD_H);

    pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 15, 108);
    cpct_drawSprite(cards[3], pvmem, CARD_W, CARD_H);
    pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 29, 128);
    cpct_drawSprite(ic_icons_2, pvmem, IC_ICONS_2_W, IC_ICONS_2_H);
    pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 35, 108);
    cpct_drawSprite(cards[3], pvmem, CARD_W, CARD_H);
    pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 49, 128);
    cpct_drawSprite(ic_icons_3, pvmem, IC_ICONS_3_W, IC_ICONS_3_H);
    pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 55, 105);
    cpct_drawSprite(cards[4], pvmem, CARD_W, CARD_H);

    drawText("WHICH IS THE HIGHEST CARD", 0, 170, 1);
    drawText("YOU CAN GET??", 0, 185, 1);
    wait4UserKeypress();
}

//////////////////////////////////////////////////////////////////
// drawMarker
//
//
//
// Returns:
//    void
//


void drawMarker() {
    u8* pvmem;
    cpct_setBlendMode(CPCT_BLEND_XOR);
    pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 15, 40 + (20 * selectedOption));
    cpct_drawSpriteBlended(pvmem, IC_ICONS_0_H, IC_ICONS_0_W, ic_icons_0);
    pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 62, 40 + (20 * selectedOption));
    cpct_drawSpriteBlended(pvmem, IC_ICONS_1_H, IC_ICONS_1_W, ic_icons_1);
}

//////////////////////////////////////////////////////////////////
// drawMenu
//
//
//
// Returns:
//    void
//
void drawMenu() {
    u8* pvmem;

    cpct_waitVSYNC();

    cpct_memset(CPCT_VMEM_START, cpct_px2byteM0(0, 0), 0x4000);

    pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 20, 0);
    cpct_drawSprite(logo_micro, pvmem, 5, 18);

    drawFrame(13, 23, 67, 151);

    drawText("AMSTHREES", 35, 3, 1);

    drawText("REDEFINE", 28, 40, 0);
    drawText("MUSIC", 28, 60, 0);
    if (playing)
        drawText("OFF", 46, 60, 0);
    else
        drawText("ON", 46, 60, 0);
    drawText("HELP", 28, 80, 0);
    drawText("FREE MODE", 28, 100, 0);
    drawText("PUZZLE MODE", 28, 120, 0);

    drawNumber(1, 1, 21, 40);
    drawNumber(2, 1, 21, 60);
    drawNumber(3, 1, 21, 80);
    drawNumber(4, 1, 21, 100);
    drawNumber(5, 1, 21, 120);


    drawText("JOHN LOBO", 25, 170, 1);
    drawText("@ GLASNOST CORP 2016", 11, 185, 1);

    drawMarker();
}


//////////////////////////////////////////////////////////////////
// checkKeyboardMenu
//    Checks the keyboard for the menu options
//
//
// Returns:
//    void
//
void checkKeyboardMenu() {

    u8 *pvideo;


    delay(20);

    if (( cpct_isKeyPressed(Key_1)) || (((cpct_isKeyPressed(keys.fire) || (cpct_isKeyPressed(Joy0_Fire1)))  && (selectedOption == 0)))) {

        drawMarker();
        selectedOption = 0;
        drawMarker();

        waitKeyUp(Key_1);

        keys.up    = redefineKey("UP");
        keys.down  = redefineKey("DOWN");
        keys.left  = redefineKey("LEFT");
        keys.right = redefineKey("RIGHT");
        keys.fire  = redefineKey("FIRE");
        keys.pause = redefineKey("PAUSE");
        keys.abort = redefineKey("ABORT");
        //keys.music = redefineKey("MUSIC");

        pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 8, 154);
        cpct_drawSolidBox(pvideo, #0, 64, FONT_H);

    }
    else if (( cpct_isKeyPressed(Key_2)) || (((cpct_isKeyPressed(keys.fire) || (cpct_isKeyPressed(Joy0_Fire1)))  && (selectedOption == 1)))) {
        drawMarker();
        selectedOption = 1;
        drawMarker();

        if (!playing) {
            playing = 1;
        } else {
            playing = 0;
            cpct_akp_stop ();
        }

        drawMenu();
    }


    else if (( cpct_isKeyPressed(Key_3)) || (((cpct_isKeyPressed(keys.fire) || (cpct_isKeyPressed(Joy0_Fire1))) && (selectedOption == 2)))) {

        waitKeyUp(Key_3);

        help();

        drawMenu();

    }

    else if (( cpct_isKeyPressed(Key_4)) || (((cpct_isKeyPressed(keys.fire) || (cpct_isKeyPressed(Joy0_Fire1))) && (selectedOption == 3)))) {

        waitKeyUp(Key_4);

        game();

        playing = 1;
        drawMenu();

    }

    else if ((cpct_isKeyPressed(keys.up)) || (cpct_isKeyPressed(Joy0_Up))) {
        if (selectedOption > 0) {
            drawMarker();
            selectedOption--;
            drawMarker();
        } else {
            drawMarker();
            selectedOption = 4;
            drawMarker();
        }

    } else if ((cpct_isKeyPressed(keys.down)) || (cpct_isKeyPressed(Joy0_Down))) {
        if (selectedOption < 4) {
            drawMarker();
            selectedOption++;
            drawMarker();
        } else {
            drawMarker();
            selectedOption = 0;
            drawMarker();
        }

    } else if ( cpct_isKeyPressed(keys.music)) {
        if (!playing) {
            playing = 1;
        } else {
            playing = 0;
            cpct_akp_stop ();
        }
    }
}


//////////////////////////////////////////////////////////////////
// Threes
//
//
//
// Returns:
//    void
//
void threes() {
    u32 lapso;

    while (1) {

        drawMenu();

        lapso = 0;

        while (lapso < SWITCH_SCREENS) {
            //cpct_waitVSYNC();

            checkKeyboardMenu();

            lapso++;

        }

        drawScoreBoard();

    }
    cpct_disableFirmware();
}