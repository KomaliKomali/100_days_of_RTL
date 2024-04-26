 module Mealy_1010_detector_tb;

 reg clk;
 reg reset;
 reg data_in;
 wire detected;

 // Instantiate the Mealy machine module
 Mealy_1010_detector UUT (clk,reset,data_in,detected);
   
// Clock generation
 always #5 clk = ~clk;

// Stimulus generation
 initial begin
    clk = 0;
    reset = 1;
    data_in = 0;
    #10 reset = 0;

    // Test sequence: 1010
    #10 data_in = 0;
    #10 data_in = 1;
    #10 data_in = 0;
    #10 data_in = 1;
    #10 data_in = 0;
    #10 data_in = 0;
    #10 data_in = 1;
    #200 $finish;
 end

 endmodule
 
 