module testbench();

    reg [6:0] address;
    wire [12:0] signals;

    tabla U1(address, signals);
        
    initial
        #40 $finish;
    
    initial begin
        $display("address\tsignals");
        $monitor("%b\t%b",address, signals);
           address = 7'b0000_000;
        #1 address = 7'b1101_100;
        
        #1 $display("JC");
        #1 address = 7'b0000_101;
        #1 address = 7'b0000_011;
        
        #1 $display("JNC");
        #1 address = 7'b0001_111;
        #1 address = 7'b0001_001;
        
        #1 $display("CMPI");
        #1 address = 7'b0010_101;
        
        #1 $display("CMPM");
        #1 address = 7'b0011_111;
        
        #1 $display("LIT");
        #1 address = 7'b0100_001;
        
        #1 $display("IN");
        #1 address = 7'b0101_111;
        
        #1 $display("LD");
        #1 address = 7'b0110_011;
        
        #1 $display("ST");
        #1 address = 7'b0111_111;
        
        #1 $display("JZ");
        #1 address = 7'b1000_111;
        #1 address = 7'b1000_001;
        
        #1 $display("JNZ");
        #1 address = 7'b1001_011;
        #1 address = 7'b1001_101;
        
        #1 $display("ADDI");
        #1 address = 7'b1010_111;
        
        #1 $display("ADDM");
        #1 address = 7'b1011_011;
        
        #1 $display("JMP");
        #1 address = 7'b1100_001;
        
        #1 $display("OUT");
        #1 address = 7'b1101_111;
        
        #1 $display("NANDI");
        #1 address = 7'b1110_101;
        
        #1 $display("NANDM");
        #1 address = 7'b1111_011;
    end
    
    initial begin
        $dumpfile("ej05_tb.vcd");
        $dumpvars(0, testbench);
    end

endmodule
