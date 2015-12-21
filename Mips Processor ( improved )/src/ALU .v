  module ALU(ALUOutput,ZEROsignal,shamt,ALUcontrolinput,FirstOperand,SecondOperand);
input [3:0] ALUcontrolinput;
input [31:0] FirstOperand,SecondOperand;
input [4:0] shamt ;
output [31:0] ALUOutput;
output ZEROsignal;
reg [31:0] ALUOutput;
assign ZEROsignal = (ALUOutput == 0);
always @(ALUcontrolinput,FirstOperand,SecondOperand,shamt)
 begin
    case (ALUcontrolinput)
	   0: ALUOutput <= FirstOperand & SecondOperand;
	   1: ALUOutput <= FirstOperand | SecondOperand;
	   2: ALUOutput <= FirstOperand + SecondOperand;
	   6: ALUOutput <= FirstOperand - SecondOperand;
	   7: ALUOutput <= (FirstOperand < SecondOperand) ? 1 : 0;
	   12: ALUOutput <= ~(FirstOperand | SecondOperand); 
	   13: ALUOutput <= FirstOperand<< shamt ;
	   default: ALUOutput <= 0;
	endcase
	
  end	
endmodule  