
 module assertion;
   bit clk,a,b;
   always #5 clk = ~clk; 
   
   initial
     begin
	   a = 1, b = 1;
      #15 a = 0, b = 0;
      #10 a = 1, b = 0;
      #10 a = 0, b = 0;	
      #10 a = 1, b = 1;
      #10;
      $finish;
     end
	
    property p;
      @(posedge clk) a |-> b;
    endproperty

     a_1: assert property(p);
       initial	
         begin 
          $display("%p",assert property(p));
		 end
		 
  endmodule   		 
  
  
  