module FF_D(input clk, reset, enabled, D, output reg Q);

    always @ (posedge clk, posedge reset)
        if (reset)
            Q = 1'b0;
        else if (enabled)
            Q = D;

endmodule


module FF_D_2(input clk, reset, enabled, input [1:0] D, output [1:0] Q);

    FF_D U1 (clk, reset, enabled, D[1], Q[1]);
    FF_D U0 (.clk(clk), .reset(reset), .enabled(enabled), .D(D[0]), .Q(Q[0]));

endmodule


module FF_D_4(input clk, reset, enabled, input [3:0] D, output [3:0] Q);

    FF_D U2 (clk, reset, enabled, D[3], Q[3]);
    FF_D U3 (.enabled(enabled), .D(D[2]), .clk(clk), .Q(Q[2]), .reset(reset));
    FF_D U1 (clk, reset, enabled, D[1], Q[1]);
    FF_D U0 (.clk(clk), .reset(reset), .enabled(enabled), .D(D[0]), .Q(Q[0]));

endmodule
