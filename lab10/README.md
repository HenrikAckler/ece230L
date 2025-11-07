# Sequential Circuits: Latches

In this lab, you’ve learned about edge sensitive circuits and explored some of the power therein.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Summary
This lab explores edge-sensitive circuits, introducing how flip-flops differ from latches by reacting only to clock edges instead of signal levels. It begins with the D Flip-Flop, which stores input data only on the rising edge of a clock, and contrasts this with level-sensitive behavior in a D-Latch. Using this foundation, students then build JK and T Flip-Flops, which extend functionality to include toggling and set/reset behavior through combinational logic. The lab also demonstrates why edge-triggered designs are crucial for stable, synchronous digital systems such as counters and memory, highlighting how clocks coordinate circuit behavior. Finally, students wire all three flip-flops to FPGA inputs and outputs to observe their state changes in real time. We also learned that you can implement a TFF using a JKFF, which was neat.

## Lab Questions

### What is different between edge and level sensitive circuits?
Edge-sensitive circuits respond only at signal transitions (clock edges), while level-sensitive circuits respond continuously while their enable signal is active.

### Why is it important to declare initial state?
Declaring an initial state ensures the circuit starts in a known, predictable condition when the FPGA or system is powered on.

### What do edge sensitive circuits let us build?
Edge-sensitive circuits let us build synchronous digital systems such as counters, registers, and memory units that change state reliably in step with a clock signal.
