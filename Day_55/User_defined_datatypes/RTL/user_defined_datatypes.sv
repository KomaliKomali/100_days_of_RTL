module user_defined_datatypes();
  typedef bit[31:0] word_t;  
    word_t word1,word2;
	
	assign word1 = 32'd24;
	

	typedef struct {bit[7:0] R,G,B;} pixel;
	 pixel samsung_pixel, sony_pixel;
	 
 initial
   begin 
	 samsung_pixel.R = 8'd25;
	 samsung_pixel.G = 8'd55;
	 samsung_pixel.B = 8'd98;
	 
	 sony_pixel = '{8'd45, 8'd75, 8'd95};
	 
	 $display("R=%d, G=%d, B=%d",samsung_pixel.R,samsung_pixel.G,samsung_pixel.B);
	 $display("R=%d, G=%d, B=%d",sony_pixel.R,sony_pixel.G,sony_pixel.B);
   end	 
   
  endmodule