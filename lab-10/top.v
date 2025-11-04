module top(
    input [3:0] sw,
    input btnC,
    output [5:0] led
);

    dflipflop dflipflop_inst(
        .data(sw[0]),
        .store(btnC),
        .Q(led[0]),
        .NotQ(led[1])
    );
    
    jkflipflop jkflipflop_inst(
        .J(sw[1]),
        .K(sw[2]),
        .store(btnC),
        .Q(led[2]),
        .NotQ(led[3])
    );
    
    tflipflop tflipflop_inst(
        .toggle(sw[3]),
        .store(btnC),
        .Q(led[4]),
        .NotQ(led[5])
    );

endmodule