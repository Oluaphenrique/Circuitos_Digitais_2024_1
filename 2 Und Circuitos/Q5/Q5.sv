module mux (
    input logic [3:0] a,
    input logic [1:0] b,
    output logic f 
);
    always_comb begin
        case (b)
            2'b00 : f = a[0]; 
            2'b01 : f = a[1];
            2'b10 : f = a[2];
            2'b11 : f = a[3];
            default: f = 1'b0;
        endcase 
    end
endmodule