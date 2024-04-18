module johnson_counter(  clk,
     rst, count );
	 input clk,rst;
	 output reg [3:0] count;
	 integer i;
	 
  always@(posedge clk)
   begin
     if(rst)
       count <= 4'b0001;
     else 
       begin
	    count[3] <= ~count[0];
	    for(i=0; i<3; i=i+1)
		 count[i] = count[i+1];
	   end	 
    end
 endmodule
 
 