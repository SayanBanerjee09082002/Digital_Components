module FOUR_TO_TWO_MULTIPLEXER(op0, op1, ip0, ip1, ip2, ip3, s0, s1);
    input ip0, ip1, ip2, ip3;
    input s0, s1;
    output op0, op1;
    
    assign op0 = (~s1 & ~s0) ? ip0 : 
                 (~s1 & s0) ? ip1 : 
                 (s1 & ~s0) ? ip2 : 
                 ip3;
                 
    assign op1 = (~s1 & ~s0) ? ip0 : 
                 (~s1 & s0) ? ip1 : 
                 (s1 & ~s0) ? ip2 : 
                 ip3;
endmodule
