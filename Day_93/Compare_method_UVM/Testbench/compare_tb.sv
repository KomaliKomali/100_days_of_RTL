 module seq_item_tb;
 
  //instance
  mem_seq_item seq_item_0;
  mem_seq_item seq_item_1;
 
  initial begin
    //create method
    seq_item_0 = mem_seq_item::type_id::create("seq_item_0");
    seq_item_1 = mem_seq_item::type_id::create("seq_item_1");   
   
    //---------------Mismatch Case------------------------------ 
    seq_item_0.randomize(); //randomizing the seq_item_0 
    seq_item_1.randomize(); //randomizing the seq_item_1 
   
    seq_item_0.print();     //printing the seq_item_0
    seq_item_1.print();     //printing the seq_item_1
   
    //compare method
    if(seq_item_0.compare(seq_item_1))
      `uvm_info("","seq_item_0 matching with seq_item_1", UVM_LOW)
    else
      `uvm_error("","seq_item_0 is not matching with seq_item_1")
   
    //---------------Matching Case------------------------------ 
    seq_item_1.copy(seq_item_0); //copy seq_item_0 to seq_item_1
    //compare method
    if(seq_item_0.compare(seq_item_1))
      `uvm_info("","seq_item_0 matching with seq_item_1", UVM_LOW)
    else
      `uvm_error("","seq_item_0 is not matching with seq_item_1")    
     
  end 
endmodule