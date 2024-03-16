module multiplier_tb();
     reg A1,A0,B0,B1;
	 wire P0,P1,P2,P3;
	 integer i;

///Instantiation
 multipler MTB(A1,A0,B0,B1,P0,P1,P2,P3);
 
////Initalization

 initial
  begin
   { A1,A0,B0,B1 } = 4'b0000;
  end

///Stimulus Generation

initial 
 begin
   for(i=0; i<16; i=i+1)
    begin
     {A1,A0,B1,B0} = i;
      #10;
    end
 end

initial #170 $finish;

endmodule 
	 
	 