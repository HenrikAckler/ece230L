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
    
    //assign aToB = circuit_a(sw[0], sw[1], sw[2], sw[3]);
//    assign led[0] = aToB;
    
//    wire bOut;
    
//    circuit_b inst_circuit_b(aToB, sw[4], sw[5], sw[6], led[1]);
    //assign bOut = circuit_b(aToB, sw[4], sw[5], sw[6]);
//    assign led[1] = bOut;

endmodule