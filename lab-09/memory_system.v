module top(
    input [15:0] sw,
    input btnC,
    output [15:0] led
);
    d_latch part1(
        .D(sw[0]),
        .Q(led[0]),
        .NotQ(led[1]),
        .E(btnC)
    );
    
    memory_system part2(
        .data(sw[15:8]),
        .addr(sw[7:6]),
        .store(btnC),
        .memory(led[15:8])
    );

endmodule

module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);

    // This should instantiate 4 instances of
    // byte_memory, and then demultiplex
    // data and store into the one selected by
    // addr
    
    wire [7:0] demux_to_memory[3:0];
    wire [7:0] memory_to_mux[3:0];
    wire [3:0] enable;
    
    demultiplexer demux_data(
        .data(data),
        .sel(addr),
        .A(demux_to_memory[0]),
        .B(demux_to_memory[1]),
        .C(demux_to_memory[2]),
        .D(demux_to_memory[3])
    );
    
    demux_one_bit demux_enable(
        .data(store),
        .sel(addr),
        .A(enable[0]),
        .B(enable[1]),
        .C(enable[2]),
        .D(enable[3])
    );
    
    byte_memory byte_a(
        .data(demux_to_memory[0]),
        .store(enable[0]),
        .memory(memory_to_mux[0])
    );
    
    byte_memory byte_b(
        .data(demux_to_memory[1]),
        .store(enable[1]),
        .memory(memory_to_mux[1])
    );
    
    byte_memory byte_c(
        .data(demux_to_memory[2]),
        .store(enable[2]),
        .memory(memory_to_mux[2])
    );
    
    byte_memory byte_d(
        .data(demux_to_memory[3]),
        .store(enable[3]),
        .memory(memory_to_mux[3])
    );
    
    multiplexer mem_select(
        .sel(addr),
        .A(memory_to_mux[0]),
        .B(memory_to_mux[1]),
        .C(memory_to_mux[2]),
        .D(memory_to_mux[3]),
        .F(memory)
    );

    // It should then multiplex the output of the
    // memory specified by addr into the memory
    // output for display on the LEDs

    // you will need 2 demultiplexers:
    // 1. Demultiplex data -> selected byte
    // 2. Demultiplex store -> selected byte

    // and one multiplexer:
    // 1. Multiplex selected byte -> memory

endmodule