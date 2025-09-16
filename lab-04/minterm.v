module minterm (
    input A, B, C, D,
    output Y
);

assign Y = (~A & ~B & D) | (~D & (C | B)); // Enter your equation here

endmodule
