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
//
// Major Functions:	DE2-115 SD Card Audio Player
//
// --------------------------------------------------------------------
//
// Revision History :
// --------------------------------------------------------------------
//   Ver  :| Author            :| Mod. Date :| Changes Made:
//   V1.0 :| Ya-qun chang      :| 04/06/2010:| Inital  Revision
// --------------------------------------------------------------------
//
//
// History :
// --------------------------------------------------------------------
//   Ver  :| Author            :| Mod. Date :| Changes Made:
//   V2.0 :| Robin Goeree      :| 27/06/2022:| Combining multiple projects into one
// --------------------------------------------------------------------

module DE2_115_SD_Card_Audio_Player(

	//////// CLOCK //////////
	OSC_50,
	ENETCLK_25,

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
	HEX0,
	HEX1,
	HEX2,
	HEX3,
	HEX4,
	HEX5,
	HEX6,
	HEX7,

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

	//////// SDCARD //////////
	SD_CLK,
	SD_CMD,
	SD_DAT,
	SD_WP_N,

	//////// VGA //////////
	VGA_B,
	VGA_BLANK_N,
	VGA_CLK,
	VGA_G,
	VGA_HS,
	VGA_R,
	VGA_SYNC_N,
	VGA_VS,

	//////// Audio //////////
	AUD_ADCDAT,
	AUD_ADCLRCK,
	AUD_BCLK,
	AUD_DACDAT,
	AUD_DACLRCK,
	AUD_XCK,

	//////// I2C for EEPROM //////////
	EEP_I2C_SCLK,
	EEP_I2C_SDAT,

	//////// I2C for Audio and Tv-Decode //////////
	I2C_SCLK,
	I2C_SDAT,
	
	//////// IR Receiver //////////
	IRDA_RXD,

	//////// SDRAM //////////
	DRAM_ADDR,
	DRAM_BA,
	DRAM_CAS_N,
	DRAM_CKE,
	DRAM_CLK,
	DRAM_CS_N,
	DRAM_DQ,
	DRAM_DQM,
	DRAM_RAS_N,
	DRAM_WE_N,

	//////// SRAM //////////
	SRAM_ADDR,
	SRAM_CE_N,
	SRAM_DQ,
	SRAM_LB_N,
	SRAM_OE_N,
	SRAM_UB_N,
	SRAM_WE_N,

	//////// Flash //////////
	FL_ADDR,
	FL_CE_N,
	FL_DQ,
	FL_OE_N,
	FL_RST_N,
	FL_RY,
	FL_WE_N,
	FL_WP_N,

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
	XT_IN_P, 
);

//=======================================================
//  PARAMETER declarations
//=======================================================


//=======================================================
//  PORT declarations
//=======================================================

//////////// CLOCK //////////
input		     	  [2:0]		OSC_50;
input		          			ENETCLK_25;

//////////// Sma //////////
input		          			SMA_CLKIN;
output		          		SMA_CLKOUT;

//////////// LED //////////
output		     [8:0]		LEDG;
output		     [17:0]		LEDR;

//////////// KEY //////////
input		     	  [3:0]		KEY;

//////////// SW //////////
input		    	  [17:0]		SW;

//////////// SEG7 //////////
output		     [6:0]		HEX0;
output		     [6:0]		HEX1;
output		     [6:0]		HEX2;
output		     [6:0]		HEX3;
output		     [6:0]		HEX4;
output		     [6:0]		HEX5;
output		     [6:0]		HEX6;
output		     [6:0]		HEX7;

//////////// LCD //////////
output		          		LCD_BLON;
inout		     	  [7:0]		LCD_DATA;
output		          		LCD_EN;
output		          		LCD_ON;
output		          		LCD_RS;
output		          		LCD_RW;

//////////// RS232 //////////
output		          		UART_CTS;
input		          			UART_RTS;
input		          			UART_RXD;
output		          		UART_TXD;

//////////// SDCARD //////////
output		          		SD_CLK;
inout		          			SD_CMD;
inout		     	  [3:0]		SD_DAT;
input		          			SD_WP_N;

//////////// VGA //////////
output		     [7:0]		VGA_B;
output		          		VGA_BLANK_N;
output		          		VGA_CLK;
output		     [7:0]		VGA_G;
output		          		VGA_HS;
output		     [7:0]		VGA_R;
output		          		VGA_SYNC_N;
output		          		VGA_VS;

//////////// Audio //////////
input		          			AUD_ADCDAT;
inout		          			AUD_ADCLRCK;
inout		          			AUD_BCLK;
output		          		AUD_DACDAT;
inout		          			AUD_DACLRCK;
output		          		AUD_XCK;

//////////// I2C for EEPROM //////////
output		          		EEP_I2C_SCLK;
inout		          			EEP_I2C_SDAT;

//////////// I2C for Audio and Tv-Decode //////////
output		          		I2C_SCLK;
inout		          			I2C_SDAT;

//////////// IR Receiver //////////
input		          			IRDA_RXD;

//////////// SDRAM //////////
output		     [12:0]		DRAM_ADDR;
output		     [1:0]		DRAM_BA;
output		          		DRAM_CAS_N;
output		          		DRAM_CKE;
output		          		DRAM_CLK;
output		          		DRAM_CS_N;
inout		    	  [31:0]		DRAM_DQ;
output		     [3:0]		DRAM_DQM;
output		          		DRAM_RAS_N;
output		          		DRAM_WE_N;

//////////// SRAM //////////
output		     [19:0]		SRAM_ADDR;
output		          		SRAM_CE_N;
inout		    	  [15:0]		SRAM_DQ;
output		          		SRAM_LB_N;
output		          		SRAM_OE_N;
output		          		SRAM_UB_N;
output		          		SRAM_WE_N;

//////////// Flash //////////
output		     [22:0]		FL_ADDR;
output		          		FL_CE_N;
inout		        [7:0]		FL_DQ;
output		          		FL_OE_N;
output		          		FL_RST_N;
input		          		   FL_RY;
output		          		FL_WE_N;
output		          		FL_WP_N;

//////////// HSMC //////////
inout		    	      		AD_SCLK;
inout		    	      		AD_SDIO;
input		    		[13:0]	ADA_D;
input		    	      		ADA_DCO;
output		 	         	ADA_OE;
input		   	       		ADA_OR;
output			          	ADA_SPI_CS;
input		   	 	[13:0]	ADB_D;
input		   	       		ADB_DCO;
output		 	         	ADB_OE;
input		   	       		ADB_OR;
output		 	         	ADB_SPI_CS;
inout		    	      		AIC_BCLK;
output		 	         	AIC_DIN;
input		    	      		AIC_DOUT;
inout		     	 	    		AIC_LRCIN;
inout		      	    		AIC_LRCOUT;
output		  		        	AIC_SPI_CS;
output		   	       	AIC_XCLK;
input		       	   		CLKIN1;
output		    	      	CLKOUT0;
output		    	[13:0]	DA;
output		    	[13:0]	DB;
inout		       	   		FPGA_CLK_A_N;
inout		       	   		FPGA_CLK_A_P;
inout		       	   		FPGA_CLK_B_N;
inout		       	   		FPGA_CLK_B_P;
inout		       	   		J1_152;
input		       	   		XT_IN_N;
input		        		  		XT_IN_P;


//=======================================================
//  REG/WIRE declarations
//=======================================================
wire								reset_n;
wire								sys_clk;
wire								sys_clk_90deg;
wire								sys_clk_180deg;
wire								sys_clk_270deg;
wire								pll_locked;

wire								reset_n1;

wire					[13:0]	o_sine;
reg					[13:0]	o_sine_p;
reg					[13:0]	o_sine_n;

reg					[13:0]	per_a2da_d;
reg					[13:0]	per_a2db_d;
reg					[13:0]	a2da_data;
reg					[13:0]	a2db_data;
	
wire					[13:0]	fir_in_data;
wire					[13:0]	fir_data;

wire HEX0P;
wire HEX1P;
wire HEX2P;
wire HEX3P;
wire HEX4P;
wire HEX5P;
wire HEX6P;
wire HEX7P;

//=======================================================
//  Structural coding
//=======================================================

assign LCD_ON   			= 1'b1;
assign LCD_BLON 			= 1'b0; //not supported;

assign DRAM_DQ 			= 32'hzzzzzzzz;

assign AUD_ADCLRCK    	= 1'bz;

assign AUD_DACLRCK 		= 1'bz;
assign AUD_DACDAT 		= 1'bz;
assign AUD_BCLK 			= 1'bz;
assign AUD_XCK 			= 1'bz;

assign I2C_SDAT	 		= 1'bz;
assign I2C_SCLK			= 1'bz;
assign EEP_I2C_SDAT	 	= 1'bz;
assign EEP_I2C_SCLK		= 1'bz;
assign SD_DAT 				= 4'bz;
assign SD_CMD 				= 1'bz;
assign SD_CLK 				= 1'bz;
assign OTG_DATA   		= 16'hzzzz;

assign FL_DQ        		= 8'hzz;

//--- global signal assign
assign	reset_n			= KEY[3];
assign 	reset_n1 		= 1'b1;

assign	FPGA_CLK_A_P	=  sys_clk_180deg;
assign	FPGA_CLK_A_N	= ~sys_clk_180deg;
assign	FPGA_CLK_B_P	=  sys_clk_270deg;
assign	FPGA_CLK_B_N	= ~sys_clk_270deg;

 // assign for ADC control signal
assign	AD_SCLK			= 1'b1;			// (DFS)Data Format Select
assign	AD_SDIO			= 1'b0;			// (DCS)Duty Cycle Stabilizer Select
assign	ADA_OE			= 1'b0;				// enable ADA output
assign	ADA_SPI_CS		= 1'b1;				// disable ADA_SPI_CS (CSB)
assign	ADB_OE			= 1'b0;				// enable ADB output
assign	ADB_SPI_CS		= 1'b1;				// disable ADB_SPI_CS (CSB)

 // assign for DAC output data
assign	DA = o_sine_p;
assign	DB = o_sine_n;

DE2_115_SOPC DE2_115_SOPC_inst(
                      // global signals:
                       .clk_50(OSC_50[0]),
                       .reset_n(reset_n1),
                       .altpll_25(VGA_CLK),
                       .altpll_io(),
                       .altpll_sdram(DRAM_CLK),
                       .altpll_sys(),                       

                      // the_audio
                       .avs_s1_export_ADCDAT_to_the_audio(AUD_ADCDAT),
                       .avs_s1_export_ADCLRC_to_the_audio(AUD_ADCLRCK),
                       .avs_s1_export_BCLK_to_the_audio(AUD_BCLK),
                       .avs_s1_export_DACDAT_from_the_audio(AUD_DACDAT),
                       .avs_s1_export_DACLRC_to_the_audio(AUD_DACLRCK),
                       .avs_s1_export_XCK_from_the_audio(AUD_XCK),

                      // the_eep_i2c_scl
                       .out_port_from_the_eep_i2c_scl(EEP_I2C_SCLK),

                      // the_eep_i2c_sda
                       .bidir_port_to_and_from_the_eep_i2c_sda(EEP_I2C_SDAT),

                      // the_i2c_scl
                       .out_port_from_the_i2c_scl(I2C_SCLK),

                      // the_i2c_sda
                       .bidir_port_to_and_from_the_i2c_sda(I2C_SDAT),

                      // the_key
                       .in_port_to_the_key(KEY),

                      // the_lcd
                       .LCD_E_from_the_lcd(LCD_EN),
                       .LCD_RS_from_the_lcd(LCD_RS),
                       .LCD_RW_from_the_lcd(LCD_RW),
                       .LCD_data_to_and_from_the_lcd(LCD_DATA),

                      // the_ledg
                       .out_port_from_the_ledg(LEDG),

                      // the_ledr
                       .out_port_from_the_ledr(LEDR),

                      // the_rs232
                       .cts_n_to_the_rs232(UART_CTS),
                       .rts_n_from_the_rs232(UART_RTS),
                       .rxd_to_the_rs232(UART_RXD),
                       .txd_from_the_rs232(UART_TXD),
                       
                       
                      // the_seg7
                       .SEG7_from_the_seg7({
                              HEX7P, HEX7, HEX6P, HEX6,
                              HEX5P, HEX5, HEX4P, HEX4, 
                              HEX3P, HEX3, HEX2P, HEX2,
                              HEX1P, HEX1, HEX0P, HEX0}),

                      // the_sma_in
                       .in_port_to_the_sma_in(SMA_CLKIN),

                      // the_sma_out
                       .out_port_from_the_sma_out(SMA_CLKOUT),
                       
                      // the_sw
                       .in_port_to_the_sw(SW),

                      // the_tri_state_bridge_flash_avalon_slave
                       .address_to_the_cfi_flash(FL_ADDR),
                       .read_n_to_the_cfi_flash(FL_OE_N),
                       .select_n_to_the_cfi_flash(FL_CE_N),
                       .tri_state_bridge_flash_data(FL_DQ),
                       .write_n_to_the_cfi_flash(FL_WE_N),
                       
                      // sdcard
                       .out_port_from_the_sd_clk(SD_CLK),
                       .bidir_port_to_and_from_the_sd_cmd(SD_CMD),
                       .bidir_port_to_and_from_the_sd_dat(SD_DAT),
                       .in_port_to_the_sd_wp_n(SD_WP_N),
                       
							//IrDA
                       .ir_to_the_Terasic_IrDA_0(IRDA_RXD)
                    );

// Flash Config
assign	FL_RST_N = reset_n1;
assign	FL_WP_N = 1'b1;

// LCD config
assign LCD_BLON = 0; // not supported
assign LCD_ON = 1'b1; // alwasy on

wire io_dir;
wire action;
assign io_dir = KEY[0] & action;

//--- pll
pll pll_inst(
			.inclk0(OSC_50[0]),
			.c0(sys_clk),
			.c1(sys_clk_90deg),
			.c2(sys_clk_180deg),
			.c3(sys_clk_270deg),
			.locked(pll_locked)
			);

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

always @(negedge reset_n or posedge sys_clk)
begin
	if (!reset_n) begin
		a2da_data	<= 14'd0;
	end
	else begin
		a2da_data	<= per_a2da_d;
	end
end

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
