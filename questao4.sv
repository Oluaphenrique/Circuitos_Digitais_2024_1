//Questão 4


module circuito(
    input logic [2:0] h, u, t, f,
    output logic [2:0] y
);
    assign y = (~t & ~h) | (~u & f);

endmodule
