module SIXTEEN_BIT_OR(op, a, b);
    input [15:0] a, b;
    output [15:0] op;
    
    assign op = a | b;
endmodule
