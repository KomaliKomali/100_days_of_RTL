class wr_agt_cfg extends uvm_object;
 `uvm_object_utils(wr_agt_cfg)

 function new(string name = "wr_agt_cfg");
  super.new(name);
 endfunction

 virtual sr_if  wr_if;
 uvm_active_passive_enum is_active;

 endclass
