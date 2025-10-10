module ones_compliment(
 input wire [3:0] A,
 input wire [3:0] B,
 output wire [3:0] S
);

     wire [3:0] sum;
     wire [4:0] c;  
     wire [2:0] c2;
    
    assign c[0] = 1'b0;	// initial carry in  = 0
    
    //ripple-carry chain
    full_adder fa0 (.A(A[0]), .B(B[0]), .Cin(c[0]), .Y(sum[0]), .Cout(c[1]));
    full_adder fa1 (.A(A[1]), .B(B[1]), .Cin(c[1]), .Y(sum[1]), .Cout(c[2]));
    full_adder fa2 (.A(A[2]), .B(B[2]), .Cin(c[2]), .Y(sum[2]), .Cout(c[3]));
    full_adder fa3 (.A(A[3]), .B(B[3]), .Cin(c[3]), .Y(sum[3]), .Cout(c[4]));
    
    //end-around carry
    full_adder fa0c(.A(sum[0]), .B(1'b0), .Cin(c[4]), .Y(S[0]), .Cout(c2[0]));
    full_adder fa1c(.A(sum[1]), .B(1'b0), .Cin(c2[0]), .Y(S[1]), .Cout(c2[1]));
    full_adder fa2c(.A(sum[2]), .B(1'b0), .Cin(c2[1]), .Y(S[2]), .Cout(c2[2]));
    full_adder fa3c(.A(sum[3]), .B(1'b0), .Cin(c2[2]), .Y(S[3]));

    
endmodule