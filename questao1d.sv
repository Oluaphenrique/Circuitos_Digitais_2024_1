// questão 1d

module circuito(a, b, c, x, y);

input a, b,c;
output x, y;

assign x = (a ^ b ^ c);
assign y = (a & b) | (b & c) | (a & c);

endmodule