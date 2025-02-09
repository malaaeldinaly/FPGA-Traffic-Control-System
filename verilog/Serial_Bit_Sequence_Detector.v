module Serial_Bit_Sequence_Detector(
    input clk,
    input rst,
    input bit_in,
    output reg sequence_detected
    );
    
    reg [2:0] state;
    reg [2:0] next_state;
    
    // State encoding for detecting the sequence "101"
    parameter IDLE = 3'b000;
    parameter S1 = 3'b001;
    parameter S10 = 3'b010;
    parameter S101 = 3'b011;
    
    // State update
    always @(posedge clk or posedge rst) begin
        if (rst)
            state <= IDLE;
        else
            state <= next_state;
    end
    
    // Next state logic
    always @(*) begin
        case (state)
            IDLE: begin
                if (bit_in)
                    next_state <= S1;
                else
                    next_state <= IDLE;
            end
            S1: begin
                if (bit_in)
                    next_state <= S1;
                else
                    next_state <= S10;
            end
            S10: begin
                if (bit_in)
                    next_state <= S101;
                else
                    next_state <= IDLE;
            end
            S101: begin
                next_state <= IDLE;
            end
            default: next_state <= IDLE;
        endcase
    end
    
    // Output logic
    always @(posedge clk or posedge rst) begin
        if (rst)
            sequence_detected <= 0;
        else if (state == S101)
            sequence_detected <= 1;
        else
            sequence_detected <= 0;
    end
endmodule