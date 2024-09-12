module S_R_FLIPFLOP(q, clk, s, r);
    input clk, s, r;
    output reg q;
	
	initial q = 0;

    always @ (posedge clk)
    begin
        case ({s, r})
            2'b00: q <= q;  
            2'b01: q <= 0;     
            2'b10: q <= 1;   
            2'b11: q <= q;      
        endcase
    end
endmodule