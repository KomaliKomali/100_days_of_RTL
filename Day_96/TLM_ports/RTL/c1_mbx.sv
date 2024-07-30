 class C1 extends uvm_component;
  C2 c2_h;
  C3 c3_h;
 
  function void connect_phase (uvm_phase phase);
   c2_h.put_port.connect(c3_h.put_export);
  endfunction
 
 endclass
 