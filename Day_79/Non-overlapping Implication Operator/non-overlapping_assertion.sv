module sva_implication_op;
  bit clk;
  logic a,b;
  
  initial
    begin
      clk = 0;
      forever
        #10 clk = !clk;
    end
  
  property non_overlapping;
    @(posedge clk) $rose(a) |=> $rose(b);
  endproperty
  
  NON_OVERLAPPING_OP: assert property (non_overlapping)
    $display ("PASS: NON_OVERLAPPING_OPERATOR\n");
  else
    $error ("FAIL: NON_OVERLAPPING_OPERATOR\n");
    
      
   initial
     begin
       
       a = 1;
       #20;  
       b = 1;
       
       #50;
       
       a = 0;
       b = 0;
       #50;

       a = 1;
       b = 1;      
  end
    
   initial
     begin
        #300 $finish(2);
       
     end
      
endmodule
      