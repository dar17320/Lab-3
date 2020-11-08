module counter (clk, reset, cnt);

input		clk;
input		reset;
output	[11:0]	cnt;

//	The outputs are defined as registers too
reg	[11:0]	cnt;

always @(posedge clk)
	if (!reset)
		cnt = cnt + 1;
	else
		cnt = 0;

endmodule

