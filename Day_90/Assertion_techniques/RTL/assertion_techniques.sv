
module testbench;
  initial begin
    // Initially, assertions are enabled by default.
	
	// Disable assertions after 5 time units
    #5 $assertoff; 
    // Perform some operations without assertion checking
	
	// Re-enable assertions after 10 time units
    #10 $asserton; 
    // Perform some operations with assertion checking
	
	// Terminate all active assertions after 20 time units
    #20 $assertkill; 
    // Perform other operations
  end
endmodule

