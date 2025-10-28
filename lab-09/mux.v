module multiplexer(
    input [1:0] sel,
    input [7:0] A,
    input [7:0] B,
    input [7:0] C,
    input [7:0] D,
    output reg [7:0] F
);

        always @(*) begin 
        case(sel)
            2'b00: F <= A;
            2'b01: F <= B;
            2'b10: F <= C;
            2'b11: F <= D;
        endcase
    end

endmodule