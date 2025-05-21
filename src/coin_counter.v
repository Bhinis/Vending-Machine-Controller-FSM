module coin_counter (
    input wire clk,
    input wire reset,            
    input wire coin_5,
    input wire coin_10,
    input wire clear_balance,    // Triggered when item is dispensed or cancelled
    output reg [7:0] balance     // Can hold up to ₹255 (if needed)
);

    always @(posedge clk) begin
        if (reset)
            balance <= 0;
        else if (clear_balance)
            balance <= 0;
        else begin
            if (coin_5)
                balance <= balance + 8'd5;
            else if (coin_10)
                balance <= balance + 8'd10;
        end
    end

endmodule
