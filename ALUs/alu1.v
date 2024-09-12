module FULL_ADDER(sum,cout,a,b,cin);
	input a,b,cin;
    output sum,cout;
	wire w1,w2,w3,w4;       
	xor x1(w1,a,b);
	xor x2(sum,w1,cin);      
	and a1(w2,a,b);
	and a2(w3,b,cin);
	and a3(w4,cin,a);
	or o1(cout,w2,w3,w4);    
endmodule

module THIRTY_TWO_BIT_ADDER(s, cout, a, b, cin);
    input [31:0] a;
    input [31:0] b;
    input cin;
    output [31:0] s;
    output cout;
    wire x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30;
    
    FULL_ADDER fa0(s[0], x0, a[0], b[0], cin);
    FULL_ADDER fa1(s[1], x1, a[1], b[1], x0);
    FULL_ADDER fa2(s[2], x2, a[2], b[2], x1);
    FULL_ADDER fa3(s[3], x3, a[3], b[3], x2);
    FULL_ADDER fa4(s[4], x4, a[4], b[4], x3);
    FULL_ADDER fa5(s[5], x5, a[5], b[5], x4);
    FULL_ADDER fa6(s[6], x6, a[6], b[6], x5);
    FULL_ADDER fa7(s[7], x7, a[7], b[7], x6);
    FULL_ADDER fa8(s[8], x8, a[8], b[8], x7);
    FULL_ADDER fa9(s[9], x9, a[9], b[9], x8);
    FULL_ADDER fa10(s[10], x10, a[10], b[10], x9);
    FULL_ADDER fa11(s[11], x11, a[11], b[11], x10);
    FULL_ADDER fa12(s[12], x12, a[12], b[12], x11);
    FULL_ADDER fa13(s[13], x13, a[13], b[13], x12);
    FULL_ADDER fa14(s[14], x14, a[14], b[14], x13);
    FULL_ADDER fa15(s[15], x15, a[15], b[15], x14);
    FULL_ADDER fa16(s[16], x16, a[16], b[16], x15);
    FULL_ADDER fa17(s[17], x17, a[17], b[17], x16);
    FULL_ADDER fa18(s[18], x18, a[18], b[18], x17);
    FULL_ADDER fa19(s[19], x19, a[19], b[19], x18);
    FULL_ADDER fa20(s[20], x20, a[20], b[20], x19);
    FULL_ADDER fa21(s[21], x21, a[21], b[21], x20);
    FULL_ADDER fa22(s[22], x22, a[22], b[22], x21);
    FULL_ADDER fa23(s[23], x23, a[23], b[23], x22);
    FULL_ADDER fa24(s[24], x24, a[24], b[24], x23);
    FULL_ADDER fa25(s[25], x25, a[25], b[25], x24);
    FULL_ADDER fa26(s[26], x26, a[26], b[26], x25);
    FULL_ADDER fa27(s[27], x27, a[27], b[27], x26);
    FULL_ADDER fa28(s[28], x28, a[28], b[28], x27);
    FULL_ADDER fa29(s[29], x29, a[29], b[29], x28);
    FULL_ADDER fa30(s[30], x30, a[30], b[30], x29);
    FULL_ADDER fa31(s[31], cout, a[31], b[31], x30);
endmodule

module THIRTY_TWO_BIT_AND(op, a, b);
    input [31:0] a, b;
    output [31:0] op;
    
    assign op = a & b;
endmodule

module THIRTY_TWO_BIT_OR(op, a, b);
    input [31:0] a, b;
    output [31:0] op;
    
    assign op = a | b;
endmodule

module ALU1(result, cout, a, b, cin, bivert, operation);
    input [31:0] a;
    input [31:0] b;
    input [0:1] operation;
    input bivert, cin;
    output reg [31:0] result;
    output reg cout;
    wire [31:0] and_result, or_result, adder_result;
    wire adder_cout;
    
    THIRTY_TWO_BIT_AND and_unit(and_result, a, b);
    THIRTY_TWO_BIT_OR or_unit(or_result, a, b);
    THIRTY_TWO_BIT_ADDER adder_unit(adder_result, adder_cout, a, bivert ? ~b : b, cin);
    
    always @(*) begin
        case (operation)
            2'b00: begin
                result <= and_result;
                cout <= 1'b0; 
            end
            2'b01: begin
                result <= or_result; 
                cout <= 1'b0;   
            end
            default: begin
                result <= adder_result;
                cout <= adder_cout;
            end
        endcase
    end
endmodule