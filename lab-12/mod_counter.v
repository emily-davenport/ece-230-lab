module mod_counter(
    input clk, enable, counter_reset,
    output [2:0] count, 
    output Q
);
    
    wire [2:0] dff_state;
    wire [2:0] adder_to_dff;
    wire reset;
    wire [1:0] carry;

    // adders and state
    dff dff_a(
        .data(adder_to_dff[0]),
        .clk(clk),
        .reset(reset),
        .Q(dff_state[0])
    );
    
    adder adder_a(
        .A(dff_state[0]),
        .B(enable),
        .Cin(1'b0),
        .Y(adder_to_dff[0]),
        .Cout(carry[0])
    );
    
    dff dff_b(
        .data(adder_to_dff[1]),
        .clk(clk),
        .reset(reset),
        .Q(dff_state[1])
    );
    
    adder adder_b(
        .A(dff_state[1]),
        .B(1'b0),
        .Cin(carry[0]),
        .Cout(carry[1]),
        .Y(adder_to_dff[1])
    );
    
    dff dff_c(
        .data(adder_to_dff[2]),
        .clk(clk),
        .reset(reset),
        .Q(dff_state[2])
    );
    
    adder adder_c(
        .A(dff_state[2]),
        .B(1'b0),
        .Cin(carry[1]),
        .Y(adder_to_dff[2])
    );
    
    // output
    dff output_dff(
        .data(~Q),
        .reset(counter_reset),
        .clk(reset),
        .Q(Q)
    );
    
    // comparison logic
    assign reset = (dff_state[2] & dff_state[1] & ~dff_state[0]) | counter_reset;

    assign count[2:0] = dff_state[2:0];
endmodule