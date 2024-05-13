module Array_methods();
  int cnt,sa;
  int da[] = {10,5,5,5,4,6,7,8};
  int kom[$]; 
  
 initial
  begin
    ////type casting must be done
    cnt = da.sum with(int'(item > 5)); 
    $display("cnt = %d", cnt);

    sa  = da.sum with(int'(item  == 5));
     $display("sa = %d",sa);
        
   //////sorting_metohds
    da.reverse();  ////reverse the array
    $display("da = %p", da);
   
    da.sort();   ///Ascending order display
     $display("da = %p", da);
    
    da.rsort();
     $display("da = %p", da);
     
    da.shuffle();
       $display("da = %p", da);
    
    kom = da.min();
     $display("kom = %p", kom);

    kom = da.max();
      $display("kom = %p", kom);
     
   kom = da.unique();
     $display("kom = %p", kom);
   
   kom = da.find_first with(item > 5); 
     $display("kom = %p", kom);
   
    kom = da.find_last with (item > 5);
       $display("kom = %p", kom);
  
 kom = da.find_first_index with(item > 5);
       $display("kom = %p", kom);
  
   kom = da.find_last_index with (item > 5);    
        $display("kom = %p", kom);
 
  end
 endmodule
