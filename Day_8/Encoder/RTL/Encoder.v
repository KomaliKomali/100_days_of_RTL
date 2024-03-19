module Encoder_8X3(input D0,D1,D2,D3,D4,D5,D6,D7, output x,y,z);

/////code

assign x = (D4|D5|D6|D7);

assign y = (D2|D3|D6|D7);

assign z = (D1|D3|D5|D7);

//assign x = D7 + D6 + D5 + D4;
//assign y = D7 + D6 + D5 + D3;
//assign z = D7 + D6 + D2 + D1;


endmodule