module display(
    input logic [3:0] digito,
    output logic [6:0] segmento 
);
    always_comb begin 
        case(digito)
            4'h0 : segmento = 7'b0000001; 
            4'h1 : segmento = 7'b1001111;
            4'h2 : segmento = 7'b0010010; 
            4'h3 : segmento = 7'b0000110; 
            4'h4 : segmento = 7'b1001100; 
            4'h5 : segmento = 7'b0100100;
            4'h6 : segmento = 7'b0100000; 
            4'h7 : segmento = 7'b0001111; 
            4'h8 : segmento = 7'b0000000; 
            4'h9 : segmento = 7'b0000100;
            4'hA : segmento = 7'b0001000;
            4'hB : segmento = 7'b1100000; 
            4'hC : segmento = 7'b0110001;
            4'hD : segmento = 7'b1000010;
            4'hE : segmento = 7'b0110000;
            4'hF : segmento = 7'b0111000; 
            default : segmento = 7'b1111111;
        endcase
    end
endmodule