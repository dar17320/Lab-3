module POS1();

// SOP del ejrcicio 1

reg A, B, C;
  wire W1, W2, W3, M1, M2, M3, M4, M5, OUT;


  not NA(W1,A);
  not NB(W2,B);
  not NC(W3,C);
  and A1(M1,W1,W2,W3); 
  and A2(M2,W1,B,W3);
  and A3(M3,A,W2,W3);
  and A4(M4,A,W2,C);
  and A5(M5,A,B,C);
  or O1(OUT,M1,M2,M3,M4,M5);

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
      $dumpfile("POS1_tb.vcd"); 
      $dumpvars(0, POS1);
    end 

endmodule	
