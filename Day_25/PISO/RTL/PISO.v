module  piso(clk,rst,pi,so);
input clk,rst;
input [3:0]pi;
output reg so;
reg [3:0]temp;
 
 always@(posedge clk)
 begin
   if(rst)
     temp <= 4'b0000;
   else 
    begin
      temp <= pi;
      so <= temp[0];
	end
 end
endmodule
