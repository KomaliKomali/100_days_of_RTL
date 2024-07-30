class C5 extends uvm_component;
 uvm_put_export #(trans) put_export;
 driver drv_h;
 
 function void connect_phase (uvm_phase phase);
  this.put_export.connect(drv_h.put_imp);
 endfunction
 
endclass

class C3 extends uvm_component;
 uvm_put_export #(trans) put_export;
 C5 c5_h;
 
 function void connect_phase (uvm_phase phase);
 this.put_export.connect(c5_h.put_export);
 endfunction
 
endclass