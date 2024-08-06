class wr_driver extends uvm_driver#(wr_xtn);
 `uvm_component_utils(wr_driver)

 function new(string name = "wr_driver", uvm_component parent);
  super.new(name,parent);
 endfunction

 wr_xtn xtn;
 wr_agt_cfg wr_cfg;
 virtual sr_if.wr_drv_mp wr_if;

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
    seq_item_port.get_next_item(req);
    drive_to_dut(req);
    seq_item_port.item_done();
   end
  endtask

  task drive_to_dut(wr_xtn xtn);
   #5;

   wr_if.s <= xtn.s;
   wr_if.r <= xtn.r;
  
   `uvm_info("wr_driver",$sformatf("printing from wr_driver %0P", xtn.sprint()),UVM_NONE)
  
  #15;

   wr_if.s <= xtn.s;
   wr_if.r <= xtn.r;
  
   `uvm_info("wr_driver",$sformatf("printing from wr_driver %0P", xtn.sprint()),UVM_NONE)
   
 
   #50;
  endtask


 endclass
