`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2026 01:02:59
// Design Name: 
// Module Name: instruction_memory
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


module instruction_memory(
     input wire [31:0] addr,
     output wire [31:0] instruction
    );
     reg [31:0] memory [0:63];
     integer i;
     initial begin
         memory[0] = 32'h00500093;
        memory[1] = 32'h00a00113;
        memory[2] = 32'h002081b3;
        memory[3] = 32'h40118233;
        memory[4] = 32'h00402023;
        memory[5] = 32'h00002283;
        memory[6] = 32'h00208463;
     for (i=7;i<64;i=i+1)begin
       memory[i] = 32'h00000013;
       end
       end
       assign instruction = memory[addr[31:2]];
endmodule
