
 package pkg;
  int no_of_transactions;
  
  function void display(input string s);
    $display( $time, ",%s, n = %d", s,no_of_transactions);
  endfunction	
 
 endpackage
 
  module A;
   import pkg ::*;
   
   initial
     begin
	  #1;
	   no_of_transactions = 10;
	  #1;
       display("From module A");
     end
   
   endmodule	 
   
  module B;
   import pkg ::*;
   
   initial
     begin
	  #4;
	   no_of_transactions = 20;
	  #1;
       display("From module B");
     end
   
   endmodule	
   
   