# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Summary 
This lab introduces sequential logic circuits that store and synchronize data over time, unlike purely combinational logic. It begins by explaining SR latches, which use feedback loops to "remember" a state, and then transitions to the D-latch, which avoids invalid states by controlling when data is stored using an enable signal.

In Part 1, we implement a single-bit D-latch in behavioral Verilog.
In Part 2, we expand this into a four-byte memory system using D-latches, multiplexers, and demultiplexers to store and access data at selectable memory addresses.

The appendices provide syntax help for arrays, module scaffolding, generate loops, and explain the difference between blocking (=) and non-blocking (<=) assignments.

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
We can write a latch structurally (using gates like NORs), but FPGA synthesis tools will reject it because it creates a combinational feedback loop — a wiring pattern that the synthesizer cannot safely implement or optimize in hardware. Instead, you must use behavioral Verilog with reg and always blocks to describe memory behavior in a way the tool understands and can map to real flip-flops or latches on the FPGA.

### What is the meaning of always @(*) in a sensitivity block?
This is called a sensitivity list. It tells Verilog when to re-evaluate the code inside the always block.

### What importance is memory to digital circuits?
Memory gives digital circuits the ability to remember past inputs, maintain state, and perform complex, time-dependent operations — transforming simple logic gates into true computing systems.
