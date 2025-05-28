module test(
  
  output reg [5:0] random);
  
  initial begin
    
    random = $urandom_range(100,-100);
    $display("Values : %0d",random);
    
  end
  
endmodule
