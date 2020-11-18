module testbench();

    reg clk, reset, enabled;
    wire Q;

    FF_T U1(clk, reset, enabled, Q);
    
    always
        #5 clk = ~clk;
        
    initial
        #150 $finish;
    
    initial begin
        $display("clk\treset\tenabled\tQ");
        $monitor("%b\t%b\t%b\t%b",clk, reset, enabled, Q);
        clk = 0; reset = 0; enabled = 0;
        #11 reset = 1; enabled = 0;
        #1  reset = 0; enabled = 0;
        #10 enabled = 1;
        #30 enabled = 0;
        #10 enabled = 1;
    end
    
    initial begin
        $dumpfile("ej02_tb.vcd");
        $dumpvars(0, testbench);
    end

endmodule
