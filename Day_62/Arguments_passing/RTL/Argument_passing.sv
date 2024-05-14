  ////pass by name_value_order
//  module pass_by_name_val_order();
  
//  task read(integer j=0,int k, int data = 1);
//   $display(" j = %0d, k = %0d, data = %0d", j,k,data);
// endtask

// initial
//  begin
//   integer val = 25;
//   read(,5);       //passing by order
//   read(2,val);    //pssing by value
//   read( .j(2),.k(5),.data(7));    //passing by Name
//  end
// endmodule


 ///pass by reference 
  module pass_by_ref();
  int x =5, y=10,z;

 function automatic int sum(ref int x,y);
  x = x+y;
  return x+y;
 endfunction

 initial
  begin
    z = sum(x,y);
    $display("value of x = %0d", x);
    $display("value of y = %0d",y); 
  end
 endmodule
