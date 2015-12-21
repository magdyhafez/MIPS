		  module instruction_memory
(Instruction , Read_Address,clk);
input clk ;
input [31:0] Read_Address ;     //The input to the whole module   32 bits
output [31:0]Instruction ;     // The output of the whole module  32 bits  
reg [31:0]Instruction ;       
reg [31:0] my_memory [0:39];       // Instanciating a memory which will contain the instructions ist size width 32 bits and depth is 40  
initial
  begin
       readmemh("C:\My_Designs\Mips\processor\src\machinecode.list",my_memory);
  end
always @(posedge clk)
  begin    
         Instruction = my_memory[Read_Address]  ;
  end 
endmodule    
//  Magdy Mohamed Abdel Moneim Hafez