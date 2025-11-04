module jkflipflop(
    input J, K, store,
    output Q, NotQ
);

    wire data;
    
    assign data = (J & NotQ) | (~K & Q);
    
    dflipflop data_inst(
        .store(store),
        .data(data),
        .Q(Q),
        .NotQ(NotQ)
    );

endmodule