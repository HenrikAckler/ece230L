module twos_compliment (
    input  wire [9:0]  sw,
    output wire [13:0] led
);
    // Extract 8-bit input
    wire [7:0] X  = sw[9:2];
    wire [7:0] NX = ~X;          // one's complement
    wire [7:0] S;                // output = NX + 1
    wire [8:0] c;                // ripple carry

    assign c[0] = 1'b1;          // add the +1 via initial carry-in

    // Ripple-carry chain: add NX + 0 + Cin
    full_adder fa0 (.A(1'b0), .B(NX[0]), .Cin(c[0]), .Y(S[0]), .Cout(c[1]));
    full_adder fa1 (.A(1'b0), .B(NX[1]), .Cin(c[1]), .Y(S[1]), .Cout(c[2]));
    full_adder fa2 (.A(1'b0), .B(NX[2]), .Cin(c[2]), .Y(S[2]), .Cout(c[3]));
    full_adder fa3 (.A(1'b0), .B(NX[3]), .Cin(c[3]), .Y(S[3]), .Cout(c[4]));
    full_adder fa4 (.A(1'b0), .B(NX[4]), .Cin(c[4]), .Y(S[4]), .Cout(c[5]));
    full_adder fa5 (.A(1'b0), .B(NX[5]), .Cin(c[5]), .Y(S[5]), .Cout(c[6]));
    full_adder fa6 (.A(1'b0), .B(NX[6]), .Cin(c[6]), .Y(S[6]), .Cout(c[7]));
    full_adder fa7 (.A(1'b0), .B(NX[7]), .Cin(c[7]), .Y(S[7]), .Cout(c[8]));

    assign led[13:6] = S;

endmodule