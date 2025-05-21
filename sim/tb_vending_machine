`timescale 1ns / 1ps

module tb_vending_machine;

    reg clk;
    reg reset;
    reg coin_5;
    reg coin_10;
    reg select_1;
    reg select_2;
    reg select_3;

    wire dispense;
    wire change;

    vending_machine_fsm uut (
        .clk(clk),
        .reset(reset),
        .coin_5(coin_5),
        .coin_10(coin_10),
        .select_1(select_1),
        .select_2(select_2),
        .select_3(select_3),
        .dispense(dispense),
        .change(change)
    );

 
    initial begin
        clk = 0;
        always #5 clk = ~clk;
    end

    initial begin
        reset = 1;
        coin_5 = 0;
        coin_10 = 0;
        select_1 = 0;
        select_2 = 0;
        select_3 = 0;

        #20;
        reset = 0;

        // TEST CASES 
        // coin_5 = 1; #10; coin_5 = 0;
        // select_1 = 1; #10; select_1 = 0;

        #200; 
        $finish;
    end

endmodule
