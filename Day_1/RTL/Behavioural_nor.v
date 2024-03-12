module behavioural(A,B,Y);
  input A,B;
  output Y;
  reg Y;  

////In Behavioural model "Always block and Case statements" will be used
              
always @ (A or B) 
 begin
   if (A == 1'b0 & B == 1'b0)   ////we will specify the behaviour of the output corresponding to the input
    begin
     Y = 1'b1;
    end
   else 
     Y = 1'b0;
end

endmodule  