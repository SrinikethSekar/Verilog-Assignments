//Write a Verilog code to generate 20 odd or even values using a function.

module Q4;

	 reg[7:0]numbers[0:19];
	 integer i;

	 			//function
				 function[7:0]generate;
				 	input integer index;
				 	input bit even ;
				 	begin
				 		if(even)
				 			generate = index * 2;
				 		else
				 			generate = index*2+1;
				 	end 
				 endfunction

	//test

	initial begin

		$display("Generating 20 even numbers:",);
		for(i=0; i<20;i=i+1) 
		begin
			numbers[i]=generate(i,1'b1);
			$display("%d",numbers[i]);
		end 

		$display("\n Generating 20 odd numbers",);
		for(i=0;i<20;i=i+1)
		begin
			numbers[i]=generate(i,1'b0);
			$display("%d",numbers[i]);

		end

endmodule
