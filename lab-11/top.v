module top(
    input sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU // reset
);

    one_hot_state_machine onehot(
        .w(sw),
        .clk(btnC),
        .z(led[0]),
        .state(led[6:2])
    );
    
    binary_state_machine binary(
        .w(sw),
        .clk(btnC),
        .z(led[1]),
        .state_out(led[9:7])
    );

endmodule