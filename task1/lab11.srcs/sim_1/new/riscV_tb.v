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
wire [63:0] pc_out;
wire [63:0] adder1_out;
wire [63:0] adder2_out;
wire [63:0] pc_in;
wire zero;
wire [31:0] instruction;
wire [6:0] opcode;
wire [4:0] rd;
wire [2:0] funct3;
wire [4:0] rs1;
wire [4:0] rs2;
wire [6:0] funct7;
wire [63:0]writedata;
wire [63:0]readdata1;
wire [63:0]readdata2;
wire branch, memread, memtoreg, memwrite, alusrc, regwrite;
wire [1:0] aluop;
wire [63:0] immdata;
wire [63:0] mux2out;
wire [3:0] operation;
wire [63:0] aluout;
wire [63:0] datamemoryreaddata;
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