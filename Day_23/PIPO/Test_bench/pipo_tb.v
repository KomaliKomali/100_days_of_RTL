module pipo_tb();
 reg clk,rst;
 reg [3:0]pi;
 wire [3:0]po;
 
 ///instantiation
 pipo stb(clk,rst,pi,po);
 
////clock
 initial
 begin
 clk = 1'b0;
 forever
 #5 clk = ~clk;
 end

////initialization
task initialize();
 {pi,rst} = 0;
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
task inputs(input [3:0]i);
 begin
  @(negedge clk)
   pi = i;
 end
endtask

///Stimulus
initial
 begin
  initialize;
  reset;
  inputs(0101);
  #10
  inputs(1000);
  #10
  inputs(0011);
  #10
  inputs(0111);
 end  
initial #70 $finish;

endmodule  
  
  
 
 