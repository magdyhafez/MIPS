  module ALUControlUnit (ALUcontrolinput,jumpReg,ALUOp,FunctionField);
input [1:0] ALUOp;
input [5:0] FunctionField;            
output [3:0] ALUcontrolinput;
output jumpReg ;
reg jumpReg ;
reg [3:0] ALUcontrolinput;
initial
 begin
      jumpReg<=0;
	  end
always @ (ALUOp,FunctionField) begin
    if ( ALUOp == 2)  begin 
	    case ( FunctionField )
		      36: ALUcontrolinput <= 0;  // and
			  37: ALUcontrolinput <= 1;  // or
			  32: ALUcontrolinput <= 2;  // add
			  34: ALUcontrolinput <= 6;  // subtract
			  42: ALUcontrolinput <= 7;  // slt
			  39: ALUcontrolinput <= 12;  // nor
			  0 : ALUcontrolinput <= 13 ; // sll 
			  
	    endcase	  
		if(FunctionField==8) jumpReg<= 1;
		else jumpReg<=0 ;
			end 
	else
	    begin
	    case ( ALUOp )
		    0: ALUcontrolinput <=2;
			1: ALUcontrolinput <=6;
			3: ALUcontrolinput <=0;
		endcase	
      jumpReg<=0;
		end
end		
endmodule  