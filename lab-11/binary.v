module top(
    input sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU // reset
);

    one_hot_state_machine onehot(
        .w(sw),
        .clk(btnC),
        .reset(btnU),
        .z(led[0]),
        .state(led[6:2])
    );
    
    binary_state_machine binary(
        .w(sw),
        .clk(btnC),
        .reset(btnU),
        .z(led[1]),
        .state_out(led[9:7])
    );

endmodule

module binary_state_machine(
    input w,
    input reset,
    input clk,
    output z,
    output [2:0] state_out
);

    wire [2:0] State;
    wire [2:0] Next;
    
    dff zero(
        .Default(1'b0),
        .reset(reset),
        .D(Next[0]),
        .clk(clk),
        .Q(State[0])
    );
    
    dff one(
        .Default(1'b0),
        .reset(reset),
        .D(Next[1]),
        .clk(clk),
        .Q(State[1])
    );
    
    dff two(
        .Default(1'b0),
        .reset(reset),
        .D(Next[2]),
        .clk(clk),
        .Q(State[2])
    );
    
    assign Next[0] = (~State[1] & ~State[0] & ~w)
                   | (~State[2] & ~State[0] & w)
                   | (~State[2] & ~State[1] & w)
                   | (State[1] & State[0] & ~w);
    assign Next[1] = (State[1] & ~State[0])
                   | (~State[2] & ~State[0] & w)
                   | (~State[2] & ~State[1] & State[0]);
    assign Next[2] = (State[1] & State[0] & w)
                   | (State[2] & w);
                   
    assign z = (~State[2] & State[1] & ~State[0]) | (State[2] & ~State[1] & ~State[0]);

    assign state_out = State;

endmodule