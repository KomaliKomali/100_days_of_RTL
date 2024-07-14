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

    // Defining an assertion that uses the 'throughout' operator to check either sequence
    property assert_throughout_example;
        @(posedge clk) (signal_a throughout seq_b) or (signal_b throughout seq_a);
    endproperty

    // Assert the property using 'throughout'
    assert property(assert_throughout_example)
    else 
	$fatal("Assertion failed: signal_a must be high throughout seq_b or signal_b must be high throughout seq_a.");

    // Defining an assertion that uses the 'within' operator to check either sequence
    property assert_within_example;
        @(posedge clk) (signal_a within seq_b) or (signal_b within seq_a);
    endproperty

    // Assert the property using 'within'
    assert property(assert_within_example)
    else 
	$fatal("Assertion failed: signal_a must be high within seq_b or signal_b must be high within seq_a.");

endmodule

