# Design Moore FSM project via Quartus and ModelSim

Description: This project was my last additional course project for Verilog Digital Systems Design during my BS in Computer Engineering, where I simulate a statement through Moore FSM. With full explanation.

#todo quick result


# Introduction:
We learn how to write a project idea by Verilog to Enhance course digital logic design. The project about implement module to show output COE312 by ModelSim, While writing the module, we must take care of the mentioned conditions, such as the initial condition and counting each time ten times. It helped us take advantage due to the problems that appeared and tried to solve them.

# Implementation:
In the beginning, the module of Project_COE312 shown in table 1.is implements classifies states to assign a phrase as hexadecimal. After the reset signal, the initial state needs to count ten times after that the output is C in hexadecimal. When passing in the reset signal the first process to counter to count before entering to states; then count from 1 to 10. After that classify depend on condition to wait for counts ten times then equal zero, To again count from one and set state to next state, and in the remaining cases, the same idea is repeated, with the output changing.
#todo table 1 

In table 2 shows the test_Project_COE312 module, The input defines by register but output as wire with size at 4-bit because of this size to one letter in hexadecimal. The idea of the project is count ten times then to fewer lines of code used for loop then define integer before start send and test to a module. To can test our project set the input to zero after that by for loop from 0 to 11 to send count and delay with 10 then in delay with 100 set 11 count but because of a counter in module initially count by one, not zero.
#todo table 2


# Steps:
1. Firstly make a new project with the name Project_COE312 in the program Quartus, It is important to confirm the type of device used in the project. To find that fastly writes that in the filter. (look at figure 1).
   
2. Create Verilog HDL File and write codes from two modules and make compile like figure 2.

3. To run Modelsim, from Tools select Run Simulation Tool then chose RTL Simulation. (look at figure 3).

4. Choose a test module to add variables to waves and to know the write and store in memory (look at figure 4), can edit view number in waves to decimal unsigned and output y to hexadecimal (look at figure 5).

5. After that run 100 from simulate (look at figure 6).





# Results:
This shows successful to a count from 1 to 10 and shows the phrase required COE312 (look at figure 7), When you observe the sequence in the cases, it moves in the required design in code and project, in which case S0 has been output C, and so on until it reaches the last number 2 in the case S5. Also, the count value end at 10 After that will be zero. The required sentence has appeared twice in ModelSim (look at figure 8).


Extra in the edit code to create different sentences by edit output. In figure 9 the output as sentences is feedback ; Because at this stage of the project report, there may be feedback on project performance. But not have k as hexadecimal.

# Conclusion:
We learned how to work on the Verilog to implementation project with a specific idea, And how-to shows the result in ModelSim, Many attempts to simulate because using many ideas from last labs to project then changing it and several attempts in the code; For the purpose of more benefit, I will attach experiments while working in section Appendices after this conclusion. It is wonderful that we have become using programming to instruction more things in depth in digital systems, We were a great project and helped us learn more about Digital System Design.

# Appendices:
During the work of the project, some problems have occurred, which we will mention with the reason and solution that you came up with for the project to succeed. Initially, it is possible to take advantage of the program's Quartus features to ensure that the transitions it makes between cases are correct from Analysis & Elaboration and select state machine viewer then State transition graph (STG) appears and it is possible to confirm the flow of cases as required in the project (look at figure 10). It helped to solve some problems that I will mention.

The problems that first appeared were Not transitioned to another state (look at figure 11) because it was in for loop from 0 to 10 while in the module it may increase 1, The solution is made for loop condition to 11.

The second problem that appeared was Not transitioned to a third state and not print output E (look at figure 12) because of it in precious code the else move back to an initial state. After an edit, I changed it to remain in the same state it was in until it counted ten times, because, according to the requirements of the project, it did not mention a return case for the beginning.

---
# Subject 
Digital Systems Design | COE312
Dr. Mohammed Abdulqaher Ahmed Alasali

---

My GitHub: https://github.com/MohammadYAmmar

My LinkedIn: https://www.linkedin.com/in/mohammad-y-ammar/ 
If you have seen the description and codes with design, can you recommend my Verilog or Quartus programming skills on LinkedIn? :)

Do not forget to give the project a star ⭐🌟 to encourage us to continue if you liked it.

Thank you for reading all of this to benefit you instead of just copying and pasting ✂!