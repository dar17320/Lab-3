module Ejercicios (input clk, reset, D, output reg Q);
        always @ (posedge clk or posedge reset)begin
            if (reset) begin
                Q <= 1'b0;
            end
            else begin
                Q <= D;
            end
        end
endmodule


//Ejercicio 1

module ejercicio1(input A, B, clk, reset, output wire Q, output wire [1:0] Spres, Sfut);
        wire S0pres, S1pres, S0fut, S1fut;
        assign S0fut = (~S1pres & ~S0pres &A)
	assign S1fut = (S0pres & B)|(Sipres & A & B);
	assign Q = (S1pres & ~S0pres & A & B);

	FFD S1(.clk(clk), .reset(reset), .D(S1fut), .Q(S1pres));
	FFD S2(clk,reset,s0fut,s0pres);

	assign Spres = {S1pres,S0pres};
	assign Sfut = {S1fut,S0fut};

endmodule


//Ejercicio 3

module ejercicio3(input A, clk, reset, output wire Y1, Y2, Y3);
    wire S0, S1, S2, S00, S11, S22;

    assign S00 = (S0 & ~S2 & ~A) | (S0 & S1 & A) | (S0 & ~S1 & S2) | (~S0 & S1 & S2 & ~A) | (~S0 & S1 & ~S2 & ~A);
    assign S01 = (S1 & ~S2 & ~A) | (~S1 & ~S2 & A) | (S1 & S2 & A);
    assign S22 = ~S2;

    FLIP U3(clk, reset, S00, S0);
    FLIP U4(clk, reset, S11, S1);
    FLIP U5(clk, reset, S22, S2);

    assign Y1 = S0;
    assign Y2 = (S0 & ~S1) | (~S0 & S1);
    assign Y3 = (S1 & ~S2) | (~S1 & S2);

endmodule