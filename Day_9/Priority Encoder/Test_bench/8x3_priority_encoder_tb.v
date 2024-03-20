module priority_encoder_8X3_tb();
  reg [7:0]D;
//  reg out;
  wire [2:0]out;
  
////instantiatiation  
  priority_encoder_8X3 ptb(D,out);
  
////initialization
  task initialization();
   {D} = 0;
  endtask  
 
 task inputs(input [7:0]i);
   begin
	{D} = i;
	#10;
   end 
  endtask	 
      
 initial
   begin
     initialization;
	 inputs(10000000);
   end
   
endmodule 
  