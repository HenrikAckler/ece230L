module jk_ff(
    input  clk,   // clock (btnC)
    input  J,     // J input
    input  K,     // K input
    output reg Q, // main output
    output      Q_not // complement
);
    wire D;

    // Initial state
    initial begin
        Q = 1'b0;
    end

    // Complement output
    assign Q_not = ~Q;

    // Combinational logic for D from J, K, and current Q
    // Q_next = J & ~Q  +  ~K & Q
    assign D = (J & ~Q) | (~K & Q);

    // Edge-sensitive storage
    always @(posedge clk) begin
        Q <= D;
    end
endmodule