# Number Theory: Addition

In this lab you've learned the basics of number theory as it relates to addition.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### Learning Summary
We learned how you can chain together full adders to add multiple bits. We also learned about integer overflow, and how it can behave 'unpredictably'.

### 1 - How might you add more than two bits together?
Just chain together more Full Adder's. One adder per bit.
### 2 - What is the importance of the XOR gate in an adder?
The dual XOR gates ensures that the only case in which the SUM is 1 is when there is either one '1' when there is a single 1 in input, or if there are three in input, in which case both the sum and carry out will be 1.
### 3 - What is the largest number a two bit adder can handle? What happens when you go over?
It can only handle 0 through 3. Going over will generate bad results. For example, adding `2+2` will generate `00`, erroneously listing the output as zero. Further, `2+3` will yeild `01`, and `3+3` will yeild `10`, both of which are erroneous.
