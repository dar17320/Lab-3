module testbench();

    reg clk, reset, enabled, J, K;
    wire Q;


    FF_JK U1(clk, reset, enabled, J, K, Q);
    
    always
        #5 clk = ~clk;
        
    initial
        #150 $finish;
    
    initial begin
        $display("clk\treset\tenabled\tJ\tK\tQ");
        $monitor("%b\t%b\t%b\t%b\t%b\t%b",clk, reset, enabled, J, K, Q);
            clk = 0; reset = 0; enabled = 0; J = 0; K = 0;
        #2  reset = 1; enabled = 0; J = 0; K = 0;
        #1  reset = 0; enabled = 0; J = 0; K = 0;
        #10 reset = 0; enabled = 0; J = 1; K = 0;
        #10 reset = 0; enabled = 0; J = 1; K = 1;
        #10 reset = 0; enabled = 1; J = 1; K = 0;
        #10 reset = 0; enabled = 1; J = 0; K = 0;
        #10 reset = 0; enabled = 1; J = 0; K = 1;
        #10 reset = 0; enabled = 1; J = 0; K = 0;
        #10 reset = 0; enabled = 1; J = 1; K = 1;
        #40 reset = 0; enabled = 1; J = 1; K = 0;
        #10 reset = 0; enabled = 0; J = 0; K = 1;
    end
    
    initial begin
        $dumpfile("ej03_tb.vcd");
        $dumpvars(0, testbench);
    end

endmodule
