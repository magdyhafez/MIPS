module mipsprocessor();
	wire [31:0] a ;
	wire [31:0] b ;	
	wire [31:0] instruction ;
	wire [5:0] instruction1 ;
	wire [4:0] instruction2 ;
	wire [4:0] instruction3 ;
	wire [4:0] instruction4 ;
        wire [15:0] instruction5 ;
	wire [5:0] instruction6 ;
	wire [4:0] instruction7 ;
	wire [25:0] instruction8 ;
	wire alusrc,regwrite,memread,memwrite,br,aluop0,aluop1,j;
	wire [1:0] regdst ;
	wire [1:0] memtoreg;
	wire [31:0] read_data1 ; 
	wire [31:0] read_data2 ; 
	wire [31:0] write_data;
	
	wire [4:0] mux1out ; 		   
	wire [31:0] signextention_out ; 
	wire [31:0] secondoperand ;	
	wire [3:0] alucontrolinput;
	wire [1:0] aluop ;
	wire [31:0] alu_result ;
	wire  zero_signal ;	
	wire [31:0] read_data ;
	wire [31:0] pc_4 ;
	wire [27:0] shifted_jump ;
	wire memtoreg0,memtoreg1 ; 
	wire [31:0] jump_address ;
	wire [31:0] alu2_secondoperand ;
	wire [31:0] fulladderout;
	wire andout ;
	wire [31:0] firstmux_secondalu_out ;
	wire [31 :0] secondmux_secondalu_out ;
	wire [31:0] thirdmux_secondalu_out ;
	wire jumpReg ;
	
	wire reset ;
        reg clk ; 
	parameter jal_reg_address =5'b11111 ;
        parameter zero =0 ; 
        parameter zero5bit =5'b00000;
        parameter zero1bit =1'b0;
	assign jump_address = {{pc_4[31:28]},shifted_jump} ;
	
	pc programcounter ( a,thirdmux_secondalu_out ,clk,reset);	
	//instr_memory im (a,instruction ,clk); 
        instruction_memory im (a,instruction ,clk);						
	assign instruction1=instruction[31:26];  
	assign instruction2=instruction[25:21];
	assign instruction3=instruction[20:16];
	assign instruction4=instruction[15:11];
	assign instruction5=instruction[15:0];
	assign instruction6=instruction[5:0];
	assign instruction7=instruction[10:6];
	assign instruction8=instruction[25:0];
	assign memtoreg0=memtoreg[0];
	assign memtoreg1=memtoreg[1];
	
	assign aluop = {aluop1,aluop0} ;
	controlunit cu (instruction1,regdst,alusrc,memtoreg,regwrite,memread,memwrite,br,aluop0,aluop1,j);
	
	Mux5bit mux_regdst(instruction3 , instruction4 , jal_reg_address, zero5bit ,regdst[0] , regdst[1] , mux1out ) ;
	
	//second error!
	RegisterFile regfile ( regwrite , instruction2 , instruction3 , read_data1 , read_data2 ,mux1out ,write_data ,clk );
	
	mux_21 mux_alu ( read_data2 ,signextention_out	, alusrc , secondoperand );
	
	signExtention se ( instruction5 ,  signextention_out ) ; 
	
	ALUControlUnit alucontrol ( alucontrolinput ,jumpReg ,aluop , instruction6);
	
	ALU alu ( alu_result , zero_signal , instruction7 , alucontrolinput ,read_data1 , secondoperand);
	
	Datamemory datamemory ( clk , alu_result , read_data2 , read_data , memread , memwrite ) ;
	
	mux_41 mux_datamemory( alu_result , read_data ,	pc_4 , zero , memtoreg0,memtoreg1,write_data);
	
	adder adder_pc (a , pc_4 ); 
	
	shiftby26 shiftingby2 ( shifted_jump ,instruction8 ); 
	
	shiftby2 shifting_constant_by2 ( alu2_secondoperand , signextention_out );
	
	adder32bit fulladder (fulladderout,n ,pc_4,signextention_out ,zero1bit ) ;
	and and_branch ( andout , br , zero_signal ) ;
	mux_21 firstmux_secondalu (pc_4 ,fulladderout , andout ,firstmux_secondalu_out );
	mux_21 secondmux_secondalu ( firstmux_secondalu_out , jump_address , j ,secondmux_secondalu_out);
	mux_21 thirdmux_secondalu ( secondmux_secondalu_out , read_data1 ,jumpReg ,thirdmux_secondalu_out );
initial begin
clk=0 ;
reset =0 ;
#1 reset =1 ;

end 
always begin 
          #5 clk=~clk ; 
end
	endmodule 

	
	
	
	
	
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	