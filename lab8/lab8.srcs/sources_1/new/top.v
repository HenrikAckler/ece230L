module top(
    input [15:0] sw,
    input btnL, btnU, btnD, btnR, btnC,
    output [15:0] led
    );
    
    wire [1:0] selmux, seldemux;
    wire [3:0] ceo, me, fred, jill;
    wire [3:0] local_lib, fire_dept, school, rib_shack;
    wire enable;
    
    assign selmux = {btnU, btnL};
    assign seldemux = {btnR, btnD};
    assign enable = btnC;
    
    assign ceo = sw[3:0];
    assign me = sw[7:4];
    assign fred = sw[11:8];
    assign jill = sw[15:12];
    
    assign local_lib = led[3:0];
    assign fire_dept = led[7:4];
    assign school = led[11:8];
    assign rib_shack = led[15:12];
    
    wire [3:0] bridge;
    
    mux my_mux (.sel(selmux), .A(ceo), .B(me), .C(fred), .D(jill), .enable(enable), .Y(bridge));
    
    demux my_demux(.sel(seldemux), .in(bridge), .enable(enable), .A(local_lib), .B(fire_dept), .C(school), .D(rib_shack));
    
endmodule
