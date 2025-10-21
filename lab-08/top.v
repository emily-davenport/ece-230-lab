module top(
    input [15:0] sw,
    input btnL, btnU, btnD, btnR, btnC,
    output [15:0] led
);

    wire [1:0] mux_select;
    assign mux_select = {btnU, btnL};
    
    wire [1:0] demux_select;
    assign demux_select = {btnR, btnD};
    
    wire [3:0] packet;
    
    four_bit_mux four_mux_inst(
        .Select(mux_select),
        .Signal(sw[15:0]),
        .Enable(btnC),
        .Y(packet)
    );
    
    four_bit_demux four_demux_inst(
        .Select(demux_select),
        .Signal(packet),
        .Enable(btnC),
        .A(led[3:0]),
        .B(led[7:4]),
        .C(led[11:8]),
        .D(led[15:12])
    );

endmodule
