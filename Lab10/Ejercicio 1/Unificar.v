module union(input clk, reset, output wire q, qn);

// Unimos el contador, fletch y memoria rom

	memRom MR(clk, cnt, data);
	counter CN(clk, reset, cnt);
	fetchff FFF(clk, reset, data, q, qn);

endmodule