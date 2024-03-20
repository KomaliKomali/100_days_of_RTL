module priority_encoder_8X3(input [7:0]D, output reg [2:0]out);
//    reg [2:0]out;
  
 always@(*)
  begin
   case(D)
    8'b00000001 : out = 3'b000;
	8'b00000010 : out = 3'b001;
	8'b00000100 : out = 3'b010;
	8'b00001000 : out = 3'b011;
	8'b00010000 : out = 3'b100;
	8'b00100000 : out = 3'b101;
	8'b01000000 : out = 3'b110;
	8'b10000000 : out = 3'b111;
	default out = 3'bzzz;
   endcase
  end  
  /////write using if else 
  
     
endmodule