  
  module multi_dimensional_array();
   
   //Declaration of 32-bit multidimensional array 
    //combination of both unpacked and packde arrays
    //32-bit width with a depth of 3
    bit [3:0][7:0] bytes [0:2]; 
	
   initial
    begin	
	
    //Assigning 32-bit value to the bytes[0]
      bytes[0] = 32'd255;
      $display("bytes[0] = %h",bytes[0]); 
       
	//Assigning 8-bit value to the bytes  
	  bytes[0][3] = 8'd125;
	  $display("bytes[0] = %d",bytes[0][3]);
	  
	//Assigning 1-bit value to the bytes
	  bytes[0][3][0] = 1'b1;
	  $display("bytes[0][3][0] = %b",bytes[0][3][0]);
	  
	end
  endmodule	
  
  