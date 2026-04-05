module tb();
reg [3:0]a,b;
reg [1:0]opcode;
wire [3:0]out;

alu uut(.a(a),
        .b(b),
        .opcode(opcode),
        .out(out)
        );
initial begin
a=4'b0000; b=4'b1111; opcode=2'b00; #10;
a=4'b0110; b=4'b1001; opcode=2'b01; #10;
a=4'b1010; b=4'b1001; opcode=2'b10; #10;
a=4'b1000; b=4'b0101; opcode=2'b11; #10;
end
endmodule
