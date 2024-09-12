module T_FLIPFLOP(q, clk, t);
    input clk, t;
    output reg q;
	
    initial q = 0;

    always @ (posedge clk)
    begin
        if (t)
            q <= ~q;
    end
endmodule
