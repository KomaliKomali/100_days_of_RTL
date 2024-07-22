module seq_item_tb;
 
  //instance
  mem_seq_item seq_item;
 
  initial begin
    //create method
    seq_item = mem_seq_item::type_id::create();
   
    //randomizing the seq_item
    seq_item.randomize();
   
    //printing the seq_item
    seq_item.print(uvm_default_table_printer);  
  end 
endmodule