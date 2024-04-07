module up_counter_tb();
  reg load,clk,rst,mode ;
  reg [3:0]data;
  wire [3:0]C_out;
  
 ///Instantiation
loadable_4_bit_UDC UTB(.load(load),.clk(clk),
.rst(rst),.data(data),.mode(mode),.C_out(C_out));

///clock Initialization
initial
 begin
 clk = 1'b0;
 forever
 #5 clk = ~clk;
 end

///Initialization
 task initialize();
  {data,load,rst,mode} = 0;
 endtask 

 ////reset 
task reset();
 begin
  @(negedge clk)
  rst = 1'b1;
  @(negedge clk)
  rst = 1'b0;
 end 
 endtask
 
///load  
task loads();
 begin
  @(negedge clk)
  load = 1'b1;
  @(negedge clk)
  load = 1'b0;
 end 
endtask 

///Mode
task modee();
 begin
  @(negedge clk)
  mode = 1'b1;
  @(negedge clk)
  mode = 1'b0;
 end 
endtask 

////input Intialization
 task inputs(input [3:0]i);
   data = i;
endtask

////stimulus generation
initial
 begin
  initialize;
  reset;
  inputs(4'b0000);
  loads;
  modee;
  #20;
  inputs(4'b1010);
  loads;
  modee;
//  inputs(4'b1011);
 end

initial #380 $finish;

endmodule 
  
    
  
 