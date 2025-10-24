# Multiplexers and Demultiplexers

In this lab you have learned about multiplexers and demultiplexers.

# NOTE

The `top.v`, `mux.v`, and `demux.v` files are located at `./lab8.srcs/sources_1/new`. This is where verilog put them. Thanks!

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### Summary
We learned about using mux and demux to perform basic routing based on selector signals.

### In plain English describe the function and use of a multiplexer.
A multiplexer allows you to select one input from a set of inputs to output, using a selection signal. This means you can have many inputs connected to one output.

### In plain English describe the function and use of a demultiplexer.
A demultiplexer allows you to connect one input to many outputs, and select which one to connect it to depending on the selection signal. This allows you to have one input that can go to many outputs.

### What other uses might these circuits have? (Think Shannon’s)
You can use them to perform SOP/POS style boolean math with less complexity, by selecting the appropriate gates to use depending on the inputs. It could also be used to control or listen to multiple devices using fewer pins on a microcontroller.

