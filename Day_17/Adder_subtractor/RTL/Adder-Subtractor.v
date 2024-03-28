module add_sub( input A0,B0,A1,B1,A2,B2,A3,B3, input control,output [3:0]sum_diff,output carry_borrow);
//   reg [3:0]sum_diff;
   wire [3:0]W;
   
   assign W = {4{control}} ^ {B0,B1,B2,B3};
    
   ///Insatntiation
   Ripple_Carry_Adder_FA RC(A0,W[0],A1,W[1],A2,W[2],A3,W[3],control,sum_diff,carry_borrow);
  
endmodule  
   
   
   