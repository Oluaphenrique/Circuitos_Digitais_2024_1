// questao 3

module circuito{
    input logic a,
    input logic b,
    input logic c,
    input logic d,
    output logic y
};
    assign y = (~a & ~b) | ( ~a & c);

endmodule