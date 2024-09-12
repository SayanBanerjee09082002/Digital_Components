module D_FLIPFLOP(q, clk, d);
    input clk, d;
    output reg q;
	
    initial q = 0;

    always @ (posedge clk)
    begin
        q <= d;
    end
endmodule

module SIXTEEN_BIT_SHIFT_REGISTER(op, clk, ip);
    input clk, ip;
    output wire [15:0] op;
    wire [15:0] w;

    D_FLIPFLOP dff0(w[0], clk, ip);
    D_FLIPFLOP dff1(w[1], clk, w[0]);
    D_FLIPFLOP dff2(w[2], clk, w[1]);
    D_FLIPFLOP dff3(w[3], clk, w[2]);
    D_FLIPFLOP dff4(w[4], clk, w[3]);
    D_FLIPFLOP dff5(w[5], clk, w[4]);
    D_FLIPFLOP dff6(w[6], clk, w[5]);
    D_FLIPFLOP dff7(w[7], clk, w[6]);
    D_FLIPFLOP dff8(w[8], clk, w[7]);
    D_FLIPFLOP dff9(w[9], clk, w[8]);
    D_FLIPFLOP dff10(w[10], clk, w[9]);
    D_FLIPFLOP dff11(w[11], clk, w[10]);
    D_FLIPFLOP dff12(w[12], clk, w[11]);
    D_FLIPFLOP dff13(w[13], clk, w[12]);
    D_FLIPFLOP dff14(w[14], clk, w[13]);
    D_FLIPFLOP dff15(op, clk, w[14]);
endmodule
