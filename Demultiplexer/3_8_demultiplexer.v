module THREE_EIGHT_DEMULTIPLEXER(op0, op1, op2, op3, op4, op5, op6, op7, ip, s);
    input ip;
    input [2:0] s;
    output reg op0, op1, op2, op3, op4, op5, op6, op7;

    always @(*) begin
        case (s)
            3'b000: begin
                op0 = ip;
                op1 = 0;
                op2 = 0;
                op3 = 0;
                op4 = 0;
                op5 = 0;
                op6 = 0;
                op7 = 0;
            end
            3'b001: begin
                op0 = 0;
                op1 = ip;
                op2 = 0;
                op3 = 0;
                op4 = 0;
                op5 = 0;
                op6 = 0;
                op7 = 0;
            end
            3'b010: begin
                op0 = 0;
                op1 = 0;
                op2 = ip;
                op3 = 0;
                op4 = 0;
                op5 = 0;
                op6 = 0;
                op7 = 0;
            end
            3'b011: begin
                op0 = 0;
                op1 = 0;
                op2 = 0;
                op3 = ip;
                op4 = 0;
                op5 = 0;
                op6 = 0;
                op7 = 0;
            end
            3'b100: begin
                op0 = 0;
                op1 = 0;
                op2 = 0;
                op3 = 0;
                op4 = ip;
                op5 = 0;
                op6 = 0;
                op7 = 0;
            end
            3'b101: begin
                op0 = 0;
                op1 = 0;
                op2 = 0;
                op3 = 0;
                op4 = 0;
                op5 = ip;
                op6 = 0;
                op7 = 0;
            end
            3'b110: begin
                op0 = 0;
                op1 = 0;
                op2 = 0;
                op3 = 0;
                op4 = 0;
                op5 = 0;
                op6 = ip;
                op7 = 0;
            end
            3'b111: begin
                op0 = 0;
                op1 = 0;
                op2 = 0;
                op3 = 0;
                op4 = 0;
                op5 = 0;
                op6 = 0;
                op7 = ip;
            end
        endcase
    end
endmodule
