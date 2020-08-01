module SOP3();

// SOP del ejercicio 3

reg A, B, C, D;
  wire NA, NB, NC, ND, S1, S2, S3, S4, S5, S6, S7, S8, OUT;


  not W1(NA,A);
  not W2(NB,B);
  not W3(NC,C);
  not W4(ND,D);
  or O1(S1,A,NB,C,D);
  or O2(S2,A,NB,C,ND);
  or O3(S3,A,NB,NC,D);
  or O4(S4,A,NB,NC,ND);
  or O5(S5,NA,B,C,ND);
  or O6(S6,NA,NB,NC,ND);
  or O7(S7,NA,NB,C,D);
  or O8(S8,NA,NB,C,ND);
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
      $dumpfile("SOP3_tb.vcd"); 
      $dumpvars(0, SOP3);
    end 

endmodule	
