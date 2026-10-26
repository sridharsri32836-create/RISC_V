`timescale 1ns / 1ps

module pc_tb;

    reg         clk;
    reg         rst;
    reg  [31:0] pc_next;
    wire [31:0] pc_out;

    pc uut (
        .clk(clk),
        .rst(rst),
        .pc_next(pc_next),
        .pc_out(pc_out)
    );

    // Flip clock every 5ns (10ns period)
    always #5 clk = ~clk;

    initial begin
        clk     = 0;
        rst     = 1;
        pc_next = 32'h0000_0004;
        #12; // Wait past the first clock edge (at 5ns)

        rst     = 0; // Release reset -> pc_out becomes 00000004 at 15ns
        #10;

        pc_next = 32'h0000_0008; // pc_out becomes 00000008 at 25ns
        #10;

        pc_next = 32'h0000_000C; // pc_out becomes 0000000c at 35ns
        #10;

        pc_next = 32'h0000_0040; // pc_out becomes 00000040 at 45ns
        #10;

        $finish; // Stops simulation at 52ns so it doesn't run to 100ms!
    end

endmodule