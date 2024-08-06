class rd_agent extends uvm_agent;
 `uvm_component_utils(rd_agent)

 function new(string name = "rd_agent", uvm_component parent);
  super.new(name,parent);
 endfunction

 rd_monitor rd_mon;
 rd_agt_cfg rd_cfg;

  function void build_phase(uvm_phase phase);
  super.build_phase(phase);
   
   if(!uvm_config_db#(rd_agt_cfg)::get(this,"","rd_agt_cfg",rd_cfg))
   `uvm_fatal("rd_agent","getting failed")

   rd_mon = rd_monitor::type_id::create("rd_mon",this);

  endfunction

 endclass
