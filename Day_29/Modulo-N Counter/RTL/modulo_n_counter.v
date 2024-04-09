module mod_N_counter(input clk,rst,output Q); 
 parameter N = 2;   ///number of bits in counter
 parameter upto = 3; 
 reg [N-1:0]Q;
 reg [N-1:0]counter;
  
 always@(posedge clk)
  begin
   if(rst)
     counter <= 0;
   else
      counter <= (counter+1) % upto;
       Q <= counter ;
   end   
endmodule  


