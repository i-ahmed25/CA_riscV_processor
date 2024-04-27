`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2024 08:51:44 AM
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
wire [63:0] pc_in;
wire [31:0] instruction;
wire [4:0] rs1;
wire [4:0] rs2;
wire [4:0] rd;
wire [63:0]writedata;
wire [63:0]readdata1;
wire [63:0]readdata2;
wire [63:0] immdata;
wire [63:0] mux2out;
wire [63:0] aluout;
wire zero;
wire [63:0] adder1_out;
wire [63:0] adder2_out;
wire [6:0] opcode;
wire [2:0] funct3;
wire [6:0] funct7;
wire branch, memread, memtoreg, memwrite, alusrc, regwrite;
wire [1:0] aluop;
wire [3:0] operation;
wire [63:0] datamemoryreaddata;
wire [63:0] element1;
wire [63:0] element2;
wire [63:0] element3;
wire [63:0] element4;
wire [63:0] element5;
wire [63:0] element6;
wire [63:0] element7;
wire [63:0] element8;

riscV_processor processor (
 clk,
 reset,
 pc_out,
 pc_in,
instruction,
 rs1,
 rs2,
 rd,
writedata,
readdata1,
readdata2,
 immdata,
 mux2out,
 aluout,
 zero,
 adder1_out,
 adder2_out,
 opcode,
funct3,
 funct7,
 branch, memread, memtoreg, memwrite, alusrc, regwrite,
 aluop,
operation,
 datamemoryreaddata,
 element1,
 element2,
 element3,
 element4,
 element5,
 element6,
 element7,
 element8
    );
    
initial begin
clk = 0; reset = 1'b0;
#5 reset = 1;
#5 reset = 0;
//#5 reset = 0;
end

always
    #5 clk = ~clk;
    
endmodule
