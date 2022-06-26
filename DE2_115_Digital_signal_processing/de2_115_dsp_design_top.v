// ============================================================================
// Copyright (c) 2010 by Terasic Technologies Inc. 
// ============================================================================
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
// ============================================================================
//           
//                     Terasic Technologies Inc
//                     356 Fu-Shin E. Rd Sec. 1. JhuBei City,
//                     HsinChu County, Taiwan
//                     302
//
//                     web: http://www.terasic.com/
//                     email: support@terasic.com
//
// ============================================================================
// Major Functions/Design Description:
//
//   DE2-115 Development Board + DCC(AD/DA Data Conversion Card) demo
//
//   user interface define
//     LEDG :
//        LEDG[0] 	  --> PLL locked indicator.					Light = Locked.
//        LEDG[1] 	  --> ADC DFS(Data Format Select) indicator.
//        LEDG[2] 	  --> ADC DCS(Duty Cycle Stabilizer Select) indicator.
//        LEDG[3] 	  --> ADC Out-of-Range indicator.			Light = Out-of-Range.
//        LEDG[4] 	  --> 1MHz NCO output disable indicator.	Light = disable.
//        LEDG[5] 	  --> 10MHz NCO output disable indicator.	Light = disable.
//        LEDG[6] 	  --> Channel A or B indicator.				Light = channel B select.
//        LEDG[7] 	  --> Heartbeat.
//      SW : 
//        SW[0] --> ADC DFS(Data Format Select)
//        SW[1] --> ADC DCS(Duty Cycle Stabilizer Select)
//        SW[2] --> Channel A or B select, High is select channel B.
//      KEY : 
//        KEY[0]   --> 1MHz NCO output disable
//        KEY[1]   --> 10MHz NCO output disable
//        KEY[2]   --> Not use
//        KEY[3]   --> Reset
//
// ============================================================================
// Revision History:
// ============================================================================
//   Ver.: |Author:   |Mod. Date:    |Changes Made:
//   V1.0  |EricChen  |10/07/05      |
// ============================================================================

//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================
`default_nettype none

module DE2_115_dsp_design_top(

	//////// CLOCK //////////
	OSC_50,

	//////// Sma //////////
	SMA_CLKIN,
	SMA_CLKOUT,

	//////// LED //////////
	LEDG,
	LEDR,

	//////// KEY //////////
	KEY,

	//////// SW //////////
	SW,

	//////// SEG7 //////////
	HEX0_D,
	HEX1_D,
	HEX2_D,
	HEX3_D,
	HEX4_D,
	HEX5_D,
	HEX6_D,
	HEX7_D,

	//////// LCD //////////
	LCD_BLON,
	LCD_DATA,
	LCD_EN,
	LCD_ON,
	LCD_RS,
	LCD_RW,

	//////// RS232 //////////
	UART_CTS,
	UART_RTS,
	UART_RXD,
	UART_TXD,

	//////// PS2 for Keyboard and Mouse //////////
	PS2_KBCLK,
	PS2_KBDAT,
	PS2_MSCLK,
	PS2_MSDAT,

	//////// SDCARD //////////
	SD_CLK,
	SD_CMD,
	SD_DAT,
	SD_WP_n,

	//////// VGA //////////
	VGA_B,
	VGA_BLANK_n,
	VGA_CLK,
	VGA_G,
	VGA_HS,
	VGA_R,
	VGA_SYNC_n,
	VGA_VS,

	//////// Audio //////////
	AUD_ADCDAT,
	AUD_ADCLRCK,
	AUD_BCLK,
	AUD_DACDAT,
	AUD_DACLRCK,
	AUD_XCK,

	//////// I2C for EEPROM //////////
	EEP_I2C_SCL,
	EEP_I2C_SDA,

	//////// I2C for Audio Tv-Decoder HSMC  //////////
	I2C_SCL,
	I2C_SDA,

	//////// Ethernet 0 //////////
	NET0_GTX_CLK,
	NET0_INT_n,
	NET0_LINK100,
	NET0_MDC,
	NET0_MDIO,
	NET0_RESET_n,
	NET0_RX_CLK,
	NET0_RX_COL,
	NET0_RX_CRS,
	NET0_RX_DATA,
	NET0_RX_DV,
	NET0_RX_ER,
	NET0_TX_CLK,
	NET0_TX_DATA,
	NET0_TX_EN,
	NET0_TX_ER,
	NETCLK_25,

	//////// Ethernet 1 //////////
	NET1_GTX_CLK,
	NET1_INT_n,
	NET1_LINK100,
	NET1_MDC,
	NET1_MDIO,
	NET1_RESET_n,
	NET1_RX_CLK,
	NET1_RX_COL,
	NET1_RX_CRS,
	NET1_RX_DATA,
	NET1_RX_DV,
	NET1_RX_ER,
	NET1_TX_CLK,
	NET1_TX_DATA,
	NET1_TX_EN,
	NET1_TX_ER,

	//////// TV Decoder 1 //////////
	TD0_CLK27,
	TD0_DATA,
	TD0_HS,
	TD0_RESET_n,
	TD0_VS,

	//////// USB 2.0 OTG //////////
	OTG_A,
	OTG_CS_n,
	OTG_DACK_n,
	OTG_DATA,
	OTG_DREQ,
	OTG_FSPEED,
	OTG_INT,
	OTG_LSPEED,
	OTG_OE_n,
	OTG_RESET_n,
	OTG_WE_n,

	//////// IR Receiver //////////
	IRDA_RXD,

	//////// SDRAM //////////
	DRAM_ADDR,
	DRAM_BA,
	DRAM_CAS_n,
	DRAM_CKE,
	DRAM_CLK,
	DRAM_CS_n,
	DRAM_DQ,
	DRAM_DQM,
	DRAM_RAS_n,
	DRAM_WE_n,

	//////// SRAM //////////
	SRAM_ADDR,
	SRAM_CE_n,
	SRAM_DQ,
	SRAM_LB_n,
	SRAM_OE_n,
	SRAM_UB_n,
	SRAM_WE_n,

	//////// Flash //////////
	FLASH_ADDR,
	FLASH_CE_n,
	FLASH_DQ,
	FLASH_OE_n,
	FLASH_RESET_n,
	FLASH_RY,
	FLASH_WE_n,
	FLASH_WP_n,

	//////// HSMC //////////
	AD_SCLK,
	AD_SDIO,
	ADA_D,
	ADA_DCO,
	ADA_OE,
	ADA_OR,
	ADA_SPI_CS,
	ADB_D,
	ADB_DCO,
	ADB_OE,
	ADB_OR,
	ADB_SPI_CS,
	AIC_BCLK,
	AIC_DIN,
	AIC_DOUT,
	AIC_LRCIN,
	AIC_LRCOUT,
	AIC_SPI_CS,
	AIC_XCLK,
	CLKIN1,
	CLKOUT0,
	DA,
	DB,
	FPGA_CLK_A_N,
	FPGA_CLK_A_P,
	FPGA_CLK_B_N,
	FPGA_CLK_B_P,
	J1_152,
	XT_IN_N,
	XT_IN_P 
);

//=======================================================
//  PARAMETER declarations
//=======================================================


//=======================================================
//  PORT declarations
//=======================================================

//////////// CLOCK //////////
input		     [2:0]		OSC_50;

//////////// Sma //////////
input		          		SMA_CLKIN;
output		          		SMA_CLKOUT;

//////////// LED //////////
output		     [8:0]		LEDG;
output		    [17:0]		LEDR;

//////////// KEY //////////
input		     [3:0]		KEY;

//////////// SW //////////
input		    [17:0]		SW;

//////////// SEG7 //////////
output		     [6:0]		HEX0_D;
output		     [6:0]		HEX1_D;
output		     [6:0]		HEX2_D;
output		     [6:0]		HEX3_D;
output		     [6:0]		HEX4_D;
output		     [6:0]		HEX5_D;
output		     [6:0]		HEX6_D;
output		     [6:0]		HEX7_D;

//////////// LCD //////////
output		          		LCD_BLON;
inout		     [7:0]		LCD_DATA;
output		          		LCD_EN;
output		          		LCD_ON;
output		          		LCD_RS;
output		          		LCD_RW;

//////////// RS232 //////////
output		          		UART_CTS;
input		          		UART_RTS;
input		          		UART_RXD;
output		          		UART_TXD;

//////////// PS2 for Keyboard and Mouse //////////
inout		          		PS2_KBCLK;
inout		          		PS2_KBDAT;
inout		          		PS2_MSCLK;
inout		          		PS2_MSDAT;

//////////// SDCARD //////////
output		          		SD_CLK;
inout		          		SD_CMD;
inout		     [3:0]		SD_DAT;
input		          		SD_WP_n;

//////////// VGA //////////
output		     [7:0]		VGA_B;
output		          		VGA_BLANK_n;
output		          		VGA_CLK;
output		     [7:0]		VGA_G;
output		          		VGA_HS;
output		     [7:0]		VGA_R;
output		          		VGA_SYNC_n;
output		          		VGA_VS;

//////////// Audio //////////
input		          		AUD_ADCDAT;
inout		          		AUD_ADCLRCK;
inout		          		AUD_BCLK;
output		          		AUD_DACDAT;
inout		          		AUD_DACLRCK;
output		          		AUD_XCK;

//////////// I2C for EEPROM //////////
output		          		EEP_I2C_SCL;
inout		          		EEP_I2C_SDA;

//////////// I2C for Audio Tv-Decoder HSMC  //////////
output		          		I2C_SCL;
inout		          		I2C_SDA;

//////////// Ethernet 0 //////////
output		          		NET0_GTX_CLK;
input		          		NET0_INT_n;
input		          		NET0_LINK100;
output		          		NET0_MDC;
inout		          		NET0_MDIO;
output		          		NET0_RESET_n;
input		          		NET0_RX_CLK;
input		          		NET0_RX_COL;
input		          		NET0_RX_CRS;
input		     [3:0]		NET0_RX_DATA;
input		          		NET0_RX_DV;
input		          		NET0_RX_ER;
input		          		NET0_TX_CLK;
output		     [3:0]		NET0_TX_DATA;
output		          		NET0_TX_EN;
output		          		NET0_TX_ER;
input		          		NETCLK_25;

//////////// Ethernet 1 //////////
output		          		NET1_GTX_CLK;
input		          		NET1_INT_n;
input		          		NET1_LINK100;
output		          		NET1_MDC;
inout		          		NET1_MDIO;
output		          		NET1_RESET_n;
input		          		NET1_RX_CLK;
input		          		NET1_RX_COL;
input		          		NET1_RX_CRS;
input		     [3:0]		NET1_RX_DATA;
input		          		NET1_RX_DV;
input		          		NET1_RX_ER;
input		          		NET1_TX_CLK;
output		     [3:0]		NET1_TX_DATA;
output		          		NET1_TX_EN;
output		          		NET1_TX_ER;

//////////// TV Decoder 1 //////////
input		          		TD0_CLK27;
input		     [7:0]		TD0_DATA;
input		          		TD0_HS;
output		          		TD0_RESET_n;
input		          		TD0_VS;

//////////// USB 2.0 OTG //////////
input		     [1:0]		OTG_A;
output		          		OTG_CS_n;
output		     [1:0]		OTG_DACK_n;
inout		    [15:0]		OTG_DATA;
input		     [1:0]		OTG_DREQ;
inout		          		OTG_FSPEED;
input		     [1:0]		OTG_INT;
inout		          		OTG_LSPEED;
output		          		OTG_OE_n;
output		          		OTG_RESET_n;
output		          		OTG_WE_n;

//////////// IR Receiver //////////
input		          		IRDA_RXD;

//////////// SDRAM //////////
output		    [12:0]		DRAM_ADDR;
output		     [1:0]		DRAM_BA;
output		          		DRAM_CAS_n;
output		          		DRAM_CKE;
output		          		DRAM_CLK;
output		          		DRAM_CS_n;
inout		    [31:0]		DRAM_DQ;
output		     [3:0]		DRAM_DQM;
output		          		DRAM_RAS_n;
output		          		DRAM_WE_n;

//////////// SRAM //////////
output		    [19:0]		SRAM_ADDR;
output		          		SRAM_CE_n;
inout		    [15:0]		SRAM_DQ;
output		          		SRAM_LB_n;
output		          		SRAM_OE_n;
output		          		SRAM_UB_n;
output		          		SRAM_WE_n;

//////////// Flash //////////
output		    [22:0]		FLASH_ADDR;
output		          		FLASH_CE_n;
inout		     [7:0]		FLASH_DQ;
output		          		FLASH_OE_n;
output		          		FLASH_RESET_n;
input		          		FLASH_RY;
output		          		FLASH_WE_n;
output		          		FLASH_WP_n;

//////////// HSMC //////////
inout		          		AD_SCLK;
inout		          		AD_SDIO;
input		    [13:0]		ADA_D;
input		          		ADA_DCO;
output		          	ADA_OE;
input		          		ADA_OR;
output		          	ADA_SPI_CS;
input		    [13:0]		ADB_D;
input		          		ADB_DCO;
output		          	ADB_OE;
input		          		ADB_OR;
output		          	ADB_SPI_CS;
inout		          		AIC_BCLK;
output		          	AIC_DIN;
input		          		AIC_DOUT;
inout		          		AIC_LRCIN;
inout		          		AIC_LRCOUT;
output		          	AIC_SPI_CS;
output		          	AIC_XCLK;
input		          		CLKIN1;
output		          	CLKOUT0;
output		    [13:0]	DA;
output		    [13:0]	DB;
inout		          		FPGA_CLK_A_N;
inout		          		FPGA_CLK_A_P;
inout		          		FPGA_CLK_B_N;
inout		          		FPGA_CLK_B_P;
inout		          		J1_152;
input		          		XT_IN_N;
input		          		XT_IN_P;


//=======================================================
//  REG/WIRE declarations
//=======================================================
wire						reset_n;
wire						sys_clk;
wire						sys_clk_90deg;
wire						sys_clk_180deg;
wire						sys_clk_270deg;
wire						pll_locked;

//wire		[12:0]			i_sine1;
//wire		[12:0]			i_sine10;
//wire		[12:12]			t_sine1;
//wire		[12:12]			t_sine10;
//reg			[12:0]			is_sine1;
//reg			[12:0]			is_sine10;
//reg			[12:0]			iu_sine1;
//reg			[12:0]			iu_sine10;

wire		[13:0]			o_sine;
reg			[13:0]			o_sine_p;
reg			[13:0]			o_sine_n;

reg			[13:0]			per_a2da_d;
reg			[13:0]			per_a2db_d;
reg			[13:0]			a2da_data;
reg			[13:0]			a2db_data;

wire		[13:0]			fir_in_data;
wire		[13:0]			fir_data;


//=======================================================
//  Structural coding
//=======================================================
// initial //
//
assign LCD_ON   = 1'b1;
assign LCD_BLON = 1'b0; //not supported;

assign DRAM_DQ 			= 32'hzzzzzzzz;

assign AUD_ADCLRCK    	= 1'bz;

assign AUD_DACLRCK 		= 1'bz;
assign AUD_DACDAT 		= a2da_data;
assign AUD_BCLK 		= 1'bz;
assign AUD_XCK 			= 1'bz;

assign I2C_SDA	 		= 1'bz;
assign I2C_SCL			= 1'bz;
assign EEP_I2C_SDA	 	= 1'bz;
assign EEP_I2C_SCL		= 1'bz;
assign SD_DAT 			= 4'bz;
assign SD_CMD 			= 1'bz;
assign SD_CLK 			= 1'bz;
assign OTG_DATA   		= 16'hzzzz;

assign FLASH_DQ        	= 8'hzz;

//--- globa signal assign
assign	reset_n			= KEY[3];


assign	FPGA_CLK_A_P	=  sys_clk_180deg;
assign	FPGA_CLK_A_N	= ~sys_clk_180deg;
assign	FPGA_CLK_B_P	=  sys_clk_270deg;
assign	FPGA_CLK_B_N	= ~sys_clk_270deg;

assign	LEDG[0]			= pll_locked;		// pll locked
assign	LEDG[1]			= SW[0];			// (DFS)Data Format Select indicator
assign	LEDG[2]			= SW[1];			// (DCS)Duty Cycle Stabilizer Select indicator
assign	LEDG[3]			= !SW[2] ? ADA_OR : ADB_OR;	// Out-of-Range indicator
assign	LEDG[4]			= ~KEY[0];			// reset 1MHz NCO output indicator
assign	LEDG[5]			= ~KEY[1];			// reset 10MHz NCO output indicator
assign	LEDG[6]			= SW[2];			// channel A or B indicator
assign	LEDG[7]			= count[24];		// heartbeat

 // assign for ADC control signal
assign	AD_SCLK			= SW[0];			// (DFS)Data Format Select
assign	AD_SDIO			= SW[1];			// (DCS)Duty Cycle Stabilizer Select
assign	ADA_OE			= 1'b0;				// enable ADA output
assign	ADA_SPI_CS		= 1'b1;				// disable ADA_SPI_CS (CSB)
assign	ADB_OE			= 1'b0;				// enable ADB output
assign	ADB_SPI_CS		= 1'b1;				// disable ADB_SPI_CS (CSB)

 // assign for DAC output data
assign	DA = o_sine_p;
assign	DB = o_sine_n;

//assign	HEX0_D			= 7'b000_1110; 				//setting F to 7segment hex0

//--- pll
pll		pll_inst(
			.inclk0(OSC_50[0]),
			.c0(sys_clk),
			.c1(sys_clk_90deg),
			.c2(sys_clk_180deg),
			.c3(sys_clk_270deg),
			.locked(pll_locked)
			);

//--- NCO function 1.001MHz
//NCO_1MHz	NCO_1MHz_inst(
//			.phi_inc_i(32'd42992623),
//			.clk(sys_clk),
//			.reset_n(KEY[0]),
//			.clken(1'b1),
//			.fsin_o(i_sine1),
//			.out_valid()
//			);

//--- NCO function 10.01MHz
//NCO_10MHz	NCO_10MHz_inst(
//			.phi_inc_i(32'd429926226),
//			.clk(sys_clk),
//			.reset_n(KEY[1]),
//			.clken(1'b1),
//			.fsin_o(i_sine10),
//			.out_valid()
//			);

//always @(negedge reset_n or posedge sys_clk)
//begin
//	if (!reset_n) begin
//		is_sine1	<= 13'd0;
//		is_sine10	<= 13'd0;
//		iu_sine1	<= 13'd0;
//		iu_sine10	<= 13'd0;
//	end
//	else begin
//		is_sine1	<= i_sine1;
//		is_sine10	<= i_sine10;
//		iu_sine1	<= {~is_sine1[12],is_sine1[11:0]};
//		iu_sine10	<= {~is_sine10[12],is_sine10[11:0]};
//	end
//end

//--- Sum of the two signals
//add		add_inst(
//			.dataa({1'b1,iu_sine1}),
//			.datab({1'b1,iu_sine10}),
//			.result(o_sine)
//			);

always @(negedge reset_n or posedge sys_clk)
begin
	if (!reset_n) begin
		o_sine_p	<= 14'd0;
		o_sine_n	<= 14'd0;
	end
	else begin
		o_sine_p	<= o_sine;
		o_sine_n	<= ~o_sine_p;
	end
end


//--- analog to digital converter capture and sync
	//--- Channel A
always @(negedge reset_n or posedge ADA_DCO)
begin
	if (!reset_n) begin
		per_a2da_d	<= 14'd0;
	end
	else begin
		per_a2da_d	<= ADA_D;
		
	end
end

reg [6:0] out1;
reg [6:0] out2;
reg [6:0] out3;
reg [6:0] out4;

always @(negedge reset_n or posedge sys_clk)
begin
	if (!reset_n) begin
		a2da_data	<= 14'd0;
	end
	else begin
		a2da_data	<= per_a2da_d;
	end
end

always @*
begin
	if (a2da_data[13] == 1'b1) begin
		out1 <= 7'b1001111;
	end
	else begin
		out1 <= 7'b1000000;
	end
	
	if (a2da_data[12] == 1'b1) begin
		out2 <= 7'b1001111;
	end
	else begin
		out2 <= 7'b1000000;
	end
	
	if (a2da_data[11] == 1'b1) begin
		out3 <= 7'b1001111;
	end
	else begin
		out3 <= 7'b1000000;
	end
	
	if (a2da_data[10] == 1'b1) begin
		out4 <= 7'b1001111;
	end
	else begin
		out4 <= 7'b1000000;
	end
end

assign HEX0_D = out1;
assign HEX1_D = out2;
assign HEX2_D = out3;
assign HEX3_D = out4;


//assign		HEX0_D[0]		= a2da_data[7];						//setting hex0 7segment with with first 7bit of the 14bit adc
//		HEX1_D		<= 7'b000_1110;						//setting hex1 7segment with with last 7bit of the 14bit adc

	//--- Channel B
//always @(negedge reset_n or posedge ADB_DCO)
//begin
//	if (!reset_n) begin
//		per_a2db_d	<= 14'd0;
//	end
//	else begin
//		per_a2db_d	<= ADB_D;
//	end
//end
//
//always @(negedge reset_n or posedge sys_clk)
//begin
//	if (!reset_n) begin
//		a2db_data	<= 14'd0;
//	end
//	else begin
//		a2db_data	<= per_a2db_d;
//	end
//end


//--- 3 MHz low pass FIR filter
assign	fir_in_data	= !SW[2] ?  a2da_data : a2db_data;

FIR_3MHz_low	FIR_3MHz_low_inst (
			.clk(sys_clk),
			.reset_n(reset_n),
			.ast_sink_data(fir_in_data),
			.ast_sink_valid(1'b1),
			.ast_source_ready(1'b1),
			.ast_sink_error(2'b00),
			.ast_source_data(fir_data),
			.ast_sink_ready(),
			.ast_source_valid(),
			.ast_source_error()
			);

//--- count for Heartbeat
reg		[31:0]				count;
always @(negedge reset_n or posedge sys_clk)
begin
	if (!reset_n) begin
		count	<= 0;
	end
	else begin
		count	<= count + 1'b1;
	end
end

//--- probe points for data capture
//sine_1		sin1_inst(
//			.probe(iu_sine1),
//			.source());

//sine_10		sin10_inst(
//			.probe(iu_sine10),
//			.source());

//p_sine		p_sine_inst(
//			.probe(o_sine_p),
//			.source());

a2d_data_a	a2d_data_a_inst(
			.probe(a2da_data),
			.source());

a2d_data_b	a2d_data_b_inst(
			.probe(a2db_data),
			.source());

fir_out		fir_out_inst(
			.probe(fir_data),
			.source());

endmodule