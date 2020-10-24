
//Ejercicio 1

//module ejercicio1
//-- Entrada: señal de reloj "clk", "enable"
//-- Entrada: dato pre cargado en valor "data"
//-- Salida: contador de 12 bits


module ejercicio1 ();
reg clk, e;
output reg [11:0] data;

//-- La salida es un registro de 26 bits, inicializado a 0
//wire [11:0] data = 0;


//-- Sensible al flanco de subida
always @(posedge clk) begin
  //-- Incrementar el registro
  data <= (data + 1)&e;
end
endmodule
