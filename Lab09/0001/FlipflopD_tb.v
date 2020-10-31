module testbench();
	
	reg clk, reset, en, Q;
	wire W;
	wire [1:0] sfut, spas;
	
	FlipflopD2 al(clk,reset,en,Q,W);

initial begin
	$dumpfile("Clk reset enable D | Q");
	$monitor("%b %b  %b  %b | %b", clk, reset, en, Q, W);
end

initial begin
	en=0;
	clk=0;
	reset=0;
	Q=0;
	#11 
	Q=1;
	#21 
	en=1;
	Q=0;
	#31 
	Q=1;
	#100;
	$finish;
end

always
	#5 clk = ~clk;


initial begin
	$dumpfile("FlipflopD2.vcd");
	$dumpvars(0,testbench);
end
endmodule