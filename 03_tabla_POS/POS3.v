module POS3();

// POS del ejercicio 3

reg A, B, C, D;
  wire NA, NB, NC, ND, M1, M2, M3, M4, M5, M6, M7, OUT;


  not W1(NA,A);
  not W2(NB,B);
  not W3(NC,C);
  not W4(ND,D);
  and A1(M1,NA,NB,NC,ND);
  and A2(M2,NA,NB,NC,D);
  and A3(M3,NA,NB,C,ND);
  and A4(M4,NA,NB,C,D);
  and A5(M5,A,NB,NC,ND);
  and A6(M6,A,NB,C,ND);
  and A7(M7,A,B,C,ND);
  or O1(OUT,M1,M2,M3,M4,M5,M6,M7);

  initial begin
    $display("A B C D | Y");
    $display("------------");
    $monitor("%b %b %b %b| %b", A, B, C, D, OUT);
    A = 0; B = 0; C = 0; D = 0;
    #1 D = 1;
    #1 C = 1; D = 0;
    #1 D = 1;
    #1 B = 1; C = 0; D = 0;
    #1 D = 1;
    #1 C = 1; D = 0;
    #1 D = 1; 
    #1 A = 1; B = 0; C = 0; D = 0;
    #1 D = 1;
    #1 C = 1; D = 0;
    #1 D = 1;
    #1 B = 1; C = 0; D = 0;
    #1 D = 1;
    #1 C = 1; D = 0;
    #1 D = 1;
    #1 $finish;
  end
  

  initial 
    begin
      $dumpfile("POS3_tb.vcd"); 
      $dumpvars(0, POS3);
    end 

endmodule	
