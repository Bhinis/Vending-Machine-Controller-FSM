module vending_machine_fsm (
    input wire clk,
    input wire reset,
    input wire coin_5,
    input wire coin_10,
    input wire select_1,  // Product 1
    input wire select_2,  // Product 2
    input wire select_3,  // Product 3
    output reg dispense,
    output reg change
);

    // FSM State Definitions
    typedef enum reg [2:0] {
        IDLE = 3'b000,
        WAIT_COIN = 3'b001,
        CHECK_BALANCE = 3'b010,
        DISPENSE = 3'b011,
        RETURN_CHANGE = 3'b100
    } state_t;

    state_t current_state, next_state;

  
    always @(posedge clk or posedge reset) begin
        if (reset)
            current_state <= IDLE;
        else
            current_state <= next_state;
    end

   
    always @(*) begin
        case (current_state)
            IDLE: begin
                next_state = WAIT_COIN;
            end

            WAIT_COIN: begin
                if (coin_5 || coin_10)
                    next_state = CHECK_BALANCE;
                else
                    next_state = WAIT_COIN;
            end

            CHECK_BALANCE: begin
                next_state = DISPENSE;
            end

            DISPENSE: begin
                next_state = RETURN_CHANGE;
            end

            RETURN_CHANGE: begin
                next_state = IDLE;
            end

            default: next_state = IDLE;
        endcase
    end

    // Output Logic 
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            dispense <= 0;
            change <= 0;
        end else begin
            case (current_state)
                DISPENSE: dispense <= 1;
                RETURN_CHANGE: change <= 1;
                default: begin
                    dispense <= 0;
                    change <= 0;
                end
            endcase
        end
    end

endmodule
