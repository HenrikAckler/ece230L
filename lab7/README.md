# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

##Lab Summary
The goal of this lab was to explore how subtraction and signed number operations can be implemented at the logic level using Verilog. We built three modules: a half subtractor, a one's complement adder, and a two's complement converter. These circuits demonstrate different ways computers handle binary subtraction and negative number representation. We saw the introduction of borrowing logic with the half subtractor. Then, in the One's complement adder, we explored how early signed number systems were inefficient. And finally, we learned the modern method of handling signed binary numbers in the Two's complement converter.

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
The carry output in the adder signals an overflow in addition whereas the borrow output in the subtractor signals an underflow in subtraction.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
The end around carry of One's complement breaks the simple linear behavior of binary addition. The overflow bit must be wrapped back into the result requiring more logic and time.

### 3 - What is the edge case and problem with Two’s Complement number representation?
The range of Two's complement is asymmetric, going from -128 to +127. So the lowest value, -128 can't be represented as a positive number.
