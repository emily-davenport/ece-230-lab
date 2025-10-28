module demultiplexer(
    input [7:0] data,
    input [1:0] sel,
    output reg [7:0] A,
    output reg [7:0] B,
    output reg [7:0] C,
    output reg [7:0] D
);

    always @(*) begin 
        case(sel)
            2'b00: {D, C, B, A} <= {8'b0, 8'b0, 8'b0, data}; 
            2'b01: {D, C, B, A} <= {8'b0, 8'b0, data, 8'b0};
            2'b10: {D, C, B, A} <= {8'b0, data, 8'b0, 8'b0};
            2'b11: {D, C, B, A} <= {data, 8'b0, 8'b0, 8'b0};
        endcase
    end

endmodule

module demux_one_bit(
    input data,
    input [1:0] sel,
    output reg A,
    output reg B,
    output reg C,
    output reg D
);

    always @(*) begin
       case(sel)
         2'b00: {D, C, B, A} <= {1'b0, 1'b0, 1'b0, data};
         2'b01: {D, C, B, A} <= {1'b0, 1'b0, data, 1'b0};
         2'b10: {D, C, B, A} <= {1'b0, data, 1'b0, 1'b0};
         2'b11: {D, C, B, A} <= {data, 1'b0, 1'b0, 1'b0};
       endcase
    end
    
endmodule