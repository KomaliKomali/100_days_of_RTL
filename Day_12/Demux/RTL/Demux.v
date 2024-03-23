module demux(input A,S0, output Y0,Y1);
   
 ////code
 assign Y0 = A & ~S0;
 assign Y1 = A &  S0;
 
endmodule