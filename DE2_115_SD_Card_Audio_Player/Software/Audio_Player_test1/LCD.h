#ifndef LCD_H_
#define LCD_H_

#include "altera_avalon_pio_regs.h"

bool LCD_Open(void);
bool LCD_TextOut(char *pText);
bool LCD_Clear(void);
void LCD_Close(void);

//  LCD Module 16*2
#define lcd_write_cmd(base, data)                     IOWR(base, 0, data)
#define lcd_read_cmd(base)                            IORD(base, 1)
#define lcd_write_data(base, data)                    IOWR(base, 2, data)
#define lcd_read_data(base)                           IORD(base, 3)
//-------------------------------------------------------------------------
void  LCD_Init();
void  LCD_Show_Text(char* Text);
void  LCD_Line2();
void  LCD_Test();
//-------------------------------------------------------------------------

#endif /*LCD_H_*/
