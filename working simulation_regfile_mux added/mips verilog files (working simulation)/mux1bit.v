 module mux1bit (a, b, sel , y);
input  a ;
input  b;
output y ;
input sel ;
reg  y ;

always @(a or b or sel)
begin
    if (sel==0)   y=a ;
    else y=b ;
end
endmodule 
//Magdy Mohamed Abdel Moneim Hafez