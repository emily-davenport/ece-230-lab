module twos_compliment(
    input [7:0]A,
    output [7:0]B
);

    assign B[0] = A[0];
    assign B[1] = A[1] ^ A[0];
    assign B[2] = A[2] ^ (A[0] | A[1]);
    assign B[3] = A[3] ^ (A[0] | A[1] | A[2]);
    assign B[4] = A[4] ^ (A[0] | A[1] | A[2] | A[3]);
    assign B[5] = A[5] ^ (A[0] | A[1] | A[2] | A[3] |
                          A[4]);
    assign B[6] = A[6] ^ (A[0] | A[1] | A[2] | A[3] |
                          A[4] | A[5]);
    assign B[7] = A[7] ^ (A[0] | A[1] | A[2] | A[3] |
                          A[4] | A[5] | A[6]);

endmodule