module tflipflop(
    input toggle, store,
    output reg Q,
    output NotQ
);

    initial begin
        Q <= 0;
    end
    
    always @(posedge store) begin
        if (toggle)
            Q <= !Q;
    end
    
    assign NotQ = ~Q;

endmodule