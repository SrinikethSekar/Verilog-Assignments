//Write a Verilog function to shift the input data 1 bit to the right.
module Q7;


	function [7:0] right_shift;
		input[7:0] data;
		begin
			right_shift=data>>1;
		end
		
	endfunction 

	initial begin

	$display("Right shift of 8:%0d",right_shift(8));

	end 

endmodule
