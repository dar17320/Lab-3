‘include "FlipflopD1.v"
module FlipflopD1

module FlipflopD2 (input Q, reset, clk, en, output reg W);

	always @(posedge clk or posedge reset) begin
		if (en==1) 
			W <= 1'b0;
	else
		W <= D;
	end
endmodule