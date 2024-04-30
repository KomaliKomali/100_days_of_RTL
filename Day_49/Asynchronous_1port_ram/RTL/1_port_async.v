module async_1_port(input [3:0]addr,input we,re,inout [7:0]data);

////memory
 reg [7:0]mem[15:0]; 
 
 always@(*)
 ////writing
 begin
  if(we && !re)
   mem[addr] = data;
 end  
  
  ////
   assign data = (re && !we) ? mem[addr] : 7'bz;
   
endmodule   


