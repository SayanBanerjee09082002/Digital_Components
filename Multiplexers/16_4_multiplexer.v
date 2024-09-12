module SIXTEEN_TO_FOUR_MULTIPLEXER(op, ip, s);
    input [15:0] ip;
    input [3:0] s;
    output op;
    
    assign op = (s == 4'b0000) ? ip[0] :
                (s == 4'b0001) ? ip[1] :
                (s == 4'b0010) ? ip[2] :
                (s == 4'b0011) ? ip[3] :
                (s == 4'b0100) ? ip[4] :
                (s == 4'b0101) ? ip[5] :
                (s == 4'b0110) ? ip[6] :
                (s == 4'b0111) ? ip[7] :
                (s == 4'b1000) ? ip[8] :
                (s == 4'b1001) ? ip[9] :
                (s == 4'b1010) ? ip[10] :
                (s == 4'b1011) ? ip[11] :
                (s == 4'b1100) ? ip[12] :
                (s == 4'b1101) ? ip[13] :
                (s == 4'b1110) ? ip[14] :
                ip[15];
endmodule
