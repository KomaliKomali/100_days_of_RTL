 class C4 extends uvm_component;
  uvm_blocking _put_port #(trans) put_port;
   generator gen_h;
   
 function void connect_phase (uvm_phase phase);
  gen_h.put_port.connect(this.put_port);
 endfunction
 
endclass

 class C2 extends uvm_component;
  uvm_blocking _put_port #(trans) put_port;
  C4 c4_h;
  
 function void connect_phase (uvm_phase phase);
 c4_h.put_port.connect(this.put_port);
 endfunction
 
endclass