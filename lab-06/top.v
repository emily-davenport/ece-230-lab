module top(
    input [0:7]sw,
    output [0:5]led
);

    light light_inst(
        .downstairs(sw[0]),
        .upstairs(sw[1]),
        .stair_light(led[0])
    );
    
    adder half_adder_inst(
        .A(sw[2]),
        .B(sw[3]),
        .Y(led[1]),
        .Carry(led[2])
     );
     
     wire C;
     
     full_adder full_adder_inst_1(
        .A(sw[4]),
        .B(sw[6]),
        .Cin(0),
        .Y(led[3]),
        .Cout(C)
     );
     
     full_adder full_adder_inst_2(
        .A(sw[5]),
        .B(sw[7]),
        .Cin(C),
        .Y(led[4]),
        .Cout(led[5])
     );

endmodule