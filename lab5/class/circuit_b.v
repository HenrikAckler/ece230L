module circuit_b(
    // Declare inputs
    input A, B, C, D,
    output Y
    // Declare Y output
);

// Enter logic equation here
assign Y = (~D & (~C | B)) | (A & B);

endmodule
