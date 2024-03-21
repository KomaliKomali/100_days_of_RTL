module mux_2X1( I0, I1, S0, Y);
input  I0, I1, S0; 
output reg Y;

always @(*) 
 begin 
  case(S0) 
    1'b0 : Y = I0;
    1'b1 : Y = I1;
    default :Y = 1'bz;
  endcase
  end
endmodule