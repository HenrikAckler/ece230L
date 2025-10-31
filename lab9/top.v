module top(
    input [15:0] sw,
    input btnC,
    output [15:0] led
);
/*
    d_latch part1(
        .D(sw[0]),
        .Q(led[0]),
        .NotQ(led[1]),
        .E(btnC)
    );
    memory_system part2(
        .data(sw[15:8]),
        .addr(sw[7:6]),
        .store(btnC),
        .memory(led)
    );
    */
    
    //hank's modifications
    
    //make some wires
    wire dlatchd, dlatche, srq, srnq;       //wires for the single dlatch
    wire [7:0] regA, regB, regC, regD;      //wires to hook input demux to input of byte memory
    wire [7:0] qregA, qregB, qregC, qregD;  //hooks output of memory to mux
    wire [7:0] inbits, outbits;             //bus for input and output data
    wire [1:0] sel;                         //selector signal for choosing byte
    wire [3:0] store;                       //hookup enable demux to store pins on regs
    
    //hook up the wires in order of lab guide
    assign dlatchd = sw[0];
    assign dlatche = btnC;
    assign srq = led[0];
    assign srnq = led[1];
    assign inbits = sw[15:8];
    assign sel = sw[7:6];
    assign outbits = led[15:8];
    
    //dlatch
    d_latch part1(
        .D(sw[0]),
        .Q(led[0]),
        .NotQ(led[1]),
        .E(btnC)
    );
    
    //demux the data
    demux data_demux( .data(inbits), .sel(sel), .A(regA), .B(regB), .C(regC), .D(regD));
    
    //demux the enable/store
    demux store_demux( .data({8{btnC}}), .sel(sel), .A(store[0]), .B(store[1]), .C(store[2]), .D(store[3])); //8'hFF should be 1111_1111
    
    //mux the output
    mux led_mux (.sel(sel), .A(qregA), .B(qregB), .C(qregC), .D(qregD), .enable(1'b1), .Y(outbits)); //keep it enabled
    
    //regs
    byte_memory byteA ( .data(regA), .store(store[0]), .memory(qregA));
    byte_memory byteB ( .data(regB), .store(store[1]), .memory(qregB));
    byte_memory byteC ( .data(regC), .store(store[2]), .memory(qregC));
    byte_memory byteD ( .data(regD), .store(store[3]), .memory(qregD));
    

endmodule

