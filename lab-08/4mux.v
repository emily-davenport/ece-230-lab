module four_bit_mux(
    input [1:0] Select,
    input [15:0] Signal,
    input Enable,
    output [3:0] Y
);

    assign Y = (Enable == 0 ? 0            :
                Select == 0 ? Signal[3:0]  :
                Select == 1 ? Signal[7:4]  :
                Select == 2 ? Signal[11:8] :
                              Signal[15:12]);

endmodule
