`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.10.2026 22:33:30
// Design Name: 
// Module Name: pc
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


module pc(
    input wire clk,
    input wire rst,
    input wire [31:0] pc_next,
    output reg [31:0] pc_out
    );
    always @(posedge clk or posedge rst)begin
     if(rst == 1'b1) begin
        pc_out<= 32'h00000000;
     end else begin
        pc_out<=pc_next;
        end
      end
      endmodule
      
    