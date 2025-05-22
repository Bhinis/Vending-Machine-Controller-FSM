`timescale 1ns / 1ps

module tb_vending_machine;

  // Inputs
  reg clk;
  reg reset;
  reg coin_5;
  reg coin_10;
  reg select_1;
  reg select_2;

  // Outputs
  wire dispense;
  wire change;

  // Instantiate the Unit Under Test (UUT)
  top uut (
    .clk(clk),
    .reset(reset),
    .coin_5(coin_5),
    .coin_10(coin_10),
    .select_1(select_1),
    .select_2(select_2),
    .dispense(dispense),
    .change(change)
  );

  // Clock generation
  initial clk = 0;
  always #5 clk = ~clk; // 100 MHz clock

  initial begin
    // Initialize Inputs
    reset = 1;
    coin_5 = 0;
    coin_10 = 0;
    select_1 = 0;
    select_2 = 0;

    // Wait 20 ns and release reset
    #20;
    reset = 0;

    // Insert ₹5 coin
    #20;
    coin_5 = 1;
    #10;
    coin_5 = 0;

    // Insert ₹10 coin
    #30;
    coin_10 = 1;
    #10;
    coin_10 = 0;

    // Select item 2 (₹15)
    #30;
    select_2 = 1;
    #10;
    select_2 = 0;

    // Wait for FSM to process and return to idle
    #100;

    // End simulation
    $finish;
  end

endmodule
