 
 module seq_item_tb;
 
  //instance
  mem_seq_item seq_item_0;
  mem_seq_item seq_item_1;
 
  initial begin
    //create method
    seq_item_0 = mem_seq_item::type_id::create("seq_item_0");
   
    seq_item_0.randomize(); //randomizing the seq_item  
    seq_item_0.print();     //printing the seq_item_0
   // seq_item_1.print();
    //clone method
    $cast(seq_item_1,seq_item_0.clone()); //create seq_item_1 and copy seq_item_0 to seq_item_1
    `uvm_info("","Printing seq_item_1 after clone", UVM_LOW)
    seq_item_1.print();
    //changing the seq_item_1 values will not reflect on seq_item_0 values.
    seq_item_1.addr  = 8;
    seq_item_1.wdata = 'h56;
    `uvm_info("","Printing seq_item_0", UVM_LOW)
    seq_item_0.print();          //printing the seq_item_0
    `uvm_info("CLONE METHOD EX","Printing seq_item_1 after new assignment", UVM_MEDIUM)
    seq_item_1.print();          //printing the seq_item_1
   
    end 
 endmodule
 
 
 