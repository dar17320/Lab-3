module testbench();
	
	reg clk, reset;
	wire cnt;
	wire data;
	wire [3:0] q, qn;

	union UN(output q, qn, input clk, reset);


initial begin
	$dumpfile("Clk reset Counter Data | Q");
	$monitor("%b %b  %b  %b | %b", clk, reset, cnt, data, q);
end

initial begin
	reset=1;
	#2
	reset=0;
	#100;
	$finish;
end

always
	#5 clk = ~clk;


initial begin
	$dumpfile("union.vcd");
	$dumpvars(0,testbench);
end
endmodule