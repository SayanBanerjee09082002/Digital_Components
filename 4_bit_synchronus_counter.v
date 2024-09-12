module J_K_FLIPFLOP(q, clk, j, k);
    input clk, j, k;
    output q;
    reg q;
	
	initial q = 0;
    always @ (posedge clk)
    begin	
		if (j && k)
            q <= ~q;
		else if (!j && !k)
			q <= q;
        else if (j && !k)
            q <= 1;
        else if (!j && k)
            q <= 0;
    end
endmodule

module FOUR_BIT_SYNCHRONUS_COUNTER(q3, q2, q1, q0, clk, j, k);
    input clk, j, k;
    output reg q3, q2, q1, q0;
    wire w1, w2, w3, w4, w5;
    
    J_K_FLIPFLOP jkff1(clk, j, k, w1);
	assign q0 = w1;
	
    J_K_FLIPFLOP jkff2(clk, w1, w1, w2);
	assign q1 = w2;
    
    assign w3 = w2 & w1;
    J_K_FLIPFLOP jkff3(clk, w3, w3, w4);
	assign q2 = w4;
    
    assign w5 = w3 & w4;
    J_K_FLIPFLOP jkff4(clk, w5, w5, q3);
endmodule