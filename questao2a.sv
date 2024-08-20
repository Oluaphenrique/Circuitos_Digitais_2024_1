// questao 2a


module circuito(

  input logic a,
  input logic b,
  input logic c,
  input logic x);

logic w1, w2, w3, w4;
assign w1 = (~a);
assign w2 = (~b);
assign w3 = (w1 | w2);
assign w4 = (~w3);
assign x = (w4 & b & c);

endmodule