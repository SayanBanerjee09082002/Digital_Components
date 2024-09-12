module ONE_BIT_COMPARATOR(greater, equal, less, a, b);
	input a;
	input b;
	output greater, equal, less;

	assign greater = (a & ~b);
	assign equal = ~(a ^ b);
	assign less = (~a & b);
endmodule
