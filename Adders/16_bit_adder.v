module FULL_ADDER(sum,cout,a,b,cin);
	input a,b,cin;
    output sum,cout;
	wire w1,w2,w3,w4;       
	xor x1(w1,a,b);
	xor x2(sum,w1,cin);      
	and a1(w2,a,b);
	and a2(w3,b,cin);
	and a3(w4,cin,a);
	or o1(cout,w2,w3,w4);    
endmodule

module SIXTEEN_BIT_ADDER(s, cout, a, b, cin);
    input [15:0] a;
    input [15:0] b;
    input cin;
    output [15:0] s;
    output cout;
    wire x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14;
    
    FULL_ADDER fa0(s[0], x0, a[0], b[0], cin);
    FULL_ADDER fa1(s[1], x1, a[1], b[1], x0);
    FULL_ADDER fa2(s[2], x2, a[2], b[2], x1);
    FULL_ADDER fa3(s[3], x3, a[3], b[3], x2);
    FULL_ADDER fa4(s[4], x4, a[4], b[4], x3);
    FULL_ADDER fa5(s[5], x5, a[5], b[5], x4);
    FULL_ADDER fa6(s[6], x6, a[6], b[6], x5);
    FULL_ADDER fa7(s[7], x7, a[7], b[7], x6);
    FULL_ADDER fa8(s[8], x8, a[8], b[8], x7);
    FULL_ADDER fa9(s[9], x9, a[9], b[9], x8);
    FULL_ADDER fa10(s[10], x10, a[10], b[10], x9);
    FULL_ADDER fa11(s[11], x11, a[11], b[11], x10);
    FULL_ADDER fa12(s[12], x12, a[12], b[12], x11);
    FULL_ADDER fa13(s[13], x13, a[13], b[13], x12);
    FULL_ADDER fa14(s[14], x14, a[14], b[14], x13);
    FULL_ADDER fa15(s[15], cout, a[15], b[15], x14);
endmodule
