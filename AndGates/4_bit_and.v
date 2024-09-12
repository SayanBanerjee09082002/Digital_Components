module FOUR_BIT_AND(op, a, b);
    input [3:0] a, b;
    output [3:0] op;
    
    assign op = a & b;
endmodule
