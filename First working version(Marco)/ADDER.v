module Fulladder1bit(sum,cout,A,B,Cin);

input A,B,Cin;
output sum,cout;

assign {cout,sum}=A+B+Cin;

endmodule


module adder32bit(result,carry,r1,r2,ci);

input [31:0] r1;

input [31:0] r2;
input ci;
output carry;
output [31:0] result;

Fulladder1bit adder0(result[0],c1,r1[0],r2[0],ci);
Fulladder1bit adder1(result[1],c2,r1[1],r2[1],c1);
Fulladder1bit adder2(result[2],c3,r1[2],r2[2],c2);
Fulladder1bit adder3(result[3],c4,r1[3],r2[3],c3);
Fulladder1bit adder4(result[4],c5,r1[4],r2[4],c4);
Fulladder1bit adder5(result[5],c6,r1[5],r2[5],c5);
Fulladder1bit adder6(result[6],c7,r1[6],r2[6],c6);
Fulladder1bit adder7(result[7],c8,r1[7],r2[7],c7);
Fulladder1bit adder8(result[8],c9,r1[8],r2[8],c8);
Fulladder1bit adder9(result[9],c10,r1[9],r2[9],c9);
Fulladder1bit adder10(result[10],c11,r1[10],r2[10],c10);
Fulladder1bit adder11(result[11],c12,r1[11],r2[11],c11);
Fulladder1bit adder12(result[12],c13,r1[12],r2[12],c12);
Fulladder1bit adder13(result[13],c14,r1[13],r2[13],c13);
Fulladder1bit adder14(result[14],c15,r1[14],r2[14],c14);
Fulladder1bit adder15(result[15],c16,r1[15],r2[15],c15);
Fulladder1bit adder16(result[16],c17,r1[16],r2[16],c16);
Fulladder1bit adder17(result[17],c18,r1[17],r2[17],c17);
Fulladder1bit adder18(result[18],c19,r1[18],r2[18],c18);
Fulladder1bit adder19(result[19],c20,r1[19],r2[19],c19);
Fulladder1bit adder20(result[20],c21,r1[20],r2[20],c20);
Fulladder1bit adder21(result[21],c22,r1[21],r2[21],c21);
Fulladder1bit adder22(result[22],c23,r1[22],r2[22],c22);
Fulladder1bit adder23(result[23],c24,r1[23],r2[23],c23);
Fulladder1bit adder24(result[24],c25,r1[24],r2[24],c24);
Fulladder1bit adder25(result[25],c26,r1[25],r2[25],c25);
Fulladder1bit adder26(result[26],c27,r1[26],r2[26],c26);
Fulladder1bit adder27(result[27],c28,r1[27],r2[27],c27);
Fulladder1bit adder28(result[28],c29,r1[28],r2[28],c28);
Fulladder1bit adder29(result[29],c30,r1[29],r2[29],c20);
Fulladder1bit adder30(result[30],c31,r1[30],r2[30],c30);
Fulladder1bit adder31(result[31],carry,r1[31],r2[31],c31);

endmodule



