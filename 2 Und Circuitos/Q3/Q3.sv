module decodificador(
    input logic [2:0] in,
    input logic enable,
    output logic [7:0] out
);

    assign out[0] =  enable  & ~in[2] & ~in[1] & ~[0];
    assign out[1] =  enable  & ~in[2] & ~in[1] & ~[0];
    assign out[2] =  enable  & ~in[2] & ~in[1] & ~[0];
    assign out[3] =  enable  & ~in[2] & ~in[1] & ~[0];
    assign out[4] =  enable  & ~in[2] & ~in[1] & ~[0];
    assign out[5] =  enable  & ~in[2] & ~in[1] & ~[0];
    assign out[6] =  enable  & ~in[2] & ~in[1] & ~[0];
    assign out[7] =  enable  & ~in[2] & ~in[1] & ~[0];

endmodule