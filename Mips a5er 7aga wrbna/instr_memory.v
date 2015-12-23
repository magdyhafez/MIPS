`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:13:48 03/11/2013 
// Design Name: 
// Module Name:    instr_memory 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module instr_memory(
    input [31:0] pc,
    output [31:0] data_out
    );

instr_mem my_mem (
  .a(pc[5:0]), // input [5 : 0] a
  .spo(data_out) // output [31 : 0] spo
);
endmodule
