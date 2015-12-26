module instruction_memory(Instruction , Read_Address,clk);
input clk ;
input [31:0] Read_Address ;     //The input to the whole module   32 bits
output [31:0]Instruction ;     // The output of the whole module  32 bits  
 reg [31:0]Instruction ;       
reg [31:0] instruction_memory[39:0];       // Instanciating a memory which will contain the instructions ist size width 32 bits and depth is 40  
//reg	[31:0] imoo [255:0];
   
initial
  begin
//first error
       $readmemh("machinecode.list",instruction_memory);
 
  end
  always @(posedge clk)
   begin    
         Instruction = instruction_memory[Read_Address] ;
   end 
//assign instruction = instruction_memory;//[address[9:2]];
endmodule    
//  Magdy Mohamed Abdel Moneim Hafez

