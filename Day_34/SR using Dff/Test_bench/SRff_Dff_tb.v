module SRD_tb();
 reg clk,rst,S,R;
 wire Q;
 
 ////Instantiation
 SR_D SRD_ff_tb(clk,rst,S,R,Q);
 
 ////intialization
 initial
  begin
   {S,R,rst} = 0;
  end

////clk generation
 initial
  begin
  clk = 1'b0;
forever
  #5 clk = ~clk;
  end

////reset generation
 task reset_in();
  begin
   @(negedge clk)
    rst = 1'b1;
   @(negedge clk)
   rst = 1'b0;
  end 
 endtask

/////input generation
 task inputs( input [1:0]a);
  begin
   {S,R} = a;
  end
 endtask

 task delay();
  #5;
  endtask
 ////stimulus generation
 initial
  begin
  reset_in;
   inputs(00);
   delay;
  reset_in;
   inputs(01);
   delay;
  reset_in;
   inputs(10);
   delay;
 reset_in;
  inputs(11);
  delay;
 
 
  end
  
initial #100 $finish;

endmodule    