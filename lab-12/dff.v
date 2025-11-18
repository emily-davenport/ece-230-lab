module dff(
    input data, clk, reset,
    output reg Q,
    output NotQ
);

    initial begin
        Q <= 0;
    end
    
    always @(posedge clk, posedge reset) begin
        if (reset)
            Q <= 0;
        else
            Q <= data;
    end
    
    assign NotQ = ~Q;

endmodule