module ONE_TWO_DEMULTIPLEXER(op0, op1, ip, s);
    input ip, s;
    output reg op0, op1;

    always @(*) begin
        if (s) begin
            op0 = ip;
            op1 = 0;
        end else begin
            op0 = 0;
            op1 = ip;
        end
    end
endmodule
