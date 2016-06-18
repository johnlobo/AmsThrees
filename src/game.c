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

#include <stdio.h>
#include <stdlib.h>
#include "game.h"

Keys keys;

// Global Variables
u8 cells[4][4];
const u16 values[15] = {0, 1, 2, 3, 6, 12, 24, 48, 96, 192, 384, 768, 1536, 3072, 6144};
const u32 scores[15] = {0, 0, 0, 3, 9, 27, 81, 243, 729, 2187, 6561, 19683, 59049, 177147, 531441
                       };
TAdjacents adjacents;
u8* const tiles[15] = {tile_tiles_00, tile_tiles_01, tile_tiles_02, tile_tiles_03, tile_tiles_04,
                       tile_tiles_05, tile_tiles_06, tile_tiles_07, tile_tiles_08, tile_tiles_09,
                       tile_tiles_10, tile_tiles_11, tile_tiles_12, tile_tiles_13, tile_tiles_14,
                      };
u32 score;
u32 scoreHallOfFame[8];
u8  nameHallOfFame[8][15];
u8 newNameHighScore[15] = {32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0};
u8 nextTile;
u8 selectedOption;
u8* aux_txt;
u8 tileBag[12];
u8 currentTile;
u8 maxTiles;

//////////////////////////////////////////////////////////////////
// renewTileBag
//    Count the number of zeroes that still remains in the cells
//
//
// Returns:
//    <u8> Number of zeroes in cells
//
void renewTileBag() {
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
        tileBag[i] = currentValue;
    }
    currentTile = 0;
}

//////////////////////////////////////////////////////////////////
// delay
//    Count the number of zeroes that still remains in the cells
//
//
// Returns:
//    <u8> Number of zeroes in cells
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
// initAdjacents
//    Initialize the adjacents variable
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
// trace
//
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
// trace
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
// trace
//
//
//
// Returns:
//    void
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
// trace
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
    //cells[i][j] = nextTile;
    //nextTile = (cpct_rand() / 85) + 1;
    cells[i][j] = tileBag[currentTile];
    if (currentTile < 11)
        currentTile++;
    else
        renewTileBag();
}

//////////////////////////////////////////////////////////////////
// addRandomCell
//
//
//
// Returns:
//    void
//
void addRandomCell() {
    u8 i, j;

    i = cpct_rand() / 64;
    j = cpct_rand() / 64;
    while (cells[i][j] != 0) {
        i = cpct_rand() / 64;
        j = cpct_rand() / 64;
    }
    //cells[i][j] = nextTile;
    //nextTile = (cpct_rand() / 85) + 1;
    //cells[i][j] = (cpct_rand() / 85) + 1;
    cells[i][j] = (cpct_rand() / 85) + 1;
}

//////////////////////////////////////////////////////////////////
// trace
//
//
//
// Returns:
//    void
//
void initCells() {
    u8 i, j;

    for (i = 0; i < 4; i++) {
        for (j = 0; j < 4; j++) {
            cells[i][j] = 0;
        }
    }
}


//////////////////////////////////////////////////////////////////
// initialization
//
//
//
// Returns:
//    void
//
void initialization() {
    u32 seed;    // Value to initialize the random seed

    drawText("AMSTHREES IS READY", 31, 76, 1);
    drawText("PRESS ANY KEY", 20, 90, 1);

    seed = wait4UserKeypress();
    // Random seed may never be 0, so check first and add 1 if it was 0
    if (!seed)
        seed++;
    cpct_srand(seed);

    scoreHallOfFame[0] = 6000;
    scoreHallOfFame[1] = 5000;
    scoreHallOfFame[2] = 4000;
    scoreHallOfFame[3] = 3000;
    scoreHallOfFame[4] = 1500;
    scoreHallOfFame[5] = 1000;
    scoreHallOfFame[6] = 500;
    scoreHallOfFame[7] = 300;

    strcpy(nameHallOfFame[0], "MARTIN");
    strcpy(nameHallOfFame[1], "DIEGO");
    strcpy(nameHallOfFame[2], "MARIA");
    strcpy(nameHallOfFame[3], "DAVID");
    strcpy(nameHallOfFame[4], "MASTER");
    strcpy(nameHallOfFame[5], "EXPERT");
    strcpy(nameHallOfFame[6], "INTERMEDIATE");
    strcpy(nameHallOfFame[7], "BEGINNER");


    clearScreen();

    keys.up    = Key_Q;
    keys.down  = Key_A;
    keys.left  = Key_O;
    keys.right = Key_P;
    //keys.fire  = Key_Space;
    keys.pause = Key_Del;
    keys.abort = Key_Esc;

    selectedOption = 1;

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
    u8 i,j,k;

    initCells();

    renewTileBag();

    for (i = 0; i < 9; i++) {
        j = cpct_rand() / 64;
        k = cpct_rand() / 64;
        while (cells[j][k] != 0) {
            j = cpct_rand() / 64;
            k = cpct_rand() / 64;
        }
        //cells[i][j] = nextTile;
        //nextTile = (cpct_rand() / 85) + 1;
        //cells[i][j] = (cpct_rand() / 85) + 1;
        cells[j][k] = tileBag[currentTile];
        currentTile++;
    }

    score = 0;

    //nextTile = (cpct_rand() / 85) + 1;



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
    u8 matched;

    matched = 0;
    for (i = 0; i < 4; i++) {
        for (j = 1; j < 4; j++) {
            if (cells[i][j] != 0) {
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
            }
        }
    }
    return matched;
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
    u8 matched;

    matched = 0;
    for (i = 0; i < 4; i++) {
        j = 3;
        do {
            j--;
            if (cells[i][j] != 0) {
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
            }
        } while (j > 0);
    }
    return matched;
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
    u8 matched;

    matched = 0;
    for (i = 1; i < 4; i++) {
        for (j = 0; j < 4; j++) {
            if (cells[i][j] != 0) {
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
            }
        }
    }
    return matched;
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
    u8 matched;

    matched = 0;
    i = 3;
    do {
        i--;
        for (j = 0; j < 4; j++) {
            if (cells[i][j] != 0) {
                // empty cell on the left
                if (cells[i + 1][j] == 0) {
                    cells[i + 1][j] = cells[i][j];
                    cells[i][j] = 0;
                    matched = 1;
                } if (((cells[i + 1][j] == 1) && (cells[i][j] == 2)) ||
                        ((cells[i + 1][j] == 2) && (cells[i][j] == 1))) {
                    cells[i + 1][j] = 3;
                    cells[i][j] = 0;
                    matched = 1;
                } else if ((cells[i + 1][j] == cells[i][j]) && (cells[i][j] > 2)) {
                    cells[i + 1][j]++;
                    cells[i][j] = 0;
                    matched = 1;

                }
            }
        }
    } while (i > 0);

    return matched;
}

//////////////////////////////////////////////////////////////////
// printCells
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
        y = 6 + (i * 44);
        for (j = 0; j < 4; j++) {
            //  x = 3 + (j * 12);
            x = 4 + (j * 11);
            pvmem = cpct_getScreenPtr(CPCT_VMEM_START, x, y);
            cpct_drawSprite(tiles[cells[i][j]], pvmem, 10, 40);
        }
    }
    pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 62, 20);
    cpct_drawSprite(tiles[tileBag[currentTile]], pvmem, 10, 40);
}

//////////////////////////////////////////////////////////////////
// drawCells
//
//
//
// Returns:
//    void
//
void drawScore() {
    u8 i, j, z;
    u32 partialScore;

    for (i = 0; i < 4; i++) {
        for (j = 0; j < 4; j++) {
            // value cache to speed up a bit
            z = cells[i][j];
            if (z >= 3) {
                if (z == 3) {
                    partialScore = 1;
                } else {
                    partialScore = scores[z];
                }
                score += partialScore;
                drawNumber(partialScore, 4, 3 + (11 * j), 6 + (44 * i));
            }
        }
    }
}

//////////////////////////////////////////////////////////////////
// game
//
//
//
// Returns:
//    void
//
void getName() {
    u8* pvmem;
    u8 moved, pos, chr;

    drawFrame(9, 60, 73, 150);

    drawText("NEW HIGH SCORE", 20, 70, 1);
    drawText("ENTER YOUR NAME", 18, 85, 1);
    pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 11, 100);
    cpct_drawSprite(g_tile_symbols_1, pvmem, 3, 11);
    drawText(" TO CHANGE LETTER", 19, 100, 0);
    pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 16, 100);
    cpct_drawSprite(g_tile_symbols_2, pvmem, 3, 11);
    pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 16, 100);
    cpct_drawSprite(g_font_big[38], pvmem, 3, 11);
    drawText(" [ TO END", 20, 115, 1);
    drawFrame(12, 130, 70, 160);
    strcpy(newNameHighScore, "A");
    drawText(newNameHighScore, 0, 140, 1);
    pos = 0;
    chr = 65;
    moved = 0;
    while (1) {
        delay(24);
        cpct_scanKeyboard_f();

        if (cpct_isKeyPressed(keys.down)) {
            chr++;
            moved = 1;
        } else if (cpct_isKeyPressed(keys.up)) {
            chr--;
            moved = 1;
        } else if (cpct_isKeyPressed(keys.right)) {
            if (chr == 91) {
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

        } else if (cpct_isKeyPressed(keys.left)) {
            newNameHighScore[pos] = '\0';
            pos--;
            chr = newNameHighScore[pos];
            moved = 1;
        } else if (cpct_isKeyPressed(keys.abort)) {
            break;
        }
        if (moved) {
            moved = 0;
            if (chr > 91)
                chr = 65;
            else if (chr < 65)
                chr = 91;
            newNameHighScore[pos] = chr;
            pvmem = cpct_getScreenPtr(CPCT_VMEM_START, 13, 140);
            cpct_drawSolidBox(pvmem, cpct_px2byteM0(5, 5), 60, 11);
            drawText(newNameHighScore, 20, 140, 1);

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
}

void drawScoreBoard() {
    u8 i;
    u32 c = 0;

    cpct_memset(CPCT_VMEM_START, cpct_px2byteM0(5, 5), 0x4000);

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
        cpct_scanKeyboard_f();     // Scan the scan the keyboard
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

    initGame();

    // Clear Screen
    clearScreen();
    //clearWindow(0, 0, 160, 200);

    drawFrame(2, 1, 49, 182);
    printCells();
    drawText("NEXT", 62, 2, 0);

    wait4UserKeypress();

    moved = 0;
    // Loop forever
    while (1) {
        delay(24);
        cpct_scanKeyboard_f();

        if (cpct_isKeyPressed(keys.right)) {
            if (rotateCellsRight()) {
                addRandomCellTurn(RIGHT);
                moved = 1;
            }
        } else if (cpct_isKeyPressed(keys.left)) {
            if (rotateCellsLeft()) {
                addRandomCellTurn(LEFT);
                moved = 1;
            }
        } else if (cpct_isKeyPressed(keys.down)) {
            if (rotateCellsDown()) {
                addRandomCellTurn(DOWN);
                moved = 1;
            }
        } else if (cpct_isKeyPressed(keys.up)) {
            if (rotateCellsUp()) {
                addRandomCellTurn(UP);
                moved = 1;
            }
        } else if (cpct_isKeyPressed(keys.abort))
            break;

        if (moved) {
            printCells();
            moved = 0;
            if (anyMovesLeft() == 0) {
                drawScore();
                wait4UserKeypress();
                drawFrame(14, 60, 68, 142);
                drawFallingText("NO MORE MOVES", 20, 90, 96);
                drawText("GAME OVER", 22, 70, 1);
                sprintf(aux_txt, "SCORE  %d", score);
                drawText(aux_txt, 22, 120, 1);
                wait4UserKeypress();
                setHighScore(score);
                drawScoreBoard();
                break;
            }
        }

    }
}

void checkKeyboardMenu() {

    u8 *pvideo;

    cpct_scanKeyboard_f();

    if (selectedOption == 1) {
        pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 27, 71);
        cpct_drawSprite(g_tile_marker_3, pvideo, 2, 9);
        pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 54, 71);
        cpct_drawSprite(g_tile_marker_3, pvideo, 2, 9);
        pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 27, 51);
        cpct_drawSprite(g_tile_marker_0, pvideo, 2, 9);
        pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 54, 51);
        cpct_drawSprite(g_tile_marker_0, pvideo, 2, 9);
    } else {
        pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 27, 51);
        cpct_drawSprite(g_tile_marker_3, pvideo, 2, 9);
        pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 54, 51);
        cpct_drawSprite(g_tile_marker_3, pvideo, 2, 9);
        pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 27, 71);
        cpct_drawSprite(g_tile_marker_0, pvideo, 2, 9);
        pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 54, 71);
        cpct_drawSprite(g_tile_marker_0, pvideo, 2, 9);

    }

    if (cpct_isKeyPressed(Key_1)) {

        selectedOption = 1;

        waitKeyUp(Key_1);

        keys.up    = redefineKey("UP");
        keys.down  = redefineKey("DOWN");
        keys.left  = redefineKey("LEFT");
        keys.right = redefineKey("RIGHT");
        keys.pause = redefineKey("PAUSE");
        keys.abort = redefineKey("ABORT");

        pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 39 - 10 * FONT_W, 144);
        cpct_drawSolidBox(pvideo, cpct_px2byteM0(5, 5), 15 * FONT_W, FONT_H);

    }

    else if (cpct_isKeyPressed(Key_2)) {

        selectedOption = 2;

        keys.up    = Joy0_Up;
        keys.down  = Joy0_Down;
        keys.left  = Joy0_Left;
        keys.right = Joy0_Right;

        waitKeyUp(Key_2);

        keys.pause = redefineKey("PAUSE");
        keys.abort = redefineKey("ABORT");

        pvideo = cpct_getScreenPtr(CPCT_VMEM_START, 39 - 10 * FONT_W, 144);
        cpct_drawSolidBox(pvideo, cpct_px2byteM0(5, 5), 15 * FONT_W, FONT_H);

    }


    else if (cpct_isKeyPressed(Key_4)) {

        waitKeyUp(Key_1);
        game();
        drawMenu();

    }
}




void threes() {
    u32 lapso;

    while (1) {

        drawMenu();

        lapso = 0;

        while (lapso < SWITCH_SCREENS) {

            checkKeyboardMenu();

            lapso++;

        }

        drawScoreBoard();

    }
}