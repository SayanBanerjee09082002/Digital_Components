module TWO_FOUR_DEMULTIPLEXER(op0, op1, op2, op3, ip, s);
    input ip;
    input [1:0] s;
    output reg op0, op1, op2, op3;

    always @(*) begin
        case (s)
            2'b00: begin
                op0 = ip;
                op1 = 0;
                op2 = 0;
                op3 = 0;
            end
            2'b01: begin
                op0 = 0;
                op1 = ip;
                op2 = 0;
                op3 = 0;
            end
            2'b10: begin
                op0 = 0;
                op1 = 0;
                op2 = ip;
                op3 = 0;
            end
            2'b11: begin
                op0 = 0;
                op1 = 0;
                op2 = 0;
                op3 = ip;
            end
        endcase
    end
endmodule
