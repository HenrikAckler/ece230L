module byte_memory(
    input [7:0] data,
    input store,
    output reg  [7:0] memory,
    output [7:0] memory_n
);
    always @ (data or store) begin
        if (store)
            memory <= data;
    end
    assign memory_n = ~memory;
endmodule