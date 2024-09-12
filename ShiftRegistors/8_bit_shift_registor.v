
module D_FLIPFLOP(q, clk, d);
    input clk, d;
    output reg q;
	
    initial q = 0;

    always @ (posedge clk)
    begin
        q <= d;
    end
endmodule

module EIGHT_BIT_SHIFT_REGISTER(op, clk, ip);
    input clk, ip;
    output wire [7:0] op;
    wire [7:0] w;

    D_FLIPFLOP dff0(w[0], clk, ip);
    D_FLIPFLOP dff1(w[1], clk, w[0]);
    D_FLIPFLOP dff2(w[2], clk, w[1]);
    D_FLIPFLOP dff3(w[3], clk, w[2]);
    D_FLIPFLOP dff4(w[4], clk, w[3]);
    D_FLIPFLOP dff5(w[5], clk, w[4]);
    D_FLIPFLOP dff6(w[6], clk, w[5]);
    D_FLIPFLOP dff7(op, clk, w[6]);
endmodule
