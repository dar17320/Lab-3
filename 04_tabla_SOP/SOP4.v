module SOP4();

// SOP del ejercicio 4

reg A, B, C, D;
  wire NA, NB, NC, ND, S1, S2, S3, S4, S5, S6, S7, S8, S9, OUT;


  not W1(NA,A);
  not W2(NB,B);
  not W3(NC,C);
  not W4(ND,D);
  or O1(S1,A,B,C,ND);
  or O2(S2,A,NB,C,D);
  or O3(S3,A,NB,C,ND);
  or O4(S4,NA,B,C,ND);
  or O5(S5,NA,B,NC,ND);
  or O6(S6,NA,NB,C,D);
  or O7(S7,NA,NB,C,ND);
  or O8(S8,NA,NB,NC,D);
  or O9(S9,NA,NB,NC,ND);
  and A1(OUT,S1,S2,S3,S4,S5,S6,S7,S8);
  

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
      $dumpfile("SOP4_tb.vcd"); 
      $dumpvars(0, SOP4);
    end 

endmodule	
