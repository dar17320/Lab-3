module alu(
           input [7:0] A,B,  // ALU 8-bit Inputs                 
           input [3:0] ALUS,// ALU Selection
           output [7:0] ALUO, // ALU 8-bit Output
           output CarryOut); // Carry Out Flag

    reg [7:0] ALUR;
    wire [8:0] tmp;
    assign ALUO = ALUR; // ALU out
    assign tmp = {1'b0,A} + {1'b0,B};
    assign CarryOut = tmp[8]; // Carryout flag
    
alualways @(*)
    begin
//De momento se uso una tabla generica de internet 
        case(ALUS)
        4'b0000: // suma
           ALUR = A + B ; 
        4'b0001: // resta
           ALUR = A - B ;
        4'b0010: // Multiplicacion
           ALUR = A * B;
        4'b0011: // Division
           ALUR = A/B;
        4'b0100: // Logical shift left
           ALUR = A<<1;
         4'b0101: // Logical shift right
           ALUR = A>>1;
         4'b0110: // rotar izquierda
           ALUR = {A[6:0],A[7]};
         4'b0111: // rotar derecha
           ALUR = {A[0],A[7:1]};
          4'b1000: //  and 
           ALUR = A & B;
          4'b1001: //  or
           ALUR = A | B;
          4'b1010: //  xor 
           ALUR = A ^ B;
          4'b1011: //  nor
           ALUR = ~(A | B);
          4'b1100: // nand 
           ALUR = ~(A & B);
          4'b1101: // xnor
           ALUR = ~(A ^ B);
          4'b1110: // mayor que
           ALUR = (A>B)?8'd1:8'd0 ;
          4'b1111: // comparacion iguales   
            ALUR = (A==B)?8'd1:8'd0 ;
          default: ALU_Result = A + B ; 
        endcase
    end

endmodule