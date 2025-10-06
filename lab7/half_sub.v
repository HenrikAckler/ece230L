module half_sub (
// Declare inputs
input wire A,
input wire B,
// Declare outputs
output wire Diff,
output wire Borrow
);

assign Diff = A ^ B;

assign Borrow = (~A) & B;
    
endmodule