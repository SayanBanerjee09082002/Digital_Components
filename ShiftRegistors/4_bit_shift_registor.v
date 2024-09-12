module D_FLIPFLOP(q, clk, d);
    input clk, d;
    output reg q;
	
	initial q = 0;

    always @ (posedge clk)
    begin
        q <= d;
    end
endmodule

module FOUR_BIT_SHIFT_REGISTER(op, clk, ip);
    input clk, ip;
    output wire op;
    wire w0, w1, w2;
    
    D_FLIPFLOP dff0(w0, clk, ip);
    D_FLIPFLOP dff1(w1, clk, w0);
    D_FLIPFLOP dff2(w2, clk, w1);
    D_FLIPFLOP dff3(op, clk, w2);
endmodule    