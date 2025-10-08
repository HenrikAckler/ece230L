module top(
    input [9:0] sw,
    output [13:0] led
);
	// half subtractor
	half_sub HS(
		.A(sw[0]),
		.B(sw[1]),
		.Diff(led[0]),
		.Borrow(led[1])
	);

	// one's compliment adder/subtractor
	wire [3:0] A = { sw[5], sw[4], sw[3], sw[2] };
	wire [3:0] B = { sw[9], sw[8], sw[7], sw[6] };
	wire [3:0] S;

	ones_compliment ones (.A(A), .B(B), .S(S));

	assign led[5:2] = S;

	// two's compliment converter
	twos_compliment twos_converter (.sw(sw), .led(led));        

endmodule