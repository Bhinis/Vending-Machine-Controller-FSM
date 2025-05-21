module top (
    input wire clk,         
    input wire reset_btn,   
    input wire sw0,         // Coin ₹5
    input wire sw1,         // Coin ₹10
    input wire sw2,         // Select Product 1
    input wire sw3,         // Select Product 2
    input wire sw4,         // Select Product 3
    output wire led0,       // Dispense indicator
    output wire led1        // Change indicator

);

    wire dispense_sig;
    wire change_sig;

    wire reset = reset_btn;

    vending_machine_fsm uut (
        .clk(clk),
        .reset(reset),
        .coin_5(sw0),
        .coin_10(sw1),
        .select_1(sw2),
        .select_2(sw3),
        .select_3(sw4),
        .dispense(dispense_sig),
        .change(change_sig)
    );

    assign led0 = dispense_sig;
    assign led1 = change_sig;

endmodule
