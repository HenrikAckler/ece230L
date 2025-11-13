module top(
    input btnC,
    input btnU,
    output [6:0] led
    );
    
    ripple_counter rcount(.clk(btnC), .r(btnU), .stages(led[2:0]));
    
    mod_n_count mcount(.enable(1'b1), .countLoad(1'b0), .clk(btnC), .syncReset(btnU), .q(led[5:3]), .y(led[6]));
    
        

endmodule