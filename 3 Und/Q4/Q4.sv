module registrador(
    input logic clk, load, clr,
    input logic [3:0] d,
    output logic [3:0] q
);

    always_ff @(posedge clk or posedge clr) begin
        if (clr == 1'b1)
            q <= 4'b0000;   
        else if (load)
            q <= d;  
    end 
endmodule