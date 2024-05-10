 
  module queue();
   int kom[$] = {1,2,3,4,5};
   int dev[$] = {6,7,8,9,10};
   int s = 5;
   int k;

  initial
   begin
 
   ///inserting
    kom = {kom[0:$-1],s,kom[2:$]};
    
    kom.delete(1);

    ///Push_front
    kom = {s,kom[0:$]};
   
    //POP_Back
      kom = kom[0:$-1];

    //pop_back
    kom = {kom[$-4],kom[3]}; 
   $display("kom = %p",kom);

   foreach(kom[j])
    $display(kom[j]);

    dev.delete(2);    
 
   end
 endmodule
  
  
  
     //kom.insert(1,s); ///10
	  // kom.push_front(9); //16
	 //s = kom.pop_back(); //20
	  //#####    k=kom.pop_back[$-2); //24
	  ///////***one value must be a bounded value //25