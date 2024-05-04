 
 module enumerated_datatype();
  enum {init,read,write,brd,bwr}state;
   ////built-in methods
  initial
    begin
     	state = state.first();
		$display("state_value = %d, state = %s",state,state.name);
		state = state.last();
		$display("state_value = %d, state = %s",state,state.name);
		state = state.next();
		$display("state_value = %d, state = %s",state,state.name);
        state = state.prev();
		$display("state_value = %d, state = %s",state,state.name);
        state = state.next(2);
		$display("state_value = %d, state = %s",state,state.name);
		state = state.prev(3);
		$display("state_value = %d, state = %s",state,state.name);
	end
 endmodule	
 
 