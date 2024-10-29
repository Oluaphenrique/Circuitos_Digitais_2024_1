module Q12(
    
    //definindo os bits do opcode
    input logic opc2, opc1, opc0,
    //definindo a entrada 8 bits de a
    input logic [7:0] a,
    //definindo a entrada 8 bits de b  
    input logic [7:0] b,
    //saída 8 bits da alu
    output logic [7:0] s
);

always @(*) begin
    case ({opc2,opc1, opc0}) 
        3'b000: s = a | b; 
        3'b001: s = a & b; 
        3'b010: s = a ^ b; 
        3'b011: s = ~a; 
        3'b100: s = a + b; 
        3'b101: s = a - b; 
        3'b110: s = a + 1; 
        3'b111: s = b + 1; 
        default: s = 8'bx;
    endcase
end
endmodule