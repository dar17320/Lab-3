module FlipflopD1 (input D, reset, clk, en, output reg Q);

	always @(posedge clk or posedge reset) begin
		if (en==1) 
			Q <= 1'b0;
	else
		Q <= D;
	end
endmodule