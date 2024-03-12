module data_flow(input A,B, output Y);
 assign Y = ~(A|B);               ///assign statements will be used in Data Flow style 
endmodule
 
 