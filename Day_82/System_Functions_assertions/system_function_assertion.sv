 
 module tb;
  bit a;
  bit b;
  bit c; 
  bit clk;

  sequence s_a;
    @(posedge clk) $rose(a);
  endsequence

   sequence s_b;
     @(posedge clk) $fell(b);
   endsequence

   sequence s_c;
     @(posedge clk) $stable(c);
   endsequence

    assert property(s_a);
    assert property(s_b);
    assert property(s_c);
	
	initial
      begin
        for(int i=0; i<10; i++)
	    begin
		 {a,b,c} = $random;
		 $display("%0t a=%0d b=%0d c=%0d ",$time,a,b,c);
         #10; 
		end
		#10 $finish;
		end 
		
  endmodule	