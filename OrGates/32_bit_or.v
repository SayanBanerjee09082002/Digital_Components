module THIRTY_TWO_BIT_OR(op, a, b);
    input [31:0] a, b;
    output [31:0] op;
    
    assign op = a | b;
endmodule
