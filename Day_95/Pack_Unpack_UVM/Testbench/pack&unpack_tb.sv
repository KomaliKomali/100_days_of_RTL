 module seq_item_tb;
 
  //instance
  mem_seq_item seq_item_0;
  mem_seq_item seq_item_1;
  bit bit_packed_data[];
 
  initial begin
    //create method
    seq_item_0 = mem_seq_item::type_id::create("seq_item_0");
    seq_item_1 = mem_seq_item::type_id::create("seq_item_1");
   
    //---------------------- PACK  ------------------------------ 
    seq_item_0.randomize(); //randomizing the seq_item_0
    seq_item_0.print();     //printing the seq_item_0
   
    seq_item_0.pack(bit_packed_data);    //pack method
    foreach(bit_packed_data[i])
      `uvm_info("PACK",$sformatf("bit_packed_data[%0d] = %b",i,bit_packed_data[i]), UVM_LOW)
     
    //---------------------- UNPACK ------------------------------
    `uvm_info("UNPACK","Before UnPack", UVM_LOW)
    seq_item_1.print();     //printing the seq_item_1
    seq_item_1.unpack(bit_packed_data);     //unpack method
    `uvm_info("UNPACK","After UnPack", UVM_LOW)
    seq_item_1.print();     //printing the seq_item_1

  end 
endmodule


