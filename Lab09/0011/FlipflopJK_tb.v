module testbench();
	
	reg clk, reset, J,K;
	wire Q;
	
	FlipflopKJ al(J,K,Q);

initial begin
	$dumbfile("Clk reset J K | Q");
	$monitor("%b %b %b %b | %b", clk, reset, J, K, Q);
end

initial begin
	clk=0;
	reset=0;
	J=0;
	K=0;
	#11 
	J=1;
	#21 
	J=0;
	K=1;
	#31 
	K=1;
	#100;
	$finish;
end

always
	#5 clk = ~clk;

initial begin
	$dumbfile("FlipflopJK.vcd");
	$dumbvars(0,testbench);
end
endmodule