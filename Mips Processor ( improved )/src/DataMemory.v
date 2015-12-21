module Datamemory(clk,addr,data_in,data_out,rd,wr) ;
input clk,rd,wr;
input [31:0] addr;
input [31:0] data_in;



output [31:0] data_out;

reg[31:0] memory [0:255];

assign data_out = memory[addr];

always@(posedge clk)if (wr &!rd)memory[addr]<=data_in;

initial
begin
$readmemh("C:\My_Designs\Mips\processor\src\memory.list",memory);
end
endmodule




