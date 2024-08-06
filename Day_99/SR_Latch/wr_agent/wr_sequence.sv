class wr_sequence extends uvm_sequence#(wr_xtn);
 `uvm_object_utils(wr_sequence)

function new(string name = "wr_sequence");
  super.new(name);
 endfunction

 task body();
 // forever
   repeat(1)
    begin
     req = wr_xtn::type_id::create("req");
     start_item(req);
     assert(req.randomize());
     finish_item(req);
    end
 endtask

 endclass

