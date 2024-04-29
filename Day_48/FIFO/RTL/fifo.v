module fifo(input empty,full,rst,clk,we,re,input [7:0]data_in,output reg [7:0]data_out);
  reg [3:0]wr_pntr,rd_pntr;
  reg [7:0]mem[15:0];
  integer i;

	assign empty = (wr_pntr == rd_pntr)? 1'b1:1'b0;
	assign full = (wr_pntr == 4'b1111 & rd_pntr == 4'b0000) ? 1'b1 : 1'b0;
  
  /////writing into the FIFO
 always@(posedge clk)
  begin
   if(rst)
    begin
     for(i=0; i<16; i=i+1)
      begin
        mem[i] <= 0;
        wr_pntr <= 4'b0000;
      end
    end 
   else if((we == 1'b1) & (full == 1'b0))
    begin
     mem[wr_pntr] = data_in;
     wr_pntr <= wr_pntr+1;
    end
   else
     wr_pntr <= wr_pntr;
  end
  
 ////Reading from the fifo
 always@(posedge clk)
  begin
   if(rst)
    begin
     rd_pntr <= 4'b0000;
	 data_out <= 8'b0;
	end
   else if((re == 1'b1) & (empty==1'b0))
    begin
     data_out <= mem[rd_pntr];
     rd_pntr <= rd_pntr+1;
    end
   else
    rd_pntr <= rd_pntr;
  end
endmodule  
     	 