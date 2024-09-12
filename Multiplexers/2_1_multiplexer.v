module TWO_ONE_MULTIPLEXER(op, ip0, ip1, s);
    input ip0, ip1, s;
    output op;
	
    assign op = s ? ip1 : ip0;
endmodule