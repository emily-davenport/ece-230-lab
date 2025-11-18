module tff(
    input toggle, store, reset,
    output reg Q,
    output NotQ
);

    initial begin
        Q <= 1'b0;
    end
    
    always @(posedge store, posedge reset) begin
        if (reset)
            Q <= 1'b0;
        else
            if (toggle)
                Q <= ~Q;
    end
    
    assign NotQ = ~Q;

endmodule