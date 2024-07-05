 
 module abc;
 
   bit req;
   bit Ack;
  
 sequence request
    Req;
  endsequence

  sequence acknowledge
    ##[1:2] Ack;
  endsequence

  property handshake;
    @(posedge Clock) request |-> acknowledge;
  endproperty

  assert property (handshake);
  

 endmodule	
 
 