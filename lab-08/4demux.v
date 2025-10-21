module four_bit_demux(
    input [1:0] Select,
    input [3:0] Signal,
    input Enable,
    output [3:0] A,
    output [3:0] B,
    output [3:0] C,
    output [3:0] D
);

    assign A = ((Select == 0 && Enable) ? Signal : 0);
    assign B = ((Select == 1 && Enable) ? Signal : 0);
    assign C = ((Select == 2 && Enable) ? Signal : 0);
    assign D = ((Select == 3 && Enable) ? Signal : 0);

endmodule
