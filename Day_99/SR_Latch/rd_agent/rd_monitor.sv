class rd_monitor extends uvm_monitor;
 `uvm_component_utils(rd_monitor)

 
 rd_agt_cfg rd_cfg;
 rd_xtn xtn;
 uvm_analysis_port#(rd_xtn) apr;
  virtual sr_if.rd_mon_mp rd_if;

 function new(string name = "rd_monitor", uvm_component parent);
  super.new(name,parent);
  apr = new("apr",this);
 endfunction


function void build_phase(uvm_phase phase);
   super.build_phase(phase);
   
    xtn = rd_xtn::type_id::create("xtn");

    if(!uvm_config_db#(rd_agt_cfg)::get(this,"*","rd_agt_cfg",rd_cfg))
     `uvm_fatal("test","getting write interface failed")
  endfunction

 function void connect_phase(uvm_phase phase);
  rd_if = rd_cfg.rd_if;
 endfunction


 task run_phase(uvm_phase phase);
  forever
   begin
    collect_data();
   end
 endtask

 task collect_data();
  #10;
   xtn.q = rd_if.q;
   xtn.qbar = rd_if.qbar;

  #2;
    
  `uvm_info("rd_monitor",$sformatf("printing from wr_driver %0P", xtn.sprint()),UVM_NONE)

  #15;
   xtn.q = rd_if.q;
   xtn.qbar = rd_if.qbar;

  #2;
    
  `uvm_info("rd_monitor",$sformatf("printing from wr_driver %0P", xtn.sprint()),UVM_NONE)

  apr.write(xtn);
 endtask


 endclass
