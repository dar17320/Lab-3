module testbench();

    reg enabled;
    reg [3:0] A;
    wire [3:0] Y;

    buffer U1(enabled, A, Y);
        
    initial
        #10 $finish;
    
    initial begin
        $display("enabled\tA\tY");
        $monitor("%b\t%b\t%b",enabled, A, Y);
           enabled = 0; A = 4'b0;
        #1 enabled = 1; A = 4'b0;
        #1 enabled = 1; A = 4'b1010;
        #1 enabled = 1; A = 4'b1111;
        #1 enabled = 0; A = 4'b1111;
        #1 enabled = 0; A = 4'b0101;
    end
    
    initial begin
        $dumpfile("ej04_tb.vcd");
        $dumpvars(0, testbench);
    end

endmodule
