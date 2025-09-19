# Lab 04 - SOP/POS and KMaps

In this lab, you’ve learned how to apply KMaps, Sum Of Products and Products of
sums to simplify digital logic equations. Then, you’ve proven out that they work
using an implemented design on your Basys3 boards.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Summary

In this lab we learned to implement a function, a POS version of the function, and a SOP version of the function. Throughout the lab we ran
each version of the function finding the same results. So we can get the same results whether we use the minterms or the maxterms. 

## Lab Questions

### Why are the groups of 1’s (or 0’s) that we select in the KMap able to go across edges?

Groups of 1's or 0's can cross edges due to the variables changing by only 1 so you can wrap around in a circle/cylinder/torus.

### Why are the names Sum of Products and Products of Sums?

The Sum of Products is so named because it is the function created by summing (OR) the products (AND) of each min term. Likewise,
the Products of Sums is named because it is a function created by taking the product (AND) of the sums(OR) of each of the max terms.

### Open the test.v file – how are we able to check that the signals match using XOR?

XOR acts as a difference detector, passing only values that are different produce and output of 1.