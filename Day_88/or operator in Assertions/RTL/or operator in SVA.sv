module example(
    input logic clk,
    input logic reset_n,
    input logic signal_a,
    input logic signal_b
 );

    // Defining a sequence that succeeds when signal_a is high
    sequence seq_a;
        @(posedge clk) signal_a == 1;
    endsequence

    // Defining a sequence that succeeds when signal_b is high
    sequence seq_b;
        @(posedge clk) signal_b == 1;
    endsequence

    // Defining an assertion that uses the 'or' operator to check either sequence
    property assert_or_example;
        @(posedge clk) (seq_a or seq_b);
    endproperty

    // Assert the property
    assert property(assert_or_example)
        else $fatal("Assertion failed: Either signal_a or signal_b must be high.");

 endmodule
 
 
 