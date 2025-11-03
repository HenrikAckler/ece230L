module t_ff(
    input  clk,   // clock (btnC)
    input  T,     // toggle input
    output reg Q, // main output
    output      Q_not // complement
);
    wire D;

    // Initial state
    initial begin
        Q = 1'b0;
    end

    // Complement
    assign Q_not = ~Q;

    // D = Q xor T
    assign D = Q ^ T;

    // Edge-sensitive storage
    always @(posedge clk) begin
        Q <= D;
    end
endmodule