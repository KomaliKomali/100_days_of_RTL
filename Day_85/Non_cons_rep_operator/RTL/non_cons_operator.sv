 
 module signal_monitor (
    input logic clk,
    input logic reset_n,
    input logic a,
    input logic b
 );

    // Define the sequence
    sequence s1;
        a && b;
    endsequence

    // Define the property using the consecutive repetition operator [=2:4]
    property p1;
        @(posedge clk) s1 [=2:4];
    endproperty

    // Assertion based on the property
    assert property (p1)
        else $error("The sequence (a && b) did not occur consecutively between 2 to 4 times");

 endmodule
 
 
 
 
 