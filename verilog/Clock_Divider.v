module Clock_Divider(
    input clk_in,
    input rst,
    output reg clk_out
    );
    
    reg [31:0] counter;
    parameter DIVISOR = 50000000; // Adjust this value based on your clock frequency and desired output frequency
    
    always @(posedge clk_in or posedge rst) begin
        if (rst) begin
            counter <= 0;
            clk_out <= 0;
        end else begin
            if (counter >= (DIVISOR - 1)) begin
                counter <= 0;
                clk_out <= ~clk_out;
            end else begin
                counter <= counter + 1;
            end
        end
    end
endmodule