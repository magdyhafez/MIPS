 module mux_21 (a, b, sel , y);
input [31:0] a ;
input [31:0] b;
output [31:0] y ;
input sel ;
reg [31:0] y ;

always @(a or b or sel)
begin
    if (sel==0)   y=a ;
    else y=b ;
end
endmodule 
//Magdy Mohamed Abdel Moneim Hafez