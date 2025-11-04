module dflipflop(
    input data, store,
    output reg Q,
    output NotQ
);

    initial begin
        Q <= 0;
    end
    
    always @(posedge store) begin
        if (data)
            Q <= 1;
        else
            Q <= 0;
    end
    
    assign NotQ = ~Q;

endmodule