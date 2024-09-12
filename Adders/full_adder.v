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