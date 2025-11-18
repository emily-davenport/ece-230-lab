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

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
The module counter divides the clock signal by 2 * count because it takes two counts for the clock to go from high to low (one Hz).

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
The ring counter's output goes to all 1s on the first clock cycle because the first flipflop toggles to 1, clocking the second flipflop and causing it to toggle to 1, and so on.

### 3 - What width of ring counter would you use to get to an output of ~1KHz?
You would need a 16 wide ring counter in order to reduce the 100Mhz signal to a 1KHz output.
