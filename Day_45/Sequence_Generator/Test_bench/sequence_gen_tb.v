module seq_gen();
 reg clk,rst;
 wire [2:0] seq;
 reg [2:0]count;
 integer i;
 
////instantiation
 Sequence_Generator SG(clk,rst,seq);

 ///Initialization
 initial 
 {clk,rst} = 0;
 
 ///clock
 initial
  begin
   clk = 1'b0;
   forever
   #5 clk = ~clk;
  end
  
  ///reset
  initial
   begin
    @(negedge clk)
	 rst = 1'b1;
	@(negedge clk)
     rst = 1'b0;	
	end
	
 ///stimulus generation
   initial 
    begin
	 for(i=0; i<8; i=i+1)
	  begin
	   {count} = i;
	   #10;
	  end
    end
  
 initial #110 $finish;

 endmodule 