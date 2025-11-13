module mux(
    input sel,
    input A, B,
//    input enable,
    output Y
    );
    
    //is this right?
    assign Y = sel == 1'b1 ? B : A;
//    assign Y = (sel[1] == 1'b0 ? 
//                        sel[0] == 1'b0 ? A : B
//                        :
//                        sel[0] == 1'b0 ? C : D )
//                         & {8{enable}};
                     
endmodule