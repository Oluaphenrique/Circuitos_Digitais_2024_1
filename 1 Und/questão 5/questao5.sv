//Questão 5


module questao5 (
    input logic [2:0] b2, b1, b0,
    output logic y3, y2, y1, y0
);
    assign y3 = b2 & b1 & b0;
    assign y2 = (~b2 & ~b1 & ~b0) | (b2 & ~b1 & b0) | (b2 & b1 & ~b0);
    assign y1 = (~b2 & ~b1 & b0) | (b2 & ~b0);
    assign y0 = 1;
endmodule
