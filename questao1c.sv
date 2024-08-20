// questão 1c

module circuito (a, b, c, d, x );

input a, b, c, d;
output x;

assign x = (~ (a & b ) & (c | d));

endmodule