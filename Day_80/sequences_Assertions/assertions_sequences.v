
  module tb;
  bit a;
  bit clk;
  
   sequence s_a;
     @(posedge clk) a;
   endsequence

    assert property(s_a)
      $display("Assertion Passed");
     else
       $display("Assertion Failed");

    always #10 clk = ~clk;

    initial
      begin
       for(int i =0; i<10; i++)
         begin
           a = $random;
          #20 $display("[%0t] a=%0d",$time,a);   
         end   
        #200 $finish;
      end
      
  endmodule   	     


  	   