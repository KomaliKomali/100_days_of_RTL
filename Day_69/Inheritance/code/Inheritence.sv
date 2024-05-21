 
 module test();
 
  class parent;
   bit[7:0] header, payload,parity;
  endclass

  class error_trans extends parent;
    bit error_parity;
  endclass
  
  parent p;
  error_trans e;
  
  initial
   begin
    e = new();
	p = new();
    e.header = 42;
	e.error_parity = 1;
    $display("%p",e);
	$display("%p",p);
  end
  
 endmodule  
 
 