module onehot(
    input w,
    input clk,
    output z,
    output [4:0] states
);
    wire Anext, Bnext, Cnext, Dnext, Enext;
    wire Astate, Bstate, Cstate, Dstate, Estate;

    dff Adff(
        .Default(1'b1),
        .D(Anext),
        .clk(clk),
        .Q(Astate)
    );

    dff Bdff(
        .Default(1'b0),
        .D(Bnext),
        .clk(clk),
        .Q(Bstate)
    );

    dff Cdff(
        .Default(1'b0),
        .D(Cnext),
        .clk(clk),
        .Q(Cstate)
    );
    
    dff Ddff(
        .Default(1'b0),
        .D(Dnext),
        .clk(clk),
        .Q(Dstate)
    );

    dff Edff(
        .Default(1'b0),
        .D(Enext),
        .clk(clk),
        .Q(Estate)
    );

    assign z = Cstate | Estate;

    //Astate will never be set?
    assign Bnext = ~w & (~Bstate & ~Cstate);
    assign Cnext = ~w & (Bstate | Cstate);
    assign Dnext = w & (~Dstate & ~Estate);
    assign Enext = w & (Dstate & Estate);
    
    assign states = {Anext, Bnext, Cnext, Dnext, Enext};
    
endmodule