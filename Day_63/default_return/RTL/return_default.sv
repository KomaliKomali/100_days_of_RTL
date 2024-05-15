 
 ////Return 
 module task_return();
 int errors = 0;
 
 task print_status(input int errors);
  if(errors == 0)
   begin
    $display("task contain zero errors");
    return;
    $display("kom");
   end
  else
   $display("task contains some errors");
 endtask
 
  initial
   print_status(errors);
 
 endmodule
 
 ////Default Arguments
  module pass_by_order();
  
  task read(integer j=0,int k, int data = 1);
   $display(" j = %0d, k = %0d, data = %0d", j,k,data);
 endtask

 initial
  begin
   integer val = 25;
   read(,5);       //passing by order
  end
 
 endmodule
  
 