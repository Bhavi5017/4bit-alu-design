module alu (
input [3:0]a,b,
input [1:0]opcode,
output reg 
[3:0]out
);
always @(*)
begin
case(opcode)
  2'b00: out = a&b;
  2'b01: out = a|b;
  2'b10: out = ~a;
  2'b11: out = a^b;
endcase
end
endmodule

