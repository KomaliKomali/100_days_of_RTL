module signal_monitor_tb;
    logic clk;
    logic reset_n;
    logic a;
    logic b;

    // Instantiate the signal_monitor module
    signal_monitor uut (
        .clk(clk),
        .reset_n(reset_n),
        .a(a),
        .b(b)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Test sequence
    initial begin
        // Initialize signals
        reset_n = 0;
        a = 0;
        b = 0;
        #10;

        // Release reset
        reset_n = 1;
        #10;

        // Sequence where a && b occurs exactly 3 times
        a = 1; b = 1;
        #10;
        a = 0; b = 0;
        #10;
        a = 1; b = 1;
        #10;
        a = 0; b = 0;
        #10;
        a = 1; b = 1;
        #10;
        a = 0; b = 0;
        #20;

        // End of test
        $stop;
    end
endmodule