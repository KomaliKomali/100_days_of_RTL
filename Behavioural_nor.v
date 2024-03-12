module behavioural(A,B,Y);
  input A,B;
  output Y;
  reg Y;
  
always @ (A or B)
 begin
   if (A == 1'b0 & B == 1'b0)
    begin
     Y = 1'b1;
    end
   else 
     Y = 1'b0;
end

endmodule  