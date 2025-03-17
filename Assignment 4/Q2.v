module Q2;
	reg[7:0]a,b;
	wire [7:0]result;


		        //function
				function [7:0] add;
					input [7:0]x,y;
					begin
						add=x+y;
					end
					
				endfunction  


	assign result = add(a,b);


	initial begin
		a=8'd16;
		b=8'd16;
		#10;

		$display("Sum of %d and %d is %d",a,b,result);

	end

endmodule
