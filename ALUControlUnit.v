module ALUControlUnit (ALUcontrolinput,ALUOp,FunctionField);
input [1:0] ALUOp;
input [5:0] FunctionField;            
output [3:0] ALUcontrolinput;
reg ALUcontrolinput;
always @ (ALUOp,FunctionField) begin
    if ( ALUOp == 2)
	    case ( FunctionField )
		      36: ALUcontrolinput <= 0;  // and
			  37: ALUcontrolinput <= 1;  // or
			  32: ALUcontrolinput <= 2;  // add
			  34: ALUcontrolinput <= 6;  // subtract
			  42: ALUcontrolinput <= 7;  // slt
			  39: ALUcontrolinput <= 12;  // nor
	    endcase
	else
	    case ( ALUOp )
		    0: ALUcontrolinput <=2;
			1: ALUcontrolinput <=6;
		endcase	
 end			  
endmodule  