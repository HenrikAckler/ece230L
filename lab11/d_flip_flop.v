module d_ff(
    input  clk,   // clock (btnC)
    input  D,     // data input
    output reg Q, // main output
    output Q_not, // complement
    input r //reset
);
    // Initial state
    initial begin
        Q = 1'b0;
    end

    // Complement output
    assign Q_not = ~Q;

    // Edge-sensitive behavior: sample D on rising edge
    always @(posedge clk) begin
        if (r == 1'b1) begin
            Q <= 1'b0;
        end else begin
            Q <= D;
        end
    end
endmodule