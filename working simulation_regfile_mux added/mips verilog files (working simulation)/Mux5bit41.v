module Mux5bit (a, b,c,d ,sel0,sel1 , y);
input [4:0] a; 
input [4:0] b;
input [4:0] c;
input [4:0] d;
output [4:0] y ;
input sel0,sel1 ; 
reg [4:0] y ;

always @(a or b or c or d or sel0 or sel1)
begin
         if (!sel0 && !sel1) y=a ;
    else if (!sel0 && sel1) y=c ;
    else if (sel0 && !sel1) y=b;
    else y=d ;
end
endmodule 
//Magdy Mohamed Abdel Moneim Hafez