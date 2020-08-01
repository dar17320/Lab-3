module POS2();

// POS del ejrcicio 2

reg A, B, C;
  wire NA, NB, NC, M1, M2, M3, OUT;


  not W1(NA,A);
  not W2(NB,B);
  not W3(NC,C);
  and A1(M1,NA,NB,C); 
  and A2(M2,A,B,NC);
  and A3(M3,A,B,C);
  or O1(OUT,M1,M2,M3);

  initial begin
    $display("A B C | Y");
    $display("-------");
    $monitor("%b %b %b | %b", A, B, C, OUT);
    A = 0; B = 0; C = 0;
    #1 C = 1;
    #1 B = 1; C = 0;
    #1 C = 1; 
    #1 A = 1; B = 0; C = 0;
    #1 C = 1;
    #1 B = 1; C = 0;
    #1 C = 1;
    #1 $finish;
  end
  

  initial 
    begin
      $dumpfile("POS2_tb.vcd"); 
      $dumpvars(0, POS2);
    end 

endmodule	
