
 module threads();
   initial
    begin
	fork
	
	begin
	 for(int H1_pointer = 0; H1_pointer < 2; H1_pointer++)
	  begin 
	   #1 $display($time, "First loop : Value of H1 = %g", H1_pointer);
	  end
    end 
	 
	begin 
	 for(int D1_channel = 1; D1_channel > 0; D1_channel--)
	  begin 
	   #1 $display($time, "First loop : Value of D1 = %g", D1_channel);
	  end 
	end
	join_any
	
   $display("@%g outside of fork - join\n ", $time);
   #3 $finish;
  end
 endmodule 
 
 
 
 