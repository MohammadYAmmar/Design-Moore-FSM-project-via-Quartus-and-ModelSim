# Design Moore FSM project via Quartus and ModelSim

Description: This project was my last additional course project for Verilog Digital Systems Design during my BS in Computer Engineering, where I simulate a statement through Moore FSM. With full explanation.

This is the result of the project but the explanation of how the simulation appeared is in the rest of the illustration.

![alt text](https://github.com/MohammadYAmmar/Design-Moore-FSM-project-via-Quartus-and-ModelSim/blob/main/Pictures%20using%20in%20ReadMe%20for%20description/figure%207%20The%20wave%20shows%20COE312%20in%20ModelSim.png "figure 7: The wave shows COE312 in ModelSim")



# Introduction:
We learn how to write a project idea by Verilog to Enhance course digital logic design. The project about implement module to show output COE312 by ModelSim, While writing the module, we must take care of the mentioned conditions, such as the initial condition and counting each time ten times. It helped us take advantage due to the problems that appeared and tried to solve them.

# Implementation:
In the beginning, the module of Project_COE312 shown in table 1.is implements classifies states to assign a phrase as hexadecimal. After the reset signal, the initial state needs to count ten times after that the output is C in hexadecimal. When passing in the reset signal the first process to counter to count before entering to states; then count from 1 to 10. After that classify depend on condition to wait for counts ten times then equal zero, To again count from one and set state to next state, and in the remaining cases, the same idea is repeated, with the output changing.
#todo table 1 

In table 2 shows the test_Project_COE312 module, The input defines by register but output as wire with size at 4-bit because of this size to one letter in hexadecimal. The idea of the project is count ten times then to fewer lines of code used for loop then define integer before start send and test to a module. To can test our project set the input to zero after that by for loop from 0 to 11 to send count and delay with 10 then in delay with 100 set 11 count but because of a counter in module initially count by one, not zero.
#todo table 2


# Steps:
1. Firstly make a new project with the name Project_COE312 in the program Quartus, It is important to confirm the type of device used in the project. To find that fastly writes that in the filter. (look at figure 1).
   ![alt text](https://github.com/MohammadYAmmar/Design-Moore-FSM-project-via-Quartus-and-ModelSim/blob/main/Pictures%20using%20in%20ReadMe%20for%20description/figure%201%20Device%20family.png "figure 1: Device  family")


   
2. Create Verilog HDL File and write codes from two modules and make compile like figure 2.
   ![alt text](https://github.com/MohammadYAmmar/Design-Moore-FSM-project-via-Quartus-and-ModelSim/blob/main/Pictures%20using%20in%20ReadMe%20for%20description/figure%202%20The%20part%20of%20code%20in%20Verilog%20HDL%20File.png "figure 2: The part of code in Verilog HDL File")


3. To run Modelsim, from Tools select Run Simulation Tool then chose RTL Simulation. (look at figure 3).
   ![alt text](https://github.com/MohammadYAmmar/Design-Moore-FSM-project-via-Quartus-and-ModelSim/blob/main/Pictures%20using%20in%20ReadMe%20for%20description/figure%203%20File%20menu%20bar%20choose%20Tools.png "figure 3: File menu bar choose Tools")


4. Choose a test module to add variables to waves and to know the write and store in memory (look at figure 4), can edit view number in waves to decimal unsigned and output y to hexadecimal (look at figure 5).
   ![alt text](https://github.com/MohammadYAmmar/Design-Moore-FSM-project-via-Quartus-and-ModelSim/blob/main/Pictures%20using%20in%20ReadMe%20for%20description/figure%204%20Add%20an%20object%20in%20the%20test%20module%20and%20uut.png "figure 4: Add an object in the test module and uut")

      ![alt text](https://github.com/MohammadYAmmar/Design-Moore-FSM-project-via-Quartus-and-ModelSim/blob/main/Pictures%20using%20in%20ReadMe%20for%20description/figure%205%20change%20the%20view%20type.png "figure 5: change the view type")


5. After that run 100 from simulate (look at figure 6).
   ![alt text](https://github.com/MohammadYAmmar/Design-Moore-FSM-project-via-Quartus-and-ModelSim/blob/main/Pictures%20using%20in%20ReadMe%20for%20description/figure%206%20Modelsim%20GUI.png "figure 6: Modelsim GUI")


# Results:
This shows successful to a count from 1 to 10 and shows the phrase required COE312 (look at figure 7), When you observe the sequence in the cases, it moves in the required design in code and project, in which case S0 has been output C, and so on until it reaches the last number 2 in the case S5. Also, the count value end at 10 After that will be zero. The required sentence has appeared twice in ModelSim (look at figure 8).

![alt text](https://github.com/MohammadYAmmar/Design-Moore-FSM-project-via-Quartus-and-ModelSim/blob/main/Pictures%20using%20in%20ReadMe%20for%20description/figure%207%20The%20wave%20shows%20COE312%20in%20ModelSim.png "figure 7: The wave shows COE312 in ModelSim")


![alt text](https://github.com/MohammadYAmmar/Design-Moore-FSM-project-via-Quartus-and-ModelSim/blob/main/Pictures%20using%20in%20ReadMe%20for%20description/figure%208%20The%20wave%20to%20double%20shows%20COE312%20in%20ModelSim.png "figure 8: The wave to double shows COE312 in ModelSim")



Extra in the edit code to create different sentences by edit output. In figure 9 the output as sentences is feedback ; Because at this stage of the project report, there may be feedback on project performance. But not have k as hexadecimal.

![alt text](https://github.com/MohammadYAmmar/Design-Moore-FSM-project-via-Quartus-and-ModelSim/blob/main/Pictures%20using%20in%20ReadMe%20for%20description/figure%209%20The%20wave%20shows%20feedbac%20k%20in%20ModelSim.png "figure 9: The wave shows feedbac k in ModelSim")


# Conclusion:
We learned how to work on the Verilog to implementation project with a specific idea, And how-to shows the result in ModelSim, Many attempts to simulate because using many ideas from last labs to project then changing it and several attempts in the code; For the purpose of more benefit, I will attach experiments while working in section Appendices after this conclusion. It is wonderful that we have become using programming to instruction more things in depth in digital systems, We were a great project and helped us learn more about Digital System Design.


# Appendices:
During the work of the project, some problems have occurred, which we will mention with the reason and solution that you came up with for the project to succeed. Initially, it is possible to take advantage of the program's Quartus features to ensure that the transitions it makes between cases are correct from Analysis & Elaboration and select state machine viewer then State transition graph (STG) appears and it is possible to confirm the flow of cases as required in the project (look at figure 10). It helped to solve some problems that I will mention.

![alt text](https://github.com/MohammadYAmmar/Design-Moore-FSM-project-via-Quartus-and-ModelSim/blob/main/Pictures%20using%20in%20ReadMe%20for%20description/figure%2010%20STG%20in%20state%20machine%20viewer.png "figure 10: STG in state machine viewer")


The problems that first appeared were Not transitioned to another state (look at figure 11) because it was in for loop from 0 to 10 while in the module it may increase 1, The solution is made for loop condition to 11.

![alt text](https://github.com/MohammadYAmmar/Design-Moore-FSM-project-via-Quartus-and-ModelSim/blob/main/Pictures%20using%20in%20ReadMe%20for%20description/figure%2011%20code%20of%20error%201%20and%20waves%20in%20ModelSim.png "figure 11: code of error 1 and waves in ModelSim")


The second problem that appeared was Not transitioned to a third state and not print output E (look at figure 12) because of it in precious code the else move back to an initial state. After an edit, I changed it to remain in the same state it was in until it counted ten times, because, according to the requirements of the project, it did not mention a return case for the beginning.

![alt text](https://github.com/MohammadYAmmar/Design-Moore-FSM-project-via-Quartus-and-ModelSim/blob/main/Pictures%20using%20in%20ReadMe%20for%20description/figure%2012%20code%20of%20error%202%20and%20waves%20in%20ModelSim.png "figure 12: code of error 2 and waves in ModelSim")

The last problem appeared were Not count ten times until C is shown as output (look at figure 13)
because it had not added the count condition from the first case.

   ![alt text](https://github.com/MohammadYAmmar/Design-Moore-FSM-project-via-Quartus-and-ModelSim/blob/main/Pictures%20using%20in%20ReadMe%20for%20description/figure%2013%20error%203%20in%20the%20result%20waves%20in%20ModelSim.png "figure 13: error 3 in the result waves in ModelSim")



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