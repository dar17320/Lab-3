module bdriver (input en, 
                  output [15:0] bus
                 ); 
  reg [3:0] data = 0'b;  
  assign bus = (en)? data : 0'b;
endmodule