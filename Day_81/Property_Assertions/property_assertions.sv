
 module tb;
   bit a,b,c,d;
   bit clk;
   
   always #10 clk = ~clk;
   
        sequence s_ab;
          a ##1 b;
        endsequence

        sequence s_cd;
          c ##2 d;
        endsequence

        property p_expr;
          @(posedge clk) s_ab ##1 s_cd;
        endproperty

        assert property (p_expr);
		
    initial
      begin
	   for(int i=0; i<20; i++)
	    begin
		 {a,b,c,d} = $random;
		 $display("%0t a=%0d b=%0d c=%0d d=%0d",$time,a,b,c,d);
		end
		#10 $finish;
		end 
		
 endmodule		
 
 
 