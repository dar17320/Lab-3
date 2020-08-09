module GATES1(input wire A, B, C, output wire Y);

// ECUACIÓN A IMPLEMENTAR: A'C'+AC+B'C' 1.1

  assign Y=(~A & ~C) | (A & C) | (~B & ~C);

endmodule	

module GATES2(input wire A, B, C,D, output wire Y);

// ECUACIÓN A IMPLEMENTAR: A’B’C’D’+A’B’CD+A’BC’D+A’BCD’ + AB’C’D +AB’CD’+ABC’D’+ABCD 1.3

  assign Y=(~A & ~B &~C & ~D) | (~A & ~B & C & D) | (~A & B & ~C & D) | (~A & B & C & ~D) | (A & ~B & ~C & D) | (A & ~B & C & ~D) | (A & B & ~C & ~D) | (A & B & C & D);

endmodule	

module GATES3(input wire A, B, C, D, output wire Y);

// ECUACIÓN A IMPLEMENTAR: AD'+AC+BD 1.4

  assign Y=(~A & ~C) | (A & C) | (~B & ~C);

endmodule	

module GATES4(input wire A, B, C, D, output wire Y);

// ECUACIÓN A IMPLEMENTAR: AB'+BC'+B'C+D' 2.1

  assign Y=(A & ~B) | (B & ~C) | (~B & C) | (~D);

endmodule	