 module signal_monitor (
    input logic clk,
    input logic reset_n,
    input logic a,
    input logic b
);
 
 //consecutive Repetition Operator
  sequence s1;
    a && b;
  endsequence

 property p;
   @(posedge clk) a |-> ##1 b[->3] ##1 c;
 endproperty
  
 // Assertion based on the property
    assert property (p1)
        else $error("The sequence (a && b) did not occur exactly 3 times");
 endmodule
 