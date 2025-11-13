module mod_n_count(
    input enable,
    input countLoad,
    input [2:0] d,
    input clk,
    input syncReset,
    output [2:0] q,
    output y
    );
    
    wire [2:0] Q;
    wire [2:0] D;
    wire [1:0] faLink;
    wire reset;
    
    
    //full adders
    full_adder faA( .A(Q[0]), .B(enable), .Cin(1'b0), .Y(D[0]), .Cout(faLink[0]));
    full_adder faB( .A(Q[1]), .B(1'b0), .Cin(faLink[0]), .Y(D[1]), .Cout(faLink[1]));
    full_adder faC( .A(Q[2]), .B(1'b0), .Cin(faLink[1]), .Y(D[2]));
    
    //dff's
    d_ff dffa( .clk(clk), .D(D[0]), .Q(Q[0]), .r(reset));
    d_ff dffb( .clk(clk), .D(D[1]), .Q(Q[1]), .r(reset));
    d_ff dffc( .clk(clk), .D(D[2]), .Q(Q[2]), .r(reset));
    
    //dff for pulsing with comparator
    //TODO, should this be a tff?
    t_ff tff(.clk(clk), .T(Q[2] & Q[0]), .Q(y));
    d_ff dff(.clk(clk), .D(Q[2] & Q[0]), .Q(reset));
    
    //assign out q and d
    assign d = D;
    assign q = Q;
//    assign y = reset;
    
    //OLD IMPLEMENTATION BELOW//
    
//    //TODO: implement passing in N
    
//    //count
//    syn_count mycounttwoelectricboogaloo ( .enable(enable), .countLoad(countLoad), .d(d), .clk(clk), .syncReset(syncReset), .q(q));
    
//    //find number
//    wire n;
//    assign n = q[3] & q[2];
    
    
    
//    //dff    
//    t_ff tff(.clk(clk), .T(n), .Q(y));
    
    
    

endmodule