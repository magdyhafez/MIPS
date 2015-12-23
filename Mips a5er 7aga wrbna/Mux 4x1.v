 module mux_41 (a, b,c,d ,sel0,sel1 , y);
input a , b ,c,d;
output y ;
input sel0,sel1 ; 
reg y ;

always @(a or b or c or d or sel0 or sel1)
begin
         if (!sel0 && !sel1) y=a ;
    else if (!sel0 && sel1) y=c ;
    else if (sel0 && !sel1) y=b;
    else y=d ;
end
endmodule 
//Magdy Mohamed Abdel Moneim Hafez