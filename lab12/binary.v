module binary(
    input w,
    input clk,
    input reset,
    output z,
    output [2:0] state
);

    wire [2:0] State;
    wire [2:0] Next;
    
    assign state = State; //output

    dff zero(
        .Default(1'b0),
        .D(Next[0]),
        .clk(clk),
        .Q(State[0]),
        .reset(reset)
    );

    dff one(
        .Default(1'b0),
        .D(Next[1]),
        .clk(clk),
        .Q(State[1]),
        .reset(reset)
    );
    
    dff two(
        .Default(1'b0),
        .D(Next[2]),
        .clk(clk),
        .Q(State[2]),
        .reset(reset)
    );  

    assign z = ~State[0] & (State[1] | State[2]);
    
    
    //    bit 0:
    //	~w & ~0 & ~1
    //	w & ~1 & ~2
    //	w & ~0 & ~2
    //	~w & 0 & 1 & ~2

    assign Next[0] = ~w & ~State[0] & ~State[1] |
                    w & ~State[1] & ~State[2] |
                    w & ~State[0] & ~State[2] |
                    ~w & State[0] & State[1] & ~State[2];
                    
                
    //bit 1:
    //	0 & ~1 & ~2
    //	w & ~0 & ~2
    //	~0 & 1 & ~2              
    assign Next[1] = State[0] & ~State[1] & ~State[2] |
                     w & ~State[0] & ~State[2] |
                     ~State[0] & State[1] & ~State[2];
                
//bit 2:
//	w & ~0 & ~1 & ~2
//	w & 0 & 1 & ~2
    assign Next[2] = w & ~State[0] & ~State[1] & State[2] |
                     w & State[0] & State[1] & ~State[2];

endmodule