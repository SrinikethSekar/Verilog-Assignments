//Write a Verilog code to perform the sum of two numbers using a task.

module Q3;

	reg[7:0]a,b;
	reg[7:0]result;


				
				task add;
					input[7:0] x,y;
					output [7:0]sum;
					begin
						sum=x+y;
					end 

				endtask 

	initial begin

		a=8'd15;
		b=8'd20;

		add(a,b,result);

		$display("sum of %d and %d is %d ",a,b,result);

	end 

endmodule
