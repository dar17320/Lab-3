module testbench();

  reg P1, P2, P3, P4;
  wire Y1, Y2, Y3, Y4;

  LOGICOS1 L1(P1, P2, P3, Y1);
  LOGICOS2 L2(P1, P2, P3, P4, Y2);
  LOGICOS3 L3(P1, P2, P3, Y3);
  LOGICOS4 L4(P1, P2, P3, Y4);

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
  end
  
initial begin
    #25 
    $display("\n\n");
    $display("A B C | Y");
    $display("-------");
    $monitor("%b %b %b | %b", P1, P2, P3, Y3);
    P1 = 0; P2 = 0; P3 = 0;
    #1 P3 = 1;
    #1 P2 = 1; P3 = 0;
    #1 P3 = 1; 
    #1 P1 = 1; P2 = 0; P3 = 0;
    #1 P3 = 1;
    #1 P2 = 1; P3 = 0;
    #1 P3 = 1;
  end
initial begin
    #33 
    $display("\n\n");
    $display("A B C | Y");
    $display("-------");
    $monitor("%b %b %b | %b", P1, P2, P3, Y4);
    P1 = 0; P2 = 0; P3 = 0;
    #1 P3 = 1;
    #1 P2 = 1; P3 = 0;
    #1 P3 = 1; 
    #1 P1 = 1; P2 = 0; P3 = 0;
    #1 P3 = 1;
    #1 P2 = 1; P3 = 0;
    #1 P3 = 1;
    #1 $finish;
  end


  initial begin
      $dumpfile("LOGICOS_tb.vcd"); 
      $dumpvars(0, testbench);

  end
endmodule
