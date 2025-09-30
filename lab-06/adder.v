module adder(
    // Declare your A/B inputs
    // Declare Y output
    // Declare carry output
    input A, B,
    output Y, Carry
);

    assign Y = A ^ B;
    assign Carry = A & B;
    
endmodule