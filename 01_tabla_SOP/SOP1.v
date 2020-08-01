module SOP1();

// SOP del ejercicio 1

reg A, B, C;
  wire NA, NB, NC, S1, S2, S3, OUT;


  not W1(NA,A);
  not W2(NB,B);
  not W3(NC,C);
  or O1(S1,A,B,NC);
  or O2(S2,A,NB,C);
  or O3(S3,NA,NB,C);
  and A1(OUT,S1,S2,S3);
  

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
      $dumpfile("SOP1_tb.vcd"); 
      $dumpvars(0, SOP1);
    end 

endmodule	
