`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2024 06:44:14 PM
// Design Name: 
// Module Name: riscV_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module riscV_tb();
reg clk;
reg reset;
wire pc_out;
wire adder1_out;
wire adder2_out;
wire pc_in;
wire zero;
wire instruction;
wire opcode;
wire rd;
wire funct3;
wire rs1;
wire rs2;
wire funct7;
wire writedata;
wire readdata1;
wire readdata2;
wire branch, memread, memtowire, memwrite, alusrc, wirewrite;
wire aluop;
wire immdata;
wire mux2out;
wire operation;
wire aluout;
wire datamemoryreaddata;
  wire [63:0] index1;
  wire [63:0] index2;
  wire [63:0] index3;
  wire [63:0] index4;
  wire [63:0] index5;
  wire [63:0] index6;
  wire [63:0] index7;
  wire [63:0] index8;
  
riscV_processor processor (
clk,
reset,
pc_out,
adder1_out,
adder2_out,
pc_in,
zero,
instruction,
opcode,
rd,
funct3,
rs1,
rs2,
funct7,
writedata,
readdata1,
readdata2,
branch, memread, memtoreg, memwrite, alusrc, regwrite,
aluop,
immdata,
mux2out,
operation,
aluout,
datamemoryreaddata,
index1,
index2,
index3,
index4,
index5,
index6,
index7,
index8
    );
 
initial begin
clk = 0; reset = 1'b1;
#5 reset = 0;
end

always
    #1 clk = ~clk;

endmodule