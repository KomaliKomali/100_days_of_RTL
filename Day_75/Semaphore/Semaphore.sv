
 module semaphore_example();
  semaphore sem = new(1);
  
  task write_mem();
    sem.get();
    $display("Before writing into memory");
    #5ns  
	// Assume 5ns is required to write into mem
    $display("Write completed into memory");
    sem.put();
  endtask
  
  task read_mem();
    sem.get();
    $display("Before reading from memory");
    #4ns  
	// Assume 4ns is required to read from mem
    $display("Read completed from memory");
    sem.put();
  endtask

  initial begin
    fork
      write_mem();
      read_mem();
    join
  end
 endmodule


