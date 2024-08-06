class wr_sequencer extends uvm_sequencer#(wr_xtn);
 `uvm_component_utils(wr_sequencer)

 function new(string name = "wr_sequencer", uvm_component parent);
  super.new(name,parent);
 endfunction

 wr_agt_cfg wr_cfg;

 endclass
