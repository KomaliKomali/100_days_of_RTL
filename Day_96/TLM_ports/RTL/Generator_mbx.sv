 class generator extends uvm_component;
  uvm_blocking_put_port #(trans) put_port;

  virtual task run_phase(uvm_phase phase);
  put_port.put(trans);
 endtask
 
 endclass
