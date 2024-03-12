module circuit_level(Y,A,B);
 output Y;
 input A,B;
 wire C;
 
 supply1 pwr;
 supply0 gnd;

pmos(C,pwr,B);
pmos(Y,C,A);
nmos(Y,gnd,A);
nmos(Y,gnd,B);

endmodule 