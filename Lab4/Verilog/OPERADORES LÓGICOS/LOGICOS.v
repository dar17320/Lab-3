module LOGICOS();

// SOP del ejercicio 4

reg A, B, C, D;
  wire NA, NB, NC, ND, S1, S2, S3, S4, S5, S6, S7, S8, S9, OUT;


  not W1(NA,A);
  not W2(NB,B);
  not W3(NC,C);
  not W4(ND,D);


  and A1(S1,NA,NC);
  or O1(OUT,S1,B);
  
  

  initial begin
    $display("A B C D | Y");
    $display("------------");
    $monitor("%b %b %b %b | %b", A, B, C, D, OUT);
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
      $dumpfile("LOGICOS_tb.vcd"); 
      $dumpvars(0, LOGICOS);
    end 

endmodule	
