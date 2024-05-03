
  struct Person {
    string name;
    int age;
    bit[7:0] id;
  }

 module testbench;
    /// Declare a variable of type Person
    Person employee;

    initial 
	 begin
      /// Initialize the struct members
      employee.name = "John";
      employee.age = 30;
      employee.id = 8'hFF;
		
      // Accessing struct members
      $display("Name: %s, Age: %0d, ID: %h", employee.name, employee.age, employee.id);
    end
endmodule






