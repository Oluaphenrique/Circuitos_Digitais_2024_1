// Questao 1 b

module circuito (a, b, c, x );

input a, b, c;
output x;


assign x = (a | b) & (b |~c);

    
endmodule