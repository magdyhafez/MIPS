module ALU(ALUOutput,ZEROsignal,ALUcontrolinput,FirstOperand,SecondOperand);
input [3:0] ALUcontrolinput;
input [31:0] FirstOperand,SecondOperand;
output [31:0] ALUOutput;
output ZEROsignal;
reg ALUOutput;
assign ZEROsignal = (ALUOutput == 0);
always @(ALUcontrolinput,FirstOperand,SecondOperand)
 begin
    case (ALUcontrolinput)
	   0: ALUOutput <= FirstOperand & SecondOperand;
	   1: ALUOutput <= FirstOperand | SecondOperand;
	   2: ALUOutput <= FirstOperand + SecondOperand;
	   6: ALUOutput <= FirstOperand - SecondOperand;
	   7: ALUOutput <= (FirstOperand < SecondOperand) ? 1 : 0;
	   12: ALUOutput <= ~(FirstOperand | SecondOperand);
	   default: ALUOutput <= 0;
	endcase;
  end	
endmodule  
// Done By mohamed ismail