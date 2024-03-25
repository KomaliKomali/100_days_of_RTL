module Decoder_2X4(input A,B,En, output D0,D1,D2,D3);

///assigning inputs to outputs

assign D0 = ~A&~B&En;
assign D1= ~A&B&En;
assign D2= A&~B&En;
assign D3= A&B&En;

endmodule