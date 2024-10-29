module multi(

    input logic [7:0] a,
    input logic [7:0] b,
    output logic [15:0] r
);

    assign r = a * b;

    
endmodule