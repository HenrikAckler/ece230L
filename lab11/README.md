# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### Summary
In this lab we learned about two types of counters, namely the async ripple counter and the synchronous modulo-n counter. I'm going to be honest, I struggle to see the use in the ripple counter. It's limited and async, which just seems hard to make work well in real life.

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
When piping the comparator output of the comparator into the `T` value of a Tflop, this it toggles everytime it counts to N. A clock requires two toggles per clock, thus the frequency = f/2N. As a small note, the lab instructions notes using a *Dflop*, which I'm fairly certain would produce a frequency of `f/N` and a duty cycle of `1/N`.
### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
The first clock means the LSB will toggle to 1, naturally. However as it is async, the next stage will recieve it's clock and toggle exactly *t* time later, where *t* is the delay of a single stage. In simulation and to our eyes, this appears to all happen at once, but it's really happening in a very fast sequence.
### 3 - What width of ring counter would you use to get to an output of ~1KHz?
Assuming the 100Mhz clock, we'd need to find the closest solution for `100,000,000 / 2 ^ N = 1,000`. The closest answer is `N=17` (17 stage ripple divider), resulting in a ~763hz clock.
