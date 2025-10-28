module memory_system(
    input  wire [7:0] data,
    input  wire       store,
    input  wire [1:0] addr,
    output wire [7:0] memory
);
    wire [7:0] d0, d1, d2, d3;

    wire s0, s1, s2, s3;

    wire [7:0] q0, q1, q2, q3;

    // -------------------------------
    // Demux data
    // -------------------------------
    demux u_demux_data_lo (
        .data (data[3:0]),
        .sel  (addr),
        .A    (d0[3:0]),
        .B    (d1[3:0]),
        .C    (d2[3:0]),
        .D    (d3[3:0])
    );

    // Demux data
    demux u_demux_data_hi (
        .data (data[7:4]),
        .sel  (addr),
        .A    (d0[7:4]),
        .B    (d1[7:4]),
        .C    (d2[7:4]),
        .D    (d3[7:4])
    );

    // -------------------------------
    // Demux store
    // -------------------------------
    wire [3:0] sA, sB, sC, sD;
    demux u_demux_store (
        .data ({3'b000, store}),
        .sel  (addr),
        .A    (sA),
        .B    (sB),
        .C    (sC),
        .D    (sD)
    );
    assign s0 = sA[0];
    assign s1 = sB[0];
    assign s2 = sC[0];
    assign s3 = sD[0];

    // -------------------------------
    // 4 x byte memories
    // -------------------------------
    byte_memory u_mem0 (.data(d0), .store(s0), .memory(q0), .memory_n());
    byte_memory u_mem1 (.data(d1), .store(s1), .memory(q1), .memory_n());
    byte_memory u_mem2 (.data(d2), .store(s2), .memory(q2), .memory_n());
    byte_memory u_mem3 (.data(d3), .store(s3), .memory(q3), .memory_n());

    // -------------------------------
    // 4:1 mux by addr (display selected bank)
    // -------------------------------
    assign memory = (addr == 2'b00) ? q0 :
                    (addr == 2'b01) ? q1 :
                    (addr == 2'b10) ? q2 : q3;

endmodule
