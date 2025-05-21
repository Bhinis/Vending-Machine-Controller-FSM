# Project Title - Vending-Machine-Controller-FSM
# Brief Idea
This project implements a Finite State Machine (FSM)-based Vending Machine Controller using Verilog HDL, designed to run on the VSD FPGA Mini board. The machine accepts coin inputs and delivers products based on selection logic and sufficient balance. It also handles change return and resets.
The controller tracks state transitions based on user inputs (coin insertions and product selections), and controls outputs such as product dispense signals and change indicators. All logic is implemented at the RTL level using FSM principles.

# Theme
FSM with Control Logic System

This project focuses on control-based designs using FSMs, where logic sequencing and decision-making are handled by state machines. The vending machine is a textbook example of FSM-based controllers, and is ideal for synthesis and FPGA deployment.

# Target Output
Functional RTL FSM-based vending machine that:

1. Accepts inputs for coins (e.g., ₹5, ₹10)
   
2. Allows selection of multiple products

3. Checks balance and dispenses product if valid

4. Returns change if necessary

5. Rejects or resets on invalid input

6. Simulation testbench demonstrating all scenarios

7. Synthesized bitstream for deployment on FPGA Mini

8. Hardware demo using LEDs or 7-segment displays for product dispensing and change indication
# Block Diagram
![FSM-Vending-Machine](https://github.com/user-attachments/assets/31d47e1c-2367-4cef-a00c-ae2fc338c674)

# FSM transition Diagram
![image](https://github.com/user-attachments/assets/bc95bd05-c795-4252-add5-3a4ef1f1706b)

# Day 2 - RTL Skeleton

- Created `vending_machine_fsm` module with defined I/O:
  - Inputs: clk, reset, coin_5, coin_10, select_1, select_2, select_3
  - Outputs: dispense, change
  
- coin_5, coin_10: simulate ₹5 and ₹10 inputs

- select_1, select_2, select_3: user product selections

- dispense: high when the product is dispensed

- change: high when extra money is returned

- Declared FSM states and control skeleton (IDLE → WAIT_COIN → CHECK_BALANCE → DISPENSE → RETURN_CHANGE)
- Began testbench setup in `tb_vending_machine.v`
- Committed updates in `/src/` and `/sim/` with appropriate structure
- Created files `top.v` for board pins assignment and `coin_counter` for updation on coins used and information.
- Next step: implement full RTL logic and simulate

# Why This FSM-Based Structure Was Chosen
- Sequential Control: A vending machine operates step-by-step — insert coin → validate → select item → dispense — which maps perfectly to FSM states.
- Simplicity + Scalability: Using discrete states like IDLE, WAIT_COIN, CHECK_BALANCE, DISPENSE, and RETURN_CHANGE makes the logic modular and easy to debug or extend (e.g., for more products or pricing).


