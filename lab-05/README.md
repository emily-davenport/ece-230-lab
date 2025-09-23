# Lab 05 - Combinatorial Logic

In this lab, you’ve learned real world applications of digital logic, as well
as how to assemble your own Verilog modules. In addition, you’ve learned how
the constraints file maps your inputs and outputs to real pins on the FPGA.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### 1 - Explain the role of the Top Level file.
The top file is used to assemble all of the other modules in the project together.

### 2 - Explain the function of the Constraints file.
The constraints file maps the pins from the board to the inputs and outputs described in the project.

### 3 - Was the selection of Minterm and Maxterm correct for each circuit? What would you have chosen?
It seems like for the first circuit, the Minterm representation would've been better, since only one group would have to be formed. For the second circuit, it seems like either representation would suffice, since you can form 3 groups of four on the KMap.
