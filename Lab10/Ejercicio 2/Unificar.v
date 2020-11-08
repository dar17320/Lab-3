module union(input clk, reset, output wire q, qn);

// Unimos el contador, fletch y memoria rom

	alu(ALUO, CarryOut, clk, A, B);
	accumulador(acum, overflow, A, clk, reset);
	bdriver(bus, clk);

endmodule