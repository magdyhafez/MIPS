module controlunit ( opcode,regdst,alusrc,memtoreg,regwrite,memread,memwrite,br,aluop0, aluop1,j);
	
	input [5:0] opcode;
	output [1:0] regdst;
	output alusrc ;
	output [1:0] memtoreg;
	output regwrite ;
	output memread ;
	output memwrite ; 
	output br ;
	output aluop0;
	output aluop1 ;
	output j ;
	
	reg [1:0]regdst;
	reg alusrc ;
	reg [1:0]memtoreg;
	reg regwrite ;
	reg memread ;
    reg memwrite ; 
	reg br ;
	reg aluop0;
	reg aluop1 ;
	reg j ;	  
	
	always@(opcode) 
	 	begin 
		case(opcode) 
		
		
    6'b000000: begin regdst=2'b01; alusrc=1'b0; memtoreg=2'b00; regwrite=1'b1; memread=1'b0; memwrite=1'b0; br=1'b0 ; aluop1=1'b1; aluop0=1'b0; j=1'b0; end
	
	6'b001000: begin regdst=2'b00; alusrc=1'b1; memtoreg=2'b00; regwrite=1'b1; memread=1'b0; memwrite=1'b0; br=1'b0 ; aluop1=1'b0; aluop0=1'b0; j=1'b0; end	 
	
	6'b100011: begin regdst=2'b00; alusrc=1'b1; memtoreg=2'b01; regwrite=1'b1; memread=1'b1; memwrite=1'b0; br=1'b0 ; aluop1=1'b0; aluop0=1'b0; j=1'b0; end	 
	
	6'b101011: begin regdst=2'b00; alusrc=1'b1; memtoreg=2'b00; regwrite=1'b0; memread=1'b0; memwrite=1'b1; br=1'b0 ; aluop1=1'b0; aluop0=1'b0; j=1'b0; end
	
	6'b001100: begin regdst=2'b00; alusrc=1'b1; memtoreg=2'b00; regwrite=1'b1; memread=1'b0; memwrite=1'b0; br=1'b0 ; aluop1=1'b1; aluop0=1'b1; j=1'b0; end
	
	6'b000100: begin regdst=2'b00; alusrc=1'b0; memtoreg=2'b00; regwrite=1'b0; memread=1'b0; memwrite=1'b0; br=1'b1 ; aluop1=1'b0; aluop0=1'b1; j=1'b0;	end
	
	6'b000011: begin regdst=2'b10; alusrc=1'b0; memtoreg=2'b10; regwrite=1'b1; memread=1'b0; memwrite=1'b0; br=1'b0 ; aluop1=1'b0; aluop0=1'b0; j=1'b1;	end
	
	default:   begin regdst=2'b00; alusrc=1'b0; memtoreg=2'b00; regwrite=1'b0; memread=1'b0; memwrite=1'b0; br=1'b0 ; aluop1=1'b0; aluop0=1'b0; j=1'b0;	end
			  
	endcase 
		end
endmodule