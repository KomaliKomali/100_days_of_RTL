 
 module obj_assignment();

 class transaction;
  int data;
 endclass

 transaction trans1,trans2;

 initial
  begin
   trans1 = new;
   trans1.data = 25;
   trans2  = new;
   //Both the handles will point to the same address
   trans2 = trans1; 
   trans2.data = 10;
   $display("trans1.data = %0d",trans1.data);  
   
  end   
   
 endmodule
  
  