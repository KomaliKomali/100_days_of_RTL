
  virtual class Base_Class;
    int data;
	
	pure virtual function int getData();
	
  endclass:Base_Class

 class Child_class extends Base_Class;
   
    virtual function int getData();
     data = 32'hcafe_cafe;
     return data;
    endfunction

  module top;
   Child_class C;
    initial
      begin
       c = new;
       $display("data = %0h, c.getData());
      end
  endmodule 	  
	