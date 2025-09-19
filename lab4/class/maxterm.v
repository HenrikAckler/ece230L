module maxterm (
    input A, B, C, D,
    output Y
);

//    assign Y = (A|B|C|D)&(A|~B|C|~D)&( A|~B|~C|~D)&(~A|B|C|D)&(~A|B|C|~D)&(~A|B|~C|~D)&(~A|~B|C|D)&(~A|~B|~C|~D) ;
    assign Y = (B|C|D) & (~B | ~D) & (~A|~D);

endmodule
