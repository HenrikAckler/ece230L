module t_ff(
    input  clk,   // clock (btnC)
    input  T,     // toggle input
    input r,
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
        if (r != 1'b0) begin
            Q <= 1'b0;
        end else begin      
            Q <= D;
        end
    end
endmodule