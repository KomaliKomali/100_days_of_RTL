class wr_xtn extends uvm_sequence_item;
  `uvm_object_utils(wr_xtn)

 rand bit s;
 rand bit r;
      bit q;
      bit qbar;

 function new(string name = "wr_xtn");
  super.new(name);
 endfunction

//do_print
 function void do_print(uvm_printer printer);
  printer.print_field("s",s,2,UVM_BIN);
  printer.print_field("r",r,2,UVM_BIN);
//  printer.print_field("q",q,2,UVM_BIN);
 // printer.print_field("qbar",qbar,2,UVM_BIN);
 endfunction

endclass
