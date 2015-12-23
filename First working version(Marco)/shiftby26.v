
module shiftby26(out,in);
input [25:0]in;
output [27:0]out;

assign out = in << 2;


endmodule