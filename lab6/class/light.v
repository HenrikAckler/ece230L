module light(
    input down, up, // 0 is downstairs, 1 is upstairs
    output light //lightbulb
);

    assign light = up ^ down;
endmodule