# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

## Lab Summary
In this lab we learned how to do both one-hot and binary state machine implementations using dff's.

### Compare and contrast One Hot and Binary encodings
One hot is a much simpler process, however it grows linearly with the number of states, leading to it being rather inefficient at scale, requiring a combinatorial block and dff for each state. Binary reduces this by representing the states in a base-2 number system, requiring only log_2 combinatorial blocks and dff's to represent a state machine.

### Which method did your team find easier, and why?
The one-hot was miles easier, and an implementation was able to be oneshot just by looking at the charts. The binary required 4 k-maps, planning, a lot of careful assignments and logic, and was overall very error prone.

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.
If we've got a blank check for gates and lines of verilog, the one hot is the choice. It's simple, easier to debug, and as long as we don't have many states it's reasonable. If this state machine is used a lot, or a large state machine is used and I can get computer assistance in solving for an implementation, the binary representation is needed, as it saves on gates.

