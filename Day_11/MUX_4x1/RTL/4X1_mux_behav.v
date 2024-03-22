module mux_4X1_behav(input I0,I1,I2,I3,S0,S1, output reg Y);
   
   always@(*)
    begin
	 case(S0|S1)
	  2'b00 : Y = I0;
	  2'b01 : Y = I1;
	  2'b10 : Y = I2;
	  2'b11 : Y = I3;
	  default Y = 1'b0;
	 endcase
    end
	
endmodule	
	
	