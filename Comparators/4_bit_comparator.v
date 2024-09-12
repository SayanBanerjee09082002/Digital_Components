module FOUR_BIT_COMPARATOR(greater, equal, less, a, b);
	input [3:0] a;
	input [3:0] b;
	output greater, equal, less;
	wire [3:0] g, e, l;
	
	assign g[3] = (a[3] & ~b[3]);
	assign e[3] = ~(a[3] ^ b[3]);
	assign l[3] = (~a[3] & b[3]);

	assign g[2] = (e[3] & (a[2] & ~b[2]));
	assign e[2] = (e[3] & ~(a[2] ^ b[2]));
	assign l[2] = (e[3] & (~a[2] & b[2]));

	assign g[1] = (e[2] & (a[1] & ~b[1]));
	assign e[1] = (e[2] & ~(a[1] ^ b[1]));
	assign l[1] = (e[2] & (~a[1] & b[1]));

	assign g[0] = (e[1] & (a[0] & ~b[0]));
	assign e[0] = (e[1] & ~(a[0] ^ b[0]));
	assign l[0] = (e[1] & (~a[0] & b[0]));

	assign greater = g[3] | g[2] | g[1] | g[0];
	assign equal = e[0];
	assign less = l[3] | l[2] | l[1] | l[0];

endmodule
