module D_FLIPFLOP(q, clk, d);
    input clk, d;
    output reg q;

    initial q = 0;

    always @ (posedge clk)
    begin
        q <= d;
    end
endmodule

module THIRTY_TWO_BIT_SHIFT_REGISTER(op, clk, ip);
    input clk, ip;
    output wire [31:0] op;
    wire [31:0] w;

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
    D_FLIPFLOP dff15(w[15], clk, w[14]);
    D_FLIPFLOP dff16(w[16], clk, w[15]);
    D_FLIPFLOP dff17(w[17], clk, w[16]);
    D_FLIPFLOP dff18(w[18], clk, w[17]);
    D_FLIPFLOP dff19(w[19], clk, w[18]);
    D_FLIPFLOP dff20(w[20], clk, w[19]);
    D_FLIPFLOP dff21(w[21], clk, w[20]);
    D_FLIPFLOP dff22(w[22], clk, w[21]);
    D_FLIPFLOP dff23(w[23], clk, w[22]);
    D_FLIPFLOP dff24(w[24], clk, w[23]);
    D_FLIPFLOP dff25(w[25], clk, w[24]);
    D_FLIPFLOP dff26(w[26], clk, w[25]);
    D_FLIPFLOP dff27(w[27], clk, w[26]);
    D_FLIPFLOP dff28(w[28], clk, w[27]);
    D_FLIPFLOP dff29(w[29], clk, w[28]);
    D_FLIPFLOP dff30(w[30], clk, w[29]);
    D_FLIPFLOP dff31(op, clk, w[30]);
endmodule
