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

In the lab we generated Sum-of-Product and Product-of-Sum representations of KMaps generated from a truth table. After doing so, we tested that the representations were equivalent to the naive representation using the test program and the Basys board.

## Lab Questions

### Why are the groups of 1’s (or 0’s) that we select in the KMap able to go across edges?
The groups can go across edges because the KMap is cylindrical. We can imagine that any group which wraps around and edge of the table would be contiguous if it was on the surface of a cylinder.

### Why are the names Sum of Products and Products of Sums?
They are called Sum of Products and Products of Sums because the Boolean operations done correspond to the mathematical operations of multiplication and summation. If we are ORing a series of AND expressions, that corresponds to summing products. If we are ANDing a series of OR expressions, we are multiplying a series of sums.

### Open the test.v file – how are we able to check that the signals match using XOR?
We can check that the signals match using XOR because XOR will be true if there is an output which does not match. Conversely, XOR will be false if all the signals match.
