module accumulador (A, accum,overflow, clk, reset);

 input [7:0] A;
 input clk, reset;
 output [7:0] accum;
 output reg overflow;

 reg [7:0] accum;

always@(posedge clk or negedge reset) begin
    if(~reset) begin
        accum <= 'b0;
        overflow <= 'b0;
    end else begin
        {overflow,accum} <= accum + A;
    end
end