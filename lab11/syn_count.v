module syn_count(
    input enable,
    input countLoad,
    input [3:0] d,
    input clk,
    input syncReset,
    output [3:0] q
    );
    
    wire [3:0] muxToDFF;
    
    //every xor is (q[0] & enable) ^ q[1]
    
    //muxes and xors
    //TODO: do I need to always block this?
    mux muxa ( .sel(countLoad), .A(q[0] ^ enable), .B(d[0]), .Y(muxToDFF[0]));
    mux muxb ( .sel(countLoad), .A((q[0] & enable) ^ q[1]), .B(d[1]), .Y(muxToDFF[1]));
    mux muxc ( .sel(countLoad), .A((q[1] & enable) ^ q[2]), .B(d[2]), .Y(muxToDFF[2]));
    mux muxd ( .sel(countLoad), .A((q[2] & enable) ^ q[3]), .B(d[3]), .Y(muxToDFF[3]));
    

    //dffs   
    d_ff dffA(.clk(clk), .D(syncReset & muxToDFF[0]), .Q(q[0]));
    d_ff dffB(.clk(clk), .D(syncReset & muxToDFF[1]), .Q(q[1]));
    d_ff dffC(.clk(clk), .D(syncReset & muxToDFF[2]), .Q(q[2]));
    d_ff dffD(.clk(clk), .D(syncReset & muxToDFF[3]), .Q(q[3]));
    

  endmodule  
