 module Moore_101_detection(input clk,rst,data_in,output reg detected);

 // Define states
 localparam S_IDLE = 2'b00;
 localparam S_1 = 2'b01;
 localparam S_10 = 2'b10;
 localparam S_101 = 2'b11;
 
 // Define state register and next state logic
 reg [1:0] state, next_state; 
 
 // Define state transitions and outputs
  always @(posedge clk) 
   begin
    if (rst)
     begin
       state <= S_IDLE; // Reset to idle state
     end 
	else 
	 begin
        state <= next_state; // Update state
     end
  end

 // Define next state logic and outputs
  always @(*) 
   begin
    case(state)
        S_IDLE: begin
            if (data_in == 1'b1) 
			 begin
                next_state = S_1;
             end 
			else
  			 begin
                next_state = S_IDLE;
             end
         end
        S_1: begin
            if (data_in == 1'b0)
 			 begin
                next_state = S_10;
             end 
			else 
			 begin
                next_state = S_IDLE;
             end
        end
        S_10: begin
            if (data_in == 1'b1) 
			 begin
                next_state = S_101;
             end 
			else 
			 begin
                next_state = S_IDLE;
             end
        end
        S_101: begin
            next_state = S_IDLE;
        end
        default: begin
            next_state = S_IDLE;
        end
    endcase
  end
 
 // Define output based on current state
  always @(*) begin
    detected = (state == S_101); // Output '1' when '101' is detected
  end

 endmodule