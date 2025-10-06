module twos_compliment (
    input  wire [9:0]  sw,   // sw[9:2] = input bits [7:0]
    output wire [13:0] led   // led[13:6] = output bits [7:0]
);

    wire [7:0] X = sw[9:2];

    wire [7:0] Y = ~X + 8'b0000_0001;

    assign led[13:6] = Y;

endmodule