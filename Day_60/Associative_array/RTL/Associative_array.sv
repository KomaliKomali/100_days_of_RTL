 module Associative_array();
  int amem[int];
  int kom; 
  
 initial 
  begin
   amem[2] = 1;
   amem[100] = 5;
   amem[5] = 60;
   amem[200] = 89;
   
   if(amem.exists(5))
    $display("entry exist in mem, whose value is %0d", amem[5]);  
   else
    $display("does not exist");
    
    amem.first(kom); 
    $display("entry exist in mem, whose value is %0d", kom); 
    amem.last(kom);  
	$display("entry exist in mem, whose value is %0d",kom);
	amem.prev(kom); 
    $display("entry exist in mem, whose value is %0d", kom); 
    amem.next(kom); 
    $display("entry exist in mem, whose value is %0d", kom); 
    $display("entry exist in mem, whose value is %0d", amem.num()); 	
  
  
  end
 endmodule
 
 