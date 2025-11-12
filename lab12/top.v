module top(
    input sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU // reset
);

    //w, clk, z
    onehot one( .w(sw), .clk(btnC), .z(led[0]), .states(led[6:2]) );
    
    binary bin( .w(sw), .clk(btnC), .z(led[1]), .states(led[9:7]) );

endmodule