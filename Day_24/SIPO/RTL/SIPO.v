 module sipo(input clk,rst,si,output reg [3:0]po);

 reg [3:0]temp;
 
  always@(posedge clk)
  begin
    if(rst)
     po = 4'b0000;
    else 
     begin
      temp = {si,temp[3:1]};
      po = temp;
	 end 
  end
 endmodule
 
 