module ripple_counter (
    input clk,
    input r,
    output [2:0] stages
    );
    
    wire [1:0] floplink;
    
    //tff's
    t_ff tffa(.clk(clk), .T(1'b1), .Q(floplink[0]), .r(r));
    t_ff tffb(.clk(floplink[0]), .T(1'b1), .Q(floplink[1]), .r(r));
    t_ff tffc(.clk(floplink[1]), .T(1'b1), .Q(stages[2]), .r(r));
    
    assign stages[1:0] = floplink;
    
endmodule