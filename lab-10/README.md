# Sequential Circuits: Latches

In this lab, you’ve learned about edge sensitive circuits and explored some of the power therein.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### What is different between edge and level sensitive circuits?
Level circuits trigger based on the level of an enable signal. When the enable signal is high, the state of the circuit may be modified freely. Edge sensetiive circuits trigger based on the edge of a signal, so that the state of the circuit can only be changed during the short period of time when the signal is changing from low to high or high to low.

### Why is it important to declare initial state?
The initial state is important to declare so that we know how the circuit will behave given a series of inputs. If the initial state wasn't declared, then there would be no way of predicting the state of the circuit when it is activated. This is especially problematic for circuits like the T-FlipFlop, where the next state is determined by the initial state.

### What do edge sensitive circuits let us build?
Edge sensitive circuits allow for clocked circuits like counters to be built. It is especially helpful for precisely controlling when the state of a memory circuit is allowed to change.
