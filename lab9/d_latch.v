module d_latch(
    input D,       // Data input
    input E,       // Enable input
    output reg Q,  // Latch output
    output NotQ      // Complement of Q
);
    always @ (D or E) begin
        if (E) begin //do we need begin on this line?
            Q <= D;
        end
    end
    assign NotQ = ~Q;
endmodule