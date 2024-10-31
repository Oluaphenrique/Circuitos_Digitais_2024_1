module contador(
    input logic clk, reset, m,
    output logic [7:0] contador
);


always_ff @(posedge clk or posedge reset) begin
   if (reset) begin
        contador <= 8'b00000000; 
end else begin
    if (m == 1'b1) begin
        contador <= contador + 1;
end else begin
        contador <= contador - 1;
   end  
        end 
    end
endmodule