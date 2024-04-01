module jk_ff(input j,k,clk,rst,output reg q);
  parameter hold = 2'b00;
  parameter  reset  = 2'b01;
  parameter    set= 2'b10;
  parameter toggle = 2'b11;

  always@(posedge clk)
   begin
     if(rst)
       q <= 1'b0;
     else
       case({j,k})
         hold : q <= q;
         set  : q <= 1'b1;
        reset : q <= 1'b0;
        toggle: q <= ~q;
        default : q <= 1'b0;
       endcase
   end
 endmodule   
            
 