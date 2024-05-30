
 class parent_class;
  //local bit [31:0] addr;
  protected bit count;
  
  function new(bit [31:0] r_addr);
    addr = r_addr + 10;
  endfunction

  function display();
    $display("addr = %0d",addr);
  endfunction
 endclass

 class child_class extends parent_class;
  function new(bit [31:0] r_addr);
    super.new(r_addr);
  endfunction
  
  function void incr_addr();
    addr++;
  endfunction  
 endclass
  

 ////module
 module encapsulation;
  initial begin
    child_class  c_c = new(10);
    //Accessing protected variable in extended class
    c_c.incr_addr();  
    c_c.display();
  end
 endmodule



