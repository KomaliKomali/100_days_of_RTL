module mux_4X1_decoder_TSB(input S0,S1,En, output I0,I1,I2,I3);

 wire sel0,sel1,sel2,sel3;

/////instantiation

 Decoder_2X4 DC(S0,S1,En,D0,D1,D2,D3);
 
 ///code

 assign sel0 =   D0;
 assign sel1 =   D1;
 assign sel2 =   D2;
 assign sel3 =   D3;
 
  bufif1 t0(D0,sel0,I0);
  bufif1 t1(D1,sel1,I1);
  bufif1 t2(D2,sel2,I2);
  bufif1 t3(D3,sel3,I3);
  
  

     
endmodule