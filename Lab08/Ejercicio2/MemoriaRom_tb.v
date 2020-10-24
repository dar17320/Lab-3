module TestBench (input wire clk, output wire [4:0] leds);

//-- Fichero con la rom
parameter ROMFILE = "listado";

//-- Numero de bits de la direccione
parameter AW = 5;
parameter DW = 5;

//-- Cable para direccionar la memoria
reg [AW-1: 0] add;

reg rstn = 0;
wire clk_delay;

//-- Instanciar la memoria rom
memRom
  #( ROMFILE(ROMFILE), AW(AW), DW(DW))
  ROM (clk(clk), add(add), data(leds));


//-- Inicializador
always @(negedge clk)
  rstn <= 1;

endmodule
