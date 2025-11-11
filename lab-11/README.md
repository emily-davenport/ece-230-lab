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

### Compare and contrast One Hot and Binary encodings
The One Hot encoding uses a D-flipflop for each state which can be represetnted, which leads to more straightforward logic for determining the next state, but is less memory efficient. The binary encoding uses a binary number to represent each state, leading to a more effecient representation of state.

### Which method did your team find easier, and why?
We found the One Hot encoding to be more straightforward because it is easier to figure out the logic for determining the next state.

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.
If the amount of memory on the board was limited, then you would need to use the binary encoding to save space.
