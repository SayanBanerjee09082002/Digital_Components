module TWO_BIT_COMPARATOR(greater, equal, less, a, b);
	input [1:0] a;
	input [1:0] b;
	output greater, equal, less;
	wire [1:0] g, e, l;

	assign g[1] = (a[1] & ~b[1]);
	assign e[1] = ~(a[1] ^ b[1]);
	assign l[1] = (~a[1] & b[1]);

	assign g[0] = (e[1] & (a[0] & ~b[0]));
	assign e[0] = (e[1] & ~(a[0] ^ b[0]));
	assign l[0] = (e[1] & (~a[0] & b[0]));

	assign greater = g[1] | g[0];
	assign equal = e[0];
	assign less = l[1] | l[0];
endmodule
