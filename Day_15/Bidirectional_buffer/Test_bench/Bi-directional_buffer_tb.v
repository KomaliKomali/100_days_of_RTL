module bidirectional_buffer_tb();
   reg control;
   wire A,B;
   reg temp_a, temp_b;
   //integer i;
   
////Instantiation

   bidirectional_buffer BTB(control, A,B);
   
   
/////Initialization

  initial
    begin
	 {temp_a,temp_b,control} = 3'b000;
	end 
   
    
///simulation		
 //initial
  
//     for(i=0; i<2; i=i+1)
//	  begin
//	   {control} = i;
//	   #10;
//	  end 

    
    
    always #50 control = ~control;
     
    always #10 temp_a = ~temp_a;
    
    always #20 temp_b = ~temp_b;
    
    
     assign A = control==1'b1 ? temp_a:1'bz;
   
     assign B = control==1'b0 ? temp_b:1'bz;



 initial #100 $finish;
 
endmodule