module tb_serial_adder;
    reg clk, reset;
    reg [3:0] A, B;
    wire [3:0] SUM;
    wire COUT;

    // Instantiate the serial adder
    serial_adder dut (
        .clk(clk),
        .reset(reset),
        .A(A),
        .B(B),
        .SUM(SUM),
        .COUT(COUT)
    );
    // Clock generation
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1; // Apply reset
        #10 reset = 0; // Release reset

        // Test input values
        A = 4'b1000; // Example: 8 in binary
        B = 4'b0010; // Example: 2 in binary
		#10;
		A = 4'b1111; // Example: f in binary
        B = 4'b1101; // Example: d in binary
    end
    initial #50 $finish;
endmodule