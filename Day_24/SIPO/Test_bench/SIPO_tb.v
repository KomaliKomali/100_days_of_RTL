 module siso_tb();
  reg clk,rst,si;
  wire [3:0]po;
 
 ///instantiation
  sipo stb(clk,rst,si,po);
 
 ////clock
  initial
   begin
   clk = 1'b0;
   forever
   #5 clk = ~clk;
   end

 ////initialization
 task initialize();
  {si,rst} = 0;
 endtask

 ////reset
 task reset();
  begin
	@(negedge clk)
	rst = 1'b1;
	@(negedge clk)
	rst = 1'b0;
  end 
 endtask

 ///inputs
 task inputs(input i);
  begin
  @(negedge clk)
   si = i;
 end
 endtask

///Stimulus
 initial
  begin
   initialize;
   reset;
   inputs(1);
   #10
   inputs(0);
   #10
   inputs(1);
   #10
  inputs(0);
 end  
 initial #100 $finish;

 endmodule  
  
  
 
 