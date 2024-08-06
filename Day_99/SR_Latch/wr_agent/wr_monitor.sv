class wr_monitor extends uvm_monitor;
 `uvm_component_utils(wr_monitor)

 
 wr_xtn xtn;
 wr_agt_cfg wr_cfg;
 uvm_analysis_port#(wr_xtn) apw;
 virtual sr_if.wr_mon_mp wr_if;

  function new(string name = "wr_monitor", uvm_component parent);
  super.new(name,parent);
  apw = new("apw",this);
 endfunction


 function void build_phase(uvm_phase phase);
   super.build_phase(phase);
   
    xtn = wr_xtn::type_id::create("xtn");

    if(!uvm_config_db#(wr_agt_cfg)::get(this,"*","wr_agt_cfg",wr_cfg))
     `uvm_fatal("test","getting write interface failed")
  endfunction

 function void connect_phase(uvm_phase phase);
  wr_if = wr_cfg.wr_if;
 endfunction

 task run_phase(uvm_phase phase);
  forever
   begin
    collect_data();
   end
 endtask

 task collect_data();
  #10;
   xtn.s = wr_if.s;
   xtn.r = wr_if.r;

  #2;
    
  `uvm_info("wr_monitor",$sformatf("printing from wr_driver %0P", xtn.sprint()),UVM_NONE)

#15;
   xtn.s = wr_if.s;
   xtn.r = wr_if.r;

  #2;
    
  `uvm_info("wr_monitor",$sformatf("printing from wr_driver %0P", xtn.sprint()),UVM_NONE)

  apw.write(xtn);
 endtask
   

 endclass
