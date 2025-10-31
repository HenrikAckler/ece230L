module mux(
    input [1:0] sel,
    input [7:0] A, [7:0] B, [7:0] C, [7:0] D,
    input enable,
    output [7:0] Y
    );
    
    assign Y = (sel[1] == 1'b0 ? 
                        sel[0] == 1'b0 ? A : B
                        :
                        sel[0] == 1'b0 ? C : D )
                         & {4{enable}};
                     
endmodule
