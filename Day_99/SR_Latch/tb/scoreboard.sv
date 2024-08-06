class scoreboard extends uvm_scoreboard;
 `uvm_component_utils(scoreboard)

 wr_xtn w_xtn;
 rd_xtn r_xtn;
 rd_xtn r_ref;

 uvm_tlm_analysis_fifo#(wr_xtn)fifo_w;
 uvm_tlm_analysis_fifo#(rd_xtn)fifo_r;

/* covergroup cg1 ;
   coverpoint s : w_xtn.s;
   coverpoint r : w_xtn.r;
   cross sxr: sXr;
 endgroup*/
 
 function new(string name = "scoreboard", uvm_component parent);
  super.new(name,parent);
  fifo_w = new("fifo_w",this);
  fifo_r = new("fifo_r",this);
 endfunction

 function void build_phase(uvm_phase phase);
  super.build_phase(phase);
   w_xtn = wr_xtn::type_id::create("w_xtn");
   r_xtn = rd_xtn::type_id::create("r_xtn");
   r_ref = rd_xtn::type_id::create("r_ref");
 endfunction

 task run_phase(uvm_phase phase);
  fork
    fifo_w.get(w_xtn);
    fifo_r.get(r_xtn);
    r_ref = r_xtn;
   $display("-----------------------------------------------sb------------------------------------------------------------");
    ref_model(w_xtn,r_xtn);
    compare_data(r_xtn);

    $display("-----------------------------------------------sb------------------------------------------------------------");
  join     
 endtask

 task ref_model(wr_xtn w_xtn, rd_xtn r_xtn);
  if(w_xtn.s==0 && w_xtn.r==0) 
    begin
     r_xtn.q <= r_xtn.q;
     r_xtn.qbar <= ~r_xtn.q;
    end
   else if(w_xtn.s==0 && w_xtn.r==1) 
    begin
     r_xtn.q <= 0;
     r_xtn.qbar <= ~r_xtn.q;
    end
   else if(w_xtn.s==1 && w_xtn.r==0)
    begin
     r_xtn.q <= 1;
     r_xtn.qbar <= ~r_xtn.q;
    end
   else
    begin
      r_xtn.q <= 1'bx;
      r_xtn.qbar <= ~r_xtn.q;
    end
 endtask
 
 task compare_data(rd_xtn r_xtn);

  if(r_ref.q == r_xtn.q)
   $display("Q is matched");
  else
    $display("Q is not matched");

  if(r_ref.qbar == r_xtn.qbar)
   $display("Qbar is matched");
  else
    $display("Qbar is not matched");

 endtask

endclass
