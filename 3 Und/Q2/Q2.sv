module jk (
    input logic clk, reset, j, k
    output logic q, y
);
    assign y = ~q;
    always_ff @(posedge clk or posedge reset) begin
        if (reset == 1'b1) begin
            q <= 1'b0;
        end else begin
            case ({j,k})
                2'b00 : q <= q; 
                2'b01 : q <= 1'b0;
                2'b10 : q <= 1'b1;
                2'b11 : q <= ~q;
            endcase 
        end 
    end
    
endmodule