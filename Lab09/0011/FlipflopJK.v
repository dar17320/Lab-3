module FlipflopJK (input J, K, reset, clk, output reg Q);

	always @(posedge clk or posedge reset) begin
		if (J==1,K==0) 
			Q <= 1;
		if (J==0,K==0)
			Q <= Q;
		if (J==0,K==1)
			Q <= 0;
		else
			Q <= not Q;
	end
endmodule