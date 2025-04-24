`timescale 1ns / 1ps  

module demux_1to8_4bit (
    input [3:0] D,      // 4-bit input data
    input [2:0] A,      // 3-bit address input
    output reg [3:0] Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7  // 8 output channels
);
    always @(*) begin
        // First, set all outputs to 0
        {Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7} = 32'b0;
        
        // Select active output based on address
        case (A)
            3'b000: Q0 = D;  // Route to Q0 when address is 000
            3'b001: Q1 = D;  // Route to Q1 when address is 001
            3'b010: Q2 = D;  // Route to Q2 when address is 010
            3'b011: Q3 = D;  // Route to Q3 when address is 011
            3'b100: Q4 = D;  // Route to Q4 when address is 100
            3'b101: Q5 = D;  // Route to Q5 when address is 101
            3'b110: Q6 = D;  // Route to Q6 when address is 110
            3'b111: Q7 = D;  // Route to Q7 when address is 111
        endcase
    end
endmodule

 