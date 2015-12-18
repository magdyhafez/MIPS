						 module pc(pc_out,pc_in,clk,reset);
input [31:0] pc_in;
input clk , reset;
output [31:0] pc_out;
reg [31:0] pc_out ;
always @(posedge clk)
   begin
        if (reset)
              pc_out=0;
       else 
              pc_out=pc_in;
   end
endmodule    
//Magdy Mohamed Abdel Moneim Hafez