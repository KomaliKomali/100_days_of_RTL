 module Moore_101_detector_tb();

  reg clk,rst,data_in;
   wire detected;

 // Instantiate the Moore machine module
  Moore_101_detection Moore_101(clk,rst,data_in,detected);
   
 // Clock generation
 always #5 clk = ~clk;

  // Stimulus generation
  initial
   begin
    clk = 0;
    rst = 1;
    data_in = 0;
    #10 rst = 0;

    // Test sequence
    #10 data_in = 1;
    #10 data_in = 0;
    #10 data_in = 1;
    #10 data_in = 0;
	#10 data_in = 1;
    #10 data_in = 0;
	#10 data_in = 1;
	
    #100 $finish;
 end

 endmodule