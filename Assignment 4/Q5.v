//Write a Verilog code to create two functions for multiplication and division.

module Q5;

	//function
	function [15:0] multiply;
		input [7:0] a,b;
		begin
			multiply =a*b;
		end
	endfunction

	function[7:0]divide;
		input [7:0]a,b;
		begin
			if(b!=0)
				divide=a/b;
			else
				divide=8'd0;
		end 
	endfunction

	initial begin
		$display("Multiplication of 6 and 7: %0d",multiply(6,7));
		$display("Division of 42 by 7: %0d",divide(42,7));
	end 


endmodule
