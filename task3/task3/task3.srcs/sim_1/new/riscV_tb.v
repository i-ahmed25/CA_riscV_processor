`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2024 08:53:43 AM
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
  wire[63:0] element1;
  wire[63:0] element2;
  wire[63:0] element3;
  wire[63:0] element4;
  wire[63:0] element5;
  wire[63:0] element6;
  wire[63:0] element7;
  wire[63:0] element8;
  wire stall, flush;
  
riscV_processor processor (
  clk,
  reset,
  element1,
  element2,
  element3,
  element4,
  element5,
  element6,
  element7,
  element8,
  stall,
  flush
    );
    

initial begin
clk = 0; reset = 1'b1;
#2 reset = 0;
end

always
    #0.5 clk = ~clk;

endmodule
