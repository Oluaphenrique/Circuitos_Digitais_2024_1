// Questao 1 a


module circuito(
    input logic a, 
    input logic b, 
    input logic c,  
    output logic x 
);
    assign x = (~a & b) | c;

endmodule