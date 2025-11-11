module one_hot_state_machine(
    input w,
    input reset,
    input clk,
    output z,
    output [4:0] state
);

    wire Anext, Bnext, Cnext, Dnext, Enext;
    wire Astate, Bstate, Cstate, Dstate, Estate;
    
    dff Adff(
        .Default(1'b1),
        .reset(reset),
        .D(Anext),
        .clk(clk),
        .Q(Astate)
    );
    
    dff Bdff(
        .Default(1'b0),
        .reset(reset),
        .D(Bnext),
        .clk(clk),
        .Q(Bstate)
    );
    
    dff Cdff(
        .Default(1'b0),
        .reset(reset),
        .D(Cnext),
        .clk(clk),
        .Q(Cstate)
    );
    
    dff Ddff(
        .Default(1'b0),
        .reset(reset),
        .D(Dnext),
        .clk(clk),
        .Q(Dstate)
    );
    
    dff Edff(
        .Default(1'b0),
        .reset(reset),
        .D(Enext),
        .clk(clk),
        .Q(Estate)
    );
    
    assign Anext = 0;
    assign Bnext = ~w & (Astate | Dstate | Estate);
    assign Cnext = ~w & (Bstate | Cstate);
    assign Dnext = w & (Astate | Bstate | Cstate);
    assign Enext = w & (Dstate | Estate);
    
    assign z = Cstate | Estate;
    
    assign state = {Estate, Dstate, Cstate, Bstate, Astate};

endmodule