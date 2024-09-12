module EIGHT_TO_THREE_MULTIPLEXER(op, ip, s);
    input [7:0] ip;
    input [2:0] s;
    output op;
    
    assign op = (s == 3'b000) ? ip[0] :
                (s == 3'b001) ? ip[1] :
                (s == 3'b010) ? ip[2] :
                (s == 3'b011) ? ip[3] :
                (s == 3'b100) ? ip[4] :
                (s == 3'b101) ? ip[5] :
                (s == 3'b110) ? ip[6] :
                ip[7];
endmodule
