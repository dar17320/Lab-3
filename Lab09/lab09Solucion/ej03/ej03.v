/*

Para poder hacer un Flip Flop tipo JK con un Flip Flop tipo D hay que pensar en la nube combinacional
que va a estar entre las entradas J,K y la entrada D. El diagrama  sería así:

                    Flip Flop JK                                    
        +---------------------------------+                         
        |  +--------------------------+   |                         
        |  |                          |   |                         
        |  |    +----+    +------+    |   |                         
        |  +--->|    |    |      |    |   |                         
        |       |    |    |      |    |   |                         
 J ------------>| CL |--->| D  Q |----+---|----> Q                  
        |       |    |    |      |        |                         
 K ------------>|    |    |      |        |                         
        |       +----+    +------+        |                         
        |                                 |                         
        +---------------------------------+                         

Pra construir una tabla que haga sentido tenemos que pensar en lo siguiente:
Si conozco las entradas J y K entonces sé que valor ESPERO que mi salida tenga.
J = 1 & K = 0 espero que Q = 1
J = 0 & K = 1 espero que Q = 0
J = 1 & k = 1 espero que Q = ~Q (toggle)
J = 0 & K = 0 espero que Q = Qprev (memoria)

A partir de esta lógica podemos armar la siguiente tabla:

J K Qprev | D | Q
----------|---|---
0 0   0   | 0 | 0
0 0   1   | 1 | 1
0 1   X   | 0 | 0
1 0   X   | 1 | 1
1 1   0   | 1 | 1
1 1   1   | 0 | 0

La columna Q es el valor de salida que esperamos de acuerdo a las entradas J & K.
La columna Qprev es el valor anterior del Flip Flop.
La columna D es el valor que necesitamos esté en la entrada D del Flip Flop
para que Q se cumpla.

Si quitamos la última columna (Q) obtenemos la tabla de verdad que representa
la lógica combinacional en la entrada de D.

La ecuación que representa esta tabla de verdad es:

D(Qprev, J, K) = (~Qprev * J) + (Qprev * ~K)

La representación en CircuitVerse se encuentra en el siguiente link:

https://circuitverse.org/users/20719/projects/lab09-solucion

*/

module FF_D(input clk, reset, enabled, D, output reg Q);

    always @ (posedge clk, posedge reset)
        if (reset)
            Q = 1'b0;
        else if (enabled)
            Q = D;

endmodule

module FF_JK(input clk, reset, enabled, J, K, output Q);
    
    // Solución con compuertas (estructural)
    /*
    wire notQ, notK, and1, and2, d_input;
    
    not(notQ, Q);
    not(notK, K);
    and(and1, J, notQ);
    and(and2, notK, Q);
    or(d_input, and1, and2);
    
    FF_D U1(clk, reset, enabled, d_input, Q);
    */
    // Solución con operadores
    
    FF_D U1(clk, reset, enabled, ((J & ~Q) | (~K & Q)), Q);
    
endmodule

