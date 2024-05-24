
 module threads();
   initial
    begin
	fork
	
	 for(int H1_pointer = 0; H1_pointer < 2; H1_pointer++)
	  begin 
	   #1 $display($time, "First loop : Value of H1 = %0g", H1_pointer);
	  end
      
	 for(int D1_channel = 2; D1_channel > 0; D1_channel--)
	  begin 
	   #1 $display($time, "First loop : Value of H1 = %0g", D1_channel);
	  end 
	
	join
   $display("@%0g outside of fork - join\n ", $time);
   #3 $finish;
  end
 endmodule 
 
 
 
 