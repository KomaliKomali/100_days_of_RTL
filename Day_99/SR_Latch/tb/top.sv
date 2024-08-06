module top();

 import uvm_pkg::*;
 import pkg::*;
 
 sr_if inf();

 ///DUT
 sr sr_latch(.s(inf.s),
             .r(inf.r),
             .q(inf.q),
             .qbar(inf.qbar));
 
 initial
  begin

    	`ifdef VCS
         $fsdbDumpvars(0, top);
        `endif

   uvm_config_db#(virtual sr_if )::set(null,"*","sr_if",inf);
   run_test("test");
       
  end

 endmodule
