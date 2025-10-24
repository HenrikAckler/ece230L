module demux(
    input [1:0] sel, 
    input [3:0] in,
    input enable,
    output [3:0] A, [3:0] B, [3:0] C, [3:0] D
    );
    
    assign A = (sel == 2'b00) && enable ? in : 0;
    assign B = (sel == 2'b01) && enable ? in : 0;
    assign C = (sel == 2'b10) && enable ? in : 0;
    assign D = (sel == 2'b11) && enable ? in : 0;
    
endmodule
