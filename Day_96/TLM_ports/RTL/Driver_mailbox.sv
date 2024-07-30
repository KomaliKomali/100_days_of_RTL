 class driver extends uvm_component;
 uvm_blocking_put_imp #(trans,driver) put_imp;
.....
 virtual task put(trans trans_h);
   $display("trans_h %p",trans_h);
 endtask
 
 endclass
 
 