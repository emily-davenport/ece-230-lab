// top
module top(
    input btnC, btnU,
    output [6:0] led
);

    ripple_counter rc(
        .clk(btnC),
        .reset(btnU),
        .A(led[0]),
        .B(led[1]),
        .C(led[2])
    );
    
    mod_counter mc(
        .clk(btnC),
        .counter_reset(btnU),
        .enable(1'b1),
        .count(led[5:3]),
        .Q(led[6])
    );
    
endmodule

// ripple counter
module ripple_counter(
    input clk, reset,
    output A, B, C
);

    tff tff_a(
        .toggle(1'b1),
        .reset(reset),
        .store(clk),
        .Q(A)
    );
    
    tff tff_b(
        .toggle(1'b1),
        .reset(reset),
        .store(A),
        .Q(B)
    );
    
    tff tff_c(
        .toggle(1'b1),
        .reset(reset),
        .store(B),
        .Q(C)
    );

endmodule