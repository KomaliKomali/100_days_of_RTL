
 module mailbox_example();
  mailbox mb = new(3);
  
  task process_A();
    int value = 5;
    string name = "STRING";
    mb.put(value);
    $display("Put data = %0d", value);
    mb.put("STRING");  ///put is a blocking method
    $display("Put data = %s", name);
  endtask

  task process_B();
    int value;
    string name;
    mb.get(value); ///get is a blocking method
    $display("Retrieved data = %0d", value);
    mb.get(name);
    $display("Retrieved data = %s", name);
  endtask
  
  task process_C();
    int value;
    repeat(5)
   	 begin
      value = $urandom_range(1, 50);
      if(mb.try_put(value)) ///try_put is a non-blocking method
        $display("successfully try_put data = %0d", value);
      else 
	   begin
        $display("failed while try_put data = %0d", value);
        $display("Number of messages in the mailbox = %0d", mb.num());
      end
    end
    $display("---------------------------------------");
  endtask
  
  task process_D();
    int value;
    repeat(5) 
	 begin
      if(mb.try_get(value)) ///try_put is a non-blocking method
        $display("Successfully retrieved try_get data = %0d", value);
      else  
	   begin
        $display("Failed in try_get data");
        $display("Number of messages in the mailbox = %0d", mb.num());
      end
    end
  endtask

  initial begin
    fork
      process_A();
      process_B();
	  process_C();
      process_D();
    join
  end
endmodule




  