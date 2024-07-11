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

    // Defining an assertion that uses the 'and' operator to check both sequences
    property assert_and_example;
        @(posedge clk) (seq_a and seq_b);
    endproperty

    // Assert the property
    assert property(assert_and_example)
        else $fatal("Assertion failed: Both signal_a and signal_b must be high.");

 endmodule
 
 
 