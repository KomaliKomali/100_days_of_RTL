module mux_4X1_behav_tb();
   reg I0,I1,I2,I3,S0,S1;
   wire Y;
   integer i,j;
   
////Instantiation   
  mux_4X1_behav MTB(I0,I1,I2,I3,S0,S1,Y);
   
////Initialization

  task initialization();
   {I0,I1,I2,I3,S0,S1,i,j} = 0;
  endtask 
  
////Stimulus Generation
   
   task inputs(input [3:0]i);
	 begin
	 {I0,I1,I2,I3} = i;
	 #10;
	end 
   endtask	 
   
   task select(input [1:0]j);
	 begin
	  {S0,S1} = j;
	 #10;
	end 
   endtask
   
 initial
   begin
     initialization;
	 inputs(1000);
	 select(00);
   end
   
//initial
// initialization;
// begin  
//  for(j=0; j<4; j=j+1)
//   begin
//    select(j); 
//     for(i=0; i<64; i=i+1)
//        begin
//         inputs(i);
//        end 
//      end
//  end   
  
  initial #100 $finish;
 endmodule   
    
      
      
   