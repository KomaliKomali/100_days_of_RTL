
 class sub;
  int obj;
   
    function sub copy();
	 copy = new();
	 copy.obj = this.obj;
    endfunction
	
 endclass

 class trans;
  int data;
  sub sub_k = new;
  
  function trans copy();
   copy = new;
   copy.data = this.data;
   copy.sub_k = this.sub_k;
  endfunction

 endclass
 
   trans t1,t2;

 module test();

  initial
   begin
    t1 = new();
    t1.data = 4;
    t1.sub_k.obj = 5;
    $display("%p", t1);
    
    t2 = t1.copy;
    t2.sub_k.obj = 10;	
    $display("%p", t2);
   end

 endmodule   