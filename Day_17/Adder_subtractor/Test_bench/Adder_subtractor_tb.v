module adder_sub_tb();
   reg A0,B0,A1,B1,A2,B2,A3,B3;
   reg control;
   wire [3:0] sum_diff;
   wire carry_borrow;
   
///Instantiation
   add_sub add_sub_tb(A0,B0,A1,B1,A2,B2,A3,B3,control,sum_diff,carry_borrow);
   
////Initalization
initial
 begin
  {A0,B0,A1,B1,A2,B2,A3,B3} =0;
 end

////Stimulus Generation 

 initial
  begin
     control = 1'b0;
    {A0,A1,A2,A3} = 4'b1111; {B0,B1,B2,B3} = 4'b0111;
    #10;
    control = 1'b1;
    {A0,A1,A2,A3} = 4'b1001; {B0,B1,B2,B3} = 4'b0101;
    #10;
    control = 1'b0;
    {A0,A1,A2,A3} = 4'b0010; {B0,B1,B2,B3} = 4'b1000;

   end

endmodule   
		  