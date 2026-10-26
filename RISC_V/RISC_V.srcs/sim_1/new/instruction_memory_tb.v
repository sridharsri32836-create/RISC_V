`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2026 23:55:45
// Design Name: 
// Module Name: instruction_memory_tb
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


`timescale 1ns / 1ps

module instruction_memory_tb;

    reg  [31:0] tb_addr;
    wire [31:0] tb_instruction;

    instruction_memory uut (
        .addr(tb_addr),
        .instruction(tb_instruction)
    );

    initial begin
        tb_addr = 32'h0000_0000;
        #10;

        tb_addr = 32'h0000_0004;
        #10;

        tb_addr = 32'h0000_0008;
        #10;

        tb_addr = 32'h0000_000C;
        #10;

     
        tb_addr = 32'h0000_0010;
        #10;

        tb_addr = 32'h0000_0014;
        #10;

        $finish;
    end

endmodule
