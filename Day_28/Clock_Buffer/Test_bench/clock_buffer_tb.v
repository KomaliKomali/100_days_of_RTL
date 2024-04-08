module cbtb();
 reg mclk;
 wire bclk;
 realtime t1,t2,t3,t4,t5,t6,f,p;
 
////Instantiation
 clock_buffer clk_tb(mclk,bclk);
 
////clock
initial
 begin
  mclk = 1'b0;
  forever
  #5 mclk = ~mclk;
 end


////master
task master();
 begin
 @(posedge mclk)
  t1 = $time;
 @(posedge mclk)
  t2 = $time; 
  
  t3 = t2 - t1;
 end  
endtask

////bufout
task bufout();
 begin
  @(posedge bclk)
  t4 = $time;
  @(posedge bclk)
  t5 = $time;

  t6 = t5 - t4;
 end 
endtask

////freq_phase
task freq_phase();
 time f,p;
  begin
    f = t6 - t3;
    p = t4 - t1;
  end
endtask

////stimulus
initial
 begin
 fork
  master;
  bufout;
 join 
  freq_phase;
 end

initial #30 $finish;

endmodule 
