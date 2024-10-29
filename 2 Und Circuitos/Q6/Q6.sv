module somador(
    input logic a,
    input logic b,
    output logic s,
    output logic carry
);

assign s =  a ^ b;
assign carry = a & b;

endmodule