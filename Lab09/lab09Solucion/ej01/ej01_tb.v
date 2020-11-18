module testbench();

    reg clk, reset, enabled, D1;
    wire Q1;
    reg [1:0] D2;
    wire [1:0] Q2;
    reg [3:0] D3;
    wire [3:0] Q3;

    FF_D U1(clk, reset, enabled, D1, Q1);
    FF_D_2 U2(clk, reset, enabled, D2, Q2);
    FF_D_4 U3(clk, reset, enabled, D3, Q3);
    
    always
        #5 clk = ~clk;
        
    initial
        #60 $finish;
    
    initial begin
        $display("clk\treset\tenabled\tD1\tQ1\tD2\tQ2\tD3\tQ3");
        $monitor("%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b", clk, reset, enabled, D1, Q1, D2, Q2, D3, Q3);
            clk = 0; reset = 0; enabled = 0; D1 = 0; D2 = 2'b00; D3 = 4'b0000;
        #1  reset = 1; enabled = 0; D1 = 0; D2 = 2'b00; D3 = 4'b0000;
        #1  reset = 0; enabled = 0; D1 = 1; D2 = 2'b11; D3 = 4'b1111;
        #10 enabled = 1; D1 = 1; D2 = 2'b11; D3 = 4'b1111;
        #10 enabled = 0; D1 = 0; D2 = 2'b10; D3 = 4'b1010;
        #10 enabled = 1;
        #10 enabled = 1; D1 = 1; D2 = 2'b01; D3 = 4'b0101;
    end
    
    initial begin
        $dumpfile("ej01_tb.vcd");
        $dumpvars(0, testbench);
    end

endmodule
