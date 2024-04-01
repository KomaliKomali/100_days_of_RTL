module jk_tb();
 reg j,k,clk,rst;
 wire q;
// integer i,a,b;

// parameter hold = 2'b00,
//            set  = 2'b01,
//			reset= 2'b10,
//          toggle = 2'b11;
 
 
 ////Instantiation
 jk_ff jk_ff_tb(j,k,clk,rst,q);
 
 ////intialization
 initial
  begin
   {j,k,rst} = 0;
  end

////clk generation
 initial
  begin
  clk = 1'b0;
forever
  #5 clk = ~clk;
  end

////reset generation
 task reset_in();
  begin
   @(negedge clk)
    rst = 1'b1;
   @(negedge clk)
   rst = 1'b0;
  end 
 endtask

/////input generation
 task inputs( input [1:0]a);
  begin
   {j,k} = a;
  end
endtask

task delay();
 #5;
 endtask
////stimulus generation
initial
 begin
  reset_in;
//  for(i=0; i<4; i=i+1)
//   begin
//       {a,b} = i;
//   end
 inputs(00);
delay;
 reset_in;
 inputs(01);
delay;
 reset_in;
 inputs(10);
delay;
 reset_in;
 inputs(11);
delay;
 
 
  end
  
initial #200 $finish;

endmodule    