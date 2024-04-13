 module arbiter(input clk,rst,[3:0]request,output reg[3:0] grant);

  
  always@(posedge clk)
   begin
   if(rst)
    grant <= 0;
	else if(request[3])
	 grant <= 4'b1000;
	else if(request[2])
	 grant <= 4'b0100;
	else if(request[1])
     grant <= 4'b0010;
    else if(request[0])
	 grant <= 4'b0001;
   end

 endmodule   
 
 
 