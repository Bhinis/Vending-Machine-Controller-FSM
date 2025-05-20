# Vending-Machine-Controller-FSM
# Brief Idea
This project implements a Finite State Machine (FSM)-based Vending Machine Controller using Verilog HDL, designed to run on the VSD FPGA Mini board. The machine accepts coin inputs and delivers products based on selection logic and sufficient balance. It also handles change return and resets.
The controller tracks state transitions based on user inputs (coin insertions and product selections), and controls outputs such as product dispense signals and change indicators. All logic is implemented at the RTL level using FSM principles.

# Theme
FSM with Control Logic System

This project focuses on control-based designs using FSMs, where logic sequencing and decision-making are handled by state machines. The vending machine is a textbook example of FSM-based controllers, and is ideal for synthesis and FPGA deployment.

# Target Output
Functional RTL FSM-based vending machine that:

1. Accepts inputs for coins (e.g., ₹5, ₹10)
   
2.Allows selection of multiple products

3.Checks balance and dispenses product if valid

4.Returns change if necessary

5.Rejects or resets on invalid input

6.Simulation testbench demonstrating all scenarios

7.Synthesized bitstream for deployment on FPGA Mini

8. Hardware demo using LEDs or 7-segment displays for product dispensing and change indication
