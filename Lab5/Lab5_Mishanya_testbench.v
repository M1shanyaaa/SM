`timescale 1ns / 1ps  // Time unit = 1ns, precision = 1ps

module tb_demux_1to8_4bit;
    // Declare inputs and outputs
    reg [3:0] D;        // Input data (4 bits)
    reg [2:0] A;        // Address inputs (3 bits)
    wire [3:0] Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7;  // DEMUX outputs

    // Instantiate the Unit Under Test (UUT)
    demux_1to8_4bit uut (
        .D(D),
        .A(A),
        .Q0(Q0), .Q1(Q1), .Q2(Q2), .Q3(Q3),
        .Q4(Q4), .Q5(Q5), .Q6(Q6), .Q7(Q7)
    );
    // Generate test signals
    initial begin
        // Initialization
        D = 4'b0000;
        A = 3'b000;
        #5;

        // Test each possible address value
        D = 4'b1010; A = 3'b000; #10;
        $display("Test A=000: Q0=%b (Expected: 1010)", Q0);

        D = 4'b1100; A = 3'b001; #10;
        $display("Test A=001: Q1=%b (Expected: 1100)", Q1);

        D = 4'b0101; A = 3'b010; #10;
        $display("Test A=010: Q2=%b (Expected: 0101)", Q2);

        D = 4'b0011; A = 3'b011; #10;
        $display("Test A=011: Q3=%b (Expected: 0011)", Q3);

        D = 4'b1001; A = 3'b100; #10;
        $display("Test A=100: Q4=%b (Expected: 1001)", Q4);

        D = 4'b1110; A = 3'b101; #10;
        $display("Test A=101: Q5=%b (Expected: 1110)", Q5);

        D = 4'b0110; A = 3'b110; #10;
        $display("Test A=110: Q6=%b (Expected: 0110)", Q6);

        D = 4'b1111; A = 3'b111; #10;
        $display("Test A=111: Q7=%b (Expected: 1111)", Q7);

        // End simulation
        $finish;
    end
endmodule
