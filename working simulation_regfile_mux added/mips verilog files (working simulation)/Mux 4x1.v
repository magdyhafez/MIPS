 module mux_41 (a, b,c,d ,sel0,sel1 , y);
input [31:0] a; 
input [31:0] b;
input [31:0] c;
input [31:0] d;
output [31:0] y ;
input sel0,sel1 ; 
reg [31:0] y ;

always @(a or b or c or d or sel0 or sel1)
begin
         if (!sel0 && !sel1) y=a ;
    else if (!sel0 && sel1) y=c ;
    else if (sel0 && !sel1) y=b;
    else y=d ;
end
endmodule 
//Magdy Mohamed Abdel Moneim Hafez