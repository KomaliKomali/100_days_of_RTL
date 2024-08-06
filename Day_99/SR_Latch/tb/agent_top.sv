class agent_top extends uvm_env;
 `uvm_component_utils(agent_top)

 env_config e_cfg;
 wr_agt_cfg wr_cfg;
 rd_agt_cfg rd_cfg;
 wr_agent wr_agt;
 rd_agent rd_agt;
 
 function new(string name = "agent_top", uvm_component parent);
  super.new(name,parent);
 endfunction

 function void build_phase(uvm_phase phase);
  super.build_phase(phase);
  
   if(! uvm_config_db#(env_config)::get(this,"","env_config",e_cfg))
   `uvm_fatal("env","getting failed")

 if(e_cfg.has_wr_agt)
 begin
  wr_agt =wr_agent ::type_id::create("wr_agt",this);;
  uvm_config_db#(wr_agt_cfg)::set(this,"*","wr_agt_cfg",e_cfg.wr_cfg);
 end

 if(e_cfg.has_rd_agt)
 begin
  rd_agt =rd_agent ::type_id::create("rd_agt",this);
  uvm_config_db#(rd_agt_cfg)::set(this,"*","rd_agt_cfg",e_cfg.rd_cfg);
 end
 endfunction

 endclass
