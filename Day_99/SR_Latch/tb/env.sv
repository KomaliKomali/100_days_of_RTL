class env extends uvm_env;
`uvm_component_utils(env)

 env_config e_cfg;
 agent_top agt_top;
 scoreboard sb;

 function new(string name = "env", uvm_component parent);
  super.new(name,parent);
 endfunction


 function void build_phase(uvm_phase phase);
  super.build_phase(phase);
  
   if(! uvm_config_db#(env_config)::get(this,"","env_config",e_cfg))
   `uvm_fatal("env","getting failed")

 if(e_cfg.has_agt_top)
  agt_top = agent_top::type_id::create("aht_top",this);

 if(e_cfg.has_sb);
 sb = scoreboard::type_id::create("sb",this);

endfunction

 function void connect_phase(uvm_phase phase);
  agt_top.wr_agt.wr_mon.apw.connect(sb.fifo_w.analysis_export);
  agt_top.rd_agt.rd_mon.apr.connect(sb.fifo_r.analysis_export);
 endfunction

endclass
