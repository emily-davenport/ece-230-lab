# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
Structural Verilog does not allow structures which use their output as input, since it causes a loop which will never resolve.

### What is the meaning of always @(*) in a sensitivity block?
The always @(*) indicates that the behavioral syntax is being used to describe a combinational circuit. That is to say, the circuit is always sensitive.

### What importance is memory to digital circuits?
Memory is crucial for nearly every application of computing, since without it there would be no way to store computed values to be used by other computer circuits.
