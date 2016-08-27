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

#include "tilemap.h"

const u8 G_frame_1[8] = {
    0x00, 0x30,
    0x10, 0xF0,
    0x70, 0xF0,
    0x70, 0x30};


const u8 G_frame_2[8] = {
    0x30, 0x00,
    0xF0, 0x20,
    0xF0, 0xB0,
    0x30, 0xB0};


const u8 G_frame_3[8] = {
    0x70, 0x30,
    0x70, 0xF0,
    0x10, 0xF0,
    0x00, 0x30};


const u8 G_frame_4[8] = {
    0x30, 0xB0,
    0xF0, 0xB0,
    0xF0, 0x20,
    0x30, 0x00};


const u8 G_frame_5[8] = {
    0x30, 0x30,
    0xF0, 0xF0,
    0xF0, 0xF0,
    0x30, 0x30};


const u8 G_frame_6[8] = {
    0x70, 0x00,
    0x70, 0x00,
    0x70, 0x00,
    0x70, 0x00};


const u8 G_frame_7[8] = {
    0x00, 0xB0,
    0x00, 0xB0,
    0x00, 0xB0,
    0x00, 0xB0};