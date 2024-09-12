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

module TWO_BIT_ADDER(s, cout, a, b, cin);
	input [1:0] a;
	input [1:0] b;
	input cin;
	output [1:0] s;
	output cout;
	wire x0;
	
	FULL_ADDER fa0(s[0], x0, a[0], b[0], cin);
	FULL_ADDER fa1(s[1], cout, a[1], b[1], x0);	
endmodule


