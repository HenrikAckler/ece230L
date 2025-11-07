module top(
    input  [3:0] sw,   // sw[0] D, sw[1] J, sw[2] K, sw[3] T
    input        btnC, // shared clock
    output [5:0] led   // outputs for all flip-flops
);

    // D Flip-Flop
    d_ff dff_inst (
        .clk   (btnC),
        .D     (sw[0]),
        .Q     (led[0]),
        .Q_not (led[1])
    );

    // JK Flip-Flop
    jk_ff jkff_inst (
        .clk   (btnC),
        .J     (sw[1]),
        .K     (sw[2]),
        .Q     (led[2]),
        .Q_not (led[3])
    );

    // T Flip-Flop
    t_ff tff_inst (
        .clk   (btnC),
        .T     (sw[3]),
        .Q     (led[4]),
        .Q_not (led[5])
    );

endmodule