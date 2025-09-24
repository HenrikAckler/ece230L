module top(
    input [6:0] sw,
    output [1:0] led
);
    wire AB;
    
    circuit_a inst_circuit_a (
        .A(sw[0]), 
        .B(sw[1]), 
        .C(sw[2]),
        .D(sw[3]), 
        .Y(AB)
    );
    
    assign led[0] = AB;
    
    circuit_b inst_circuit_b (
        .A(AB), 
        .B(sw[4]), 
        .C(sw[5]),
        .D(sw[6]), 
        .Y(led[1])
    );

endmodule