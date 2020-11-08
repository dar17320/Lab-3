module memRom #(
         parameter AW = 4000,   //-- direcciones
         parameter DW = 8)   //-- datos


         (input clk,
         input wire [AW-1: 0] cnt,   //-- Direcciones
         output reg [DW-1: 0] data);  //-- salidas

parameter Lista = "listado";

//-- Calcular el numero de posiciones totales de memoria
localparam NPOS = 2 ** AW;

  //-- Memoria
  reg [DW-1: 0] rom [0: NPOS-1];

  //-- Lectura de la memoria
  always @(posedge clk) begin
    data <= rom[cnt];
  end

