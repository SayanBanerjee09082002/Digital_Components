module EIGHT_BIT_OR(op, a, b);
    input [7:0] a, b;
    output [7:0] op;
    
    assign op = a | b;
endmodule