 
 ///sub_class
 class sub_class;
  int k;
 endclass
  
 ///Main class
 class main_class;
  int s;
  sub_class sub = new();
  endclass

  module shallow_copy();
   initial 
    begin
     main_class main,kom;
     main = new();
     main.s = 4;
     main.sub.k = 5;
	 $display("main=%p",main,main.sub);
	 
     kom = new main;
	 kom.s = 10; 
	 kom.sub.k = 29;
     $display("main=%p",main,main.sub);
	 
    end
  endmodule
  
  