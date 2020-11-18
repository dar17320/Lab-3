/*

La solución en CircuitVerse la puede ver en este link:

https://circuitverse.org/users/20719/projects/lab09-solucion

*/

module FF_D(input clk, reset, enabled, D, output reg Q);

    always @ (posedge clk, posedge reset)
        if (reset)
            Q = 1'b0;
        else if (enabled)
            Q = D;

endmodule

module FF_T(input clk, reset, enabled, output Q);
    
    wire notQ;
    not (notQ, Q);
    FF_D U1(clk, reset, enabled, notQ, Q);
    
    // alternativa en 1 línea:
    // FF_D U1(clk, reset, enabled, ~Q, Q);
    
    
endmodule
