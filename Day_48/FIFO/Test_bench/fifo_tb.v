module fifotb();
 reg empty,full,we,re,rst,clk;
 reg [3:0]wr_pntr,rd_pntr;
 reg [7:0]data_in;
 wire [7:0]data_out;
 integer v,d;
    
//	reg [7:0]mem[15:0] 
////    assign empty = (wr_pntr==rd_pntr)? 1'b1:1'b02;
//	assign full = (wr_pntr == 4'b1111 &rd_pntr == 4'b0000) ? 1'b1 : 1'b0;
	
///Instantiation
 fifo fifo_tb(empty,full,rst,clk,we,re,data_in,data_out);

////Initialization
initial
 begin
   {empty,full,rst,clk,we,re,data_in,wr_pntr,rd_pntr} = 0;
 end

////clock
initial
 begin
  clk = 1'b0;
  forever
 #5 clk = ~clk;
 end
 
 ////reset
task reset();
  begin
   @(negedge clk)
    rst = 1'b1;
   @(negedge clk)
    rst = 1'b0;
  end
endtask

///write enable
 task we_en();
  begin
   we = 1'b1;
   re = 1'b0;
  end
 endtask

////read enable
task re_en();
 begin
  re = 1'b1;
  we = 1'b0;
 end
endtask

///write stimulus
task write(input [7:0]j, input[3:0]k);
 begin
 @(posedge clk)
   data_in = j;
   wr_pntr = k;
 end
endtask

/////Read stimulus
task read(input [3:0]l);
 begin
 @(posedge clk)
   rd_pntr = l;
 end
endtask 
 
//////Stimulus Generation
initial
 begin
  reset;
  we_en;
  for(v=0; v<16; v=v+1)
   begin
    write(v,v);
	#10;
   end	
  re_en;
  for(d=0; d<16; d=d+1)
   begin
    read(d);
   	#10;
   end
 end

endmodule 















 
 
	