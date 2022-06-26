// megafunction wizard: %In-System Sources and Probes%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: altsource_probe 

// ============================================================
// File Name: sine_10.v
// Megafunction Name(s):
// 			altsource_probe
//
// Simulation Library Files(s):
// 			
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 21.1.0 Build 842 10/21/2021 SJ Lite Edition
// ************************************************************


//Copyright (C) 2021  Intel Corporation. All rights reserved.
//Your use of Intel Corporation's design tools, logic functions 
//and other software and tools, and any partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Intel Program License 
//Subscription Agreement, the Intel Quartus Prime License Agreement,
//the Intel FPGA IP License Agreement, or other applicable license
//agreement, including, without limitation, that your use is for
//the sole purpose of programming logic devices manufactured by
//Intel and sold by Intel or its authorized distributors.  Please
//refer to the applicable agreement for further details, at
//https://fpgasoftware.intel.com/eula.


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module sine_10 (
	probe,
	source);

	input	[12:0]  probe;
	output	[0:0]  source;

	wire [0:0] sub_wire0;
	wire [0:0] source = sub_wire0[0:0];

	altsource_probe	altsource_probe_component (
				.probe (probe),
				.source (sub_wire0)
				// synopsys translate_off
				,
				.clr (),
				.ena (),
				.ir_in (),
				.ir_out (),
				.jtag_state_cdr (),
				.jtag_state_cir (),
				.jtag_state_e1dr (),
				.jtag_state_sdr (),
				.jtag_state_tlr (),
				.jtag_state_udr (),
				.jtag_state_uir (),
				.raw_tck (),
				.source_clk (),
				.source_ena (),
				.tdi (),
				.tdo (),
				.usr1 ()
				// synopsys translate_on
				);
	defparam
		altsource_probe_component.enable_metastability = "NO",
		altsource_probe_component.instance_id = "si10",
		altsource_probe_component.probe_width = 13,
		altsource_probe_component.sld_auto_instance_index = "YES",
		altsource_probe_component.sld_instance_index = 0,
		altsource_probe_component.source_initial_value = " 0",
		altsource_probe_component.source_width = 1;


endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone IV E"
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: CONSTANT: ENABLE_METASTABILITY STRING "NO"
// Retrieval info: CONSTANT: INSTANCE_ID STRING "si10"
// Retrieval info: CONSTANT: PROBE_WIDTH NUMERIC "13"
// Retrieval info: CONSTANT: SLD_AUTO_INSTANCE_INDEX STRING "YES"
// Retrieval info: CONSTANT: SLD_INSTANCE_INDEX NUMERIC "0"
// Retrieval info: CONSTANT: SOURCE_INITIAL_VALUE STRING " 0"
// Retrieval info: CONSTANT: SOURCE_WIDTH NUMERIC "1"
// Retrieval info: USED_PORT: probe 0 0 13 0 INPUT NODEFVAL "probe[12..0]"
// Retrieval info: USED_PORT: source 0 0 1 0 OUTPUT NODEFVAL "source[0..0]"
// Retrieval info: CONNECT: @probe 0 0 13 0 probe 0 0 13 0
// Retrieval info: CONNECT: source 0 0 1 0 @source 0 0 1 0
// Retrieval info: GEN_FILE: TYPE_NORMAL sine_10.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL sine_10.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL sine_10.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL sine_10.bsf TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL sine_10_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL sine_10_bb.v TRUE