# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
The half subtractor similar to the half adder, except for the fact that it has a borrow instead of a carry. For the half adder carry signal, we use A & B, but for the half subtractor borrow we use ~A & B.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
The end around carry of one's complement forces you to add a second set of adders in order to handle the case where ther is an end around carry. This makes it much harder to use / implement than two's complement.

### 3 - What is the edge case and problem with Two’s Complement number representation?
The edge case of the two's complement number representation is that addition can overflow when the sum has more bits than can be handled by the circuit.

