 module mem_tb();
  reg [7:0]din; 
  reg [3:0]wr_addr;
  reg[3:0]re_addr;
  reg we,rst,clk,re;
  wire [7:0]d_out;
 
 ////instantiation
 dual_port_async_mem mem_tb(din,wr_addr,we,rst,clk,re,re_addr,d_out);
 
 ///clock generation
 initial
  begin
	 clk = 1'b0;
	 forever
	 #5 clk = ~ clk;
  end
 
////reset
 initial
  begin
  rst = 1'b0;
  forever 
  #50 rst = ~ rst;
  end
 /////Initialization 
 task initialize();
  {din,wr_addr,we,rst,re,re_addr} = 0;
 endtask

 ////write
 task write(input [7:0]i,input[3:0]j,input k);
  begin
   din = i;
   @(negedge clk)
   wr_addr = j;
   we = k;
  end
 endtask

 ////read 
 task read(input [3:0]V, N);
 begin
  @(negedge clk)
   re_addr = V;
   re = N;
 end
 endtask

 ////stimulus generation
 initial
  begin
  initialize;
  write({$random},4'b1010,1);
  #5;
  read(4'b1010,1);
  #5;
  write({$random},4'b0101,1);
  #5;
  read(4'b0101,1);
  #5;
  end

 initial #100 $finish; 
 endmodule 
 
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
 