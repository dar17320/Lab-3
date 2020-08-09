module testbench();

  reg P1, P2, P3, P4;
  wire Y1, Y2, Y3, Y4;

  GATES1 G1(P1, P2, P3, Y1);
  GATES2 G2(P1, P2, P3, P4, Y2);
  GATES3 G3(P1, P2, P3, P4, Y3);
  GATES4 G4(P1, P2, P3, P4, Y4);

  initial begin
    $display("A B C | Y");
    $display("-------");
    $monitor("%b %b %b | %b", P1, P2, P3, Y1);
    P1 = 0; P2 = 0; P3 = 0;
    #1 P3 = 1;
    #1 P2 = 1; P3 = 0;
    #1 P3 = 1; 
    #1 P1 = 1; P2 = 0; P3 = 0;
    #1 P3 = 1;
    #1 P2 = 1; P3 = 0;
    #1 P3 = 1;
//    #1 $finish;
  end

  initial begin
    #8 
    $display("\n\n");
    $display("A B C D | Y");
    $display("------------");
    $monitor("%b %b %b %b | %b", P1, P2, P3, P4, Y2);
    P1 = 0; P2 = 0; P3 = 0; P4 = 0;
    #1 P4 = 1;
    #1 P3 = 1; P4 = 0;
    #1 P4 = 1;
    #1 P2 = 1; P3 = 0; P4 = 0;
    #1 P4 = 1;
    #1 P3 = 1; P4 = 0;
    #1 P4 = 1; 
    #1 P1 = 1; P2 = 0; P3 = 0; P4 = 0;
    #1 P4 = 1;
    #1 P3 = 1; P4 = 0;
    #1 P4 = 1;
    #1 P2 = 1; P3 = 0; P4 = 0;
    #1 P4 = 1;
    #1 P3 = 1; P4 = 0;
    #1 P4 = 1;
//    #1 $finish;
  end
  
initial begin
    #25 
    $display("\n\n");
    $display("A B C D | Y");
    $display("------------");
    $monitor("%b %b %b %b | %b", P1, P2, P3, P4, Y3);
    P1 = 0; P2 = 0; P3 = 0; P4 = 0;
    #1 P4 = 1;
    #1 P3 = 1; P4 = 0;
    #1 P4 = 1;
    #1 P2 = 1; P3 = 0; P4 = 0;
    #1 P4 = 1;
    #1 P3 = 1; P4 = 0;
    #1 P4 = 1; 
    #1 P1 = 1; P2 = 0; P3 = 0; P4 = 0;
    #1 P4 = 1;
    #1 P3 = 1; P4 = 0;
    #1 P4 = 1;
    #1 P2 = 1; P3 = 0; P4 = 0;
    #1 P4 = 1;
    #1 P3 = 1; P4 = 0;
    #1 P4 = 1;
//    #1 $finish;
  end
initial begin
    #42 
    $display("\n\n");
    $display("A B C D | Y");
    $display("------------");
    $monitor("%b %b %b %b | %b", P1, P2, P3, P4, Y4);
    P1 = 0; P2 = 0; P3 = 0; P4 = 0;
    #1 P4 = 1;
    #1 P3 = 1; P4 = 0;
    #1 P4 = 1;
    #1 P2 = 1; P3 = 0; P4 = 0;
    #1 P4 = 1;
    #1 P3 = 1; P4 = 0;
    #1 P4 = 1; 
    #1 P1 = 1; P2 = 0; P3 = 0; P4 = 0;
    #1 P4 = 1;
    #1 P3 = 1; P4 = 0;
    #1 P4 = 1;
    #1 P2 = 1; P3 = 0; P4 = 0;
    #1 P4 = 1;
    #1 P3 = 1; P4 = 0;
    #1 P4 = 1;
    #1 $finish;
  end


  initial begin
      $dumpfile("GATES_tb.vcd"); 
      $dumpvars(0, testbench);

  end
endmodule
