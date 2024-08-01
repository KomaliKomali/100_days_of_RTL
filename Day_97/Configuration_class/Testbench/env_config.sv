class env_config extends uvm_object;
 `uvm_object_utils(env_config);
 
 function new(string name = "env_config");
  super.new(name);
 endfunction

  bit has_sb;
  bit has_wr_agent;
  bit has rd_agent;
  bit has_agt_top;
  
  wr_agt_cfg wr_cfg;
  rd_agt_cfg rd_cfg;
  
 endclass 
   