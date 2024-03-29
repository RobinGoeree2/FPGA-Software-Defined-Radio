// --------------------------------------------------------------------
// Copyright (c) 2010 by Terasic Technologies Inc. 
// --------------------------------------------------------------------
//
// Permission:
//
//   Terasic grants permission to use and modify this code for use
//   in synthesis for all Terasic Development Boards and Altera Development 
//   Kits made by Terasic.  Other use of this code, including the selling 
//   ,duplication, or modification of any portion is strictly prohibited.
//
// Disclaimer:
//
//   This VHDL/Verilog or C/C++ source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
//   It is the user's responsibility to verify their design for
//   consistency and functionality through the use of formal
//   verification methods.  Terasic provides no warranty regarding the use 
//   or functionality of this code.
//
// --------------------------------------------------------------------
//           
//                     Terasic Technologies Inc
//                     356 Fu-Shin E. Rd Sec. 1. JhuBei City,
//                     HsinChu County, Taiwan
//                     302
//
//                     web: http://www.terasic.com/
//                     email: support@terasic.com
//
// --------------------------------------------------------------------

#include "terasic_includes.h"
#include "SEG7.h"
#include "system.h"

#define SEG7_SET(index, seg_mask) IOWR(SEG7_BASE,index,seg_mask)
#define SEG7_NUM    8

static    unsigned char szMap[] = {
        63, 6, 91, 79, 102, 109, 125, 7, 
        127, 111, 119, 124, 57, 94, 121, 113
    };  // 0,1,2,....9, a, b, c, d, e, f
    
void SEG7_Clear(void){
    int i;
    for(i=0;i<SEG7_NUM;i++){
        SEG7_SET(i, 0x00);
    }        
}
void SEG7_Full(void){
    int i;
    for(i=0;i<SEG7_NUM;i++){
        SEG7_SET(i, 0xFF);
    }        
}

void SEG7_Number(void){
    int i;
    for(i=0;i<SEG7_NUM;i++){
        SEG7_SET(i, szMap[i]);
    }        
}

void SEG7_Hex(alt_u32 Data, alt_u8 point_mask){
    alt_u8 mask = 0x01;
    alt_u8 seg_mask;
    int i;
    
    //
    seg_mask = 0;
    for(i=0;i<SEG7_NUM;i++){
        seg_mask = szMap[Data & 0x0F];
        Data >>= 4;
        if (point_mask & mask)
            seg_mask |= 0x80;
        mask <<= 1;     
        SEG7_SET(i, seg_mask);
    }        
}

void SEG7_Decimal(alt_u32 Data, alt_u8 point_mask){
    alt_u8 mask = 0x01;
    alt_u8 seg_mask;
    int i;
    
    //
    seg_mask = 0;
    for(i=0;i<SEG7_NUM;i++){
        seg_mask = szMap[Data%10];
        Data /= 10;
        if (point_mask & mask)
            seg_mask |= 0x80;
        mask <<= 1;   
        SEG7_SET(i, seg_mask);
    }        
  
} 

