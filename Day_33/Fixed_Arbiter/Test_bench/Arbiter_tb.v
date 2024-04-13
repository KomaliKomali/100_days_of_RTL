 module arbiter_tb();
 reg clk,rst;
 reg [3:0]request;
 wire [3:0]grant;
 integer i;
  
 ////Instantiation
 arbiter a_tb(clk,rst,request,grant);
 
 ////Initialization
 initial
  {clk,rst,request} = 0;
  
 ////clock
  initial
   begin
    clk = 1'b0;
   forever 
   #5 clk = ~clk;
  end   
  
 ////Reset
 initial
  begin
   @(negedge clk)
    rst = 1'b1;
   @(negedge clk)
    rst  = 1'b0;
  end

 ///stimulus
 initial
  begin
    for(i=0; i<16; i=i+1)
     begin
      request = i;
      #10;
     end
   end

 initial #170 $finish;

endmodule 