module byte_memory(
    input [7:0] data, //8 bit data in bus
    input store,   //enable signal
    output reg  [7:0] memory, //8 bit data out register bus
    output [7:0] memory_n //8 bit negated data bus
);
    always @ (data or store) begin
        if (store)
            memory <= data;
    end
    assign memory_n = ~memory;
endmodule