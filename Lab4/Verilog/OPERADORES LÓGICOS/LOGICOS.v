module LOGICOS1(input wire A, B, C, output wire Y);

// ECUACIÓN A IMPLEMENTAR: B' 1.2

  not W2(Y,B);

endmodule	

module LOGICOS2(input wire A, B, C,D, output wire Y);

// ECUACIÓN A IMPLEMENTAR: B'+C 2.2

  not W2(NB,B);

  or O1(Y,NB,C);

endmodule

module LOGICOS3(input wire A, B, C, output wire Y);

// ECUACIÓN A IMPLEMENTAR: AD+B+C'D 2.3

  not W3(NC,C);

  and A1(S1,A,D);
  and A2(S2,NC,D);
  or O1(Y,S1,B,S2);

endmodule

module LOGICOS4(input wire A, B, C, output wire Y);

// ECUACIÓN A IMPLEMENTAR: B+A'C'

  not W1(NA,A);
  not W3(NC,C);

  and A1(S1,NA,NC);
  or O1(Y,S1,B);

endmodule