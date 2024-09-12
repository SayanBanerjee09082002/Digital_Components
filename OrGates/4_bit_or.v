module FOUR_BIT_OR(op, a, b);
    input [3:0] a, b;
    output [3:0] op;
    
    assign op = a | b;
endmodule
