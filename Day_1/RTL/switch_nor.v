module circuit_level(Y,A,B);
 output Y;
 input A,B;
 wire C;
 
 supply1 pwr;      ///supply1 is a Net data type which is used to model the power 
 
 supply0 gnd;     ///supply0 is a Net data type which is used to model the ground

pmos(C,pwr,B);    ///pmos is already available as a primitive
pmos(Y,C,A);
nmos(Y,gnd,A);    ///nmos is already available as a primitive
nmos(Y,gnd,B);

endmodule 