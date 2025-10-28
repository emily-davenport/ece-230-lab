module byte_memory
#(
    parameter BIT_COUNT = 8
)
(
    input [7:0] data,
    input store,
    output reg [7:0] memory
);

//    wire [7:0] out;

//    genvar i;
//    generate
//        for (i = 0; i < BIT_COUNT; i = i + 1) begin
//            d_latch inst(
//                .D(data[i]),
//                .E(store),
//                .Q(out[i])
//            );
//        end
//    endgenerate
    
//    assign memory = out;
    
    always @(data, store) begin
        memory <= store ? data : memory;
    end
    
endmodule