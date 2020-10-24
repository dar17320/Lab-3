//include	"Ejercicios.v"

module testbench();

reg e, clk, reset, data;
//ejercicio1 counter;

initial begin
	$display("Ejercicio 1");
	$display("Clk | e || data");
	$monitor(" %b| %b || %b", clk, e, data);
end

initial begin
	clk = 0;
	e = 1;
	data = 0;
	#10
	clk = 1;
	e = 1;
	#20
	clk = 1;
	e = 0;
	#30
	clk = 0;
	e = 1;
	data = 7;
	#10
	clk = 1;
	e = 1;
	#20
	clk = 1;
	e = 0;
end

initial
	#200 $finish;

	always
	#5 clk = ~clk;

initial begin
	$dumpfile("Ejercicios_tb.vcd");
	$dumpvars(0,testbench);
end

endmodule
