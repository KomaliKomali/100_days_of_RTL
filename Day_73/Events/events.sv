
 module events();
   event ev;
   
   initial
     begin
	  $display("About to drive ctrl after 10 time units");
	  #10;
	  $display("Control is driven attime, t = %t",$time);
      -> ev;
     end
  
   initial
     begin
	  $display("About to drive ctrl after 10 time units");
	  #10;
	  @(ev);
	  $display("Control is driven attime, t = %t",$time);
     end	 
	 
  endmodule	 
  
  /*module test();
   event ev;
   
   initial
    begin 
	  $display("About to drive ctrl after 10 time units");
	  #10;
	  $display("Control is driven attime, t = %t",$time);
      -> ev;
     end 
	 
	 initial
     begin
	  $display("About to drive ctrl after 10 time units");
	  #10;
	  wait(ev.triggered);
	  $display("Control is driven attime, t = %t",$time);
     end	 
	 
  endmodule*/
 
  