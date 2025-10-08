module ones_compliment(
 input wire [3:0] A,
 input wire [3:0] B,
 output wire [3:0] S
);

 wire [3:0] sum;
 wire [4:0] c;

assign c[0] = 1'b0;	// initial carry in  = 0

//ripple-carry chain
full_adder fa0 (.A(A[0]), .B(B[0]), .Cin(c[0]), .Y(sum[0]), .Cout(c[1]));
full_adder fa1 (.A(A[1]), .B(B[1]), .Cin(c[1]), .Y(sum[1]), .Cout(c[2]));
full_adder fa2 (.A(A[2]), .B(B[2]), .Cin(c[2]), .Y(sum[2]), .Cout(c[3]));
full_adder fa3 (.A(A[3]), .B(B[3]), .Cin(c[3]), .Y(sum[3]), .Cout(c[4]));

//end-around carry
wire [4:0] sum2 = {1'b0, sum} + {4'b0000, c[4]};

assign S = sum2[3:0];

end module