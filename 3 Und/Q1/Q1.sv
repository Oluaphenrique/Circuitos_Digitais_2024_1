module d(
    input logic clk, reset, d,
    output logic q
);
    always @( posede clk or posede reset) begin

        if (reset == 1'b1)

            q <= 0;
        else 
            q <= d;
    end
endmodule