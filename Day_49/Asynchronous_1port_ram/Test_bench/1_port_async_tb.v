module s_mem_tb();
 reg [3:0]addr; 
 reg we,re;
 wire [7:0]data;
 reg [7:0]temp_k;
 
 integer k;
 
 ////instantiation
 async_1_port mem_tb(addr,we,re,data);
 
 assign data = (we && !re) ? temp_k : 1'bz;
  
 
 /////Initialization 
task initialize();
  {we,re,temp_k} = 0;
endtask


////stimulus_write
task stimulus_write(input [7:0]i,input[3:0]j);
 begin
   addr = j;
   temp_k = i;
 end
endtask

///write enable
task wr_enable();
 begin
  we = 1'b1;
  re = 1'b0;
 end 
endtask

////read enable
task re_enable();
 begin
  we = 1'b0;
  re = 1'b1;
 end
endtask

////stimulus generation
initial
 begin
 initialize;;
  wr_enable;
   for(k=0; k<16; k=k+1)
    begin
     stimulus_write(k,k);
     #10;
    end 
     re_enable;
   #10;
 end   
  
 
endmodule 