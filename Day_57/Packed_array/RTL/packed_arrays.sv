 
 module packed_array();
  
  ///32-bit array declaration
  bit[3:0][7:0] byte_packed;
  
  initial
   begin
   
    ///Assining a 32-bit value to the array 
     byte_packed = 32'h5454_5454;
     $display("byte_packed = %h",byte_packed);
  
    ////Accessing a byte and assigning a value in the array
     byte_packed[0] = 8'h8;  
     $display("byte_packed = %h",byte_packed[0]);
   
    ////Accessing a bit and assigninig a value to it in the array
     byte_packed[0][0] = 1'b1;  
     $display("byte_packed = %h",byte_packed[0][0]);
   
   end
  
  endmodule
  
  