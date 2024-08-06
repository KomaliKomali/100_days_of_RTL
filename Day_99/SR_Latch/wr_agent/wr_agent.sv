class wr_agent extends uvm_agent;
 `uvm_component_utils(wr_agent)

 function new(string name = "wr_agent", uvm_component parent);
  super.new(name,parent);
 endfunction

 wr_driver wr_drv;
 wr_monitor wr_mon;
 wr_sequencer wr_seqr; 
 wr_agt_cfg wr_cfg;
 //env_config e_cfg

  function void build_phase(uvm_phase phase);
  super.build_phase(phase);
   
   if(!uvm_config_db#(wr_agt_cfg)::get(this,"","wr_agt_cfg",wr_cfg))
   `uvm_fatal("wr_agent","getting failed")

   wr_mon = wr_monitor::type_id::create("wr_mon",this);

   if(wr_cfg.is_active)
    begin
     wr_drv = wr_driver::type_id::create("wr_drv",this);
     wr_seqr = wr_sequencer::type_id::create("wr_seqr",this);
    end

 endfunction

 function void connect_phase(uvm_phase phase);
  wr_drv.seq_item_port.connect(wr_seqr.seq_item_export);
 endfunction

 endclass
