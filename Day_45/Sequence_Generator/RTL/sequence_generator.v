 module Sequence_Generator (
    input clk,         
    input rst,         
    output reg [2:0] seq   
 );

    reg [2:0] count;      // Counter to track the sequence

 always @(posedge clk) 
  begin
    if (rst) 
        count <= 3'b000; 
    else begin
        if (count == 3'b111) // If the count reaches 7, reset to 0
            count <= 3'b000;
        else
            count <= count + 1; // Otherwise, increment count
    end
            seq <= count; 
  end

//   assign seq = count;   // Assign the output to the count

 endmodule