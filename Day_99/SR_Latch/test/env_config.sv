class env_config extends uvm_object;
 `uvm_object_utils(env_config)


 bit has_sb;
 bit has_wr_agt;
 bit has_rd_agt;
 bit has_agt_top;

 wr_agt_cfg wr_cfg;
 rd_agt_cfg rd_cfg;

 function new(string name = "env_config");
  super.new(name);
 endfunction

 endclass
