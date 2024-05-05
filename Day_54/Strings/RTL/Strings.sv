 module strings();
  
  string str;
  
  initial
   begin  
	str = "HELLo";
	
	///To Lower
	str = str.tolower();
	$display("str = %s", str);
	///To Upper
	str = str.toupper();
	$display("str = %s", str);
	///add something to the string
	str = $sformatf("_", "World",str);
	$display("str = %s", str);
	///put somthing in the string
	 str.putc(5,"-");
	$display("str = %s",str);
	
   end
 endmodule   
	