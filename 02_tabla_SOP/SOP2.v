module SOP2();

// SOP del ejercicio 2

reg A, B, C;
  wire NA, NB, NC, S1, S2, S3, OUT;


  not W1(NA,A);
  not W2(NB,B);
  not W3(NC,C);
  or O1(S1,A,B,C);
  or O2(S2,A,NB,C);
  or O3(S3,A,NB,NC);
  or O4(S4,NA,B,C);
  or O5(S5,NA,B,NC);
  and A1(OUT,S1,S2,S3,S4,S5);
  

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
      $dumpfile("SOP2_tb.vcd"); 
      $dumpvars(0, SOP2);
    end 

endmodule	
