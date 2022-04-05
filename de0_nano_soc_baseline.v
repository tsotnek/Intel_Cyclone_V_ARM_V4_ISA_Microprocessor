//--------------------------------------------------------------------------//
// Title:        de0_nano_soc_baseline.v                                       //
// Rev:          Rev 0.1                                                    //
// Last Revised: 09/14/2015                                                 //
//--------------------------------------------------------------------------//
// Description: Baseline design file contains DE0 Nano SoC    				 //
//              Board pins and I/O Standards.                               //
//--------------------------------------------------------------------------//
//Copyright 2015 Altera Corporation. All rights reserved.  Altera products
//are protected under numerous U.S. and foreign patents, maskwork rights,
//copyrights and other intellectual property laws.
//                 
//This reference design file, and your use thereof, is subject to and
//governed by the terms and conditions of the applicable Altera Reference
//Design License Agreement.  By using this reference design file, you
//indicate your acceptance of such terms and conditions between you and
//Altera Corporation.  In the event that you do not agree with such terms and
//conditions, you may not use the reference design file. Please promptly                         
//destroy any copies you have made.
//
//This reference design file being provided on an "as-is" basis and as an
//accommodation and therefore all warranties, representations or guarantees
//of any kind (whether express, implied or statutory) including, without
//limitation, warranties of merchantability, non-infringement, or fitness for
//a particular purpose, are specifically disclaimed.  By making this
//reference design file available, Altera expressly does not recommend,
//suggest or require that this reference design file be used in combination 
//with any other product not provided by Altera
//----------------------------------------------------------------------------

//Group Enable Definitions
//This lists every pinout group
//Users can enable any group by uncommenting the corresponding line below:
//`define enable_ADC
//`define enable_ARDUINO
//`define enable_GPIO0
//`define enable_GPIO1
//`define enable_HPS
`timescale 1ns / 1ps
module de0_nano_soc_baseline(

	//////////// CLOCK /////////
	input 		          		FPGA_CLK_50

);

main_module main_module(FPGA_CLK_50);


endmodule

