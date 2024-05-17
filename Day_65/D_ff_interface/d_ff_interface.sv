interface d_interface(input clk);
  logic d0,d1,sel,rst,q;
  
  parameter t_hold = 2, //output_skew
            t_setup = 4; //input_skew

  clocking cb @(posedge clk);
    default input #(t_setup) output #(t_hold);
     output d0;
     output d1;
     output rst;
     output sel;
     input q;
  endclocking
 
  ////modport for design
  modport DUV(input d0,d1,rst,sel,clk, output q);
  
  ////task for sync_reset
  task resets;
  //input reset;
   cb.rst <= 1'b1;
   cb.sel <= $random;
   cb.d0 <= 1'b1;
   cb.d1 <= 1'b1;
   repeat(2)
     @(cb);
    if(cb.q !== 0)
     begin
      $display("Reset is not working");
      $stop;
     end
    else
     $display("Reset is perfect");
  endtask
 
  ////task for checking load d0
  task load_d0;
   input data;
    cb.rst <= 1'b0;
    cb.sel <= 1'b0;
    cb.d0  <= data;
    cb.d1  <= ~data;
    repeat(2)
    @(cb);
   if(cb.q !== data)
    begin
     $display("Load D0 is not working");
     $stop;
    end
  else
   $display("load D0 is perfect");
 endtask

 ///task for checking load d1
 task load_d1;
  input data;
  cb.rst <= 1'b0;
  cb.sel <= 1'b1;
  cb.d1  <= data;
  cb.d0  <= ~data;
   repeat(2)
    @(cb);
    if(cb.q !== data)
    begin
     $display("Load D1 is not working");
     $stop;
    end
  else
   $display("load D1 is perfect");
 endtask
 
 ///modport for testbench
 modport test(clocking cb, import resets, import load_d0, import load_d1);

 endinterface


 ///module dut
  module dut(d_interface.DUV dut);
   logic d;
   
   always@(*)
    begin
     case(dut.sel)
      0 : d = dut.d0;
      1 : d = dut.d1;
      default :d = dut.d0;
     endcase
    end 

   always@(posedge dut.clk)
   begin
    if(dut.rst)
     dut.q <= 0;
    else 
      dut.q <= d;
   end
  endmodule
 
 ////module testbench
 module testbench(d_interface.test Test); 
  
  initial
   begin
    @(Test.cb);
    Test.resets;
     Test.load_d0(1);
     Test.load_d1(0);
     Test.load_d0(0);
     Test.load_d1(1);
     #10 $finish;
   end
  endmodule
 
 ////top_modle
 module top();
  bit clk;
 
  always
   #10 clk = ~ clk;
   
  d_interface interfaces(clk);
  
  ///RTL
   dut dut_i(interfaces);

  ///testbench
   testbench dut_t(interfaces);
  
 endmodule       
  