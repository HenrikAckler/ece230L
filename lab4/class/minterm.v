module minterm (
    input A, B, C, D,
    output Y
);

//assign Y = ~A&~B&~C&D|~A&~B&C&~D|~A&~B&C&C|~A&B&~C&~D|~A&B&C&~D|A&~B&C&~D|A&B&~C&~D|A&B&C&~D;
assign Y = ~A&~B&D | B&~D | C&~D;

endmodule
