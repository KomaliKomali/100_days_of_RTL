class test extends uvm_test;
 `uvm_component_utils(test)


 bit has_sb =1;
 bit has_wr_agt =1;
 bit has_rd_agt = 1;
 bit has_agt_top =1;

 env envh;
 wr_sequence wr_seq;
 env_config e_cfg;
 wr_agt_cfg wr_cfg;
 rd_agt_cfg rd_cfg;
 

 function new(string name = "test", uvm_component parent);
  super.new(name,parent);
 endfunction
 
 function void build_phase(uvm_phase phase);
  super.build_phase(phase);

  e_cfg = env_config::type_id::create("e_cfg");

  if(has_wr_agt ==1)
   begin
    wr_cfg=wr_agt_cfg::type_id::create("wr_cfg");
    if(!uvm_config_db#(virtual sr_if)::get(this,"","sr_if",wr_cfg.wr_if))
     `uvm_fatal("test","getting write interface failed")
 
    wr_cfg.is_active = UVM_ACTIVE;
   e_cfg.wr_cfg = wr_cfg;
  end

 if(has_rd_agt==1)
  begin
   rd_cfg=rd_agt_cfg::type_id::create("rd_cfg");
   if(!uvm_config_db#(virtual sr_if)::get(this,"","sr_if",rd_cfg.rd_if))
     `uvm_fatal("test","getting read interface failed")
   rd_cfg.is_active = UVM_PASSIVE;
   e_cfg.rd_cfg = rd_cfg;
  end

 e_cfg.has_sb = has_sb;
 e_cfg.has_wr_agt=has_wr_agt;
 e_cfg.has_rd_agt=has_rd_agt;
 e_cfg.has_agt_top = has_agt_top;
 


 envh = env::type_id::create("env",this);
 wr_seq = wr_sequence::type_id::create("wr_seq");
 uvm_config_db#(env_config)::set(this,"*","env_config",e_cfg);

 endfunction

 function void end_of_elaboration_phase(uvm_phase phase);
  uvm_top.print_topology;
 endfunction


 task run_phase(uvm_phase phase);
  phase.raise_objection(this);
   wr_seq.start(envh.agt_top.wr_agt.wr_seqr);
  phase.drop_objection(this);
 endtask


endclass
