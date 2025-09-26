# Lab 05 - Combinatorial Logic

In this lab, you’ve learned real world applications of digital logic, as well
as how to assemble your own Verilog modules. In addition, you’ve learned how
the constraints file maps your inputs and outputs to real pins on the FPGA.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### 1 - Explain the role of the Top Level file.
The top level file serves as a compilation starting point as well as a way to combine two other modules to produce further functionality. While circuit's A and B are fully functional as they are, they are only part of the desired end function, which is to map the output of A into B, and track the outputs of both circuits. Seperating these into modules allows for flexible, easily maintained design, however this requires an additional module (in this case `top.v`) in order to link the two circuits together for final functionality.

### 2 - Explain the function of the Constraints file.
The `constraints.xdc` file *constrains* the synthesis of our verilog program to a solution that fits what is available on our physical hardware. While the modules may adequately define the logic, the board cannot magically know what goes where. So the constraints file ensures that all inputs, outputs, and settings are hooked up to the correct positions, voltages, and more. This in theory allows us to also easily reuse this verilog code on an alternate platform.

### 3 - Was the selection of Minterm and Maxterm correct for each circuit? What would you have chosen?
For circuit A, while Maxterms did work very well, in our opinion minterms would have been better, if only barely. Minterms uses one smaller (2x2) group, whereas Maxterms uses two larger groups that require summing. At least in this case, we believe that fewer groups trumps larger groups. As for circuit b, there is no doubt that minterms is correct. Minterms requires 3 groups of 4, whereas maxterms would require 1 group of 4 and 2 groups of 2.


